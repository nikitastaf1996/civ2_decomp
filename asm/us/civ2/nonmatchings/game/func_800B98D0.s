.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B98D0, 0x70

glabel func_800B98D0
    /* AA0D0 800B98D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AA0D4 800B98D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* AA0D8 800B98D8 68000424 */  addiu      $a0, $zero, 0x68
    /* AA0DC 800B98DC 21280000 */  addu       $a1, $zero, $zero
    /* AA0E0 800B98E0 21300000 */  addu       $a2, $zero, $zero
    /* AA0E4 800B98E4 2B9D020C */  jal        func_800A74AC
    /* AA0E8 800B98E8 21380000 */   addu      $a3, $zero, $zero
    /* AA0EC 800B98EC 35DE030C */  jal        func_800F78D4
    /* AA0F0 800B98F0 00000000 */   nop
    /* AA0F4 800B98F4 03004014 */  bnez       $v0, .L800B9904
    /* AA0F8 800B98F8 21204000 */   addu      $a0, $v0, $zero
    /* AA0FC 800B98FC 42E60208 */  j          .L800B9908
    /* AA100 800B9900 21200000 */   addu      $a0, $zero, $zero
  .L800B9904:
    /* AA104 800B9904 D4FF8424 */  addiu      $a0, $a0, -0x2C
  .L800B9908:
    /* AA108 800B9908 8403828C */  lw         $v0, 0x384($a0)
    /* AA10C 800B990C 00000000 */  nop
    /* AA110 800B9910 05004010 */  beqz       $v0, .L800B9928
    /* AA114 800B9914 00000000 */   nop
    /* AA118 800B9918 31DE030C */  jal        func_800F78C4
    /* AA11C 800B991C 2C008424 */   addiu     $a0, $a0, 0x2C
    /* AA120 800B9920 4CE60208 */  j          .L800B9930
    /* AA124 800B9924 00000000 */   nop
  .L800B9928:
    /* AA128 800B9928 29E5020C */  jal        func_800B94A4
    /* AA12C 800B992C 00000000 */   nop
  .L800B9930:
    /* AA130 800B9930 1000BF8F */  lw         $ra, 0x10($sp)
    /* AA134 800B9934 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AA138 800B9938 0800E003 */  jr         $ra
    /* AA13C 800B993C 00000000 */   nop
endlabel func_800B98D0
