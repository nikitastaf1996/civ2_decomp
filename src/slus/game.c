#include "common.h"
#include "m2c_macros.h"
void *memcpy();

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80017FE4);


void func_8001820C() {
    M2C_UNK PadStop(); /* extern */
    M2C_UNK ResetGraph(); /* extern */
    M2C_UNK StopCallback(); /* extern */
    M2C_UNK _96_remove(); /* extern */
    M2C_UNK func_800326BC(); /* extern */
    M2C_UNK func_800326CC(); /* extern */
    extern M2C_UNK D_80010000;
    extern void * D_80056514;
    extern s32 D_8005651C;
    M2C_FIELD(D_80056514, s32 *, 0x14) = (s32) D_8005651C;
    ResetGraph(3);
    PadStop();
    StopCallback();
    _96_remove();
    func_800326CC();
    func_800326BC(&D_80010000, 0x801FF000, 0x1000);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001827C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800184C0);


void func_80018510(void *arg0, s16 arg1, s16 arg2, s16 arg3, s32 arg4, void *arg5) {
    extern s32 D_80055250;
    extern M2C_UNK D_80066598;
    extern M2C_UNK D_8008E598;
    extern M2C_UNK D_800B6598;
    extern M2C_UNK D_800BDD98;
    s16 var_v1;

    if (D_80055250 == 1) {
        M2C_FIELD(arg0, M2C_UNK **, 0) = &D_80066598;
        M2C_FIELD(arg0, M2C_UNK **, 4) = &D_8008E598;
        M2C_FIELD(arg0, s32 *, 8) = 0;
        M2C_FIELD(arg0, M2C_UNK **, 0xC) = &D_800B6598;
        M2C_FIELD(arg0, M2C_UNK **, 0x10) = &D_800BDD98;
        M2C_FIELD(arg0, s32 *, 0x14) = 0;
        M2C_FIELD(arg0, s32 *, 0x28) = 0;
        M2C_FIELD(arg0, s32 *, 0x34) = 0;
        D_80055250 = 0;
    }
    M2C_FIELD(arg0, s16 *, 0x18) = arg1;
    M2C_FIELD(arg0, s16 *, 0x1A) = arg2;
    M2C_FIELD(arg0, s16 *, 0x20) = arg3;
    M2C_FIELD(arg0, s16 *, 0x22) = (s16) arg4;
    var_v1 = 0x10;
    if (M2C_FIELD(arg5, s32 *, 4) != 0) {
        var_v1 = 0x18;
    }
    M2C_FIELD(arg0, s16 *, 0x30) = var_v1;
    M2C_FIELD(arg0, s32 *, 0x38) = (s32) M2C_FIELD(arg5, s32 *, 4);
    if (M2C_FIELD(arg0, s32 *, 0x28) == 0) {
        M2C_FIELD(arg0, s16 *, 0x2C) = arg1;
        M2C_FIELD(arg0, s16 *, 0x2E) = arg2;
        return;
    }
    M2C_FIELD(arg0, s16 *, 0x2C) = arg3;
    M2C_FIELD(arg0, s16 *, 0x2E) = (s16) arg4;
}


void func_800185CC(s8 *arg0) {
    s32 CdControl(); /* extern */
    s32 CdRead2(); /* extern */
    M2C_UNK VSync(); /* extern */
    s8 sp10;

    do {
loop_1:
        if (CdControl(2, arg0, 0) == 0) {
            goto loop_1;
        }
        sp10 = 0;
loop_3:
        if (CdControl(0xE, &sp10, 0) == 0) {
            goto loop_3;
        }
        VSync(3);
    } while (CdRead2(0x160) == 0);
}


void func_8001863C(s32 arg0, M2C_UNK arg1, void *arg2) {
    M2C_UNK DecDCTReset(); /* extern */
    M2C_UNK DecDCToutCallback(); /* extern */
    M2C_UNK SsSetMVol(); /* extern */
    M2C_UNK SsSetSerialAttr(); /* extern */
    M2C_UNK SsSetSerialVol(); /* extern */
    M2C_UNK StSetRing(); /* extern */
    M2C_UNK StSetStream(); /* extern */
    void func_800185CC();
    extern M2C_UNK D_80056598;
    SsSetSerialAttr(0, 0, 1);
    SsSetSerialVol(0, 0x5F, 0x5F);
    SsSetMVol(0x7F, 0x7F);
    DecDCTReset(0);
    DecDCToutCallback(arg1);
    StSetRing(&D_80056598, 0x20);
    StSetStream(M2C_FIELD(arg2, s32 *, 4), M2C_FIELD(arg2, s32 *, 8), -1, 0, 0);
    func_800185CC(arg0);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800186E4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80018878);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001891C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800189C0);

void func_80018EF4(u8 *arg0) {
    M2C_UNK func_8003276C();
    s32 a = arg0[0] << 8;
    s32 b = arg0[1];
    b |= a;
    func_8003276C(b);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80018F24);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019028);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019118);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019270);


void func_800193B8() {
    M2C_UNK func_8002C23C(); /* extern */
    func_8002C23C();
}


void func_800193D8() {
    M2C_UNK func_8002C14C(); /* extern */
    func_8002C14C();
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800193F8);

void func_800195D8(void *arg0, u16 *arg1, u16 *arg2, s32 arg3) {
    M2C_FIELD(arg0, s32 *, 0) = (s32) ((*arg1 & 0x1F) << 0xC);
    M2C_FIELD(arg0, s32 *, 4) = (s32) ((*arg1 & 0x3E0) << 7);
    M2C_FIELD(arg0, s32 *, 8) = (s32) ((*arg1 & 0x7C00) * 4);
    M2C_FIELD(arg0, s32 *, 0xC) = (s32) M2C_FIELD(arg0, s32 *, 0);
    M2C_FIELD(arg0, s32 *, 0x10) = (s32) M2C_FIELD(arg0, s32 *, 4);
    M2C_FIELD(arg0, s32 *, 0x14) = (s32) M2C_FIELD(arg0, s32 *, 8);
    M2C_FIELD(arg0, s32 *, 0x18) = (s32) ((*arg2 & 0x1F) << 0xC);
    M2C_FIELD(arg0, s32 *, 0x1C) = (s32) ((*arg2 & 0x3E0) << 7);
    M2C_FIELD(arg0, s32 *, 0x20) = (s32) ((*arg2 & 0x7C00) * 4);
    M2C_FIELD(arg0, s32 *, 0x24) = (s32) ((s32) (M2C_FIELD(arg0, s32 *, 0) - M2C_FIELD(arg0, s32 *, 0x18)) / arg3);
    M2C_FIELD(arg0, s32 *, 0x28) = (s32) ((s32) (M2C_FIELD(arg0, s32 *, 4) - M2C_FIELD(arg0, s32 *, 0x1C)) / arg3);
    M2C_FIELD(arg0, s32 *, 0x2C) = (s32) ((s32) (M2C_FIELD(arg0, s32 *, 8) - M2C_FIELD(arg0, s32 *, 0x20)) / arg3);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019740);


