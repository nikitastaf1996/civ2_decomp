.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80085D70, 0x58

glabel func_80085D70
    /* 76570 80085D70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 76574 80085D74 1800BFAF */  sw         $ra, 0x18($sp)
    /* 76578 80085D78 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7657C 80085D7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 76580 80085D80 173B030C */  jal        func_800CEC5C
    /* 76584 80085D84 2188A000 */   addu      $s1, $a1, $zero
    /* 76588 80085D88 21804000 */  addu       $s0, $v0, $zero
    /* 7658C 80085D8C 21200002 */  addu       $a0, $s0, $zero
    /* 76590 80085D90 3F17020C */  jal        func_80085CFC
    /* 76594 80085D94 21282002 */   addu      $a1, $s1, $zero
    /* 76598 80085D98 05004010 */  beqz       $v0, .L80085DB0
    /* 7659C 80085D9C 21200002 */   addu      $a0, $s0, $zero
    /* 765A0 80085DA0 BD60020C */  jal        func_800982F4
    /* 765A4 80085DA4 21282002 */   addu      $a1, $s1, $zero
    /* 765A8 80085DA8 01000324 */  addiu      $v1, $zero, 0x1
    /* 765AC 80085DAC 050043A0 */  sb         $v1, 0x5($v0)
  .L80085DB0:
    /* 765B0 80085DB0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 765B4 80085DB4 1400B18F */  lw         $s1, 0x14($sp)
    /* 765B8 80085DB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 765BC 80085DBC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 765C0 80085DC0 0800E003 */  jr         $ra
    /* 765C4 80085DC4 00000000 */   nop
endlabel func_80085D70
