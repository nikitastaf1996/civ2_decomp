.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D4F9C, 0x47C

glabel func_800D4F9C
    /* C579C 800D4F9C B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* C57A0 800D4FA0 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* C57A4 800D4FA4 4800BEAF */  sw         $fp, 0x48($sp)
    /* C57A8 800D4FA8 4400B7AF */  sw         $s7, 0x44($sp)
    /* C57AC 800D4FAC 4000B6AF */  sw         $s6, 0x40($sp)
    /* C57B0 800D4FB0 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* C57B4 800D4FB4 3800B4AF */  sw         $s4, 0x38($sp)
    /* C57B8 800D4FB8 3400B3AF */  sw         $s3, 0x34($sp)
    /* C57BC 800D4FBC 3000B2AF */  sw         $s2, 0x30($sp)
    /* C57C0 800D4FC0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* C57C4 800D4FC4 2800B0AF */  sw         $s0, 0x28($sp)
    /* C57C8 800D4FC8 21988000 */  addu       $s3, $a0, $zero
    /* C57CC 800D4FCC 1680023C */  lui        $v0, %hi(D_80158864)
    /* C57D0 800D4FD0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C57D4 800D4FD4 00000000 */  nop
    /* C57D8 800D4FD8 08004280 */  lb         $v0, 0x8($v0)
    /* C57DC 800D4FDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C57E0 800D4FE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C57E4 800D4FE4 CB1A030C */  jal        func_800C6B2C
    /* C57E8 800D4FE8 2000A2AF */   sw        $v0, 0x20($sp)
    /* C57EC 800D4FEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C57F0 800D4FF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C57F4 800D4FF4 731B030C */  jal        func_800C6DCC
    /* C57F8 800D4FF8 C4010524 */   addiu     $a1, $zero, 0x1C4
    /* C57FC 800D4FFC 7C000424 */  addiu      $a0, $zero, 0x7C
    /* C5800 800D5000 12000524 */  addiu      $a1, $zero, 0x12
    /* C5804 800D5004 01000624 */  addiu      $a2, $zero, 0x1
    /* C5808 800D5008 1C80030C */  jal        func_800E0070
    /* C580C 800D500C 01000724 */   addiu     $a3, $zero, 0x1
    /* C5810 800D5010 440F6686 */  lh         $a2, 0xF44($s3)
    /* C5814 800D5014 460F6786 */  lh         $a3, 0xF46($s3)
    /* C5818 800D5018 480F6286 */  lh         $v0, 0xF48($s3)
    /* C581C 800D501C 00000000 */  nop
    /* C5820 800D5020 23104600 */  subu       $v0, $v0, $a2
    /* C5824 800D5024 00140200 */  sll        $v0, $v0, 16
    /* C5828 800D5028 03140200 */  sra        $v0, $v0, 16
    /* C582C 800D502C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C5830 800D5030 1680043C */  lui        $a0, %hi(D_80159284)
    /* C5834 800D5034 8492848C */  lw         $a0, %lo(D_80159284)($a0)
    /* C5838 800D5038 1280053C */  lui        $a1, %hi(D_80121340)
    /* C583C 800D503C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* C5840 800D5040 4680030C */  jal        func_800E0118
    /* C5844 800D5044 0100E724 */   addiu     $a3, $a3, 0x1
    /* C5848 800D5048 280F7186 */  lh         $s1, 0xF28($s3)
    /* C584C 800D504C 240F6286 */  lh         $v0, 0xF24($s3)
    /* C5850 800D5050 00000000 */  nop
    /* C5854 800D5054 23882202 */  subu       $s1, $s1, $v0
    /* C5858 800D5058 008C1100 */  sll        $s1, $s1, 16
    /* C585C 800D505C 038C1100 */  sra        $s1, $s1, 16
    /* C5860 800D5060 FCFF3126 */  addiu      $s1, $s1, -0x4
    /* C5864 800D5064 2A0F7086 */  lh         $s0, 0xF2A($s3)
    /* C5868 800D5068 260F6286 */  lh         $v0, 0xF26($s3)
    /* C586C 800D506C 00000000 */  nop
    /* C5870 800D5070 23800202 */  subu       $s0, $s0, $v0
    /* C5874 800D5074 00841000 */  sll        $s0, $s0, 16
    /* C5878 800D5078 03841000 */  sra        $s0, $s0, 16
    /* C587C 800D507C FCFF1026 */  addiu      $s0, $s0, -0x4
    /* C5880 800D5080 1280123C */  lui        $s2, %hi(D_8011C308)
    /* C5884 800D5084 08C35226 */  addiu      $s2, $s2, %lo(D_8011C308)
    /* C5888 800D5088 00004286 */  lh         $v0, 0x0($s2)
    /* C588C 800D508C 00000000 */  nop
    /* C5890 800D5090 1A002202 */  div        $zero, $s1, $v0
    /* C5894 800D5094 02004014 */  bnez       $v0, .L800D50A0
    /* C5898 800D5098 00000000 */   nop
    /* C589C 800D509C 0D000700 */  break      7
  .L800D50A0:
    /* C58A0 800D50A0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C58A4 800D50A4 04004114 */  bne        $v0, $at, .L800D50B8
    /* C58A8 800D50A8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C58AC 800D50AC 02002116 */  bne        $s1, $at, .L800D50B8
    /* C58B0 800D50B0 00000000 */   nop
    /* C58B4 800D50B4 0D000600 */  break      6
  .L800D50B8:
    /* C58B8 800D50B8 12A80000 */  mflo       $s5
    /* C58BC 800D50BC 02004686 */  lh         $a2, 0x2($s2)
    /* C58C0 800D50C0 00000000 */  nop
    /* C58C4 800D50C4 1A000602 */  div        $zero, $s0, $a2
    /* C58C8 800D50C8 0200C014 */  bnez       $a2, .L800D50D4
    /* C58CC 800D50CC 00000000 */   nop
    /* C58D0 800D50D0 0D000700 */  break      7
  .L800D50D4:
    /* C58D4 800D50D4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C58D8 800D50D8 0400C114 */  bne        $a2, $at, .L800D50EC
    /* C58DC 800D50DC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C58E0 800D50E0 02000116 */  bne        $s0, $at, .L800D50EC
    /* C58E4 800D50E4 00000000 */   nop
    /* C58E8 800D50E8 0D000600 */  break      6
  .L800D50EC:
    /* C58EC 800D50EC 12300000 */  mflo       $a2
    /* C58F0 800D50F0 2120A002 */  addu       $a0, $s5, $zero
    /* C58F4 800D50F4 F53A030C */  jal        func_800CEBD4
    /* C58F8 800D50F8 01000524 */   addiu     $a1, $zero, 0x1
    /* C58FC 800D50FC 21A84000 */  addu       $s5, $v0, $zero
    /* C5900 800D5100 00004396 */  lhu        $v1, 0x0($s2)
    /* C5904 800D5104 00000000 */  nop
    /* C5908 800D5108 001C0300 */  sll        $v1, $v1, 16
    /* C590C 800D510C 03140300 */  sra        $v0, $v1, 16
    /* C5910 800D5110 18005500 */  mult       $v0, $s5
    /* C5914 800D5114 12400000 */  mflo       $t0
    /* C5918 800D5118 23882802 */  subu       $s1, $s1, $t0
    /* C591C 800D511C 02004286 */  lh         $v0, 0x2($s2)
    /* C5920 800D5120 00000000 */  nop
    /* C5924 800D5124 18005500 */  mult       $v0, $s5
    /* C5928 800D5128 12480000 */  mflo       $t1
    /* C592C 800D512C 23800902 */  subu       $s0, $s0, $t1
    /* C5930 800D5130 43881100 */  sra        $s1, $s1, 1
    /* C5934 800D5134 02003E26 */  addiu      $fp, $s1, 0x2
    /* C5938 800D5138 43801000 */  sra        $s0, $s0, 1
    /* C593C 800D513C 02001026 */  addiu      $s0, $s0, 0x2
    /* C5940 800D5140 1800B0AF */  sw         $s0, 0x18($sp)
    /* C5944 800D5144 240F6286 */  lh         $v0, 0xF24($s3)
    /* C5948 800D5148 00000000 */  nop
    /* C594C 800D514C 21F0C203 */  addu       $fp, $fp, $v0
    /* C5950 800D5150 260F6286 */  lh         $v0, 0xF26($s3)
    /* C5954 800D5154 21400002 */  addu       $t0, $s0, $zero
    /* C5958 800D5158 21400201 */  addu       $t0, $t0, $v0
    /* C595C 800D515C 1800A8AF */  sw         $t0, 0x18($sp)
    /* C5960 800D5160 2000A98F */  lw         $t1, 0x20($sp)
    /* C5964 800D5164 00000000 */  nop
    /* C5968 800D5168 40100900 */  sll        $v0, $t1, 1
    /* C596C 800D516C 21104900 */  addu       $v0, $v0, $t1
    /* C5970 800D5170 80100200 */  sll        $v0, $v0, 2
    /* C5974 800D5174 23104900 */  subu       $v0, $v0, $t1
    /* C5978 800D5178 00110200 */  sll        $v0, $v0, 4
    /* C597C 800D517C 23104900 */  subu       $v0, $v0, $t1
    /* C5980 800D5180 C0100200 */  sll        $v0, $v0, 3
    /* C5984 800D5184 1180013C */  lui        $at, %hi(D_8011769E)
    /* C5988 800D5188 21082200 */  addu       $at, $at, $v0
    /* C598C 800D518C 9E763784 */  lh         $s7, %lo(D_8011769E)($at)
    /* C5990 800D5190 431C0300 */  sra        $v1, $v1, 17
    /* C5994 800D5194 1280023C */  lui        $v0, %hi(D_8011A250)
    /* C5998 800D5198 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* C599C 800D519C 00000000 */  nop
    /* C59A0 800D51A0 00804230 */  andi       $v0, $v0, 0x8000
    /* C59A4 800D51A4 02004010 */  beqz       $v0, .L800D51B0
    /* C59A8 800D51A8 23B8E302 */   subu      $s7, $s7, $v1
    /* C59AC 800D51AC 21B80000 */  addu       $s7, $zero, $zero
  .L800D51B0:
    /* C59B0 800D51B0 21B00000 */  addu       $s6, $zero, $zero
  .L800D51B4:
    /* C59B4 800D51B4 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* C59B8 800D51B8 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* C59BC 800D51BC 00000000 */  nop
    /* C59C0 800D51C0 2A10C202 */  slt        $v0, $s6, $v0
    /* C59C4 800D51C4 3E004010 */  beqz       $v0, .L800D52C0
    /* C59C8 800D51C8 21880000 */   addu      $s1, $zero, $zero
  .L800D51CC:
    /* C59CC 800D51CC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* C59D0 800D51D0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* C59D4 800D51D4 00000000 */  nop
    /* C59D8 800D51D8 2A102202 */  slt        $v0, $s1, $v0
    /* C59DC 800D51DC 36004010 */  beqz       $v0, .L800D52B8
    /* C59E0 800D51E0 00000000 */   nop
    /* C59E4 800D51E4 173B030C */  jal        func_800CEC5C
    /* C59E8 800D51E8 21203702 */   addu      $a0, $s1, $s7
    /* C59EC 800D51EC 21984000 */  addu       $s3, $v0, $zero
    /* C59F0 800D51F0 2190C002 */  addu       $s2, $s6, $zero
    /* C59F4 800D51F4 0D004006 */  bltz       $s2, .L800D522C
    /* C59F8 800D51F8 21180000 */   addu      $v1, $zero, $zero
    /* C59FC 800D51FC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* C5A00 800D5200 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* C5A04 800D5204 00000000 */  nop
    /* C5A08 800D5208 2A104202 */  slt        $v0, $s2, $v0
    /* C5A0C 800D520C 07004010 */  beqz       $v0, .L800D522C
    /* C5A10 800D5210 00000000 */   nop
    /* C5A14 800D5214 05006006 */  bltz       $s3, .L800D522C
    /* C5A18 800D5218 00000000 */   nop
    /* C5A1C 800D521C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* C5A20 800D5220 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* C5A24 800D5224 00000000 */  nop
    /* C5A28 800D5228 2A186202 */  slt        $v1, $s3, $v0
  .L800D522C:
    /* C5A2C 800D522C 20006010 */  beqz       $v1, .L800D52B0
    /* C5A30 800D5230 21206002 */   addu      $a0, $s3, $zero
    /* C5A34 800D5234 2000A68F */  lw         $a2, 0x20($sp)
    /* C5A38 800D5238 A161020C */  jal        func_80098684
    /* C5A3C 800D523C 21284002 */   addu      $a1, $s2, $zero
    /* C5A40 800D5240 06004014 */  bnez       $v0, .L800D525C
    /* C5A44 800D5244 18003502 */   mult      $s1, $s5
    /* C5A48 800D5248 1280023C */  lui        $v0, %hi(D_8011A271)
    /* C5A4C 800D524C 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* C5A50 800D5250 00000000 */  nop
    /* C5A54 800D5254 16004010 */  beqz       $v0, .L800D52B0
    /* C5A58 800D5258 00000000 */   nop
  .L800D525C:
    /* C5A5C 800D525C 12400000 */  mflo       $t0
    /* C5A60 800D5260 21A0C803 */  addu       $s4, $fp, $t0
    /* C5A64 800D5264 00000000 */  nop
    /* C5A68 800D5268 1800D502 */  mult       $s6, $s5
    /* C5A6C 800D526C 1800A98F */  lw         $t1, 0x18($sp)
    /* C5A70 800D5270 12400000 */  mflo       $t0
    /* C5A74 800D5274 21802801 */  addu       $s0, $t1, $t0
    /* C5A78 800D5278 21206002 */  addu       $a0, $s3, $zero
    /* C5A7C 800D527C F760020C */  jal        func_800983DC
    /* C5A80 800D5280 21284002 */   addu      $a1, $s2, $zero
    /* C5A84 800D5284 02004010 */  beqz       $v0, .L800D5290
    /* C5A88 800D5288 30000324 */   addiu     $v1, $zero, 0x30
    /* C5A8C 800D528C 5D000324 */  addiu      $v1, $zero, 0x5D
  .L800D5290:
    /* C5A90 800D5290 1000B5AF */  sw         $s5, 0x10($sp)
    /* C5A94 800D5294 1400A3AF */  sw         $v1, 0x14($sp)
    /* C5A98 800D5298 1680043C */  lui        $a0, %hi(D_801587F8)
    /* C5A9C 800D529C F887848C */  lw         $a0, %lo(D_801587F8)($a0)
    /* C5AA0 800D52A0 21288002 */  addu       $a1, $s4, $zero
    /* C5AA4 800D52A4 21300002 */  addu       $a2, $s0, $zero
    /* C5AA8 800D52A8 5C14020C */  jal        func_80085170
    /* C5AAC 800D52AC 2138A002 */   addu      $a3, $s5, $zero
  .L800D52B0:
    /* C5AB0 800D52B0 73540308 */  j          .L800D51CC
    /* C5AB4 800D52B4 01003126 */   addiu     $s1, $s1, 0x1
  .L800D52B8:
    /* C5AB8 800D52B8 6D540308 */  j          .L800D51B4
    /* C5ABC 800D52BC 0100D626 */   addiu     $s6, $s6, 0x1
  .L800D52C0:
    /* C5AC0 800D52C0 21980000 */  addu       $s3, $zero, $zero
    /* C5AC4 800D52C4 1D001024 */  addiu      $s0, $zero, 0x1D
  .L800D52C8:
    /* C5AC8 800D52C8 1280023C */  lui        $v0, %hi(D_8011A280)
    /* C5ACC 800D52CC 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* C5AD0 800D52D0 00000000 */  nop
    /* C5AD4 800D52D4 2A106202 */  slt        $v0, $s3, $v0
    /* C5AD8 800D52D8 27004010 */  beqz       $v0, .L800D5378
    /* C5ADC 800D52DC 40101300 */   sll       $v0, $s3, 1
    /* C5AE0 800D52E0 21105300 */  addu       $v0, $v0, $s3
    /* C5AE4 800D52E4 80100200 */  sll        $v0, $v0, 2
    /* C5AE8 800D52E8 21105300 */  addu       $v0, $v0, $s3
    /* C5AEC 800D52EC 40900200 */  sll        $s2, $v0, 1
    /* C5AF0 800D52F0 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C5AF4 800D52F4 21083200 */  addu       $at, $at, $s2
    /* C5AF8 800D52F8 C4D62390 */  lbu        $v1, %lo(D_8010D6C4)($at)
    /* C5AFC 800D52FC 1680023C */  lui        $v0, %hi(D_80158860)
    /* C5B00 800D5300 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* C5B04 800D5304 00000000 */  nop
    /* C5B08 800D5308 19006214 */  bne        $v1, $v0, .L800D5370
    /* C5B0C 800D530C 00000000 */   nop
    /* C5B10 800D5310 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C5B14 800D5314 21083200 */  addu       $at, $at, $s2
    /* C5B18 800D5318 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* C5B1C 800D531C 173B030C */  jal        func_800CEC5C
    /* C5B20 800D5320 23209700 */   subu      $a0, $a0, $s7
    /* C5B24 800D5324 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C5B28 800D5328 21083200 */  addu       $at, $at, $s2
    /* C5B2C 800D532C B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* C5B30 800D5330 18005500 */  mult       $v0, $s5
    /* C5B34 800D5334 12180000 */  mflo       $v1
    /* C5B38 800D5338 00000000 */  nop
    /* C5B3C 800D533C 00000000 */  nop
    /* C5B40 800D5340 18005502 */  mult       $s2, $s5
    /* C5B44 800D5344 12100000 */  mflo       $v0
    /* C5B48 800D5348 1000B5AF */  sw         $s5, 0x10($sp)
    /* C5B4C 800D534C 1400B0AF */  sw         $s0, 0x14($sp)
    /* C5B50 800D5350 1680043C */  lui        $a0, %hi(D_801587F8)
    /* C5B54 800D5354 F887848C */  lw         $a0, %lo(D_801587F8)($a0)
    /* C5B58 800D5358 2128C303 */  addu       $a1, $fp, $v1
    /* C5B5C 800D535C 1800A88F */  lw         $t0, 0x18($sp)
    /* C5B60 800D5360 00000000 */  nop
    /* C5B64 800D5364 21300201 */  addu       $a2, $t0, $v0
    /* C5B68 800D5368 5C14020C */  jal        func_80085170
    /* C5B6C 800D536C 2138A002 */   addu      $a3, $s5, $zero
  .L800D5370:
    /* C5B70 800D5370 B2540308 */  j          .L800D52C8
    /* C5B74 800D5374 01007326 */   addiu     $s3, $s3, 0x1
  .L800D5378:
    /* C5B78 800D5378 1680023C */  lui        $v0, %hi(D_80158864)
    /* C5B7C 800D537C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C5B80 800D5380 00000000 */  nop
    /* C5B84 800D5384 00004484 */  lh         $a0, 0x0($v0)
    /* C5B88 800D5388 173B030C */  jal        func_800CEC5C
    /* C5B8C 800D538C 23209700 */   subu      $a0, $a0, $s7
    /* C5B90 800D5390 1680033C */  lui        $v1, %hi(D_80158864)
    /* C5B94 800D5394 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C5B98 800D5398 00000000 */  nop
    /* C5B9C 800D539C 02007284 */  lh         $s2, 0x2($v1)
    /* C5BA0 800D53A0 18005500 */  mult       $v0, $s5
    /* C5BA4 800D53A4 12500000 */  mflo       $t2
    /* C5BA8 800D53A8 00000000 */  nop
    /* C5BAC 800D53AC 00000000 */  nop
    /* C5BB0 800D53B0 18005502 */  mult       $s2, $s5
    /* C5BB4 800D53B4 12180000 */  mflo       $v1
    /* C5BB8 800D53B8 29000224 */  addiu      $v0, $zero, 0x29
    /* C5BBC 800D53BC 1000B5AF */  sw         $s5, 0x10($sp)
    /* C5BC0 800D53C0 1400A2AF */  sw         $v0, 0x14($sp)
    /* C5BC4 800D53C4 1680043C */  lui        $a0, %hi(D_801587F8)
    /* C5BC8 800D53C8 F887848C */  lw         $a0, %lo(D_801587F8)($a0)
    /* C5BCC 800D53CC 2128CA03 */  addu       $a1, $fp, $t2
    /* C5BD0 800D53D0 1800A88F */  lw         $t0, 0x18($sp)
    /* C5BD4 800D53D4 00000000 */  nop
    /* C5BD8 800D53D8 21300301 */  addu       $a2, $t0, $v1
    /* C5BDC 800D53DC 5C14020C */  jal        func_80085170
    /* C5BE0 800D53E0 2138A002 */   addu      $a3, $s5, $zero
    /* C5BE4 800D53E4 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* C5BE8 800D53E8 4800BE8F */  lw         $fp, 0x48($sp)
    /* C5BEC 800D53EC 4400B78F */  lw         $s7, 0x44($sp)
    /* C5BF0 800D53F0 4000B68F */  lw         $s6, 0x40($sp)
    /* C5BF4 800D53F4 3C00B58F */  lw         $s5, 0x3C($sp)
    /* C5BF8 800D53F8 3800B48F */  lw         $s4, 0x38($sp)
    /* C5BFC 800D53FC 3400B38F */  lw         $s3, 0x34($sp)
    /* C5C00 800D5400 3000B28F */  lw         $s2, 0x30($sp)
    /* C5C04 800D5404 2C00B18F */  lw         $s1, 0x2C($sp)
    /* C5C08 800D5408 2800B08F */  lw         $s0, 0x28($sp)
    /* C5C0C 800D540C 5000BD27 */  addiu      $sp, $sp, 0x50
    /* C5C10 800D5410 0800E003 */  jr         $ra
    /* C5C14 800D5414 00000000 */   nop
endlabel func_800D4F9C
