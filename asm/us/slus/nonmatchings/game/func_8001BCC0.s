.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001BCC0, 0x154

glabel func_8001BCC0
    /* C4C0 8001BCC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C4C4 8001BCC4 2400BFAF */  sw         $ra, 0x24($sp)
    /* C4C8 8001BCC8 2000B4AF */  sw         $s4, 0x20($sp)
    /* C4CC 8001BCCC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C4D0 8001BCD0 1800B2AF */  sw         $s2, 0x18($sp)
    /* C4D4 8001BCD4 1400B1AF */  sw         $s1, 0x14($sp)
    /* C4D8 8001BCD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* C4DC 8001BCDC 21988000 */  addu       $s3, $a0, $zero
    /* C4E0 8001BCE0 1780043C */  lui        $a0, %hi(D_80177748)
    /* C4E4 8001BCE4 48778424 */  addiu      $a0, $a0, %lo(D_80177748)
    /* C4E8 8001BCE8 826D000C */  jal        func_8001B608
    /* C4EC 8001BCEC 10000524 */   addiu     $a1, $zero, 0x10
    /* C4F0 8001BCF0 21880000 */  addu       $s1, $zero, $zero
    /* C4F4 8001BCF4 1480123C */  lui        $s2, %hi(D_80139D08)
    /* C4F8 8001BCF8 089D5226 */  addiu      $s2, $s2, %lo(D_80139D08)
    /* C4FC 8001BCFC 0D80103C */  lui        $s0, %hi(D_800CCDE8)
    /* C500 8001BD00 E8CD1026 */  addiu      $s0, $s0, %lo(D_800CCDE8)
    /* C504 8001BD04 80201100 */  sll        $a0, $s1, 2
  .L8001BD08:
    /* C508 8001BD08 21109200 */  addu       $v0, $a0, $s2
    /* C50C 8001BD0C 0000428C */  lw         $v0, 0x0($v0)
    /* C510 8001BD10 00000000 */  nop
    /* C514 8001BD14 05004010 */  beqz       $v0, .L8001BD2C
    /* C518 8001BD18 21209100 */   addu      $a0, $a0, $s1
    /* C51C 8001BD1C 00230400 */  sll        $a0, $a0, 12
    /* C520 8001BD20 21209000 */  addu       $a0, $a0, $s0
    /* C524 8001BD24 826D000C */  jal        func_8001B608
    /* C528 8001BD28 00500524 */   addiu     $a1, $zero, 0x5000
  .L8001BD2C:
    /* C52C 8001BD2C 01003126 */  addiu      $s1, $s1, 0x1
    /* C530 8001BD30 0800222A */  slti       $v0, $s1, 0x8
    /* C534 8001BD34 F4FF4014 */  bnez       $v0, .L8001BD08
    /* C538 8001BD38 80201100 */   sll       $a0, $s1, 2
    /* C53C 8001BD3C 33F8000C */  jal        SsStart2
    /* C540 8001BD40 21880000 */   addu      $s1, $zero, $zero
    /* C544 8001BD44 7F000424 */  addiu      $a0, $zero, 0x7F
    /* C548 8001BD48 8BF7000C */  jal        SsSetMVol
    /* C54C 8001BD4C 7F000524 */   addiu     $a1, $zero, 0x7F
    /* C550 8001BD50 1480143C */  lui        $s4, %hi(D_80139D08)
    /* C554 8001BD54 089D9426 */  addiu      $s4, $s4, %lo(D_80139D08)
    /* C558 8001BD58 1780123C */  lui        $s2, %hi(D_80177748)
    /* C55C 8001BD5C 48775226 */  addiu      $s2, $s2, %lo(D_80177748)
    /* C560 8001BD60 80181100 */  sll        $v1, $s1, 2
  .L8001BD64:
    /* C564 8001BD64 21107400 */  addu       $v0, $v1, $s4
    /* C568 8001BD68 0000448C */  lw         $a0, 0x0($v0)
    /* C56C 8001BD6C 00000000 */  nop
    /* C570 8001BD70 1F008010 */  beqz       $a0, .L8001BDF0
    /* C574 8001BD74 21807100 */   addu      $s0, $v1, $s1
    /* C578 8001BD78 00831000 */  sll        $s0, $s0, 12
    /* C57C 8001BD7C 0D80023C */  lui        $v0, %hi(D_800CCDE8)
    /* C580 8001BD80 E8CD4224 */  addiu      $v0, $v0, %lo(D_800CCDE8)
    /* C584 8001BD84 21800202 */  addu       $s0, $s0, $v0
    /* C588 8001BD88 1480013C */  lui        $at, %hi(D_80139D30)
    /* C58C 8001BD8C 21082300 */  addu       $at, $at, $v1
    /* C590 8001BD90 309D258C */  lw         $a1, %lo(D_80139D30)($at)
    /* C594 8001BD94 01000624 */  addiu      $a2, $zero, 0x1
    /* C598 8001BD98 BF67000C */  jal        func_80019EFC
    /* C59C 8001BD9C 21380002 */   addu      $a3, $s0, $zero
    /* C5A0 8001BDA0 002C1300 */  sll        $a1, $s3, 16
    /* C5A4 8001BDA4 21200002 */  addu       $a0, $s0, $zero
    /* C5A8 8001BDA8 C3EC000C */  jal        SsSeqOpen
    /* C5AC 8001BDAC 032C0500 */   sra       $a1, $a1, 16
    /* C5B0 8001BDB0 40801100 */  sll        $s0, $s1, 1
    /* C5B4 8001BDB4 21801202 */  addu       $s0, $s0, $s2
    /* C5B8 8001BDB8 000002A6 */  sh         $v0, 0x0($s0)
    /* C5BC 8001BDBC 00140200 */  sll        $v0, $v0, 16
    /* C5C0 8001BDC0 03240200 */  sra        $a0, $v0, 16
    /* C5C4 8001BDC4 6F000524 */  addiu      $a1, $zero, 0x6F
    /* C5C8 8001BDC8 2FFF000C */  jal        SsSeqSetVol
    /* C5CC 8001BDCC 6F000624 */   addiu     $a2, $zero, 0x6F
    /* C5D0 8001BDD0 00000486 */  lh         $a0, 0x0($s0)
    /* C5D4 8001BDD4 21280000 */  addu       $a1, $zero, $zero
    /* C5D8 8001BDD8 13F6000C */  jal        SsSeqPlay
    /* C5DC 8001BDDC 01000624 */   addiu     $a2, $zero, 0x1
    /* C5E0 8001BDE0 01003126 */  addiu      $s1, $s1, 0x1
    /* C5E4 8001BDE4 0800222A */  slti       $v0, $s1, 0x8
    /* C5E8 8001BDE8 DEFF4014 */  bnez       $v0, .L8001BD64
    /* C5EC 8001BDEC 80181100 */   sll       $v1, $s1, 2
  .L8001BDF0:
    /* C5F0 8001BDF0 2400BF8F */  lw         $ra, 0x24($sp)
    /* C5F4 8001BDF4 2000B48F */  lw         $s4, 0x20($sp)
    /* C5F8 8001BDF8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C5FC 8001BDFC 1800B28F */  lw         $s2, 0x18($sp)
    /* C600 8001BE00 1400B18F */  lw         $s1, 0x14($sp)
    /* C604 8001BE04 1000B08F */  lw         $s0, 0x10($sp)
    /* C608 8001BE08 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C60C 8001BE0C 0800E003 */  jr         $ra
    /* C610 8001BE10 00000000 */   nop
endlabel func_8001BCC0
