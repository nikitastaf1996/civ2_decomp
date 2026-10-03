#include "common.h"
#include "m2c_macros.h"
void *memcpy();

void func_80013F38() {

}

void func_80013F40() {

}

void func_80013F48() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80013F50);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010000);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010034);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010068);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001007C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010088);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014014);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001416C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014200);

void func_800142A4() {

}

void func_800142AC() {

}

s32 func_800142B4() {
    return 0;
}

/* Returns the low byte of the incoming $v0: cc1 materialises the u8 truncation of
   an uninitialised local in $v0, so the whole body is a single `andi`.
   Nothing in either executable calls it. */
u8 func_800142BC() {
    u8 var_v0;

    return var_v0;
}

void func_800142C4() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800142CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014340);


void func_8001440C() {
    void func_80014514(s32 arg0, ...);
    s32 func_800F5CF8(); /* extern */
    extern M2C_UNK D_8001007C;
    s32 var_v0;

    var_v0 = func_800F5CF8();
    if (var_v0 < 0) {
        var_v0 += 0x3FF;
    }
    func_80014514(&D_8001007C, var_v0 >> 0xA);
}


typedef struct { s8 f0; s8 f1; s8 f2; s8 f3; s8 f4; } S5c;

s32 func_80014448(s32 arg0, s32 arg1) {
    extern s8 D_801584F4;
    S5c buf;
    buf = *(S5c *)&D_801584F4;
    return (arg0 & ((u8 *)&buf)[arg1]) == 0;
}

void func_8001448C() {

}


void func_80014494() {
    extern s8 D_801584D8;
    s32 var_v0;
    s8 *var_v1;

    var_v1 = &D_801584D8;
    var_v0 = 2;
    do {
        *var_v1 = 0;
        var_v0 -= 1;
        var_v1 += 1;
    } while (var_v0 != -1);
}

void func_800144BC() {

}

void func_800144C4() {

}

void func_800144CC() {

}


void func_800144D4() {
    M2C_UNK func_8001416C(); /* extern */
    func_8001416C(0xFF, 0, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800144FC);

void func_8001450C() {

}

void func_80014514(s32 arg0, ...) {
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001452C);

/* @O2 */

void func_80014544(void *arg0) {
    void func_80014514(s32 arg0, ...);
    extern M2C_UNK D_80010088;
    func_80014514(&D_80010088, M2C_FIELD(arg0, s16 *, 0), M2C_FIELD(arg0, s16 *, 2), M2C_FIELD(arg0, s16 *, 4), (s32) M2C_FIELD(arg0, s16 *, 6));
}

/* @O2 */

void func_8001457C() {
    void func_80013F38();
    s32 func_80104BB4(); /* extern */
    M2C_UNK func_80107B58(); /* extern */
    s32 temp_s0;

    temp_s0 = func_80104BB4(0);
    func_80013F38();
    if (temp_s0 == 5) {
        func_80107B58(1);
    }
}

void func_800145C0() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800145C8);


void func_800145EC() {
    s32 func_800145C8(); /* extern */
    extern s32 D_8015859C;
    extern s32 D_801585A0;
    extern void * D_80158864;
    D_8015859C = func_800145C8(M2C_FIELD(D_80158864, s8 *, 0x3D));
    D_801585A0 = (s32) M2C_FIELD(D_80158864, s16 *, 0x1E);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014638);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800146C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001470C);


s32 func_80014744(s32 arg0) {
    s32 func_8001470C(); /* extern */
    s32 var_s0;
    s32 var_s1;

    var_s1 = 0;
    var_s0 = 0;
    do {
        if (func_8001470C(var_s0) == arg0) {
            var_s1 += 1;
        }
        var_s0 += 1;
    } while (var_s0 < 0x10);
    return var_s1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800147A4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014AAC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014AE4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014B58);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001011C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001012C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010154);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014F10);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80014FFC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80015228);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800158A8);


void func_80015A14(s32 arg0, s32 arg1, s32 arg2) {
    s32 func_80072A28();
    s32 func_800982F4();
    extern s32 D_801584FC;
    extern s32 D_80158500;
    extern s32 D_80158514;
    extern s32 D_801585BC;
    extern s32 D_801585C0;
    if ((D_801584FC != 0) && (D_80158500 != 0) && (D_80158514 == 0) && (!(*(u8 *)func_800982F4(arg1, arg2) & 0x80) || (func_80072A28(arg0, 7) != 0))) {
        D_80158514 = 1;
        D_801585BC = arg1;
        D_801585C0 = arg2;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80015AB8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80016138);


s32 func_800161DC() {
    M2C_UNK func_80014AE4(); /* extern */
    extern M2C_UNK D_8010BA20;
    extern s32 D_80158860;
    s32 var_s0;
    s32 var_s1;
    u8 temp_v1;

    var_s1 = 0;
    var_s0 = 0;
loop_1:
    if (var_s0 < 0x14) {
        temp_v1 = *(u8 *)(((s8 *)&D_8010BA20) + var_s0);
        var_s1 |= temp_v1 & 0x20;
        if (temp_v1 != 0) {
            func_80014AE4(D_80158860, var_s0, 0);
        }
        var_s0 += 1;
        goto loop_1;
    }
    return var_s1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80016250);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80016AF4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80016B6C);

s32 func_80016BFC(s32 arg0) {
    s32 var_v1;

    var_v1 = 4;
    if (arg0 > 0) {
        var_v1 = 5;
    }
    if (arg0 >= 2) {
        var_v1 += 1;
    }
    if (arg0 >= 3) {
        var_v1 += 1;
    }
    if (arg0 >= 5) {
        var_v1 += 1;
    }
    return var_v1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80016C38);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80017040);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80017528);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001770C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80017F08);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80018A24);


s32 func_80018BF0() {
    M2C_UNK func_80016250(); /* extern */
    M2C_UNK func_80016B6C(); /* extern */
    M2C_UNK func_80017040(); /* extern */
    M2C_UNK func_80017F08(); /* extern */
    M2C_UNK func_80018A24(); /* extern */
    func_80016250();
    func_80018A24();
    func_80016B6C();
    func_80017040();
    return func_80017F08();
}

s32 func_80018C30(s32 arg0) {
    M2C_UNK func_800147A4();
    M2C_UNK func_80014B58();
    M2C_UNK func_80015228();
    s32 func_80018BF0();
    extern s32 D_80158510;
    extern s32 D_80158564;
    extern s32 D_80158568;
    extern s32 D_80158860;

    if (arg0 == 0 && D_80158510 == D_80158860) {
        return D_80158564 - D_80158568;
    }
    D_80158510 = D_80158860;
    func_800147A4();
    func_80014B58();
    func_80015228();
    return func_80018BF0();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80018CA4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80018E88);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80019124);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80019724);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800198E8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80019A0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001C364);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001CA78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001D148);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001D300);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001D720);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001D880);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001DA30);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001DE00);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001E0E4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001E7E8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001E8B0);


void func_8001E960() {
    extern s32 D_801585C8;
    extern s32 D_801585CC;
    D_801585C8 = 0;
    D_801585CC = 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8001E974);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800261AC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002635C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800264F0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800269A0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80026BE0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80026D68);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80026EA8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800279C0);


s32 func_80029CFC(s32 arg0) {
    extern M2C_UNK D_8010D288;
    extern M2C_UNK D_8010D6B8;
    extern M2C_UNK D_8010D6BA;
    s32 temp_v1;
    s32 var_a0;

    temp_v1 = arg0 * 0x1A;
    var_a0 = *(s8 *)(((s8 *)&D_8010D288) + (*(u8 *)(((s8 *)((s8 *)&D_8010D6BA)) + temp_v1) * 0x14)) * 8;
    if (*(u16 *)(((s8 *)&D_8010D6B8) + temp_v1) & 0x2000) {
        var_a0 += var_a0 >> 1;
    }
    if (*(u16 *)(((s8 *)&D_8010D6B8) + (arg0 * 0x1A)) & 0x10) {
        var_a0 += var_a0 >> 1;
    }
    return var_a0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80029DA0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002A26C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002A700);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002A7E0);


void func_8002A858(s32 arg0) {
    void func_800AB2AC();
    M2C_UNK func_800B918C(); /* extern */
    extern M2C_UNK D_8010D27C;
    extern M2C_UNK D_8010D280;
    extern M2C_UNK D_8010D6B8;
    extern M2C_UNK D_8010D6BA;
    extern M2C_UNK D_8010D6BB;
    extern s32 D_8011ACB4;
    extern M2C_UNK D_80158EF0;
    s32 temp_a0;
    u16 temp_a1;

    temp_a0 = arg0 * 0x1A;
    temp_a1 = *(u16 *)(((s8 *)&D_8010D6B8) + temp_a0);
    if (!(temp_a1 & 0x2000) && !(*(s32 *)(((s8 *)&D_8010D280) + (*(u8 *)(((s8 *)((s8 *)&D_8010D6BA)) + temp_a0) * 0x14)) & 0x1000)) {
        *(u16 *)(((s8 *)&D_8010D6B8) + temp_a0) = temp_a1 | 0x2000;
        if (D_8011ACB4 == *(s8 *)(((s8 *)&D_8010D6BB) + temp_a0)) {
            func_800AB2AC(0, *(s32 *)(((s8 *)&D_8010D27C) + (*(u8 *)(((s8 *)((s8 *)&D_8010D6BA)) + temp_a0) * 0x14)));
            func_800B918C(&D_80158EF0, 0x3EBE, 0, arg0);
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002A958);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002AD94);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002B0E8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002B3DC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002B864);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002B8D8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002E5E0);


void func_8002E690(s32 arg0) {
    extern s32 D_8010D28E;
    extern s32 D_8010D6BA;
    extern s32 D_8010D6C3;
    s32 idx;
    idx = arg0 * 0x1A;
    if (((*(u8 *)((s8 *)&D_8010D6C3 + idx) & 0xF) == 0xB) && (*(s8 *)((s8 *)&D_8010D28E + *(u8 *)((s8 *)&D_8010D6BA + idx) * 0x14) != 7)) {
        *(s8 *)((s8 *)&D_8010D6C3 + idx) = -1;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002E70C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002E7F4);

void func_8002FAD0() {

}

void func_8002FAD8() {

}

s32 func_8002FAE0() {
    return 0;
}

void func_8002FAE8() {

}

void func_8002FAF0() {

}

void func_8002FAF8() {

}


s32 func_8002FB00(s32 arg0, s32 arg1, s32 arg2) {
    s32 func_80098494();
    void func_800C6B2C();
    void func_800C6B34();
    void func_800C6BB4();
    void func_800C6BDC();
    void func_800C6C54();
    void func_800C6C7C();
    void func_800C6DCC();
    void func_800C6E70();
    extern M2C_UNK D_80121340;
    func_800C6B2C(&D_80121340);
    func_800C6DCC(&D_80121340, 0xB);
    func_800C6BDC(&D_80121340);
    func_800C6C54(&D_80121340);
    func_800C6E70(&D_80121340, arg0);
    func_800C6BB4(&D_80121340);
    func_800C6E70(&D_80121340, arg1);
    func_800C6C7C(&D_80121340);
    func_800C6B34(&D_80121340);
    func_800C6E70(&D_80121340, func_80098494(arg0, arg1));
    return arg2;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002FBE8);

void func_8002FE7C() {

}

void func_8002FE84() {

}


void func_8002FE8C() {
    M2C_UNK func_80104794(); /* extern */
    extern s32 D_801589F4;
    if (D_801589F4 != 0) {
        func_80104794(D_801589F4);
        D_801589F4 = 0;
    }
}

void func_8002FEC8() {

}

void func_8002FED0() {

}

void func_8002FED8() {

}

void func_8002FEE0() {

}

void func_8002FEE8() {

}

void func_8002FEF0() {

}

void func_8002FEF8() {

}


void func_8002FF00() {
    void func_80092B5C();
    extern M2C_UNK D_8010BA60;
    func_80092B5C(&D_8010BA60, 2);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8002FF28);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80030080);

/* @O2 */

s32 func_800300CC(s32 arg0, s32 arg1) {
    extern s16 D_8011C312;
    extern s32 D_801589C0;
    return D_801589C0 + arg0 + (arg1 * D_8011C312);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800300F8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80030168);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80030488);


void func_80030560(s32 arg0, s8 arg1, s16 arg2, s16 arg3) {
    extern M2C_UNK D_8010D6C0;
    extern M2C_UNK D_8010D6C3;
    extern M2C_UNK D_8010D6C6;
    extern M2C_UNK D_8010D6C8;
    s32 temp_v0;

    temp_v0 = arg0 * 0x1A;
    *(s8 *)(((s8 *)&D_8010D6C3) + temp_v0) = 0xB;
    *(s8 *)(((s8 *)&D_8010D6C0) + temp_v0) = arg1;
    *(s16 *)(((s8 *)&D_8010D6C6) + temp_v0) = arg2;
    *(s16 *)(((s8 *)&D_8010D6C8) + temp_v0) = arg3;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800305B0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80030810);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80033750);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80035114);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80035314);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80035384);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80035A28);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800371C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80041B8C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80041CC4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80041FC4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80042078);


void func_80042208() {
    M2C_UNK func_80042E98(); /* extern */
    extern s32 D_80158600;
    func_80042E98(D_80158600);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004222C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004232C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004242C);


void func_8004252C() {
    M2C_UNK func_800F78C4(); /* extern */
    extern s32 D_80158600;
    extern s32 D_80158604;
    D_80158604 = 0;
    func_800F78C4(D_80158600 + 0x2C);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80042554);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800425F8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80042938);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80042ABC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80042C10);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80042E98);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800436F8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80043F10);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80043F78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800440A4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80044450);

void func_80044618() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80044620);


void func_80044804(s32 arg0, s32 arg1) {
    void func_800B8E40();
    func_800B8E40(arg0, arg1 != 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80044824);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004503C);

void func_80045280() {

}

void func_80045288() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80045290);

void func_80045370() {

}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800106A8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800106D0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80045378);


void func_80045CA0() {
    void func_800A22C8();
    M2C_UNK func_800A25F4(); /* extern */
    M2C_UNK func_800A26F8(); /* extern */
    void func_800A28D0();
    void func_800A28F0();
    M2C_UNK func_800A29BC(); /* extern */
    M2C_UNK func_800A2A68(); /* extern */
    void func_800A83A4();
    s32 func_800A83F0(); /* extern */
    void * func_800A8560();
    extern M2C_UNK D_8010BC94;
    extern M2C_UNK D_8010CBE0;
    extern M2C_UNK D_80158610;
    extern M2C_UNK D_80158618;
    extern M2C_UNK D_80158620;
    M2C_UNK func_80045378(); /* extern */
    func_800A22C8(&D_8010BC94, 0x157C);
    if (func_800A83F0(&D_80158610, 0xAD) == 0) {
        func_800A25F4(&D_8010BC94, 1, func_800A8560());
        func_800A26F8(&D_8010BC94, 1, 0x101, func_800A8560(), 0);
        func_800A26F8(&D_8010BC94, 1, 0x110, func_800A8560(), 0);
        func_800A26F8(&D_8010BC94, 1, 0x120, func_800A8560(), 0);
        func_800A26F8(&D_8010BC94, 1, 0x1F0, func_800A8560(), 0);
        func_800A26F8(&D_8010BC94, 1, 0x1F1, func_800A8560(), 0);
        if (func_800A83F0(NULL, 0xF1) == 0) {
            func_800A25F4(&D_8010BC94, 2, func_800A8560());
            func_800A26F8(&D_8010BC94, 2, 0x201, func_800A8560(), 0);
            func_800A26F8(&D_8010BC94, 2, 0x205, func_800A8560(), 0);
            func_800A26F8(&D_8010BC94, 2, 0x210, func_800A8560(), 0);
            func_800A26F8(&D_8010BC94, 2, 0x220, func_800A8560(), 0);
            if (func_800A83F0(NULL, 0x138) == 0) {
                func_800A25F4(&D_8010BC94, 4, func_800A8560());
                func_800A26F8(&D_8010BC94, 4, 0x401, func_800A8560(), 0x3C);
                func_800A26F8(&D_8010BC94, 4, 0x410, func_800A8560(), 0x3C);
                func_800A26F8(&D_8010BC94, 4, 0x411, func_800A8560(), 0x3C);
                func_800A26F8(&D_8010BC94, 4, 0x412, func_800A8560(), 0x3C);
                func_800A26F8(&D_8010BC94, 4, 0x413, func_800A8560(), 0x3C);
                func_800A26F8(&D_8010BC94, 4, 0x417, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x418, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x41B, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x420, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x421, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x430, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x440, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x441, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x442, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x445, func_800A8560(), 0x3C);
                func_800A26F8(&D_8010BC94, 4, 0x450, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x451, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x460, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x468, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x470, func_800A8560(), 0);
                func_800A26F8(&D_8010BC94, 4, 0x480, func_800A8560(), 0);
                if (func_800A83F0(NULL, 0x251) == 0) {
                    func_800A25F4(&D_8010BC94, 5, func_800A8560());
                    func_800A26F8(&D_8010BC94, 5, 0x500, func_800A8560(), 0);
                    func_800A26F8(&D_8010BC94, 5, 0x502, func_800A8560(), 0);
                    func_800A26F8(&D_8010BC94, 5, 0x503, func_800A8560(), 0);
                    func_800A26F8(&D_8010BC94, 5, 0x504, func_800A8560(), 0);
                    func_800A26F8(&D_8010BC94, 5, 0x505, func_800A8560(), 0);
                    func_800A26F8(&D_8010BC94, 5, 0x506, func_800A8560(), 0);
                    if (func_800A83F0(NULL, 0x2D1) == 0) {
                        func_800A25F4(&D_8010BC94, 6, func_800A8560());
                        func_800A26F8(&D_8010BC94, 6, 0x601, func_800A8560(), 0);
                        func_800A26F8(&D_8010BC94, 6, 0x602, func_800A8560(), 0);
                        func_800A26F8(&D_8010BC94, 6, 0x603, func_800A8560(), 0);
                        func_800A26F8(&D_8010BC94, 6, 0x605, func_800A8560(), 0);
                        func_800A26F8(&D_8010BC94, 6, 0x606, func_800A8560(), 0);
                        if (func_800A83F0(NULL, 0x333) == 0) {
                            func_800A25F4(&D_8010BC94, 8, func_800A8560());
                            func_800A26F8(&D_8010BC94, 8, 0x801, func_800A8560(), 0);
                            func_800A26F8(&D_8010BC94, 8, 0x803, func_800A8560(), 0);
                            func_800A26F8(&D_8010BC94, 8, 0x805, func_800A8560(), 0);
                            func_800A26F8(&D_8010BC94, 8, 0x807, func_800A8560(), 0);
                            func_800A26F8(&D_8010BC94, 8, 0x809, func_800A8560(), 0);
                            func_800A26F8(&D_8010BC94, 8, 0x80B, func_800A8560(), 0);
                            func_800A26F8(&D_8010BC94, 8, 0x8F0, func_800A8560(), 0);
                            func_800A25F4(&D_8010BC94, 0x901, &D_80158618);
                            func_800A25F4(&D_8010BC94, 0x501, &D_80158620);
                            func_800A25F4(&D_8010BC94, 9, "End Turn");
                            func_800A29BC(&D_8010BC94, 4, 1);
                            func_800A29BC(&D_8010BC94, 0x401, 0);
                            func_800A29BC(&D_8010BC94, 0x410, 0);
                            func_800A29BC(&D_8010BC94, 0x411, 0);
                            func_800A29BC(&D_8010BC94, 0x412, 0);
                            func_800A29BC(&D_8010BC94, 0x420, 0);
                            func_800A29BC(&D_8010BC94, 0x421, 0);
                            func_800A29BC(&D_8010BC94, 0x430, 0);
                            func_800A29BC(&D_8010BC94, 0x440, 0);
                            func_800A29BC(&D_8010BC94, 0x445, 0);
                            func_800A29BC(&D_8010BC94, 0x450, 0);
                            func_800A29BC(&D_8010BC94, 0x451, 0);
                            func_800A29BC(&D_8010BC94, 0x460, 0);
                            func_800A29BC(&D_8010BC94, 0x468, 0);
                            func_800A29BC(&D_8010BC94, 0x470, 0);
                            func_800A29BC(&D_8010BC94, 0x480, 0);
                            func_800A2A68(&D_8010BC94, 9, 1);
                        }
                    }
                }
            }
        }
    }
    func_800A83A4();
    func_800A28F0(&D_8010BC94, &D_8010CBE0);
    func_800A28D0(&D_8010BC94, (void *)&func_80045378);
}


void func_80046688(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    M2C_UNK func_800A2A68(); /* extern */
    void func_800A2C28();
    extern M2C_UNK D_8010BC94;
    func_800A2C28(&D_8010BC94, arg0, arg1);
    func_800A2A68(&D_8010BC94, arg0, arg2);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800466E4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80046774);


void func_800473D4() {
    void func_800A231C();
    extern M2C_UNK D_8010BC94;
    func_800A231C(&D_8010BC94, 2);
}


void func_800473FC() {
    s8 * func_800A2310();
    extern M2C_UNK D_8010BC94;
    func_800A2310(&D_8010BC94, 0x1000);
}


void func_80047424() {
    M2C_UNK func_80081214(); /* extern */
    extern s16 D_8011A268;
    func_80081214(D_8011A268, -1, 3);
}


void func_80047450() {
    M2C_UNK func_8006A6C8(); /* extern */
    M2C_UNK func_8009D0CC(); /* extern */
    extern M2C_UNK D_8010D6B8;
    extern s16 D_8011A268;
    extern s8 D_80158872;
    extern s8 D_80158874;
    s32 temp_v1;

    temp_v1 = D_8011A268 * 0x1A;
    *(u16 *)(((s8 *)&D_8010D6B8) + temp_v1) = *(u16 *)(((s8 *)&D_8010D6B8) + temp_v1) | 0x4000;
    D_80158872 = 0;
    D_80158874 = 0;
    func_8009D0CC();
    func_8006A6C8(0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800474C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80047988);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80047C9C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80047DC0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80048360);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800484A8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80048618);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80048890);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80048CC8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80048E78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80048F5C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004971C);


void func_8004989C() {
    extern M2C_UNK D_8010D28E;
    extern M2C_UNK D_8010D6B8;
    extern M2C_UNK D_8010D6BA;
    extern s16 D_8011A268;
    s32 temp_a0;

    temp_a0 = D_8011A268 * 0x1A;
    if (*(s8 *)(((s8 *)&D_8010D28E) + (*(u8 *)(((s8 *)((s8 *)&D_8010D6BA)) + temp_a0) * 0x14)) == 5) {
        *(u16 *)(((s8 *)&D_8010D6B8) + temp_a0) = *(u16 *)(((s8 *)&D_8010D6B8) + temp_a0) | 0x8000;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80049918);


void func_80049FD0(s32 arg0, s32 arg1, s32 arg2) {
    s32 func_800DD784(); /* extern */
    M2C_UNK func_800DD7BC(); /* extern */
    extern s32 D_80158654;
    extern s32 D_801594B0;
    extern s32 D_801594B4;
    func_800DD7BC(arg0, arg1, func_800DD784() + arg2);
    if ((arg0 == D_801594B4) && (arg1 == D_801594B0)) {
        D_80158654 += arg2;
    }
    func_800DD784(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004A058);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004A1A4);


void func_8004C104(s32 arg0, M2C_UNK arg1) {
    void * func_80095228();
    void func_800C6B2C();
    void func_800C6B34();
    void func_800C6D94();
    s32 func_800DD82C();
    M2C_UNK func_800E1E64(); /* extern */
    M2C_UNK func_800E1E94(); /* extern */
    extern M2C_UNK D_8011A708;
    extern M2C_UNK D_8011FCF8;
    extern M2C_UNK D_80121340;
    extern M2C_UNK D_80158640;
    extern s32 D_80158654;
    extern s32 D_8015887C;
    func_800C6B2C(&D_80121340);
    func_800C6D94(&D_80121340, *(s32 *)(((s8 *)&D_8011A708) + (func_800DD82C(D_80158654) * 4)));
    if (D_8015887C == 2) {
        func_800E1E64(&D_80121340, &D_80158640);
    }
    func_800C6B34(&D_80121340);
    func_800E1E64(&D_80121340, func_80095228(arg1));
    func_800E1E94(&D_8011FCF8, &D_80121340);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004C1CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004C5E0);


void func_8004C9A0() {
    void func_8009D158();
    void func_800A3650();
    s32 func_80107C38(); /* extern */
    extern s32 D_8011E748;
    extern s32 D_8015862C;
    extern s32 D_80158634;
    extern s32 D_80158638;
    extern s32 D_8015863C;
    D_80158634 = 0;
    D_80158638 = 0;
    D_8015863C = 0;
    D_8015862C = 0;
    func_800A3650();
    if (D_8011E748 == 0) {
        D_8011E748 = func_80107C38(0x140, 0xF0);
        func_8009D158();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004C9FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004CE60);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004DD34);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004DEC0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004E004);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004E188);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004E4E0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004EA94);


s32 func_8004EEFC(s32 arg0) {
    s32 func_800CEBD4();
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;

    var_s1 = arg0;
    var_s3 = 0;
    var_s0 = 0xA;
    var_s2 = 0x32;
    if (var_s1 > 0) {
        do {
            var_s3 += func_800CEBD4(var_s1, 0, var_s2) / var_s0;
            var_s0 += 5;
            var_s1 -= var_s2;
            var_s2 = 0x64;
        } while (var_s1 > 0);
    }
    return var_s3;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8004EFA0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80052018);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80053490);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005419C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80054294);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80054584);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005923C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80059B64);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80059E04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80059F84);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005A0BC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005A364);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005A60C);