void func_80019858() {
    extern M2C_UNK D_8012A0E0;
    s32 temp_v0;
    s32 var_a0;

    var_a0 = 0x64;
    do {
        temp_v0 = var_a0 * 0x24;
        *(s32 *)(((s8 *)&D_8012A0E0) + temp_v0) = *(s32 *)(((s8 *)&D_8012A0E0) + temp_v0) | 0x80000000;
        var_a0 += 1;
    } while (var_a0 < 0xA4);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800198A4);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80010000);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016740);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016758);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016770);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016788);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800167A0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800167B8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800167D0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800167E8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016800);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016818);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016830);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016848);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016860);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016878);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016890);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800168A8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800168C0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800168D8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800168F0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016908);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_8001691C);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016930);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016944);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016958);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_8001696C);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800169CC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800169F4);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016A14);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016A34);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016A54);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019A24);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019B9C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019C94);


void func_80019D9C() {
    M2C_UNK CdGetToc(); /* extern */
    void func_8001B608();
    extern M2C_UNK D_8012A038;
    func_8001B608(&D_8012A038, 0x60);
    CdGetToc(&D_8012A038);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019DD4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80019EFC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001A004);


void func_8001A198(s32 arg0, s32 arg1) {
    M2C_UNK func_800189C0(); /* extern */
    func_800189C0(arg0, arg1 & 0xFFFF);
}

void func_8001A1B8() {
    M2C_UNK ClearImage();
    M2C_UNK DrawSync();
    void func_8001B648();
    struct { s16 x, y, w, h; } rect;

    func_8001B648();
    rect.x = 0;
    rect.y = 0;
    rect.w = 0x280;
    rect.h = 0xF0;
    ClearImage(&rect, 0, 0, 0);
    DrawSync(0);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001A20C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001A29C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001A354);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001A648);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001A924);


void func_8001AA58(s32 arg0, s32 arg1) {
    s32 func_80019DD4(); /* extern */
    extern M2C_UNK D_80139DC8;
    if (arg1 == 1) {
        do {

        } while (func_80019DD4(arg0, 1, &D_80139DC8) == 0);
        return;
    }
    func_80019DD4(arg0, 0, &D_80139DC8);
}


void func_8001AABC(s32 arg0, M2C_UNK arg1, s32 arg2) {
    s32 func_80019EFC(); /* extern */
    extern M2C_UNK D_80139DC8;
    if (arg2 == 1) {
        do {

        } while (func_80019EFC(arg0, arg1, 1, &D_80139DC8) == 0);
        return;
    }
    func_80019EFC(arg0, arg1, 0, &D_80139DC8);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001AB34);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001ACE4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001AEC4);

void func_8001B074(s32 arg0, void *arg1, s32 arg2) {
    void *temp_v1;

    temp_v1 = (arg2 * 0x24) + arg0;
    M2C_FIELD(temp_v1, s32 *, 0) = (s32) ((M2C_FIELD(arg1, u16 *, 0) & 3) << 0x18);
    M2C_FIELD(temp_v1, u16 *, 0xC) = (u16) M2C_FIELD(arg1, u16 *, 0x42);
    M2C_FIELD(temp_v1, u16 *, 0x10) = (u16) M2C_FIELD(arg1, u16 *, 2);
    M2C_FIELD(temp_v1, u16 *, 0x12) = (u16) M2C_FIELD(arg1, u16 *, 0x22);
    M2C_FIELD(temp_v1, u8 *, 0x14) = 0x80;
    M2C_FIELD(temp_v1, u8 *, 0x15) = 0x80;
    M2C_FIELD(temp_v1, u8 *, 0x16) = 0x80;
    M2C_FIELD(temp_v1, s16 *, 0x18) = 0;
    M2C_FIELD(temp_v1, s16 *, 0x1A) = 0;
    M2C_FIELD(temp_v1, s16 *, 0x1C) = 0x1000;
    M2C_FIELD(temp_v1, s16 *, 0x1E) = 0x1000;
    M2C_FIELD(temp_v1, s32 *, 0x20) = 0;
}

void func_8001B0E8(s32 arg0, s32 arg1, s16 arg2, s16 arg3, u16 arg4, u16 arg5, u8 arg6, u8 arg7) {
    void *temp_v0;

    temp_v0 = (arg1 * 0x24) + arg0;
    M2C_FIELD(temp_v0, s16 *, 4) = arg2;
    M2C_FIELD(temp_v0, s16 *, 6) = arg3;
    M2C_FIELD(temp_v0, u16 *, 8) = arg4;
    M2C_FIELD(temp_v0, u16 *, 0xA) = arg5;
    M2C_FIELD(temp_v0, u8 *, 0xE) = arg6;
    M2C_FIELD(temp_v0, u8 *, 0xF) = arg7;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B124);

s32 func_8001B250() {
    s32 func_8001B124();
    extern s32 D_800552A8;
    extern s32 D_800552AC;
    extern s32 D_800552B0;
    extern s32 D_80056504;
    extern s32 D_80056510;
    extern s32 D_8005651C;
    extern s32 D_8005652C;

    D_8005651C += 1;
    D_800552A8 = func_8001B124(0);
    D_800552A8 = (func_8001B124(1) << 16) | D_800552A8;
    D_800552AC = D_800552B0 & D_800552A8;
    D_800552AC ^= D_800552A8;
    D_800552B0 = D_800552A8;
    D_8005652C += D_800552A8 + D_800552AC;
    D_80056510 = D_800552A8;
    D_80056504 = D_800552AC;
    return D_800552A8 & 0xFFFF;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B2EC);


s32 func_8001B338() {
    s32 func_8002D96C(); /* extern */
    return func_8002D96C() & 0xFFFF;
}


s32 func_8001B358() {
    s32 func_8002D96C(); /* extern */
    return func_8002D96C() & 0xFF;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B378);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B428);


void func_8001B488(s8 arg0) {
    extern M2C_UNK D_800CC1E8;
    s32 var_v1;

    var_v1 = 9;
loop_1:
    if (*(u8 *)(((s8 *)&D_800CC1E8) + var_v1) == 0) {
        *(u8 *)(((s8 *)&D_800CC1E8) + var_v1) = arg0;
        var_v1 -= 1;
        if (var_v1 > 0) {
            goto loop_1;
        }
    }
}


void func_8001B4C4() {
    void func_8001B488();
    func_8001B488(0x20);
}


void func_8001B4E4() {
    void func_8001B488();
    func_8001B488(0x2E);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B504);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B540);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B588);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B5C8);

void func_8001B608(s8 *arg0, s32 arg1) {
    s32 var_a1;
    s8 *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    if (var_a1 != 0) {
        do {
            *var_a0 = 0;
            var_a1 -= 1;
            var_a0 += 1;
        } while (var_a1 != 0);
    }
}

void func_8001B628(s8 *arg0, s32 arg1, s8 arg2) {
    s32 var_a1;
    s8 *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    if (var_a1 != 0) {
        do {
            *var_a0 = arg2;
            var_a1 -= 1;
            var_a0 += 1;
        } while (var_a1 != 0);
    }
}


void func_8001B648() {
    void func_8001B608();
    extern M2C_UNK D_800CC168;
    extern M2C_UNK D_800CCDA8;
    extern M2C_UNK D_800F4DE8;
    extern M2C_UNK D_801252E8;
    extern M2C_UNK D_8012A0E0;
    extern M2C_UNK D_80172E88;
    func_8001B608(&D_8012A0E0, 0xFC00);
    func_8001B608(&D_80172E88, 0x90);
    func_8001B608(&D_800CC168, 0x40);
    func_8001B608(&D_800CCDA8, 0x40);
    func_8001B608(&D_800F4DE8, 0x500);
    func_8001B608(&D_801252E8, 0x80);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B6C0);


