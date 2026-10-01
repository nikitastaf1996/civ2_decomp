.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80074D5C, 0xA8

glabel func_80074D5C
    /* 6555C 80074D5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 65560 80074D60 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 65564 80074D64 1800B2AF */  sw         $s2, 0x18($sp)
    /* 65568 80074D68 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6556C 80074D6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 65570 80074D70 2180A000 */  addu       $s0, $a1, $zero
    /* 65574 80074D74 00111000 */  sll        $v0, $s0, 4
    /* 65578 80074D78 1180013C */  lui        $at, %hi(D_8010C2A5)
    /* 6557C 80074D7C 21082200 */  addu       $at, $at, $v0
    /* 65580 80074D80 A5C22290 */  lbu        $v0, %lo(D_8010C2A5)($at)
    /* 65584 80074D84 00000000 */  nop
    /* 65588 80074D88 06004010 */  beqz       $v0, .L80074DA4
    /* 6558C 80074D8C 21888000 */   addu      $s1, $a0, $zero
    /* 65590 80074D90 21202002 */  addu       $a0, $s1, $zero
    /* 65594 80074D94 8ACA010C */  jal        func_80072A28
    /* 65598 80074D98 21280002 */   addu      $a1, $s0, $zero
    /* 6559C 80074D9C 03004010 */  beqz       $v0, .L80074DAC
    /* 655A0 80074DA0 21900000 */   addu      $s2, $zero, $zero
  .L80074DA4:
    /* 655A4 80074DA4 7AD30108 */  j          .L80074DE8
    /* 655A8 80074DA8 21100000 */   addu      $v0, $zero, $zero
  .L80074DAC:
    /* 655AC 80074DAC 00811000 */  sll        $s0, $s0, 4
    /* 655B0 80074DB0 1180013C */  lui        $at, %hi(D_8010C2AA)
    /* 655B4 80074DB4 21083000 */  addu       $at, $at, $s0
    /* 655B8 80074DB8 AAC22580 */  lb         $a1, %lo(D_8010C2AA)($at)
    /* 655BC 80074DBC 8ACA010C */  jal        func_80072A28
    /* 655C0 80074DC0 21202002 */   addu      $a0, $s1, $zero
    /* 655C4 80074DC4 08004010 */  beqz       $v0, .L80074DE8
    /* 655C8 80074DC8 2B101200 */   sltu      $v0, $zero, $s2
    /* 655CC 80074DCC 1180013C */  lui        $at, %hi(D_8010C2AB)
    /* 655D0 80074DD0 21083000 */  addu       $at, $at, $s0
    /* 655D4 80074DD4 ABC22580 */  lb         $a1, %lo(D_8010C2AB)($at)
    /* 655D8 80074DD8 8ACA010C */  jal        func_80072A28
    /* 655DC 80074DDC 21202002 */   addu      $a0, $s1, $zero
    /* 655E0 80074DE0 2B900200 */  sltu       $s2, $zero, $v0
    /* 655E4 80074DE4 2B101200 */  sltu       $v0, $zero, $s2
  .L80074DE8:
    /* 655E8 80074DE8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 655EC 80074DEC 1800B28F */  lw         $s2, 0x18($sp)
    /* 655F0 80074DF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 655F4 80074DF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 655F8 80074DF8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 655FC 80074DFC 0800E003 */  jr         $ra
    /* 65600 80074E00 00000000 */   nop
endlabel func_80074D5C
