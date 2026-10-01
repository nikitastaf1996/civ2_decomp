.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8480, 0x188

glabel func_800D8480
    /* C8C80 800D8480 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* C8C84 800D8484 4400BFAF */  sw         $ra, 0x44($sp)
    /* C8C88 800D8488 4000BEAF */  sw         $fp, 0x40($sp)
    /* C8C8C 800D848C 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* C8C90 800D8490 3800B6AF */  sw         $s6, 0x38($sp)
    /* C8C94 800D8494 3400B5AF */  sw         $s5, 0x34($sp)
    /* C8C98 800D8498 3000B4AF */  sw         $s4, 0x30($sp)
    /* C8C9C 800D849C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* C8CA0 800D84A0 2800B2AF */  sw         $s2, 0x28($sp)
    /* C8CA4 800D84A4 2400B1AF */  sw         $s1, 0x24($sp)
    /* C8CA8 800D84A8 2000B0AF */  sw         $s0, 0x20($sp)
    /* C8CAC 800D84AC 21B0A000 */  addu       $s6, $a1, $zero
    /* C8CB0 800D84B0 21A8E000 */  addu       $s5, $a3, $zero
    /* C8CB4 800D84B4 5C00BE8F */  lw         $fp, 0x5C($sp)
    /* C8CB8 800D84B8 6000B78F */  lw         $s7, 0x60($sp)
    /* C8CBC 800D84BC 21A0C000 */  addu       $s4, $a2, $zero
    /* C8CC0 800D84C0 21900000 */  addu       $s2, $zero, $zero
    /* C8CC4 800D84C4 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* C8CC8 800D84C8 1280023C */  lui        $v0, %hi(D_8011A282)
    /* C8CCC 800D84CC 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* C8CD0 800D84D0 00000000 */  nop
    /* C8CD4 800D84D4 2B004018 */  blez       $v0, .L800D8584
    /* C8CD8 800D84D8 21880000 */   addu      $s1, $zero, $zero
    /* C8CDC 800D84DC 40101100 */  sll        $v0, $s1, 1
  .L800D84E0:
    /* C8CE0 800D84E0 21105100 */  addu       $v0, $v0, $s1
    /* C8CE4 800D84E4 80100200 */  sll        $v0, $v0, 2
    /* C8CE8 800D84E8 23105100 */  subu       $v0, $v0, $s1
    /* C8CEC 800D84EC C0180200 */  sll        $v1, $v0, 3
    /* C8CF0 800D84F0 1180013C */  lui        $at, %hi(D_80113ED8)
    /* C8CF4 800D84F4 21082300 */  addu       $at, $at, $v1
    /* C8CF8 800D84F8 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* C8CFC 800D84FC 00000000 */  nop
    /* C8D00 800D8500 19005414 */  bne        $v0, $s4, .L800D8568
    /* C8D04 800D8504 21202002 */   addu      $a0, $s1, $zero
    /* C8D08 800D8508 1180013C */  lui        $at, %hi(D_80113ED9)
    /* C8D0C 800D850C 21082300 */  addu       $at, $at, $v1
    /* C8D10 800D8510 D93E3080 */  lb         $s0, %lo(D_80113ED9)($at)
    /* C8D14 800D8514 C826020C */  jal        func_80089B20
    /* C8D18 800D8518 01000524 */   addiu     $a1, $zero, 0x1
    /* C8D1C 800D851C 02004010 */  beqz       $v0, .L800D8528
    /* C8D20 800D8520 40101100 */   sll       $v0, $s1, 1
    /* C8D24 800D8524 C8001026 */  addiu      $s0, $s0, 0xC8
  .L800D8528:
    /* C8D28 800D8528 21105100 */  addu       $v0, $v0, $s1
    /* C8D2C 800D852C 80100200 */  sll        $v0, $v0, 2
    /* C8D30 800D8530 23105100 */  subu       $v0, $v0, $s1
    /* C8D34 800D8534 C0100200 */  sll        $v0, $v0, 3
    /* C8D38 800D8538 1180013C */  lui        $at, %hi(D_80113F0D)
    /* C8D3C 800D853C 21082200 */  addu       $at, $at, $v0
    /* C8D40 800D8540 0D3F2380 */  lb         $v1, %lo(D_80113F0D)($at)
    /* C8D44 800D8544 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C8D48 800D8548 03006214 */  bne        $v1, $v0, .L800D8558
    /* C8D4C 800D854C 2A105002 */   slt       $v0, $s2, $s0
    /* C8D50 800D8550 64001026 */  addiu      $s0, $s0, 0x64
    /* C8D54 800D8554 2A105002 */  slt        $v0, $s2, $s0
  .L800D8558:
    /* C8D58 800D8558 03004010 */  beqz       $v0, .L800D8568
    /* C8D5C 800D855C 00000000 */   nop
    /* C8D60 800D8560 21900002 */  addu       $s2, $s0, $zero
    /* C8D64 800D8564 21982002 */  addu       $s3, $s1, $zero
  .L800D8568:
    /* C8D68 800D8568 01003126 */  addiu      $s1, $s1, 0x1
    /* C8D6C 800D856C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* C8D70 800D8570 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* C8D74 800D8574 00000000 */  nop
    /* C8D78 800D8578 2A102202 */  slt        $v0, $s1, $v0
    /* C8D7C 800D857C D8FF4014 */  bnez       $v0, .L800D84E0
    /* C8D80 800D8580 40101100 */   sll       $v0, $s1, 1
  .L800D8584:
    /* C8D84 800D8584 12006006 */  bltz       $s3, .L800D85D0
    /* C8D88 800D8588 0100A232 */   andi      $v0, $s5, 0x1
    /* C8D8C 800D858C 5800A78F */  lw         $a3, 0x58($sp)
    /* C8D90 800D8590 02004010 */  beqz       $v0, .L800D859C
    /* C8D94 800D8594 21886002 */   addu      $s1, $s3, $zero
    /* C8D98 800D8598 1600E724 */  addiu      $a3, $a3, 0x16
  .L800D859C:
    /* C8D9C 800D859C 18000224 */  addiu      $v0, $zero, 0x18
    /* C8DA0 800D85A0 23105700 */  subu       $v0, $v0, $s7
    /* C8DA4 800D85A4 C21F0200 */  srl        $v1, $v0, 31
    /* C8DA8 800D85A8 21104300 */  addu       $v0, $v0, $v1
    /* C8DAC 800D85AC 43100200 */  sra        $v0, $v0, 1
    /* C8DB0 800D85B0 2310C203 */  subu       $v0, $fp, $v0
    /* C8DB4 800D85B4 1000A2AF */  sw         $v0, 0x10($sp)
    /* C8DB8 800D85B8 FEFF0824 */  addiu      $t0, $zero, -0x2
    /* C8DBC 800D85BC 1400A8AF */  sw         $t0, 0x14($sp)
    /* C8DC0 800D85C0 2120C002 */  addu       $a0, $s6, $zero
    /* C8DC4 800D85C4 21282002 */  addu       $a1, $s1, $zero
    /* C8DC8 800D85C8 17C0020C */  jal        func_800B005C
    /* C8DCC 800D85CC 21300000 */   addu      $a2, $zero, $zero
  .L800D85D0:
    /* C8DD0 800D85D0 21100000 */  addu       $v0, $zero, $zero
    /* C8DD4 800D85D4 4400BF8F */  lw         $ra, 0x44($sp)
    /* C8DD8 800D85D8 4000BE8F */  lw         $fp, 0x40($sp)
    /* C8DDC 800D85DC 3C00B78F */  lw         $s7, 0x3C($sp)
    /* C8DE0 800D85E0 3800B68F */  lw         $s6, 0x38($sp)
    /* C8DE4 800D85E4 3400B58F */  lw         $s5, 0x34($sp)
    /* C8DE8 800D85E8 3000B48F */  lw         $s4, 0x30($sp)
    /* C8DEC 800D85EC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* C8DF0 800D85F0 2800B28F */  lw         $s2, 0x28($sp)
    /* C8DF4 800D85F4 2400B18F */  lw         $s1, 0x24($sp)
    /* C8DF8 800D85F8 2000B08F */  lw         $s0, 0x20($sp)
    /* C8DFC 800D85FC 4800BD27 */  addiu      $sp, $sp, 0x48
    /* C8E00 800D8600 0800E003 */  jr         $ra
    /* C8E04 800D8604 00000000 */   nop
endlabel func_800D8480