void func_8001B738(s32 arg0) {
    M2C_UNK func_8001B6C0(); /* extern */
    extern M2C_UNK D_80016B18;
    extern M2C_UNK D_80016B1C;
    extern M2C_UNK D_80016B20;
    extern M2C_UNK D_80016B22;
    s32 temp_v0;

    temp_v0 = arg0 * 0xC;
    func_8001B6C0(*(s32 *)(((s8 *)&D_80016B18) + temp_v0), *(s32 *)(((s8 *)&D_80016B1C) + temp_v0), *(u16 *)(((s8 *)&D_80016B20) + temp_v0), *(u16 *)(((s8 *)&D_80016B22) + temp_v0));
}


void func_8001B794(s32 arg0) {
    M2C_UNK func_8001B6C0(); /* extern */
    extern M2C_UNK D_80016BB4;
    extern M2C_UNK D_80016BB8;
    extern M2C_UNK D_80016BBC;
    extern M2C_UNK D_80016BBE;
    s32 temp_v0;

    temp_v0 = arg0 * 0xC;
    func_8001B6C0(*(s32 *)(((s8 *)&D_80016BB4) + temp_v0), *(s32 *)(((s8 *)&D_80016BB8) + temp_v0), *(u16 *)(((s8 *)&D_80016BBC) + temp_v0), *(u16 *)(((s8 *)&D_80016BBE) + temp_v0));
}


void func_8001B7F0(s32 arg0) {
    M2C_UNK SsVoKeyOff(); /* extern */
    extern M2C_UNK D_80016B18;
    extern M2C_UNK D_80016B1C;
    s32 temp_v0;

    temp_v0 = arg0 * 0xC;
    SsVoKeyOff(*(s32 *)(((s8 *)&D_80016B18) + temp_v0), *(s32 *)(((s8 *)&D_80016B1C) + temp_v0));
}


void func_8001B834(s16 arg0) {
    M2C_UNK SpuClearReverbWorkArea(); /* extern */
    M2C_UNK SsUtReverbOn(); /* extern */
    M2C_UNK SsUtSetReverbType(); /* extern */
    SpuClearReverbWorkArea();
    SsUtSetReverbType(arg0);
    SsUtReverbOn();
}


void func_8001B870() {
    M2C_UNK SpuInit(); /* extern */
    M2C_UNK SsUtSetReverbType(); /* extern */
    SpuInit();
    SsUtSetReverbType(0);
}


void func_8001B898(s32 arg0, M2C_UNK arg1) {
    s16 SsVabOpenHead(); /* extern */
    M2C_UNK SsVabTransBody(); /* extern */
    M2C_UNK SsVabTransCompleted(); /* extern */
    extern s16 D_80172F18;
    s16 temp_v0;

    temp_v0 = SsVabOpenHead(arg0, 0);
    D_80172F18 = temp_v0;
    SsVabTransBody(arg1, temp_v0);
    SsVabTransCompleted(1);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B8E4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001B9A0);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001BA5C);


void func_8001BAD4(s32 arg0, M2C_UNK arg1, s16 arg2) {
    M2C_UNK func_8001A004(); /* extern */
    func_8001A004(arg0, arg1, arg2, 1);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001BAFC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001BCC0);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001BE14);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001BF20);


void func_8001C03C(s32 arg0) {
    s32 CdControl(); /* extern */
    M2C_UNK CdIntToPos(); /* extern */
    M2C_UNK SsSetMVol(); /* extern */
    M2C_UNK SsSetSerialAttr(); /* extern */
    M2C_UNK SsSetSerialVol(); /* extern */
    extern s8 D_800564D0;
    s8 sp10;

    CdIntToPos(arg0, &D_800564D0);
    sp10 = 1;
    do {

    } while (CdControl(0xE, &sp10, 0) == 0);
    do {

    } while (CdControl(2, &D_800564D0, 0) == 0);
    SsSetSerialAttr(0, 0, 1);
    SsSetSerialVol(0, 0x78, 0x78);
    SsSetMVol(0x7F, 0x7F);
    do {

    } while (CdControl(3, NULL, 0) == 0);
}


void func_8001C0E4(s32 arg0, s32 arg1) {
    s32 CdControl(); /* extern */
    M2C_UNK CdIntToPos(); /* extern */
    M2C_UNK CdReadyCallback(); /* extern */
    M2C_UNK SsSetMVol(); /* extern */
    M2C_UNK SsSetSerialAttr(); /* extern */
    M2C_UNK SsSetSerialVol(); /* extern */
    extern s8 D_800564D0;
    extern s8 D_800564D4;
    extern s8 D_800564D8;
    M2C_UNK func_8001C1D4(); /* extern */
    s8 sp10;

    CdIntToPos(arg0, &D_800564D0);
    CdIntToPos((arg0 + arg1) - 0xF, &D_800564D4);
    CdIntToPos(arg0, &D_800564D8);
    CdReadyCallback((void *)&func_8001C1D4);
    sp10 = 5;
    do {

    } while (CdControl(0xE, &sp10, 0) == 0);
    do {

    } while (CdControl(2, &D_800564D0, 0) == 0);
    SsSetSerialAttr(0, 0, 1);
    SsSetSerialVol(0, 0x78, 0x78);
    SsSetMVol(0x7F, 0x7F);
    do {

    } while (CdControl(3, NULL, 0) == 0);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C1D4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C2D8);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C3E8);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C51C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C588);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C670);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C78C);


void func_8001C828() {
    void func_8001B870();
    M2C_UNK func_8001B9A0(); /* extern */
    M2C_UNK func_8001BF20(); /* extern */
    M2C_UNK func_8001C2D8(); /* extern */
    func_8001B870();
    func_8001BF20();
    func_8001B9A0();
    func_8001C2D8();
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001C860);


void func_8001C9EC() {
    M2C_UNK DrawSync(); /* extern */
    M2C_UNK GsClearOt(); /* extern */
    M2C_UNK GsDrawOt(); /* extern */
    s32 GsGetActiveBuff(); /* extern */
    M2C_UNK GsSetOrign(); /* extern */
    M2C_UNK GsSortClear(); /* extern */
    M2C_UNK GsSwapDispBuff(); /* extern */
    M2C_UNK ResetGraph(); /* extern */
    M2C_UNK VSync(); /* extern */
    M2C_UNK func_8001C860(); /* extern */
    M2C_UNK func_800399BC(); /* extern */
    extern s32 D_80056524;
    extern s32 D_80056530;
    extern s32 D_80056538;
    extern u8 D_80056548;
    extern u8 D_80056549;
    extern u8 D_8005654A;
    extern M2C_UNK D_800CC1F8;
    extern M2C_UNK D_8015EE88;
    s32 temp_v0;

    temp_v0 = GsGetActiveBuff();
    D_80056524 = temp_v0;
    func_800399BC((temp_v0 * 0xA000) + (void *)&D_8015EE88);
    GsClearOt(0, 0, (D_80056524 * 0x14) + (void *)&D_800CC1F8);
    func_8001C860();
    DrawSync(0);
    VSync(0);
    ResetGraph(1);
    GsSetOrign(D_80056530, D_80056538);
    GsSwapDispBuff();
    GsSortClear(D_8005654A, D_80056549, D_80056548, (D_80056524 * 0x14) + (void *)&D_800CC1F8);
    GsDrawOt((D_80056524 * 0x14) + (void *)&D_800CC1F8);
}


