.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009205C, 0x98

glabel func_8009205C
    /* 8285C 8009205C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 82860 80092060 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 82864 80092064 1800B2AF */  sw         $s2, 0x18($sp)
    /* 82868 80092068 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8286C 8009206C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 82870 80092070 21908000 */  addu       $s2, $a0, $zero
    /* 82874 80092074 21880000 */  addu       $s1, $zero, $zero
    /* 82878 80092078 00240400 */  sll        $a0, $a0, 16
    /* 8287C 8009207C 03840400 */  sra        $s0, $a0, 16
    /* 82880 80092080 21200002 */  addu       $a0, $s0, $zero
    /* 82884 80092084 8ACA010C */  jal        func_80072A28
    /* 82888 80092088 05000524 */   addiu     $a1, $zero, 0x5
    /* 8288C 8009208C 04004010 */  beqz       $v0, .L800920A0
    /* 82890 80092090 21200002 */   addu      $a0, $s0, $zero
    /* 82894 80092094 8ACA010C */  jal        func_80072A28
    /* 82898 80092098 18000524 */   addiu     $a1, $zero, 0x18
    /* 8289C 8009209C 2B880200 */  sltu       $s1, $zero, $v0
  .L800920A0:
    /* 828A0 800920A0 0D002016 */  bnez       $s1, .L800920D8
    /* 828A4 800920A4 02000224 */   addiu     $v0, $zero, 0x2
    /* 828A8 800920A8 21880000 */  addu       $s1, $zero, $zero
    /* 828AC 800920AC 00141200 */  sll        $v0, $s2, 16
    /* 828B0 800920B0 03840200 */  sra        $s0, $v0, 16
    /* 828B4 800920B4 21200002 */  addu       $a0, $s0, $zero
    /* 828B8 800920B8 8ACA010C */  jal        func_80072A28
    /* 828BC 800920BC 3C000524 */   addiu     $a1, $zero, 0x3C
    /* 828C0 800920C0 04004010 */  beqz       $v0, .L800920D4
    /* 828C4 800920C4 21200002 */   addu      $a0, $s0, $zero
    /* 828C8 800920C8 8ACA010C */  jal        func_80072A28
    /* 828CC 800920CC 26000524 */   addiu     $a1, $zero, 0x26
    /* 828D0 800920D0 2B880200 */  sltu       $s1, $zero, $v0
  .L800920D4:
    /* 828D4 800920D4 2B101100 */  sltu       $v0, $zero, $s1
  .L800920D8:
    /* 828D8 800920D8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 828DC 800920DC 1800B28F */  lw         $s2, 0x18($sp)
    /* 828E0 800920E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 828E4 800920E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 828E8 800920E8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 828EC 800920EC 0800E003 */  jr         $ra
    /* 828F0 800920F0 00000000 */   nop
endlabel func_8009205C
