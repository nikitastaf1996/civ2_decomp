.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089484, 0x70

glabel func_80089484
    /* 79C84 80089484 1900A004 */  bltz       $a1, .L800894EC
    /* 79C88 80089488 21188000 */   addu      $v1, $a0, $zero
    /* 79C8C 8008948C 01000424 */  addiu      $a0, $zero, 0x1
    /* 79C90 80089490 0420A400 */  sllv       $a0, $a0, $a1
    /* 79C94 80089494 40100300 */  sll        $v0, $v1, 1
    /* 79C98 80089498 21104300 */  addu       $v0, $v0, $v1
    /* 79C9C 8008949C 80100200 */  sll        $v0, $v0, 2
    /* 79CA0 800894A0 23104300 */  subu       $v0, $v0, $v1
    /* 79CA4 800894A4 C0100200 */  sll        $v0, $v0, 3
    /* 79CA8 800894A8 1180013C */  lui        $at, %hi(D_80113EDC)
    /* 79CAC 800894AC 21082200 */  addu       $at, $at, $v0
    /* 79CB0 800894B0 DC3E2390 */  lbu        $v1, %lo(D_80113EDC)($at)
    /* 79CB4 800894B4 00000000 */  nop
    /* 79CB8 800894B8 25208300 */  or         $a0, $a0, $v1
    /* 79CBC 800894BC 1180013C */  lui        $at, %hi(D_80113EDC)
    /* 79CC0 800894C0 21082200 */  addu       $at, $at, $v0
    /* 79CC4 800894C4 DC3E24A0 */  sb         $a0, %lo(D_80113EDC)($at)
    /* 79CC8 800894C8 1180033C */  lui        $v1, %hi(D_80113EDD)
    /* 79CCC 800894CC DD3E6324 */  addiu      $v1, $v1, %lo(D_80113EDD)
    /* 79CD0 800894D0 21184300 */  addu       $v1, $v0, $v1
    /* 79CD4 800894D4 21186500 */  addu       $v1, $v1, $a1
    /* 79CD8 800894D8 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 79CDC 800894DC 21082200 */  addu       $at, $at, $v0
    /* 79CE0 800894E0 D93E2290 */  lbu        $v0, %lo(D_80113ED9)($at)
    /* 79CE4 800894E4 00000000 */  nop
    /* 79CE8 800894E8 000062A0 */  sb         $v0, 0x0($v1)
  .L800894EC:
    /* 79CEC 800894EC 0800E003 */  jr         $ra
    /* 79CF0 800894F0 00000000 */   nop
endlabel func_80089484