void func_8001CAFC(s32 arg0) {
    s32 VSync(); /* extern */
    s32 func_8001B250();
    void func_8001C9EC();
    extern s32 D_80056520;
    extern s32 D_80056550;
    s32 var_s0;

    var_s0 = arg0;
    if (var_s0 != 0) {
        do {
            var_s0 -= 1;
            func_8001C9EC();
            D_80056520 = VSync(-1);
            D_80056550 += 1;
            func_8001B250();
        } while (var_s0 != 0);
    }
}


void func_8001CB68(s32 arg0) {
    M2C_UNK func_8001A29C(); /* extern */
    s32 func_8001A354(); /* extern */
    void func_8001CAFC();
    func_8001A29C();
loop_1:
    if (func_8001A354(arg0 & 0xFF) == 0) {
        func_8001CAFC(1);
        goto loop_1;
    }
    func_8001CAFC(1);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001CBB8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016B18);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016B1C);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016B20);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BB4);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BB8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BBC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BCC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BD0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BD4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001CC58);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001CE74);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001D1A4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001D3A4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001D5D8);


void func_8001D764() {
    M2C_UNK DrawSync(); /* extern */
    M2C_UNK GsClearOt(); /* extern */
    M2C_UNK GsDrawOt(); /* extern */
    s32 GsGetActiveBuff(); /* extern */
    M2C_UNK GsSetOrign(); /* extern */
    M2C_UNK GsSortClear(); /* extern */
    M2C_UNK GsSwapDispBuff(); /* extern */
    M2C_UNK ResetGraph(); /* extern */
    M2C_UNK VSync(); /* extern */
    M2C_UNK func_8001D5D8(); /* extern */
    M2C_UNK func_800399BC(); /* extern */
    extern s32 D_80056524;
    extern s32 D_80056530;
    extern s32 D_80056538;
    extern u8 D_80056548;
    extern u8 D_80056549;
    extern u8 D_8005654A;
    extern M2C_UNK D_800CC1F8;
    extern M2C_UNK D_8015EE88;
    s32 temp_v0;

    temp_v0 = GsGetActiveBuff();
    D_80056524 = temp_v0;
    func_800399BC((temp_v0 * 0xA000) + (void *)&D_8015EE88);
    GsClearOt(0, 0, (D_80056524 * 0x14) + (void *)&D_800CC1F8);
    func_8001D5D8();
    DrawSync(0);
    VSync(0);
    ResetGraph(1);
    GsSetOrign(D_80056530, D_80056538);
    GsSwapDispBuff();
    GsSortClear(D_8005654A, D_80056549, D_80056548, (D_80056524 * 0x14) + (void *)&D_800CC1F8);
    GsDrawOt((D_80056524 * 0x14) + (void *)&D_800CC1F8);
}


void func_8001D874() {
    extern u16 D_800552C8;
    extern s32 D_8012A2B0;
    extern u16 D_8012A2B8;
    extern u16 D_8012A2DC;
    extern u16 D_8012A300;
    extern u16 D_8012A324;
    s32 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 var_v0;

    temp_v0 = D_8012A2B0 - 0x400;
    D_8012A2B0 = temp_v0;
    if (temp_v0 <= 0) {
        D_8012A2B0 = 0x168000;
    }
    if (D_800552C8 == 0) {
        temp_v0_2 = D_8012A2B8 - 1;
        D_8012A2B8 = temp_v0_2;
        if ((s16) temp_v0_2 < -0xA0) {
            D_8012A2B8 = 0x1E0;
        }
        temp_v0_3 = D_8012A2DC - 1;
        D_8012A2DC = temp_v0_3;
        if ((s16) temp_v0_3 < -0xA0) {
            D_8012A2DC = 0x1E0;
        }
        temp_v0_4 = D_8012A300 - 1;
        D_8012A300 = temp_v0_4;
        if ((s16) temp_v0_4 < -0xA0) {
            D_8012A300 = 0x1E0;
        }
        temp_v0_5 = D_8012A324 - 1;
        D_8012A324 = temp_v0_5;
        if ((s16) temp_v0_5 < -0xA0) {
            D_8012A324 = 0x1E0;
        }
        var_v0 = 4;
    } else {
        var_v0 = D_800552C8 - 1;
    }
    D_800552C8 = var_v0;
}

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016BFC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016C00);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016C04);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016C80);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016C88);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016C9C);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016CA8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016CB4);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016CDC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016D24);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016D4C);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80016D74);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80017110);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80017120);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_8001713C);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80017158);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80017164);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80017188);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800171A0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800171AC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800171C0);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800171D4);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800171E8);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001D9A0);


void func_8001DBA4(s32 arg0) {
    s32 VSync(); /* extern */
    s32 func_8001B250();
    void func_8001D764();
    void func_8001D874();
    M2C_UNK func_8001D9A0(); /* extern */
    extern s32 D_80056520;
    extern s32 D_80056550;
    s32 var_s0;

    var_s0 = arg0;
    if (var_s0 != 0) {
        do {
            var_s0 -= 1;
            func_8001D874();
            func_8001D9A0();
            func_8001D764();
            D_80056520 = VSync(-1);
            D_80056550 += 1;
            func_8001B250();
        } while (var_s0 != 0);
    }
}

void func_8001DC20() {
    M2C_UNK ClearImage();
    M2C_UNK DrawSync();
    typedef struct { s32 attr; u8 pad[0x20]; } Sprite36;
    extern Sprite36 D_8012A0E0__func_8001DC20[] __asm__("D_8012A0E0");
    struct { s16 x, y, w, h; } rect;
    s32 base = 0x45;
    s16 i;

    for (i = 0; i < 0x20; i++) {
        D_8012A0E0__func_8001DC20[base + i].attr |= 0x80000000;
    }
    rect.x = 0x380;
    rect.y = 0x100;
    rect.w = 0xFF;
    rect.h = 0x7F;
    ClearImage(&rect, 0, 0, 0);
    DrawSync(0);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001DCD4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001E018);

void func_8001E20C(s16 arg0, s16 arg1, s16 arg2) {
    void func_800193D8();
    M2C_UNK func_8001DCD4(void *, s16);
    void func_8002B570(s32 arg0, ...);
    s32 func_8002C444();
    extern M2C_UNK D_80017164;
    extern u8 D_80046F1C[];
    extern s32 D_80055330;
    s16 i;
    u8 *ptr;

    func_8002B570(&D_80017164, arg0, arg1, arg2, D_80055330);
    if (arg0 != 0x432) {
        arg1 = func_8002C444(arg0, arg1, 0x432, 1);
        arg0 = 0x432;
    }
    func_8001DC20();
    for (i = 0; i < arg1; i++) {
        ptr = &D_80046F1C[(arg0 + i) * 0x14];
        func_800193D8(ptr);
        func_8001DCD4(ptr, arg2);
    }
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001E330);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001E678);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001E8E8);

void func_8001EA80(s16 arg0, s16 arg1, s16 arg2) {
    M2C_UNK func_8001E018(s16);
    M2C_UNK func_8001E330(s16);
    M2C_UNK func_8001E678(s16);
    void func_8002B570(s32 arg0, ...);
    s32 func_8002C444();
    extern M2C_UNK D_80017188;
    s32 var_s1;

    var_s1 = arg1;
    func_8002B570(&D_80017188, arg0, var_s1, arg2);
    if (arg0 != 0x432) {
        var_s1 = func_8002C444(arg0, var_s1, 0x432, 0);
    }
    if (var_s1 < arg1) {
        var_s1 = arg1;
    }
    func_8001E330(var_s1);
    func_8001E20C(arg0, arg1, arg2);
    func_8001E018(arg1);
    func_8001E678(arg1);
}


