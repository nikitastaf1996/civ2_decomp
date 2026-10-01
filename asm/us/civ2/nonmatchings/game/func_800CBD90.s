.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CBD90, 0xAC

glabel func_800CBD90
    /* BC590 800CBD90 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BC594 800CBD94 2800BFAF */  sw         $ra, 0x28($sp)
    /* BC598 800CBD98 2400B1AF */  sw         $s1, 0x24($sp)
    /* BC59C 800CBD9C 2000B0AF */  sw         $s0, 0x20($sp)
    /* BC5A0 800CBDA0 21808000 */  addu       $s0, $a0, $zero
    /* BC5A4 800CBDA4 84001126 */  addiu      $s1, $s0, 0x84
    /* BC5A8 800CBDA8 1000A0AF */  sw         $zero, 0x10($sp)
    /* BC5AC 800CBDAC 40010224 */  addiu      $v0, $zero, 0x140
    /* BC5B0 800CBDB0 1400A2AF */  sw         $v0, 0x14($sp)
    /* BC5B4 800CBDB4 F0000224 */  addiu      $v0, $zero, 0xF0
    /* BC5B8 800CBDB8 1800A2AF */  sw         $v0, 0x18($sp)
    /* BC5BC 800CBDBC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* BC5C0 800CBDC0 21202002 */  addu       $a0, $s1, $zero
    /* BC5C4 800CBDC4 1680053C */  lui        $a1, %hi(D_801591A8)
    /* BC5C8 800CBDC8 A891A524 */  addiu      $a1, $a1, %lo(D_801591A8)
    /* BC5CC 800CBDCC 00080624 */  addiu      $a2, $zero, 0x800
    /* BC5D0 800CBDD0 B3DE030C */  jal        func_800F7ACC
    /* BC5D4 800CBDD4 21380000 */   addu      $a3, $zero, $zero
    /* BC5D8 800CBDD8 20040426 */  addiu      $a0, $s0, 0x420
    /* BC5DC 800CBDDC F3010524 */  addiu      $a1, $zero, 0x1F3
    /* BC5E0 800CBDE0 0A000624 */  addiu      $a2, $zero, 0xA
    /* BC5E4 800CBDE4 44E3030C */  jal        func_800F8D10
    /* BC5E8 800CBDE8 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BC5EC 800CBDEC 0C004010 */  beqz       $v0, .L800CBE20
    /* BC5F0 800CBDF0 00000000 */   nop
    /* BC5F4 800CBDF4 B4EB030C */  jal        func_800FAED0
    /* BC5F8 800CBDF8 B0000426 */   addiu     $a0, $s0, 0xB0
    /* BC5FC 800CBDFC 0D80023C */  lui        $v0, %hi(func_800CE838)
    /* BC600 800CBE00 38E84224 */  addiu      $v0, $v0, %lo(func_800CE838)
    /* BC604 800CBE04 E80002AE */  sw         $v0, 0xE8($s0)
    /* BC608 800CBE08 0D80053C */  lui        $a1, %hi(func_800CBAB0)
    /* BC60C 800CBE0C B0BAA524 */  addiu      $a1, $a1, %lo(func_800CBAB0)
    /* BC610 800CBE10 82DF030C */  jal        func_800F7E08
    /* BC614 800CBE14 21202002 */   addu      $a0, $s1, $zero
    /* BC618 800CBE18 892F0308 */  j          .L800CBE24
    /* BC61C 800CBE1C 01000224 */   addiu     $v0, $zero, 0x1
  .L800CBE20:
    /* BC620 800CBE20 21100000 */  addu       $v0, $zero, $zero
  .L800CBE24:
    /* BC624 800CBE24 2800BF8F */  lw         $ra, 0x28($sp)
    /* BC628 800CBE28 2400B18F */  lw         $s1, 0x24($sp)
    /* BC62C 800CBE2C 2000B08F */  lw         $s0, 0x20($sp)
    /* BC630 800CBE30 3000BD27 */  addiu      $sp, $sp, 0x30
    /* BC634 800CBE34 0800E003 */  jr         $ra
    /* BC638 800CBE38 00000000 */   nop
endlabel func_800CBD90
