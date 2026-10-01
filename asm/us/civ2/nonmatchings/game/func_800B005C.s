.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B005C, 0x6D0

glabel func_800B005C
    /* A085C 800B005C 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* A0860 800B0060 8400BFAF */  sw         $ra, 0x84($sp)
    /* A0864 800B0064 8000BEAF */  sw         $fp, 0x80($sp)
    /* A0868 800B0068 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* A086C 800B006C 7800B6AF */  sw         $s6, 0x78($sp)
    /* A0870 800B0070 7400B5AF */  sw         $s5, 0x74($sp)
    /* A0874 800B0074 7000B4AF */  sw         $s4, 0x70($sp)
    /* A0878 800B0078 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* A087C 800B007C 6800B2AF */  sw         $s2, 0x68($sp)
    /* A0880 800B0080 6400B1AF */  sw         $s1, 0x64($sp)
    /* A0884 800B0084 6000B0AF */  sw         $s0, 0x60($sp)
    /* A0888 800B0088 21B88000 */  addu       $s7, $a0, $zero
    /* A088C 800B008C 2190A000 */  addu       $s2, $a1, $zero
    /* A0890 800B0090 5000A6AF */  sw         $a2, 0x50($sp)
    /* A0894 800B0094 21A8E000 */  addu       $s5, $a3, $zero
    /* A0898 800B0098 9800BE8F */  lw         $fp, 0x98($sp)
    /* A089C 800B009C 9C00B08F */  lw         $s0, 0x9C($sp)
    /* A08A0 800B00A0 00000000 */  nop
    /* A08A4 800B00A4 08000426 */  addiu      $a0, $s0, 0x8
    /* A08A8 800B00A8 00240400 */  sll        $a0, $a0, 16
    /* A08AC 800B00AC 03240400 */  sra        $a0, $a0, 16
    /* A08B0 800B00B0 D0EC030C */  jal        func_800FB340
    /* A08B4 800B00B4 08000524 */   addiu     $a1, $zero, 0x8
    /* A08B8 800B00B8 40101200 */  sll        $v0, $s2, 1
    /* A08BC 800B00BC 21105200 */  addu       $v0, $v0, $s2
    /* A08C0 800B00C0 80100200 */  sll        $v0, $v0, 2
    /* A08C4 800B00C4 23105200 */  subu       $v0, $v0, $s2
    /* A08C8 800B00C8 C0100200 */  sll        $v0, $v0, 3
    /* A08CC 800B00CC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* A08D0 800B00D0 21082200 */  addu       $at, $at, $v0
    /* A08D4 800B00D4 D83E3180 */  lb         $s1, %lo(D_80113ED8)($at)
    /* A08D8 800B00D8 1800B5A7 */  sh         $s5, 0x18($sp)
    /* A08DC 800B00DC 1A00BEA7 */  sh         $fp, 0x1A($sp)
    /* A08E0 800B00E0 2000A226 */  addiu      $v0, $s5, 0x20
    /* A08E4 800B00E4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* A08E8 800B00E8 1800C227 */  addiu      $v0, $fp, 0x18
    /* A08EC 800B00EC 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* A08F0 800B00F0 1C00E48E */  lw         $a0, 0x1C($s7)
    /* A08F4 800B00F4 3307040C */  jal        func_80101CCC
    /* A08F8 800B00F8 21280000 */   addu      $a1, $zero, $zero
    /* A08FC 800B00FC 13002012 */  beqz       $s1, .L800B014C
    /* A0900 800B0100 40101100 */   sll       $v0, $s1, 1
    /* A0904 800B0104 21105100 */  addu       $v0, $v0, $s1
    /* A0908 800B0108 80100200 */  sll        $v0, $v0, 2
    /* A090C 800B010C 23105100 */  subu       $v0, $v0, $s1
    /* A0910 800B0110 00110200 */  sll        $v0, $v0, 4
    /* A0914 800B0114 23105100 */  subu       $v0, $v0, $s1
    /* A0918 800B0118 C0100200 */  sll        $v0, $v0, 3
    /* A091C 800B011C 1180013C */  lui        $at, %hi(D_80117698)
    /* A0920 800B0120 21082200 */  addu       $at, $at, $v0
    /* A0924 800B0124 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* A0928 800B0128 00000000 */  nop
    /* A092C 800B012C 40100300 */  sll        $v0, $v1, 1
    /* A0930 800B0130 21104300 */  addu       $v0, $v0, $v1
    /* A0934 800B0134 00110200 */  sll        $v0, $v0, 4
    /* A0938 800B0138 1180013C */  lui        $at, %hi(D_80116AD6)
    /* A093C 800B013C 21082200 */  addu       $at, $at, $v0
    /* A0940 800B0140 D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* A0944 800B0144 54C00208 */  j          .L800B0150
    /* A0948 800B0148 C0100200 */   sll       $v0, $v0, 3
  .L800B014C:
    /* A094C 800B014C 21100000 */  addu       $v0, $zero, $zero
  .L800B0150:
    /* A0950 800B0150 1180013C */  lui        $at, %hi(D_80117650)
    /* A0954 800B0154 21082200 */  addu       $at, $at, $v0
    /* A0958 800B0158 50762284 */  lh         $v0, %lo(D_80117650)($at)
    /* A095C 800B015C 00000000 */  nop
    /* A0960 800B0160 5800A2AF */  sw         $v0, 0x58($sp)
    /* A0964 800B0164 40101200 */  sll        $v0, $s2, 1
    /* A0968 800B0168 21105200 */  addu       $v0, $v0, $s2
    /* A096C 800B016C 80100200 */  sll        $v0, $v0, 2
    /* A0970 800B0170 23105200 */  subu       $v0, $v0, $s2
    /* A0974 800B0174 C0100200 */  sll        $v0, $v0, 3
    /* A0978 800B0178 1180013C */  lui        $at, %hi(D_80113ED0)
    /* A097C 800B017C 21082200 */  addu       $at, $at, $v0
    /* A0980 800B0180 D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* A0984 800B0184 1180013C */  lui        $at, %hi(D_80113ED2)
    /* A0988 800B0188 21082200 */  addu       $at, $at, $v0
    /* A098C 800B018C D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* A0990 800B0190 3A62020C */  jal        func_800988E8
    /* A0994 800B0194 00000000 */   nop
    /* A0998 800B0198 21204002 */  addu       $a0, $s2, $zero
    /* A099C 800B019C C826020C */  jal        func_80089B20
    /* A09A0 800B01A0 08000524 */   addiu     $a1, $zero, 0x8
    /* A09A4 800B01A4 07004014 */  bnez       $v0, .L800B01C4
    /* A09A8 800B01A8 01001624 */   addiu     $s6, $zero, 0x1
    /* A09AC 800B01AC 21202002 */  addu       $a0, $s1, $zero
    /* A09B0 800B01B0 C17B030C */  jal        func_800DEF04
    /* A09B4 800B01B4 06000524 */   addiu     $a1, $zero, 0x6
    /* A09B8 800B01B8 02004014 */  bnez       $v0, .L800B01C4
    /* A09BC 800B01BC 01001624 */   addiu     $s6, $zero, 0x1
    /* A09C0 800B01C0 21B00000 */  addu       $s6, $zero, $zero
  .L800B01C4:
    /* A09C4 800B01C4 40101100 */  sll        $v0, $s1, 1
    /* A09C8 800B01C8 21105100 */  addu       $v0, $v0, $s1
    /* A09CC 800B01CC 80100200 */  sll        $v0, $v0, 2
    /* A09D0 800B01D0 23105100 */  subu       $v0, $v0, $s1
    /* A09D4 800B01D4 00110200 */  sll        $v0, $v0, 4
    /* A09D8 800B01D8 23105100 */  subu       $v0, $v0, $s1
    /* A09DC 800B01DC C0100200 */  sll        $v0, $v0, 3
    /* A09E0 800B01E0 1180013C */  lui        $at, %hi(D_80117698)
    /* A09E4 800B01E4 21082200 */  addu       $at, $at, $v0
    /* A09E8 800B01E8 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* A09EC 800B01EC 00000000 */  nop
    /* A09F0 800B01F0 40100300 */  sll        $v0, $v1, 1
    /* A09F4 800B01F4 21104300 */  addu       $v0, $v0, $v1
    /* A09F8 800B01F8 00110200 */  sll        $v0, $v0, 4
    /* A09FC 800B01FC 1180013C */  lui        $at, %hi(D_80116AD8)
    /* A0A00 800B0200 21082200 */  addu       $at, $at, $v0
    /* A0A04 800B0204 D86A3484 */  lh         $s4, %lo(D_80116AD8)($at)
    /* A0A08 800B0208 1280023C */  lui        $v0, %hi(D_8011A275)
    /* A0A0C 800B020C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* A0A10 800B0210 00000000 */  nop
    /* A0A14 800B0214 07102202 */  srav       $v0, $v0, $s1
    /* A0A18 800B0218 01004230 */  andi       $v0, $v0, 0x1
    /* A0A1C 800B021C 08004010 */  beqz       $v0, .L800B0240
    /* A0A20 800B0220 00111100 */   sll       $v0, $s1, 4
    /* A0A24 800B0224 23105100 */  subu       $v0, $v0, $s1
    /* A0A28 800B0228 C0100200 */  sll        $v0, $v0, 3
    /* A0A2C 800B022C 21105100 */  addu       $v0, $v0, $s1
    /* A0A30 800B0230 40100200 */  sll        $v0, $v0, 1
    /* A0A34 800B0234 1180013C */  lui        $at, %hi(D_80116EC0)
    /* A0A38 800B0238 21082200 */  addu       $at, $at, $v0
    /* A0A3C 800B023C C06E3484 */  lh         $s4, %lo(D_80116EC0)($at)
  .L800B0240:
    /* A0A40 800B0240 21202002 */  addu       $a0, $s1, $zero
    /* A0A44 800B0244 8ACA010C */  jal        func_80072A28
    /* A0A48 800B0248 25000524 */   addiu     $a1, $zero, 0x25
    /* A0A4C 800B024C 02004010 */  beqz       $v0, .L800B0258
    /* A0A50 800B0250 21800000 */   addu      $s0, $zero, $zero
    /* A0A54 800B0254 04001424 */  addiu      $s4, $zero, 0x4
  .L800B0258:
    /* A0A58 800B0258 21202002 */  addu       $a0, $s1, $zero
    /* A0A5C 800B025C 8ACA010C */  jal        func_80072A28
    /* A0A60 800B0260 05000524 */   addiu     $a1, $zero, 0x5
    /* A0A64 800B0264 04004010 */  beqz       $v0, .L800B0278
    /* A0A68 800B0268 21202002 */   addu      $a0, $s1, $zero
    /* A0A6C 800B026C 8ACA010C */  jal        func_80072A28
    /* A0A70 800B0270 18000524 */   addiu     $a1, $zero, 0x18
    /* A0A74 800B0274 2B800200 */  sltu       $s0, $zero, $v0
  .L800B0278:
    /* A0A78 800B0278 02000012 */  beqz       $s0, .L800B0284
    /* A0A7C 800B027C 00000000 */   nop
    /* A0A80 800B0280 05001424 */  addiu      $s4, $zero, 0x5
  .L800B0284:
    /* A0A84 800B0284 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* A0A88 800B0288 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* A0A8C 800B028C 00000000 */  nop
    /* A0A90 800B0290 17002212 */  beq        $s1, $v0, .L800B02F0
    /* A0A94 800B0294 40101200 */   sll       $v0, $s2, 1
    /* A0A98 800B0298 1280033C */  lui        $v1, %hi(D_8011A271)
    /* A0A9C 800B029C 71A26324 */  addiu      $v1, $v1, %lo(D_8011A271)
    /* A0AA0 800B02A0 00006290 */  lbu        $v0, 0x0($v1)
    /* A0AA4 800B02A4 00000000 */  nop
    /* A0AA8 800B02A8 11004014 */  bnez       $v0, .L800B02F0
    /* A0AAC 800B02AC 40101200 */   sll       $v0, $s2, 1
    /* A0AB0 800B02B0 E9FF6294 */  lhu        $v0, -0x17($v1)
    /* A0AB4 800B02B4 00000000 */  nop
    /* A0AB8 800B02B8 80004230 */  andi       $v0, $v0, 0x80
    /* A0ABC 800B02BC 07004010 */  beqz       $v0, .L800B02DC
    /* A0AC0 800B02C0 00000000 */   nop
    /* A0AC4 800B02C4 1280023C */  lui        $v0, %hi(D_8011A390)
    /* A0AC8 800B02C8 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* A0ACC 800B02CC 00000000 */  nop
    /* A0AD0 800B02D0 08004230 */  andi       $v0, $v0, 0x8
    /* A0AD4 800B02D4 06004014 */  bnez       $v0, .L800B02F0
    /* A0AD8 800B02D8 40101200 */   sll       $v0, $s2, 1
  .L800B02DC:
    /* A0ADC 800B02DC 5000A88F */  lw         $t0, 0x50($sp)
    /* A0AE0 800B02E0 00000000 */  nop
    /* A0AE4 800B02E4 00100231 */  andi       $v0, $t0, 0x1000
    /* A0AE8 800B02E8 0A004010 */  beqz       $v0, .L800B0314
    /* A0AEC 800B02EC 40101200 */   sll       $v0, $s2, 1
  .L800B02F0:
    /* A0AF0 800B02F0 21105200 */  addu       $v0, $v0, $s2
    /* A0AF4 800B02F4 80100200 */  sll        $v0, $v0, 2
    /* A0AF8 800B02F8 23105200 */  subu       $v0, $v0, $s2
    /* A0AFC 800B02FC C0100200 */  sll        $v0, $v0, 3
    /* A0B00 800B0300 1180013C */  lui        $at, %hi(D_80113ED9)
    /* A0B04 800B0304 21082200 */  addu       $at, $at, $v0
    /* A0B08 800B0308 D93E3380 */  lb         $s3, %lo(D_80113ED9)($at)
    /* A0B0C 800B030C D1C00208 */  j          .L800B0344
    /* A0B10 800B0310 0400822A */   slti      $v0, $s4, 0x4
  .L800B0314:
    /* A0B14 800B0314 21105200 */  addu       $v0, $v0, $s2
    /* A0B18 800B0318 80100200 */  sll        $v0, $v0, 2
    /* A0B1C 800B031C 23105200 */  subu       $v0, $v0, $s2
    /* A0B20 800B0320 C0100200 */  sll        $v0, $v0, 3
    /* A0B24 800B0324 1180033C */  lui        $v1, %hi(D_80113EDD)
    /* A0B28 800B0328 DD3E6324 */  addiu      $v1, $v1, %lo(D_80113EDD)
    /* A0B2C 800B032C 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* A0B30 800B0330 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* A0B34 800B0334 21104300 */  addu       $v0, $v0, $v1
    /* A0B38 800B0338 21104400 */  addu       $v0, $v0, $a0
    /* A0B3C 800B033C 00005380 */  lb         $s3, 0x0($v0)
    /* A0B40 800B0340 0400822A */  slti       $v0, $s4, 0x4
  .L800B0344:
    /* A0B44 800B0344 08004010 */  beqz       $v0, .L800B0368
    /* A0B48 800B0348 0400622A */   slti      $v0, $s3, 0x4
    /* A0B4C 800B034C 1A004014 */  bnez       $v0, .L800B03B8
    /* A0B50 800B0350 21800000 */   addu      $s0, $zero, $zero
    /* A0B54 800B0354 0600622A */  slti       $v0, $s3, 0x6
    /* A0B58 800B0358 17004014 */  bnez       $v0, .L800B03B8
    /* A0B5C 800B035C 01001024 */   addiu     $s0, $zero, 0x1
    /* A0B60 800B0360 EBC00208 */  j          .L800B03AC
    /* A0B64 800B0364 0800622A */   slti      $v0, $s3, 0x8
  .L800B0368:
    /* A0B68 800B0368 04000224 */  addiu      $v0, $zero, 0x4
    /* A0B6C 800B036C 08008216 */  bne        $s4, $v0, .L800B0390
    /* A0B70 800B0370 0500622A */   slti      $v0, $s3, 0x5
    /* A0B74 800B0374 10004014 */  bnez       $v0, .L800B03B8
    /* A0B78 800B0378 21800000 */   addu      $s0, $zero, $zero
    /* A0B7C 800B037C 0800622A */  slti       $v0, $s3, 0x8
    /* A0B80 800B0380 0D004014 */  bnez       $v0, .L800B03B8
    /* A0B84 800B0384 01001024 */   addiu     $s0, $zero, 0x1
    /* A0B88 800B0388 EBC00208 */  j          .L800B03AC
    /* A0B8C 800B038C 0B00622A */   slti      $v0, $s3, 0xB
  .L800B0390:
    /* A0B90 800B0390 09004014 */  bnez       $v0, .L800B03B8
    /* A0B94 800B0394 21800000 */   addu      $s0, $zero, $zero
    /* A0B98 800B0398 0B00622A */  slti       $v0, $s3, 0xB
    /* A0B9C 800B039C 03004010 */  beqz       $v0, .L800B03AC
    /* A0BA0 800B03A0 1300622A */   slti      $v0, $s3, 0x13
    /* A0BA4 800B03A4 EEC00208 */  j          .L800B03B8
    /* A0BA8 800B03A8 01001024 */   addiu     $s0, $zero, 0x1
  .L800B03AC:
    /* A0BAC 800B03AC 02004010 */  beqz       $v0, .L800B03B8
    /* A0BB0 800B03B0 03001024 */   addiu     $s0, $zero, 0x3
    /* A0BB4 800B03B4 02001024 */  addiu      $s0, $zero, 0x2
  .L800B03B8:
    /* A0BB8 800B03B8 21204002 */  addu       $a0, $s2, $zero
    /* A0BBC 800B03BC C826020C */  jal        func_80089B20
    /* A0BC0 800B03C0 01000524 */   addiu     $a1, $zero, 0x1
    /* A0BC4 800B03C4 17004010 */  beqz       $v0, .L800B0424
    /* A0BC8 800B03C8 C0301400 */   sll       $a2, $s4, 3
    /* A0BCC 800B03CC 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* A0BD0 800B03D0 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* A0BD4 800B03D4 00000000 */  nop
    /* A0BD8 800B03D8 0E002212 */  beq        $s1, $v0, .L800B0414
    /* A0BDC 800B03DC 0300022A */   slti      $v0, $s0, 0x3
    /* A0BE0 800B03E0 1280033C */  lui        $v1, %hi(D_8011A272)
    /* A0BE4 800B03E4 72A26324 */  addiu      $v1, $v1, %lo(D_8011A272)
    /* A0BE8 800B03E8 00006290 */  lbu        $v0, 0x0($v1)
    /* A0BEC 800B03EC 00000000 */  nop
    /* A0BF0 800B03F0 0300422C */  sltiu      $v0, $v0, 0x3
    /* A0BF4 800B03F4 0C004010 */  beqz       $v0, .L800B0428
    /* A0BF8 800B03F8 2130D400 */   addu      $a2, $a2, $s4
    /* A0BFC 800B03FC 03006290 */  lbu        $v0, 0x3($v1)
    /* A0C00 800B0400 00000000 */  nop
    /* A0C04 800B0404 07102202 */  srav       $v0, $v0, $s1
    /* A0C08 800B0408 01004230 */  andi       $v0, $v0, 0x1
    /* A0C0C 800B040C 04004014 */  bnez       $v0, .L800B0420
    /* A0C10 800B0410 0300022A */   slti      $v0, $s0, 0x3
  .L800B0414:
    /* A0C14 800B0414 03004010 */  beqz       $v0, .L800B0424
    /* A0C18 800B0418 C0301400 */   sll       $a2, $s4, 3
    /* A0C1C 800B041C 01001026 */  addiu      $s0, $s0, 0x1
  .L800B0420:
    /* A0C20 800B0420 C0301400 */  sll        $a2, $s4, 3
  .L800B0424:
    /* A0C24 800B0424 2130D400 */  addu       $a2, $a2, $s4
  .L800B0428:
    /* A0C28 800B0428 80300600 */  sll        $a2, $a2, 2
    /* A0C2C 800B042C 2130D400 */  addu       $a2, $a2, $s4
    /* A0C30 800B0430 40310600 */  sll        $a2, $a2, 5
    /* A0C34 800B0434 C0101000 */  sll        $v0, $s0, 3
    /* A0C38 800B0438 21105000 */  addu       $v0, $v0, $s0
    /* A0C3C 800B043C 80100200 */  sll        $v0, $v0, 2
    /* A0C40 800B0440 21105000 */  addu       $v0, $v0, $s0
    /* A0C44 800B0444 C0100200 */  sll        $v0, $v0, 3
    /* A0C48 800B0448 1380033C */  lui        $v1, %hi(D_80129A80)
    /* A0C4C 800B044C 809A6324 */  addiu      $v1, $v1, %lo(D_80129A80)
    /* A0C50 800B0450 21104300 */  addu       $v0, $v0, $v1
    /* A0C54 800B0454 2130C200 */  addu       $a2, $a2, $v0
    /* A0C58 800B0458 C0281600 */  sll        $a1, $s6, 3
    /* A0C5C 800B045C 2128B600 */  addu       $a1, $a1, $s6
    /* A0C60 800B0460 80280500 */  sll        $a1, $a1, 2
    /* A0C64 800B0464 2128B600 */  addu       $a1, $a1, $s6
    /* A0C68 800B0468 80280500 */  sll        $a1, $a1, 2
    /* A0C6C 800B046C 003C1500 */  sll        $a3, $s5, 16
    /* A0C70 800B0470 00141E00 */  sll        $v0, $fp, 16
    /* A0C74 800B0474 03140200 */  sra        $v0, $v0, 16
    /* A0C78 800B0478 1000A2AF */  sw         $v0, 0x10($sp)
    /* A0C7C 800B047C 3000A427 */  addiu      $a0, $sp, 0x30
    /* A0C80 800B0480 2128C500 */  addu       $a1, $a2, $a1
    /* A0C84 800B0484 2130E002 */  addu       $a2, $s7, $zero
    /* A0C88 800B0488 89EE030C */  jal        func_800FBA24
    /* A0C8C 800B048C 033C0700 */   sra       $a3, $a3, 16
    /* A0C90 800B0490 40101200 */  sll        $v0, $s2, 1
    /* A0C94 800B0494 21105200 */  addu       $v0, $v0, $s2
    /* A0C98 800B0498 80100200 */  sll        $v0, $v0, 2
    /* A0C9C 800B049C 23105200 */  subu       $v0, $v0, $s2
    /* A0CA0 800B04A0 C0100200 */  sll        $v0, $v0, 3
    /* A0CA4 800B04A4 1180013C */  lui        $at, %hi(D_80113ED0)
    /* A0CA8 800B04A8 21082200 */  addu       $at, $at, $v0
    /* A0CAC 800B04AC D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* A0CB0 800B04B0 1180013C */  lui        $at, %hi(D_80113ED2)
    /* A0CB4 800B04B4 21082200 */  addu       $at, $at, $v0
    /* A0CB8 800B04B8 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* A0CBC 800B04BC 3A62020C */  jal        func_800988E8
    /* A0CC0 800B04C0 00000000 */   nop
    /* A0CC4 800B04C4 28004004 */  bltz       $v0, .L800B0568
    /* A0CC8 800B04C8 00000000 */   nop
    /* A0CCC 800B04CC 5000A88F */  lw         $t0, 0x50($sp)
    /* A0CD0 800B04D0 00000000 */  nop
    /* A0CD4 800B04D4 02000231 */  andi       $v0, $t0, 0x2
    /* A0CD8 800B04D8 26004014 */  bnez       $v0, .L800B0574
    /* A0CDC 800B04DC 01000231 */   andi      $v0, $t0, 0x1
    /* A0CE0 800B04E0 1480023C */  lui        $v0, %hi(D_8013874C)
    /* A0CE4 800B04E4 4C874224 */  addiu      $v0, $v0, %lo(D_8013874C)
    /* A0CE8 800B04E8 C0201400 */  sll        $a0, $s4, 3
    /* A0CEC 800B04EC 21108200 */  addu       $v0, $a0, $v0
    /* A0CF0 800B04F0 40181000 */  sll        $v1, $s0, 1
    /* A0CF4 800B04F4 21106200 */  addu       $v0, $v1, $v0
    /* A0CF8 800B04F8 21105600 */  addu       $v0, $v0, $s6
    /* A0CFC 800B04FC 00004790 */  lbu        $a3, 0x0($v0)
    /* A0D00 800B0500 00000000 */  nop
    /* A0D04 800B0504 2138A702 */  addu       $a3, $s5, $a3
    /* A0D08 800B0508 1480023C */  lui        $v0, %hi(D_8013877C)
    /* A0D0C 800B050C 7C874224 */  addiu      $v0, $v0, %lo(D_8013877C)
    /* A0D10 800B0510 21208200 */  addu       $a0, $a0, $v0
    /* A0D14 800B0514 21186400 */  addu       $v1, $v1, $a0
    /* A0D18 800B0518 21187600 */  addu       $v1, $v1, $s6
    /* A0D1C 800B051C 00006290 */  lbu        $v0, 0x0($v1)
    /* A0D20 800B0520 00000000 */  nop
    /* A0D24 800B0524 2110C203 */  addu       $v0, $fp, $v0
    /* A0D28 800B0528 C0281100 */  sll        $a1, $s1, 3
    /* A0D2C 800B052C 2128B100 */  addu       $a1, $a1, $s1
    /* A0D30 800B0530 80280500 */  sll        $a1, $a1, 2
    /* A0D34 800B0534 2128B100 */  addu       $a1, $a1, $s1
    /* A0D38 800B0538 C0280500 */  sll        $a1, $a1, 3
    /* A0D3C 800B053C 1380033C */  lui        $v1, %hi(D_8012B640)
    /* A0D40 800B0540 40B66324 */  addiu      $v1, $v1, %lo(D_8012B640)
    /* A0D44 800B0544 003C0700 */  sll        $a3, $a3, 16
    /* A0D48 800B0548 00140200 */  sll        $v0, $v0, 16
    /* A0D4C 800B054C 03140200 */  sra        $v0, $v0, 16
    /* A0D50 800B0550 1000A2AF */  sw         $v0, 0x10($sp)
    /* A0D54 800B0554 3800A427 */  addiu      $a0, $sp, 0x38
    /* A0D58 800B0558 2128A300 */  addu       $a1, $a1, $v1
    /* A0D5C 800B055C 2130E002 */  addu       $a2, $s7, $zero
    /* A0D60 800B0560 89EE030C */  jal        func_800FBA24
    /* A0D64 800B0564 033C0700 */   sra       $a3, $a3, 16
  .L800B0568:
    /* A0D68 800B0568 5000A88F */  lw         $t0, 0x50($sp)
    /* A0D6C 800B056C 00000000 */  nop
    /* A0D70 800B0570 01000231 */  andi       $v0, $t0, 0x1
  .L800B0574:
    /* A0D74 800B0574 5E004014 */  bnez       $v0, .L800B06F0
    /* A0D78 800B0578 01000424 */   addiu     $a0, $zero, 0x1
    /* A0D7C 800B057C 40101200 */  sll        $v0, $s2, 1
    /* A0D80 800B0580 21105200 */  addu       $v0, $v0, $s2
    /* A0D84 800B0584 80100200 */  sll        $v0, $v0, 2
    /* A0D88 800B0588 23105200 */  subu       $v0, $v0, $s2
    /* A0D8C 800B058C C0100200 */  sll        $v0, $v0, 3
    /* A0D90 800B0590 1180013C */  lui        $at, %hi(D_80113ED4)
    /* A0D94 800B0594 21082200 */  addu       $at, $at, $v0
    /* A0D98 800B0598 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* A0D9C 800B059C 00000000 */  nop
    /* A0DA0 800B05A0 01004230 */  andi       $v0, $v0, 0x1
    /* A0DA4 800B05A4 11004010 */  beqz       $v0, .L800B05EC
    /* A0DA8 800B05A8 00141E00 */   sll       $v0, $fp, 16
    /* A0DAC 800B05AC 003C1500 */  sll        $a3, $s5, 16
    /* A0DB0 800B05B0 03140200 */  sra        $v0, $v0, 16
    /* A0DB4 800B05B4 1000A2AF */  sw         $v0, 0x10($sp)
    /* A0DB8 800B05B8 3800A427 */  addiu      $a0, $sp, 0x38
    /* A0DBC 800B05BC 1380053C */  lui        $a1, %hi(D_8012E358)
    /* A0DC0 800B05C0 58E3A524 */  addiu      $a1, $a1, %lo(D_8012E358)
    /* A0DC4 800B05C4 2130E002 */  addu       $a2, $s7, $zero
    /* A0DC8 800B05C8 89EE030C */  jal        func_800FBA24
    /* A0DCC 800B05CC 033C0700 */   sra       $a3, $a3, 16
    /* A0DD0 800B05D0 2120E002 */  addu       $a0, $s7, $zero
    /* A0DD4 800B05D4 1800A527 */  addiu      $a1, $sp, 0x18
    /* A0DD8 800B05D8 5800A78F */  lw         $a3, 0x58($sp)
    /* A0DDC 800B05DC EBE3030C */  jal        func_800F8FAC
    /* A0DE0 800B05E0 06010624 */   addiu     $a2, $zero, 0x106
    /* A0DE4 800B05E4 BCC10208 */  j          .L800B06F0
    /* A0DE8 800B05E8 01000424 */   addiu     $a0, $zero, 0x1
  .L800B05EC:
    /* A0DEC 800B05EC BD9E030C */  jal        SetTile
    /* A0DF0 800B05F0 4000A427 */   addiu     $a0, $sp, 0x40
    /* A0DF4 800B05F4 2000B127 */  addiu      $s1, $sp, 0x20
    /* A0DF8 800B05F8 21206002 */  addu       $a0, $s3, $zero
    /* A0DFC 800B05FC 21282002 */  addu       $a1, $s1, $zero
    /* A0E00 800B0600 95D4030C */  jal        func_800F5254
    /* A0E04 800B0604 0A000624 */   addiu     $a2, $zero, 0xA
    /* A0E08 800B0608 AD87030C */  jal        func_800E1EB4
    /* A0E0C 800B060C 21202002 */   addu      $a0, $s1, $zero
    /* A0E10 800B0610 40800200 */  sll        $s0, $v0, 1
    /* A0E14 800B0614 21800202 */  addu       $s0, $s0, $v0
    /* A0E18 800B0618 40801000 */  sll        $s0, $s0, 1
    /* A0E1C 800B061C 1980030C */  jal        func_800E0064
    /* A0E20 800B0620 2120E002 */   addu      $a0, $s7, $zero
    /* A0E24 800B0624 05001026 */  addiu      $s0, $s0, 0x5
    /* A0E28 800B0628 1800B5A7 */  sh         $s5, 0x18($sp)
    /* A0E2C 800B062C 1A00BEA7 */  sh         $fp, 0x1A($sp)
    /* A0E30 800B0630 21900002 */  addu       $s2, $s0, $zero
    /* A0E34 800B0634 2180B002 */  addu       $s0, $s5, $s0
    /* A0E38 800B0638 1C00B0A7 */  sh         $s0, 0x1C($sp)
    /* A0E3C 800B063C 0E001024 */  addiu      $s0, $zero, 0xE
    /* A0E40 800B0640 0E00C227 */  addiu      $v0, $fp, 0xE
    /* A0E44 800B0644 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* A0E48 800B0648 1800A427 */  addiu      $a0, $sp, 0x18
    /* A0E4C 800B064C FFFF0524 */  addiu      $a1, $zero, -0x1
    /* A0E50 800B0650 82D4030C */  jal        func_800F5208
    /* A0E54 800B0654 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* A0E58 800B0658 5800A88F */  lw         $t0, 0x58($sp)
    /* A0E5C 800B065C 00000000 */  nop
    /* A0E60 800B0660 40100800 */  sll        $v0, $t0, 1
    /* A0E64 800B0664 21104800 */  addu       $v0, $v0, $t0
    /* A0E68 800B0668 1180013C */  lui        $at, %hi(D_8010CB00)
    /* A0E6C 800B066C 21082200 */  addu       $at, $at, $v0
    /* A0E70 800B0670 00CB2390 */  lbu        $v1, %lo(D_8010CB00)($at)
    /* A0E74 800B0674 00000000 */  nop
    /* A0E78 800B0678 4400A3A3 */  sb         $v1, 0x44($sp)
    /* A0E7C 800B067C 1180013C */  lui        $at, %hi(D_8010CB01)
    /* A0E80 800B0680 21082200 */  addu       $at, $at, $v0
    /* A0E84 800B0684 01CB2390 */  lbu        $v1, %lo(D_8010CB01)($at)
    /* A0E88 800B0688 00000000 */  nop
    /* A0E8C 800B068C 4500A3A3 */  sb         $v1, 0x45($sp)
    /* A0E90 800B0690 1180013C */  lui        $at, %hi(D_8010CB02)
    /* A0E94 800B0694 21082200 */  addu       $at, $at, $v0
    /* A0E98 800B0698 02CB2290 */  lbu        $v0, %lo(D_8010CB02)($at)
    /* A0E9C 800B069C 00000000 */  nop
    /* A0EA0 800B06A0 4600A2A3 */  sb         $v0, 0x46($sp)
    /* A0EA4 800B06A4 1800A697 */  lhu        $a2, 0x18($sp)
    /* A0EA8 800B06A8 00000000 */  nop
    /* A0EAC 800B06AC 4800A6A7 */  sh         $a2, 0x48($sp)
    /* A0EB0 800B06B0 1A00A797 */  lhu        $a3, 0x1A($sp)
    /* A0EB4 800B06B4 00000000 */  nop
    /* A0EB8 800B06B8 4A00A7A7 */  sh         $a3, 0x4A($sp)
    /* A0EBC 800B06BC 4C00B2A7 */  sh         $s2, 0x4C($sp)
    /* A0EC0 800B06C0 4E00B0A7 */  sh         $s0, 0x4E($sp)
    /* A0EC4 800B06C4 00340600 */  sll        $a2, $a2, 16
    /* A0EC8 800B06C8 03340600 */  sra        $a2, $a2, 16
    /* A0ECC 800B06CC 003C0700 */  sll        $a3, $a3, 16
    /* A0ED0 800B06D0 033C0700 */  sra        $a3, $a3, 16
    /* A0ED4 800B06D4 1680043C */  lui        $a0, %hi(D_80159284)
    /* A0ED8 800B06D8 8492848C */  lw         $a0, %lo(D_80159284)($a0)
    /* A0EDC 800B06DC 21282002 */  addu       $a1, $s1, $zero
    /* A0EE0 800B06E0 0800C624 */  addiu      $a2, $a2, 0x8
    /* A0EE4 800B06E4 2A80030C */  jal        func_800E00A8
    /* A0EE8 800B06E8 0800E724 */   addiu     $a3, $a3, 0x8
    /* A0EEC 800B06EC 01000424 */  addiu      $a0, $zero, 0x1
  .L800B06F0:
    /* A0EF0 800B06F0 D0EC030C */  jal        func_800FB340
    /* A0EF4 800B06F4 01000524 */   addiu     $a1, $zero, 0x1
    /* A0EF8 800B06F8 8400BF8F */  lw         $ra, 0x84($sp)
    /* A0EFC 800B06FC 8000BE8F */  lw         $fp, 0x80($sp)
    /* A0F00 800B0700 7C00B78F */  lw         $s7, 0x7C($sp)
    /* A0F04 800B0704 7800B68F */  lw         $s6, 0x78($sp)
    /* A0F08 800B0708 7400B58F */  lw         $s5, 0x74($sp)
    /* A0F0C 800B070C 7000B48F */  lw         $s4, 0x70($sp)
    /* A0F10 800B0710 6C00B38F */  lw         $s3, 0x6C($sp)
    /* A0F14 800B0714 6800B28F */  lw         $s2, 0x68($sp)
    /* A0F18 800B0718 6400B18F */  lw         $s1, 0x64($sp)
    /* A0F1C 800B071C 6000B08F */  lw         $s0, 0x60($sp)
    /* A0F20 800B0720 8800BD27 */  addiu      $sp, $sp, 0x88
    /* A0F24 800B0724 0800E003 */  jr         $ra
    /* A0F28 800B0728 00000000 */   nop
endlabel func_800B005C