void func_8001EB70(s16 arg0, s16 arg1, s16 arg2) {
    void func_8001E20C();
    M2C_UNK func_8001E330(); /* extern */
    func_8001E330(arg1);
    func_8001E20C(arg0, arg1, arg2);
}


void func_8001EBD0(s32 arg0) {
    M2C_UNK func_8001A29C(); /* extern */
    s32 func_8001A354(); /* extern */
    void func_8001DBA4();
    func_8001A29C();
loop_1:
    if (func_8001A354(arg0 & 0xFF) == 0) {
        func_8001DBA4(1);
        goto loop_1;
    }
    func_8001DBA4(1);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001EC20);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001ECC0);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001F0B8);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001F878);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8001FF1C);


void func_800207B4() {
    extern s32 D_8012D6E0;
    extern s32 D_8012D704;
    D_8012D704 |= 0x80000000;
    D_8012D6E0 |= 0x80000000;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800207EC);


void func_80020958() {
    extern s32 D_8012AF5C;
    extern s32 D_8012AF80;
    D_8012AF5C |= 0x80000000;
    D_8012AF80 |= 0x80000000;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80020990);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80020B10);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80020D2C);


void func_80020E98() {
    void func_8001DBA4();
    extern u16 D_8012C64E;
    extern u16 D_8012C672;
    extern u16 D_8012C696;
    extern s32 D_8012C6B4;
    s16 temp_v0;
    s16 var_s0;

    D_8012C6B4 |= 0x80000000;
    var_s0 = 0;
    do {
        D_8012C64E += 4;
        D_8012C672 += 4;
        D_8012C696 += 4;
        func_8001DBA4(1);
        temp_v0 = var_s0 + 1;
        var_s0 = temp_v0;
    } while (temp_v0 < 0x20);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80020F40);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800210AC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80021274);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80021E04);


void func_80022100() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_8001F878(); /* extern */
    M2C_UNK func_80020B10(); /* extern */
    M2C_UNK func_80021E04(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    extern s16 D_80056534;
    func_8001F0B8(0);
    D_80056534 = 1;
    D_800552CA = 1;
    func_80020B10();
    if (D_8005650C == 2) {
        func_8001EA80(7, 4, 8);
    }
    func_80021E04();
    func_8001F878(0);
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80022170);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80022AE8);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80022FD0);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800234F8);


void func_800237A8() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_80022170(); /* extern */
    M2C_UNK func_800234F8(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    func_8001F0B8(1);
    D_800552CA = 2;
    if (D_8005650C == 2) {
        func_8001EA80(0x1A, 2, 8);
    }
    func_80022170();
    if (D_8005650C == 2) {
        func_8001EA80(0x1C, 1, 8);
    }
    func_800234F8();
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80023824);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80023D0C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80023F4C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800243BC);


void func_80024628() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_800243BC(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    func_8001F0B8(1);
    D_800552CA = 3;
    if (D_8005650C == 2) {
        func_8001EA80(0x37, 2, 8);
        func_8001EA80(0x39, 5, 8);
        func_8001EA80(0x3A, 5, 8);
        func_8001EA80(0x3E, 3, 8);
        func_8001EA80(0x41, 3, 8);
        func_8001EA80(0x44, 4, 8);
    }
    func_800243BC();
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800246CC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80024BF4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80024E44);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002556C);


void func_80025834() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_8002556C(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    func_8001F0B8(1);
    D_800552CA = 4;
    if (D_8005650C == 2) {
        func_8001EA80(0x4A, 3, 8);
        func_8001EA80(0x4D, 4, 8);
        func_8001EA80(0x51, 5, 8);
        func_8001EA80(0x56, 3, 8);
    }
    func_8002556C();
    D_800552CA = 0;
}


void func_800258B8() {
    void func_8001B074();
    void func_8001DBA4();
    extern M2C_UNK D_8012A0E0;
    extern s16 D_8012C64C;
    extern s16 D_8012C64E__func_800258B8 __asm__("D_8012C64E");
    extern s16 D_8012C650;
    extern s16 D_8012C652;
    extern s8 D_8012C656;
    extern s8 D_8012C657;
    extern s16 D_8012C662;
    extern u16 D_8012C666;
    extern s16 D_8012C670;
    extern s16 D_8012C672__func_800258B8 __asm__("D_8012C672");
    extern s16 D_8012C674;
    extern s16 D_8012C676;
    extern s8 D_8012C67A;
    extern s8 D_8012C67B;
    extern s16 D_8012C686;
    extern u16 D_8012C68A;
    extern s16 D_8012C694;
    extern s16 D_8012C696__func_800258B8 __asm__("D_8012C696");
    extern s16 D_8012C698;
    extern s16 D_8012C69A;
    extern s8 D_8012C69E;
    extern s8 D_8012C69F;
    extern s16 D_8012C6A8;
    extern s16 D_8012C6AA;
    extern u16 D_8012C6AC;
    extern u16 D_8012C6AE;
    extern s32 D_8012C6B0;
    extern M2C_UNK D_8014C15C;
    extern M2C_UNK D_8014C1E4;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 var_s0;
    s16 var_s0_2;
    s32 temp_v0_3;

    func_8001B074(&D_8012A0E0, &D_8014C15C, 0x10A);
    D_8012C64C = 0x18;
    D_8012C64E__func_800258B8 = 0x8C;
    D_8012C650 = 0x30;
    D_8012C652 = 0x18;
    D_8012C656 = 0;
    D_8012C657 = 0x60;
    D_8012C662 = 0xC;
    D_8012C666 = 0;
    func_8001B074(&D_8012A0E0, &D_8014C15C, 0x10B);
    D_8012C670 = 0x58;
    D_8012C672__func_800258B8 = 0x8C;
    D_8012C674 = 0x30;
    D_8012C676 = 0x18;
    D_8012C67A = 0x60;
    D_8012C67B = 0x60;
    D_8012C686 = 0xC;
    D_8012C68A = 0;
    var_s0 = 0;
    do {
        D_8012C666 += 0x100;
        D_8012C68A += 0x100;
        func_8001DBA4(1);
        temp_v0 = var_s0 + 1;
        var_s0 = temp_v0;
    } while (temp_v0 < 0x10);
    func_8001DBA4(1);
    D_8012C64E__func_800258B8 = 0x80;
    D_8012C662 = 0;
    D_8012C672__func_800258B8 = 0x80;
    D_8012C686 = 0;
    func_8001B074(&D_8012A0E0, &D_8014C1E4, 0x10C);
    D_8012C694 = 0x50;
    D_8012C696__func_800258B8 = 0xC0;
    D_8012C698 = 0x30;
    D_8012C69A = 0x40;
    D_8012C69E = 0x58;
    D_8012C69F = 0x10;
    D_8012C6A8 = 0x18;
    D_8012C6AA = 0x20;
    D_8012C6AC = 0;
    D_8012C6AE = 0;
    D_8012C6B0 = 0;
    var_s0_2 = 0;
    do {
        D_8012C6AC += 0x80;
        D_8012C6AE += 0x80;
        temp_v0_3 = D_8012C6B0 + 0x16800;
        D_8012C6B0 = temp_v0_3;
        if (temp_v0_3 == 0x168000) {
            D_8012C6B0 = 0;
        }
        func_8001DBA4(1);
        temp_v0_2 = var_s0_2 + 1;
        var_s0_2 = temp_v0_2;
    } while (temp_v0_2 < 0x20);
    func_8001DBA4(1);
}


