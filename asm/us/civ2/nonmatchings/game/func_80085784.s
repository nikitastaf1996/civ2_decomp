.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80085784, 0x48

glabel func_80085784
    /* 75F84 80085784 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 75F88 80085788 1280023C */  lui        $v0, %hi(D_8011C30C)
    /* 75F8C 8008578C 0CC34224 */  addiu      $v0, $v0, %lo(D_8011C30C)
    /* 75F90 80085790 21304000 */  addu       $a2, $v0, $zero
    /* 75F94 80085794 00004284 */  lh         $v0, 0x0($v0)
    /* 75F98 80085798 00000000 */  nop
    /* 75F9C 8008579C 08004018 */  blez       $v0, .L800857C0
    /* 75FA0 800857A0 21180000 */   addu      $v1, $zero, $zero
  .L800857A4:
    /* 75FA4 800857A4 000085A0 */  sb         $a1, 0x0($a0)
    /* 75FA8 800857A8 01006324 */  addiu      $v1, $v1, 0x1
    /* 75FAC 800857AC 0000C284 */  lh         $v0, 0x0($a2)
    /* 75FB0 800857B0 00000000 */  nop
    /* 75FB4 800857B4 2A106200 */  slt        $v0, $v1, $v0
    /* 75FB8 800857B8 FAFF4014 */  bnez       $v0, .L800857A4
    /* 75FBC 800857BC 06008424 */   addiu     $a0, $a0, 0x6
  .L800857C0:
    /* 75FC0 800857C0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 75FC4 800857C4 0800E003 */  jr         $ra
    /* 75FC8 800857C8 00000000 */   nop
endlabel func_80085784
