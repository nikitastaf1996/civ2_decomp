.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C4A48, 0x4D4

glabel func_800C4A48
    /* B5248 800C4A48 18FFBD27 */  addiu      $sp, $sp, -0xE8
    /* B524C 800C4A4C C000B0AF */  sw         $s0, 0xC0($sp)
    /* B5250 800C4A50 1280103C */  lui        $s0, %hi(D_801210C4)
    /* B5254 800C4A54 C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* B5258 800C4A58 E400BFAF */  sw         $ra, 0xE4($sp)
    /* B525C 800C4A5C E000BEAF */  sw         $fp, 0xE0($sp)
    /* B5260 800C4A60 DC00B7AF */  sw         $s7, 0xDC($sp)
    /* B5264 800C4A64 D800B6AF */  sw         $s6, 0xD8($sp)
    /* B5268 800C4A68 D400B5AF */  sw         $s5, 0xD4($sp)
    /* B526C 800C4A6C D000B4AF */  sw         $s4, 0xD0($sp)
    /* B5270 800C4A70 CC00B3AF */  sw         $s3, 0xCC($sp)
    /* B5274 800C4A74 C800B2AF */  sw         $s2, 0xC8($sp)
    /* B5278 800C4A78 C400B1AF */  sw         $s1, 0xC4($sp)
    /* B527C 800C4A7C 0000168E */  lw         $s6, 0x0($s0)
    /* B5280 800C4A80 DC49020C */  jal        func_80092770
    /* B5284 800C4A84 C0FC0426 */   addiu     $a0, $s0, -0x340
    /* B5288 800C4A88 7907040C */  jal        func_80101DE4
    /* B528C 800C4A8C 01000424 */   addiu     $a0, $zero, 0x1
    /* B5290 800C4A90 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* B5294 800C4A94 BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* B5298 800C4A98 00000000 */  nop
    /* B529C 800C4A9C 0400448C */  lw         $a0, 0x4($v0)
    /* B52A0 800C4AA0 D707040C */  jal        func_80101F5C
    /* B52A4 800C4AA4 10001124 */   addiu     $s1, $zero, 0x10
    /* B52A8 800C4AA8 1000A427 */  addiu      $a0, $sp, 0x10
    /* B52AC 800C4AAC 21280000 */  addu       $a1, $zero, $zero
    /* B52B0 800C4AB0 40010224 */  addiu      $v0, $zero, 0x140
    /* B52B4 800C4AB4 1400A2A7 */  sh         $v0, 0x14($sp)
    /* B52B8 800C4AB8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B52BC 800C4ABC 1000A0A7 */  sh         $zero, 0x10($sp)
    /* B52C0 800C4AC0 1200A0A7 */  sh         $zero, 0x12($sp)
    /* B52C4 800C4AC4 A314020C */  jal        func_8008528C
    /* B52C8 800C4AC8 1600A2A7 */   sh        $v0, 0x16($sp)
    /* B52CC 800C4ACC E8FE0426 */  addiu      $a0, $s0, -0x118
    /* B52D0 800C4AD0 ECFC1026 */  addiu      $s0, $s0, -0x314
    /* B52D4 800C4AD4 21280002 */  addu       $a1, $s0, $zero
    /* B52D8 800C4AD8 B800A627 */  addiu      $a2, $sp, 0xB8
    /* B52DC 800C4ADC 1000A727 */  addiu      $a3, $sp, 0x10
    /* B52E0 800C4AE0 06000324 */  addiu      $v1, $zero, 0x6
    /* B52E4 800C4AE4 3A010824 */  addiu      $t0, $zero, 0x13A
    /* B52E8 800C4AE8 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B52EC 800C4AEC BE00A2A7 */  sh         $v0, 0xBE($sp)
    /* B52F0 800C4AF0 10000224 */  addiu      $v0, $zero, 0x10
    /* B52F4 800C4AF4 1200A2A7 */  sh         $v0, 0x12($sp)
    /* B52F8 800C4AF8 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B52FC 800C4AFC B800A3A7 */  sh         $v1, 0xB8($sp)
    /* B5300 800C4B00 BA00A0A7 */  sh         $zero, 0xBA($sp)
    /* B5304 800C4B04 BC00A8A7 */  sh         $t0, 0xBC($sp)
    /* B5308 800C4B08 1000A3A7 */  sh         $v1, 0x10($sp)
    /* B530C 800C4B0C 1400A8A7 */  sh         $t0, 0x14($sp)
    /* B5310 800C4B10 1FE4030C */  jal        func_800F907C
    /* B5314 800C4B14 1600A2A7 */   sh        $v0, 0x16($sp)
    /* B5318 800C4B18 0C001724 */  addiu      $s7, $zero, 0xC
    /* B531C 800C4B1C 1280033C */  lui        $v1, %hi(D_8011A272)
    /* B5320 800C4B20 72A26390 */  lbu        $v1, %lo(D_8011A272)($v1)
    /* B5324 800C4B24 D4001E24 */  addiu      $fp, $zero, 0xD4
    /* B5328 800C4B28 0300622C */  sltiu      $v0, $v1, 0x3
    /* B532C 800C4B2C 02004014 */  bnez       $v0, .L800C4B38
    /* B5330 800C4B30 04006424 */   addiu     $a0, $v1, 0x4
    /* B5334 800C4B34 05006424 */  addiu      $a0, $v1, 0x5
  .L800C4B38:
    /* B5338 800C4B38 0400622C */  sltiu      $v0, $v1, 0x4
    /* B533C 800C4B3C 02004014 */  bnez       $v0, .L800C4B48
    /* B5340 800C4B40 0500622C */   sltiu     $v0, $v1, 0x5
    /* B5344 800C4B44 01008424 */  addiu      $a0, $a0, 0x1
  .L800C4B48:
    /* B5348 800C4B48 02004014 */  bnez       $v0, .L800C4B54
    /* B534C 800C4B4C 00000000 */   nop
    /* B5350 800C4B50 02008424 */  addiu      $a0, $a0, 0x2
  .L800C4B54:
    /* B5354 800C4B54 1680023C */  lui        $v0, %hi(D_8015910C)
    /* B5358 800C4B58 0C91428C */  lw         $v0, %lo(D_8015910C)($v0)
    /* B535C 800C4B5C 1680053C */  lui        $a1, %hi(D_80159110)
    /* B5360 800C4B60 1091A58C */  lw         $a1, %lo(D_80159110)($a1)
    /* B5364 800C4B64 21184000 */  addu       $v1, $v0, $zero
    /* B5368 800C4B68 2A106500 */  slt        $v0, $v1, $a1
    /* B536C 800C4B6C 03004010 */  beqz       $v0, .L800C4B7C
    /* B5370 800C4B70 18006400 */   mult      $v1, $a0
    /* B5374 800C4B74 2118A000 */  addu       $v1, $a1, $zero
    /* B5378 800C4B78 18006400 */  mult       $v1, $a0
  .L800C4B7C:
    /* B537C 800C4B7C 12100000 */  mflo       $v0
    /* B5380 800C4B80 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* B5384 800C4B84 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* B5388 800C4B88 18004300 */  mult       $v0, $v1
    /* B538C 800C4B8C 21980000 */  addu       $s3, $zero, $zero
    /* B5390 800C4B90 01001024 */  addiu      $s0, $zero, 0x1
    /* B5394 800C4B94 5555043C */  lui        $a0, (0x55555556 >> 16)
    /* B5398 800C4B98 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
    /* B539C 800C4B9C C3170200 */  sra        $v0, $v0, 31
    /* B53A0 800C4BA0 10480000 */  mfhi       $t1
    /* B53A4 800C4BA4 43190900 */  sra        $v1, $t1, 5
    /* B53A8 800C4BA8 23906200 */  subu       $s2, $v1, $v0
    /* B53AC 800C4BAC D40B92AF */  sw         $s2, %gp_rel(D_801590AC)($gp)
    /* B53B0 800C4BB0 18001002 */  mult       $s0, $s0
  .L800C4BB4:
    /* B53B4 800C4BB4 12100000 */  mflo       $v0
    /* B53B8 800C4BB8 00000000 */  nop
    /* B53BC 800C4BBC 00000000 */  nop
    /* B53C0 800C4BC0 18004400 */  mult       $v0, $a0
    /* B53C4 800C4BC4 C3170200 */  sra        $v0, $v0, 31
    /* B53C8 800C4BC8 10480000 */  mfhi       $t1
    /* B53CC 800C4BCC 23102201 */  subu       $v0, $t1, $v0
    /* B53D0 800C4BD0 2A104202 */  slt        $v0, $s2, $v0
    /* B53D4 800C4BD4 02004014 */  bnez       $v0, .L800C4BE0
    /* B53D8 800C4BD8 00000000 */   nop
    /* B53DC 800C4BDC FFFF1326 */  addiu      $s3, $s0, -0x1
  .L800C4BE0:
    /* B53E0 800C4BE0 01001026 */  addiu      $s0, $s0, 0x1
    /* B53E4 800C4BE4 1900022A */  slti       $v0, $s0, 0x19
    /* B53E8 800C4BE8 F2FF4014 */  bnez       $v0, .L800C4BB4
    /* B53EC 800C4BEC 18001002 */   mult      $s0, $s0
    /* B53F0 800C4BF0 1800622A */  slti       $v0, $s3, 0x18
    /* B53F4 800C4BF4 02004014 */  bnez       $v0, .L800C4C00
    /* B53F8 800C4BF8 00000000 */   nop
    /* B53FC 800C4BFC 17001324 */  addiu      $s3, $zero, 0x17
  .L800C4C00:
    /* B5400 800C4C00 1280153C */  lui        $s5, %hi(D_8012110C)
    /* B5404 800C4C04 0C11B526 */  addiu      $s5, $s5, %lo(D_8012110C)
    /* B5408 800C4C08 0000A28E */  lw         $v0, 0x0($s5)
    /* B540C 800C4C0C D80B93AF */  sw         $s3, %gp_rel(D_801590B0)($gp)
    /* B5410 800C4C10 0100542C */  sltiu      $s4, $v0, 0x1
    /* B5414 800C4C14 28008012 */  beqz       $s4, .L800C4CB8
    /* B5418 800C4C18 00000000 */   nop
    /* B541C 800C4C1C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5420 800C4C20 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5424 800C4C24 CB1A030C */  jal        func_800C6B2C
    /* B5428 800C4C28 00000000 */   nop
    /* B542C 800C4C2C 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B5430 800C4C30 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B5434 800C4C34 00000000 */  nop
    /* B5438 800C4C38 7006448C */  lw         $a0, 0x670($v0)
    /* B543C 800C4C3C A63A030C */  jal        func_800CEA98
    /* B5440 800C4C40 00000000 */   nop
    /* B5444 800C4C44 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5448 800C4C48 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B544C 800C4C4C 9987030C */  jal        func_800E1E64
    /* B5450 800C4C50 21284000 */   addu      $a1, $v0, $zero
    /* B5454 800C4C54 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5458 800C4C58 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B545C 800C4C5C F71A030C */  jal        func_800C6BDC
    /* B5460 800C4C60 00000000 */   nop
    /* B5464 800C4C64 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5468 800C4C68 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B546C 800C4C6C 9C1B030C */  jal        func_800C6E70
    /* B5470 800C4C70 21284002 */   addu      $a1, $s2, $zero
    /* B5474 800C4C74 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5478 800C4C78 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B547C 800C4C7C 1680053C */  lui        $a1, %hi(D_80159024)
    /* B5480 800C4C80 2490A524 */  addiu      $a1, $a1, %lo(D_80159024)
    /* B5484 800C4C84 9987030C */  jal        func_800E1E64
    /* B5488 800C4C88 00000000 */   nop
    /* B548C 800C4C8C 1000A427 */  addiu      $a0, $sp, 0x10
    /* B5490 800C4C90 1280103C */  lui        $s0, %hi(D_80121340)
    /* B5494 800C4C94 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B5498 800C4C98 21280002 */  addu       $a1, $s0, $zero
    /* B549C 800C4C9C 7FE6020C */  jal        func_800B99FC
    /* B54A0 800C4CA0 21302002 */   addu      $a2, $s1, $zero
    /* B54A4 800C4CA4 21200002 */  addu       $a0, $s0, $zero
    /* B54A8 800C4CA8 1000A527 */  addiu      $a1, $sp, 0x10
    /* B54AC 800C4CAC DC0F040C */  jal        func_80103F70
    /* B54B0 800C4CB0 10000624 */   addiu     $a2, $zero, 0x10
    /* B54B4 800C4CB4 0000A2AE */  sw         $v0, 0x0($s5)
  .L800C4CB8:
    /* B54B8 800C4CB8 21883702 */  addu       $s1, $s1, $s7
    /* B54BC 800C4CBC 14008012 */  beqz       $s4, .L800C4D10
    /* B54C0 800C4CC0 21883702 */   addu      $s1, $s1, $s7
    /* B54C4 800C4CC4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B54C8 800C4CC8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B54CC 800C4CCC CB1A030C */  jal        func_800C6B2C
    /* B54D0 800C4CD0 00000000 */   nop
    /* B54D4 800C4CD4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B54D8 800C4CD8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B54DC 800C4CDC 731B030C */  jal        func_800C6DCC
    /* B54E0 800C4CE0 9D010524 */   addiu     $a1, $zero, 0x19D
    /* B54E4 800C4CE4 1000A427 */  addiu      $a0, $sp, 0x10
    /* B54E8 800C4CE8 1280103C */  lui        $s0, %hi(D_80121340)
    /* B54EC 800C4CEC 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B54F0 800C4CF0 21280002 */  addu       $a1, $s0, $zero
    /* B54F4 800C4CF4 7FE6020C */  jal        func_800B99FC
    /* B54F8 800C4CF8 21302002 */   addu      $a2, $s1, $zero
    /* B54FC 800C4CFC 0000A48E */  lw         $a0, 0x0($s5)
    /* B5500 800C4D00 21280002 */  addu       $a1, $s0, $zero
    /* B5504 800C4D04 1000A627 */  addiu      $a2, $sp, 0x10
    /* B5508 800C4D08 5511040C */  jal        func_80104554
    /* B550C 800C4D0C 10000724 */   addiu     $a3, $zero, 0x10
  .L800C4D10:
    /* B5510 800C4D10 14008012 */  beqz       $s4, .L800C4D64
    /* B5514 800C4D14 21883702 */   addu      $s1, $s1, $s7
    /* B5518 800C4D18 1280043C */  lui        $a0, %hi(D_80121340)
    /* B551C 800C4D1C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5520 800C4D20 CB1A030C */  jal        func_800C6B2C
    /* B5524 800C4D24 00000000 */   nop
    /* B5528 800C4D28 1280043C */  lui        $a0, %hi(D_80121340)
    /* B552C 800C4D2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5530 800C4D30 731B030C */  jal        func_800C6DCC
    /* B5534 800C4D34 9E010524 */   addiu     $a1, $zero, 0x19E
    /* B5538 800C4D38 1000A427 */  addiu      $a0, $sp, 0x10
    /* B553C 800C4D3C 1280103C */  lui        $s0, %hi(D_80121340)
    /* B5540 800C4D40 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B5544 800C4D44 21280002 */  addu       $a1, $s0, $zero
    /* B5548 800C4D48 7FE6020C */  jal        func_800B99FC
    /* B554C 800C4D4C 21302002 */   addu      $a2, $s1, $zero
    /* B5550 800C4D50 0000A48E */  lw         $a0, 0x0($s5)
    /* B5554 800C4D54 21280002 */  addu       $a1, $s0, $zero
    /* B5558 800C4D58 1000A627 */  addiu      $a2, $sp, 0x10
    /* B555C 800C4D5C 5511040C */  jal        func_80104554
    /* B5560 800C4D60 10000724 */   addiu     $a3, $zero, 0x10
  .L800C4D64:
    /* B5564 800C4D64 06002226 */  addiu      $v0, $s1, 0x6
    /* B5568 800C4D68 21885700 */  addu       $s1, $v0, $s7
    /* B556C 800C4D6C 04003126 */  addiu      $s1, $s1, 0x4
    /* B5570 800C4D70 2310D103 */  subu       $v0, $fp, $s1
    /* B5574 800C4D74 1280013C */  lui        $at, %hi(D_801210D8)
    /* B5578 800C4D78 D81037AC */  sw         $s7, %lo(D_801210D8)($at)
    /* B557C 800C4D7C 1280013C */  lui        $at, %hi(D_801210D0)
    /* B5580 800C4D80 D01031AC */  sw         $s1, %lo(D_801210D0)($at)
    /* B5584 800C4D84 1280013C */  lui        $at, %hi(D_801210D4)
    /* B5588 800C4D88 D41022AC */  sw         $v0, %lo(D_801210D4)($at)
    /* B558C 800C4D8C 52008012 */  beqz       $s4, .L800C4ED8
    /* B5590 800C4D90 0100053C */   lui       $a1, (0x11CF2 >> 16)
    /* B5594 800C4D94 40101600 */  sll        $v0, $s6, 1
    /* B5598 800C4D98 21105600 */  addu       $v0, $v0, $s6
    /* B559C 800C4D9C 80100200 */  sll        $v0, $v0, 2
    /* B55A0 800C4DA0 23105600 */  subu       $v0, $v0, $s6
    /* B55A4 800C4DA4 00110200 */  sll        $v0, $v0, 4
    /* B55A8 800C4DA8 23105600 */  subu       $v0, $v0, $s6
    /* B55AC 800C4DAC C0100200 */  sll        $v0, $v0, 3
    /* B55B0 800C4DB0 1180013C */  lui        $at, %hi(D_80117698)
    /* B55B4 800C4DB4 21082200 */  addu       $at, $at, $v0
    /* B55B8 800C4DB8 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* B55BC 800C4DBC 00000000 */  nop
    /* B55C0 800C4DC0 40100300 */  sll        $v0, $v1, 1
    /* B55C4 800C4DC4 21104300 */  addu       $v0, $v0, $v1
    /* B55C8 800C4DC8 00110200 */  sll        $v0, $v0, 4
    /* B55CC 800C4DCC 1180013C */  lui        $at, %hi(D_80116AD4)
    /* B55D0 800C4DD0 21082200 */  addu       $at, $at, $v0
    /* B55D4 800C4DD4 D46A2290 */  lbu        $v0, %lo(D_80116AD4)($at)
    /* B55D8 800C4DD8 1680043C */  lui        $a0, %hi(D_80158840)
    /* B55DC 800C4DDC 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* B55E0 800C4DE0 03004010 */  beqz       $v0, .L800C4DF0
    /* B55E4 800C4DE4 F21CA534 */   ori       $a1, $a1, (0x11CF2 & 0xFFFF)
    /* B55E8 800C4DE8 0100053C */  lui        $a1, (0x11EFC >> 16)
    /* B55EC 800C4DEC FC1EA534 */  ori        $a1, $a1, (0x11EFC & 0xFFFF)
  .L800C4DF0:
    /* B55F0 800C4DF0 FCA0020C */  jal        func_800A83F0
    /* B55F4 800C4DF4 21800000 */   addu      $s0, $zero, $zero
    /* B55F8 800C4DF8 2120C002 */  addu       $a0, $s6, $zero
    /* B55FC 800C4DFC F853020C */  jal        func_80094FE0
    /* B5600 800C4E00 21904000 */   addu      $s2, $v0, $zero
    /* B5604 800C4E04 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* B5608 800C4E08 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* B560C 800C4E0C A587030C */  jal        func_800E1E94
    /* B5610 800C4E10 21284000 */   addu      $a1, $v0, $zero
    /* B5614 800C4E14 30006006 */  bltz       $s3, .L800C4ED8
    /* B5618 800C4E18 00000000 */   nop
    /* B561C 800C4E1C 1280113C */  lui        $s1, %hi(D_80121340)
    /* B5620 800C4E20 40133126 */  addiu      $s1, $s1, %lo(D_80121340)
  .L800C4E24:
    /* B5624 800C4E24 13004012 */  beqz       $s2, .L800C4E74
    /* B5628 800C4E28 00000000 */   nop
    /* B562C 800C4E2C 0B001316 */  bne        $s0, $s3, .L800C4E5C
    /* B5630 800C4E30 00000000 */   nop
    /* B5634 800C4E34 0180053C */  lui        $a1, %hi(D_800124F8)
    /* B5638 800C4E38 F824A524 */  addiu      $a1, $a1, %lo(D_800124F8)
    /* B563C 800C4E3C 0000A28C */  lw         $v0, 0x0($a1)
    /* B5640 800C4E40 0400A38C */  lw         $v1, 0x4($a1)
    /* B5644 800C4E44 0800A480 */  lb         $a0, 0x8($a1)
    /* B5648 800C4E48 1800A2AF */  sw         $v0, 0x18($sp)
    /* B564C 800C4E4C 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* B5650 800C4E50 2000A4A3 */  sb         $a0, 0x20($sp)
    /* B5654 800C4E54 A4130308 */  j          .L800C4E90
    /* B5658 800C4E58 1800A427 */   addiu     $a0, $sp, 0x18
  .L800C4E5C:
    /* B565C 800C4E5C 980B828F */  lw         $v0, %gp_rel(D_80159070)($gp)
    /* B5660 800C4E60 9C0B8387 */  lh         $v1, %gp_rel(D_80159074)($gp)
    /* B5664 800C4E64 1800A2AF */  sw         $v0, 0x18($sp)
    /* B5668 800C4E68 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* B566C 800C4E6C A4130308 */  j          .L800C4E90
    /* B5670 800C4E70 1800A427 */   addiu     $a0, $sp, 0x18
  .L800C4E74:
    /* B5674 800C4E74 58A1020C */  jal        func_800A8560
    /* B5678 800C4E78 00000000 */   nop
    /* B567C 800C4E7C 1280053C */  lui        $a1, %hi(D_80121340)
    /* B5680 800C4E80 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B5684 800C4E84 A587030C */  jal        func_800E1E94
    /* B5688 800C4E88 1800A427 */   addiu     $a0, $sp, 0x18
    /* B568C 800C4E8C 1800A427 */  addiu      $a0, $sp, 0x18
  .L800C4E90:
    /* B5690 800C4E90 33AC020C */  jal        func_800AB0CC
    /* B5694 800C4E94 21282002 */   addu      $a1, $s1, $zero
    /* B5698 800C4E98 2A101302 */  slt        $v0, $s0, $s3
    /* B569C 800C4E9C 0A004014 */  bnez       $v0, .L800C4EC8
    /* B56A0 800C4EA0 1000A427 */   addiu     $a0, $sp, 0x10
    /* B56A4 800C4EA4 21282002 */  addu       $a1, $s1, $zero
    /* B56A8 800C4EA8 7FE6020C */  jal        func_800B99FC
    /* B56AC 800C4EAC 78000624 */   addiu     $a2, $zero, 0x78
    /* B56B0 800C4EB0 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B56B4 800C4EB4 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B56B8 800C4EB8 21282002 */  addu       $a1, $s1, $zero
    /* B56BC 800C4EBC 1000A627 */  addiu      $a2, $sp, 0x10
    /* B56C0 800C4EC0 5511040C */  jal        func_80104554
    /* B56C4 800C4EC4 10000724 */   addiu     $a3, $zero, 0x10
  .L800C4EC8:
    /* B56C8 800C4EC8 01001026 */  addiu      $s0, $s0, 0x1
    /* B56CC 800C4ECC 2A107002 */  slt        $v0, $s3, $s0
    /* B56D0 800C4ED0 D4FF4010 */  beqz       $v0, .L800C4E24
    /* B56D4 800C4ED4 00000000 */   nop
  .L800C4ED8:
    /* B56D8 800C4ED8 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B56DC 800C4EDC 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B56E0 800C4EE0 7D11040C */  jal        func_801045F4
    /* B56E4 800C4EE4 00000000 */   nop
    /* B56E8 800C4EE8 E400BF8F */  lw         $ra, 0xE4($sp)
    /* B56EC 800C4EEC E000BE8F */  lw         $fp, 0xE0($sp)
    /* B56F0 800C4EF0 DC00B78F */  lw         $s7, 0xDC($sp)
    /* B56F4 800C4EF4 D800B68F */  lw         $s6, 0xD8($sp)
    /* B56F8 800C4EF8 D400B58F */  lw         $s5, 0xD4($sp)
    /* B56FC 800C4EFC D000B48F */  lw         $s4, 0xD0($sp)
    /* B5700 800C4F00 CC00B38F */  lw         $s3, 0xCC($sp)
    /* B5704 800C4F04 C800B28F */  lw         $s2, 0xC8($sp)
    /* B5708 800C4F08 C400B18F */  lw         $s1, 0xC4($sp)
    /* B570C 800C4F0C C000B08F */  lw         $s0, 0xC0($sp)
    /* B5710 800C4F10 E800BD27 */  addiu      $sp, $sp, 0xE8
    /* B5714 800C4F14 0800E003 */  jr         $ra
    /* B5718 800C4F18 00000000 */   nop
endlabel func_800C4A48
