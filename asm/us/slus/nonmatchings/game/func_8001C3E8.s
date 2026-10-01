.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C3E8, 0x134

glabel func_8001C3E8
    /* CBE8 8001C3E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* CBEC 8001C3EC 2000BFAF */  sw         $ra, 0x20($sp)
    /* CBF0 8001C3F0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CBF4 8001C3F4 1800B0AF */  sw         $s0, 0x18($sp)
    /* CBF8 8001C3F8 2188A000 */  addu       $s1, $a1, $zero
    /* CBFC 8001C3FC 0580053C */  lui        $a1, %hi(D_800564D0)
    /* CC00 8001C400 D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* CC04 8001C404 0EBB000C */  jal        CdIntToPos
    /* CC08 8001C408 21808000 */   addu      $s0, $a0, $zero
    /* CC0C 8001C40C 0580053C */  lui        $a1, %hi(D_800564D8)
    /* CC10 8001C410 D864A524 */  addiu      $a1, $a1, %lo(D_800564D8)
    /* CC14 8001C414 0EBB000C */  jal        CdIntToPos
    /* CC18 8001C418 21200002 */   addu      $a0, $s0, $zero
    /* CC1C 8001C41C 01000224 */  addiu      $v0, $zero, 0x1
    /* CC20 8001C420 1000A2A3 */  sb         $v0, 0x10($sp)
    /* CC24 8001C424 1100B1A3 */  sb         $s1, 0x11($sp)
    /* CC28 8001C428 0D000424 */  addiu      $a0, $zero, 0xD
  .L8001C42C:
    /* CC2C 8001C42C 1000A527 */  addiu      $a1, $sp, 0x10
    /* CC30 8001C430 F6B9000C */  jal        CdControl
    /* CC34 8001C434 21300000 */   addu      $a2, $zero, $zero
    /* CC38 8001C438 FCFF4010 */  beqz       $v0, .L8001C42C
    /* CC3C 8001C43C 0D000424 */   addiu     $a0, $zero, 0xD
    /* CC40 8001C440 02000424 */  addiu      $a0, $zero, 0x2
  .L8001C444:
    /* CC44 8001C444 0580053C */  lui        $a1, %hi(D_800564D0)
    /* CC48 8001C448 D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* CC4C 8001C44C F6B9000C */  jal        CdControl
    /* CC50 8001C450 21300000 */   addu      $a2, $zero, $zero
    /* CC54 8001C454 FBFF4010 */  beqz       $v0, .L8001C444
    /* CC58 8001C458 02000424 */   addiu     $a0, $zero, 0x2
  .L8001C45C:
    /* CC5C 8001C45C 15000424 */  addiu      $a0, $zero, 0x15
    /* CC60 8001C460 21280000 */  addu       $a1, $zero, $zero
    /* CC64 8001C464 F6B9000C */  jal        CdControl
    /* CC68 8001C468 21300000 */   addu      $a2, $zero, $zero
    /* CC6C 8001C46C FBFF4010 */  beqz       $v0, .L8001C45C
    /* CC70 8001C470 21200000 */   addu      $a0, $zero, $zero
    /* CC74 8001C474 DCB9000C */  jal        CdSync
    /* CC78 8001C478 21280000 */   addu      $a1, $zero, $zero
    /* CC7C 8001C47C 21200000 */  addu       $a0, $zero, $zero
    /* CC80 8001C480 21280000 */  addu       $a1, $zero, $zero
    /* CC84 8001C484 7BF6000C */  jal        SsSetSerialAttr
    /* CC88 8001C488 01000624 */   addiu     $a2, $zero, 0x1
    /* CC8C 8001C48C 01001024 */  addiu      $s0, $zero, 0x1
    /* CC90 8001C490 00141000 */  sll        $v0, $s0, 16
  .L8001C494:
    /* CC94 8001C494 03140200 */  sra        $v0, $v0, 16
    /* CC98 8001C498 C0300200 */  sll        $a2, $v0, 3
    /* CC9C 8001C49C 2130C200 */  addu       $a2, $a2, $v0
    /* CCA0 8001C4A0 00340600 */  sll        $a2, $a2, 16
    /* CCA4 8001C4A4 03340600 */  sra        $a2, $a2, 16
    /* CCA8 8001C4A8 21200000 */  addu       $a0, $zero, $zero
    /* CCAC 8001C4AC C7FD000C */  jal        SsSetSerialVol
    /* CCB0 8001C4B0 2128C000 */   addu      $a1, $a2, $zero
    /* CCB4 8001C4B4 23B3000C */  jal        VSync
    /* CCB8 8001C4B8 21200000 */   addu      $a0, $zero, $zero
    /* CCBC 8001C4BC 01000226 */  addiu      $v0, $s0, 0x1
    /* CCC0 8001C4C0 21804000 */  addu       $s0, $v0, $zero
    /* CCC4 8001C4C4 00140200 */  sll        $v0, $v0, 16
    /* CCC8 8001C4C8 03140200 */  sra        $v0, $v0, 16
    /* CCCC 8001C4CC 0A004228 */  slti       $v0, $v0, 0xA
    /* CCD0 8001C4D0 F0FF4014 */  bnez       $v0, .L8001C494
    /* CCD4 8001C4D4 00141000 */   sll       $v0, $s0, 16
    /* CCD8 8001C4D8 21200000 */  addu       $a0, $zero, $zero
    /* CCDC 8001C4DC 5F000524 */  addiu      $a1, $zero, 0x5F
    /* CCE0 8001C4E0 C7FD000C */  jal        SsSetSerialVol
    /* CCE4 8001C4E4 5F000624 */   addiu     $a2, $zero, 0x5F
    /* CCE8 8001C4E8 7F000424 */  addiu      $a0, $zero, 0x7F
    /* CCEC 8001C4EC 8BF7000C */  jal        SsSetMVol
    /* CCF0 8001C4F0 7F000524 */   addiu     $a1, $zero, 0x7F
  .L8001C4F4:
    /* CCF4 8001C4F4 9BC5000C */  jal        CdRead2
    /* CCF8 8001C4F8 C8000424 */   addiu     $a0, $zero, 0xC8
    /* CCFC 8001C4FC FDFF4010 */  beqz       $v0, .L8001C4F4
    /* CD00 8001C500 00000000 */   nop
    /* CD04 8001C504 2000BF8F */  lw         $ra, 0x20($sp)
    /* CD08 8001C508 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CD0C 8001C50C 1800B08F */  lw         $s0, 0x18($sp)
    /* CD10 8001C510 2800BD27 */  addiu      $sp, $sp, 0x28
    /* CD14 8001C514 0800E003 */  jr         $ra
    /* CD18 8001C518 00000000 */   nop
endlabel func_8001C3E8
