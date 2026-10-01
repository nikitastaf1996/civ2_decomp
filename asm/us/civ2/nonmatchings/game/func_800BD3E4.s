.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BD3E4, 0x310

glabel func_800BD3E4
    /* ADBE4 800BD3E4 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* ADBE8 800BD3E8 00240400 */  sll        $a0, $a0, 16
    /* ADBEC 800BD3EC 03240400 */  sra        $a0, $a0, 16
    /* ADBF0 800BD3F0 A8000224 */  addiu      $v0, $zero, 0xA8
    /* ADBF4 800BD3F4 4000BFAF */  sw         $ra, 0x40($sp)
    /* ADBF8 800BD3F8 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* ADBFC 800BD3FC 3800B4AF */  sw         $s4, 0x38($sp)
    /* ADC00 800BD400 3400B3AF */  sw         $s3, 0x34($sp)
    /* ADC04 800BD404 3000B2AF */  sw         $s2, 0x30($sp)
    /* ADC08 800BD408 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* ADC0C 800BD40C 0F008210 */  beq        $a0, $v0, .L800BD44C
    /* ADC10 800BD410 2800B0AF */   sw        $s0, 0x28($sp)
    /* ADC14 800BD414 A9008228 */  slti       $v0, $a0, 0xA9
    /* ADC18 800BD418 05004010 */  beqz       $v0, .L800BD430
    /* ADC1C 800BD41C A2000224 */   addiu     $v0, $zero, 0xA2
    /* ADC20 800BD420 23008210 */  beq        $a0, $v0, .L800BD4B0
    /* ADC24 800BD424 00000000 */   nop
    /* ADC28 800BD428 B3F50208 */  j          .L800BD6CC
    /* ADC2C 800BD42C 00000000 */   nop
  .L800BD430:
    /* ADC30 800BD430 D0000224 */  addiu      $v0, $zero, 0xD0
    /* ADC34 800BD434 40008210 */  beq        $a0, $v0, .L800BD538
    /* ADC38 800BD438 D2000224 */   addiu     $v0, $zero, 0xD2
    /* ADC3C 800BD43C 9B008210 */  beq        $a0, $v0, .L800BD6AC
    /* ADC40 800BD440 68000424 */   addiu     $a0, $zero, 0x68
    /* ADC44 800BD444 B3F50208 */  j          .L800BD6CC
    /* ADC48 800BD448 00000000 */   nop
  .L800BD44C:
    /* ADC4C 800BD44C 1280103C */  lui        $s0, %hi(D_80121134)
    /* ADC50 800BD450 34111026 */  addiu      $s0, $s0, %lo(D_80121134)
    /* ADC54 800BD454 00000286 */  lh         $v0, 0x0($s0)
    /* ADC58 800BD458 00000000 */  nop
    /* ADC5C 800BD45C 9B004018 */  blez       $v0, .L800BD6CC
    /* ADC60 800BD460 5E000424 */   addiu     $a0, $zero, 0x5E
    /* ADC64 800BD464 21280000 */  addu       $a1, $zero, $zero
    /* ADC68 800BD468 21300000 */  addu       $a2, $zero, $zero
    /* ADC6C 800BD46C 2B9D020C */  jal        func_800A74AC
    /* ADC70 800BD470 21380000 */   addu      $a3, $zero, $zero
    /* ADC74 800BD474 00000296 */  lhu        $v0, 0x0($s0)
    /* ADC78 800BD478 00000000 */  nop
    /* ADC7C 800BD47C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ADC80 800BD480 000002A6 */  sh         $v0, 0x0($s0)
    /* ADC84 800BD484 00140200 */  sll        $v0, $v0, 16
    /* ADC88 800BD488 1280033C */  lui        $v1, %hi(D_801210C8)
    /* ADC8C 800BD48C C810638C */  lw         $v1, %lo(D_801210C8)($v1)
    /* ADC90 800BD490 03140200 */  sra        $v0, $v0, 16
    /* ADC94 800BD494 2A184300 */  slt        $v1, $v0, $v1
    /* ADC98 800BD498 8C006010 */  beqz       $v1, .L800BD6CC
    /* ADC9C 800BD49C 00000000 */   nop
    /* ADCA0 800BD4A0 1280043C */  lui        $a0, %hi(D_80121110)
    /* ADCA4 800BD4A4 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ADCA8 800BD4A8 46F50208 */  j          .L800BD518
    /* ADCAC 800BD4AC 00000000 */   nop
  .L800BD4B0:
    /* ADCB0 800BD4B0 1280103C */  lui        $s0, %hi(D_80121134)
    /* ADCB4 800BD4B4 34111026 */  addiu      $s0, $s0, %lo(D_80121134)
    /* ADCB8 800BD4B8 1280023C */  lui        $v0, %hi(D_80121136)
    /* ADCBC 800BD4BC 36114284 */  lh         $v0, %lo(D_80121136)($v0)
    /* ADCC0 800BD4C0 00000386 */  lh         $v1, 0x0($s0)
    /* ADCC4 800BD4C4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ADCC8 800BD4C8 2A186200 */  slt        $v1, $v1, $v0
    /* ADCCC 800BD4CC 7F006010 */  beqz       $v1, .L800BD6CC
    /* ADCD0 800BD4D0 5E000424 */   addiu     $a0, $zero, 0x5E
    /* ADCD4 800BD4D4 21280000 */  addu       $a1, $zero, $zero
    /* ADCD8 800BD4D8 21300000 */  addu       $a2, $zero, $zero
    /* ADCDC 800BD4DC 2B9D020C */  jal        func_800A74AC
    /* ADCE0 800BD4E0 21380000 */   addu      $a3, $zero, $zero
    /* ADCE4 800BD4E4 00000296 */  lhu        $v0, 0x0($s0)
    /* ADCE8 800BD4E8 1280033C */  lui        $v1, %hi(D_801210C8)
    /* ADCEC 800BD4EC C810638C */  lw         $v1, %lo(D_801210C8)($v1)
    /* ADCF0 800BD4F0 01004224 */  addiu      $v0, $v0, 0x1
    /* ADCF4 800BD4F4 08006324 */  addiu      $v1, $v1, 0x8
    /* ADCF8 800BD4F8 000002A6 */  sh         $v0, 0x0($s0)
    /* ADCFC 800BD4FC 00140200 */  sll        $v0, $v0, 16
    /* ADD00 800BD500 03140200 */  sra        $v0, $v0, 16
    /* ADD04 800BD504 2A186200 */  slt        $v1, $v1, $v0
    /* ADD08 800BD508 70006010 */  beqz       $v1, .L800BD6CC
    /* ADD0C 800BD50C F8FF4224 */   addiu     $v0, $v0, -0x8
    /* ADD10 800BD510 1280043C */  lui        $a0, %hi(D_80121110)
    /* ADD14 800BD514 1011848C */  lw         $a0, %lo(D_80121110)($a0)
  .L800BD518:
    /* ADD18 800BD518 1280013C */  lui        $at, %hi(D_801210C8)
    /* ADD1C 800BD51C C81022AC */  sw         $v0, %lo(D_801210C8)($at)
    /* ADD20 800BD520 E511040C */  jal        func_80104794
    /* ADD24 800BD524 00000000 */   nop
    /* ADD28 800BD528 1280013C */  lui        $at, %hi(D_80121110)
    /* ADD2C 800BD52C 101120AC */  sw         $zero, %lo(D_80121110)($at)
    /* ADD30 800BD530 B3F50208 */  j          .L800BD6CC
    /* ADD34 800BD534 00000000 */   nop
  .L800BD538:
    /* ADD38 800BD538 68000424 */  addiu      $a0, $zero, 0x68
    /* ADD3C 800BD53C 21280000 */  addu       $a1, $zero, $zero
    /* ADD40 800BD540 21300000 */  addu       $a2, $zero, $zero
    /* ADD44 800BD544 2B9D020C */  jal        func_800A74AC
    /* ADD48 800BD548 21380000 */   addu      $a3, $zero, $zero
    /* ADD4C 800BD54C 21880000 */  addu       $s1, $zero, $zero
    /* ADD50 800BD550 21980000 */  addu       $s3, $zero, $zero
    /* ADD54 800BD554 1280063C */  lui        $a2, %hi(D_801210C4)
    /* ADD58 800BD558 C410C624 */  addiu      $a2, $a2, %lo(D_801210C4)
    /* ADD5C 800BD55C 7000D524 */  addiu      $s5, $a2, 0x70
    /* ADD60 800BD560 4800D024 */  addiu      $s0, $a2, 0x48
    /* ADD64 800BD564 21280000 */  addu       $a1, $zero, $zero
  .L800BD568:
    /* ADD68 800BD568 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ADD6C 800BD56C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ADD70 800BD570 00000000 */  nop
    /* ADD74 800BD574 2A106202 */  slt        $v0, $s3, $v0
    /* ADD78 800BD578 54004010 */  beqz       $v0, .L800BD6CC
    /* ADD7C 800BD57C 00000000 */   nop
    /* ADD80 800BD580 1180013C */  lui        $at, %hi(D_80113ED8)
    /* ADD84 800BD584 21082500 */  addu       $at, $at, $a1
    /* ADD88 800BD588 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* ADD8C 800BD58C 0000C28C */  lw         $v0, 0x0($a2)
    /* ADD90 800BD590 00000000 */  nop
    /* ADD94 800BD594 42006214 */  bne        $v1, $v0, .L800BD6A0
    /* ADD98 800BD598 00000000 */   nop
    /* ADD9C 800BD59C 01003126 */  addiu      $s1, $s1, 0x1
    /* ADDA0 800BD5A0 7000C384 */  lh         $v1, 0x70($a2)
    /* ADDA4 800BD5A4 FFFF2226 */  addiu      $v0, $s1, -0x1
    /* ADDA8 800BD5A8 3D004314 */  bne        $v0, $v1, .L800BD6A0
    /* ADDAC 800BD5AC 21206000 */   addu      $a0, $v1, $zero
    /* ADDB0 800BD5B0 1280053C */  lui        $a1, %hi(D_80120E58)
    /* ADDB4 800BD5B4 580EA58C */  lw         $a1, %lo(D_80120E58)($a1)
    /* ADDB8 800BD5B8 08000224 */  addiu      $v0, $zero, 0x8
    /* ADDBC 800BD5BC 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* ADDC0 800BD5C0 40010224 */  addiu      $v0, $zero, 0x140
    /* ADDC4 800BD5C4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ADDC8 800BD5C8 E8000224 */  addiu      $v0, $zero, 0xE8
    /* ADDCC 800BD5CC 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* ADDD0 800BD5D0 01008230 */  andi       $v0, $a0, 0x1
    /* ADDD4 800BD5D4 03004014 */  bnez       $v0, .L800BD5E4
    /* ADDD8 800BD5D8 1800A0A7 */   sh        $zero, 0x18($sp)
    /* ADDDC 800BD5DC 7AF50208 */  j          .L800BD5E8
    /* ADDE0 800BD5E0 3500B224 */   addiu     $s2, $a1, 0x35
  .L800BD5E4:
    /* ADDE4 800BD5E4 1500B224 */  addiu      $s2, $a1, 0x15
  .L800BD5E8:
    /* ADDE8 800BD5E8 1800A427 */  addiu      $a0, $sp, 0x18
    /* ADDEC 800BD5EC 21284002 */  addu       $a1, $s2, $zero
    /* ADDF0 800BD5F0 401F0724 */  addiu      $a3, $zero, 0x1F40
    /* ADDF4 800BD5F4 0000A286 */  lh         $v0, 0x0($s5)
    /* ADDF8 800BD5F8 94FFA38E */  lw         $v1, -0x6C($s5)
    /* ADDFC 800BD5FC 21880000 */  addu       $s1, $zero, $zero
    /* ADE00 800BD600 1000A0AF */  sw         $zero, 0x10($sp)
    /* ADE04 800BD604 23104300 */  subu       $v0, $v0, $v1
    /* ADE08 800BD608 00110200 */  sll        $v0, $v0, 4
    /* ADE0C 800BD60C 52005424 */  addiu      $s4, $v0, 0x52
    /* ADE10 800BD610 7D1C040C */  jal        func_801071F4
    /* ADE14 800BD614 21308002 */   addu      $a2, $s4, $zero
    /* ADE18 800BD618 B31E040C */  jal        func_80107ACC
    /* ADE1C 800BD61C 00000000 */   nop
    /* ADE20 800BD620 78FEA426 */  addiu      $a0, $s5, -0x188
    /* ADE24 800BD624 21280000 */  addu       $a1, $zero, $zero
    /* ADE28 800BD628 A9E0030C */  jal        func_800F82A4
    /* ADE2C 800BD62C 21300000 */   addu      $a2, $zero, $zero
  .L800BD630:
    /* ADE30 800BD630 0000048E */  lw         $a0, 0x0($s0)
    /* ADE34 800BD634 E511040C */  jal        func_80104794
    /* ADE38 800BD638 01003126 */   addiu     $s1, $s1, 0x1
    /* ADE3C 800BD63C 000000AE */  sw         $zero, 0x0($s0)
    /* ADE40 800BD640 0200222A */  slti       $v0, $s1, 0x2
    /* ADE44 800BD644 FAFF4014 */  bnez       $v0, .L800BD630
    /* ADE48 800BD648 04001026 */   addiu     $s0, $s0, 0x4
    /* ADE4C 800BD64C 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* ADE50 800BD650 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* ADE54 800BD654 21286002 */  addu       $a1, $s3, $zero
    /* ADE58 800BD658 EA5D030C */  jal        func_800D77A8
    /* ADE5C 800BD65C 21300000 */   addu      $a2, $zero, $zero
    /* ADE60 800BD660 1280043C */  lui        $a0, %hi(D_80120FAC)
    /* ADE64 800BD664 AC0F8424 */  addiu      $a0, $a0, %lo(D_80120FAC)
    /* ADE68 800BD668 35000524 */  addiu      $a1, $zero, 0x35
    /* ADE6C 800BD66C 0A000624 */  addiu      $a2, $zero, 0xA
    /* ADE70 800BD670 44E3030C */  jal        func_800F8D10
    /* ADE74 800BD674 C0000724 */   addiu     $a3, $zero, 0xC0
    /* ADE78 800BD678 1000A0AF */  sw         $zero, 0x10($sp)
    /* ADE7C 800BD67C 1800A427 */  addiu      $a0, $sp, 0x18
    /* ADE80 800BD680 21284002 */  addu       $a1, $s2, $zero
    /* ADE84 800BD684 21308002 */  addu       $a2, $s4, $zero
    /* ADE88 800BD688 011D040C */  jal        func_80107404
    /* ADE8C 800BD68C 401F0724 */   addiu     $a3, $zero, 0x1F40
    /* ADE90 800BD690 B31E040C */  jal        func_80107ACC
    /* ADE94 800BD694 00000000 */   nop
    /* ADE98 800BD698 B3F50208 */  j          .L800BD6CC
    /* ADE9C 800BD69C 00000000 */   nop
  .L800BD6A0:
    /* ADEA0 800BD6A0 5800A524 */  addiu      $a1, $a1, 0x58
    /* ADEA4 800BD6A4 5AF50208 */  j          .L800BD568
    /* ADEA8 800BD6A8 01007326 */   addiu     $s3, $s3, 0x1
  .L800BD6AC:
    /* ADEAC 800BD6AC 21280000 */  addu       $a1, $zero, $zero
    /* ADEB0 800BD6B0 21300000 */  addu       $a2, $zero, $zero
    /* ADEB4 800BD6B4 2B9D020C */  jal        func_800A74AC
    /* ADEB8 800BD6B8 21380000 */   addu      $a3, $zero, $zero
    /* ADEBC 800BD6BC 1280043C */  lui        $a0, %hi(D_80120D84)
    /* ADEC0 800BD6C0 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* ADEC4 800BD6C4 29E5020C */  jal        func_800B94A4
    /* ADEC8 800BD6C8 00000000 */   nop
  .L800BD6CC:
    /* ADECC 800BD6CC 4000BF8F */  lw         $ra, 0x40($sp)
    /* ADED0 800BD6D0 3C00B58F */  lw         $s5, 0x3C($sp)
    /* ADED4 800BD6D4 3800B48F */  lw         $s4, 0x38($sp)
    /* ADED8 800BD6D8 3400B38F */  lw         $s3, 0x34($sp)
    /* ADEDC 800BD6DC 3000B28F */  lw         $s2, 0x30($sp)
    /* ADEE0 800BD6E0 2C00B18F */  lw         $s1, 0x2C($sp)
    /* ADEE4 800BD6E4 2800B08F */  lw         $s0, 0x28($sp)
    /* ADEE8 800BD6E8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* ADEEC 800BD6EC 0800E003 */  jr         $ra
    /* ADEF0 800BD6F0 00000000 */   nop
endlabel func_800BD3E4
