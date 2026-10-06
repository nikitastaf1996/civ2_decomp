"""Regression tests for tools/draft_repair.py.

These are pure text transformations: they exist to keep the repair step from
touching a draft it does not need to touch, because a draft that already
compiles is what the sweep scores (and what a match would be spliced from).
"""
import pathlib
import sys
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))

from draft_repair import repair  # noqa: E402


class WidenPrototypeTests(unittest.TestCase):
    def test_widens_a_prototype_called_with_fewer_arguments(self):
        draft = """M2C_UNK func_80089D20(s32, s32);          /* extern */

void func_80012345(s32 arg0) {
    func_80089D20(arg0);
}
"""
        out = repair(draft)
        self.assertIn("M2C_UNK func_80089D20();", out)
        self.assertNotIn("s32, s32", out)

    def test_keeps_a_prototype_that_matches_its_call_sites(self):
        draft = """M2C_UNK func_80089D20(s32, s32);          /* extern */

void func_80012345(s32 arg0) {
    func_80089D20(arg0, arg0);
}
"""
        self.assertEqual(repair(draft), draft)

    def test_widens_a_prototype_called_with_more_arguments(self):
        draft = """M2C_UNK func_80089D20(s32);                /* extern */

void func_80012345(s32 arg0) {
    func_80089D20(arg0, arg0, arg0);
}
"""
        self.assertIn("M2C_UNK func_80089D20();", repair(draft))


class MissingDeclarationTests(unittest.TestCase):
    def test_declares_a_called_function_m2c_never_printed(self):
        draft = """void func_80012345(s32 arg0) {
    func_800C0DE0(arg0);
}
"""
        out = repair(draft)
        self.assertIn("M2C_UNK func_800C0DE0();", out)
        self.assertLess(out.index("M2C_UNK func_800C0DE0();"), out.index("void func_80012345"))

    def test_declares_a_global_m2c_never_printed(self):
        draft = """void func_80012345(void) {
    D_80158564 = 1;
}
"""
        self.assertIn("extern M2C_UNK D_80158564;", repair(draft))

    def test_does_not_redeclare_an_existing_global_with_another_type(self):
        draft = """extern void *D_80158864;

void func_80012345(void) {
    D_80158864 = 0;
}
"""
        self.assertEqual(repair(draft), draft)


class RetypeDereferencedLocalTests(unittest.TestCase):
    def test_retypes_an_integer_local_that_is_dereferenced(self):
        draft = """void func_80012345(u32 arg0) {
    u32 var_s0;

    var_s0 = arg0;
    *var_s0 = 1;
}
"""
        self.assertIn("u8 *var_s0;", repair(draft))

    def test_leaves_an_index_that_is_multiplied_alone(self):
        draft = """extern M2C_UNK D_8010D6CC;

void func_80012345(s32 arg0) {
    s32 var_v0;

    var_v0 = arg0;
    D_8010D6CC = *(s16 *)(var_v0 * 4);
}
"""
        self.assertEqual(repair(draft), draft)


class StackPointerTests(unittest.TestCase):
    def test_sizes_a_bare_sp_from_the_retail_frame(self):
        # func_80013F50 builds a 0x10-byte stack buffer and m2c prints the base as `sp`.
        draft = """s32 func_80013F50(s32 arg0, u8 *arg1, s32 arg2) {
    s8 *var_t0;

    var_t0 = sp;
    *var_t0 = 0;
    return 0;
}
"""
        out = repair(draft, "civ2", "func_80013F50")
        self.assertIn("u8 sp[16];", out)

    def test_ignores_a_binary_without_the_function(self):
        draft = "void func_80012345(void) {\n    *sp = 0;\n}\n"
        self.assertEqual(repair(draft, "civ2", "func_80012345"), draft)


if __name__ == "__main__":
    unittest.main()