void func_80025B6C() {
    void func_8001DBA4();
    extern s32 D_8012C648;
    extern s16 D_8012C64C;
    extern s16 D_8012C660;
    extern u16 D_8012C664;
    extern s32 D_8012C66C;
    extern s16 D_8012C670;
    extern s16 D_8012C684;
    extern u16 D_8012C688;
    extern s32 D_8012C690;
    extern u16 D_8012C6AC;
    extern u16 D_8012C6AE;
    extern s32 D_8012C6B0;
    s16 temp_v0;
    s16 var_s0;
    s32 temp_v0_2;

    D_8012C64C = 0x30;
    D_8012C660 = 0x18;
    D_8012C670 = 0x70;
    D_8012C684 = 0x18;
    D_8012C6B0 = 0x168000;
    var_s0 = 0;
    do {
        D_8012C664 -= 0x80;
        D_8012C688 -= 0x80;
        D_8012C6AC -= 0x80;
        D_8012C6AE -= 0x80;
        temp_v0_2 = D_8012C6B0 + 0xFFFE9800;
        D_8012C6B0 = temp_v0_2;
        if (temp_v0_2 == 0) {
            D_8012C6B0 = 0x168000;
        }
        func_8001DBA4(1);
        temp_v0 = var_s0 + 1;
        var_s0 = temp_v0;
    } while (temp_v0 < 0x20);
    func_8001DBA4(1);
    D_8012C648 |= 0x80000000;
    D_8012C66C |= 0x80000000;
    D_8012C690 |= 0x80000000;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80025CDC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80025DB8);


void func_80025FD0() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_80025DB8(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    func_8001F0B8(1);
    D_800552CA = 5;
    if (D_8005650C == 2) {
        func_8001EA80(0x6B, 2, 8);
        func_8001EA80(0x6D, 3, 8);
        func_8001EA80(0x70, 5, 8);
    }
    func_80025DB8();
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80026044);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80026EEC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800270FC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80027244);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002736C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_800275A8);


void func_80027BC0() {
    void func_8001DBA4();
    extern u16 D_80056534__func_80027BC0 __asm__("D_80056534");
    extern M2C_UNK D_8012A0E0;
    extern M2C_UNK D_8012A0F4;
    extern M2C_UNK D_8012A0F5;
    extern M2C_UNK D_8012A0F6;
    extern s32 D_8012A344;
    extern u16 D_8012A360;
    extern s32 D_8012A368;
    extern u16 D_8012A384;
    extern s32 D_8012A5A8;
    extern u16 D_8012A5C4;
    extern s32 D_8012C8AC;
    extern u8 D_8012C8C0;
    extern u8 D_8012C8C1;
    extern u8 D_8012C8C2;
    extern s32 D_8012C8D0;
    extern s32 D_8012C8F4;
    extern M2C_UNK D_8012C908;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 var_s0;
    s16 var_s0_2;
    s32 temp_v1;
    s32 temp_v1_2;

    var_s0 = 0;
    do {
        D_8012A360 -= 0x80;
        D_8012A5C4 -= 0x80;
        D_8012A384 -= 0x80;
        func_8001DBA4(1);
        temp_v0 = var_s0 + 1;
        var_s0 = temp_v0;
    } while (temp_v0 < 0x20);
    func_8001DBA4(1);
    D_8012A344 |= 0x80000000;
    D_8012A5A8 |= 0x80000000;
    D_8012A368 |= 0x80000000;
    var_s0_2 = 0;
    do {
        M2C_FIELD(&D_8012C908, u8 *, 0) = (u8) (M2C_FIELD(&D_8012C908, u8 *, 0) - 2);
        M2C_FIELD(&D_8012C908, u8 *, 1) = (u8) (M2C_FIELD(&D_8012C908, u8 *, 1) - 2);
        M2C_FIELD(&D_8012C908, u8 *, 2) = (u8) (M2C_FIELD(&D_8012C908, u8 *, 2) - 2);
        D_8012C8C0 -= 2;
        D_8012C8C1 -= 2;
        D_8012C8C2 -= 2;
        temp_v1 = (D_80056534__func_80027BC0 + 0x11E) * 0x24;
        *(u8 *)(((s8 *)&D_8012A0F4) + temp_v1) = *(u8 *)(((s8 *)&D_8012A0F4) + temp_v1) - 2;
        *(u8 *)(((s8 *)&D_8012A0F5) + temp_v1) = *(u8 *)(((s8 *)&D_8012A0F5) + temp_v1) - 2;
        *(u8 *)(((s8 *)&D_8012A0F6) + temp_v1) = *(u8 *)(((s8 *)&D_8012A0F6) + temp_v1) - 2;
        func_8001DBA4(1);
        temp_v0_2 = var_s0_2 + 1;
        var_s0_2 = temp_v0_2;
    } while (temp_v0_2 < 0x40);
    func_8001DBA4(1);
    D_8012C8D0 |= 0x80000000;
    D_8012C8F4 |= 0x80000000;
    D_8012C8AC |= 0x80000000;
    temp_v1_2 = (D_80056534__func_80027BC0 + 0x11E) * 0x24;
    *(s32 *)(((s8 *)&D_8012A0E0) + temp_v1_2) = *(s32 *)(((s8 *)&D_8012A0E0) + temp_v1_2) | 0x80000000;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80027E60);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80027EC4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80028030);


void func_8002830C() {
    s32 CdReadSync(); /* extern */
    M2C_UNK func_8001ACE4(); /* extern */
    void func_8001DBA4();
    M2C_UNK func_80027244(); /* extern */
    M2C_UNK func_8002736C(); /* extern */
    M2C_UNK func_800275A8(); /* extern */
    M2C_UNK func_80028030(); /* extern */
    extern u16 D_80056534__func_8002830C __asm__("D_80056534");
    extern M2C_UNK D_8014C2B0;
    func_80027244(D_80056534__func_8002830C);
    func_8002736C(D_80056534__func_8002830C);
    do {
        func_8001DBA4(1);
    } while (CdReadSync(1, 0) > 0);
    func_8001ACE4(&D_8014C2B0, 0x280, 0x100, 0, 0xF6);
    func_800275A8(D_80056534__func_8002830C);
    func_80028030();
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80028394);


void func_800286EC() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_8001F878(); /* extern */
    M2C_UNK func_80028394(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    D_800552CA = 6;
    if (D_8005650C == 2) {
        func_8001F0B8(1);
        func_8001EA80(0x77, 2, 8);
        func_8001EA80(0x79, 3, 8);
        func_8001EA80(0x7C, 4, 8);
    }
    func_8001F878(1);
    func_80028394();
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002876C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80028BC4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80028F0C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80029478);


void func_80029730() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_80029478(); /* extern */
    extern s8 D_800552CA;
    extern u16 D_8005650C;
    func_8001F0B8(1);
    D_800552CA = 7;
    if (D_8005650C == 2) {
        func_8001EA80(0x412, 2, 8);
    }
    func_80029478();
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80029784);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_80029978);


