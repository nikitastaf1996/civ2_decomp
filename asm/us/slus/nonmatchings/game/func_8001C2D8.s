.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C2D8, 0x110

glabel func_8001C2D8
    /* CAD8 8001C2D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CADC 8001C2DC 2800BFAF */  sw         $ra, 0x28($sp)
    /* CAE0 8001C2E0 2400B1AF */  sw         $s1, 0x24($sp)
    /* CAE4 8001C2E4 2000B0AF */  sw         $s0, 0x20($sp)
    /* CAE8 8001C2E8 21200000 */  addu       $a0, $zero, $zero
    /* CAEC 8001C2EC DCB9000C */  jal        CdSync
    /* CAF0 8001C2F0 21280000 */   addu      $a1, $zero, $zero
    /* CAF4 8001C2F4 F1B9000C */  jal        CdReadyCallback
    /* CAF8 8001C2F8 21200000 */   addu      $a0, $zero, $zero
    /* CAFC 8001C2FC 21800000 */  addu       $s0, $zero, $zero
    /* CB00 8001C300 09001124 */  addiu      $s1, $zero, 0x9
    /* CB04 8001C304 00141000 */  sll        $v0, $s0, 16
  .L8001C308:
    /* CB08 8001C308 03140200 */  sra        $v0, $v0, 16
    /* CB0C 8001C30C 23102202 */  subu       $v0, $s1, $v0
    /* CB10 8001C310 40300200 */  sll        $a2, $v0, 1
    /* CB14 8001C314 2130C200 */  addu       $a2, $a2, $v0
    /* CB18 8001C318 40340600 */  sll        $a2, $a2, 17
    /* CB1C 8001C31C 03340600 */  sra        $a2, $a2, 16
    /* CB20 8001C320 21200000 */  addu       $a0, $zero, $zero
    /* CB24 8001C324 C7FD000C */  jal        SsSetSerialVol
    /* CB28 8001C328 2128C000 */   addu      $a1, $a2, $zero
    /* CB2C 8001C32C 23B3000C */  jal        VSync
    /* CB30 8001C330 21200000 */   addu      $a0, $zero, $zero
    /* CB34 8001C334 01000226 */  addiu      $v0, $s0, 0x1
    /* CB38 8001C338 21804000 */  addu       $s0, $v0, $zero
    /* CB3C 8001C33C 00140200 */  sll        $v0, $v0, 16
    /* CB40 8001C340 03140200 */  sra        $v0, $v0, 16
    /* CB44 8001C344 0A004228 */  slti       $v0, $v0, 0xA
    /* CB48 8001C348 EFFF4014 */  bnez       $v0, .L8001C308
    /* CB4C 8001C34C 00141000 */   sll       $v0, $s0, 16
    /* CB50 8001C350 21200000 */  addu       $a0, $zero, $zero
    /* CB54 8001C354 21280000 */  addu       $a1, $zero, $zero
    /* CB58 8001C358 C7FD000C */  jal        SsSetSerialVol
    /* CB5C 8001C35C 21300000 */   addu      $a2, $zero, $zero
    /* CB60 8001C360 21200000 */  addu       $a0, $zero, $zero
    /* CB64 8001C364 21280000 */  addu       $a1, $zero, $zero
    /* CB68 8001C368 7BF6000C */  jal        SsSetSerialAttr
    /* CB6C 8001C36C 21300000 */   addu      $a2, $zero, $zero
    /* CB70 8001C370 23B3000C */  jal        VSync
    /* CB74 8001C374 21200000 */   addu      $a0, $zero, $zero
    /* CB78 8001C378 09000424 */  addiu      $a0, $zero, 0x9
  .L8001C37C:
    /* CB7C 8001C37C 21280000 */  addu       $a1, $zero, $zero
    /* CB80 8001C380 F6B9000C */  jal        CdControl
    /* CB84 8001C384 1800A627 */   addiu     $a2, $sp, 0x18
    /* CB88 8001C388 FCFF4010 */  beqz       $v0, .L8001C37C
    /* CB8C 8001C38C 09000424 */   addiu     $a0, $zero, 0x9
    /* CB90 8001C390 21200000 */  addu       $a0, $zero, $zero
    /* CB94 8001C394 DCB9000C */  jal        CdSync
    /* CB98 8001C398 21280000 */   addu      $a1, $zero, $zero
    /* CB9C 8001C39C 80000224 */  addiu      $v0, $zero, 0x80
    /* CBA0 8001C3A0 1000A2A3 */  sb         $v0, 0x10($sp)
    /* CBA4 8001C3A4 0E000424 */  addiu      $a0, $zero, 0xE
  .L8001C3A8:
    /* CBA8 8001C3A8 1000A527 */  addiu      $a1, $sp, 0x10
    /* CBAC 8001C3AC F6B9000C */  jal        CdControl
    /* CBB0 8001C3B0 1800A627 */   addiu     $a2, $sp, 0x18
    /* CBB4 8001C3B4 FCFF4010 */  beqz       $v0, .L8001C3A8
    /* CBB8 8001C3B8 0E000424 */   addiu     $a0, $zero, 0xE
    /* CBBC 8001C3BC 23B3000C */  jal        VSync
    /* CBC0 8001C3C0 03000424 */   addiu     $a0, $zero, 0x3
    /* CBC4 8001C3C4 21200000 */  addu       $a0, $zero, $zero
    /* CBC8 8001C3C8 DCB9000C */  jal        CdSync
    /* CBCC 8001C3CC 21280000 */   addu      $a1, $zero, $zero
    /* CBD0 8001C3D0 2800BF8F */  lw         $ra, 0x28($sp)
    /* CBD4 8001C3D4 2400B18F */  lw         $s1, 0x24($sp)
    /* CBD8 8001C3D8 2000B08F */  lw         $s0, 0x20($sp)
    /* CBDC 8001C3DC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* CBE0 8001C3E0 0800E003 */  jr         $ra
    /* CBE4 8001C3E4 00000000 */   nop
endlabel func_8001C2D8
