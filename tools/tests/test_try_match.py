"""Regression tests for parsing checked-in assembly as a try_match reference."""
import pathlib
import sys
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))

from try_match import parse_target_instructions  # noqa: E402


class ParseTargetInstructionsTests(unittest.TestCase):
    def read_function(self, name):
        asm_path = ROOT / "asm" / "us" / "civ2" / "nonmatchings" / "game" / f"{name}.s"
        return parse_target_instructions(asm_path.read_text(), name)

    def test_uses_function_body_not_preceding_jump_table(self):
        name = "func_80014014"
        asm_path = ROOT / "asm" / "us" / "civ2" / "nonmatchings" / "game" / f"{name}.s"
        source = asm_path.read_text()
        self.assertLess(source.index(".section .rodata"), source.index(f"glabel {name}"))

        instructions = parse_target_instructions(source, name)
        self.assertEqual(len(instructions), 0x158 // 4)
        self.assertEqual(instructions[0], (0x80014014, 0x27BDFFE0, "addiu $sp, $sp, -0x20"))

    def test_decodes_instruction_comment_bytes_little_endian(self):
        instructions = self.read_function("func_8001470C")
        self.assertEqual(instructions[0][0], 0x8001470C)
        # The source comment spells the bytes as 10008228; the ELF word is
        # 0x28820010, the encoding for slti v0, a0, 0x10.
        self.assertEqual(instructions[0][1], 0x28820010)
        self.assertEqual(instructions[0][2], "slti $v0, $a0, 0x10")

    def test_rejects_a_mismatched_declared_function_size(self):
        source = """nonmatching func_test, 0x8
glabel func_test
    /* 0 80010000 00000000 */ nop
endlabel func_test
"""
        with self.assertRaisesRegex(ValueError, "declares size"):
            parse_target_instructions(source, "func_test")

    def test_rejects_missing_function_labels(self):
        with self.assertRaisesRegex(ValueError, "missing glabel"):
            parse_target_instructions(".text\n", "func_missing")


if __name__ == "__main__":
    unittest.main()