void func_8005A6DC() {
    M2C_UNK func_8005A60C(); /* extern */
    func_8005A60C();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005A6FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005ACB0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005B258);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005B690);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005B750);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005B7F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005B8F0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005BEA8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005E260);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005E954);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005EBD0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005EE8C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005F744);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005FB60);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005FD48);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8005FF90);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800600D4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80060314);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80060698);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80060D48);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006125C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80061548);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80062B54);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80062E08);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006366C);

/* Field block reached through a materialised base: cc1 only keeps the symbol
   address in a general register (instead of folding every access into
   `%lo(SYM+N)($at)`) when the accesses are struct member references. */
struct S_8011A390 {
    s16 f_00;
    s8 f_02;
    char _pad_03[0x4F];
    s16 f_52;
    s16 f_54;
    s16 f_56;
    s16 f_58;
    s16 f_5A;
};

void func_80065F98() {
    extern struct S_8011A390 D_8011A390;
    extern s16 D_8011A3EC[];
    s32 var_v1;

    D_8011A390.f_00 = 0;
    D_8011A390.f_02 = 0;
    D_8011A390.f_52 = 10;
    D_8011A390.f_54 = 0;
    D_8011A390.f_56 = 0;
    D_8011A390.f_58 = 0;
    D_8011A390.f_5A = 0;
    for (var_v1 = 0; var_v1 < 4; var_v1++) {
        D_8011A3EC[var_v1] = 0;
    }
}


void func_80065FF0() {
    extern s8 D_80158870;
    D_80158870 = 0; }


void func_80066000() {
    M2C_UNK func_80104868(); /* extern */
    M2C_UNK func_80104AFC(); /* extern */
    func_80104868();
    func_80104AFC();
}


s32 func_80066028() {
    void func_80065FF0();
    s32 func_800B8C60();
    extern M2C_UNK D_80135B98;
    extern M2C_UNK D_80158EF0;
    if (func_800B8C60(&D_80158EF0, 0x11962, 0, &D_80135B98, 0) != 0) {
        func_80065FF0();
    }
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80066074);


void func_800662B4(s32 arg0, s32 arg1) {
    void func_800C6DCC();
    void func_800C6E70();
    extern s32 D_8015887C;
    s32 var_a1;

    if ((arg1 >= 0) && (D_8015887C == 0)) {
        func_800C6DCC(arg0, 1);
    }
    var_a1 = arg1;
    if (arg1 <= 0) {
        var_a1 = ~arg1 + 1;
    }
    func_800C6E70(arg0, var_a1);
    if (arg1 < 0) {
        func_800C6DCC(arg0, 0);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006632C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80066B78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80067A3C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80067D58);


s32 func_80067F34(s32 arg0, s32 arg1, s32 arg2) {
    extern u8 D_8011A272;
    s32 i;
    for (i = 0; i <= arg0; i++) {
        arg2 += i * (7 - D_8011A272);
    }
    return arg2 / 2 + 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80067F78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80068120);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006869C);

void func_80069674() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006967C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80069960);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006A098);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006A39C);


void func_8006A658(s32 arg0) {
    void func_8002FE8C();
    M2C_UNK func_80046774(); /* extern */
    M2C_UNK func_8009D0CC(); /* extern */
    extern s32 D_8011ACBC;
    extern s8 D_80158872;
    extern s8 D_80158874;
    extern s8 D_80158876;
    if ((D_8011ACBC != 0) || (arg0 != 0)) {
        D_8011ACBC = 0;
        D_80158874 = 1;
        D_80158876 = 1;
        D_80158872 = 0;
        func_8002FE8C(1);
        func_8009D0CC();
        func_80046774();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006A6C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006A864);

/* @CFLAGS: -O1 -G0 */

void func_8006A9B8(s32 arg0, s32 arg1) {
    void func_8009EEF0__func_8006A9B8(M2C_UNK *, s32, s32, s32) __asm__("func_8009EEF0");
    extern M2C_UNK D_8011E72C;
    extern M2C_UNK D_8011E95A;
    if ((M2C_FIELD(&D_8011E95A, s16 *, 0) != arg0) || (M2C_FIELD(&D_8011E95A, s16 *, 2) != arg1)) {
        func_8009EEF0__func_8006A9B8(&D_8011E72C, arg0, arg1, arg0);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006AA0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006AE68);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006B28C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006B410);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006B7F8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006B914);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006BEFC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006C1DC);

s32 func_8006C490() {
    return 0;
}


typedef struct { s8 f0; s8 f1; s8 f2; s8 f3; s8 f4; } S5;

void func_8006C498() {
    extern s8 D_8010BEA4;
    extern s8 D_801586A8;
    *(S5 *)&D_8010BEA4 = *(S5 *)&D_801586A8;
}


typedef struct { s8 f0; s8 f1; s8 f2; s8 f3; s8 f4; } S5b;

void func_8006C4C8() {
    extern s8 D_8010BEA4;
    extern s8 D_801586B0;
    *(S5b *)&D_8010BEA4 = *(S5b *)&D_801586B0;
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800108DC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006C4F8);

s32 func_8006CEC4() {
    return 1;
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800108F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006CECC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006DD6C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001093C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006DF00);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010970);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001097C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010994);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800109B0);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800109D8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010A00);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006E05C);


void func_8006E2E0() {
    M2C_UNK func_80104794(); /* extern */
    extern M2C_UNK D_80158748;
    s32 *temp_s0;
    s32 temp_a0;
    s32 var_s1;

    var_s1 = 0;
    do {
        temp_s0 = (var_s1 * 4) + (void *)&D_80158748;
        temp_a0 = *temp_s0;
        var_s1 += 1;
        func_80104794(temp_a0);
        *temp_s0 = 0;
    } while (var_s1 < 2);
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010A38);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006E33C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006E92C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006EC14);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006ECFC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006F828);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010C18);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010C34);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010C4C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8006FC38);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800700FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007049C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80070544);


s32 func_800705A4(s32 arg0, s32 arg1) {
    s32 func_800F53F8(); /* extern */
    extern s32 D_80158728;
    extern s32 D_8015872C;
    extern s32 D_80158730;
    extern s32 D_80158734;
    extern s32 D_80158738;
    s32 temp_v0;

    D_80158728 = arg0;
    D_80158734 = arg1;
    temp_v0 = func_800F53F8(0x2000);
    D_8015872C = 0;
    if (arg1 == 0) {
        D_80158730 = 0x2000;
    } else {
        D_80158730 = 0;
    }
    D_80158738 = 0;
    return temp_v0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80070600);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800706F8);


s32 func_80070824(s32 arg0) {
    s32 func_800E0418(); /* extern */
    M2C_UNK func_800F5718(); /* extern */
    s32 func_800F59F0(); /* extern */
    M2C_UNK func_800F5A24(); /* extern */
    extern s32 D_80158728;
    extern s32 D_8015872C;
    extern s32 D_80158730;
    extern s32 D_80158734;
    extern s32 D_80158738;
    s32 temp_v0;

    if ((D_80158734 == 1) && (D_80158730 > 0)) {
        temp_v0 = func_800E0418(func_800F59F0(), D_80158728, D_80158730);
        D_8015872C += temp_v0;
        D_80158728 += temp_v0;
        D_80158738 += D_80158730;
        func_800F5A24(arg0);
    }
    func_800F5718(arg0);
    return D_8015872C;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800708C4);


void func_80070A50() {
    M2C_UNK func_800A74AC(); /* extern */
    func_800A74AC(-0x6B, 0, 1, 0);
    func_800A74AC(0x6C, 0, 0, 0);
}


s32 func_80070A90(s32 arg0, M2C_UNK arg1) {
    void * func_800A8560();
    s32 func_800A8690();
    s32 func_800CEBD4();
    func_800A8560();
    func_800CEBD4(func_800A8690(), arg0, arg1);
}


void func_80070ADC(s32 arg0, M2C_UNK arg1) {
    s32 func_800A8690();
    s32 func_800CEBD4();
    func_800CEBD4(func_800A8690(), arg0, arg1);
}

/* @CFLAGS: -O1 -G0 */

void func_80070B20() {
    s32 func_80070A90(s32 arg0, M2C_UNK arg1);
    M2C_UNK func_800A83F0(s32, M2C_UNK);                /* extern */
    extern M2C_UNK D_8011A5C8;
    extern M2C_UNK D_8011A5CC;
    extern s32 D_8015884C;
    s8 temp_v0;

    func_800A83F0(D_8015884C, 0x256);
    M2C_FIELD(&D_8011A5C8, s8 *, 0) = func_80070A90(1, 0xA);
    M2C_FIELD(&D_8011A5C8, s8 *, 1) = func_80070A90(1, 0x64);
    M2C_FIELD(&D_8011A5C8, s8 *, 2) = func_80070A90(0, 0xA);
    temp_v0 = func_80070A90(4, 0x14);
    M2C_FIELD(&D_8011A5C8, s8 *, 3) = temp_v0;
    if (temp_v0 & 1) {
        M2C_FIELD(&D_8011A5C8, s8 *, 3) = (s8) (temp_v0 + 1);
    }
    M2C_FIELD(&D_8011A5CC, s8 *, 0) = func_80070A90(4, 0x14);
    M2C_FIELD(&D_8011A5CC, s8 *, 1) = func_80070A90(0, 0xA);
    M2C_FIELD(&D_8011A5CC, s8 *, 2) = func_80070A90(0, 0xA);
    M2C_FIELD(&D_8011A5CC, s8 *, 3) = func_80070A90(4, 0xC);
    M2C_FIELD(&D_8011A5CC, s8 *, 4) = func_80070A90(0xA, 0x64);
    M2C_FIELD(&D_8011A5CC, s8 *, 5) = func_80070A90(4, 0x32);
    M2C_FIELD(&D_8011A5CC, s8 *, 6) = func_80070A90(4, 0x32);
    M2C_FIELD(&D_8011A5CC, s8 *, 7) = func_80070A90(3, 0xA);
    M2C_FIELD(&D_8011A5CC, s8 *, 8) = func_80070A90(5, 0x64);
    M2C_FIELD(&D_8011A5CC, s8 *, 9) = func_80070A90(0, 8);
    M2C_FIELD(&D_8011A5CC, s8 *, 0xA) = func_80070A90(0, 8);
    M2C_FIELD(&D_8011A5CC, s8 *, 0xB) = func_80070A90(0, 8);
    M2C_FIELD(&D_8011A5CC, s8 *, 0xC) = func_80070A90(1, 0x14);
    M2C_FIELD(&D_8011A5CC, s8 *, 0xD) = func_80070A90(0, 0x64);
    M2C_FIELD(&D_8011A5CC, s8 *, 0xE) = func_80070A90(0, 0x64);
    M2C_FIELD(&D_8011A5CC, s8 *, 0xF) = func_80070A90(4, 0x64);
    M2C_FIELD(&D_8011A5CC, s8 *, 0x10) = func_80070A90(0x19, 0xC8);
    M2C_FIELD(&D_8011A5CC, s8 *, 0x11) = func_80070A90(0, 0xA);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80070CD4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80070E04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80071024);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800711B8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80071390);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007154C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80071828);


s32 func_80071984() {
    extern s32 D_8015887C;
    D_8015887C = 0; return 0; }

void func_80071994() {

}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010C90);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", jtbl_80010CB4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007199C);

void func_80071AE0() {

}


void func_80071AE8(s32 arg0) {
    s32 func_80072A28();
    void * func_80094FE0();
    void * func_80095174();
    s32 func_800B8C60();
    void func_800C6B2C();
    void func_800C6B34();
    void func_800C6BB4();
    void func_800C6D94();
    M2C_UNK func_800E1E94(); /* extern */
    extern M2C_UNK D_8010C2A0;
    extern M2C_UNK D_8011FCF8;
    extern M2C_UNK D_8011FD48;
    extern M2C_UNK D_8011FD98;
    extern M2C_UNK D_80121340;
    extern M2C_UNK D_80135B98;
    extern M2C_UNK D_80158EF0;
    s32 var_s0;

    func_800E1E94(&D_8011FCF8, func_80094FE0());
    func_800E1E94(&D_8011FD48, func_80095174(arg0));
    var_s0 = 0;
    func_800C6B2C(&D_80121340);
loop_1:
    if (var_s0 < 0x5D) {
        if (func_80072A28(arg0, var_s0) != 0) {
            func_800C6D94(&D_80121340, *(s32 *)(((s8 *)&D_8010C2A0) + (var_s0 * 0x10)));
            func_800C6BB4(&D_80121340);
            func_800C6B34(&D_80121340);
        }
        var_s0 += 1;
        goto loop_1;
    }
    func_800E1E94(&D_8011FD98, &D_80121340);
    func_800B8C60(&D_80158EF0, 0xB2A, 0, &D_80135B98, 0);
}

s32 func_80071BE8() {
    return 0;
}

s32 func_80071BF0() {
    return 0;
}


void func_80071BF8() {
    extern s32 D_8010CB38[];
    extern s32 D_8010CB8C[];
    s32 i;
    for (i = 0; i < 0x15; i++) {
        D_8010CB38[i] = -1;
        D_8010CB8C[i] = -1;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80071C3C);


void func_800726E4() {
    M2C_UNK func_800A1978(); /* extern */
    extern s32 D_80158758;
    func_800A1978();
    D_80158758 = 1;
}


void func_8007270C() {
    M2C_UNK func_800FA660(); /* extern */
    extern s32 D_80158758;
    extern s16 D_801592E4;
    func_800FA660();
    D_801592E4 = 0x80;
    D_80158758 = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007273C);

s32 func_80072A28(s32 arg0, s32 arg1) {
    void func_800CEF1C();
    typedef struct { u8 bits[0x578]; } CivTechs;
    extern CivTechs D_801176EC[];
    s32 sp10;
    u8 sp14;

    if (arg1 == -2) {
        return 0;
    }
    if (arg1 < 0) {
        return 1;
    }
    if (arg1 == 0x59 || arg1 >= 0x5D || arg0 <= 0) {
        return 0;
    }
    func_800CEF1C(arg1, &sp10, &sp14);
    return (D_801176EC[arg0].bits[sp10] & sp14) != 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80072AD8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010CEC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010D04);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010D1C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010D28);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80072B6C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800735DC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80073924);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80073D2C);


void func_80073EC8(s32 arg0, M2C_UNK arg1, s32 *arg2, s32 *arg3) {
    M2C_UNK func_800B1DA4(); /* extern */
    void func_800C6B2C();
    void func_800C6C54();
    void func_800C6D94();
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_80121340;
    extern M2C_UNK D_80158780;
    extern M2C_UNK D_80158784;
    if (*arg2 == 0) {
        func_800C6C54(&D_80121340);
    } else {
        func_800E1E64(&D_80121340, &D_80158780);
        if (*arg3 >= 4) {
            *arg3 = 0;
            func_800B1DA4(arg0, &D_80121340);
            func_800C6B2C(&D_80121340);
        } else {
            func_800E1E64(&D_80121340, &D_80158784);
        }
    }
    *arg3 += 1;
    *arg2 += 1;
    func_800C6D94(&D_80121340, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80073FD4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80074D5C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80074E04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80075228);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800752E8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80075714);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80075924);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800759EC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80075AB8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80075B48);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800766C8);


void func_80076EBC(s32 arg0) {
    M2C_UNK func_800766C8(); /* extern */
    func_800766C8(arg0, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80076EDC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800774D4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007793C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80077AF0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80077BF8);

s32 func_80077C88() {
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80077C90);


s32 func_80077D2C(arg0)
    s32 arg0;
{
    extern M2C_UNK D_80117A74;
    return *(u8 *)(((s8 *)&D_80117A74) + (arg0 * 0x578)) & 2;
}


s32 func_80077D5C(s32 arg0) {
    extern M2C_UNK D_80117A74;
    return *(u8 *)(((s8 *)&D_80117A74) + (arg0 * 0x578)) & 1;
}


s32 func_80077D8C(s32 arg0) {
    s32 func_80077D2C();
    extern M2C_UNK D_80117A76;
    extern s16 D_8011A264;
    s32 var_s1;

    var_s1 = 0;
    if (func_80077D2C() != 0) {
        var_s1 = D_8011A264 >= *(s16 *)(((s8 *)&D_80117A76) + (arg0 * 0x578));
    }
    return var_s1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80077E04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80077EA4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80077EFC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800784B4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80079B2C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80079F64);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007AB10);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007AE08);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007B334);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007B3C8);

s32 func_8007B6A0(arg0)
    s32 arg0;
{
    s32 func_8007B3C8();
    typedef struct { u8 dmg; u8 pad[0x19]; } UnitDmg;
    extern UnitDmg D_8010D6BC[];
    s32 hp = func_8007B3C8(arg0) - D_8010D6BC[arg0].dmg;
    s32 mask = -(hp > 0);
    return mask & hp;
}

s32 func_8007B6FC(s32 arg0) {
    typedef struct { s16 type; u8 pad[0x18]; } UnitType;
    extern UnitType D_8010D6CC[];
    if (arg0 >= 0) {
        arg0 = D_8010D6CC[arg0].type;
    }
    return arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007B72C);

s32 func_8007B798(arg0)
    s32 arg0;
{
    typedef struct { s16 prev; u8 pad[0x18]; } UnitLink;
    extern UnitLink D_8010D6CA[];

    if (arg0 >= 0) {
        while (D_8010D6CA[arg0].prev >= 0) {
            if (arg0 == D_8010D6CA[arg0].prev) {
                break;
            }
            arg0 = D_8010D6CA[arg0].prev;
        }
    }
    return arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007B810);


void func_8007B91C(s32 arg0) {
    extern M2C_UNK D_8010D6C3;
    extern M2C_UNK D_8010D6C6;
    s32 temp_a1;

    temp_a1 = arg0 * 0x1A;
    if (*(s8 *)(((s8 *)&D_8010D6C3) + temp_a1) != 3) {
        *(s16 *)(((s8 *)&D_8010D6C6) + temp_a1) = -1;
    }
    *(s8 *)(((s8 *)&D_8010D6C3) + (arg0 * 0x1A)) = 3;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007B980);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007B9EC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007BB9C);


void func_8007BCD8(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    M2C_UNK func_8007B9EC(); /* extern */
    M2C_UNK func_8007BB9C(); /* extern */
    func_8007B9EC();
    func_8007BB9C(arg0, arg1, arg2);
}


void func_8007BD28(s32 arg0, M2C_UNK arg1) {
    void func_8007BCD8();
    func_8007BCD8(arg0, arg1, arg1);
}


void func_8007BD48(s32 arg0) {
    void func_8007BCD8();
    extern M2C_UNK D_8010D6B4;
    extern M2C_UNK D_8010D6B6;
    s32 temp_v0;

    temp_v0 = arg0 * 0x1A;
    func_8007BCD8(arg0, *(s16 *)(((s8 *)&D_8010D6B4) + temp_v0), *(s16 *)(((s8 *)&D_8010D6B6) + temp_v0));
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007BD94);


void func_8007BEAC(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    s32 func_8007B6FC();
    s32 func_8007B798();
    void func_8007BCD8();
    s32 temp_s0;
    s32 var_s1;

    var_s1 = func_8007B798();
    if (var_s1 >= 0) {
        do {
            temp_s0 = func_8007B6FC(var_s1);
            func_8007BCD8(var_s1, arg1, arg2);
            var_s1 = temp_s0;
        } while (var_s1 >= 0);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007BF24);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007C0BC);


void func_8007C204(s32 arg0) {
    s32 func_8007B798();
    M2C_UNK func_8007C0BC(); /* extern */
    func_8007C0BC();
    func_8007B798(arg0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007C234);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007C810);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007CCF4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007CD5C);


void func_8007CE00(s32 arg0) {
    extern M2C_UNK D_8010D6BD;
    if (arg0 >= 0) {
        *(s8 *)(((s8 *)&D_8010D6BD) + (arg0 * 0x1A)) = 0;
    }
}


void func_8007CE2C() {
    s32 func_8007B6FC();
    s32 func_8007B798();
    void func_8007CE00();
    s32 var_s0;

    var_s0 = func_8007B798();
    if (var_s0 >= 0) {
        do {
            func_8007CE00(var_s0);
            var_s0 = func_8007B6FC(var_s0);
        } while (var_s0 >= 0);
    }
}


void func_8007CE78(s32 arg0, s32 arg1) {
    extern M2C_UNK D_8010D6BB;
    extern M2C_UNK D_8010D6BD;
    s32 temp_a2;

    if (arg1 >= 0) {
        temp_a2 = arg0 * 0x1A;
        if ((arg1 != *(s8 *)(((s8 *)&D_8010D6BB) + temp_a2)) && (arg0 >= 0)) {
            *(u8 *)(((s8 *)&D_8010D6BD) + temp_a2) = *(u8 *)(((s8 *)&D_8010D6BD) + temp_a2) | (1 << arg1);
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007CEDC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007CF34);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007D110);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007D264);


s32 func_8007D3F0(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    s32 func_8007D264(); /* extern */
    s32 func_80098848();
    extern s32 D_801587E0;
    s32 var_v0;

    D_801587E0 = -1;
    var_v0 = 0;
    if (func_80098848() < 0) {
        var_v0 = func_8007D264(arg0, arg1, arg2);
    }
    return var_v0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007D464);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007D5B4);


s32 func_8007D62C(s32 arg0, M2C_UNK arg1) {
    s32 func_8007D464(s32, M2C_UNK, s32); /* extern */
    u32 func_80098404();
    s32 var_s0;
    s32 var_s1;

    var_s1 = 0;
    var_s0 = func_80098404();
    if (var_s0 >= 0) {
        var_s1 = 1 << var_s0;
    }
    var_s0 = 1;
    do {
        if (func_8007D464(arg0, arg1, var_s0) != 0) {
            var_s1 |= 1 << var_s0;
        }
        var_s0 += 1;
    } while (var_s0 < 8);
    return var_s1;
}


void func_8007D6C4(s32 arg0) {
    M2C_UNK func_8007CEDC(); /* extern */
    s32 func_8007D464(); /* extern */
    extern M2C_UNK D_8010D6B4;
    extern M2C_UNK D_8010D6B6;
    s32 temp_s1;
    s32 var_s0;

    var_s0 = 1;
    temp_s1 = arg0 * 0x1A;
    do {
        if (func_8007D464(*(s16 *)(((s8 *)&D_8010D6B4) + temp_s1), *(s16 *)(((s8 *)&D_8010D6B6) + temp_s1), var_s0) != 0) {
            func_8007CEDC(arg0, var_s0);
        }
        var_s0 += 1;
    } while (var_s0 < 8);
}

s32 func_8007D750(s32 arg0, s32 arg1) {
    extern u8 D_8010D6BA[];
    s32 func_8007B6FC(s32);
    s32 func_8007B798();
    s32 var_a0;
    s32 var_s0;

    var_s0 = 0;
    var_a0 = func_8007B798();
    if (var_a0 >= 0) {
    loop:
        if (D_8010D6BA[var_a0 * 0x1A] == arg1) {
            var_s0 = 1;
            goto end;
        }
        var_a0 = func_8007B6FC(var_a0);
        if (var_a0 >= 0) {
            goto loop;
        }
    }
end:
    return var_s0;
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010D88);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010D94);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010DA4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007D7DC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007DBC8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007DC6C);


void func_8007E308(s32 arg0) {
    void func_8007BD28();
    M2C_UNK func_8007DC6C(); /* extern */
    extern M2C_UNK D_8010D285;
    extern M2C_UNK D_8010D6BA;
    if (arg0 >= 0) {
        if (*(s8 *)(((s8 *)&D_8010D285) + (*(u8 *)(((s8 *)((s8 *)&D_8010D6BA)) + (arg0 * 0x1A)) * 0x14)) == 2) {
            func_8007DC6C(arg0, 1);
            return;
        }
        func_8007BD28(arg0, -2);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007E384);

void func_8007E4D4(s32 arg0) {
    M2C_UNK func_8007E384();
    void func_8009BD08();
    typedef struct { s16 x; u8 pad[0x18]; } UnitX;
    typedef struct { s16 y; u8 pad[0x18]; } UnitY;
    extern UnitX D_8010D6B4__func_8007E4D4[] __asm__("D_8010D6B4");
    extern UnitY D_8010D6B6__func_8007E4D4[] __asm__("D_8010D6B6");
    extern s16 D_8011C308;
    extern s16 D_8011C30A;
    s32 x = D_8010D6B4__func_8007E4D4[arg0].x;
    s32 y = D_8010D6B6__func_8007E4D4[arg0].y;
    s32 valid;

    func_8007E384(arg0);
    valid = 0;
    if (y >= 0 && y < D_8011C30A && x >= 0) {
        valid = x < D_8011C308;
    }
    if (valid) {
        func_8009BD08(x, y);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007E578);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007E648);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007E6AC);


s32 func_8007E7B4(s32 arg0) {
    s32 func_8007B6A0();
    extern M2C_UNK D_8010D6B4;
    extern M2C_UNK D_8010D6C3;
    extern s16 D_8011A280;
    s32 temp_v1;
    s32 var_a1;

    var_a1 = 0;
    if ((arg0 >= 0) && (arg0 < D_8011A280)) {
        temp_v1 = arg0 * 0x1A;
        if ((*(s16 *)(((s8 *)&D_8010D6B4) + temp_v1) >= 0) && (*(s8 *)(((s8 *)&D_8010D6C3) + temp_v1) != 3)) {
            var_a1 = func_8007B6A0(arg0, 0) != 0;
        }
    }
    return var_a1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007E83C);


