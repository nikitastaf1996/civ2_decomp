.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DC3CC, 0x4A0

glabel func_800DC3CC
    /* CCBCC 800DC3CC 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* CCBD0 800DC3D0 8000BFAF */  sw         $ra, 0x80($sp)
    /* CCBD4 800DC3D4 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* CCBD8 800DC3D8 7800B6AF */  sw         $s6, 0x78($sp)
    /* CCBDC 800DC3DC 7400B5AF */  sw         $s5, 0x74($sp)
    /* CCBE0 800DC3E0 7000B4AF */  sw         $s4, 0x70($sp)
    /* CCBE4 800DC3E4 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* CCBE8 800DC3E8 6800B2AF */  sw         $s2, 0x68($sp)
    /* CCBEC 800DC3EC 6400B1AF */  sw         $s1, 0x64($sp)
    /* CCBF0 800DC3F0 6000B0AF */  sw         $s0, 0x60($sp)
    /* CCBF4 800DC3F4 21A08000 */  addu       $s4, $a0, $zero
    /* CCBF8 800DC3F8 21880000 */  addu       $s1, $zero, $zero
    /* CCBFC 800DC3FC FFFF1724 */  addiu      $s7, $zero, -0x1
    /* CCC00 800DC400 21800000 */  addu       $s0, $zero, $zero
    /* CCC04 800DC404 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CCC08 800DC408 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CCC0C 800DC40C 00000000 */  nop
    /* CCC10 800DC410 1E004018 */  blez       $v0, .L800DC48C
    /* CCC14 800DC414 21B00000 */   addu      $s6, $zero, $zero
    /* CCC18 800DC418 40101000 */  sll        $v0, $s0, 1
  .L800DC41C:
    /* CCC1C 800DC41C 21105000 */  addu       $v0, $v0, $s0
    /* CCC20 800DC420 80100200 */  sll        $v0, $v0, 2
    /* CCC24 800DC424 23105000 */  subu       $v0, $v0, $s0
    /* CCC28 800DC428 C0100200 */  sll        $v0, $v0, 3
    /* CCC2C 800DC42C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CCC30 800DC430 21082200 */  addu       $at, $at, $v0
    /* CCC34 800DC434 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CCC38 800DC438 00000000 */  nop
    /* CCC3C 800DC43C 0C005414 */  bne        $v0, $s4, .L800DC470
    /* CCC40 800DC440 21200002 */   addu      $a0, $s0, $zero
    /* CCC44 800DC444 C826020C */  jal        func_80089B20
    /* CCC48 800DC448 02000524 */   addiu     $a1, $zero, 0x2
    /* CCC4C 800DC44C 02004010 */  beqz       $v0, .L800DC458
    /* CCC50 800DC450 21200002 */   addu      $a0, $s0, $zero
    /* CCC54 800DC454 0100D626 */  addiu      $s6, $s6, 0x1
  .L800DC458:
    /* CCC58 800DC458 C826020C */  jal        func_80089B20
    /* CCC5C 800DC45C 01000524 */   addiu     $a1, $zero, 0x1
    /* CCC60 800DC460 02004010 */  beqz       $v0, .L800DC46C
    /* CCC64 800DC464 00000000 */   nop
    /* CCC68 800DC468 21B80002 */  addu       $s7, $s0, $zero
  .L800DC46C:
    /* CCC6C 800DC46C 01003126 */  addiu      $s1, $s1, 0x1
  .L800DC470:
    /* CCC70 800DC470 01001026 */  addiu      $s0, $s0, 0x1
    /* CCC74 800DC474 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CCC78 800DC478 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CCC7C 800DC47C 00000000 */  nop
    /* CCC80 800DC480 2A100202 */  slt        $v0, $s0, $v0
    /* CCC84 800DC484 E5FF4014 */  bnez       $v0, .L800DC41C
    /* CCC88 800DC488 40101000 */   sll       $v0, $s0, 1
  .L800DC48C:
    /* CCC8C 800DC48C 21182002 */  addu       $v1, $s1, $zero
    /* CCC90 800DC490 01000224 */  addiu      $v0, $zero, 0x1
    /* CCC94 800DC494 2A105100 */  slt        $v0, $v0, $s1
    /* CCC98 800DC498 02004010 */  beqz       $v0, .L800DC4A4
    /* CCC9C 800DC49C 01001124 */   addiu     $s1, $zero, 0x1
    /* CCCA0 800DC4A0 21886000 */  addu       $s1, $v1, $zero
  .L800DC4A4:
    /* CCCA4 800DC4A4 21180000 */  addu       $v1, $zero, $zero
    /* CCCA8 800DC4A8 1280023C */  lui        $v0, %hi(D_8011A280)
    /* CCCAC 800DC4AC 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* CCCB0 800DC4B0 00000000 */  nop
    /* CCCB4 800DC4B4 13004018 */  blez       $v0, .L800DC504
    /* CCCB8 800DC4B8 21200000 */   addu      $a0, $zero, $zero
    /* CCCBC 800DC4BC 1280053C */  lui        $a1, %hi(D_8011A280)
    /* CCCC0 800DC4C0 80A2A584 */  lh         $a1, %lo(D_8011A280)($a1)
    /* CCCC4 800DC4C4 40100300 */  sll        $v0, $v1, 1
  .L800DC4C8:
    /* CCCC8 800DC4C8 21104300 */  addu       $v0, $v0, $v1
    /* CCCCC 800DC4CC 80100200 */  sll        $v0, $v0, 2
    /* CCCD0 800DC4D0 21104300 */  addu       $v0, $v0, $v1
    /* CCCD4 800DC4D4 40100200 */  sll        $v0, $v0, 1
    /* CCCD8 800DC4D8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* CCCDC 800DC4DC 21082200 */  addu       $at, $at, $v0
    /* CCCE0 800DC4E0 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* CCCE4 800DC4E4 00000000 */  nop
    /* CCCE8 800DC4E8 02005414 */  bne        $v0, $s4, .L800DC4F4
    /* CCCEC 800DC4EC 00000000 */   nop
    /* CCCF0 800DC4F0 01008424 */  addiu      $a0, $a0, 0x1
  .L800DC4F4:
    /* CCCF4 800DC4F4 01006324 */  addiu      $v1, $v1, 0x1
    /* CCCF8 800DC4F8 2A106500 */  slt        $v0, $v1, $a1
    /* CCCFC 800DC4FC F2FF4014 */  bnez       $v0, .L800DC4C8
    /* CCD00 800DC500 40100300 */   sll       $v0, $v1, 1
  .L800DC504:
    /* CCD04 800DC504 FFFF8324 */  addiu      $v1, $a0, -0x1
    /* CCD08 800DC508 21187100 */  addu       $v1, $v1, $s1
    /* CCD0C 800DC50C 1A007100 */  div        $zero, $v1, $s1
    /* CCD10 800DC510 02002016 */  bnez       $s1, .L800DC51C
    /* CCD14 800DC514 00000000 */   nop
    /* CCD18 800DC518 0D000700 */  break      7
  .L800DC51C:
    /* CCD1C 800DC51C FFFF0124 */  addiu      $at, $zero, -0x1
    /* CCD20 800DC520 04002116 */  bne        $s1, $at, .L800DC534
    /* CCD24 800DC524 0080013C */   lui       $at, (0x80000000 >> 16)
    /* CCD28 800DC528 02006114 */  bne        $v1, $at, .L800DC534
    /* CCD2C 800DC52C 00000000 */   nop
    /* CCD30 800DC530 0D000600 */  break      6
  .L800DC534:
    /* CCD34 800DC534 12180000 */  mflo       $v1
    /* CCD38 800DC538 40101400 */  sll        $v0, $s4, 1
    /* CCD3C 800DC53C 21105400 */  addu       $v0, $v0, $s4
    /* CCD40 800DC540 80100200 */  sll        $v0, $v0, 2
    /* CCD44 800DC544 23105400 */  subu       $v0, $v0, $s4
    /* CCD48 800DC548 00110200 */  sll        $v0, $v0, 4
    /* CCD4C 800DC54C 23105400 */  subu       $v0, $v0, $s4
    /* CCD50 800DC550 C0100200 */  sll        $v0, $v0, 3
    /* CCD54 800DC554 1180013C */  lui        $at, %hi(D_801176A7)
    /* CCD58 800DC558 21082200 */  addu       $at, $at, $v0
    /* CCD5C 800DC55C A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* CCD60 800DC560 00000000 */  nop
    /* CCD64 800DC564 0500422C */  sltiu      $v0, $v0, 0x5
    /* CCD68 800DC568 02004014 */  bnez       $v0, .L800DC574
    /* CCD6C 800DC56C 03006228 */   slti      $v0, $v1, 0x3
    /* CCD70 800DC570 02006228 */  slti       $v0, $v1, 0x2
  .L800DC574:
    /* CCD74 800DC574 B1004014 */  bnez       $v0, .L800DC83C
    /* CCD78 800DC578 01000224 */   addiu     $v0, $zero, 0x1
    /* CCD7C 800DC57C 21900000 */  addu       $s2, $zero, $zero
    /* CCD80 800DC580 1000A327 */  addiu      $v1, $sp, 0x10
    /* CCD84 800DC584 80101200 */  sll        $v0, $s2, 2
  .L800DC588:
    /* CCD88 800DC588 21104300 */  addu       $v0, $v0, $v1
    /* CCD8C 800DC58C 000040AC */  sw         $zero, 0x0($v0)
    /* CCD90 800DC590 200040AC */  sw         $zero, 0x20($v0)
    /* CCD94 800DC594 01005226 */  addiu      $s2, $s2, 0x1
    /* CCD98 800DC598 0800422A */  slti       $v0, $s2, 0x8
    /* CCD9C 800DC59C FAFF4014 */  bnez       $v0, .L800DC588
    /* CCDA0 800DC5A0 80101200 */   sll       $v0, $s2, 2
    /* CCDA4 800DC5A4 01001224 */  addiu      $s2, $zero, 0x1
    /* CCDA8 800DC5A8 1000B527 */  addiu      $s5, $sp, 0x10
    /* CCDAC 800DC5AC 21204002 */  addu       $a0, $s2, $zero
  .L800DC5B0:
    /* CCDB0 800DC5B0 8ACA010C */  jal        func_80072A28
    /* CCDB4 800DC5B4 4B000524 */   addiu     $a1, $zero, 0x4B
    /* CCDB8 800DC5B8 06004010 */  beqz       $v0, .L800DC5D4
    /* CCDBC 800DC5BC 80181200 */   sll       $v1, $s2, 2
    /* CCDC0 800DC5C0 21187500 */  addu       $v1, $v1, $s5
    /* CCDC4 800DC5C4 0000628C */  lw         $v0, 0x0($v1)
    /* CCDC8 800DC5C8 00000000 */  nop
    /* CCDCC 800DC5CC 01004224 */  addiu      $v0, $v0, 0x1
    /* CCDD0 800DC5D0 000062AC */  sw         $v0, 0x0($v1)
  .L800DC5D4:
    /* CCDD4 800DC5D4 21204002 */  addu       $a0, $s2, $zero
    /* CCDD8 800DC5D8 8ACA010C */  jal        func_80072A28
    /* CCDDC 800DC5DC 3B000524 */   addiu     $a1, $zero, 0x3B
    /* CCDE0 800DC5E0 06004010 */  beqz       $v0, .L800DC5FC
    /* CCDE4 800DC5E4 80181200 */   sll       $v1, $s2, 2
    /* CCDE8 800DC5E8 21187500 */  addu       $v1, $v1, $s5
    /* CCDEC 800DC5EC 0000628C */  lw         $v0, 0x0($v1)
    /* CCDF0 800DC5F0 00000000 */  nop
    /* CCDF4 800DC5F4 01004224 */  addiu      $v0, $v0, 0x1
    /* CCDF8 800DC5F8 000062AC */  sw         $v0, 0x0($v1)
  .L800DC5FC:
    /* CCDFC 800DC5FC 21880000 */  addu       $s1, $zero, $zero
    /* CCE00 800DC600 80101200 */  sll        $v0, $s2, 2
    /* CCE04 800DC604 21985500 */  addu       $s3, $v0, $s5
    /* CCE08 800DC608 80101100 */  sll        $v0, $s1, 2
  .L800DC60C:
    /* CCE0C 800DC60C 21105100 */  addu       $v0, $v0, $s1
    /* CCE10 800DC610 80800200 */  sll        $s0, $v0, 2
    /* CCE14 800DC614 1180013C */  lui        $at, %hi(D_8010D28F)
    /* CCE18 800DC618 21083000 */  addu       $at, $at, $s0
    /* CCE1C 800DC61C 8FD22580 */  lb         $a1, %lo(D_8010D28F)($at)
    /* CCE20 800DC620 8ACA010C */  jal        func_80072A28
    /* CCE24 800DC624 21204002 */   addu      $a0, $s2, $zero
    /* CCE28 800DC628 19004010 */  beqz       $v0, .L800DC690
    /* CCE2C 800DC62C 02000224 */   addiu     $v0, $zero, 0x2
    /* CCE30 800DC630 1180013C */  lui        $at, %hi(D_8010D285)
    /* CCE34 800DC634 21083000 */  addu       $at, $at, $s0
    /* CCE38 800DC638 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* CCE3C 800DC63C 00000000 */  nop
    /* CCE40 800DC640 06006214 */  bne        $v1, $v0, .L800DC65C
    /* CCE44 800DC644 80101100 */   sll       $v0, $s1, 2
    /* CCE48 800DC648 0000628E */  lw         $v0, 0x0($s3)
    /* CCE4C 800DC64C 00000000 */  nop
    /* CCE50 800DC650 01004224 */  addiu      $v0, $v0, 0x1
    /* CCE54 800DC654 A4710308 */  j          .L800DC690
    /* CCE58 800DC658 000062AE */   sw        $v0, 0x0($s3)
  .L800DC65C:
    /* CCE5C 800DC65C 21105100 */  addu       $v0, $v0, $s1
    /* CCE60 800DC660 80100200 */  sll        $v0, $v0, 2
    /* CCE64 800DC664 1180013C */  lui        $at, %hi(D_8010D28E)
    /* CCE68 800DC668 21082200 */  addu       $at, $at, $v0
    /* CCE6C 800DC66C 8ED22290 */  lbu        $v0, %lo(D_8010D28E)($at)
    /* CCE70 800DC670 00000000 */  nop
    /* CCE74 800DC674 0200422C */  sltiu      $v0, $v0, 0x2
    /* CCE78 800DC678 05004010 */  beqz       $v0, .L800DC690
    /* CCE7C 800DC67C 00000000 */   nop
    /* CCE80 800DC680 2000628E */  lw         $v0, 0x20($s3)
    /* CCE84 800DC684 00000000 */  nop
    /* CCE88 800DC688 01004224 */  addiu      $v0, $v0, 0x1
    /* CCE8C 800DC68C 200062AE */  sw         $v0, 0x20($s3)
  .L800DC690:
    /* CCE90 800DC690 01003126 */  addiu      $s1, $s1, 0x1
    /* CCE94 800DC694 3600222A */  slti       $v0, $s1, 0x36
    /* CCE98 800DC698 DCFF4014 */  bnez       $v0, .L800DC60C
    /* CCE9C 800DC69C 80101100 */   sll       $v0, $s1, 2
    /* CCEA0 800DC6A0 01005226 */  addiu      $s2, $s2, 0x1
    /* CCEA4 800DC6A4 0800422A */  slti       $v0, $s2, 0x8
    /* CCEA8 800DC6A8 C1FF4014 */  bnez       $v0, .L800DC5B0
    /* CCEAC 800DC6AC 21204002 */   addu      $a0, $s2, $zero
    /* CCEB0 800DC6B0 21800000 */  addu       $s0, $zero, $zero
    /* CCEB4 800DC6B4 21880000 */  addu       $s1, $zero, $zero
    /* CCEB8 800DC6B8 21980000 */  addu       $s3, $zero, $zero
    /* CCEBC 800DC6BC 01001224 */  addiu      $s2, $zero, 0x1
    /* CCEC0 800DC6C0 40101400 */  sll        $v0, $s4, 1
    /* CCEC4 800DC6C4 21105400 */  addu       $v0, $v0, $s4
    /* CCEC8 800DC6C8 80100200 */  sll        $v0, $v0, 2
    /* CCECC 800DC6CC 23105400 */  subu       $v0, $v0, $s4
    /* CCED0 800DC6D0 00110200 */  sll        $v0, $v0, 4
    /* CCED4 800DC6D4 23105400 */  subu       $v0, $v0, $s4
    /* CCED8 800DC6D8 C0100200 */  sll        $v0, $v0, 3
    /* CCEDC 800DC6DC 1180033C */  lui        $v1, %hi(D_801176B4)
    /* CCEE0 800DC6E0 B4766324 */  addiu      $v1, $v1, %lo(D_801176B4)
    /* CCEE4 800DC6E4 21304300 */  addu       $a2, $v0, $v1
    /* CCEE8 800DC6E8 1000A427 */  addiu      $a0, $sp, 0x10
    /* CCEEC 800DC6EC 80101400 */  sll        $v0, $s4, 2
    /* CCEF0 800DC6F0 21284400 */  addu       $a1, $v0, $a0
  .L800DC6F4:
    /* CCEF4 800DC6F4 18005412 */  beq        $s2, $s4, .L800DC758
    /* CCEF8 800DC6F8 80101200 */   sll       $v0, $s2, 2
    /* CCEFC 800DC6FC 21104600 */  addu       $v0, $v0, $a2
    /* CCF00 800DC700 0000428C */  lw         $v0, 0x0($v0)
    /* CCF04 800DC704 00000000 */  nop
    /* CCF08 800DC708 00204230 */  andi       $v0, $v0, 0x2000
    /* CCF0C 800DC70C 02004010 */  beqz       $v0, .L800DC718
    /* CCF10 800DC710 80101200 */   sll       $v0, $s2, 2
    /* CCF14 800DC714 01007326 */  addiu      $s3, $s3, 0x1
  .L800DC718:
    /* CCF18 800DC718 21104400 */  addu       $v0, $v0, $a0
    /* CCF1C 800DC71C 0000438C */  lw         $v1, 0x0($v0)
    /* CCF20 800DC720 0000A28C */  lw         $v0, 0x0($a1)
    /* CCF24 800DC724 00000000 */  nop
    /* CCF28 800DC728 2A104300 */  slt        $v0, $v0, $v1
    /* CCF2C 800DC72C 02004010 */  beqz       $v0, .L800DC738
    /* CCF30 800DC730 80101200 */   sll       $v0, $s2, 2
    /* CCF34 800DC734 01003126 */  addiu      $s1, $s1, 0x1
  .L800DC738:
    /* CCF38 800DC738 21104400 */  addu       $v0, $v0, $a0
    /* CCF3C 800DC73C 2000438C */  lw         $v1, 0x20($v0)
    /* CCF40 800DC740 2000A28C */  lw         $v0, 0x20($a1)
    /* CCF44 800DC744 00000000 */  nop
    /* CCF48 800DC748 2A104300 */  slt        $v0, $v0, $v1
    /* CCF4C 800DC74C 02004010 */  beqz       $v0, .L800DC758
    /* CCF50 800DC750 00000000 */   nop
    /* CCF54 800DC754 01001026 */  addiu      $s0, $s0, 0x1
  .L800DC758:
    /* CCF58 800DC758 01005226 */  addiu      $s2, $s2, 0x1
    /* CCF5C 800DC75C 0800422A */  slti       $v0, $s2, 0x8
    /* CCF60 800DC760 E4FF4014 */  bnez       $v0, .L800DC6F4
    /* CCF64 800DC764 00000000 */   nop
    /* CCF68 800DC768 1280043C */  lui        $a0, %hi(D_8011A274)
    /* CCF6C 800DC76C 74A28490 */  lbu        $a0, %lo(D_8011A274)($a0)
    /* CCF70 800DC770 0B3B030C */  jal        func_800CEC2C
    /* CCF74 800DC774 00000000 */   nop
    /* CCF78 800DC778 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CCF7C 800DC77C C21F0200 */  srl        $v1, $v0, 31
    /* CCF80 800DC780 21104300 */  addu       $v0, $v0, $v1
    /* CCF84 800DC784 43100200 */  sra        $v0, $v0, 1
    /* CCF88 800DC788 2A105000 */  slt        $v0, $v0, $s0
    /* CCF8C 800DC78C 2B004014 */  bnez       $v0, .L800DC83C
    /* CCF90 800DC790 02000224 */   addiu     $v0, $zero, 0x2
    /* CCF94 800DC794 1280043C */  lui        $a0, %hi(D_8011A274)
    /* CCF98 800DC798 74A28490 */  lbu        $a0, %lo(D_8011A274)($a0)
    /* CCF9C 800DC79C 0B3B030C */  jal        func_800CEC2C
    /* CCFA0 800DC7A0 00000000 */   nop
    /* CCFA4 800DC7A4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* CCFA8 800DC7A8 C21F0200 */  srl        $v1, $v0, 31
    /* CCFAC 800DC7AC 21104300 */  addu       $v0, $v0, $v1
    /* CCFB0 800DC7B0 43100200 */  sra        $v0, $v0, 1
    /* CCFB4 800DC7B4 2A105100 */  slt        $v0, $v0, $s1
    /* CCFB8 800DC7B8 20004014 */  bnez       $v0, .L800DC83C
    /* CCFBC 800DC7BC 03000224 */   addiu     $v0, $zero, 0x3
    /* CCFC0 800DC7C0 21208002 */  addu       $a0, $s4, $zero
    /* CCFC4 800DC7C4 8ACA010C */  jal        func_80072A28
    /* CCFC8 800DC7C8 2F000524 */   addiu     $a1, $zero, 0x2F
    /* CCFCC 800DC7CC 0D004010 */  beqz       $v0, .L800DC804
    /* CCFD0 800DC7D0 00000000 */   nop
    /* CCFD4 800DC7D4 0B00E006 */  bltz       $s7, .L800DC804
    /* CCFD8 800DC7D8 21800000 */   addu      $s0, $zero, $zero
    /* CCFDC 800DC7DC 2120E002 */  addu       $a0, $s7, $zero
    /* CCFE0 800DC7E0 C826020C */  jal        func_80089B20
    /* CCFE4 800DC7E4 08000524 */   addiu     $a1, $zero, 0x8
    /* CCFE8 800DC7E8 04004014 */  bnez       $v0, .L800DC7FC
    /* CCFEC 800DC7EC 21208002 */   addu      $a0, $s4, $zero
    /* CCFF0 800DC7F0 C17B030C */  jal        func_800DEF04
    /* CCFF4 800DC7F4 06000524 */   addiu     $a1, $zero, 0x6
    /* CCFF8 800DC7F8 0100502C */  sltiu      $s0, $v0, 0x1
  .L800DC7FC:
    /* CCFFC 800DC7FC 0F000016 */  bnez       $s0, .L800DC83C
    /* CD000 800DC800 05000224 */   addiu     $v0, $zero, 0x5
  .L800DC804:
    /* CD004 800DC804 0300C016 */  bnez       $s6, .L800DC814
    /* CD008 800DC808 00000000 */   nop
    /* CD00C 800DC80C 0F720308 */  j          .L800DC83C
    /* CD010 800DC810 04000224 */   addiu     $v0, $zero, 0x4
  .L800DC814:
    /* CD014 800DC814 09006016 */  bnez       $s3, .L800DC83C
    /* CD018 800DC818 06000224 */   addiu     $v0, $zero, 0x6
    /* CD01C 800DC81C 1280013C */  lui        $at, %hi(D_8011A37E)
    /* CD020 800DC820 21083400 */  addu       $at, $at, $s4
    /* CD024 800DC824 7EA32390 */  lbu        $v1, %lo(D_8011A37E)($at)
    /* CD028 800DC828 00000000 */  nop
    /* CD02C 800DC82C 0500632C */  sltiu      $v1, $v1, 0x5
    /* CD030 800DC830 02006014 */  bnez       $v1, .L800DC83C
    /* CD034 800DC834 00000000 */   nop
    /* CD038 800DC838 07000224 */  addiu      $v0, $zero, 0x7
  .L800DC83C:
    /* CD03C 800DC83C 8000BF8F */  lw         $ra, 0x80($sp)
    /* CD040 800DC840 7C00B78F */  lw         $s7, 0x7C($sp)
    /* CD044 800DC844 7800B68F */  lw         $s6, 0x78($sp)
    /* CD048 800DC848 7400B58F */  lw         $s5, 0x74($sp)
    /* CD04C 800DC84C 7000B48F */  lw         $s4, 0x70($sp)
    /* CD050 800DC850 6C00B38F */  lw         $s3, 0x6C($sp)
    /* CD054 800DC854 6800B28F */  lw         $s2, 0x68($sp)
    /* CD058 800DC858 6400B18F */  lw         $s1, 0x64($sp)
    /* CD05C 800DC85C 6000B08F */  lw         $s0, 0x60($sp)
    /* CD060 800DC860 8800BD27 */  addiu      $sp, $sp, 0x88
    /* CD064 800DC864 0800E003 */  jr         $ra
    /* CD068 800DC868 00000000 */   nop
endlabel func_800DC3CC
