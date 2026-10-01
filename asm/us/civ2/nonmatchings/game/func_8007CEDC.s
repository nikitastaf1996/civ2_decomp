.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CEDC, 0x58

glabel func_8007CEDC
    /* 6D6DC 8007CEDC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6D6E0 8007CEE0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6D6E4 8007CEE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6D6E8 8007CEE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6D6EC 8007CEEC E6ED010C */  jal        func_8007B798
    /* 6D6F0 8007CEF0 2188A000 */   addu      $s1, $a1, $zero
    /* 6D6F4 8007CEF4 21804000 */  addu       $s0, $v0, $zero
    /* 6D6F8 8007CEF8 08000006 */  bltz       $s0, .L8007CF1C
    /* 6D6FC 8007CEFC 21200002 */   addu      $a0, $s0, $zero
  .L8007CF00:
    /* 6D700 8007CF00 9EF3010C */  jal        func_8007CE78
    /* 6D704 8007CF04 21282002 */   addu      $a1, $s1, $zero
    /* 6D708 8007CF08 BFED010C */  jal        func_8007B6FC
    /* 6D70C 8007CF0C 21200002 */   addu      $a0, $s0, $zero
    /* 6D710 8007CF10 21804000 */  addu       $s0, $v0, $zero
    /* 6D714 8007CF14 FAFF0106 */  bgez       $s0, .L8007CF00
    /* 6D718 8007CF18 21200002 */   addu      $a0, $s0, $zero
  .L8007CF1C:
    /* 6D71C 8007CF1C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6D720 8007CF20 1400B18F */  lw         $s1, 0x14($sp)
    /* 6D724 8007CF24 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D728 8007CF28 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6D72C 8007CF2C 0800E003 */  jr         $ra
    /* 6D730 8007CF30 00000000 */   nop
endlabel func_8007CEDC