void func_8007EAF8(s32 arg0) {
    s8 func_8007B3C8(); /* extern */
    extern M2C_UNK D_8010D6BC__func_8007EAF8 __asm__("D_8010D6BC");
    *(s8 *)(((s8 *)&D_8010D6BC__func_8007EAF8) + (arg0 * 0x1A)) = func_8007B3C8();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007EB40);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007EC64);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007ED08);


s32 func_8007EE94(s32 arg0) {
    extern M2C_UNK D_8010D6B8;
    extern M2C_UNK D_8010D6C3;
    s32 temp_v0;

    if (arg0 >= 0) {
        temp_v0 = arg0 * 0x1A;
        *(s8 *)(((s8 *)&D_8010D6C3) + temp_v0) = -1;
        *(u16 *)(((s8 *)&D_8010D6B8) + temp_v0) = *(u16 *)(((s8 *)&D_8010D6B8) + temp_v0) & 0x7FFF;
    }
    return 0;
}


void func_8007EEE4(s32 arg0, M2C_UNK arg1, M2C_UNK arg2, s32 arg3, s32 arg4, s32 arg5) {
    M2C_UNK func_800AED30(); /* extern */
    extern s32 D_801587C4;
    func_800AED30(arg1, arg2, 4, arg4 + 2, arg5, D_801587C4);
}


void func_8007EF2C() {
    extern s32 D_8010C094[];
    extern s32 D_8010C0B4[];
    s32 i;
    for (i = 0; i < 8; i++) {
        D_8010C094[i] = 0;
        D_8010C0B4[i] = -1;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007EF70);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007EFE0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007F720);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007F840);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8007F98C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800808E4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80080A24);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80081214);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80084B84);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80084C34);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80084CEC);


void func_80084DC4(arg0)
    s32 arg0;
{
    extern s32 D_801587F8;
    D_801587F8 = arg0;
}


void func_80084DD0(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    M2C_UNK func_800F9E18(); /* extern */
    func_800F9E18(arg0, arg1, arg2, arg3, (s32) arg4);
}


void func_80084E10(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    M2C_UNK func_800F9E18(); /* extern */
    func_800F9E18(arg0, arg1, arg3, arg2, (s32) arg3);
}


void func_80084E4C(s32 arg0, s16 arg1, s16 arg2, s32 arg3) {
    M2C_UNK func_800F9E18(); /* extern */
    func_800F9E18(arg0, arg1, arg2, (s16) (arg1 + arg3), (s32) arg2);
}


void func_80084E8C(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    M2C_UNK func_800F9E18(); /* extern */
    func_800F9E18(arg0, arg1, arg2, arg1, (s32) arg3);
}


void func_80084ECC(s32 arg0, s16 arg1, s16 arg2, s32 arg3) {
    M2C_UNK func_800F9E18(); /* extern */
    func_800F9E18(arg0, arg1, arg2, arg1, (s32) (s16) (arg2 + arg3));
}


void func_80084F10(s32 arg0, M2C_UNK arg1, s32 arg2, M2C_UNK arg3, s32 arg4, s32 arg5) {
    void func_80084E10();
    void func_80084E8C();
    func_80084E10(arg0, arg1, arg3, arg2, arg5);
    func_80084E10(arg0, arg1, arg3, arg4, arg5);
    func_80084E8C(arg0, arg1, arg2, arg4, arg5);
    func_80084E8C(arg0, arg3, arg2, arg4, arg5);
}


void func_80084FCC(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    void func_80084E10();
    void func_80084E8C();
    s32 temp_s0;
    s32 temp_s1;

    temp_s1 = (arg1 + arg3) - 1;
    func_80084E10(arg0, arg1, temp_s1, arg2, arg5);
    temp_s0 = (arg2 + arg4) - 1;
    func_80084E10(arg0, arg1, temp_s1, temp_s0, arg5);
    func_80084E8C(arg0, arg1, arg2, temp_s0, arg5);
    func_80084E8C(arg0, temp_s1, arg2, temp_s0, arg5);
}


void func_80085090(s32 arg0, void *arg1, s32 arg2, s32 arg3) {
    void func_80084E10();
    void func_80084E8C();
    func_80084E10(arg0, M2C_FIELD(arg1, s16 *, 0), M2C_FIELD(arg1, s16 *, 4) - 1, M2C_FIELD(arg1, s16 *, 2), arg2);
    func_80084E8C(arg0, M2C_FIELD(arg1, s16 *, 0), M2C_FIELD(arg1, s16 *, 2), M2C_FIELD(arg1, s16 *, 6) - 1, arg2);
    func_80084E10(arg0, M2C_FIELD(arg1, s16 *, 0), M2C_FIELD(arg1, s16 *, 4) - 1, M2C_FIELD(arg1, s16 *, 6) - 1, arg3);
    func_80084E8C(arg0, M2C_FIELD(arg1, s16 *, 4) - 1, M2C_FIELD(arg1, s16 *, 2), M2C_FIELD(arg1, s16 *, 6) - 1, arg3);
}


void func_8008514C(s32 arg0, s16 arg1) {
    M2C_UNK func_800F8F4C(); /* extern */
    func_800F8F4C(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80085170);

void func_800851B0() {

}

void func_800851B8() {

}


void func_800851C0(s32 arg0, void *arg1, s32 arg2, s32 arg3) {
    void func_80084E10();
    void func_80084E8C();
    M2C_UNK func_800F5208(); /* extern */
    func_80084E10(arg0, M2C_FIELD(arg1, s16 *, 0), M2C_FIELD(arg1, s16 *, 4) - 1, M2C_FIELD(arg1, s16 *, 2), arg2);
    func_80084E10(arg0, M2C_FIELD(arg1, s16 *, 0), M2C_FIELD(arg1, s16 *, 4) - 1, M2C_FIELD(arg1, s16 *, 6) - 1, arg3);
    func_80084E8C(arg0, M2C_FIELD(arg1, s16 *, 0), M2C_FIELD(arg1, s16 *, 2), M2C_FIELD(arg1, s16 *, 6) - 1, arg2);
    func_80084E8C(arg0, M2C_FIELD(arg1, s16 *, 4) - 1, M2C_FIELD(arg1, s16 *, 2), M2C_FIELD(arg1, s16 *, 6) - 1, arg3);
    func_800F5208(arg1, -1, -1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008528C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80085784);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800857CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80085864);

void func_800858B8() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800858C0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80085CFC);


void func_80085D70(arg0, arg1)
    s32 arg0;
    M2C_UNK arg1;
{
    s32 func_80085CFC(); /* extern */
    s32 func_800982F4();
    s32 func_800CEC5C();
    s32 temp_v0;

    temp_v0 = func_800CEC5C();
    if (func_80085CFC(temp_v0, arg1) != 0) {
        M2C_FIELD(func_800982F4(temp_v0, arg1), s8 *, 5) = 1;
    }
}


void func_80085DC8(s32 arg0, s32 arg1) {
    void func_80085D70();
    s32 temp_s0;

    func_80085D70();
    temp_s0 = arg0 + 1;
    func_80085D70(temp_s0, arg1 - 1);
    func_80085D70(temp_s0, arg1 + 1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80085E18);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80085F34);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80086178);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80086268);

/* @CFLAGS: -O1 -G0 */

s32 func_8008658C(s32 arg0, s32 arg1) {
    s32 func_800982F4(arg0, arg1);
    s32 func_800983DC__func_8008658C(s32, s32) __asm__("func_800983DC");
    extern M2C_UNK D_8011C308;
    extern s16 D_8011C30A;
    s32 var_v1;

    var_v1 = 0;
    if ((arg1 >= 0) && (arg1 < D_8011C30A) && (arg0 >= 0)) {
        var_v1 = arg0 < M2C_FIELD(&D_8011C308, s16 *, 0);
    }
    if (var_v1 != 0) {
        if ((arg0 >= 2) && (arg1 >= 2) && (arg0 < (M2C_FIELD(&D_8011C308, s16 *, 0) - 2))) {
            if (arg1 < (M2C_FIELD(&D_8011C308, s16 *, 2) - 2)) {
                if ((func_800983DC__func_8008658C(arg0 - 2, arg1) == 0) && (func_800983DC__func_8008658C(arg0 + 2, arg1) == 0) && (func_800983DC__func_8008658C(arg0, arg1 - 2) == 0)) {
                    if (func_800983DC__func_8008658C(arg0, arg1 + 2) == 0) {
                        *(u8 *)func_800982F4(arg0, arg1) = 0xA;
                        return 1;
                    }
                    goto block_14;
                }
                /* Duplicate return node #15. Try simplifying control flow for better match */
                return 0;
            }
            goto block_14;
        }
        /* Duplicate return node #15. Try simplifying control flow for better match */
        return 0;
    }
block_14:
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800866B0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80086DD8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80088788);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80088898);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80088B78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80088BD8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80088D70);


void func_80089430(s32 arg0) {
    extern M2C_UNK D_80113ED0;
    extern s16 D_8011A282;
    extern s32 D_80158860;
    extern void * D_80158864;
    if ((arg0 >= 0) && (arg0 < D_8011A282)) {
        D_80158860 = arg0;
        D_80158864 = (arg0 * 0x58) + (void *)&D_80113ED0;
    }
}

void func_80089484(s32 arg0, s32 arg1) {
    typedef struct { u8 val; u8 pad[0x57]; } CityByte;
    typedef struct { u8 arr[0x58]; } CityArr;
    extern CityByte D_80113ED9[];
    extern CityByte D_80113EDC[];
    extern CityArr D_80113EDD[];

    if (arg1 >= 0) {
        s32 mask = 1 << arg1;
        D_80113EDC[arg0].val = mask | D_80113EDC[arg0].val;
        D_80113EDD[arg0].arr[arg1] = D_80113ED9[arg0].val;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800894F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008957C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089648);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089724);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800897F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089878);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089980);

s32 func_80089B20(s32 arg0, s32 arg1) {
    void func_800CEF1C();
    typedef struct { u8 bits[0x58]; } CityBldgs;
    extern CityBldgs D_80113F08[];
    s32 sp10;
    u8 sp14;
    s32 var_v1 = 0;

    if ((u32)(arg1 - 1) < 0x22U) {
        func_800CEF1C(arg1, &sp10, &sp14);
        var_v1 = (D_80113F08[arg0].bits[sp10] & sp14) != 0;
    }
    return var_v1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089BA4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089C78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089CCC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80089D20);


void func_8008C68C(s32 arg0, s32 arg1) {
    void func_800C6DCC();
    void func_800C6E00();
    extern M2C_UNK D_80113EF2;
    if (arg1 < 0) {
        func_800C6DCC(arg0, 0xE);
        return;
    }
    func_800C6E00(arg0, (arg1 * 0x58) + (void *)&D_80113EF2);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008C6E0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008C924);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008CA58);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008D2FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008D428);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008D4C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008D840);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008E2D0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008E990);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008EA50);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008F3DC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008F4A8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008F5CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008F758);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008F8A0);


void func_8008F9D4(s32 arg0) {
    s32 __builtin_new(); /* extern */
    s32 func_8008FADC(); /* extern */
    M2C_UNK func_8008FDC0(); /* extern */
    s32 func_8008FF84(); /* extern */
    M2C_UNK func_8009026C(); /* extern */
    M2C_UNK func_80097A24(); /* extern */
    void func_80097AB8();
    void func_8009D158();
    void func_800DA338();
    M2C_UNK func_800DA694(); /* extern */
    s32 func_80107C38(); /* extern */
    M2C_UNK func_80107CCC(); /* extern */
    extern s32 D_8011E748;
    extern s16 D_801592E4;
    s32 temp_v0;

    func_80107CCC(D_8011E748);
    D_8011E748 = 0;
    func_800DA694();
    func_80097AB8();
    D_801592E4 = 0x80;
    temp_v0 = func_8008FADC(__builtin_new(0x3080));
    if (temp_v0 != 0) {
        if (func_8008FF84(temp_v0, arg0) != 0) {
            func_8009026C(temp_v0);
        }
        if (temp_v0 != 0) {
            func_8008FDC0(temp_v0, 3);
        }
    }
    func_800DA338();
    func_80097A24();
    D_8011E748 = func_80107C38(0x140, 0xF0);
    D_801592E4 = 0x80;
    func_8009D158();
}

void func_8008FAB0() {

}


void func_8008FAB8() {
    M2C_UNK func_80091530(); /* extern */
    extern s32 D_8015882C;
    func_80091530(D_8015882C);
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010F0C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80010F10);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001101C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011020);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800110FC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800113CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008FADC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008FDC0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8008FF84);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009026C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800903A0);

s32 func_80090558() {
    return 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80090560);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80090674);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80090C5C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80090D5C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80090E40);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80090F24);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80091048);


void func_800912F8(void *arg0, s32 arg1) {
    s16 func_80094DC8(); /* extern */
    s16 temp_v1;

    temp_v1 = func_80094DC8(0, 3);
    if (M2C_FIELD(arg0, s32 *, 0x3068) == 0) {
        M2C_FIELD(arg0, s32 *, 0x2F18) = (s32) (M2C_FIELD(arg0, s32 *, 0x2F18) - 1);
        if (arg1 != -1) {
            M2C_FIELD(((arg1 * 4) + arg0), void **, 0x24AC) = (void *) (arg0 + ((temp_v1 * 0x94) + 0x2C8C));
        }
    }
}


void func_80091390(void *arg0, s32 arg1) {
    s16 func_80094DC8(); /* extern */
    s16 temp_v1;

    temp_v1 = func_80094DC8(0, 3);
    if (M2C_FIELD(arg0, s32 *, 0x3068) == 0) {
        M2C_FIELD(arg0, s32 *, 0x2F18) = (s32) (M2C_FIELD(arg0, s32 *, 0x2F18) - 1);
        if (arg1 != -1) {
            M2C_FIELD(((arg1 * 4) + arg0), void **, 0x24AC) = (void *) (arg0 + ((temp_v1 * 0x94) + 0x27EC));
        }
    }
}


void func_80091428(void *arg0, s32 arg1) {
    s16 func_80094DC8(); /* extern */
    s16 temp_v1;

    temp_v1 = func_80094DC8(0, 3);
    if ((M2C_FIELD(arg0, s32 *, 0x3068) == 0) && (arg1 != -1)) {
        M2C_FIELD(((arg1 * 4) + arg0), void **, 0x24AC) = (void *) (arg0 + ((temp_v1 * 0x94) + 0x2A3C));
    }
}


void func_800914AC(void *arg0, s32 arg1) {
    s16 func_80094DC8(); /* extern */
    s16 temp_v1;

    temp_v1 = func_80094DC8(0, 3);
    if ((M2C_FIELD(arg0, s32 *, 0x3068) == 0) && (arg1 != -1)) {
        M2C_FIELD(((arg1 * 4) + arg0), void **, 0x24AC) = (void *) (arg0 + ((temp_v1 * 0x94) + 0x259C));
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80091530);


void func_800915C8(void *arg0) {
    void func_800662B4();
    void func_800C6B2C();
    void func_800C6B34();
    void func_800C6BDC();
    M2C_UNK func_800E1E64(); /* extern */
    s32 func_800E1EB4(); /* extern */
    M2C_UNK func_800F9DB8(); /* extern */
    extern M2C_UNK D_80113EF2;
    extern s16 D_8011A264;
    extern M2C_UNK D_80121340;
    func_800C6B2C(&D_80121340);
    func_800E1E64(&D_80121340, (M2C_FIELD(arg0, s32 *, 0x306C) * 0x58) + (void *)&D_80113EF2);
    func_800C6BDC(&D_80121340);
    func_800C6B34(&D_80121340);
    func_800662B4(&D_80121340, D_8011A264);
    M2C_FIELD(arg0, s16 *, 0x3074) = (s16) (0xA0 - (func_800E1EB4(&D_80121340) * 3));
    M2C_FIELD(arg0, s16 *, 0x3076) = 0x10;
    M2C_FIELD(arg0, s16 *, 0x3078) = 0xF0;
    M2C_FIELD(arg0, s16 *, 0x307A) = 0x18;
    func_800F9DB8(arg0 + 0x84, &D_80121340, arg0 + 0x3074, 0x10);
}


void func_800916BC(s16 arg0) {
    M2C_UNK func_800F78C4(); /* extern */
    extern s32 D_8015882C;
    if (arg0 == 0xD2) {
        func_800F78C4(D_8015882C);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800916F0);


void func_80091778() {
    extern s16 D_80158828;
    if (D_80158828 < 0x140) {
        D_80158828 += 2;
    }
}


void func_800917A4() {
    extern s16 D_80158828;
    if (D_80158828 > 0) {
        D_80158828 -= 2;
    }
}


void func_800917CC() {
    M2C_UNK func_800FA7D4(); /* extern */
    extern M2C_UNK D_8010CBE0;
    func_800FA7D4(&D_8010CBE0, 2);
}


void func_800917F4() {
    M2C_UNK func_800FA7BC(); /* extern */
    extern M2C_UNK D_8010CBE0;
    extern s32 D_8010CBF0;
    extern s32 D_8010CBF4;
    extern s32 D_8010CBF8;
    extern s32 D_8010CBFC;
    extern s32 D_8010CC00;
    extern s32 D_8010CC04;
    extern s32 D_8010CC08;
    extern s32 D_8010CC0C;
    extern s32 D_8010CC10;
    extern s32 D_8010CC14;
    extern s32 D_8010CC18;
    extern s32 D_8010CC1C;
    extern s32 D_8010CC20;
    extern s32 D_8010CC24;
    extern s32 D_8010CC28;
    extern s32 D_8010CC2C;
    extern s32 D_8010CC30;
    extern s32 D_8010CC34;
    extern s32 D_8010CC38;
    extern s32 D_8010CC3C;
    extern s32 D_8010CC40;
    extern s32 D_8010CC44;
    extern s32 D_8010CC48;
    extern s16 D_8010CC4C;
    extern s16 D_8010CC4E;
    extern s16 D_8010CC50;
    extern s16 D_8010CC52;
    extern s16 D_8010CC54;
    extern s16 D_8010CC56;
    extern s16 D_8010CC58;
    extern s16 D_8010CC5A;
    extern s16 D_8010CC5C;
    func_800FA7BC(&D_8010CBE0);
    D_8010CBF0 = 0;
    D_8010CBF4 = 0;
    D_8010CBF8 = 0;
    D_8010CBFC = 0;
    D_8010CC00 = 0;
    D_8010CC04 = 0;
    D_8010CC08 = 0;
    D_8010CC0C = 0;
    D_8010CC10 = 0;
    D_8010CC14 = 0;
    D_8010CC18 = 0;
    D_8010CC1C = 0;
    D_8010CC20 = 0;
    D_8010CC24 = 0;
    D_8010CC28 = 0;
    D_8010CC2C = 0;
    D_8010CC30 = 0;
    D_8010CC34 = 0;
    D_8010CC38 = 0;
    D_8010CC3C = 0;
    D_8010CC40 = 0;
    D_8010CC44 = 0;
    D_8010CC48 = 0;
    D_8010CC4C = 0;
    D_8010CC4E = 0;
    D_8010CC50 = 0x4000;
    D_8010CC52 = 0x4000;
    D_8010CC5A = 0;
    D_8010CC5C = 0;
    D_8010CC54 = 0;
    D_8010CC56 = 1;
    D_8010CC58 = 1;
}

s32 func_80091924() {
    return 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009192C);

void func_8009198C() {

}

void func_80091994() {

}

void func_8009199C() {

}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011734);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800919A4);


s32 func_8009205C(s16 arg0) {
    s32 func_80072A28();
    s32 var_s1;
    s32 var_s1_2;
    s32 var_v0;

    var_s1 = 0;
    if (func_80072A28(arg0, 5) != 0) {
        var_s1 = func_80072A28(arg0, 0x18) != 0;
    }
    var_v0 = 2;
    if (var_s1 == 0) {
        var_s1_2 = 0;
        if (func_80072A28(arg0, 0x3C) != 0) {
            var_s1_2 = func_80072A28(arg0, 0x26) != 0;
        }
        var_v0 = var_s1_2 != 0;
    }
    return var_v0;
}


void func_800920F4() {
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_8011ABF8;
    func_800F8530(&D_8011ABF8, 2);
}


void func_8009211C() {
    M2C_UNK func_800F8268(); /* extern */
    extern M2C_UNK D_8011ABF8;
    func_800F8268(&D_8011ABF8);
}


void func_80092144() {
    M2C_UNK func_8007273C(); /* extern */
    func_8007273C();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092164);


void func_800921E8(s32 arg0) {
    extern s32 D_8015889C;
    D_8015889C = arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800921F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009270C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092770);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800929B8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092A2C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092A94);


void func_80092B1C(s32 arg0) {
    M2C_UNK func_80092A94(); /* extern */
    M2C_UNK func_800F82A4(); /* extern */
    M2C_UNK func_800FA9F0(); /* extern */
    func_80092A94();
    func_800FA9F0(arg0 + 0x2C);
    func_800F82A4(arg0, 0, 0);
}


void func_80092B5C(void *arg0, M2C_UNK arg1) {
    M2C_UNK func_800F82A4(); /* extern */
    M2C_UNK func_800F8530(); /* extern */
    M2C_UNK func_800FA7D4(); /* extern */
    M2C_UNK func_800FA9F0(); /* extern */
    extern M2C_UNK D_800138BC;
    void *temp_s1;

    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_800138BC;
    temp_s1 = arg0 + 0x2C;
    func_800FA9F0(temp_s1);
    func_800F82A4(arg0, 0, 0);
    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_800138BC;
    func_800FA7D4(temp_s1, 0);
    func_800F8530(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092BE0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092E04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80092ED4);


void func_80093014(void *arg0, M2C_UNK arg1) {
    void func_800B1C28();
    M2C_UNK func_800F5E6C(); /* extern */
    M2C_UNK func_800F686C(); /* extern */
    M2C_UNK func_800F8530(); /* extern */
    M2C_UNK func_800FA7D4(); /* extern */
    extern M2C_UNK D_800138BC;
    extern s32 D_801588F4;
    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_800138BC;
    D_801588F4 = 0;
    func_800F686C(arg0 + 0xB2C, 2);
    func_800F686C(arg0 + 0xB00, 2);
    func_800F686C(arg0 + 0xAD4, 2);
    func_800F686C(arg0 + 0xAA8, 2);
    func_800F686C(arg0 + 0xA7C, 2);
    func_800F686C(arg0 + 0xA50, 2);
    func_800B1C28(arg0 + 0x24C, 2);
    func_800F5E6C(arg0 + 0xC4, 2);
    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_800138BC;
    func_800FA7D4(arg0 + 0x2C, 0);
    func_800F8530(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800930D8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80093608);

void func_80093804() {

}

void func_8009380C() {

}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800117C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80093814);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80093B88);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80093DF4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80093F88);


void func_8009424C(void *arg0, s16 arg1) {
    M2C_UNK func_80109250(); /* extern */
    if (arg1 < 5) {
        M2C_FIELD(arg0, s16 *, 0x1CC) = (s16) ((arg1 * 0x3E) + 4);
        M2C_FIELD(arg0, s16 *, 0x1CE) = 0x30;
        func_80109250(arg0 + 0xC4, arg1);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094298);


void func_80094304() {
    M2C_UNK func_80093B88(); /* extern */
    void func_8009424C();
    extern s32 D_801588F0;
    extern void * D_801588F4__func_80094304 __asm__("D_801588F4");
    s16 temp_a1;
    s16 temp_v1;
    void *temp_s0;

    D_801588F0 = 1;
    temp_s0 = D_801588F4__func_80094304;
    if (M2C_FIELD(temp_s0, s16 *, 0x518) == 0) {
        temp_v1 = M2C_FIELD(temp_s0, s16 *, 0xA44);
        if (temp_v1 < 5) {
            temp_a1 = M2C_FIELD(((temp_v1 * 2) + temp_s0), s16 *, 0x52A);
            if (temp_a1 >= 0) {
                func_8009424C(temp_s0, temp_a1);
                func_80093B88(temp_s0, 1);
                M2C_FIELD(temp_s0, u16 *, 0xA44) = (u16) (M2C_FIELD(temp_s0, u16 *, 0xA44) + 1);
            }
        }
    }
    D_801588F0 = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094394);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009446C);


s32 func_80094518(s32 arg0) {
    M2C_UNK func_800E1E94(); /* extern */
    func_800E1E94();
    return arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094544);


void func_80094590() {
    M2C_UNK func_800FE034(); /* extern */
    func_800FE034();
}

s32 func_800945B0() {
    return 1;
}


s32 func_800945B8(s8 arg0, s8 arg1) {
    extern s16 D_80113EB4;
    extern s16 D_80113EB6;
    extern s16 D_80113EB8;
    extern s8 D_80113EBA;
    extern s8 D_80113EBB;
    extern s8 D_80113EBC;
    extern s8 D_80113EBD;
    extern s8 D_80113EC1;
    extern s8 D_80113EC2;
    extern s8 D_80113EC3;
    extern s8 D_80113EC4;
    extern s16 D_80113EC6;
    extern s16 D_80113EC8;
    extern s16 D_80113ECA;
    extern s16 D_80113ECC;
    D_80113EBA = arg0;
    D_80113EBB = arg1;
    D_80113EB4 = -0x32;
    D_80113EB6 = -0x32;
    D_80113EB8 = 0;
    D_80113EC4 = -1;
    D_80113EBC = 0;
    D_80113EBD = 0;
    D_80113EC2 = 0;
    D_80113EC1 = 0;
    D_80113ECA = -1;
    D_80113ECC = -1;
    D_80113EC3 = -1;
    D_80113EC6 = -1;
    D_80113EC8 = -1;
    return 0x400;
}


