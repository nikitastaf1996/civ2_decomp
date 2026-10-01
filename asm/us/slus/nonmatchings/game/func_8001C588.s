.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C588, 0xE8

glabel func_8001C588
    /* CD88 8001C588 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* CD8C 8001C58C 2000BFAF */  sw         $ra, 0x20($sp)
    /* CD90 8001C590 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CD94 8001C594 1800B0AF */  sw         $s0, 0x18($sp)
    /* CD98 8001C598 21800000 */  addu       $s0, $zero, $zero
    /* CD9C 8001C59C 09001124 */  addiu      $s1, $zero, 0x9
    /* CDA0 8001C5A0 00141000 */  sll        $v0, $s0, 16
  .L8001C5A4:
    /* CDA4 8001C5A4 03140200 */  sra        $v0, $v0, 16
    /* CDA8 8001C5A8 23102202 */  subu       $v0, $s1, $v0
    /* CDAC 8001C5AC C0300200 */  sll        $a2, $v0, 3
    /* CDB0 8001C5B0 2130C200 */  addu       $a2, $a2, $v0
    /* CDB4 8001C5B4 00340600 */  sll        $a2, $a2, 16
    /* CDB8 8001C5B8 03340600 */  sra        $a2, $a2, 16
    /* CDBC 8001C5BC 21200000 */  addu       $a0, $zero, $zero
    /* CDC0 8001C5C0 C7FD000C */  jal        SsSetSerialVol
    /* CDC4 8001C5C4 2128C000 */   addu      $a1, $a2, $zero
    /* CDC8 8001C5C8 23B3000C */  jal        VSync
    /* CDCC 8001C5CC 21200000 */   addu      $a0, $zero, $zero
    /* CDD0 8001C5D0 01000226 */  addiu      $v0, $s0, 0x1
    /* CDD4 8001C5D4 21804000 */  addu       $s0, $v0, $zero
    /* CDD8 8001C5D8 00140200 */  sll        $v0, $v0, 16
    /* CDDC 8001C5DC 03140200 */  sra        $v0, $v0, 16
    /* CDE0 8001C5E0 0A004228 */  slti       $v0, $v0, 0xA
    /* CDE4 8001C5E4 EFFF4014 */  bnez       $v0, .L8001C5A4
    /* CDE8 8001C5E8 00141000 */   sll       $v0, $s0, 16
    /* CDEC 8001C5EC 21200000 */  addu       $a0, $zero, $zero
    /* CDF0 8001C5F0 21280000 */  addu       $a1, $zero, $zero
    /* CDF4 8001C5F4 C7FD000C */  jal        SsSetSerialVol
    /* CDF8 8001C5F8 21300000 */   addu      $a2, $zero, $zero
    /* CDFC 8001C5FC 21200000 */  addu       $a0, $zero, $zero
    /* CE00 8001C600 21280000 */  addu       $a1, $zero, $zero
    /* CE04 8001C604 7BF6000C */  jal        SsSetSerialAttr
    /* CE08 8001C608 21300000 */   addu      $a2, $zero, $zero
    /* CE0C 8001C60C 23B3000C */  jal        VSync
    /* CE10 8001C610 21200000 */   addu      $a0, $zero, $zero
    /* CE14 8001C614 21200000 */  addu       $a0, $zero, $zero
    /* CE18 8001C618 DCB9000C */  jal        CdSync
    /* CE1C 8001C61C 21280000 */   addu      $a1, $zero, $zero
    /* CE20 8001C620 21200000 */  addu       $a0, $zero, $zero
    /* CE24 8001C624 5BC5000C */  jal        CdReadSync
    /* CE28 8001C628 21280000 */   addu      $a1, $zero, $zero
    /* CE2C 8001C62C 06BB000C */  jal        CdDataSync
    /* CE30 8001C630 21200000 */   addu      $a0, $zero, $zero
    /* CE34 8001C634 09000424 */  addiu      $a0, $zero, 0x9
  .L8001C638:
    /* CE38 8001C638 21280000 */  addu       $a1, $zero, $zero
    /* CE3C 8001C63C F6B9000C */  jal        CdControl
    /* CE40 8001C640 1000A627 */   addiu     $a2, $sp, 0x10
    /* CE44 8001C644 FCFF4010 */  beqz       $v0, .L8001C638
    /* CE48 8001C648 09000424 */   addiu     $a0, $zero, 0x9
    /* CE4C 8001C64C 21200000 */  addu       $a0, $zero, $zero
    /* CE50 8001C650 DCB9000C */  jal        CdSync
    /* CE54 8001C654 21280000 */   addu      $a1, $zero, $zero
    /* CE58 8001C658 2000BF8F */  lw         $ra, 0x20($sp)
    /* CE5C 8001C65C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CE60 8001C660 1800B08F */  lw         $s0, 0x18($sp)
    /* CE64 8001C664 2800BD27 */  addiu      $sp, $sp, 0x28
    /* CE68 8001C668 0800E003 */  jr         $ra
    /* CE6C 8001C66C 00000000 */   nop
endlabel func_8001C588
