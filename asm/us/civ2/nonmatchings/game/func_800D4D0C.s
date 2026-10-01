.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D4D0C, 0x290

glabel func_800D4D0C
    /* C550C 800D4D0C B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* C5510 800D4D10 4800BFAF */  sw         $ra, 0x48($sp)
    /* C5514 800D4D14 4400B7AF */  sw         $s7, 0x44($sp)
    /* C5518 800D4D18 4000B6AF */  sw         $s6, 0x40($sp)
    /* C551C 800D4D1C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* C5520 800D4D20 3800B4AF */  sw         $s4, 0x38($sp)
    /* C5524 800D4D24 3400B3AF */  sw         $s3, 0x34($sp)
    /* C5528 800D4D28 3000B2AF */  sw         $s2, 0x30($sp)
    /* C552C 800D4D2C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* C5530 800D4D30 2800B0AF */  sw         $s0, 0x28($sp)
    /* C5534 800D4D34 21808000 */  addu       $s0, $a0, $zero
    /* C5538 800D4D38 C40F028E */  lw         $v0, 0xFC4($s0)
    /* C553C 800D4D3C 00000000 */  nop
    /* C5540 800D4D40 0100562C */  sltiu      $s6, $v0, 0x1
    /* C5544 800D4D44 E80E158E */  lw         $s5, 0xEE8($s0)
    /* C5548 800D4D48 18001724 */  addiu      $s7, $zero, 0x18
    /* C554C 800D4D4C 28020426 */  addiu      $a0, $s0, 0x228
    /* C5550 800D4D50 082C030C */  jal        func_800CB020
    /* C5554 800D4D54 03000524 */   addiu     $a1, $zero, 0x3
    /* C5558 800D4D58 1680023C */  lui        $v0, %hi(D_80158864)
    /* C555C 800D4D5C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C5560 800D4D60 00000000 */  nop
    /* C5564 800D4D64 00004484 */  lh         $a0, 0x0($v0)
    /* C5568 800D4D68 02004584 */  lh         $a1, 0x2($v0)
    /* C556C 800D4D6C 04EE010C */  jal        func_8007B810
    /* C5570 800D4D70 21980000 */   addu      $s3, $zero, $zero
    /* C5574 800D4D74 21884000 */  addu       $s1, $v0, $zero
    /* C5578 800D4D78 21202002 */  addu       $a0, $s1, $zero
    /* C557C 800D4D7C F7F5010C */  jal        func_8007D7DC
    /* C5580 800D4D80 02000524 */   addiu     $a1, $zero, 0x2
    /* C5584 800D4D84 90001424 */  addiu      $s4, $zero, 0x90
    /* C5588 800D4D88 60001224 */  addiu      $s2, $zero, 0x60
    /* C558C 800D4D8C 1980030C */  jal        func_800E0064
    /* C5590 800D4D90 21200002 */   addu      $a0, $s0, $zero
  .L800D4D94:
    /* C5594 800D4D94 63002006 */  bltz       $s1, .L800D4F24
    /* C5598 800D4D98 01000224 */   addiu     $v0, $zero, 0x1
    /* C559C 800D4D9C 840F028E */  lw         $v0, 0xF84($s0)
    /* C55A0 800D4DA0 00000000 */  nop
    /* C55A4 800D4DA4 2A186202 */  slt        $v1, $s3, $v0
    /* C55A8 800D4DA8 01006338 */  xori       $v1, $v1, 0x1
    /* C55AC 800D4DAC 23106202 */  subu       $v0, $s3, $v0
    /* C55B0 800D4DB0 05004228 */  slti       $v0, $v0, 0x5
    /* C55B4 800D4DB4 24186200 */  and        $v1, $v1, $v0
    /* C55B8 800D4DB8 55006010 */  beqz       $v1, .L800D4F10
    /* C55BC 800D4DBC 21200002 */   addu      $a0, $s0, $zero
    /* C55C0 800D4DC0 1000B2AF */  sw         $s2, 0x10($sp)
    /* C55C4 800D4DC4 1400B5AF */  sw         $s5, 0x14($sp)
    /* C55C8 800D4DC8 21282002 */  addu       $a1, $s1, $zero
    /* C55CC 800D4DCC 04000624 */  addiu      $a2, $zero, 0x4
    /* C55D0 800D4DD0 4CBB020C */  jal        func_800AED30
    /* C55D4 800D4DD4 21388002 */   addu      $a3, $s4, $zero
    /* C55D8 800D4DD8 800F038E */  lw         $v1, 0xF80($s0)
    /* C55DC 800D4DDC 01000224 */  addiu      $v0, $zero, 0x1
    /* C55E0 800D4DE0 0E006214 */  bne        $v1, $v0, .L800D4E1C
    /* C55E4 800D4DE4 00000000 */   nop
    /* C55E8 800D4DE8 BA0F0386 */  lh         $v1, 0xFBA($s0)
    /* C55EC 800D4DEC 840F028E */  lw         $v0, 0xF84($s0)
    /* C55F0 800D4DF0 00000000 */  nop
    /* C55F4 800D4DF4 23106202 */  subu       $v0, $s3, $v0
    /* C55F8 800D4DF8 08006214 */  bne        $v1, $v0, .L800D4E1C
    /* C55FC 800D4DFC 18004226 */   addiu     $v0, $s2, 0x18
    /* C5600 800D4E00 1000A2AF */  sw         $v0, 0x10($sp)
    /* C5604 800D4E04 1400A0AF */  sw         $zero, 0x14($sp)
    /* C5608 800D4E08 21200002 */  addu       $a0, $s0, $zero
    /* C560C 800D4E0C 21288002 */  addu       $a1, $s4, $zero
    /* C5610 800D4E10 21304002 */  addu       $a2, $s2, $zero
    /* C5614 800D4E14 C413020C */  jal        func_80084F10
    /* C5618 800D4E18 20008726 */   addiu     $a3, $s4, 0x20
  .L800D4E1C:
    /* C561C 800D4E1C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C5620 800D4E20 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C5624 800D4E24 CB1A030C */  jal        func_800C6B2C
    /* C5628 800D4E28 00000000 */   nop
    /* C562C 800D4E2C 40101100 */  sll        $v0, $s1, 1
    /* C5630 800D4E30 21105100 */  addu       $v0, $v0, $s1
    /* C5634 800D4E34 80100200 */  sll        $v0, $v0, 2
    /* C5638 800D4E38 21105100 */  addu       $v0, $v0, $s1
    /* C563C 800D4E3C 40200200 */  sll        $a0, $v0, 1
    /* C5640 800D4E40 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C5644 800D4E44 21082400 */  addu       $at, $at, $a0
    /* C5648 800D4E48 C4D62380 */  lb         $v1, %lo(D_8010D6C4)($at)
    /* C564C 800D4E4C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C5650 800D4E50 12006210 */  beq        $v1, $v0, .L800D4E9C
    /* C5654 800D4E54 00000000 */   nop
    /* C5658 800D4E58 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C565C 800D4E5C 21082400 */  addu       $at, $at, $a0
    /* C5660 800D4E60 C4D62290 */  lbu        $v0, %lo(D_8010D6C4)($at)
    /* C5664 800D4E64 00000000 */  nop
    /* C5668 800D4E68 40280200 */  sll        $a1, $v0, 1
    /* C566C 800D4E6C 2128A200 */  addu       $a1, $a1, $v0
    /* C5670 800D4E70 80280500 */  sll        $a1, $a1, 2
    /* C5674 800D4E74 2328A200 */  subu       $a1, $a1, $v0
    /* C5678 800D4E78 C0280500 */  sll        $a1, $a1, 3
    /* C567C 800D4E7C 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* C5680 800D4E80 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* C5684 800D4E84 1280043C */  lui        $a0, %hi(D_80121340)
    /* C5688 800D4E88 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C568C 800D4E8C 9987030C */  jal        func_800E1E64
    /* C5690 800D4E90 2128A200 */   addu      $a1, $a1, $v0
    /* C5694 800D4E94 AB530308 */  j          .L800D4EAC
    /* C5698 800D4E98 00000000 */   nop
  .L800D4E9C:
    /* C569C 800D4E9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C56A0 800D4EA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C56A4 800D4EA4 731B030C */  jal        func_800C6DCC
    /* C56A8 800D4EA8 0E000524 */   addiu     $a1, $zero, 0xE
  .L800D4EAC:
    /* C56AC 800D4EAC 1700C012 */  beqz       $s6, .L800D4F0C
    /* C56B0 800D4EB0 B0000224 */   addiu     $v0, $zero, 0xB0
    /* C56B4 800D4EB4 2000A2A7 */  sh         $v0, 0x20($sp)
    /* C56B8 800D4EB8 2200B2A7 */  sh         $s2, 0x22($sp)
    /* C56BC 800D4EBC 40010224 */  addiu      $v0, $zero, 0x140
    /* C56C0 800D4EC0 2400A2A7 */  sh         $v0, 0x24($sp)
    /* C56C4 800D4EC4 0C004226 */  addiu      $v0, $s2, 0xC
    /* C56C8 800D4EC8 2600A2A7 */  sh         $v0, 0x26($sp)
    /* C56CC 800D4ECC C40F028E */  lw         $v0, 0xFC4($s0)
    /* C56D0 800D4ED0 00000000 */  nop
    /* C56D4 800D4ED4 08004014 */  bnez       $v0, .L800D4EF8
    /* C56D8 800D4ED8 2000A627 */   addiu     $a2, $sp, 0x20
    /* C56DC 800D4EDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C56E0 800D4EE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C56E4 800D4EE4 2000A527 */  addiu      $a1, $sp, 0x20
    /* C56E8 800D4EE8 DC0F040C */  jal        func_80103F70
    /* C56EC 800D4EEC 10000624 */   addiu     $a2, $zero, 0x10
    /* C56F0 800D4EF0 C3530308 */  j          .L800D4F0C
    /* C56F4 800D4EF4 C40F02AE */   sw        $v0, 0xFC4($s0)
  .L800D4EF8:
    /* C56F8 800D4EF8 C40F048E */  lw         $a0, 0xFC4($s0)
    /* C56FC 800D4EFC 1280053C */  lui        $a1, %hi(D_80121340)
    /* C5700 800D4F00 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* C5704 800D4F04 5511040C */  jal        func_80104554
    /* C5708 800D4F08 10000724 */   addiu     $a3, $zero, 0x10
  .L800D4F0C:
    /* C570C 800D4F0C 21905702 */  addu       $s2, $s2, $s7
  .L800D4F10:
    /* C5710 800D4F10 01007326 */  addiu      $s3, $s3, 0x1
    /* C5714 800D4F14 BFED010C */  jal        func_8007B6FC
    /* C5718 800D4F18 21202002 */   addu      $a0, $s1, $zero
    /* C571C 800D4F1C 65530308 */  j          .L800D4D94
    /* C5720 800D4F20 21884000 */   addu      $s1, $v0, $zero
  .L800D4F24:
    /* C5724 800D4F24 B00F13AE */  sw         $s3, 0xFB0($s0)
    /* C5728 800D4F28 800F038E */  lw         $v1, 0xF80($s0)
    /* C572C 800D4F2C 00000000 */  nop
    /* C5730 800D4F30 0B006214 */  bne        $v1, $v0, .L800D4F60
    /* C5734 800D4F34 00000000 */   nop
    /* C5738 800D4F38 03006016 */  bnez       $s3, .L800D4F48
    /* C573C 800D4F3C 00000000 */   nop
    /* C5740 800D4F40 D8530308 */  j          .L800D4F60
    /* C5744 800D4F44 800F00AE */   sw        $zero, 0xF80($s0)
  .L800D4F48:
    /* C5748 800D4F48 BA0F0286 */  lh         $v0, 0xFBA($s0)
    /* C574C 800D4F4C 00000000 */  nop
    /* C5750 800D4F50 2A106202 */  slt        $v0, $s3, $v0
    /* C5754 800D4F54 02004010 */  beqz       $v0, .L800D4F60
    /* C5758 800D4F58 FFFF6226 */   addiu     $v0, $s3, -0x1
    /* C575C 800D4F5C BA0F02A6 */  sh         $v0, 0xFBA($s0)
  .L800D4F60:
    /* C5760 800D4F60 C40F048E */  lw         $a0, 0xFC4($s0)
    /* C5764 800D4F64 7D11040C */  jal        func_801045F4
    /* C5768 800D4F68 00000000 */   nop
    /* C576C 800D4F6C 4800BF8F */  lw         $ra, 0x48($sp)
    /* C5770 800D4F70 4400B78F */  lw         $s7, 0x44($sp)
    /* C5774 800D4F74 4000B68F */  lw         $s6, 0x40($sp)
    /* C5778 800D4F78 3C00B58F */  lw         $s5, 0x3C($sp)
    /* C577C 800D4F7C 3800B48F */  lw         $s4, 0x38($sp)
    /* C5780 800D4F80 3400B38F */  lw         $s3, 0x34($sp)
    /* C5784 800D4F84 3000B28F */  lw         $s2, 0x30($sp)
    /* C5788 800D4F88 2C00B18F */  lw         $s1, 0x2C($sp)
    /* C578C 800D4F8C 2800B08F */  lw         $s0, 0x28($sp)
    /* C5790 800D4F90 5000BD27 */  addiu      $sp, $sp, 0x50
    /* C5794 800D4F94 0800E003 */  jr         $ra
    /* C5798 800D4F98 00000000 */   nop
endlabel func_800D4D0C