s32 func_80094644(s32 arg0, s32 arg1, M2C_UNK arg2, M2C_UNK arg3) {
    M2C_UNK func_8007BB9C(); /* extern */
    s32 func_800945B8();
    s32 temp_v0;

    temp_v0 = func_800945B8();
    func_8007BB9C(temp_v0, arg2, arg3);
    return temp_v0;
}


void func_80094698() {
    M2C_UNK func_8007C810(); /* extern */
    extern s8 D_80113EBB;
    if (D_80113EBB >= 0) {
        func_8007C810(0x400);
        D_80113EBB = -1;
    }
}


void func_800946D8(s32 arg0, M2C_UNK *arg1) {
    M2C_UNK func_800E1E64(); /* extern */
    s32 func_800E1ED4(); /* extern */
    M2C_UNK func_80102ACC(); /* extern */
    extern M2C_UNK D_80158930;
    if (func_800E1ED4(arg0, 0x2E) == 0) {
        func_800E1E64(arg0, &D_80158930);
        func_800E1E64(arg0, arg1);
    }
    func_80102ACC(arg0);
}


void func_8009473C(s32 arg0, s32 arg1, M2C_UNK *arg2) {
    M2C_UNK func_800E1E64(); /* extern */
    s8 *func_800E1ED4(); /* extern */
    M2C_UNK func_80102ACC(); /* extern */
    extern M2C_UNK D_80158930;
    s8 *temp_v0;

    temp_v0 = func_800E1ED4(arg0, 0x2E);
    if (temp_v0 != NULL) {
        *temp_v0 = 0;
    }
    func_800E1E64(arg0, &D_80158930);
    func_800E1E64(arg0, arg2);
    func_80102ACC(arg0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800947A4);


void func_80094848(s32 arg0) {
    s8 *func_800E1ED4(); /* extern */
    s8 *temp_v0;

    temp_v0 = func_800E1ED4(arg0, 0xA);
    if (temp_v0 != NULL) {
        *temp_v0 = 0;
    }
}


void func_80094874(s32 arg0) {
    s32 func_800E1EB4(); /* extern */
    void *temp_s0;

    temp_s0 = arg0 + func_800E1EB4();
    M2C_FIELD(temp_s0, s8 *, 0) = 0xA;
    M2C_FIELD(temp_s0, s8 *, 1) = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800948AC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094934);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094998);


s32 func_80094A2C(void *arg0, s8 arg1, s16 arg2) {
    s32 func_800F53F8(s32); /* extern */
    s32 func_800F59F0(s32); /* extern */
    s16 v;
    s32 temp_v0;
    s32 var_s2;
    v = arg2;
    var_s2 = 1;
    *(s8 *)arg0 = arg1;
    temp_v0 = func_800F53F8((u16)v);
    *(s32 *)((s8 *)arg0 + 4) = temp_v0;
    if (temp_v0 != 0) {
        *(s8 *)((s8 *)arg0 + 1) = 1;
        *(s16 *)((s8 *)arg0 + 0xC) = 0;
        *(s16 *)((s8 *)arg0 + 0x10) = v;
        *(s16 *)((s8 *)arg0 + 0xE) = v;
        var_s2 = 0;
        *(s32 *)((s8 *)arg0 + 8) = func_800F59F0(*(s32 *)((s8 *)arg0 + 4));
    }
    return var_s2;
}

void func_80094AA4(void *arg0, s8 arg1, s32 arg2, s32 arg3, u16 arg4) {
    M2C_FIELD(arg0, s8 *, 1) = 0;
    M2C_FIELD(arg0, s8 *, 0) = arg1;
    M2C_FIELD(arg0, s32 *, 4) = arg2;
    M2C_FIELD(arg0, s32 *, 8) = arg3;
    M2C_FIELD(arg0, s16 *, 0xC) = 0;
    M2C_FIELD(arg0, u16 *, 0x10) = arg4;
    M2C_FIELD(arg0, u16 *, 0xE) = arg4;
}


s32 func_80094AC8(void *arg0) {
    s32 func_800F59F0(); /* extern */
    if (M2C_FIELD(arg0, s32 *, 8) == 0) {
        M2C_FIELD(arg0, s32 *, 8) = func_800F59F0(M2C_FIELD(arg0, s32 *, 4));
    }
    return 0;
}

void func_80094B10(arg0)
    void *arg0;
{
    M2C_FIELD(arg0, s32 *, 8) = 0;
    M2C_FIELD(arg0, s32 *, 4) = 0;
}

void func_80094B1C(void *arg0) {
    M2C_FIELD(arg0, s16 *, 0xC) = 0;
    M2C_FIELD(arg0, u16 *, 0x10) = (u16) M2C_FIELD(arg0, u16 *, 0xE);
}


void func_80094B2C(arg0)
    void *arg0;
{
    M2C_UNK func_800F5A24(); /* extern */
    if (M2C_FIELD(arg0, s32 *, 8) != 0) {
        func_800F5A24(M2C_FIELD(arg0, s32 *, 4));
        M2C_FIELD(arg0, s32 *, 8) = 0;
    }
}


void func_80094B70(arg0)
    void *arg0;
{
    void func_80094B2C();
    M2C_UNK func_800F5718(); /* extern */
    M2C_UNK func_800F5A24(); /* extern */
    if (M2C_FIELD(arg0, u8 *, 1) != 0) {
        func_80094B2C();
        func_800F5A24(M2C_FIELD(arg0, s32 *, 4));
        func_800F5718(M2C_FIELD(arg0, s32 *, 4));
        M2C_FIELD(arg0, u8 *, 1) = 0U;
    }
    M2C_FIELD(arg0, s16 *, 0xC) = 0;
    M2C_FIELD(arg0, s16 *, 0x10) = 0;
    M2C_FIELD(arg0, s16 *, 0xE) = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094BD4);

void func_80094CBC() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094CC4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094CF8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094DC8);


void func_80094EBC() {
    M2C_UNK func_800F5718(); /* extern */
    M2C_UNK func_800F5A24(); /* extern */
    extern s32 D_80158948;
    extern s32 D_80158950;
    if (D_80158948 != 0) {
        func_800F5A24(D_80158948);
        func_800F5718(D_80158948);
        D_80158948 = 0;
    }
    D_80158950 = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80094F00);

void *func_80094FE0(s32 arg0) {
    s32 func_800CEA98();
    typedef struct { s16 str_id; u8 pad[0x2E]; } TribeInfo;
    typedef struct { u8 str[0xF2]; } CustomName;
    typedef struct { s16 tribe; u8 pad[0x576]; } CivData;
    extern TribeInfo D_80116ADA[];
    extern CustomName D_80116EC2[];
    extern CivData D_80117698[];
    extern void * D_8015894C;

    if (arg0 <= 0) {
        arg0 = M2C_FIELD(D_8015894C, s32 *, 0x44);
    } else {
        s32 id = D_80116ADA[D_80117698[arg0].tribe].str_id;
        if (id < 0) {
            return &D_80116EC2[arg0];
        }
        arg0 = id;
    }
    return func_800CEA98(arg0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095094);

void *func_80095174(s32 arg0) {
    s32 func_800CEA98();
    typedef struct { s16 str_id; u8 pad[0x2E]; } TribeInfo;
    typedef struct { u8 str[0xF2]; } CustomName;
    typedef struct { s16 tribe; u8 pad[0x576]; } CivData;
    extern TribeInfo D_80116ADC[];
    extern CustomName D_80116EDA[];
    extern CivData D_80117698[];
    extern void * D_8015894C;

    if (arg0 <= 0) {
        arg0 = M2C_FIELD(D_8015894C, s32 *, 0x3C);
    } else {
        s32 id = D_80116ADC[D_80117698[arg0].tribe].str_id;
        if (id < 0) {
            return &D_80116EDA[arg0];
        }
        arg0 = id;
    }
    return func_800CEA98(arg0);
}

void *func_80095228(s32 arg0) {
    s32 func_800CEA98();
    typedef struct { s16 str_id; u8 pad[0x2E]; } TribeInfo;
    typedef struct { u8 str[0xF2]; } CustomName;
    typedef struct { s16 tribe; u8 pad[0x576]; } CivData;
    extern TribeInfo D_80116ADE[];
    extern CustomName D_80116EF2[];
    extern CivData D_80117698[];
    extern void * D_8015894C;

    if (arg0 <= 0) {
        arg0 = M2C_FIELD(D_8015894C, s32 *, 0x40);
    } else {
        s32 id = D_80116ADE[D_80117698[arg0].tribe].str_id;
        if (id < 0) {
            return &D_80116EF2[arg0];
        }
        arg0 = id;
    }
    return func_800CEA98(arg0);
}


void func_800952DC(s32 arg0) {
    s32 __builtin_new(); /* extern */
    s32 func_8009537C(); /* extern */
    void func_80095444();
    s32 func_80095498(); /* extern */
    M2C_UNK func_80095588(); /* extern */
    M2C_UNK func_800FA660(); /* extern */
    M2C_UNK func_800FA6A0(); /* extern */
    M2C_UNK func_801030F8(); /* extern */
    extern s32 D_8015895C;
    extern s16 D_801593EC;
    s32 temp_v0;

    func_800FA660();
    D_801593EC = 0;
    temp_v0 = func_8009537C(__builtin_new(0x644));
    D_8015895C = temp_v0;
    if (temp_v0 != 0) {
        if (func_80095498(temp_v0, arg0) != 0) {
            func_80095588(D_8015895C);
        }
        if (D_8015895C != 0) {
            func_80095444(D_8015895C, 3);
        }
        D_8015895C = 0;
        D_801593EC = 1;
        func_801030F8(1);
        func_800FA6A0();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009537C);


void func_80095444(s32 arg0, M2C_UNK arg1) {
    M2C_UNK func_800F5E6C(); /* extern */
    M2C_UNK func_800F8530(); /* extern */
    M2C_UNK func_800FA7D4(); /* extern */
    func_800F8530(arg0 + 0x610, 2);
    func_800F5E6C(arg0 + 0x84, 2);
    func_800FA7D4(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095498);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095588);

void func_80095830() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095838);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095A10);


s32 func_80095A70() {
    M2C_UNK SetSp(); /* extern */
    M2C_UNK __main(); /* extern */
    void func_800142A4();
    void func_80092144();
    M2C_UNK func_80095A10(); /* extern */
    M2C_UNK func_80101440(); /* extern */
    __main();
    SetSp(0x8016FF00);
    func_80095A10();
    func_80101440();
    func_800142A4(0xA, 0, 0);
    func_800142A4(0xA, 0, 0);
    func_80092144();
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095AD4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095BFC);


void func_80095D0C(s32 arg0) {
    s32 func_800F649C(); /* extern */
    s32 func_800F64A8(); /* extern */
    M2C_UNK func_80106658(); /* extern */
    if ((func_800F649C() != 3) && (func_800F64A8(arg0) != 0)) {
        func_80106658(func_800F64A8(arg0));
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095D60);

s32 func_80095DF0(arg0)
    s32 arg0;
{
    s32 func_801070CC();
    if (arg0 != 0) {
        return func_801070CC(arg0, 0);
    }
    return 0;
}


void func_80095E1C(s32 arg0) {
    M2C_UNK __builtin_delete(); /* extern */
    M2C_UNK func_800F5718(); /* extern */
    M2C_UNK func_800F5A24(); /* extern */
    M2C_UNK func_80107058(); /* extern */
    void *func_801070CC(); /* extern */
    M2C_UNK func_80095BFC(); /* extern */
    s32 temp_s0;
    void *temp_v0;

    if (arg0 != 0) {
        temp_v0 = func_801070CC(arg0, 0);
        if (temp_v0 != NULL) {
            if (M2C_FIELD(temp_v0, s32 *, 0x18) == 2) {
                __builtin_delete(M2C_FIELD(temp_v0, s32 *, 0x10));
                M2C_FIELD(temp_v0, s32 *, 0x10) = 0;
            }
            temp_s0 = M2C_FIELD(temp_v0, s32 *, 0);
            func_800F5A24(temp_s0);
            func_800F5718(temp_s0);
            func_80107058(arg0, -4, (void *)&func_80095BFC);
            func_80107058(arg0, 0, NULL);
        }
    }
}


void func_80095EB8(s32 arg0) {
    M2C_UNK func_80107144(); /* extern */
    M2C_UNK sp10;

    func_80107144(arg0, &sp10);
}

void func_80095ED8() {

}

void func_80095EE0() {

}

void func_80095EE8() {

}


void func_80095EF0(s32 arg0) {
    M2C_UNK func_80107144(); /* extern */
    M2C_UNK sp10;

    if (arg0 != 0) {
        func_80107144(arg0, &sp10);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80095F14);

void func_8009600C() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80096014);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800962D0);

void func_80096464() {

}


void func_8009646C() {
    s32 func_80095DF0();
    s32 func_800F6484(); /* extern */
    s16 func_800F6490(); /* extern */
    M2C_UNK func_800F6A94(); /* extern */
    extern s32 D_801592CC;
    s32 temp_s0;
    void *temp_v0;

    temp_v0 = func_80095DF0();
    if (temp_v0 != NULL) {
        temp_s0 = M2C_FIELD(temp_v0, s32 *, 4);
        M2C_FIELD(temp_v0, s16 *, 0xA) = 0;
        D_801592CC = func_800F6484(temp_s0);
        func_800F6A94(temp_s0, func_800F6490(temp_s0));
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800964C8);

s32 func_80096608() {
    return 0;
}

s32 func_80096610() {
    return 0;
}

void func_80096618() {

}

s32 func_80096620() {
    return 0;
}

void func_80096628() {

}

void func_80096630() {

}

s32 func_80096638() {
    return 0;
}

void func_80096640() {

}

void func_80096648() {

}

s32 func_80096650() {
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80096658);

s32 func_800966B8() {
    return 0xC;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800966C0);

void func_80096C6C() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80096C74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80096D48);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80096DAC);

s32 func_800973E4() {
    return 0;
}

void func_800973EC() {

}

s32 func_800973F4() {
    return 0;
}

s32 func_800973FC() {
    return 0;
}

void func_80097404() {

}

void func_8009740C() {

}

void func_80097414() {

}

void func_8009741C() {

}

void func_80097424() {

}

void func_8009742C() {

}

void func_80097434() {

}

void func_8009743C() {

}

void func_80097444() {

}

void func_8009744C() {

}

s32 func_80097454() {
    return 0;
}

s32 func_8009745C() {
    return 1;
}

void func_80097464() {

}

void func_8009746C() {

}

void func_80097474() {

}

void func_8009747C() {

}

void func_80097484() {

}

void func_8009748C() {

}

s32 func_80097494() {
    return 0;
}

s32 func_8009749C() {
    return 0;
}

s32 func_800974A4() {
    return 0;
}

s32 func_800974AC() {
    return 0;
}

s32 func_800974B4() {
    return 0;
}

s32 func_800974BC() {
    return 0;
}

s32 func_800974C4() {
    return 0;
}

void func_800974CC() {

}

s32 func_800974D4() {
    return 0;
}

s32 func_800974DC() {
    return 0;
}

void func_800974E4() {

}

void func_800974EC() {

}

s32 func_800974F4() {
    return 0;
}

s32 func_800974FC() {
    return 0;
}

s32 func_80097504() {
    return 0;
}

void func_8009750C() {

}

void func_80097514() {

}

void func_8009751C() {

}

void func_80097524() {

}

void func_8009752C() {

}

void func_80097534() {

}

void func_8009753C() {

}

void func_80097544() {

}

void func_8009754C() {

}

void func_80097554() {

}

s32 func_8009755C() {
    return 0;
}

s32 func_80097564() {
    return 0;
}

void func_8009756C() {

}

void func_80097574() {

}

void func_8009757C() {

}

s32 func_80097584() {
    return 0;
}

void func_8009758C() {

}

s32 func_80097594() {
    return 0;
}

s32 func_8009759C() {
    return 1;
}

void func_800975A4() {

}

void func_800975AC() {

}

void func_800975B4() {

}

void func_800975BC() {

}

void func_800975C4() {

}

void func_800975CC() {

}

s32 func_800975D4() {
    return -1;
}

void func_800975DC() {

}


void func_800975E4() {
    void func_80045CA0();
    void func_800C6B2C();
    void func_800C6DCC();
    M2C_UNK func_800F7698(); /* extern */
    M2C_UNK func_800F8D10(); /* extern */
    M2C_UNK func_800FACF8(); /* extern */
    M2C_UNK func_800FAD64(); /* extern */
    M2C_UNK func_800FADC0(); /* extern */
    s16 func_800FAFE4(); /* extern */
    s16 func_800FB00C(); /* extern */
    M2C_UNK func_80104AFC(); /* extern */
    extern M2C_UNK D_8010CBE0;
    extern M2C_UNK * D_8010CC18__func_800975E4 __asm__("D_8010CC18");
    extern M2C_UNK * D_8010CC1C__func_800975E4 __asm__("D_8010CC1C");
    extern M2C_UNK * D_8010CC20__func_800975E4 __asm__("D_8010CC20");
    extern M2C_UNK D_8011C238;
    extern M2C_UNK D_80121340;
    extern s32 D_8015899C;
    extern s32 D_801589A8;
    extern s32 D_801589AC;
    s32 func_80066028();
    void func_800A0508();
    M2C_UNK func_800A067C(); /* extern */
    func_800C6B2C(&D_80121340);
    func_800C6DCC(&D_80121340, 2);
    func_800F7698(&D_8010CBE0, &D_80121340, 0x7C, 0, 0, 0x140, 0xF0);
    func_80045CA0();
    func_800F8D10(&D_8011C238, 0x5A, 0xA, 0xC0);
    func_800FAD64(&D_8010CBE0, &D_8011C238);
    func_800FACF8(&D_8010CBE0, -0x62);
    D_801589A8 = (s32) func_800FAFE4(&D_8010CBE0);
    D_801589AC = (s32) func_800FB00C(&D_8010CBE0);
    func_800FADC0(&D_8010CBE0);
    D_8010CC20__func_800975E4 = (void *)&func_80066028;
    D_8010CC18__func_800975E4 = (void *)&func_800A067C;
    D_8010CC1C__func_800975E4 = (void *)&func_800A0508;
    func_800FACF8(&D_8010CBE0, -0x62);
    func_80104AFC();
    D_8015899C = 1;
}


void func_8009772C() {
    M2C_UNK func_800FA9F0(); /* extern */
    extern M2C_UNK D_8010CBE0;
    extern s32 D_8015899C;
    func_800FA9F0(&D_8010CBE0);
    D_8015899C = 0;
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011A30);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80097758);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80097A24);


void func_80097AB8() {
    M2C_UNK func_800F82A4(); /* extern */
    extern M2C_UNK D_8011C238;
    func_800F82A4(&D_8011C238, 0, 0);
}


void func_80097AE4() {
    void func_800CAF0C();
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_8011B5B4;
    extern M2C_UNK D_8011C238;
    func_800F8530(&D_8011C238, 2);
    func_800CAF0C(&D_8011B5B4, 2);
}


void func_80097B1C() {
    s32 func_800CAF04();
    M2C_UNK func_800F8268(); /* extern */
    extern M2C_UNK D_8011B5B4;
    extern M2C_UNK D_8011C238;
    func_800CAF04(&D_8011B5B4);
    func_800F8268(&D_8011C238);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80097B54);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80097DBC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009800C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098040);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098168);


s32 func_800982F4(arg0, arg1)
    s32 arg0;
    s32 arg1;
{
    extern s32 D_801589B0;
    extern s32 D_801589C8;
    return (((arg0 >> 1) + (arg1 * D_801589C8)) * 6) + D_801589B0;
}


s32 func_80098324(arg0, arg1, arg2)
    s32 arg0;
    s32 arg1;
    s32 arg2;
{
    extern s32 D_801589C8;
    extern s32 D_8011C2E8[];
    return D_8011C2E8[arg2] + ((arg0 >> 1) + arg1 * D_801589C8);
}


s32 func_80098354() {
    s32 func_800982F4();
    return *(u8 *)func_800982F4() & 0xF;
}


void func_80098378(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 func_800982F4();
    u8 *temp_v0;
    u8 var_v1;

    temp_v0 = func_800982F4();
    var_v1 = *temp_v0;
    if (arg2 >= 0) {
        var_v1 = (var_v1 & 0xF) + arg2;
    }
    if (arg3 == 0) {
        var_v1 = 0;
    }
    if (arg3 == 1) {
        var_v1 |= 0x80;
    }
    *temp_v0 = var_v1;
}


s32 func_800983DC() {
    s32 func_80098354();
    return (func_80098354() & 0xFF) == 0xA;
}


u32 func_80098404() {
    s32 func_800982F4();
    u32 var_v1;

    var_v1 = (u8) M2C_FIELD(func_800982F4(), u8 *, 5) >> 4;
    if (var_v1 == 0xF) {
        var_v1 = -1U;
    }
    return var_v1;
}


void func_80098440(s32 arg0, s32 arg1, u32 arg2) {
    s32 func_800982F4();
    u32 var_s0;
    void *temp_v0;

    var_s0 = arg2;
    if (var_s0 >= 9U) {
        var_s0 = 0xF;
    }
    temp_v0 = func_800982F4();
    M2C_FIELD(temp_v0, u8 *, 5) = (u8) ((M2C_FIELD(temp_v0, u8 *, 5) & 0xF) | (var_s0 * 0x10));
}


s32 func_80098494() {
    s32 func_800982F4();
    return M2C_FIELD(func_800982F4(), u8 *, 3);
}


s32 func_800984B8(s32 arg0, M2C_UNK arg1) {
    s32 func_800983DC();
    s32 func_80098494();
    s32 var_v0;

    var_v0 = -1;
    if (func_800983DC() == 0) {
        var_v0 = func_80098494(arg0, arg1);
    }
    return var_v0;
}


void func_80098514(s32 arg0, s32 arg1, s8 arg2) {
    s32 func_800982F4();
    M2C_FIELD(func_800982F4(), s8 *, 3) = arg2;
}


u32 func_80098540() {
    s32 func_800982F4();
    return (u8) M2C_FIELD(func_800982F4(), u8 *, 2) >> 5;
}


void func_80098564(s32 arg0, s32 arg1, s32 arg2) {
    s32 func_800982F4();
    void *temp_v0;

    temp_v0 = func_800982F4();
    M2C_FIELD(temp_v0, u8 *, 2) = (u8) ((M2C_FIELD(temp_v0, u8 *, 2) & 0x1F) | (arg2 << 5));
}


u8 func_800985A4() {
    s32 func_800982F4();
    return M2C_FIELD(func_800982F4(), u8 *, 1);
}


void func_800985C8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 func_800982F4();
    u8 var_v0;
    void *temp_a0;

    temp_a0 = func_800982F4();
    if (arg3 != 0) {
        var_v0 = M2C_FIELD(temp_a0, u8 *, 1) | arg2;
    } else {
        var_v0 = M2C_FIELD(temp_a0, u8 *, 1) & ~arg2;
    }
    M2C_FIELD(temp_a0, u8 *, 1) = var_v0;
}


void func_80098624(s32 arg0, M2C_UNK arg1, s32 arg2) {
    s32 func_800982F4();
    s32 func_80098324();
    u8 *temp_s0;

    if (arg2 != 0) {
        temp_s0 = func_80098324();
        *temp_s0 = M2C_FIELD(func_800982F4(arg0, arg1), u8 *, 1);
    }
}

s32 func_80098684(s32 arg0, s32 arg1, s32 arg2) {
    s32 func_800982F4();
    register s32 res asm("$2");

    if (arg2 >= 0) {
        res = *(u8 *)(func_800982F4(arg0, arg1) + 4) & (1 << arg2);
    } else {
        res = 1;
    }
    return res;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800986D0);


s32 func_80098744() {
    s32 func_800982F4();
    return M2C_FIELD(func_800982F4(), u8 *, 5) & 0xF;
}


void func_80098768(s32 arg0, M2C_UNK arg1, s32 arg2) {
    s32 func_800982F4();
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = func_800982F4();
    M2C_FIELD(temp_v0, u8 *, 5) = (u8) (M2C_FIELD(temp_v0, u8 *, 5) & 0xF0);
    temp_v0_2 = func_800982F4(arg0, arg1);
    M2C_FIELD(temp_v0_2, u8 *, 5) = (u8) (M2C_FIELD(temp_v0_2, u8 *, 5) | (arg2 & 0xF));
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800987D8);

s32 func_80098848(arg0, arg1)
    s32 arg0;
    s32 arg1;
{
    u32 func_80098404();
    u8 func_800985A4();
    if ((func_800985A4(arg0, arg1) & 0x42) == 2) {
        return func_80098404(arg0, arg1);
    }
    return -1;
}

s32 func_80098898(s32 arg0, s32 arg1) {
    u32 func_80098404();
    u8 func_800985A4();
    if ((func_800985A4(arg0, arg1) & 0x42) == 0x42) {
        return func_80098404(arg0, arg1);
    }
    return -1;
}

s32 func_800988E8(s32 arg0, s32 arg1) {
    u32 func_80098404();
    u8 func_800985A4();
    s32 res;

    if (func_800985A4(arg0, arg1) & 1) {
        res = func_80098404(arg0, arg1);
    } else {
        res = -1;
    }
    return res;
}


void func_8009893C(s32 arg0, M2C_UNK arg1) {
    s32 func_80098848();
    s32 func_800988E8();
    if (func_80098848() < 0) {
        func_800988E8(arg0, arg1);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098980);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098A7C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098BB4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098CB8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80098D4C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80099004);


