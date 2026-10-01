.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F7B4, 0x70

glabel func_8009F7B4
    /* 8FFB4 8009F7B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8FFB8 8009F7B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8FFBC 8009F7BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FFC0 8009F7C0 1680023C */  lui        $v0, %hi(D_80158500)
    /* 8FFC4 8009F7C4 0085428C */  lw         $v0, %lo(D_80158500)($v0)
    /* 8FFC8 8009F7C8 00000000 */  nop
    /* 8FFCC 8009F7CC 10004014 */  bnez       $v0, .L8009F810
    /* 8FFD0 8009F7D0 00000000 */   nop
    /* 8FFD4 8009F7D4 35DE030C */  jal        func_800F78D4
    /* 8FFD8 8009F7D8 00000000 */   nop
    /* 8FFDC 8009F7DC 02004014 */  bnez       $v0, .L8009F7E8
    /* 8FFE0 8009F7E0 D4FF5024 */   addiu     $s0, $v0, -0x2C
    /* 8FFE4 8009F7E4 21800000 */  addu       $s0, $zero, $zero
  .L8009F7E8:
    /* 8FFE8 8009F7E8 6C05828F */  lw         $v0, %gp_rel(D_80158A44)($gp)
    /* 8FFEC 8009F7EC 00000000 */  nop
    /* 8FFF0 8009F7F0 03004004 */  bltz       $v0, .L8009F800
    /* 8FFF4 8009F7F4 00000000 */   nop
    /* 8FFF8 8009F7F8 637D020C */  jal        func_8009F58C
    /* 8FFFC 8009F7FC 00000000 */   nop
  .L8009F800:
    /* 90000 8009F800 E9EA030C */  jal        func_800FABA4
    /* 90004 8009F804 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 90008 8009F808 511B040C */  jal        func_80106D44
    /* 9000C 8009F80C 21204000 */   addu      $a0, $v0, $zero
  .L8009F810:
    /* 90010 8009F810 1400BF8F */  lw         $ra, 0x14($sp)
    /* 90014 8009F814 1000B08F */  lw         $s0, 0x10($sp)
    /* 90018 8009F818 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9001C 8009F81C 0800E003 */  jr         $ra
    /* 90020 8009F820 00000000 */   nop
endlabel func_8009F7B4
