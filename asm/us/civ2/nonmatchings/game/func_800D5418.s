.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D5418, 0x23C

glabel func_800D5418
    /* C5C18 800D5418 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* C5C1C 800D541C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* C5C20 800D5420 3800B6AF */  sw         $s6, 0x38($sp)
    /* C5C24 800D5424 3400B5AF */  sw         $s5, 0x34($sp)
    /* C5C28 800D5428 3000B4AF */  sw         $s4, 0x30($sp)
    /* C5C2C 800D542C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* C5C30 800D5430 2800B2AF */  sw         $s2, 0x28($sp)
    /* C5C34 800D5434 2400B1AF */  sw         $s1, 0x24($sp)
    /* C5C38 800D5438 2000B0AF */  sw         $s0, 0x20($sp)
    /* C5C3C 800D543C 21A88000 */  addu       $s5, $a0, $zero
    /* C5C40 800D5440 2190A000 */  addu       $s2, $a1, $zero
    /* C5C44 800D5444 21980000 */  addu       $s3, $zero, $zero
    /* C5C48 800D5448 43380700 */  sra        $a3, $a3, 1
    /* C5C4C 800D544C 2130C700 */  addu       $a2, $a2, $a3
    /* C5C50 800D5450 FAFFC624 */  addiu      $a2, $a2, -0x6
    /* C5C54 800D5454 21880000 */  addu       $s1, $zero, $zero
    /* C5C58 800D5458 00340600 */  sll        $a2, $a2, 16
    /* C5C5C 800D545C 03B40600 */  sra        $s6, $a2, 16
  .L800D5460:
    /* C5C60 800D5460 0400222A */  slti       $v0, $s1, 0x4
    /* C5C64 800D5464 70004010 */  beqz       $v0, .L800D5628
    /* C5C68 800D5468 01000224 */   addiu     $v0, $zero, 0x1
    /* C5C6C 800D546C 11002212 */  beq        $s1, $v0, .L800D54B4
    /* C5C70 800D5470 21A00000 */   addu      $s4, $zero, $zero
    /* C5C74 800D5474 0200222A */  slti       $v0, $s1, 0x2
    /* C5C78 800D5478 05004010 */  beqz       $v0, .L800D5490
    /* C5C7C 800D547C 00000000 */   nop
    /* C5C80 800D5480 0A002012 */  beqz       $s1, .L800D54AC
    /* C5C84 800D5484 00000000 */   nop
    /* C5C88 800D5488 5C550308 */  j          .L800D5570
    /* C5C8C 800D548C 00000000 */   nop
  .L800D5490:
    /* C5C90 800D5490 02000224 */  addiu      $v0, $zero, 0x2
    /* C5C94 800D5494 1B002212 */  beq        $s1, $v0, .L800D5504
    /* C5C98 800D5498 03000224 */   addiu     $v0, $zero, 0x3
    /* C5C9C 800D549C 1B002212 */  beq        $s1, $v0, .L800D550C
    /* C5CA0 800D54A0 00000000 */   nop
    /* C5CA4 800D54A4 5C550308 */  j          .L800D5570
    /* C5CA8 800D54A8 00000000 */   nop
  .L800D54AC:
    /* C5CAC 800D54AC 5C550308 */  j          .L800D5570
    /* C5CB0 800D54B0 0E001024 */   addiu     $s0, $zero, 0xE
  .L800D54B4:
    /* C5CB4 800D54B4 0B001024 */  addiu      $s0, $zero, 0xB
    /* C5CB8 800D54B8 1680023C */  lui        $v0, %hi(D_80158864)
    /* C5CBC 800D54BC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C5CC0 800D54C0 00000000 */  nop
    /* C5CC4 800D54C4 08004480 */  lb         $a0, 0x8($v0)
    /* C5CC8 800D54C8 8ACA010C */  jal        func_80072A28
    /* C5CCC 800D54CC 37000524 */   addiu     $a1, $zero, 0x37
    /* C5CD0 800D54D0 53004010 */  beqz       $v0, .L800D5620
    /* C5CD4 800D54D4 00000000 */   nop
    /* C5CD8 800D54D8 1680023C */  lui        $v0, %hi(D_80158864)
    /* C5CDC 800D54DC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C5CE0 800D54E0 00000000 */  nop
    /* C5CE4 800D54E4 08004480 */  lb         $a0, 0x8($v0)
    /* C5CE8 800D54E8 C17B030C */  jal        func_800DEF04
    /* C5CEC 800D54EC 0A000524 */   addiu     $a1, $zero, 0xA
    /* C5CF0 800D54F0 1F004010 */  beqz       $v0, .L800D5570
    /* C5CF4 800D54F4 00000000 */   nop
    /* C5CF8 800D54F8 01001424 */  addiu      $s4, $zero, 0x1
    /* C5CFC 800D54FC 5C550308 */  j          .L800D5570
    /* C5D00 800D5500 31001024 */   addiu     $s0, $zero, 0x31
  .L800D5504:
    /* C5D04 800D5504 5C550308 */  j          .L800D5570
    /* C5D08 800D5508 04001024 */   addiu     $s0, $zero, 0x4
  .L800D550C:
    /* C5D0C 800D550C 1680043C */  lui        $a0, %hi(D_80158860)
    /* C5D10 800D5510 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C5D14 800D5514 C826020C */  jal        func_80089B20
    /* C5D18 800D5518 01000524 */   addiu     $a1, $zero, 0x1
    /* C5D1C 800D551C 02004010 */  beqz       $v0, .L800D5528
    /* C5D20 800D5520 07001024 */   addiu     $s0, $zero, 0x7
    /* C5D24 800D5524 01001024 */  addiu      $s0, $zero, 0x1
  .L800D5528:
    /* C5D28 800D5528 1680023C */  lui        $v0, %hi(D_80158864)
    /* C5D2C 800D552C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C5D30 800D5530 00000000 */  nop
    /* C5D34 800D5534 08004380 */  lb         $v1, 0x8($v0)
    /* C5D38 800D5538 00000000 */  nop
    /* C5D3C 800D553C 40100300 */  sll        $v0, $v1, 1
    /* C5D40 800D5540 21104300 */  addu       $v0, $v0, $v1
    /* C5D44 800D5544 80100200 */  sll        $v0, $v0, 2
    /* C5D48 800D5548 23104300 */  subu       $v0, $v0, $v1
    /* C5D4C 800D554C 00110200 */  sll        $v0, $v0, 4
    /* C5D50 800D5550 23104300 */  subu       $v0, $v0, $v1
    /* C5D54 800D5554 C0100200 */  sll        $v0, $v0, 3
    /* C5D58 800D5558 1180013C */  lui        $at, %hi(D_801176A7)
    /* C5D5C 800D555C 21082200 */  addu       $at, $at, $v0
    /* C5D60 800D5560 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* C5D64 800D5564 06000224 */  addiu      $v0, $zero, 0x6
    /* C5D68 800D5568 2D006214 */  bne        $v1, $v0, .L800D5620
    /* C5D6C 800D556C 00000000 */   nop
  .L800D5570:
    /* C5D70 800D5570 1680043C */  lui        $a0, %hi(D_80158860)
    /* C5D74 800D5574 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C5D78 800D5578 C826020C */  jal        func_80089B20
    /* C5D7C 800D557C 21280002 */   addu      $a1, $s0, $zero
    /* C5D80 800D5580 03004014 */  bnez       $v0, .L800D5590
    /* C5D84 800D5584 00000000 */   nop
    /* C5D88 800D5588 25008012 */  beqz       $s4, .L800D5620
    /* C5D8C 800D558C 00000000 */   nop
  .L800D5590:
    /* C5D90 800D5590 0300622A */  slti       $v0, $s3, 0x3
    /* C5D94 800D5594 24004010 */  beqz       $v0, .L800D5628
    /* C5D98 800D5598 00000000 */   nop
    /* C5D9C 800D559C 05006012 */  beqz       $s3, .L800D55B4
    /* C5DA0 800D55A0 00000000 */   nop
    /* C5DA4 800D55A4 0000428E */  lw         $v0, 0x0($s2)
    /* C5DA8 800D55A8 00000000 */  nop
    /* C5DAC 800D55AC FEFF4224 */  addiu      $v0, $v0, -0x2
    /* C5DB0 800D55B0 000042AE */  sw         $v0, 0x0($s2)
  .L800D55B4:
    /* C5DB4 800D55B4 01007326 */  addiu      $s3, $s3, 0x1
    /* C5DB8 800D55B8 0000428E */  lw         $v0, 0x0($s2)
    /* C5DBC 800D55BC 00000000 */  nop
    /* C5DC0 800D55C0 ECFF4224 */  addiu      $v0, $v0, -0x14
    /* C5DC4 800D55C4 000042AE */  sw         $v0, 0x0($s2)
    /* C5DC8 800D55C8 E40EA48E */  lw         $a0, 0xEE4($s5)
    /* C5DCC 800D55CC 00000000 */  nop
    /* C5DD0 800D55D0 80240400 */  sll        $a0, $a0, 18
    /* C5DD4 800D55D4 03240400 */  sra        $a0, $a0, 16
    /* C5DD8 800D55D8 D0EC030C */  jal        func_800FB340
    /* C5DDC 800D55DC 08000524 */   addiu     $a1, $zero, 0x8
    /* C5DE0 800D55E0 C0281000 */  sll        $a1, $s0, 3
    /* C5DE4 800D55E4 2128B000 */  addu       $a1, $a1, $s0
    /* C5DE8 800D55E8 80280500 */  sll        $a1, $a1, 2
    /* C5DEC 800D55EC 2128B000 */  addu       $a1, $a1, $s0
    /* C5DF0 800D55F0 80280500 */  sll        $a1, $a1, 2
    /* C5DF4 800D55F4 1380023C */  lui        $v0, %hi(D_80131638)
    /* C5DF8 800D55F8 38164224 */  addiu      $v0, $v0, %lo(D_80131638)
    /* C5DFC 800D55FC 00004786 */  lh         $a3, 0x0($s2)
    /* C5E00 800D5600 1000B6AF */  sw         $s6, 0x10($sp)
    /* C5E04 800D5604 1800A427 */  addiu      $a0, $sp, 0x18
    /* C5E08 800D5608 2128A200 */  addu       $a1, $a1, $v0
    /* C5E0C 800D560C 89EE030C */  jal        func_800FBA24
    /* C5E10 800D5610 2130A002 */   addu      $a2, $s5, $zero
    /* C5E14 800D5614 01000424 */  addiu      $a0, $zero, 0x1
    /* C5E18 800D5618 D0EC030C */  jal        func_800FB340
    /* C5E1C 800D561C 01000524 */   addiu     $a1, $zero, 0x1
  .L800D5620:
    /* C5E20 800D5620 18550308 */  j          .L800D5460
    /* C5E24 800D5624 01003126 */   addiu     $s1, $s1, 0x1
  .L800D5628:
    /* C5E28 800D5628 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* C5E2C 800D562C 3800B68F */  lw         $s6, 0x38($sp)
    /* C5E30 800D5630 3400B58F */  lw         $s5, 0x34($sp)
    /* C5E34 800D5634 3000B48F */  lw         $s4, 0x30($sp)
    /* C5E38 800D5638 2C00B38F */  lw         $s3, 0x2C($sp)
    /* C5E3C 800D563C 2800B28F */  lw         $s2, 0x28($sp)
    /* C5E40 800D5640 2400B18F */  lw         $s1, 0x24($sp)
    /* C5E44 800D5644 2000B08F */  lw         $s0, 0x20($sp)
    /* C5E48 800D5648 4000BD27 */  addiu      $sp, $sp, 0x40
    /* C5E4C 800D564C 0800E003 */  jr         $ra
    /* C5E50 800D5650 00000000 */   nop
endlabel func_800D5418