s32 func_80099064(s32 arg0) {
    s32 func_80099004(s32, s32); /* extern */
    s32 var_s1;
    s32 var_s0;
    var_s1 = 0;
    var_s0 = 1;
    do {
        if (func_80099004(var_s0, arg0) != 0) {
            var_s1 += 1;
        }
        var_s0 += 1;
    } while (var_s0 < 0x3F);
    return var_s1;
}


void func_800990CC(void *arg0, s16 arg1) {
    void func_8009EEF0();
    func_8009EEF0(arg0, arg1, M2C_FIELD(arg0, s16 *, 0x230));
}


void func_800990F8(void *arg0, s16 arg1) {
    void func_8009EEF0();
    func_8009EEF0(arg0, M2C_FIELD(arg0, s16 *, 0x22E), arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80099124);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800991C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800996A4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80099828);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800998F0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_80099AC4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009A92C);


void func_8009AB10(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void func_800AED30(); /* extern */
    func_800AED30(arg0, arg1, arg2 | 3, arg3, arg4, *(s16 *)(arg0 + 0x232));
}


void func_8009AB48(void *arg0, M2C_UNK arg1, M2C_UNK arg2, s32 arg3) {
    M2C_UNK func_800AED30(); /* extern */
    extern s32 D_8011ACBC;
    extern u8 D_80158872__func_8009AB48 __asm__("D_80158872");
    extern u8 D_80158874__func_8009AB48 __asm__("D_80158874");
    if ((D_80158872__func_8009AB48 == 0) || (D_80158874__func_8009AB48 == 0) || (D_8011ACBC != 1)) {
        func_800AED30(arg0, arg1, 5, arg2, arg3, (s32) M2C_FIELD(arg0, s16 *, 0x232));
    }
}


void func_8009ABB8(void *arg0, s32 arg1) {
    M2C_UNK func_80099828(); /* extern */
    M2C_UNK func_800AED30(); /* extern */
    extern M2C_UNK D_8010D6B4;
    extern M2C_UNK D_8010D6B6;
    extern s32 D_8011ACBC;
    extern u8 D_80158872__func_8009ABB8 __asm__("D_80158872");
    extern u8 D_80158874__func_8009ABB8 __asm__("D_80158874");
    s32 sp18;
    s32 sp1C;
    s32 temp_v0;
    s32 temp_v0_2;

    if ((D_80158872__func_8009ABB8 == 0) || (D_80158874__func_8009ABB8 == 0) || (D_8011ACBC != 1)) {
        temp_v0 = arg1 * 0x1A;
        func_80099828(arg0, &sp18, &sp1C, *(s16 *)(((s8 *)&D_8010D6B4) + temp_v0), (s32) *(s16 *)(((s8 *)&D_8010D6B6) + temp_v0));
        temp_v0_2 = sp1C - M2C_FIELD(arg0, s16 *, 0x24A);
        sp1C = temp_v0_2;
        func_800AED30(arg0, arg1, 5, sp18, temp_v0_2, (s32) M2C_FIELD(arg0, s16 *, 0x232));
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009AC9C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009ADF8);


void func_8009B084(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    M2C_UNK func_80099828(); /* extern */
    M2C_UNK func_80099AC4(); /* extern */
    s32 sp28;
    s32 sp2C;

    func_80099828(arg0, &sp28, &sp2C, arg1, arg2);
    func_80099AC4(arg0, arg0, sp28, sp2C, arg1, arg2, arg3, (s32) M2C_FIELD(arg0, s16 *, 0x232), -1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009B114);


s32 func_8009B180(s32 arg0, s32 arg1, M2C_UNK arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 func_8009B114(); /* extern */
    if ((func_8009B114(arg0, arg2, arg4) == 0) || (arg1 < arg3)) {
        return 0;
    }
    return arg1 < (arg3 + arg5);
}


void func_8009B1E4(void *arg0, M2C_UNK arg1, M2C_UNK arg2) {
    s32 func_8009B180();
    func_8009B180(arg1, arg2, M2C_FIELD(arg0, s16 *, 0x234), M2C_FIELD(arg0, s16 *, 0x236), M2C_FIELD(arg0, s16 *, 0x23C) + M2C_FIELD(arg0, s16 *, 0x240), M2C_FIELD(arg0, s16 *, 0x23E) + M2C_FIELD(arg0, s16 *, 0x242) + 1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009B240);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009B488);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009B5B8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009B7E8);


void func_8009B9B8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void func_8009B488(); /* extern */
    void func_8009EED0();
    s8 buf[8];
    func_8009B488(arg0, arg1, arg2, arg3, buf);
    func_8009EED0(arg0, buf);
}


void func_8009B9FC(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    void func_8009B9B8();
    func_8009B9B8(arg0, arg1, arg2, 0);
}


void func_8009BA1C() {
    void func_8009EEB0();
    func_8009EEB0();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009BA3C);


void func_8009BB14(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    M2C_UNK func_8009BA3C(); /* extern */
    extern s32 D_8011ACB4;
    func_8009BA3C(arg0, arg1, arg2, 0, D_8011ACB4, 1);
}


void func_8009BB4C(s32 arg0, M2C_UNK arg1, M2C_UNK arg2) {
    M2C_UNK func_8009BA3C(); /* extern */
    extern s32 D_8011ACB4;
    func_8009BA3C(arg0, arg1, arg2, 1, D_8011ACB4, 1);
}


void func_8009BB84(arg0, arg1)
    void *arg0;
    M2C_UNK arg1;
{
    M2C_UNK ClearImage(); /* extern */
    M2C_UNK func_800991C8(); /* extern */
    M2C_UNK func_8009B7E8(); /* extern */
    M2C_UNK func_80101CCC(); /* extern */
    M2C_UNK func_80104868(); /* extern */
    extern u8 D_8011A271;
    extern u8 D_80158870__func_8009BB84 __asm__("D_80158870");
    extern s32 D_801589CC;
    M2C_UNK var_a1;

    if (D_80158870__func_8009BB84 != 0) {
        func_800991C8();
        func_80101CCC(M2C_FIELD(arg0, s32 *, 0x1C), 0);
        ClearImage(M2C_FIELD(arg0, s32 *, 0x1C) + 0xC, 0, 0, 0);
        var_a1 = -1;
        if (D_8011A271 == 0) {
            var_a1 = arg1;
        }
        func_8009B7E8(arg0, var_a1);
        if (D_801589CC == 0) {
            func_80104868();
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009BC2C);

void func_8009BD08(s32 arg0, s32 arg1) {
    void func_8009BB14();
    typedef struct { u8 data[0x2C0]; } ViewPort;
    typedef struct { s16 active; u8 pad[0x2BE]; } ViewPortFlag;
    extern ViewPort D_8011E72C[];
    extern ViewPortFlag D_8011E956[];
    s32 i = 0;

    do {
        if (i == 0 || D_8011E956[i].active != 0) {
            func_8009BB14(&D_8011E72C[i], arg0, arg1);
        }
        i += 1;
    } while (i <= 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009BDB4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009BE60);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009BF0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009CA14);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009CAD8);


void func_8009CC54(void *arg0, M2C_UNK arg1) {
    void func_80092B5C();
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_80011A54;
    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_80011A54;
    func_800F8530(arg0 + 0x294, 2);
    func_800F8530(arg0 + 0x268, 2);
    func_80092B5C(arg0, arg1);
}


void func_8009CCB4(s32 arg0, M2C_UNK arg1, M2C_UNK arg2, s32 arg3, s32 arg4, s32 arg5) {
    M2C_UNK func_800B005C(); /* extern */
    func_800B005C(arg1, arg2, 0, arg4 + 2, arg5, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009CCF4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009CF78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009D0CC);


void func_8009D158() {
    void func_8009BB84();
    void func_800D77A0();
    extern s32 D_8011ACB4;
    extern M2C_UNK D_8011E72C__func_8009D158 __asm__("D_8011E72C");
    extern s32 D_8011E748;
    extern M2C_UNK D_80121BF8;
    func_800D77A0(&D_80121BF8);
    if (D_8011E748 != 0) {
        func_8009BB84(&D_8011E72C__func_8009D158, D_8011ACB4, 1);
    }
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011A54);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009D1AC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011AC4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011AE4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011B04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009D430);


void func_8009EEB0(s32 arg0) {
    void func_8009EED0();
    func_8009EED0(arg0, 0);
}


void func_8009EED0() {
    M2C_UNK func_80104A38(); /* extern */
    func_80104A38();
}


void func_8009EEF0(void *arg0, M2C_UNK arg1, s16 arg2) {
    void func_8009BB84();
    M2C_UNK func_8009CF78(); /* extern */
    s32 func_800CEC5C();
    extern s32 D_8011ACB4;
    M2C_FIELD(arg0, s16 *, 0x22E) = func_800CEC5C(arg1);
    M2C_FIELD(arg0, s16 *, 0x230) = arg2;
    func_8009BB84(arg0, D_8011ACB4, 1);
    func_8009CF78(arg0);
}


s32 func_8009EF4C(void *arg0, s32 arg1, s32 arg2) {
    M2C_UNK func_80099828(); /* extern */
    void func_8009EEF0();
    s32 func_800CEBD4();
    extern u16 D_8011A250;
    extern s32 D_8011ACBC;
    extern s16 D_8011C308;
    extern s16 D_8011C30A;
    extern s8 D_80158874;
    extern s8 D_80158876;
    extern s32 D_801589E4;
    extern s32 D_801589EC;
    s32 sp18;
    s32 sp1C;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_s7;
    s32 var_s1;
    s32 var_s4;
    s32 var_s5;

    var_s1 = arg1;
    var_s5 = arg2;
    var_s4 = 0;
    temp_s3 = M2C_FIELD(arg0, s16 *, 0x234) + 3;
    temp_s7 = M2C_FIELD(arg0, s16 *, 0x236) + 0xA;
    if (!(D_8011A250 & 0x8000)) {
        temp_a0 = M2C_FIELD(arg0, s16 *, 0x23C) * 2;
        if ((temp_a0 >= var_s1) && (temp_s3 >= (D_8011C308 - temp_a0))) {
            var_s1 += D_8011C308;
        }
    }
    temp_s0 = (temp_s3 + ((M2C_FIELD(arg0, s16 *, 0x240) - 1) * 2)) - 6;
    temp_s6 = M2C_FIELD(arg0, s16 *, 0x23A) - 5;
    if (M2C_FIELD(arg0, s16 *, 0x258) == 0) {
        if (D_8011A250 & 0x8000) {
            var_s1 = func_800CEBD4(var_s1, 2, D_8011C308 - 3);
        }
        if (((temp_s3 + 1) >= var_s1) || (var_s1 >= (temp_s0 - 1))) {
            var_s4 = 1;
        }
    }
    if ((var_s4 == 0) && ((D_801589E4 != 0) || (D_801589EC != 0))) {
        func_80099828(arg0, &sp18, &sp1C, var_s1, var_s5);
        if (sp1C < 0x34) {
            var_s4 = 1;
        }
        if ((D_801589EC != 0) && (((sp18 + 0x20) >= 0xB9) & ((sp1C + 0x10) >= 0x85))) {
            var_s4 = 1;
        }
    }
    if ((M2C_FIELD(arg0, s16 *, 0x25A) == 0) && ((var_s5 = func_800CEBD4(var_s5, 5, D_8011C30A - 5), (((temp_s7 + 1) < var_s5) == 0)) || (var_s5 >= (temp_s6 - 1)))) {
        var_s4 = 1;
    }
    if (var_s4 != 0) {
        D_80158876 = 1;
        D_80158874 = D_8011ACBC == 0;
        func_8009EEF0(arg0, var_s1, var_s5);
    }
    return var_s4;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F1B4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F2C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F460);


void func_8009F58C() {
    s32 func_800FABA4(); /* extern */
    M2C_UNK func_800FCDF4(); /* extern */
    M2C_UNK func_80106D44(); /* extern */
    extern M2C_UNK D_8011E758;
    extern M2C_UNK D_8011E990;
    extern s32 D_80158A44;
    extern s32 D_80158A48;
    s32 temp_a1;

    if (D_80158A44 >= 0) {
        func_800FCDF4((s16) D_80158A44);
        D_80158A44 = -1;
    }
    if (D_80158A48 >= 0) {
        temp_a1 = D_80158A48 * 0x2C0;
        if (*(s16 *)(((s8 *)&D_8011E990) + temp_a1) == 0x1FE) {
            *(s16 *)(((s8 *)&D_8011E990) + temp_a1) = 0x201;
            func_80106D44(func_800FABA4(temp_a1 + (void *)&D_8011E758, temp_a1));
        }
    }
    D_80158A48 = -1;
}


void func_8009F630() {
    s32 func_800FABA4(); /* extern */
    M2C_UNK func_800FCDF4(); /* extern */
    M2C_UNK func_80106D3C(); /* extern */
    extern M2C_UNK D_8011E758;
    extern M2C_UNK D_8011E990;
    extern s32 D_80158A44;
    extern s32 D_80158A48;
    s32 temp_a0;

    if (D_80158A44 >= 0) {
        func_800FCDF4((s16) D_80158A44);
        D_80158A44 = -1;
        if (D_80158A48 >= 0) {
            temp_a0 = D_80158A48 * 0x2C0;
            *(s16 *)(((s8 *)&D_8011E990) + temp_a0) = 0x1FE;
            func_80106D3C(func_800FABA4(temp_a0 + (void *)&D_8011E758));
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F6B4);


void func_8009F7B4() {
    void func_8009F58C();
    s32 func_800F78D4(); /* extern */
    s32 func_800FABA4(); /* extern */
    M2C_UNK func_80106D44(); /* extern */
    extern s32 D_80158500;
    extern s32 D_80158A44;
    s32 temp_v0;
    s32 var_s0;

    if (D_80158500 == 0) {
        temp_v0 = func_800F78D4();
        var_s0 = temp_v0 - 0x2C;
        if (temp_v0 == 0) {
            var_s0 = 0;
        }
        if (D_80158A44 >= 0) {
            func_8009F58C();
        }
        func_80106D44(func_800FABA4(var_s0 + 0x2C));
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F824);


s32 func_8009F8E4() {
    extern u16 D_8011E990__func_8009F8E4 __asm__("D_8011E990");
    return (u32) (D_8011E990__func_8009F8E4 - 0x202) < 2U;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F8FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009F980);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009FA08);


void func_8009FE78(s16 arg0, s16 arg1) {
    M2C_UNK func_8009FA08(); /* extern */
    func_8009FA08(arg0, arg1, 0);
}


void func_8009FEA8(s16 arg0, s16 arg1) {
    M2C_UNK func_8009FA08(); /* extern */
    func_8009FA08(arg0, arg1, 1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_8009FED8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A0020);


void func_800A0228(arg0)
    s32 arg0;
{
    s32 func_80072A28();
    s32 func_8007B810(); /* extern */
    s32 func_80089878(); /* extern */
    M2C_UNK func_8009CCF4(); /* extern */
    M2C_UNK func_8009FED8(); /* extern */
    M2C_UNK func_800D77A8(); /* extern */
    extern M2C_UNK D_80113ED4;
    extern M2C_UNK D_80113ED8;
    extern u16 D_8011A25A;
    extern u8 D_8011A271;
    extern u16 D_8011A390;
    extern s32 D_8011ACB4;
    extern M2C_UNK D_80121BF8;
    extern s16 D_80158886;
    extern s16 D_80158888;
    extern M2C_UNK (*D_80158A80)(M2C_UNK, M2C_UNK);
    s32 temp_a0;
    s32 temp_v0;

    switch (arg0) {                                 /* irregular */
    case 0x20:
    case 0xD:
        temp_v0 = func_80089878(D_80158886, D_80158888);
        if (temp_v0 >= 0) {
            temp_a0 = temp_v0 * 0x58;
            if ((*(s8 *)(((s8 *)&D_80113ED8) + temp_a0) == D_8011ACB4) || (D_8011A271 != 0) || (*(s32 *)(((s8 *)&D_80113ED4) + temp_a0) & 0x400000)) {
                func_800D77A8(&D_80121BF8, temp_v0, 1);
                return;
            }
            if ((func_80072A28(D_8011ACB4, 0x54) != 0) || ((D_8011A25A & 0x80) && (D_8011A390 & 8))) {
                func_8009CCF4(temp_v0);
                return;
            }
        } else {
            if (func_8007B810(D_80158886, D_80158888) >= 0) {
                D_80158A80(0, 0x468);
                return;
            }
            return;
        }
        break;
    case 0xC7:
        func_8009FED8(D_80158886, D_80158888);
        break;
    }
}


void func_800A03CC(arg0)
    s32 arg0;
{
    void func_80047424();
    s32 func_80072A28();
    s32 func_80089878(); /* extern */
    M2C_UNK func_8009CCF4(); /* extern */
    M2C_UNK func_800D77A8(); /* extern */
    extern M2C_UNK D_80113ED4;
    extern M2C_UNK D_80113ED8;
    extern u16 D_8011A25A;
    extern u8 D_8011A271;
    extern u16 D_8011A390;
    extern s32 D_8011ACB4;
    extern M2C_UNK D_80121BF8;
    extern s16 D_80158886;
    extern s16 D_80158888;
    s32 temp_a0;
    s32 temp_v0;

    switch (arg0) {                                 /* irregular */
    case 13:
        temp_v0 = func_80089878(D_80158886, D_80158888);
        if (temp_v0 >= 0) {
            temp_a0 = temp_v0 * 0x58;
            if ((*(s8 *)(((s8 *)&D_80113ED8) + temp_a0) == D_8011ACB4) || (D_8011A271 != 0) || (*(s32 *)(((s8 *)&D_80113ED4) + temp_a0) & 0x400000)) {
                func_800D77A8(&D_80121BF8, temp_v0, 1);
                return;
            }
            if ((func_80072A28(D_8011ACB4, 0x54) != 0) || ((D_8011A25A & 0x80) && (D_8011A390 & 8))) {
                func_8009CCF4(temp_v0);
                return;
            }
        } else {
            return;
        }
        break;
    case 32:
        func_80047424();
        break;
    }
}


void func_800A0508(s32 arg0) {
    void func_8009F58C();
    void func_800A0228();
    void func_800A03CC();
    void func_800D0798();
    s32 func_800E1EF4(); /* extern */
    extern s32 D_8011ACBC;
    extern M2C_UNK D_8013DAB9;
    extern s32 D_80158500;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_s1;
    s32 var_s0;

    var_s0 = arg0;
    if (D_80158500 != 0) {
        temp_a0 = var_s0 & 0xFF;
        if ((temp_a0 != 0xD) && (temp_a0 != 0x1B) && (temp_a0 != 0xA)) {
            func_800D0798(temp_a0);
        }
    } else {
        temp_s1 = var_s0;
        func_8009F58C();
        temp_a0_2 = temp_s1 & 0xFF;
        if (*(u8 *)(((s8 *)&D_8013DAB9) + temp_a0_2) & 3) {
            var_s0 = func_800E1EF4(temp_a0_2);
        }
        temp_a0_3 = var_s0 & 0xFF;
        if (D_8011ACBC == 0) {
            func_800A0228(temp_a0_3, temp_s1 & 0xFF);
            return;
        }
        func_800A03CC(temp_a0_3, temp_s1 & 0xFF);
    }
}


void func_800A05D4(s16 arg0, s16 arg1) {
    void func_8002FE8C();
    M2C_UNK func_8009D0CC(); /* extern */
    M2C_UNK func_8009F1B4(); /* extern */
    extern s32 D_8011ACB4;
    extern s8 D_80158874;
    extern s16 D_80158886;
    extern s16 D_80158888;
    D_80158874 = 0;
    func_8009D0CC();
    D_80158886 = arg0;
    D_80158888 = arg1;
    func_8002FE8C(1);
    func_8009F1B4(D_80158886, D_80158888, D_8011ACB4);
    D_80158874 = 1;
    func_8009D0CC();
}


void func_800A065C() {
    M2C_UNK func_80104BB4(); /* extern */
    func_80104BB4(0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A067C);


void func_800A12B8() {
    M2C_UNK func_8009D0CC(); /* extern */
    extern s32 D_8011E748;
    extern u8 D_80158870__func_800A12B8 __asm__("D_80158870");
    extern u8 D_80158872__func_800A12B8 __asm__("D_80158872");
    extern u8 D_80158874__func_800A12B8 __asm__("D_80158874");
    extern u8 D_80158876__func_800A12B8 __asm__("D_80158876");
    extern u8 D_80158885;
    if ((D_80158876__func_800A12B8 != 0) || (D_80158885 == 0) || (D_80158870__func_800A12B8 == 0)) {
        D_80158876__func_800A12B8 = 0;
        return;
    }
    if ((D_8011E748 != 0) && (D_80158872__func_800A12B8 != 0)) {
        D_80158874__func_800A12B8 = D_80158874__func_800A12B8 == 0;
        func_8009D0CC();
    }
}


void func_800A1364() {
    void func_8002FAF8();
    extern u8 D_80158870__func_800A1364 __asm__("D_80158870");
    extern u8 D_80158872__func_800A1364 __asm__("D_80158872");
    extern u8 D_80158875;
    if ((D_80158872__func_800A1364 != 0) && (D_80158870__func_800A1364 != 0)) {
        D_80158875 = D_80158875 == 0;
        func_8002FAF8(1);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A13C4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A1428);


void func_800A1478() {
    s32 func_800F78D4(); /* extern */
    M2C_UNK func_800FB0B4(); /* extern */
    extern M2C_UNK D_8011A5A6;
    s32 temp_v0;
    void *var_a0;

    temp_v0 = func_800F78D4();
    var_a0 = temp_v0 - 0x2C;
    if (temp_v0 == 0) {
        var_a0 = NULL;
    }
    func_800FB0B4(var_a0 + 0x2C, (M2C_FIELD(var_a0, s16 *, 0x228) * 8) + (void *)&D_8011A5A6);
}


void func_800A14C4() {
    s32 func_800F78D4(); /* extern */
    M2C_UNK func_800FB0B4(); /* extern */
    extern M2C_UNK D_8011A5A6;
    s32 temp_v0;
    void *var_a0;

    temp_v0 = func_800F78D4();
    var_a0 = temp_v0 - 0x2C;
    if (temp_v0 == 0) {
        var_a0 = NULL;
    }
    func_800FB0B4(var_a0 + 0x2C, (M2C_FIELD(var_a0, s16 *, 0x228) * 8) + (void *)&D_8011A5A6);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A1510);

void func_800A1640() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A1648);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A1978);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A1AA0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A1B74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A20AC);


void func_800A2228() {
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_8011EA6C;
    func_800F8530(&D_8011EA6C, 2);
}


void func_800A2250() {
    M2C_UNK func_800F8268(); /* extern */
    extern M2C_UNK D_8011EA6C;
    func_800F8268(&D_8011EA6C);
}


void func_800A2278(s32 arg0, s32 arg1) {
    s32 func_80094A2C();
    void func_80094B70();
    func_80094B70();
    func_80094A2C(arg0, 0xB, arg1 & 0xFFFF);
}

void func_800A22BC(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0x18) = 0;
    M2C_FIELD(arg0, s32 *, 0x14) = 0;
}


void func_800A22C8(s32 arg0, M2C_UNK arg1) {
    void func_80094B10();
    void func_800A2278();
    void func_800A22BC();
    func_80094B10();
    func_800A22BC(arg0);
    func_800A2278(arg0, arg1);
}

s8 *func_800A2310(s8 *arg0) {
    arg0[1] = 0;
    return arg0;
}


void func_800A231C(s32 arg0, s32 arg1) {
    M2C_UNK __builtin_delete(); /* extern */
    void func_80094B70();
    func_80094B70();
    if (arg1 & 1) {
        __builtin_delete(arg0);
    }
}

s32 func_800A2364(s8 *arg0, s32 arg1) {
    s32 r;
    s32 v;
    r = 0;
    v = *(s32 *)(arg0 + 0x18);
    while (v != 0) {
        if (*(s32 *)(v + 4) == arg1) {
            r = v;
            break;
        }
        v = *(s32 *)(v + 0x10);
    }
    return r;
}

s32 func_800A23A4(void *arg0, s32 arg1) {
    s32 count;
    void *p;
    count = 1;
    for (p = *(void **)((s8 *)arg0 + 0x18); p != NULL && p != arg1; p = *(void **)((s8 *)p + 0x10)) {
        if (!(*(s32 *)((s8 *)p + 8) & 2)) {
            count++;
        }
    }
    return count;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A23EC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A2444);

s32 func_800A24BC(s32 arg0, void *arg1) {
    s32 var_a0;
    void *var_v1;

    var_v1 = M2C_FIELD(M2C_FIELD(arg1, void **, 0x18), void **, 0x18);
    var_a0 = 1;
    if (var_v1 != NULL) {
loop_1:
        if (var_v1 != arg1) {
            if (!(M2C_FIELD(var_v1, s32 *, 8) & 2)) {
                var_a0 += 1;
            }
            var_v1 = M2C_FIELD(var_v1, void **, 0x10);
            if (var_v1 != NULL) {
                goto loop_1;
            }
        }
    }
    return var_a0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A250C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A25A0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A25F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A26F8);


void func_800A2848(s16 arg0, s16 arg1) {
    s32 func_800A23EC(); /* extern */
    s32 func_800A250C(); /* extern */
    extern s32 D_80158A7C;
    extern M2C_UNK (*D_80158A80)(s32, s32);
    s32 temp_v0;

    if (D_80158A80 != NULL) {
        temp_v0 = func_800A23EC(D_80158A7C, arg0);
        D_80158A80(temp_v0, func_800A250C(D_80158A7C, temp_v0, arg1));
    }
}


void func_800A28B8(s32 arg0, s32 arg1) {
    extern s32 D_80158A78;
    extern s32 D_80158A7C;
    if (arg1 != 0) {
        D_80158A7C = arg0;
        D_80158A78 = arg1;
    }
}


void func_800A28D0(s32 arg0, s32 arg1) {
    extern s32 D_80158A7C;
    extern s32 D_80158A80;
    D_80158A7C = arg0;
    D_80158A80 = arg1;
}

void func_800A28E0() {

}

void func_800A28E8() {

}


void func_800A28F0() {
    void func_80094CBC();
    func_80094CBC();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A2910);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A29BC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A2A68);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A2B0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A2BB8);


