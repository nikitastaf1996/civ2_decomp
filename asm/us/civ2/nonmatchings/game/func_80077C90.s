.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077C90, 0x9C

glabel func_80077C90
    /* 68490 80077C90 40100400 */  sll        $v0, $a0, 1
    /* 68494 80077C94 21104400 */  addu       $v0, $v0, $a0
    /* 68498 80077C98 80100200 */  sll        $v0, $v0, 2
    /* 6849C 80077C9C 23104400 */  subu       $v0, $v0, $a0
    /* 684A0 80077CA0 00110200 */  sll        $v0, $v0, 4
    /* 684A4 80077CA4 23104400 */  subu       $v0, $v0, $a0
    /* 684A8 80077CA8 C0100200 */  sll        $v0, $v0, 3
    /* 684AC 80077CAC 1180013C */  lui        $at, %hi(D_80117A74)
    /* 684B0 80077CB0 21082200 */  addu       $at, $at, $v0
    /* 684B4 80077CB4 747A20A0 */  sb         $zero, %lo(D_80117A74)($at)
    /* 684B8 80077CB8 1180013C */  lui        $at, %hi(D_80117A7A)
    /* 684BC 80077CBC 21082200 */  addu       $at, $at, $v0
    /* 684C0 80077CC0 7A7A20A4 */  sh         $zero, %lo(D_80117A7A)($at)
    /* 684C4 80077CC4 1180013C */  lui        $at, %hi(D_80117A78)
    /* 684C8 80077CC8 21082200 */  addu       $at, $at, $v0
    /* 684CC 80077CCC 787A20A4 */  sh         $zero, %lo(D_80117A78)($at)
    /* 684D0 80077CD0 1180013C */  lui        $at, %hi(D_80117A76)
    /* 684D4 80077CD4 21082200 */  addu       $at, $at, $v0
    /* 684D8 80077CD8 767A20A4 */  sh         $zero, %lo(D_80117A76)($at)
    /* 684DC 80077CDC 21280000 */  addu       $a1, $zero, $zero
    /* 684E0 80077CE0 40100400 */  sll        $v0, $a0, 1
    /* 684E4 80077CE4 21104400 */  addu       $v0, $v0, $a0
    /* 684E8 80077CE8 80100200 */  sll        $v0, $v0, 2
    /* 684EC 80077CEC 23104400 */  subu       $v0, $v0, $a0
    /* 684F0 80077CF0 00110200 */  sll        $v0, $v0, 4
    /* 684F4 80077CF4 23104400 */  subu       $v0, $v0, $a0
    /* 684F8 80077CF8 C0100200 */  sll        $v0, $v0, 3
    /* 684FC 80077CFC 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* 68500 80077D00 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* 68504 80077D04 21184300 */  addu       $v1, $v0, $v1
  .L80077D08:
    /* 68508 80077D08 40100500 */  sll        $v0, $a1, 1
    /* 6850C 80077D0C 21104300 */  addu       $v0, $v0, $v1
    /* 68510 80077D10 000040A4 */  sh         $zero, 0x0($v0)
    /* 68514 80077D14 0100A524 */  addiu      $a1, $a1, 0x1
    /* 68518 80077D18 0600A228 */  slti       $v0, $a1, 0x6
    /* 6851C 80077D1C FAFF4014 */  bnez       $v0, .L80077D08
    /* 68520 80077D20 00000000 */   nop
    /* 68524 80077D24 0800E003 */  jr         $ra
    /* 68528 80077D28 00000000 */   nop
endlabel func_80077C90