void func_80029F80() {
    void func_8001DBA4();
    extern s32 D_8012C648;
    extern u16 D_8012C664;
    extern s32 D_8012C690;
    extern u16 D_8012C696;
    extern s16 D_8012C6AA;
    extern u16 D_8012C6AE;
    extern s32 D_8012C6B4;
    extern u16 D_8012C6BA;
    extern s16 D_8012C6CE;
    extern M2C_UNK D_8012C6D0;
    extern s32 D_8012C6D8;
    extern u16 D_8012C6DE;
    extern s16 D_8012C6F2;
    extern M2C_UNK D_8012C6F4;
    extern s32 D_8012C6FC;
    extern s16 D_8012C702;
    extern s16 D_8012C716;
    extern u16 D_8012C71A;
    extern s32 D_8012C720;
    extern s16 D_8012C726;
    extern s16 D_8012C73A;
    extern u16 D_8012C73E;
    extern s32 D_8012C744;
    extern s16 D_8012C74A;
    extern s16 D_8012C75E;
    extern u16 D_8012C762;
    extern s32 D_8012C768;
    extern u16 D_8012C76E;
    extern s16 D_8012C782;
    extern u16 D_8012C786;
    extern s32 D_8012C78C;
    extern u16 D_8012C792;
    extern s16 D_8012C7A6;
    extern u16 D_8012C7AA;
    extern s32 D_8012C7B0;
    extern u16 D_8012C7B6;
    extern s16 D_8012C7CA;
    extern u16 D_8012C7CE;
    extern s32 D_8012C7D4;
    extern u16 D_8012C7DA;
    extern s16 D_8012C7EE;
    extern u16 D_8012C7F2;
    extern s32 D_8012C7F8;
    extern u16 D_8012C7FE;
    extern s16 D_8012C812;
    extern u16 D_8012C816;
    extern s32 D_8012C81C;
    extern u16 D_8012C822;
    extern s16 D_8012C836;
    extern u16 D_8012C83A;
    extern s32 D_8012C840;
    extern u16 D_8012C846;
    extern s16 D_8012C85A;
    extern u16 D_8012C85E;
    extern s32 D_8012C864;
    extern u16 D_8012C86A;
    extern s16 D_8012C87E;
    extern u16 D_8012C882;
    extern s32 D_8012C888;
    extern u16 D_8012C88E;
    extern s16 D_8012C8A2;
    extern u16 D_8012C8A6;
    extern s32 D_8012C8AC;
    extern u16 D_8012C8B2;
    extern s16 D_8012C8C6;
    extern u16 D_8012C8CA;
    extern s32 D_8012C8D0;
    extern u16 D_8012C8D6;
    extern s16 D_8012C8EA;
    extern u16 D_8012C8EE;
    extern s32 D_8012C8F4;
    extern u16 D_8012C8FA;
    extern s16 D_8012C90E;
    extern u16 D_8012C912;
    extern s32 D_8012C918;
    extern M2C_UNK D_8012C91C;
    extern s16 D_8012C932;
    extern u16 D_8012C936;
    extern s32 D_8012C93C;
    extern u16 D_8012C942;
    extern s16 D_8012C956;
    extern u16 D_8012C95A;
    extern s32 D_8012C960;
    extern u16 D_8012C966;
    extern s16 D_8012C97A;
    extern u16 D_8012C97E;
    extern s32 D_8012C984;
    extern u16 D_8012C98A;
    extern s16 D_8012C99E;
    extern u16 D_8012C9A2;
    extern s32 D_8012C9A8;
    extern u16 D_8012C9AE;
    extern s16 D_8012C9C2;
    extern u16 D_8012C9C6;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_8;
    s16 temp_v0_9;
    s16 var_s0;
    s16 var_s0_2;
    s16 var_s0_3;
    s16 var_s0_4;
    s16 var_s0_5;
    s16 var_s0_6;
    s16 var_s0_7;
    s16 var_s0_8;
    s16 var_s0_9;

    D_8012C696 += 8;
    D_8012C6AA = 8;
    D_8012C792 += 8;
    D_8012C7A6 = 8;
    D_8012C7B6 += 8;
    D_8012C7CA = 8;
    var_s0 = 0;
    do {
        D_8012C6AE -= 0x100;
        D_8012C7AA -= 0x100;
        D_8012C7CE -= 0x100;
        func_8001DBA4(1);
        temp_v0 = var_s0 + 1;
        var_s0 = temp_v0;
    } while (temp_v0 < 0x10);
    D_8012C690 |= 0x80000000;
    D_8012C78C |= 0x80000000;
    D_8012C7B0 |= 0x80000000;
    D_8012C6BA += 8;
    D_8012C6CE = 8;
    D_8012C7DA += 8;
    D_8012C7EE = 8;
    D_8012C7FE += 8;
    D_8012C812 = 8;
    var_s0_2 = 0;
    do {
        M2C_FIELD(&D_8012C6D0, u16 *, 2) = (u16) (M2C_FIELD(&D_8012C6D0, u16 *, 2) - 0x100);
        D_8012C7F2 -= 0x100;
        D_8012C816 -= 0x100;
        func_8001DBA4(1);
        temp_v0_2 = var_s0_2 + 1;
        var_s0_2 = temp_v0_2;
    } while (temp_v0_2 < 0x10);
    D_8012C6B4 |= 0x80000000;
    D_8012C7D4 |= 0x80000000;
    D_8012C7F8 |= 0x80000000;
    D_8012C6DE += 0x10;
    D_8012C6F2 = 0x10;
    D_8012C822 += 8;
    D_8012C836 = 8;
    D_8012C846 += 8;
    D_8012C85A = 8;
    var_s0_3 = 0;
    do {
        M2C_FIELD(&D_8012C6F4, u16 *, 2) = (u16) (M2C_FIELD(&D_8012C6F4, u16 *, 2) - 0x100);
        D_8012C83A -= 0x100;
        D_8012C85E -= 0x100;
        func_8001DBA4(1);
        temp_v0_3 = var_s0_3 + 1;
        var_s0_3 = temp_v0_3;
    } while (temp_v0_3 < 0x10);
    D_8012C6D8 |= 0x80000000;
    D_8012C81C |= 0x80000000;
    D_8012C840 |= 0x80000000;
    D_8012C702 = 0x67;
    D_8012C716 = 0xC;
    D_8012C86A += 8;
    D_8012C87E = 8;
    D_8012C88E += 8;
    D_8012C8A2 = 8;
    var_s0_4 = 0;
    do {
        D_8012C71A -= 0x100;
        D_8012C882 -= 0x100;
        D_8012C8A6 -= 0x100;
        func_8001DBA4(1);
        temp_v0_4 = var_s0_4 + 1;
        var_s0_4 = temp_v0_4;
    } while (temp_v0_4 < 0x10);
    D_8012C6FC |= 0x80000000;
    D_8012C864 |= 0x80000000;
    D_8012C888 |= 0x80000000;
    D_8012C726 = 0x7B;
    D_8012C73A = 0xC;
    D_8012C8B2 += 8;
    D_8012C8C6 = 8;
    D_8012C8D6 += 8;
    D_8012C8EA = 8;
    var_s0_5 = 0;
    do {
        D_8012C73E -= 0x100;
        D_8012C8CA -= 0x100;
        D_8012C8EE -= 0x100;
        func_8001DBA4(1);
        temp_v0_5 = var_s0_5 + 1;
        var_s0_5 = temp_v0_5;
    } while (temp_v0_5 < 0x10);
    D_8012C720 |= 0x80000000;
    D_8012C8AC |= 0x80000000;
    D_8012C8D0 |= 0x80000000;
    D_8012C74A = 0x8E;
    D_8012C75E = 0xA;
    D_8012C8FA += 8;
    D_8012C90E = 8;
    M2C_FIELD(&D_8012C91C, u16 *, 2) = (u16) (M2C_FIELD(&D_8012C91C, u16 *, 2) + 8);
    D_8012C932 = 8;
    var_s0_6 = 0;
    do {
        D_8012C762 -= 0x100;
        D_8012C912 -= 0x100;
        D_8012C936 -= 0x100;
        func_8001DBA4(1);
        temp_v0_6 = var_s0_6 + 1;
        var_s0_6 = temp_v0_6;
    } while (temp_v0_6 < 0x10);
    D_8012C744 |= 0x80000000;
    D_8012C8F4 |= 0x80000000;
    D_8012C918 |= 0x80000000;
    D_8012C76E += 8;
    D_8012C782 = 8;
    D_8012C942 += 8;
    D_8012C956 = 8;
    D_8012C966 += 8;
    D_8012C97A = 8;
    var_s0_7 = 0;
    do {
        D_8012C786 -= 0x100;
        D_8012C95A -= 0x100;
        D_8012C97E -= 0x100;
        func_8001DBA4(1);
        temp_v0_7 = var_s0_7 + 1;
        var_s0_7 = temp_v0_7;
    } while (temp_v0_7 < 0x10);
    D_8012C768 |= 0x80000000;
    D_8012C93C |= 0x80000000;
    D_8012C960 |= 0x80000000;
    D_8012C98A += 8;
    D_8012C99E = 8;
    D_8012C9AE += 8;
    D_8012C9C2 = 8;
    var_s0_8 = 0;
    do {
        D_8012C9A2 -= 0x100;
        D_8012C9C6 -= 0x100;
        func_8001DBA4(1);
        temp_v0_8 = var_s0_8 + 1;
        var_s0_8 = temp_v0_8;
    } while (temp_v0_8 < 0x10);
    D_8012C984 |= 0x80000000;
    D_8012C9A8 |= 0x80000000;
    var_s0_9 = 0;
    do {
        D_8012C664 -= 0x80;
        func_8001DBA4(1);
        temp_v0_9 = var_s0_9 + 1;
        var_s0_9 = temp_v0_9;
    } while (temp_v0_9 < 0x30);
    D_8012C648 |= 0x80000000;
    func_8001DBA4(2);
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002A87C);