void func_800A2C28(s32 arg0, s32 arg1, M2C_UNK arg2) {
    s32 *func_800A2444(); /* extern */
    M2C_UNK func_800A25A0(); /* extern */
    M2C_UNK func_800E1E94(); /* extern */
    s32 *temp_v0;

    temp_v0 = func_800A2444();
    if (temp_v0 != NULL) {
        func_800E1E94(*temp_v0, arg2);
        func_800A25A0(*temp_v0);
    }
}

/* @O2 */

s32 func_800A2C7C(void *arg0) {
    s32 func_800A2CD0(); /* extern */
    extern s16 D_8011A268;
    s32 var_v0;

    var_v0 = -1;
    if (M2C_FIELD(arg0, s32 *, 0x18) != 0) {
        if (D_8011A268 >= 0) {
            return func_800A2CD0(arg0, 0, 0);
        }
        var_v0 = func_800A2CD0(arg0, 0, 7);
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return var_v0;
    }
    return var_v0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A2CD0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3070);


void func_800A33F4(void *arg0) {
    s8 func_800FA620(); /* extern */
    extern s32 D_80158A70;
    extern s32 D_80158A74;
    s32 temp_v0;
    s32 temp_v0_2;

    if (D_80158A74 != 0) {
        temp_v0 = D_80158A70 + 8;
        D_80158A70 = temp_v0;
        if (temp_v0 >= 0xF0) {
            D_80158A74 = 0;
        }
    } else {
        temp_v0_2 = D_80158A70 - 8;
        D_80158A70 = temp_v0_2;
        if (temp_v0_2 < 0x21) {
            D_80158A74 = 1;
        }
    }
    M2C_FIELD(arg0, s8 *, 4) = func_800FA620((s16) D_80158A70);
    M2C_FIELD(arg0, s8 *, 5) = 0;
    M2C_FIELD(arg0, s8 *, 6) = func_800FA620(0x20);
}

void func_800A348C() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3494);


void func_800A3650() {
    M2C_UNK func_800A392C(); /* extern */
    M2C_UNK func_800A3B08(); /* extern */
    void func_800A7EB8();
    extern s32 D_80158A90;
    extern u8 D_80158A94;
    extern s32 D_80158A98;
    if (D_80158A94 != 0) {
        func_800A7EB8();
        D_80158A94 = 0;
        if (D_80158A90 != 0) {
            func_800A3B08(D_80158A90);
            if (D_80158A90 != 0) {
                func_800A392C(D_80158A90, 3);
            }
            D_80158A90 = 0;
        }
        D_80158A98 = 0;
    }
}

void func_800A36BC() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A36C4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A375C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A392C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3A04);


void func_800A3AA4(s32 arg0) {
    M2C_UNK func_800A74AC(); /* extern */
    M2C_UNK func_800F7414(); /* extern */
    M2C_UNK func_800FABE0(); /* extern */
    M2C_UNK func_80104AFC(); /* extern */
    extern s8 D_80158A95;
    extern s32 D_80158A98;
    void func_800A348C();
    s32 temp_s0;

    func_800FABE0();
    temp_s0 = arg0 + 0xB8;
    func_80104AFC();
    func_800FABE0(temp_s0);
    func_800F7414(temp_s0);
    func_80104AFC();
    D_80158A95 = 0;
    func_800A74AC(D_80158A98, 1, 0, (void *)&func_800A348C);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3B08);

s32 func_800A3BA0() {
    return 1;
}

s32 func_800A3BA8() {
    return 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3BB0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3CBC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3EEC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A3FB0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A403C);


s32 func_800A47F0(s32 arg0) {
    M2C_UNK func_800FBA24(); /* extern */
    M2C_UNK sp18;

    func_800FBA24(&sp18, arg0 + 0x4F4, arg0 + 0x8C, 0x68, 0x1C);
    return 1;
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011CB8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A4828);

void func_800A4930() {

}


void func_800A4938() {
    M2C_UNK func_800F53F8(); /* extern */
    func_800F53F8();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A4958);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A4A4C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A4B24);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A4B74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A4BC0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A5B40);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A5C28);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A5F4C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A64A8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011CF8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A7050);

s32 func_800A7494() {
    return 1;
}

void func_800A749C() {

}

void func_800A74A4() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A74AC);

void func_800A781C() {

}


void func_800A7824() {
    void func_800A7EB8();
    extern s32 D_80158CEC;
    extern s32 D_80158CF8;
    D_80158CEC = 1;
    if (D_80158CF8 != 0) {
        func_800A7EB8();
    }
}


void func_800A785C() {
    M2C_UNK func_800A79A0(); /* extern */
    func_800A79A0(2, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A7880);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A79A0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A7D94);


void func_800A7EB8() {
    M2C_UNK func_800A79A0(); /* extern */
    func_800A79A0(0, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A7EDC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011E20);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A7F58);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A82A4);


void func_800A83A4() {
    M2C_UNK func_800FD760(); /* extern */
    extern s8 D_8011FA48;
    extern void * D_80158D30;
    if (D_80158D30 != NULL) {
        if (M2C_FIELD(D_80158D30, s16 *, 0x38) != 0x100) {
            func_800FD760(D_80158D30);
        }
        D_80158D30 = NULL;
    }
    D_8011FA48 = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A83F0);

void *func_800A8560() {
    s16 func_800FE164();
    s16 func_800FDA3C();
    void func_800A83A4();
    extern s32 D_80158D30__func_800A8560 __asm__("D_80158D30");
    extern void * D_80158D40;
    extern s8 D_80121340__func_800A8560[] __asm__("D_80121340");
    void *res = NULL;

    if (func_800FE164(D_80158D30__func_800A8560) == 0 && func_800FDA3C(D_80158D30__func_800A8560, D_80121340__func_800A8560) != 0) {
        D_80158D40 = D_80121340__func_800A8560;
        res = D_80121340__func_800A8560;
    }
    if (res == NULL) {
        D_80121340__func_800A8560[0] = 0;
        func_800A83A4();
    }
    return res;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A85E4);


s32 func_800A8690() {
    M2C_UNK func_80094998(); /* extern */
    s32 func_800A85E4(); /* extern */
    return func_80094998(func_800A85E4());
}


void func_800A86B8() {
    void * func_800A8560();
    s32 func_800CEA34();
    extern M2C_UNK D_80121340;
    func_800A8560();
    func_800CEA34(&D_80121340);
}


void func_800A86E8() {
    M2C_UNK func_800A85E4(); /* extern */
    s32 func_800CEA34();
    extern M2C_UNK D_8011F9F8;
    func_800A85E4();
    func_800CEA34(&D_8011F9F8);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A8718);


s32 func_800A87A0(s32 arg0, s32 arg1, s32 arg2) {
    void func_800A83A4();
    s32 func_800A83F0(); /* extern */
    void * func_800A8560();
    s32 var_s0;
    s32 var_s0_2;

    var_s0 = 1;
    if (func_800A83F0() == 0) {
        var_s0_2 = 0;
        if (arg2 >= 0) {
            do {
                var_s0_2 += 1;
                func_800A8560();
            } while (arg2 >= var_s0_2);
        }
        var_s0 = 0;
    }
    func_800A83A4();
    return var_s0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A8808);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A8904);


void func_800A8A40(s16 arg0) {
    s32 __builtin_new(); /* extern */
    s32 func_800A8D24(); /* extern */
    M2C_UNK func_800A8F94(); /* extern */
    void func_800A95E8();
    M2C_UNK func_800FA660(); /* extern */
    M2C_UNK func_800FA6A0(); /* extern */
    extern s16 D_801592E4;
    s32 temp_v0;

    func_800FA660();
    D_801592E4 = 0x80;
    temp_v0 = func_800A8D24(__builtin_new(0x10C8), arg0);
    func_800A95E8(temp_v0);
    if (temp_v0 != 0) {
        func_800A8F94(temp_v0, 3);
    }
    func_800FA6A0();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A8AB0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A8D24);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A8F94);


s32 func_800A9088(arg0)
    void *arg0;
{
    M2C_UNK ClearImage(); /* extern */
    M2C_UNK func_800F7ACC(); /* extern */
    M2C_UNK func_800F7E08(); /* extern */
    M2C_UNK func_800FAED0(); /* extern */
    extern M2C_UNK D_8010CBE0;
    extern M2C_UNK D_80158D48;
    M2C_UNK func_800A8AB0(); /* extern */
    M2C_UNK func_800AADB4(); /* extern */
    M2C_UNK func_800AAFAC(); /* extern */
    s32 temp_s1;

    temp_s1 = arg0 + 0x90;
    func_800F7ACC(temp_s1, &D_80158D48, -0x7800, 0, 0, 0x140, 0xF0, &D_8010CBE0);
    ClearImage(M2C_FIELD(arg0, s32 *, 0xAC) + 0xC, 0, 0, 0);
    func_800FAED0(arg0 + 0xBC);
    M2C_FIELD(arg0, M2C_UNK **, 0xD8) = (void *)&func_800AADB4;
    M2C_FIELD(arg0, M2C_UNK **, 0xF4) = (void *)&func_800AAFAC;
    func_800F7E08(temp_s1, (void *)&func_800A8AB0);
    return 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A9140);


void func_800A95E8(void *arg0) {
    s32 func_800A9088();
    void func_800A9670();
    s32 func_800A9678(); /* extern */
    M2C_UNK func_800F7414(); /* extern */
    M2C_UNK func_800F7850(); /* extern */
    M2C_UNK func_800FA660(); /* extern */
    M2C_UNK func_800FA6A0(); /* extern */
    M2C_UNK func_800FABE0(); /* extern */
    void *temp_s0;

    if (((func_800A9088() << 0x10) != 0) && ((func_800A9678(arg0) << 0x10) != 0)) {
        func_800A9670(arg0);
        M2C_FIELD(arg0, s16 *, 0xE04) = 0;
        func_800FABE0(arg0);
        temp_s0 = arg0 + 0xBC;
        func_800FABE0(temp_s0);
        func_800F7414(temp_s0);
        func_800FA6A0();
        func_800F7850(temp_s0);
        func_800FA660();
    }
}

void func_800A9670() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800A9678);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AA668);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AADB4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011E70);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011EB0);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011EE8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011EEC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011F48);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011F68);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011F6C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011FC8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011FCC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011FE8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80011FEC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012000);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AAFAC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AB0CC);


void func_800AB2AC(s32 arg0, M2C_UNK arg1) {
    s32 func_800CEA98();
    M2C_UNK func_800E1E94(); /* extern */
    extern M2C_UNK D_8011FCF8;
    func_800E1E94((arg0 * 0x50) + (void *)&D_8011FCF8, func_800CEA98(arg1));
}



void func_800AB2F8(s32 arg0, s32 arg1) {
    extern s32 D_8015894C;
    void func_800AB2AC(s32 arg0, M2C_UNK arg1);
    func_800AB2AC(arg0, *(s32 *)(D_8015894C + arg1 * 4));
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AB32C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800120DC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AB5C4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AC278);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AC394);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AD010);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AD14C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AD88C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012144);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AD994);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800ADAC0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800ADB1C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800ADC40);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AE0C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AE23C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AE858);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AEA2C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AEA88);


void func_800AEB10() {
    extern s32 D_80158ED4;
    s32 v = 5;
    if (D_80158ED4 != v) {
        D_80158ED4 = v;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AEB30);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AED30);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AF5CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800AF6E0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B005C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B072C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B07CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B08CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B097C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B0A04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B0B94);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B0F04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B1100);


void func_800B1230(s32 arg0) {
    extern M2C_UNK D_80117BAC;
    extern M2C_UNK D_80117BAD;
    s32 temp_v0;
    s32 var_v1;

    var_v1 = 0;
    do {
        temp_v0 = (var_v1 * 6) + (arg0 * 0x578);
        *(s8 *)(((s8 *)&D_80117BAC) + temp_v0) = -1;
        *(s8 *)(((s8 *)&D_80117BAD) + temp_v0) = 0;
        var_v1 += 1;
    } while (var_v1 < 0x10);
}


void func_800B1294(s32 arg0) {
    extern s32 D_80158EE4;
    D_80158EE4 = arg0;
}


void func_800B12A0(s16 arg0, s16 arg1) {
    extern s32 D_80158EE8;
    extern s32 D_80158EEC;
    D_80158EE8 = (s32) arg0;
    D_80158EEC = (s32) arg1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B12C0);


void func_800B1350(s8 arg0, s8 arg1, s8 arg2, s8 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    extern s8 D_80158EFE;
    extern s8 D_80158EFF;
    extern s8 D_80158F00;
    extern s8 D_80158F01;
    extern s8 D_80158F02;
    extern s8 D_80158F03;
    extern s8 D_80158F04;
    extern s8 D_80158F05;
    extern s8 D_80158F06;
    D_80158F00 = arg0;
    D_80158EFF = arg1;
    D_80158EFE = arg2;
    D_80158F01 = arg3;
    D_80158F02 = (s8) arg4;
    D_80158F03 = (s8) arg5;
    D_80158F04 = (s8) arg6;
    D_80158F05 = (s8) arg7;
    D_80158F06 = (s8) arg8;
}


void func_800B1390(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    extern s32 D_80158F08;
    extern s32 D_80158F0C;
    extern s32 D_80158F10;
    extern s32 D_80158F14;
    extern s32 D_80158F18;
    extern s32 D_80158F1C;
    extern s32 D_80158F20;
    D_80158F08 = arg0;
    D_80158F0C = arg1;
    D_80158F10 = arg2;
    D_80158F14 = arg3;
    D_80158F18 = arg4;
    D_80158F1C = arg5;
    D_80158F20 = arg6;
}


void func_800B13C0(s32 arg0, s32 arg1) {
    s32 func_80094A2C();
    void func_80094B70();
    s32 temp_s0;

    temp_s0 = arg0 + 0x198;
    func_80094B70(temp_s0);
    func_80094A2C(temp_s0, 9, arg1 & 0xFFFF);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B1408);

void *func_800B16B4(void *arg0, s32 arg1) {
    M2C_UNK func_800B1408();
    func_800B1408(arg0);
    M2C_FIELD(arg0, s16 *, 0x1A6) = arg1;
    return arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B16F0);


void func_800B1C28(s32 arg0, s32 arg1) {
    M2C_UNK __builtin_delete(); /* extern */
    void func_80094B70();
    M2C_UNK func_800B16F0(); /* extern */
    func_800B16F0();
    func_80094B70(arg0 + 0x198);
    if (arg1 & 1) {
        __builtin_delete(arg0);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B1C78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B1DA4);

s32 func_800B1EC4(void *arg0) {
    return ((u32) M2C_FIELD(arg0, u32 *, 0x30) >> 7) & 1;
}

s32 func_800B1ED8() {
    return 0x20;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B1EE0);

s32 func_800B1F28(void *arg0) {
    s32 var_v0;

    var_v0 = M2C_FIELD(arg0, s32 *, 0x158);
    if (var_v0 == 0) {
        var_v0 = 0xC;
    }
    return var_v0;
}

s32 func_800B1F44() {
    return 0x16;
}

void func_800B1F4C(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x2C) = arg1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B1F54);


void func_800B1FD4(void *arg0, s32 arg1, s32 arg2) {
    M2C_UNK func_800B1F54(); /* extern */
    M2C_FIELD(arg0, s32 *, 0x30) = (s32) (M2C_FIELD(arg0, s32 *, 0x30) | 0x1000);
    M2C_FIELD(arg0, s32 *, 0x3C) = arg2;
    if (arg1 != 0) {
        func_800B1F54();
    }
}

void func_800B200C(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0xAC) = arg1;
}

s32 func_800B2014(void *arg0) {
    return (M2C_FIELD(arg0, s32 *, 0x9C) * 2) + 0x10;
}


s32 func_800B2028(void *arg0, M2C_UNK arg1) {
    s32 func_800E1EB4(); /* extern */
    s32 temp_s0;

    temp_s0 = (M2C_FIELD(arg0, s32 *, 0xA8) * 4) + 4;
    return temp_s0 + (func_800E1EB4(arg1) * 6);
}


void func_800B2070(void *arg0, M2C_UNK arg1) {
    s32 func_80094BD4(); /* extern */
    M2C_UNK func_800E1E94(); /* extern */
    s32 func_800E1EB4(); /* extern */
    M2C_UNK func_80104794(); /* extern */
    s32 temp_a0;
    s32 temp_v0;

    temp_v0 = func_80094BD4(arg0 + 0x198, (func_800E1EB4(arg1) - 0x7FFF) & 0xFFFF);
    M2C_FIELD(arg0, s32 *, 0x118) = temp_v0;
    func_800E1E94(temp_v0, arg1);
    temp_a0 = M2C_FIELD(arg0, s32 *, 0x200);
    if (temp_a0 != 0) {
        func_80104794(temp_a0);
        M2C_FIELD(arg0, s32 *, 0x200) = 0;
    }
}

s32 func_800B20E4(void *arg0, s32 arg1) {
    s32 a3 = M2C_FIELD(arg0, s32 *, 0x64);
    s32 a2 = M2C_FIELD(arg0, s32 *, 0x68);

    if (a3 != a2 && !(M2C_FIELD(arg0, s32 *, 0x30) & 0x80000)) {
        arg1 = (arg1 * a3) / a2;
    }
    return M2C_FIELD(arg0, s32 *, 0x100) = arg1 / 2;
}

void func_800B2160(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x10) = arg1;
}

void func_800B2168(void *arg0, s32 arg1, s32 arg2) {
    M2C_FIELD(arg0, s32 *, 8) = arg1;
    M2C_FIELD(arg0, s32 *, 0xC) = arg2;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B2174);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B21B8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B21FC);


void func_800B2240(s32 arg0, s32 arg1, s32 arg2) {
    u16 *func_800B2174(); /* extern */
    u16 *temp_v0;
    u16 var_v0;

    temp_v0 = func_800B2174();
    if (temp_v0 != NULL) {
        if (arg2 != 0) {
            var_v0 = *temp_v0 | 1;
        } else {
            var_v0 = *temp_v0 & 0xFFFE;
        }
        *temp_v0 = var_v0;
    }
}


void func_800B2298(s32 arg0, s32 arg1, s32 arg2) {
    u16 *func_800B2174(); /* extern */
    u16 *temp_v0;
    u16 var_v0;

    temp_v0 = func_800B2174();
    if (temp_v0 != NULL) {
        if (arg2 != 0) {
            var_v0 = *temp_v0 | 2;
        } else {
            var_v0 = *temp_v0 & 0xFFFD;
        }
        *temp_v0 = var_v0;
    }
}

void func_800B22F0(void *arg0) {
    void *var_v1;

    var_v1 = M2C_FIELD(arg0, void **, 0x170);
    if (var_v1 != NULL) {
        do {
            M2C_FIELD(var_v1, u16 *, 0) = (u16) (M2C_FIELD(var_v1, u16 *, 0) & 0xFFFE);
            var_v1 = M2C_FIELD(var_v1, void **, 0xC);
        } while (var_v1 != NULL);
    }
}

void func_800B2328(void *arg0) {
    void *var_v1;

    var_v1 = M2C_FIELD(arg0, void **, 0x170);
    if (var_v1 != NULL) {
        do {
            M2C_FIELD(var_v1, u16 *, 0) = (u16) (M2C_FIELD(var_v1, u16 *, 0) & 0xFFFD);
            var_v1 = M2C_FIELD(var_v1, void **, 0xC);
        } while (var_v1 != NULL);
    }
}


s32 func_800B2360() {
    u16 *func_800B2174(); /* extern */
    s32 var_s0;
    u16 *temp_v0;

    var_s0 = 0;
    temp_v0 = func_800B2174();
    if (temp_v0 != NULL) {
        var_s0 = ((u16) *temp_v0 >> 2) & 1;
    }
    return var_s0;
}


void func_800B23A4(s32 arg0, s32 arg1, s32 arg2) {
    u16 *func_800B2174(); /* extern */
    u16 *temp_v0;
    u16 var_v0;

    temp_v0 = func_800B2174();
    if (temp_v0 != NULL) {
        if (arg2 != 0) {
            var_v0 = *temp_v0 | 4;
        } else {
            var_v0 = *temp_v0 & 0xFFFB;
        }
        *temp_v0 = var_v0;
    }
}


void func_800B23FC(void *arg0) {
    s32 func_800B2174(); /* extern */
    s32 func_800B21FC(); /* extern */
    s32 temp_v0;
    s32 temp_v0_2;

    if (M2C_FIELD(arg0, s32 *, 0x1C) == 0) {
        temp_v0 = func_800B21FC();
        if (temp_v0 != 0) {
            M2C_FIELD(arg0, s32 *, 0x16C) = temp_v0;
        }
    } else {
        temp_v0_2 = func_800B2174(arg0);
        if (temp_v0_2 != 0) {
            M2C_FIELD(arg0, s32 *, 0x168) = temp_v0_2;
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B245C);


void func_800B2498(s32 arg0, M2C_UNK arg1) {
    M2C_UNK func_800B245C(); /* extern */
    func_800B245C(arg0, 0, arg1);
}

void func_800B24BC(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0xBC) = arg1;
}

void func_800B24C4(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x184) = arg1;
}

void func_800B24CC(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x188) = arg1;
}

void func_800B24D4(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x18C) = arg1;
}

void func_800B24DC(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x190) = arg1;
}

void func_800B24E4(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x194) = arg1;
}

void func_800B24EC(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0x114) = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B24F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B26A0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B27F8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B284C);


void func_800B2A0C(void *arg0, M2C_UNK arg1) {
    s32 func_80094BD4(); /* extern */
    M2C_UNK func_800E1E94(); /* extern */
    s32 func_800E1EB4(); /* extern */
    if (M2C_FIELD(arg0, s32 *, 0x28) < 6) {
        M2C_FIELD(((M2C_FIELD(arg0, s32 *, 0x28) * 4) + arg0), s32 *, 0x23C) = func_80094BD4(arg0 + 0x198, (func_800E1EB4(arg1) - 0x7FFF) & 0xFFFF);
        func_800E1E94(M2C_FIELD(((M2C_FIELD(arg0, s32 *, 0x28) * 4) + arg0), s32 *, 0x23C), arg1);
        M2C_FIELD(arg0, s32 *, 0x28) = (s32) (M2C_FIELD(arg0, s32 *, 0x28) + 1);
    }
}

/* @O2 */

void func_800B2AA4(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    M2C_UNK func_800FA550(); /* extern */
    u8 var_a0;

    if (arg1 != 0) {
        if (arg3 == 0) {
            var_a0 = M2C_FIELD(arg0, u8 *, 0x50);
        } else {
            goto block_7;
        }
    } else if (arg2 != 0) {
        if (arg3 == 0) {
            var_a0 = M2C_FIELD(arg0, u8 *, 0x54);
        } else {
            goto block_7;
        }
    } else if (arg3 != 0) {
block_7:
        var_a0 = M2C_FIELD(arg0, u8 *, 0x4C);
    } else {
        var_a0 = M2C_FIELD(arg0, u8 *, 0x48);
    }
    func_800FA550(var_a0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B2B10);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B2B9C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B2CC0);

s32 func_800B31E8(arg0, arg1)
    void *arg0;
    void *arg1;
{
    s32 idx;
    if (M2C_FIELD(arg0, void **, 0x170) != NULL) {
        arg0 = M2C_FIELD(arg0, void * volatile *, 0x170);
        idx = 0;
        if (arg0 != NULL) {
            do {
                if (arg0 == arg1) {
                    return idx;
                }
                arg0 = M2C_FIELD(arg0, void **, 0xC);
                idx += 1;
            } while (arg0 != NULL);
        }
    }
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B322C);


s32 func_800B3268(void *arg0) {
    s32 func_800B31E8();
    return func_800B31E8() / (s32) M2C_FIELD(arg0, s32 *, 0x44);
}


void func_800B32C4(void *arg0, s32 arg1) {
    M2C_UNK func_800B322C(); /* extern */
    func_800B322C(arg0, arg1 * M2C_FIELD(arg0, s32 *, 0x44));
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B32F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B3FE4);

void func_800B3FE4();

void func_800B4064(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    func_800B3FE4(arg0, arg1, arg2 + *(s32 *)(arg0 + 0x15C), arg3, arg4);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B4090);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B42B4);

s32 func_800B4514(void *arg0, s32 arg1) {
    s32 d;
    if (*(s32 *)((s8 *)arg0 + 0x2C) == 1) {
        return arg1;
    }
    d = *(s32 *)((s8 *)arg0 + 0x44);
    return arg1 / d;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B4560);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B45B8);


void func_800B4768() {
    M2C_UNK func_800F78C4(); /* extern */
    extern void * D_80158F40;
    M2C_FIELD(D_80158F40, s32 *, 0x30) = (s32) (M2C_FIELD(D_80158F40, s32 *, 0x30) | 0x400);
    func_800F78C4(M2C_FIELD(D_80158F40, s32 *, 0) + 0x2C);
}

void func_800B47A4() {

}

void func_800B47AC() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B47B4);

void func_800B48C0() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B48C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B4B7C);


