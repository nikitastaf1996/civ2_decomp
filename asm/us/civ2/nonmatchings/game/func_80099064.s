.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80099064, 0x68

glabel func_80099064
    /* 89864 80099064 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 89868 80099068 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8986C 8009906C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 89870 80099070 1400B1AF */  sw         $s1, 0x14($sp)
    /* 89874 80099074 1000B0AF */  sw         $s0, 0x10($sp)
    /* 89878 80099078 21908000 */  addu       $s2, $a0, $zero
    /* 8987C 8009907C 21880000 */  addu       $s1, $zero, $zero
    /* 89880 80099080 01001024 */  addiu      $s0, $zero, 0x1
    /* 89884 80099084 21200002 */  addu       $a0, $s0, $zero
  .L80099088:
    /* 89888 80099088 0164020C */  jal        func_80099004
    /* 8988C 8009908C 21284002 */   addu      $a1, $s2, $zero
    /* 89890 80099090 02004010 */  beqz       $v0, .L8009909C
    /* 89894 80099094 00000000 */   nop
    /* 89898 80099098 01003126 */  addiu      $s1, $s1, 0x1
  .L8009909C:
    /* 8989C 8009909C 01001026 */  addiu      $s0, $s0, 0x1
    /* 898A0 800990A0 3F00022A */  slti       $v0, $s0, 0x3F
    /* 898A4 800990A4 F8FF4014 */  bnez       $v0, .L80099088
    /* 898A8 800990A8 21200002 */   addu      $a0, $s0, $zero
    /* 898AC 800990AC 21102002 */  addu       $v0, $s1, $zero
    /* 898B0 800990B0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 898B4 800990B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 898B8 800990B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 898BC 800990BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 898C0 800990C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 898C4 800990C4 0800E003 */  jr         $ra
    /* 898C8 800990C8 00000000 */   nop
endlabel func_80099064