void func_8002A9E8() {
    extern s32 D_8012CC0C;
    extern s32 D_8012CC30;
    D_8012CC0C |= 0x80000000;
    D_8012CC30 |= 0x80000000;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002AA20);


s32 func_8002ABA8() {
    void func_800193D8();
    void func_8001B738();
    void func_8001DBA4();
    M2C_UNK func_8001FF1C(); /* extern */
    void func_800207B4();
    M2C_UNK func_80029784(); /* extern */
    void func_80029F80();
    extern M2C_UNK D_8004C264;
    extern s8 D_800552CD;
    extern s8 D_800552CE;
    extern s32 D_80056504;
    extern u16 D_80056518;
    extern u16 D_80056528;
    extern u16 D_80056534__func_8002ABA8 __asm__("D_80056534");
    D_80056528 = 7;
    D_80056534__func_8002ABA8 = 0;
    D_80056518 = 0;
    D_800552CE = 0;
    D_800552CD = 0;
    func_800193D8(&D_8004C264);
    func_80029784(&D_8004C264, 0);
loop_1:
    func_8001DBA4(1);
    func_8001FF1C(8);
    if (D_80056504 & 0x40) {
        func_8001B738(7);
        func_800207B4();
        func_80029F80();
        return D_80056534__func_8002ABA8 + 1;
    }
    if (D_80056504 & 0x10) {
        func_8001B738(5);
        func_800207B4();
        return 0;
    }
    if (D_80056518 == 0) {
        if ((D_80056504 & 0x4000) && ((s32) D_80056534__func_8002ABA8 < (D_80056528 - 1))) {
            D_80056534__func_8002ABA8 += 1;
            D_80056518 = 4;
            func_8001B738(2);
        }
        if ((D_80056504 & 0x1000) && (D_80056534__func_8002ABA8 != 0)) {
            D_80056534__func_8002ABA8 -= 1;
            func_8001B738(2);
        }
    } else {
        D_80056518 -= 1;
    }
    goto loop_1;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002AD74);


void func_8002AE74() {
    void func_8001EA80();
    M2C_UNK func_8001F0B8(); /* extern */
    M2C_UNK func_8002AD74(); /* extern */
    extern s8 D_800552CA;
    func_8001F0B8(1);
    D_800552CA = 8;
    func_8001EA80(0x427, 2, 8);
    func_8002AD74();
    D_800552CA = 0;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002AEB8);

void func_8002B1F0() {

}

void func_8002B1F8() {

}

void func_8002B200() {

}


void func_8002B208() {
    void func_8002B4F8();
    func_8002B4F8();
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002B228);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800172BC);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800172C8);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800172E0);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002B300);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002B45C);

void func_8002B4F0() {

}


void func_8002B4F8() {
    extern s8 D_80056498;
    s32 var_v0;
    s8 *var_v1;

    var_v1 = &D_80056498;
    var_v0 = 2;
    do {
        *var_v1 = 0;
        var_v0 -= 1;
        var_v1 += 1;
    } while (var_v0 != -1);
}

void func_8002B520() {

}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002B528);

void func_8002B558() {

}

void func_8002B560() {

}

void func_8002B568() {

}

void func_8002B570(s32 arg0, ...) {
}

void func_8002B588() {

}


void func_8002B590(s32 arg0) {
    void func_8002B570(s32 arg0, ...);
    extern M2C_UNK D_800172C8;
    u32 temp_a0;

    temp_a0 = arg0 & 0xFFFF;
    func_8002B570(&D_800172C8, (temp_a0 >> 7) & 3, (temp_a0 >> 5) & 3, (temp_a0 << 6) & 0x7C0, ((temp_a0 * 0x10) & 0x100) + ((temp_a0 >> 2) & 0x200));
}

void func_8002B5E8() {

}


void func_8002B5F0(s32 arg0) {
    void func_8002B570(s32 arg0, ...);
    extern M2C_UNK D_8001696C;
    extern M2C_UNK D_800172E0;
    extern M2C_UNK D_80127368;
    extern M2C_UNK D_80129868;
    s32 temp_v1;

    temp_v1 = arg0 * 4;
    func_8002B570(&D_800172E0, arg0, *(s32 *)(((s8 *)&D_8001696C) + temp_v1), *(s32 *)(((s8 *)&D_80129868) + temp_v1), *(s32 *)(((s8 *)&D_80127368) + temp_v1));
}


void func_8002B64C() {
    void func_8002B1F0();
    func_8002B1F0();
}

void func_8002B66C() {

}

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_80017378);

INCLUDE_RODATA("asm/us/slus/nonmatchings/game", D_800173D8);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002B674);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002BCC0);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002BD38);

void *func_8002BD88(s32 arg0) {
    s32 func_8002BD38();
    extern M2C_UNK D_8004C5E8;
    s32 base = (s32)&D_8004C5E8;
    s32 idx = func_8002BD38(arg0 & 0xFF);
    void *res;
    if (idx >= 0) {
        res = (void *)((idx * 0xB) + base);
    } else {
        res = NULL;
    }
    return res;
}

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002BDDC);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002BED4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002BFD4);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002C08C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002C14C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002C23C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002C32C);

INCLUDE_ASM("asm/us/slus/nonmatchings/game", func_8002C444);
