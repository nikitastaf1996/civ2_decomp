.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CCF4, 0x68

glabel func_8007CCF4
    /* 6D4F4 8007CCF4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6D4F8 8007CCF8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6D4FC 8007CCFC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6D500 8007CD00 E6ED010C */  jal        func_8007B798
    /* 6D504 8007CD04 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6D508 8007CD08 21884000 */  addu       $s1, $v0, $zero
    /* 6D50C 8007CD0C 0D002006 */  bltz       $s1, .L8007CD44
    /* 6D510 8007CD10 00000000 */   nop
  .L8007CD14:
    /* 6D514 8007CD14 BFED010C */  jal        func_8007B6FC
    /* 6D518 8007CD18 21202002 */   addu      $a0, $s1, $zero
    /* 6D51C 8007CD1C 21804000 */  addu       $s0, $v0, $zero
    /* 6D520 8007CD20 04F2010C */  jal        func_8007C810
    /* 6D524 8007CD24 21202002 */   addu      $a0, $s1, $zero
    /* 6D528 8007CD28 2A103002 */  slt        $v0, $s1, $s0
    /* 6D52C 8007CD2C 03004010 */  beqz       $v0, .L8007CD3C
    /* 6D530 8007CD30 21880002 */   addu      $s1, $s0, $zero
    /* 6D534 8007CD34 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 6D538 8007CD38 21880002 */  addu       $s1, $s0, $zero
  .L8007CD3C:
    /* 6D53C 8007CD3C F5FF2106 */  bgez       $s1, .L8007CD14
    /* 6D540 8007CD40 00000000 */   nop
  .L8007CD44:
    /* 6D544 8007CD44 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6D548 8007CD48 1400B18F */  lw         $s1, 0x14($sp)
    /* 6D54C 8007CD4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D550 8007CD50 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6D554 8007CD54 0800E003 */  jr         $ra
    /* 6D558 8007CD58 00000000 */   nop
endlabel func_8007CCF4
