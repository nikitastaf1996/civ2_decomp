.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B42B4, 0x260

glabel func_800B42B4
    /* A4AB4 800B42B4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A4AB8 800B42B8 3400BFAF */  sw         $ra, 0x34($sp)
    /* A4ABC 800B42BC 3000B2AF */  sw         $s2, 0x30($sp)
    /* A4AC0 800B42C0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* A4AC4 800B42C4 2800B0AF */  sw         $s0, 0x28($sp)
    /* A4AC8 800B42C8 21808000 */  addu       $s0, $a0, $zero
    /* A4ACC 800B42CC 0000028E */  lw         $v0, 0x0($s0)
    /* A4AD0 800B42D0 00000000 */  nop
    /* A4AD4 800B42D4 88004010 */  beqz       $v0, .L800B44F8
    /* A4AD8 800B42D8 00000000 */   nop
    /* A4ADC 800B42DC 2701028A */  lwl        $v0, 0x127($s0)
    /* A4AE0 800B42E0 2401029A */  lwr        $v0, 0x124($s0)
    /* A4AE4 800B42E4 2B01038A */  lwl        $v1, 0x12B($s0)
    /* A4AE8 800B42E8 2801039A */  lwr        $v1, 0x128($s0)
    /* A4AEC 800B42EC 1300A2AB */  swl        $v0, 0x13($sp)
    /* A4AF0 800B42F0 1000A2BB */  swr        $v0, 0x10($sp)
    /* A4AF4 800B42F4 1700A3AB */  swl        $v1, 0x17($sp)
    /* A4AF8 800B42F8 1400A3BB */  swr        $v1, 0x14($sp)
    /* A4AFC 800B42FC 1C00028E */  lw         $v0, 0x1C($s0)
    /* A4B00 800B4300 00000000 */  nop
    /* A4B04 800B4304 7C004010 */  beqz       $v0, .L800B44F8
    /* A4B08 800B4308 00000000 */   nop
    /* A4B0C 800B430C 6001058E */  lw         $a1, 0x160($s0)
    /* A4B10 800B4310 7ACC020C */  jal        func_800B31E8
    /* A4B14 800B4314 21200002 */   addu      $a0, $s0, $zero
    /* A4B18 800B4318 21904000 */  addu       $s2, $v0, $zero
    /* A4B1C 800B431C 2002028E */  lw         $v0, 0x220($s0)
    /* A4B20 800B4320 00000000 */  nop
    /* A4B24 800B4324 07005214 */  bne        $v0, $s2, .L800B4344
    /* A4B28 800B4328 00000000 */   nop
    /* A4B2C 800B432C 9001028E */  lw         $v0, 0x190($s0)
    /* A4B30 800B4330 00000000 */  nop
    /* A4B34 800B4334 34004010 */  beqz       $v0, .L800B4408
    /* A4B38 800B4338 00000000 */   nop
    /* A4B3C 800B433C D5D00208 */  j          .L800B4354
    /* A4B40 800B4340 00000000 */   nop
  .L800B4344:
    /* A4B44 800B4344 2402048E */  lw         $a0, 0x224($s0)
    /* A4B48 800B4348 E511040C */  jal        func_80104794
    /* A4B4C 800B434C 00000000 */   nop
    /* A4B50 800B4350 240200AE */  sw         $zero, 0x224($s0)
  .L800B4354:
    /* A4B54 800B4354 1C00028E */  lw         $v0, 0x1C($s0)
    /* A4B58 800B4358 00000000 */  nop
    /* A4B5C 800B435C 29004018 */  blez       $v0, .L800B4404
    /* A4B60 800B4360 21880000 */   addu      $s1, $zero, $zero
    /* A4B64 800B4364 2A103202 */  slt        $v0, $s1, $s2
  .L800B4368:
    /* A4B68 800B4368 20004014 */  bnez       $v0, .L800B43EC
    /* A4B6C 800B436C 00000000 */   nop
    /* A4B70 800B4370 4400038E */  lw         $v1, 0x44($s0)
    /* A4B74 800B4374 2C00028E */  lw         $v0, 0x2C($s0)
    /* A4B78 800B4378 00000000 */  nop
    /* A4B7C 800B437C 18006200 */  mult       $v1, $v0
    /* A4B80 800B4380 12400000 */  mflo       $t0
    /* A4B84 800B4384 21104802 */  addu       $v0, $s2, $t0
    /* A4B88 800B4388 2A102202 */  slt        $v0, $s1, $v0
    /* A4B8C 800B438C 17004010 */  beqz       $v0, .L800B43EC
    /* A4B90 800B4390 00000000 */   nop
    /* A4B94 800B4394 2002028E */  lw         $v0, 0x220($s0)
    /* A4B98 800B4398 00000000 */  nop
    /* A4B9C 800B439C 07005210 */  beq        $v0, $s2, .L800B43BC
    /* A4BA0 800B43A0 21200002 */   addu      $a0, $s0, $zero
    /* A4BA4 800B43A4 8BCC020C */  jal        func_800B322C
    /* A4BA8 800B43A8 21282002 */   addu      $a1, $s1, $zero
    /* A4BAC 800B43AC 21200002 */  addu       $a0, $s0, $zero
    /* A4BB0 800B43B0 21284000 */  addu       $a1, $v0, $zero
    /* A4BB4 800B43B4 F4D00208 */  j          .L800B43D0
    /* A4BB8 800B43B8 21300000 */   addu      $a2, $zero, $zero
  .L800B43BC:
    /* A4BBC 800B43BC 8BCC020C */  jal        func_800B322C
    /* A4BC0 800B43C0 21282002 */   addu      $a1, $s1, $zero
    /* A4BC4 800B43C4 21200002 */  addu       $a0, $s0, $zero
    /* A4BC8 800B43C8 21284000 */  addu       $a1, $v0, $zero
    /* A4BCC 800B43CC 02000624 */  addiu      $a2, $zero, 0x2
  .L800B43D0:
    /* A4BD0 800B43D0 24D0020C */  jal        func_800B4090
    /* A4BD4 800B43D4 00000000 */   nop
    /* A4BD8 800B43D8 1200A297 */  lhu        $v0, 0x12($sp)
    /* A4BDC 800B43DC 50010396 */  lhu        $v1, 0x150($s0)
    /* A4BE0 800B43E0 00000000 */  nop
    /* A4BE4 800B43E4 21104300 */  addu       $v0, $v0, $v1
    /* A4BE8 800B43E8 1200A2A7 */  sh         $v0, 0x12($sp)
  .L800B43EC:
    /* A4BEC 800B43EC 01003126 */  addiu      $s1, $s1, 0x1
    /* A4BF0 800B43F0 1C00028E */  lw         $v0, 0x1C($s0)
    /* A4BF4 800B43F4 00000000 */  nop
    /* A4BF8 800B43F8 2A102202 */  slt        $v0, $s1, $v0
    /* A4BFC 800B43FC DAFF4014 */  bnez       $v0, .L800B4368
    /* A4C00 800B4400 2A103202 */   slt       $v0, $s1, $s2
  .L800B4404:
    /* A4C04 800B4404 200212AE */  sw         $s2, 0x220($s0)
  .L800B4408:
    /* A4C08 800B4408 2402048E */  lw         $a0, 0x224($s0)
    /* A4C0C 800B440C 7D11040C */  jal        func_801045F4
    /* A4C10 800B4410 21880000 */   addu      $s1, $zero, $zero
    /* A4C14 800B4414 1C00028E */  lw         $v0, 0x1C($s0)
    /* A4C18 800B4418 00000000 */  nop
    /* A4C1C 800B441C 0D004018 */  blez       $v0, .L800B4454
    /* A4C20 800B4420 21200002 */   addu      $a0, $s0, $zero
  .L800B4424:
    /* A4C24 800B4424 8BCC020C */  jal        func_800B322C
    /* A4C28 800B4428 21282002 */   addu      $a1, $s1, $zero
    /* A4C2C 800B442C 6801038E */  lw         $v1, 0x168($s0)
    /* A4C30 800B4430 00000000 */  nop
    /* A4C34 800B4434 07004310 */  beq        $v0, $v1, .L800B4454
    /* A4C38 800B4438 00000000 */   nop
    /* A4C3C 800B443C 01003126 */  addiu      $s1, $s1, 0x1
    /* A4C40 800B4440 1C00028E */  lw         $v0, 0x1C($s0)
    /* A4C44 800B4444 00000000 */  nop
    /* A4C48 800B4448 2A102202 */  slt        $v0, $s1, $v0
    /* A4C4C 800B444C F5FF4014 */  bnez       $v0, .L800B4424
    /* A4C50 800B4450 21200002 */   addu      $a0, $s0, $zero
  .L800B4454:
    /* A4C54 800B4454 6001058E */  lw         $a1, 0x160($s0)
    /* A4C58 800B4458 7ACC020C */  jal        func_800B31E8
    /* A4C5C 800B445C 21200002 */   addu      $a0, $s0, $zero
    /* A4C60 800B4460 23882202 */  subu       $s1, $s1, $v0
    /* A4C64 800B4464 4400028E */  lw         $v0, 0x44($s0)
    /* A4C68 800B4468 00000000 */  nop
    /* A4C6C 800B446C 1A002202 */  div        $zero, $s1, $v0
    /* A4C70 800B4470 02004014 */  bnez       $v0, .L800B447C
    /* A4C74 800B4474 00000000 */   nop
    /* A4C78 800B4478 0D000700 */  break      7
  .L800B447C:
    /* A4C7C 800B447C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A4C80 800B4480 04004114 */  bne        $v0, $at, .L800B4494
    /* A4C84 800B4484 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A4C88 800B4488 02002116 */  bne        $s1, $at, .L800B4494
    /* A4C8C 800B448C 00000000 */   nop
    /* A4C90 800B4490 0D000600 */  break      6
  .L800B4494:
    /* A4C94 800B4494 12100000 */  mflo       $v0
    /* A4C98 800B4498 10280000 */  mfhi       $a1
    /* A4C9C 800B449C 4C01068E */  lw         $a2, 0x14C($s0)
    /* A4CA0 800B44A0 00000000 */  nop
    /* A4CA4 800B44A4 18004600 */  mult       $v0, $a2
    /* A4CA8 800B44A8 4401038E */  lw         $v1, 0x144($s0)
    /* A4CAC 800B44AC 12400000 */  mflo       $t0
    /* A4CB0 800B44B0 21180301 */  addu       $v1, $t0, $v1
    /* A4CB4 800B44B4 5001048E */  lw         $a0, 0x150($s0)
    /* A4CB8 800B44B8 00000000 */  nop
    /* A4CBC 800B44BC 1800A400 */  mult       $a1, $a0
    /* A4CC0 800B44C0 4801028E */  lw         $v0, 0x148($s0)
    /* A4CC4 800B44C4 12400000 */  mflo       $t0
    /* A4CC8 800B44C8 21100201 */  addu       $v0, $t0, $v0
    /* A4CCC 800B44CC 1000A3A7 */  sh         $v1, 0x10($sp)
    /* A4CD0 800B44D0 1200A2A7 */  sh         $v0, 0x12($sp)
    /* A4CD4 800B44D4 21186600 */  addu       $v1, $v1, $a2
    /* A4CD8 800B44D8 1400A3A7 */  sh         $v1, 0x14($sp)
    /* A4CDC 800B44DC 21104400 */  addu       $v0, $v0, $a0
    /* A4CE0 800B44E0 1600A2A7 */  sh         $v0, 0x16($sp)
    /* A4CE4 800B44E4 0000048E */  lw         $a0, 0x0($s0)
    /* A4CE8 800B44E8 5C00068E */  lw         $a2, 0x5C($s0)
    /* A4CEC 800B44EC 6000078E */  lw         $a3, 0x60($s0)
    /* A4CF0 800B44F0 2414020C */  jal        func_80085090
    /* A4CF4 800B44F4 1000A527 */   addiu     $a1, $sp, 0x10
  .L800B44F8:
    /* A4CF8 800B44F8 3400BF8F */  lw         $ra, 0x34($sp)
    /* A4CFC 800B44FC 3000B28F */  lw         $s2, 0x30($sp)
    /* A4D00 800B4500 2C00B18F */  lw         $s1, 0x2C($sp)
    /* A4D04 800B4504 2800B08F */  lw         $s0, 0x28($sp)
    /* A4D08 800B4508 3800BD27 */  addiu      $sp, $sp, 0x38
    /* A4D0C 800B450C 0800E003 */  jr         $ra
    /* A4D10 800B4510 00000000 */   nop
endlabel func_800B42B4
