.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E8B0, 0xB0

glabel func_8001E8B0
    /* F0B0 8001E8B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F0B4 8001E8B4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* F0B8 8001E8B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* F0BC 8001E8BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* F0C0 8001E8C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* F0C4 8001E8C4 21808000 */  addu       $s0, $a0, $zero
    /* F0C8 8001E8C8 2190A000 */  addu       $s2, $a1, $zero
    /* F0CC 8001E8CC 0180023C */  lui        $v0, %hi(D_80010154)
    /* F0D0 8001E8D0 54014224 */  addiu      $v0, $v0, %lo(D_80010154)
    /* F0D4 8001E8D4 280002AE */  sw         $v0, 0x28($s0)
    /* F0D8 8001E8D8 1803048E */  lw         $a0, 0x318($s0)
    /* F0DC 8001E8DC 00000000 */  nop
    /* F0E0 8001E8E0 03008010 */  beqz       $a0, .L8001E8F0
    /* F0E4 8001E8E4 04031126 */   addiu     $s1, $s0, 0x304
    /* F0E8 8001E8E8 435D020C */  jal        func_8009750C
    /* F0EC 8001E8EC 00000000 */   nop
  .L8001E8F0:
    /* F0F0 8001E8F0 21202002 */  addu       $a0, $s1, $zero
    /* F0F4 8001E8F4 D5D8030C */  jal        func_800F6354
    /* F0F8 8001E8F8 02000524 */   addiu     $a1, $zero, 0x2
    /* F0FC 8001E8FC D8020426 */  addiu      $a0, $s0, 0x2D8
    /* F100 8001E900 1BDA030C */  jal        func_800F686C
    /* F104 8001E904 02000524 */   addiu     $a1, $zero, 0x2
    /* F108 8001E908 AC020426 */  addiu      $a0, $s0, 0x2AC
    /* F10C 8001E90C 1BDA030C */  jal        func_800F686C
    /* F110 8001E910 02000524 */   addiu     $a1, $zero, 0x2
    /* F114 8001E914 80020426 */  addiu      $a0, $s0, 0x280
    /* F118 8001E918 1BDA030C */  jal        func_800F686C
    /* F11C 8001E91C 02000524 */   addiu     $a1, $zero, 0x2
    /* F120 8001E920 54020426 */  addiu      $a0, $s0, 0x254
    /* F124 8001E924 1BDA030C */  jal        func_800F686C
    /* F128 8001E928 02000524 */   addiu     $a1, $zero, 0x2
    /* F12C 8001E92C 28020426 */  addiu      $a0, $s0, 0x228
    /* F130 8001E930 4CE1030C */  jal        func_800F8530
    /* F134 8001E934 02000524 */   addiu     $a1, $zero, 0x2
    /* F138 8001E938 21200002 */  addu       $a0, $s0, $zero
    /* F13C 8001E93C D74A020C */  jal        func_80092B5C
    /* F140 8001E940 21284002 */   addu      $a1, $s2, $zero
    /* F144 8001E944 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F148 8001E948 1800B28F */  lw         $s2, 0x18($sp)
    /* F14C 8001E94C 1400B18F */  lw         $s1, 0x14($sp)
    /* F150 8001E950 1000B08F */  lw         $s0, 0x10($sp)
    /* F154 8001E954 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F158 8001E958 0800E003 */  jr         $ra
    /* F15C 8001E95C 00000000 */   nop
endlabel func_8001E8B0
