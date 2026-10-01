.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D5654, 0x390

glabel func_800D5654
    /* C5E54 800D5654 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* C5E58 800D5658 5400BFAF */  sw         $ra, 0x54($sp)
    /* C5E5C 800D565C 5000BEAF */  sw         $fp, 0x50($sp)
    /* C5E60 800D5660 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* C5E64 800D5664 4800B6AF */  sw         $s6, 0x48($sp)
    /* C5E68 800D5668 4400B5AF */  sw         $s5, 0x44($sp)
    /* C5E6C 800D566C 4000B4AF */  sw         $s4, 0x40($sp)
    /* C5E70 800D5670 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* C5E74 800D5674 3800B2AF */  sw         $s2, 0x38($sp)
    /* C5E78 800D5678 3400B1AF */  sw         $s1, 0x34($sp)
    /* C5E7C 800D567C 3000B0AF */  sw         $s0, 0x30($sp)
    /* C5E80 800D5680 21A88000 */  addu       $s5, $a0, $zero
    /* C5E84 800D5684 2198A000 */  addu       $s3, $a1, $zero
    /* C5E88 800D5688 6800B68F */  lw         $s6, 0x68($sp)
    /* C5E8C 800D568C 21A00000 */  addu       $s4, $zero, $zero
    /* C5E90 800D5690 1680023C */  lui        $v0, %hi(D_80158864)
    /* C5E94 800D5694 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C5E98 800D5698 00000000 */  nop
    /* C5E9C 800D569C 08005080 */  lb         $s0, 0x8($v0)
    /* C5EA0 800D56A0 00000000 */  nop
    /* C5EA4 800D56A4 40101000 */  sll        $v0, $s0, 1
    /* C5EA8 800D56A8 21105000 */  addu       $v0, $v0, $s0
    /* C5EAC 800D56AC 80100200 */  sll        $v0, $v0, 2
    /* C5EB0 800D56B0 23105000 */  subu       $v0, $v0, $s0
    /* C5EB4 800D56B4 00110200 */  sll        $v0, $v0, 4
    /* C5EB8 800D56B8 23105000 */  subu       $v0, $v0, $s0
    /* C5EBC 800D56BC C0100200 */  sll        $v0, $v0, 3
    /* C5EC0 800D56C0 1180013C */  lui        $at, %hi(D_801176A7)
    /* C5EC4 800D56C4 21082200 */  addu       $at, $at, $v0
    /* C5EC8 800D56C8 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* C5ECC 800D56CC E80EB78E */  lw         $s7, 0xEE8($s5)
    /* C5ED0 800D56D0 04000224 */  addiu      $v0, $zero, 0x4
    /* C5ED4 800D56D4 16006214 */  bne        $v1, $v0, .L800D5730
    /* C5ED8 800D56D8 18001E24 */   addiu     $fp, $zero, 0x18
    /* C5EDC 800D56DC 43100700 */  sra        $v0, $a3, 1
    /* C5EE0 800D56E0 2190C200 */  addu       $s2, $a2, $v0
    /* C5EE4 800D56E4 FAFF5226 */  addiu      $s2, $s2, -0x6
    /* C5EE8 800D56E8 29000424 */  addiu      $a0, $zero, 0x29
    /* C5EEC 800D56EC 0A000524 */  addiu      $a1, $zero, 0xA
    /* C5EF0 800D56F0 01000624 */  addiu      $a2, $zero, 0x1
    /* C5EF4 800D56F4 1C80030C */  jal        func_800E0070
    /* C5EF8 800D56F8 21380000 */   addu      $a3, $zero, $zero
    /* C5EFC 800D56FC 1280043C */  lui        $a0, %hi(D_8011A66C)
    /* C5F00 800D5700 6CA6848C */  lw         $a0, %lo(D_8011A66C)($a0)
    /* C5F04 800D5704 A63A030C */  jal        func_800CEA98
    /* C5F08 800D5708 00000000 */   nop
    /* C5F0C 800D570C 0000668E */  lw         $a2, 0x0($s3)
    /* C5F10 800D5710 1000A0AF */  sw         $zero, 0x10($sp)
    /* C5F14 800D5714 1680043C */  lui        $a0, %hi(D_80159284)
    /* C5F18 800D5718 8492848C */  lw         $a0, %lo(D_80159284)($a0)
    /* C5F1C 800D571C 21284000 */  addu       $a1, $v0, $zero
    /* C5F20 800D5720 6B80030C */  jal        func_800E01AC
    /* C5F24 800D5724 21384002 */   addu      $a3, $s2, $zero
    /* C5F28 800D5728 6C560308 */  j          .L800D59B0
    /* C5F2C 800D572C 000062AE */   sw        $v0, 0x0($s3)
  .L800D5730:
    /* C5F30 800D5730 05006228 */  slti       $v0, $v1, 0x5
    /* C5F34 800D5734 43004010 */  beqz       $v0, .L800D5844
    /* C5F38 800D5738 21880000 */   addu      $s1, $zero, $zero
    /* C5F3C 800D573C 21800000 */  addu       $s0, $zero, $zero
    /* C5F40 800D5740 43100700 */  sra        $v0, $a3, 1
    /* C5F44 800D5744 21B0C200 */  addu       $s6, $a2, $v0
  .L800D5748:
    /* C5F48 800D5748 1280023C */  lui        $v0, %hi(D_8011A280)
    /* C5F4C 800D574C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* C5F50 800D5750 00000000 */  nop
    /* C5F54 800D5754 2A100202 */  slt        $v0, $s0, $v0
    /* C5F58 800D5758 95004010 */  beqz       $v0, .L800D59B0
    /* C5F5C 800D575C 43101E00 */   sra       $v0, $fp, 1
    /* C5F60 800D5760 2390C202 */  subu       $s2, $s6, $v0
    /* C5F64 800D5764 40101000 */  sll        $v0, $s0, 1
    /* C5F68 800D5768 21105000 */  addu       $v0, $v0, $s0
    /* C5F6C 800D576C 80100200 */  sll        $v0, $v0, 2
    /* C5F70 800D5770 21105000 */  addu       $v0, $v0, $s0
    /* C5F74 800D5774 40200200 */  sll        $a0, $v0, 1
    /* C5F78 800D5778 1680053C */  lui        $a1, %hi(D_80158864)
    /* C5F7C 800D577C 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* C5F80 800D5780 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C5F84 800D5784 21082400 */  addu       $at, $at, $a0
    /* C5F88 800D5788 B4D62384 */  lh         $v1, %lo(D_8010D6B4)($at)
    /* C5F8C 800D578C 0000A284 */  lh         $v0, 0x0($a1)
    /* C5F90 800D5790 00000000 */  nop
    /* C5F94 800D5794 29006214 */  bne        $v1, $v0, .L800D583C
    /* C5F98 800D5798 00000000 */   nop
    /* C5F9C 800D579C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C5FA0 800D57A0 21082400 */  addu       $at, $at, $a0
    /* C5FA4 800D57A4 B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* C5FA8 800D57A8 0200A284 */  lh         $v0, 0x2($a1)
    /* C5FAC 800D57AC 00000000 */  nop
    /* C5FB0 800D57B0 22006214 */  bne        $v1, $v0, .L800D583C
    /* C5FB4 800D57B4 00000000 */   nop
    /* C5FB8 800D57B8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* C5FBC 800D57BC 21082400 */  addu       $at, $at, $a0
    /* C5FC0 800D57C0 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* C5FC4 800D57C4 00000000 */  nop
    /* C5FC8 800D57C8 80180200 */  sll        $v1, $v0, 2
    /* C5FCC 800D57CC 21186200 */  addu       $v1, $v1, $v0
    /* C5FD0 800D57D0 80180300 */  sll        $v1, $v1, 2
    /* C5FD4 800D57D4 1180013C */  lui        $at, %hi(D_8010D288)
    /* C5FD8 800D57D8 21082300 */  addu       $at, $at, $v1
    /* C5FDC 800D57DC 88D22280 */  lb         $v0, %lo(D_8010D288)($at)
    /* C5FE0 800D57E0 00000000 */  nop
    /* C5FE4 800D57E4 15004010 */  beqz       $v0, .L800D583C
    /* C5FE8 800D57E8 00000000 */   nop
    /* C5FEC 800D57EC 01003126 */  addiu      $s1, $s1, 0x1
    /* C5FF0 800D57F0 0400222A */  slti       $v0, $s1, 0x4
    /* C5FF4 800D57F4 6E004010 */  beqz       $v0, .L800D59B0
    /* C5FF8 800D57F8 00000000 */   nop
    /* C5FFC 800D57FC 0000628E */  lw         $v0, 0x0($s3)
    /* C6000 800D5800 00000000 */  nop
    /* C6004 800D5804 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* C6008 800D5808 04008012 */  beqz       $s4, .L800D581C
    /* C600C 800D580C 000062AE */   sw        $v0, 0x0($s3)
    /* C6010 800D5810 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* C6014 800D5814 08560308 */  j          .L800D5820
    /* C6018 800D5818 000062AE */   sw        $v0, 0x0($s3)
  .L800D581C:
    /* C601C 800D581C 01001424 */  addiu      $s4, $zero, 0x1
  .L800D5820:
    /* C6020 800D5820 1000B2AF */  sw         $s2, 0x10($sp)
    /* C6024 800D5824 1400B7AF */  sw         $s7, 0x14($sp)
    /* C6028 800D5828 2120A002 */  addu       $a0, $s5, $zero
    /* C602C 800D582C 21280002 */  addu       $a1, $s0, $zero
    /* C6030 800D5830 0000678E */  lw         $a3, 0x0($s3)
    /* C6034 800D5834 4CBB020C */  jal        func_800AED30
    /* C6038 800D5838 04000624 */   addiu     $a2, $zero, 0x4
  .L800D583C:
    /* C603C 800D583C D2550308 */  j          .L800D5748
    /* C6040 800D5840 01001026 */   addiu     $s0, $s0, 0x1
  .L800D5844:
    /* C6044 800D5844 43100700 */  sra        $v0, $a3, 1
    /* C6048 800D5848 2190C200 */  addu       $s2, $a2, $v0
    /* C604C 800D584C FEFF5226 */  addiu      $s2, $s2, -0x2
    /* C6050 800D5850 21200002 */  addu       $a0, $s0, $zero
    /* C6054 800D5854 C17B030C */  jal        func_800DEF04
    /* C6058 800D5858 15000524 */   addiu     $a1, $zero, 0x15
    /* C605C 800D585C 08004014 */  bnez       $v0, .L800D5880
    /* C6060 800D5860 21280000 */   addu      $a1, $zero, $zero
    /* C6064 800D5864 1680043C */  lui        $a0, %hi(D_80158860)
    /* C6068 800D5868 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C606C 800D586C C826020C */  jal        func_80089B20
    /* C6070 800D5870 21000524 */   addiu     $a1, $zero, 0x21
    /* C6074 800D5874 02004014 */  bnez       $v0, .L800D5880
    /* C6078 800D5878 21280000 */   addu      $a1, $zero, $zero
    /* C607C 800D587C 01000524 */  addiu      $a1, $zero, 0x1
  .L800D5880:
    /* C6080 800D5880 40101000 */  sll        $v0, $s0, 1
    /* C6084 800D5884 21105000 */  addu       $v0, $v0, $s0
    /* C6088 800D5888 80100200 */  sll        $v0, $v0, 2
    /* C608C 800D588C 23105000 */  subu       $v0, $v0, $s0
    /* C6090 800D5890 00110200 */  sll        $v0, $v0, 4
    /* C6094 800D5894 23105000 */  subu       $v0, $v0, $s0
    /* C6098 800D5898 C0100200 */  sll        $v0, $v0, 3
    /* C609C 800D589C 1180013C */  lui        $at, %hi(D_801176A7)
    /* C60A0 800D58A0 21082200 */  addu       $at, $at, $v0
    /* C60A4 800D58A4 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* C60A8 800D58A8 06000224 */  addiu      $v0, $zero, 0x6
    /* C60AC 800D58AC 02006214 */  bne        $v1, $v0, .L800D58B8
    /* C60B0 800D58B0 00000000 */   nop
    /* C60B4 800D58B4 0100A524 */  addiu      $a1, $a1, 0x1
  .L800D58B8:
    /* C60B8 800D58B8 3D00A010 */  beqz       $a1, .L800D59B0
    /* C60BC 800D58BC 00000000 */   nop
    /* C60C0 800D58C0 1680043C */  lui        $a0, %hi(D_80158534)
    /* C60C4 800D58C4 3485848C */  lw         $a0, %lo(D_80158534)($a0)
    /* C60C8 800D58C8 00000000 */  nop
    /* C60CC 800D58CC 0E008010 */  beqz       $a0, .L800D5908
    /* C60D0 800D58D0 40101000 */   sll       $v0, $s0, 1
    /* C60D4 800D58D4 21105000 */  addu       $v0, $v0, $s0
    /* C60D8 800D58D8 80100200 */  sll        $v0, $v0, 2
    /* C60DC 800D58DC 23105000 */  subu       $v0, $v0, $s0
    /* C60E0 800D58E0 00110200 */  sll        $v0, $v0, 4
    /* C60E4 800D58E4 23105000 */  subu       $v0, $v0, $s0
    /* C60E8 800D58E8 C0100200 */  sll        $v0, $v0, 3
    /* C60EC 800D58EC 1180013C */  lui        $at, %hi(D_801176A7)
    /* C60F0 800D58F0 21082200 */  addu       $at, $at, $v0
    /* C60F4 800D58F4 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* C60F8 800D58F8 05000224 */  addiu      $v0, $zero, 0x5
    /* C60FC 800D58FC 03006214 */  bne        $v1, $v0, .L800D590C
    /* C6100 800D5900 18008500 */   mult      $a0, $a1
    /* C6104 800D5904 FFFF8424 */  addiu      $a0, $a0, -0x1
  .L800D5908:
    /* C6108 800D5908 18008500 */  mult       $a0, $a1
  .L800D590C:
    /* C610C 800D590C 12200000 */  mflo       $a0
    /* C6110 800D5910 27008010 */  beqz       $a0, .L800D59B0
    /* C6114 800D5914 2800A4AF */   sw        $a0, 0x28($sp)
    /* C6118 800D5918 05001124 */  addiu      $s1, $zero, 0x5
    /* C611C 800D591C 1000A0AF */  sw         $zero, 0x10($sp)
    /* C6120 800D5920 05000524 */  addiu      $a1, $zero, 0x5
    /* C6124 800D5924 FEFFC626 */  addiu      $a2, $s6, -0x2
    /* C6128 800D5928 2A1A030C */  jal        func_800C68A8
    /* C612C 800D592C 2800A727 */   addiu     $a3, $sp, 0x28
    /* C6130 800D5930 2800A38F */  lw         $v1, 0x28($sp)
    /* C6134 800D5934 00000000 */  nop
    /* C6138 800D5938 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* C613C 800D593C 18006200 */  mult       $v1, $v0
    /* C6140 800D5940 12400000 */  mflo       $t0
    /* C6144 800D5944 04001025 */  addiu      $s0, $t0, 0x4
    /* C6148 800D5948 0000628E */  lw         $v0, 0x0($s3)
    /* C614C 800D594C 00000000 */  nop
    /* C6150 800D5950 23105000 */  subu       $v0, $v0, $s0
    /* C6154 800D5954 000062AE */  sw         $v0, 0x0($s3)
    /* C6158 800D5958 E40EA48E */  lw         $a0, 0xEE4($s5)
    /* C615C 800D595C 00000000 */  nop
    /* C6160 800D5960 80240400 */  sll        $a0, $a0, 18
    /* C6164 800D5964 03240400 */  sra        $a0, $a0, 16
    /* C6168 800D5968 D0EC030C */  jal        func_800FB340
    /* C616C 800D596C 08000524 */   addiu     $a1, $zero, 0x8
    /* C6170 800D5970 2800A28F */  lw         $v0, 0x28($sp)
    /* C6174 800D5974 00000000 */  nop
    /* C6178 800D5978 1000A2AF */  sw         $v0, 0x10($sp)
    /* C617C 800D597C 1400A2AF */  sw         $v0, 0x14($sp)
    /* C6180 800D5980 1800B1AF */  sw         $s1, 0x18($sp)
    /* C6184 800D5984 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* C6188 800D5988 2000A0AF */  sw         $zero, 0x20($sp)
    /* C618C 800D598C 2120A002 */  addu       $a0, $s5, $zero
    /* C6190 800D5990 1380053C */  lui        $a1, %hi(D_80130C64)
    /* C6194 800D5994 640CA524 */  addiu      $a1, $a1, %lo(D_80130C64)
    /* C6198 800D5998 0000668E */  lw         $a2, 0x0($s3)
    /* C619C 800D599C 651A030C */  jal        func_800C6994
    /* C61A0 800D59A0 21384002 */   addu      $a3, $s2, $zero
    /* C61A4 800D59A4 01000424 */  addiu      $a0, $zero, 0x1
    /* C61A8 800D59A8 D0EC030C */  jal        func_800FB340
    /* C61AC 800D59AC 01000524 */   addiu     $a1, $zero, 0x1
  .L800D59B0:
    /* C61B0 800D59B0 5400BF8F */  lw         $ra, 0x54($sp)
    /* C61B4 800D59B4 5000BE8F */  lw         $fp, 0x50($sp)
    /* C61B8 800D59B8 4C00B78F */  lw         $s7, 0x4C($sp)
    /* C61BC 800D59BC 4800B68F */  lw         $s6, 0x48($sp)
    /* C61C0 800D59C0 4400B58F */  lw         $s5, 0x44($sp)
    /* C61C4 800D59C4 4000B48F */  lw         $s4, 0x40($sp)
    /* C61C8 800D59C8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* C61CC 800D59CC 3800B28F */  lw         $s2, 0x38($sp)
    /* C61D0 800D59D0 3400B18F */  lw         $s1, 0x34($sp)
    /* C61D4 800D59D4 3000B08F */  lw         $s0, 0x30($sp)
    /* C61D8 800D59D8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* C61DC 800D59DC 0800E003 */  jr         $ra
    /* C61E0 800D59E0 00000000 */   nop
endlabel func_800D5654
