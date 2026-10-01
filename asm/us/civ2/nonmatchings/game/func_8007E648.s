.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E648, 0x64

glabel func_8007E648
    /* 6EE48 8007E648 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6EE4C 8007E64C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6EE50 8007E650 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6EE54 8007E654 E6ED010C */  jal        func_8007B798
    /* 6EE58 8007E658 2180A000 */   addu      $s0, $a1, $zero
    /* 6EE5C 8007E65C 21204000 */  addu       $a0, $v0, $zero
    /* 6EE60 8007E660 0D008004 */  bltz       $a0, .L8007E698
    /* 6EE64 8007E664 40100400 */   sll       $v0, $a0, 1
  .L8007E668:
    /* 6EE68 8007E668 21104400 */  addu       $v0, $v0, $a0
    /* 6EE6C 8007E66C 80100200 */  sll        $v0, $v0, 2
    /* 6EE70 8007E670 21104400 */  addu       $v0, $v0, $a0
    /* 6EE74 8007E674 40100200 */  sll        $v0, $v0, 1
    /* 6EE78 8007E678 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6EE7C 8007E67C 21082200 */  addu       $at, $at, $v0
    /* 6EE80 8007E680 C3D630A0 */  sb         $s0, %lo(D_8010D6C3)($at)
    /* 6EE84 8007E684 BFED010C */  jal        func_8007B6FC
    /* 6EE88 8007E688 00000000 */   nop
    /* 6EE8C 8007E68C 21204000 */  addu       $a0, $v0, $zero
    /* 6EE90 8007E690 F5FF8104 */  bgez       $a0, .L8007E668
    /* 6EE94 8007E694 40100400 */   sll       $v0, $a0, 1
  .L8007E698:
    /* 6EE98 8007E698 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6EE9C 8007E69C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6EEA0 8007E6A0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6EEA4 8007E6A4 0800E003 */  jr         $ra
    /* 6EEA8 8007E6A8 00000000 */   nop
endlabel func_8007E648
