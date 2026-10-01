.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C81B8, 0x84

glabel func_800C81B8
    /* B89B8 800C81B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B89BC 800C81BC 1800BFAF */  sw         $ra, 0x18($sp)
    /* B89C0 800C81C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* B89C4 800C81C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* B89C8 800C81C8 21808000 */  addu       $s0, $a0, $zero
    /* B89CC 800C81CC 0F001124 */  addiu      $s1, $zero, 0xF
    /* B89D0 800C81D0 B4020726 */  addiu      $a3, $s0, 0x2B4
    /* B89D4 800C81D4 48010426 */  addiu      $a0, $s0, 0x148
    /* B89D8 800C81D8 84000526 */  addiu      $a1, $s0, 0x84
    /* B89DC 800C81DC EDE3030C */  jal        func_800F8FB4
    /* B89E0 800C81E0 2130E000 */   addu      $a2, $a3, $zero
    /* B89E4 800C81E4 6F000424 */  addiu      $a0, $zero, 0x6F
    /* B89E8 800C81E8 01000524 */  addiu      $a1, $zero, 0x1
    /* B89EC 800C81EC 21300000 */  addu       $a2, $zero, $zero
    /* B89F0 800C81F0 2B9D020C */  jal        func_800A74AC
    /* B89F4 800C81F4 21380000 */   addu      $a3, $zero, $zero
  .L800C81F8:
    /* B89F8 800C81F8 BC02028E */  lw         $v0, 0x2BC($s0)
    /* B89FC 800C81FC 00000000 */  nop
    /* B8A00 800C8200 9A004228 */  slti       $v0, $v0, 0x9A
    /* B8A04 800C8204 07004010 */  beqz       $v0, .L800C8224
    /* B8A08 800C8208 21200002 */   addu      $a0, $s0, $zero
    /* B8A0C 800C820C 6920030C */  jal        func_800C81A4
    /* B8A10 800C8210 21282002 */   addu      $a1, $s1, $zero
    /* B8A14 800C8214 8E12040C */  jal        func_80104A38
    /* B8A18 800C8218 00000000 */   nop
    /* B8A1C 800C821C 7E200308 */  j          .L800C81F8
    /* B8A20 800C8220 00000000 */   nop
  .L800C8224:
    /* B8A24 800C8224 1800BF8F */  lw         $ra, 0x18($sp)
    /* B8A28 800C8228 1400B18F */  lw         $s1, 0x14($sp)
    /* B8A2C 800C822C 1000B08F */  lw         $s0, 0x10($sp)
    /* B8A30 800C8230 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B8A34 800C8234 0800E003 */  jr         $ra
    /* B8A38 800C8238 00000000 */   nop
endlabel func_800C81B8