void func_800B4BEC(s32 arg0) {
    s32 func_800E1EE4(); /* extern */
    s32 func_80104BB4(); /* extern */
    extern M2C_UNK D_80117694;
    extern s32 D_8011ACB4;
    extern M2C_UNK D_80158F58;
    if ((func_80104BB4(0) & 8) && (func_800E1EE4(arg0, &D_80158F58) == arg0)) {
        *(s32 *)(((s8 *)&D_80117694) + (D_8011ACB4 * 0x578)) = 0x74B2;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B4C74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B4E44);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B5B40);


void func_800B5E44(s32 arg0) {
    M2C_UNK func_800B6EA0(); /* extern */
    if (arg0 != 0) {
        func_800B6EA0();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B5E68);

void func_800B5FE0() {

}

void func_800B5FE8() {

}

void func_800B5FF0() {

}

void func_800B5FF8() {

}


void func_800B6000(s16 arg0) {
    s32 func_800B322C(); /* extern */
    extern void * D_80158F40;
    s32 temp_v0;

    if (D_80158F40 != NULL) {
        temp_v0 = func_800B322C(D_80158F40, arg0);
        if (temp_v0 != M2C_FIELD(D_80158F40, s32 *, 0x160)) {
            M2C_FIELD(D_80158F40, s32 *, 0x160) = temp_v0;
        }
    }
}


void func_800B6054(s16 arg0) {
    s32 func_800B322C(); /* extern */
    extern void * D_80158F40;
    s32 temp_v0;

    if (D_80158F40 != NULL) {
        temp_v0 = func_800B322C(D_80158F40, arg0 * M2C_FIELD(D_80158F40, s32 *, 0x44));
        if (temp_v0 != M2C_FIELD(D_80158F40, s32 *, 0x160)) {
            M2C_FIELD(D_80158F40, s32 *, 0x160) = temp_v0;
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B60BC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B6434);

void func_800B6E98() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B6EA0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B7D48);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B80B0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8910);

void func_800B8A20(void *arg0, s16 arg1) {
    M2C_FIELD(arg0, s16 *, 0x218) = arg1;
    M2C_FIELD(arg0, s16 *, 0x216) = 0;
}

void func_800B8A2C(void *arg0, s16 arg1) {
    M2C_FIELD(arg0, s16 *, 0x216) = arg1;
    if (arg1 >= 0x65) {
        M2C_FIELD(arg0, s16 *, 0x216) = 0x64;
    }
}


void func_800B8A50(void *arg0) {
    M2C_UNK func_80104A38(); /* extern */
    s32 func_80107AA0(); /* extern */
    if (M2C_FIELD(arg0, s32 *, 0x228) != -1) {
loop_1:
        if (func_80107AA0(M2C_FIELD(arg0, s32 *, 0x228)) != 0) {
            func_80104A38();
            goto loop_1;
        }
        func_80104A38();
    }
}

void func_800B8AB0(void *arg0, s16 arg1, s16 arg2, s16 arg3) {
    M2C_FIELD(arg0, s16 *, 0x22C) = arg1;
    M2C_FIELD(arg0, s16 *, 0x22E) = arg2;
    M2C_FIELD(arg0, s16 *, 0x230) = arg3;
}

void func_800B8AC0(void *arg0, s16 arg1, s16 arg2, s16 arg3) {
    M2C_FIELD(arg0, s16 *, 0x232) = arg1;
    M2C_FIELD(arg0, s16 *, 0x234) = arg2;
    M2C_FIELD(arg0, s16 *, 0x236) = arg3;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8AD0);

s32 func_800B8C60(arg0, arg1, arg2)
    s32 arg0;
    s32 arg1;
    s32 arg2;
{
    void func_800B1C28();
    s32 func_800B7D48();
    M2C_UNK func_800B80B0();
    extern s32 D_80158FD8;
    s32 sp28[0xA8];
    void *ptr;
    s32 res;

    func_800B16B4(sp28, 0x2000);
    ptr = sp28;
    func_800B80B0(ptr, arg0, arg1, 0, 0, 0, 0, 0, arg2);
    res = func_800B7D48(ptr, 0);
    D_80158FD8 = sp28[0x30];
    func_800B1C28(ptr, 2);
    return res;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8D08);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8DC0);


void func_800B8E34() {
    extern s32 D_80158FD4;
    D_80158FD4 = 0;
}


void func_800B8E40(s32 arg0, s32 arg1) {
    extern s32 D_80158FD4;
    if (arg1 != 0) {
        D_80158FD4 |= 1 << arg0;
    } else {
        D_80158FD4 &= ~(1 << arg0);
    }
}


s32 func_800B8E78(s32 arg0) {
    extern s32 D_80158FD4;
    return (1 << arg0) & D_80158FD4;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8E8C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8F0C);


void func_800B8F74(s32 arg0, M2C_UNK arg1, M2C_UNK arg2, s32 arg3, s32 arg4) {
    s32 func_800B8C60();
    extern M2C_UNK D_8012BF80;
    func_800B8C60(arg0, arg1, arg2, (arg3 * 0x94) + (void *)&D_8012BF80, arg4);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B8FB8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B9010);


void func_800B914C(s32 arg0, M2C_UNK arg1, M2C_UNK arg2, s32 arg3, s32 arg4, s32 arg5) {
    M2C_UNK func_800AED30(); /* extern */
    func_800AED30(arg1, arg2, 4, arg4 + 2, arg5, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B918C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B92C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B9350);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B94A4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B95BC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B9840);

/* @O2 */

void func_800B98A0(void *arg0) {
    M2C_UNK func_800B9840(); /* extern */
    func_800B9840(arg0, 0, 0, M2C_FIELD(arg0, s32 *, 0x370), M2C_FIELD(arg0, s32 *, 0x358));
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B98D0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B9940);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B99FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800B9A64);

void func_800BA424() {

}

void func_800BA42C() {

}

void func_800BA434() {

}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", jtbl_8001227C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", jtbl_8001233C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", jtbl_800123C4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", jtbl_800123E4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012400);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012410);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012420);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012430);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012440);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012450);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012460);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012470);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012484);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012490);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800124A8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800124B4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800124C4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800124D8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800124E8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800124F8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012504);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012524);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001253C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012548);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012554);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001257C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800125A0);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800125B0);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800125C4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800125D4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_800125E4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_8001260C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012618);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012648);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012658);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BA43C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BA7E8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BA8AC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BAC60);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BAD58);

void func_800BBB50() {

}

/* @O2 */

void func_800BBB58() {
    M2C_UNK func_800BAC60(); /* extern */
    extern s32 D_801210C4;
    func_800BAC60(D_801210C4);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BBB80);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BBCE8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BBDAC);

void func_800BC604() {

}

void func_800BC60C() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BC614);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BC964);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BCA30);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BCDB0);

void func_800BD3D4() {

}

void func_800BD3DC() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BD3E4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BD6F4);

/* @O2 */

void func_800BD814(s32 arg0) {
    void func_800C6DCC();
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_80121340;
    extern M2C_UNK D_80158FF4;
    extern s32 D_80159504;
    if (D_80159504 != 0) {
        func_800E1E64(&D_80121340, &D_80158FF4);
    }
    D_80159504 = 1;
    func_800C6DCC(&D_80121340, arg0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BD870);

void func_800BE900() {

}

void func_800BE908() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BE910);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BEA94);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BEB60);

void func_800BF8B4() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BF8BC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BFA3C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BFC6C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800BFE58);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C03E4);

void func_800C0AE4() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C0AEC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C0BC8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C0C80);


void func_800C14B8(s16 arg0) {
    void func_80092B1C();
    M2C_UNK func_800A74AC(); /* extern */
    extern s32 D_8015901C;
    if ((arg0 == 0xD0) || (arg0 == 0xD2)) {
        func_800A74AC(0x68, 0, 0, 0);
        func_80092B1C(D_8015901C);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C150C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C1748);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C1C60);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C2198);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C2240);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C2364);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C3AB4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C3B5C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C48B0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C4A48);

/* @CFLAGS: -O2 -G0 */

void func_800C4F1C(s32 arg0) {
    M2C_UNK func_800B94A4(M2C_UNK *);                   /* extern */
    M2C_UNK func_800B95BC(M2C_UNK *, M2C_UNK, M2C_UNK, M2C_UNK, s32, s32, s32, s32); /* extern */
    M2C_UNK func_800B9940(M2C_UNK *);                   /* extern */
    M2C_UNK func_800F7850(void *);                      /* extern */
    M2C_UNK func_800F7E08(M2C_UNK *, M2C_UNK *);        /* extern */
    extern M2C_UNK D_80120D84;
    extern s32 D_801210C4;
    M2C_UNK func_800C4A48(); /* extern */
    func_800B95BC(&D_80120D84, 0xA, 0xA, 1, 0x12C, 0xC8, 0, 0);
    D_801210C4 = arg0;
    func_800B9940(&D_80120D84);
    func_800F7E08(&D_80120D84, (void *)&func_800C4A48);
    func_800F7850((void *)&D_80120D84 + 0x2C);
    func_800B94A4(&D_80120D84);
}

/* @O2 */


void func_800C4FAC(s32 arg0) {
    extern u8 D_801210B8[];
    void func_800F7B94(); /* extern */
    if (*(s32 *)D_801210B8 == arg0) {
        func_800F7B94((s8 *)D_801210B8 - 0x334);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C4FE4);

/* @O2 */


void func_800C58A8() {
    extern u8 D_801210C4[];
    void func_800F78C4(); /* extern */
    *(s32 *)D_801210C4 = 1;
    func_800F78C4((s8 *)D_801210C4 - 0x314);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C58D8);

/* @O2 */

void func_800C59B0() {
    extern s16 D_801211D8[];
    extern s16 D_801211EA[];
    s32 i;
    s32 i48;
    for (i = 0; i < 4; i++) {
        i48 = i * 0x48;
        *(s16 *)((s8 *)D_801211D8 + i48) = -1;
        *(s16 *)((s8 *)D_801211EA + i48) = -1;
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C59EC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C5F60);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C60E4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C658C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C6728);


void func_800C67D4() {
    M2C_UNK func_800B9350(); /* extern */
    extern M2C_UNK D_80120D84;
    func_800B9350(&D_80120D84);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C67FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C68A8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C6994);

void func_800C6B2C(s8 *arg0) {
    *arg0 = 0;
}


void func_800C6B34(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590B4;
    func_800E1E64(arg0, &D_801590B4);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C6B5C);


void func_800C6BB4(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590B8;
    func_800E1E64(arg0, &D_801590B8);
}


void func_800C6BDC(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590BC;
    func_800E1E64(arg0, &D_801590BC);
}


void func_800C6C04(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590C0;
    func_800E1E64(arg0, &D_801590C0);
}


void func_800C6C2C(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590C4;
    func_800E1E64(arg0, &D_801590C4);
}


void func_800C6C54(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590C8;
    func_800E1E64(arg0, &D_801590C8);
}


void func_800C6C7C(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590CC;
    func_800E1E64(arg0, &D_801590CC);
}


void func_800C6CA4(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590D0;
    func_800E1E64(arg0, &D_801590D0);
}


void func_800C6CCC(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590D4;
    func_800E1E64(arg0, &D_801590D4);
}


void func_800C6CF4(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590D8;
    func_800E1E64(arg0, &D_801590D8);
}


void func_800C6D1C(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590DC;
    func_800E1E64(arg0, &D_801590DC);
}


void func_800C6D44(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590E0;
    func_800E1E64(arg0, &D_801590E0);
}


void func_800C6D6C(s32 arg0) {
    M2C_UNK func_800E1E64(); /* extern */
    extern M2C_UNK D_801590E4;
    func_800E1E64(arg0, &D_801590E4);
}


void func_800C6D94(s32 arg0, M2C_UNK arg1) {
    s32 func_800CEA98();
    M2C_UNK func_800E1E64(); /* extern */
    func_800E1E64(arg0, func_800CEA98(arg1));
}

void func_800C6DCC(s32 arg0, s32 arg1) {
    void func_800C6D94();
    extern s32 * D_8015894C__func_800C6DCC __asm__("D_8015894C");
    func_800C6D94(arg0, D_8015894C__func_800C6DCC[arg1]);
}


void func_800C6E00() {
    M2C_UNK func_800E1E64(); /* extern */
    func_800E1E64();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C6E20);

void func_800C6E70(s32 arg0, s16 arg1) {
    M2C_UNK func_800E1E64();
    M2C_UNK func_800F5254();
    s8 sp10[24];
    func_800F5254(arg1, sp10, 10);
    func_800E1E64(arg0, sp10);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C6EB4);


void func_800C6F4C(s32 arg0, s32 arg1) {
    void func_80102B14(); /* extern */
    void func_800E1E64(); /* extern */
    s8 buf[0x18];
    func_80102B14(arg1, buf, 10);
    func_800E1E64(arg0, buf);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C6F8C);


void func_800C704C(s32 arg0, s32 arg1) {
    void func_800C6DCC();
    void func_800C6F4C();
    extern M2C_UNK D_80121340;
    s32 var_a1;

    var_a1 = arg1;
    if (var_a1 >= 0x7531) {
        var_a1 = 0x7530;
    }
    func_800C6F4C(arg0, var_a1);
    func_800C6DCC(&D_80121340, 0x143);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C7088);


void func_800C7700(s32 arg0) {
    s32 __builtin_new(); /* extern */
    M2C_UNK func_80097A24(); /* extern */
    void func_80097AB8();
    void func_8009D158();
    s32 func_800C7904(); /* extern */
    M2C_UNK func_800C7AC8(); /* extern */
    s32 func_800C7B74(); /* extern */
    M2C_UNK func_800C7D04(); /* extern */
    void func_800DA338();
    M2C_UNK func_800DA694(); /* extern */
    M2C_UNK func_800FA660(); /* extern */
    M2C_UNK func_800FA6A0(); /* extern */
    s32 func_80107C38(); /* extern */
    M2C_UNK func_80107CCC(); /* extern */
    extern s32 D_8011E748;
    extern s16 D_801592E4;
    s32 temp_v0;

    func_800FA660();
    func_80107CCC(D_8011E748);
    D_8011E748 = 0;
    func_800DA694();
    func_80097AB8();
    D_801592E4 = 0x80;
    temp_v0 = func_800C7904(__builtin_new(0x2C4));
    if (func_800C7B74(temp_v0, arg0) != 0) {
        func_800C7D04(temp_v0);
        func_800FA660();
        if (temp_v0 != 0) {
            func_800C7AC8(temp_v0, 3);
        }
        func_800DA338();
        func_80097A24();
        D_8011E748 = func_80107C38(0x140, 0xF0);
        D_801592E4 = 0x80;
        func_8009D158();
        func_800FA6A0();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C77EC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C7904);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C7AC8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C7B74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C7D04);

/* @CFLAGS: -O1 -G0 */

void func_800C7F40(void *arg0, s32 arg1) {
    s32 func_80066074(s16);                             /* extern */
    void func_800662B4(s32 arg0, s32 arg1);
    void func_800C6B2C(s8 *arg0);
    void func_800C6B34(s32 arg0);
    void func_800C6BDC(s32 arg0);
    s32 func_800CEA98(s32 arg0);
    M2C_UNK func_800E1E64(M2C_UNK *, M2C_UNK *);        /* extern */
    M2C_UNK func_800F8FB4(M2C_UNK *, s32, s32, s32);    /* extern */
    M2C_UNK func_801030F8(M2C_UNK);                     /* extern */
    s32 func_80103F70(M2C_UNK *, void *, M2C_UNK);      /* extern */
    M2C_UNK func_80104794(s32);                         /* extern */
    extern M2C_UNK D_8011A426;
    extern M2C_UNK D_80121340;
    extern void * D_8015894C;
    extern s32 D_80159130;
    extern M2C_UNK D_8015913C;
    extern M2C_UNK D_8015EE40;
    s32 temp_a0;
    s32 temp_a3;

    if (D_80159130 != 0) {
        func_800C6B2C(&D_80121340);
        func_800E1E64(&D_80121340, (arg1 * 0x18) + (void *)&D_8011A426);
        func_800C6BDC(&D_80121340);
        func_800E1E64(&D_80121340, &D_8015913C);
        func_800E1E64(&D_80121340, func_800CEA98(M2C_FIELD(D_8015894C, s32 *, 0x71C)));
        func_800C6B34(&D_80121340);
        func_800662B4(&D_80121340, func_80066074(M2C_FIELD(((void *)&D_8011A426 + (arg1 * 2)), s16 *, -0x30)));
        D_80159130 = 0;
    } else {
        temp_a3 = arg0 + 0x2AC;
        func_800F8FB4(&D_8015EE40, arg0 + 0x148, temp_a3, temp_a3);
        func_800C6B2C(&D_80121340);
        func_800E1E64(&D_80121340, (arg1 * 0x18) + (void *)&D_8011A426);
    }
    temp_a0 = M2C_FIELD(arg0, s32 *, 0x2C0);
    if (temp_a0 != 0) {
        func_80104794(temp_a0);
    }
    func_801030F8(0xF);
    M2C_FIELD(arg0, s32 *, 0x2C0) = func_80103F70(&D_80121340, arg0 + 0x2AC, 0);
    func_801030F8(1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C80D4);

void func_800C81A4(void *arg0, s32 arg1) {
    M2C_FIELD(arg0, s32 *, 0x2BC) = (s32) (arg1 + M2C_FIELD(arg0, s32 *, 0x2BC));
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C81B8);


void func_800C823C(void *arg0) {
    void func_800C81A4();
    M2C_UNK func_80104A38(); /* extern */
loop_1:
    if (M2C_FIELD(arg0, s32 *, 0x2BC) >= -0x55) {
        func_80104A38();
        func_800C81A4(arg0, -4);
        goto loop_1;
    }
}


void func_800C8290() {
    M2C_UNK func_800F78C4(); /* extern */
    extern s32 D_8015912C;
    func_800F78C4(D_8015912C + 0xB0);
}



void func_800C82B4(s16 arg0) {
    extern s32 D_8015912C;
    void func_800F78C4(); /* extern */
    if (arg0 < 0xD3) {
        if (arg0 >= 0xD0) {
            func_800F78C4(*(s32 *)&D_8015912C + 0xB0);
        }
    }
}


void func_800C82F4() {
    M2C_UNK func_800F78C4(); /* extern */
    extern s32 D_8015912C;
    func_800F78C4(D_8015912C);
}


void func_800C8318() {
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_8015EE40;
    func_800F8530(&D_8015EE40, 2);
}


void func_800C8340() {
    M2C_UNK func_800F8268(); /* extern */
    extern M2C_UNK D_8015EE40;
    func_800F8268(&D_8015EE40);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C8368);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C83D4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C84F0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C855C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C85FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C8658);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C8720);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C87C0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C8810);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C8F18);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C92A0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800C9BB4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CA108);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CA9C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CAB04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CAC4C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CACA4);

s32 func_800CAF04(s32 arg0) {
    return arg0;
}


void func_800CAF0C(s32 arg0, s32 arg1) {
    M2C_UNK __builtin_delete(); /* extern */
    s32 temp_a1;

    temp_a1 = arg1 & 1;
    if (temp_a1 != 0) {
        __builtin_delete(arg0, temp_a1);
    }
}

void func_800CAF34(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0xC80) = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CAF3C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CAF9C);


void func_800CB020(void *arg0, s32 arg1) {
    M2C_UNK func_800CAF3C(); /* extern */
    s32 var_s0;
    s32 var_v0;

    var_s0 = M2C_FIELD(arg0, s32 *, 0xC80) - 1;
    if (var_s0 >= 0) {
        var_v0 = var_s0 * 0x10;
        do {
            if (M2C_FIELD((arg0 + var_v0), s32 *, 8) == arg1) {
                func_800CAF3C(arg0, var_s0);
            }
            var_s0 -= 1;
            var_v0 = var_s0 * 0x10;
        } while (var_s0 >= 0);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB094);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB0F0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB1D0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB254);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB37C);


void func_800CB484(s32 arg0) {
    void * func_80094FE0();
    void * func_80095228();
    M2C_UNK func_800B99FC(); /* extern */
    void func_800C6B2C();
    void func_800C6B34();
    M2C_UNK func_800E1E64(); /* extern */
    M2C_UNK func_800F9DB8(); /* extern */
    M2C_UNK func_801030F8(); /* extern */
    extern M2C_UNK D_80121340;
    extern s32 D_80159190;
    extern M2C_UNK D_80159194;
    extern M2C_UNK D_8015919C;
    extern M2C_UNK D_801591A0;
    extern M2C_UNK D_801591A4;
    M2C_UNK sp10;

    func_800C6B2C(&D_80121340);
    func_800E1E64(&D_80121340, &D_80159194);
    func_800E1E64(&D_80121340, func_80094FE0(arg0));
    func_800C6B34(&D_80121340);
    func_800E1E64(&D_80121340, &D_8015919C);
    func_800C6B34(&D_80121340);
    func_800E1E64(&D_80121340, &D_801591A0);
    func_800E1E64(&D_80121340, func_80095228(arg0));
    func_800E1E64(&D_80121340, &D_801591A4);
    func_801030F8(1);
    func_800B99FC(&sp10, &D_80121340, 0x10);
    func_800F9DB8(D_80159190 + 0x84, &D_80121340, &sp10, 0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB5A4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB828);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CB988);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CBAB0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CBD90);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CBE3C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CC03C);


void func_800CC4D0(void *arg0) {
    M2C_UNK func_800CBE3C(); /* extern */
    M2C_UNK func_800CE140(); /* extern */
    M2C_UNK func_800FABBC(); /* extern */
    M2C_UNK func_800FABE0(); /* extern */
    M2C_UNK func_80104AFC(); /* extern */
    func_800FABE0();
    func_80104AFC();
    M2C_FIELD(arg0, s32 *, 0x8FC) = 2;
    func_800CE140(arg0);
    M2C_FIELD(arg0, s32 *, 0x8FC) = 3;
    func_800CBE3C(arg0);
    func_800FABBC(arg0);
    func_80104AFC();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CC530);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012758);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CD5B0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CDAD4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CDD74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CDEB4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CE140);

void func_800CE228() {

}

void func_800CE230() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CE238);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CE360);

void func_800CE4D0() {

}


void func_800CE4D8() {
    M2C_UNK func_800CDAD4(); /* extern */
    extern s32 D_80159190;
    func_800CDAD4(D_80159190, 1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CE4FC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CE530);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CE838);

void func_800CE9BC() {

}

void func_800CE9C4() {

}

void func_800CE9CC() {

}

void func_800CE9D4() {

}


void func_800CE9DC(s32 arg0) {
    s32 func_80094A2C();
    extern M2C_UNK D_80121BE4;
    extern s32 D_801591F4;
    func_80094A2C(&D_80121BE4, 2, arg0 & 0xFFFF);
    D_801591F4 = 0;
}


void func_800CEA0C() {
    void func_80094B70();
    extern M2C_UNK D_80121BE4;
    func_80094B70(&D_80121BE4);
}


s32 func_800CEA34(s32 arg0) {
    s32 func_80094BD4(); /* extern */
    M2C_UNK func_800E1E94(); /* extern */
    s32 func_800E1EB4(); /* extern */
    extern M2C_UNK D_80121BE4;
    extern s32 D_80121BEC;
    s32 temp_v0;

    temp_v0 = func_80094BD4(&D_80121BE4, (func_800E1EB4() - 0x7FFF) & 0xFFFF);
    func_800E1E94(temp_v0, arg0);
    return temp_v0 - D_80121BEC;
}


s32 func_800CEA98(s32 arg0) {
    extern s32 D_80121BEC;
    return arg0 + D_80121BEC;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CEAA8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CEB2C);

/* @O2 */
s32 func_800CEBD4(s32 arg0, s32 arg1, s32 arg2) {
    if (arg0 < arg1) {
        arg0 = arg1;
    }
    if (arg0 > arg2) {
        arg0 = arg2;
    }
    return arg0;
}

void func_800CEBFC(s32 *arg0, s32 *arg1) {
    s32 temp_v1;

    temp_v1 = *arg0;
    *arg0 = *arg1;
    *arg1 = temp_v1;
}

void func_800CEC14(s16 *arg0, u16 *arg1) {
    s32 t;
    t = *arg0;
    *arg0 = *arg1;
    *arg1 = t;
}

s32 func_800CEC2C(s32 arg0) {
    s32 var_a0;
    s32 var_a1;
    s32 var_v1;

    var_a0 = arg0;
    var_a1 = 0;
    var_v1 = 0;
    do {
        if (var_a0 & 1) {
            var_a1 += 1;
        }
        var_v1 += 1;
        var_a0 = var_a0 >> 1;
    } while (var_v1 < 8);
    return var_a1;
}


