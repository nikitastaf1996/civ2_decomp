.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80030560, 0x50

glabel func_80030560
    /* 20D60 80030560 40100400 */  sll        $v0, $a0, 1
    /* 20D64 80030564 21104400 */  addu       $v0, $v0, $a0
    /* 20D68 80030568 80100200 */  sll        $v0, $v0, 2
    /* 20D6C 8003056C 21104400 */  addu       $v0, $v0, $a0
    /* 20D70 80030570 40100200 */  sll        $v0, $v0, 1
    /* 20D74 80030574 0B000324 */  addiu      $v1, $zero, 0xB
    /* 20D78 80030578 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 20D7C 8003057C 21082200 */  addu       $at, $at, $v0
    /* 20D80 80030580 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 20D84 80030584 1180013C */  lui        $at, %hi(D_8010D6C0)
    /* 20D88 80030588 21082200 */  addu       $at, $at, $v0
    /* 20D8C 8003058C C0D625A0 */  sb         $a1, %lo(D_8010D6C0)($at)
    /* 20D90 80030590 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 20D94 80030594 21082200 */  addu       $at, $at, $v0
    /* 20D98 80030598 C6D626A4 */  sh         $a2, %lo(D_8010D6C6)($at)
    /* 20D9C 8003059C 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* 20DA0 800305A0 21082200 */  addu       $at, $at, $v0
    /* 20DA4 800305A4 C8D627A4 */  sh         $a3, %lo(D_8010D6C8)($at)
    /* 20DA8 800305A8 0800E003 */  jr         $ra
    /* 20DAC 800305AC 00000000 */   nop
endlabel func_80030560