s32 func_800CEC5C(s32 arg0) {
    extern u16 D_8011A250;
    extern s16 D_8011C308;
    if (!(D_8011A250 & 0x8000)) {
        if (arg0 < 0) {
            return arg0 + D_8011C308;
        }
        if (arg0 >= D_8011C308) {
            return arg0 - D_8011C308;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return arg0;
    }
    return arg0;
}


s32 func_800CECB8(s32 arg0) {
    extern u16 D_8011A250;
    extern s16 D_8011C312;
    if (!(D_8011A250 & 0x8000)) {
        if (arg0 < 0) {
            return arg0 + D_8011C312;
        }
        if (arg0 >= D_8011C312) {
            return arg0 - D_8011C312;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return arg0;
    }
    return arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CED14);


s32 func_800CED70() {
    s32 func_800CED14(); /* extern */
    return (s32) (func_800CED14() + 1) >> 1;
}

s32 func_800CED94(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    extern u16 D_8011A250;
    extern s16 D_8011C308;

    arg0 -= arg2;
    if (arg0 <= 0) {
        arg0 = ~arg0 + 1;
    }
    if (!(D_8011A250 & 0x8000)) {
        s32 w = D_8011C308;
        if (arg0 > (w >> 1)) {
            arg0 = w - arg0;
        }
    }
    arg1 -= arg3;
    if (arg1 <= 0) {
        arg1 = ~arg1 + 1;
    }
    return (arg0 + arg1) >> 1;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CEE08);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CEE38);


s32 func_800CEE9C(s32 arg0, s32 arg1, M2C_UNK arg2, s32 arg3) {
    s32 func_800CED14(); /* extern */
    M2C_UNK func_800CEE38(); /* extern */
    s32 temp_v0;
    s32 var_a1;

    temp_v0 = func_800CED14(arg0, arg2);
    var_a1 = arg1 - arg3;
    if (var_a1 <= 0) {
        var_a1 = ~var_a1 + 1;
    }
    return func_800CEE38(temp_v0, var_a1);
}

s32 func_800CEEF0(s32 arg0, s32 arg1) {
    s32 var_v1;

    var_v1 = 0;
    if ((arg0 == ((arg1 + 1) & 7)) || (arg0 == ((arg1 - 1) & 7))) {
        var_v1 = 1;
    }
    return var_v1;
}

void func_800CEF1C(s32 arg0, s32 *arg1, s32 *arg2) {
    *arg1 = arg0 >> 3;
    *arg2 = 1 << (arg0 & 7);
}

/* `~arg1 + 1` instead of `-arg1`: the negation idiom is written out so that cc1
   emits `nor` + `addiu` rather than a single `negu`. */
s32 func_800CEF38(s32 arg0, s32 arg1) {
    s32 var_v0;

    if (arg1 == 0) {
        var_v0 = arg0;
    } else if (arg1 > 0) {
        var_v0 = arg0 << arg1;
    } else {
        var_v0 = arg0 >> (~arg1 + 1);
    }
    return var_v0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CEF5C);


void func_800CF078(s32 arg0) {
    M2C_UNK func_80104794(s32); /* extern */
    extern s32 D_80122BB8[];
    if (D_80122BB8[arg0] != 0) {
        func_80104794(D_80122BB8[arg0]);
        D_80122BB8[arg0] = 0;
    }
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", jtbl_80012C80);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012C98);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CA4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CB0);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CC0);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CCC);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CD8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CE4);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012CF8);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80012D0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800CF0C4);

void func_800D0788() {

}

void func_800D0790() {

}

void func_800D0798() {

}


void func_800D07A0(arg0)
    void *arg0;
{
    void func_800CAF34();
    func_800CAF34(arg0 + 0x228);
    M2C_FIELD(arg0, s32 *, 0xEB4) = 1;
    M2C_FIELD(arg0, s32 *, 0xEB0) = 0;
    M2C_FIELD(arg0, s32 *, 0xEB8) = 0;
    M2C_FIELD(arg0, s32 *, 0xEAC) = -1;
    M2C_FIELD(arg0, s32 *, 0xEC4) = 0;
    M2C_FIELD(arg0, s32 *, 0xEC8) = 1;
    M2C_FIELD(arg0, s32 *, 0xF5C) = 0;
}


void func_800D07F0(s32 arg0) {
    void func_800CB020();
    func_800CB020(arg0 + 0x228, 2);
}


void func_800D0814(arg0)
    s32 arg0;
{
    void func_800CB020();
    s32 temp_s0;

    temp_s0 = arg0 + 0x228;
    func_800CB020(temp_s0, 1);
    func_800CB020(temp_s0, 3);
    func_800CB020(temp_s0, 4);
}


void func_800D085C(arg0)
    s32 arg0;
{
    void func_800D07F0();
    void func_800D0814();
    func_800D0814();
    func_800D07F0(arg0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D088C);


void func_800D0984(void *arg0, M2C_UNK arg1) {
    void func_80092B5C();
    void func_800CAF0C();
    void func_800D085C();
    extern M2C_UNK D_800138BC;
    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_800138BC;
    func_800D085C();
    func_800CAF0C(arg0 + 0x228, 2);
    func_80092B5C(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D09DC);


void func_800D0A78(s32 arg0, M2C_UNK arg1) {
    void func_80084DC4();
    M2C_UNK func_800D09DC(); /* extern */
    void func_800E0064();
    func_80084DC4();
    func_800E0064(arg0);
    func_800D09DC(arg0, arg1);
}


void func_800D0AC0(arg0)
    void *arg0;
{
    s32 func_80018C30();
    void func_80089430();
    s32 temp_a0;

    if ((M2C_FIELD(arg0, s32 *, 0xEB4) == 0) && (M2C_FIELD(arg0, s32 *, 0xEB0) == 0) && (M2C_FIELD(arg0, s32 *, 0xEB8) == 0)) {
        temp_a0 = M2C_FIELD(arg0, s32 *, 0xEAC);
        if (temp_a0 >= 0) {
            func_80089430(temp_a0);
            func_80018C30(1);
        }
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D0B28);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D0C78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D1040);

void func_800D1404() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D140C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D1598);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D2AD0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D2E10);

void func_800D3334() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D333C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D3710);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D39EC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D3D9C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D40CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D456C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D4D0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D4F9C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D5418);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D5654);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D59E4);

void func_800D5EA0() {

}

void func_800D5EA8() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D5EB0);


void func_800D5F6C(s32 arg0) {
    M2C_UNK func_800D5EB0(); /* extern */
    func_800D5EB0(arg0, arg0 + 0xEEC, 0, 0, 0x1B4, 0x3D);
    func_800D5EB0(arg0, arg0 + 0xEF4, 0x20, 0x40, 0x80, 0x40);
    func_800D5EB0(arg0, arg0 + 0xF2C, 0x10, 0x90, 0x120, 0x40);
    func_800D5EB0(arg0, arg0 + 0xEFC, 0xBC, 0x30, 0x70, 0x50);
    func_800D5EB0(arg0, arg0 + 0xF04, 0x10, 0x48, 0x60, 0x88);
    func_800D5EB0(arg0, arg0 + 0xF0C, 0x1B4, 0x164, 0xC8, 0x41);
    func_800D5EB0(arg0, arg0 + 0xF14, 0x10, 0x60, 0x80, 0x78);
    func_800D5EB0(arg0, arg0 + 0xF3C, 7, 0xD8, 0xB5, 0x45);
    func_800D5EB0(arg0, arg0 + 0xF1C, 0x78, 0x50, 0xB0, 0x78);
    func_800D5EB0(arg0, arg0 + 0xF34, 0x78, 0x4A, 0xAF, 0x78);
    func_800D5EB0(arg0, arg0 + 0xF24, 0xC0, 0xD4, 0xF4, 0xD1);
    func_800D5EB0(arg0, arg0 + 0xF44, 0xC5, 0xD8, 0xE9, 0xC6);
}

void func_800D613C() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D6144);

void func_800D6274() {

}


void func_800D627C(s32 arg0) {
    void func_800C6B34();
    void func_800C6E70();
    extern M2C_UNK D_80121340;
    if (arg0 < 0xA) {
        func_800C6B34(&D_80121340);
    }
    func_800C6E70(&D_80121340, arg0);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D62CC);


void func_800D7764(s32 arg0) {
    M2C_UNK func_800F7414(); /* extern */
    M2C_UNK func_800F7B94(); /* extern */
    M2C_UNK func_800FABE0(); /* extern */
    s32 temp_s0;

    func_800F7B94();
    temp_s0 = arg0 + 0x2C;
    func_800FABE0(temp_s0);
    func_800F7414(temp_s0);
}

void func_800D77A0() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D77A8);


void func_800D7D4C() {
    M2C_UNK func_800D62CC(); /* extern */
    extern M2C_UNK D_80121BF8;
    func_800D62CC(&D_80121BF8);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D7D74);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D7DB8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D7EEC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D831C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8480);


void func_800D8608() {
    void func_80089430();
    s32 func_800B8D08(); /* extern */
    void func_800CF078();
    M2C_UNK func_800E1E94(); /* extern */
    extern M2C_UNK D_8011FCF8;
    extern s32 D_80122AA4;
    extern s32 D_80158864__func_800D8608 __asm__("D_80158864");
    extern M2C_UNK D_80158EF0;
    func_80089430(D_80122AA4);
    if (func_800B8D08(&D_80158EF0, 0x25BA, 0xF, D_80158864__func_800D8608 + 0x22) == 0) {
        func_800E1E94(D_80158864__func_800D8608 + 0x22, &D_8011FCF8);
        func_800CF078(0);
    }
}


void func_800D8678(void *arg0, s32 arg1) {
    M2C_UNK func_800D7D74(); /* extern */
    s32 temp_v1;

    temp_v1 = M2C_FIELD(arg0, s32 *, 0xEAC);
    if ((arg1 >= temp_v1) && (temp_v1 >= arg1)) {
        func_800D7D74();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D86B4);

void func_800D8888() {

}


void func_800D8890(void *arg0, M2C_UNK arg1, M2C_UNK arg2) {
    void func_80089430();
    s32 func_800CEE9C();
    void func_800D0AC0();
    extern void * D_80158864;
    s32 temp_a0;

    if ((M2C_FIELD(arg0, s32 *, 0xEB4) == 0) && (M2C_FIELD(arg0, s32 *, 0xEB0) == 0) && (M2C_FIELD(arg0, s32 *, 0xEB8) == 0)) {
        temp_a0 = M2C_FIELD(arg0, s32 *, 0xEAC);
        if (temp_a0 >= 0) {
            func_80089430(temp_a0);
            if (func_800CEE9C(arg1, arg2, M2C_FIELD(D_80158864, s16 *, 0), M2C_FIELD(D_80158864, s16 *, 2)) < 3) {
                func_800D0AC0(arg0, 0);
            }
        }
    }
}

void func_800D8940(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0xF54) = 0;
    M2C_FIELD(arg0, s32 *, 0xF58) = 0;
    M2C_FIELD(arg0, s32 *, 0xF5C) = 0;
    M2C_FIELD(arg0, s32 *, 0xF60) = 0;
    M2C_FIELD(arg0, s32 *, 0xF68) = 0;
    M2C_FIELD(arg0, s32 *, 0xF70) = 0;
    M2C_FIELD(arg0, s32 *, 0xF6C) = 0;
    M2C_FIELD(arg0, s32 *, 0xF64) = 0;
    M2C_FIELD(arg0, s32 *, 0xF78) = 0;
    M2C_FIELD(arg0, s32 *, 0xF74) = 0;
}

void func_800D896C() {

}

void func_800D8974() {

}

void func_800D897C() {

}

void func_800D8984() {

}


void func_800D898C(void *arg0) {
    extern s8 D_801591FD;
    s32 var_v1;

    var_v1 = 2;
    if (M2C_FIELD(arg0, s32 *, 0xEB4) != 0) {
        var_v1 = 1;
    }
    M2C_FIELD(arg0, s32 *, 0xEBC) = var_v1;
    if (M2C_FIELD(arg0, s32 *, 0xEB4) == 0) {
        D_801591FD = 1;
    }
}



void func_800D89C0(s8 *arg0) {
    extern s8 D_801591FD;
    void func_800D8974();
    s32 v;
    v = (*(s32 *)(arg0 + 0xEBC) ^ 2) == 0;
    *(s32 *)(arg0 + 0xEBC) = 0;
    if (v) {
        func_800D8974(arg0, 1);
    }
    D_801591FD = 0;
}


void func_800D89FC() {
    void func_800D07A0();
    func_800D07A0();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8A1C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8AE8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8B4C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8BE0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8C58);


void func_800D8CE8(s32 arg0, s16 arg1, s16 arg2) {
    M2C_UNK func_800FB59C(); /* extern */
    M2C_UNK func_800FBD80(); /* extern */
    extern M2C_UNK D_8015EE88;
    func_800FB59C(arg0, &D_8015EE88, 7, arg1, (s32) arg2, 0x20, 0x10);
    func_800FBD80(arg0, 9, 7);
}


void func_800D8D50(s32 arg0, s16 arg1, s16 arg2) {
    M2C_UNK func_800FB59C(); /* extern */
    M2C_UNK func_800FBD80(); /* extern */
    extern M2C_UNK D_8015EE88;
    func_800FB59C(arg0, &D_8015EE88, 7, arg1, (s32) arg2, 0x10, 0x10);
    func_800FBD80(arg0, 9, 7);
}


void func_800D8DB4(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    extern s8 D_8015EE88;
    s32 func_800FB59C(s32, s8 *, s32, s16, s16, s16, s32);
    s32 func_800FBD80(s32, s32, s32);
    func_800FB59C(arg0, &D_8015EE88, 7, (s16)arg1, (s16)arg2, (s16)arg3, (s16)arg4);
    func_800FBD80(arg0, 9, 7);
}


void func_800D8E24(s32 arg0, s16 arg1, s16 arg2) {
    M2C_UNK func_800FB59C(); /* extern */
    M2C_UNK func_800FBD80(); /* extern */
    extern M2C_UNK D_8015EE88;
    func_800FB59C(arg0, &D_8015EE88, 7, arg1, (s32) arg2, 0x20, 0x18);
    func_800FBD80(arg0, 9, 7);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D8E8C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D9460);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D954C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D95B4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D9C18);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D9C5C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D9C98);


void func_800D9F10(s32 arg0) {
    extern M2C_UNK D_8013883C;
    extern M2C_UNK D_80138874;
    *(s8 *)(((s8 *)&D_8013883C) + arg0) = 4;
    *(s8 *)(((s8 *)&D_80138874) + arg0) = 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800D9F34);


void func_800DA0C8() {
    void func_800D8DB4();
    M2C_UNK func_800F82A4(); /* extern */
    M2C_UNK func_800F89D8(); /* extern */
    extern M2C_UNK D_80013210;
    extern M2C_UNK D_80135CC0;
    extern M2C_UNK D_80135D54;
    extern M2C_UNK D_80135DE8;
    extern M2C_UNK D_80135E7C;
    extern M2C_UNK D_80135F10;
    extern M2C_UNK D_80135FA4;
    extern M2C_UNK D_80136038;
    extern M2C_UNK D_801360CC;
    extern M2C_UNK D_80136160;
    extern M2C_UNK D_801361F4;
    extern M2C_UNK D_80136288;
    extern M2C_UNK D_8013631C;
    extern M2C_UNK D_8013656C;
    extern M2C_UNK D_80136600;
    extern M2C_UNK D_80136694;
    extern M2C_UNK D_80136728;
    extern M2C_UNK D_801367BC;
    extern M2C_UNK D_8015EE88;
    func_800F89D8(&D_8015EE88, "SIVI2.TIM", 0xA, 0xC0);
    func_800D8DB4(&D_80135CC0, 0, 0, 0x10, 0x10);
    func_800D8DB4(&D_80135D54, 0x10, 0, 0x10, 0x10);
    func_800D8DB4(&D_80135DE8, 0x10, 0x60, 0x10, 0x10);
    func_800D8DB4(&D_80135E7C, 0x40, 0x60, 8, 8);
    func_800D8DB4(&D_80135F10, 0x48, 0x60, 8, 8);
    func_800D8DB4(&D_80135FA4, 0, 0x70, 0x10, 0x10);
    func_800D8DB4(&D_80136038, 0x10, 0x70, 0x10, 0x10);
    func_800D8DB4(&D_801360CC, 0x30, 0x60, 0x10, 0x10);
    func_800D8DB4(&D_801361F4, 0x50, 0x60, 8, 8);
    func_800D8DB4(&D_80136288, 0x58, 0x60, 8, 8);
    func_800D8DB4(&D_8013631C, 0x80, 0x60, 0x10, 0x10);
    func_800D8DB4(&D_8013656C, 0x50, 0x68, 8, 8);
    func_800D8DB4(&D_80136600, 0x58, 0x68, 8, 8);
    func_800D8DB4(&D_80136694, 0x60, 0x68, 8, 8);
    func_800D8DB4(&D_80136728, 0x68, 0x68, 8, 8);
    func_800D8DB4(&D_801367BC, 0x40, 0x68, 8, 8);
    func_800F82A4(&D_8015EE88, 0, 0);
    func_800F89D8(&D_8015EE88, &D_80013210, -1, 0xC0);
    func_800D8DB4(&D_80136160, 0, 0x22, 0x20, 0x20);
    func_800F82A4(&D_8015EE88, 0, 0);
}

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80013210);


void func_800DA338() {
    M2C_UNK func_800D8E8C(); /* extern */
    M2C_UNK func_800D95B4(); /* extern */
    M2C_UNK func_800D9C98(); /* extern */
    M2C_UNK func_800D9F34(); /* extern */
    M2C_UNK func_800FCBAC(); /* extern */
    M2C_UNK func_800FCC34(); /* extern */
    func_800FCBAC("TILES.SPS");
    func_800D9C98();
    func_800D95B4();
    func_800D8E8C();
    func_800D9F34();
    func_800FCC34();
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DA388);


void func_800DA5FC() {
    void func_800FB4D4(); /* extern */
    extern s8 D_80136978;
    extern s8 D_80138098;
    s32 i;
    for (i = 0; i < 0x14; i++) {
        func_800FB4D4(&D_80136978 + i * 0x94);
    }
    for (i = 0; i < 0xB; i++) {
        func_800FB4D4(&D_80138098 + i * 0x94);
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DA694);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DB004);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DBBA0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DC3CC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DC86C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DCB78);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DCF0C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DD264);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DD590);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DD688);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DD784);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DD7BC);

/* @O2 */
s32 func_800DD82C(s32 arg0) {
    if (arg0 < 0) return 0;
    if (arg0 < 0xB) return 1;
    if (arg0 < 0x1A) return 2;
    if (arg0 < 0x27) return 3;
    if (arg0 < 0x3E) return 4;
    if (arg0 < 0x4B) return 5;
    if (arg0 < 0x5A) return 6;
    if (arg0 < 0x64) return 7;
    return 8;
}


s32 func_800DD89C() {
    s32 func_800DD784(); /* extern */
    s32 func_800DD82C();
    return func_800DD82C(func_800DD784());
}


s32 func_800DD8C4() {
    s32 func_800DD89C();
    return func_800DD89C() < 4;
}


s32 func_800DD8E4() {
    s32 func_800DD89C();
    return func_800DD89C() >= 5;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DD908);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DDA04);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DDD68);


void func_800DDFEC(s32 arg0) {
    s32 __builtin_new(); /* extern */
    M2C_UNK func_800A7D94(); /* extern */
    void *func_800DE090(); /* extern */
    void func_800DE160();
    M2C_UNK func_800DE284(); /* extern */
    M2C_UNK func_800DE89C(); /* extern */
    M2C_UNK func_800FA6A0(); /* extern */
    extern void * D_80159254;
    extern s16 D_801593EC;
    void *temp_v0;

    if (arg0 < 0) {
        func_800DE89C();
        return;
    }
    func_800A7D94();
    temp_v0 = func_800DE090(__builtin_new(0x64C));
    D_80159254 = temp_v0;
    if (temp_v0 != NULL) {
        D_801593EC = 0;
        M2C_FIELD(temp_v0, s32 *, 0x210) = arg0;
        func_800DE284(temp_v0);
        D_801593EC = 1;
        if (D_80159254 != NULL) {
            func_800DE160(D_80159254, 3);
        }
        D_80159254 = NULL;
        func_800FA6A0();
    }
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DE090);


void func_800DE160(void *arg0, M2C_UNK arg1) {
    M2C_UNK func_800F5E6C(); /* extern */
    M2C_UNK func_800F8530(); /* extern */
    M2C_UNK func_800FA7D4(); /* extern */
    M2C_UNK func_80104794(); /* extern */
    s32 temp_a0;

    temp_a0 = M2C_FIELD(arg0, s32 *, 0x648);
    if (temp_a0 != 0) {
        func_80104794(temp_a0);
    }
    func_800F8530(arg0 + 0x614, 2);
    func_800F5E6C(arg0 + 0x84, 2);
    func_800FA7D4(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DE1C8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DE284);

void func_800DE660() {

}

void func_800DE668() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DE670);


void func_800DE830(s32 arg0) {
    M2C_UNK func_801045F4(); /* extern */
    M2C_UNK func_80104664(); /* extern */
    extern void * D_80159254;
    extern s16 D_801592E4;
    if (arg0 >= 0x297) {
        if (arg0 < 0x2B8) {
            D_801592E4 = (arg0 - 0x297) * 4;
            func_80104664(M2C_FIELD(D_80159254, s32 *, 0x648), -1, -1);
        }
        func_801045F4(M2C_FIELD(D_80159254, s32 *, 0x648));
    }
}

void func_800DE894() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DE89C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DEE44);

s32 func_800DEEC4(s32 arg0) {
    s32 func_800DEE44();
    extern s16 D_8011A342[];
    if (func_800DEE44(arg0) == 0) {
        return D_8011A342[arg0];
    }
    return -1;
}

s32 func_800DEF04(s32 arg0, s32 arg1) {
    typedef struct { s8 owner; u8 pad[0x57]; } WonderCity;
    extern WonderCity D_80113ED8__func_800DEF04[] __asm__("D_80113ED8");
    extern u16 D_8011A25A;
    extern u16 D_8011A390;
    s32 idx;

    if (arg1 == 0x14 && (D_8011A25A & 0x80) && (D_8011A390 & 1)) {
        goto ret0;
    }
    idx = func_800DEEC4(arg1);
    if (idx < 0) {
ret0:
        return 0;
    }
    return D_80113ED8__func_800DEF04[idx].owner == (s8)arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DEFB0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF004);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF0DC);


void func_800DF1D8(void *arg0, M2C_UNK arg1) {
    void func_80092B5C();
    M2C_UNK func_800F5E6C(); /* extern */
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_800138BC;
    extern s32 D_80159508;
    M2C_FIELD(arg0, M2C_UNK **, 0x28) = &D_800138BC;
    D_80159508 = 0;
    func_800F8530(arg0 + 0x3B4, 2);
    func_800F5E6C(arg0 + 0x228, 2);
    func_80092B5C(arg0, arg1);
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF23C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF350);

s32 func_800DF544() {
    return 0;
}

void func_800DF54C() {

}

void func_800DF554() {

}


void func_800DF55C() {
    M2C_UNK func_800F78C4(); /* extern */
    extern s32 D_80159508;
    func_800F78C4(D_80159508 + 0x2C);
}

void func_800DF580() {

}

void func_800DF588() {

}


void func_800DF590() {
    extern s8 D_80159280;
    D_80159280 = 1;
}

void func_800DF5A0() {

}

s32 func_800DF5A8() {
    return 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF5B0);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF7B8);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DF860);

void func_800DFA0C() {

}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DFA14);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800DFC88);

void func_800DFF38() {

}

void func_800DFF40() {

}

void func_800DFF48() {

}

void func_800DFF50() {

}

void func_800DFF58() {

}

/* @CFLAGS: -O1 -G0 */

void func_800DFF60() {
    M2C_UNK func_800DFC88();                            /* extern */
    M2C_UNK func_800F83CC(M2C_UNK *, s16, s16);         /* extern */
    extern M2C_UNK D_8011C308;
    extern M2C_UNK D_801388D0;
    func_800F83CC(&D_801388D0, M2C_FIELD(&D_8011C308, s16 *, 0), M2C_FIELD(&D_8011C308, s16 *, 2));
    func_800DFC88();
}


void func_800DFFA0() {
    M2C_UNK func_800F82A4(); /* extern */
    M2C_UNK func_80104794(); /* extern */
    extern M2C_UNK D_801388D0;
    extern s32 D_801589F0;
    extern s32 D_801589F4;
    func_800F82A4(&D_801388D0, 0, 0);
    if (D_801589F0 != 0) {
        func_80104794(D_801589F0);
        D_801589F0 = 0;
    }
    if (D_801589F4 != 0) {
        func_80104794(D_801589F4);
        D_801589F4 = 0;
    }
}


void func_800E0014() {
    M2C_UNK func_800F8530(); /* extern */
    extern M2C_UNK D_801388D0;
    func_800F8530(&D_801388D0, 2);
}


void func_800E003C() {
    M2C_UNK func_800F8268(); /* extern */
    extern M2C_UNK D_801388D0;
    func_800F8268(&D_801388D0);
}


void func_800E0064(s32 arg0) {
    extern s32 D_80159284;
    D_80159284 = arg0;
}


void func_800E0070(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    extern s32 D_80159288;
    extern s32 D_8015928C;
    extern s32 D_80159290;
    extern s32 D_80159294;
    D_80159288 = arg0;
    D_8015928C = arg1;
    if (arg2 >= 0) {
        D_80159290 = arg2;
    }
    if (arg3 >= 0) {
        D_80159294 = arg3;
    }
}


void func_800E0098(s32 arg0) {
    extern s32 D_80159298;
    D_80159298 = arg0 != 0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E00A8);


s32 func_800E0118(s32 arg0, M2C_UNK arg1, s32 arg2, M2C_UNK arg3, s32 arg4) {
    M2C_UNK func_800E00A8(); /* extern */
    s32 func_800E1EB4(); /* extern */
    s32 temp_s0;

    temp_s0 = func_800E1EB4(arg1) * 6;
    func_800E00A8(arg0, arg1, (arg2 + (arg4 >> 1)) - (temp_s0 >> 1), arg3);
    return temp_s0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E01AC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E026C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E028C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E02BC);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E02F4);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E032C);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E0350);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E03AC);


void func_800E0408(s32 arg0) {
    extern s32 D_800E0268;
    D_800E0268 = arg0;
}

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E0418);

INCLUDE_ASM("asm/us/civ2/nonmatchings/game", func_800E065C);

INCLUDE_RODATA("asm/us/civ2/nonmatchings/game", D_80013234);
