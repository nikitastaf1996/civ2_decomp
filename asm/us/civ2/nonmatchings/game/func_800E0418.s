.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0418, 0x244

glabel func_800E0418
    /* D0C18 800E0418 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* D0C1C 800E041C 1000B0AF */  sw         $s0, 0x10($sp)
    /* D0C20 800E0420 1400B1AF */  sw         $s1, 0x14($sp)
    /* D0C24 800E0424 1800B2AF */  sw         $s2, 0x18($sp)
    /* D0C28 800E0428 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D0C2C 800E042C 2000B4AF */  sw         $s4, 0x20($sp)
    /* D0C30 800E0430 2400B6AF */  sw         $s6, 0x24($sp)
    /* D0C34 800E0434 2800B7AF */  sw         $s7, 0x28($sp)
    /* D0C38 800E0438 2198A000 */  addu       $s3, $a1, $zero
    /* D0C3C 800E043C 21A0E003 */  addu       $s4, $ra, $zero
    /* D0C40 800E0440 0E80103C */  lui        $s0, %hi(D_800E0268)
    /* D0C44 800E0444 6802108E */  lw         $s0, %lo(D_800E0268)($s0)
    /* D0C48 800E0448 00000000 */  nop
    /* D0C4C 800E044C 00800134 */  ori        $at, $zero, 0x8000
    /* D0C50 800E0450 21880102 */  addu       $s1, $s0, $at
    /* D0C54 800E0454 21900000 */  addu       $s2, $zero, $zero
    /* D0C58 800E0458 9B80030C */  jal        func_800E026C
    /* D0C5C 800E045C 21B00000 */   addu      $s6, $zero, $zero
    /* D0C60 800E0460 21B80000 */  addu       $s7, $zero, $zero
    /* D0C64 800E0464 BD80030C */  jal        func_800E02F4
    /* D0C68 800E0468 42100600 */   srl       $v0, $a2, 1
    /* D0C6C 800E046C FF000D24 */  addiu      $t5, $zero, 0xFF
    /* D0C70 800E0470 21708600 */  addu       $t6, $a0, $a2
    /* D0C74 800E0474 21400000 */  addu       $t0, $zero, $zero
    /* D0C78 800E0478 21488000 */  addu       $t1, $a0, $zero
  .L800E047C:
    /* D0C7C 800E047C 00002281 */  lb         $v0, 0x0($t1)
    /* D0C80 800E0480 01002381 */  lb         $v1, 0x1($t1)
    /* D0C84 800E0484 00000000 */  nop
    /* D0C88 800E0488 1D004314 */  bne        $v0, $v1, .L800E0500
    /* D0C8C 800E048C 21500900 */   addu      $t2, $zero, $t1
    /* D0C90 800E0490 21580000 */  addu       $t3, $zero, $zero
  .L800E0494:
    /* D0C94 800E0494 00004381 */  lb         $v1, 0x0($t2)
    /* D0C98 800E0498 01004A25 */  addiu      $t2, $t2, 0x1
    /* D0C9C 800E049C 06004314 */  bne        $v0, $v1, .L800E04B8
    /* D0CA0 800E04A0 00000000 */   nop
    /* D0CA4 800E04A4 01006B25 */  addiu      $t3, $t3, 0x1
    /* D0CA8 800E04A8 03004E11 */  beq        $t2, $t6, .L800E04B8
    /* D0CAC 800E04AC 00000000 */   nop
    /* D0CB0 800E04B0 F8FF6D15 */  bne        $t3, $t5, .L800E0494
    /* D0CB4 800E04B4 00000000 */   nop
  .L800E04B8:
    /* D0CB8 800E04B8 0400632D */  sltiu      $v1, $t3, 0x4
    /* D0CBC 800E04BC 0F006014 */  bnez       $v1, .L800E04FC
    /* D0CC0 800E04C0 00000000 */   nop
    /* D0CC4 800E04C4 A380030C */  jal        func_800E028C
    /* D0CC8 800E04C8 01000224 */   addiu     $v0, $zero, 0x1
    /* D0CCC 800E04CC AF80030C */  jal        func_800E02BC
    /* D0CD0 800E04D0 21100000 */   addu      $v0, $zero, $zero
    /* D0CD4 800E04D4 AF80030C */  jal        func_800E02BC
    /* D0CD8 800E04D8 21106001 */   addu      $v0, $t3, $zero
    /* D0CDC 800E04DC 00002281 */  lb         $v0, 0x0($t1)
    /* D0CE0 800E04E0 AF80030C */  jal        func_800E02BC
    /* D0CE4 800E04E4 00000000 */   nop
    /* D0CE8 800E04E8 21400B01 */  addu       $t0, $t0, $t3
    /* D0CEC 800E04EC E3FF0615 */  bne        $t0, $a2, .L800E047C
    /* D0CF0 800E04F0 21482B01 */   addu      $t1, $t1, $t3
    /* D0CF4 800E04F4 87810308 */  j          .L800E061C
    /* D0CF8 800E04F8 00000000 */   nop
  .L800E04FC:
    /* D0CFC 800E04FC 01002381 */  lb         $v1, 0x1($t1)
  .L800E0500:
    /* D0D00 800E0500 40110200 */  sll        $v0, $v0, 5
    /* D0D04 800E0504 1F006330 */  andi       $v1, $v1, 0x1F
    /* D0D08 800E0508 25104300 */  or         $v0, $v0, $v1
    /* D0D0C 800E050C FF034230 */  andi       $v0, $v0, 0x3FF
    /* D0D10 800E0510 40100200 */  sll        $v0, $v0, 1
    /* D0D14 800E0514 21105100 */  addu       $v0, $v0, $s1
    /* D0D18 800E0518 00004294 */  lhu        $v0, 0x0($v0)
    /* D0D1C 800E051C 00000000 */  nop
    /* D0D20 800E0520 C0100200 */  sll        $v0, $v0, 3
    /* D0D24 800E0524 18004010 */  beqz       $v0, .L800E0588
    /* D0D28 800E0528 21385000 */   addu      $a3, $v0, $s0
  .L800E052C:
    /* D0D2C 800E052C 0000EA8C */  lw         $t2, 0x0($a3)
    /* D0D30 800E0530 21582001 */  addu       $t3, $t1, $zero
    /* D0D34 800E0534 21600000 */  addu       $t4, $zero, $zero
    /* D0D38 800E0538 00006281 */  lb         $v0, 0x0($t3)
  .L800E053C:
    /* D0D3C 800E053C 00004381 */  lb         $v1, 0x0($t2)
    /* D0D40 800E0540 00000000 */  nop
    /* D0D44 800E0544 08004314 */  bne        $v0, $v1, .L800E0568
    /* D0D48 800E0548 01006B25 */   addiu     $t3, $t3, 0x1
    /* D0D4C 800E054C 01008C25 */  addiu      $t4, $t4, 0x1
    /* D0D50 800E0550 27008D11 */  beq        $t4, $t5, .L800E05F0
    /* D0D54 800E0554 01004A25 */   addiu     $t2, $t2, 0x1
    /* D0D58 800E0558 03004911 */  beq        $t2, $t1, .L800E0568
    /* D0D5C 800E055C 00000000 */   nop
    /* D0D60 800E0560 F6FF6E15 */  bne        $t3, $t6, .L800E053C
    /* D0D64 800E0564 00006281 */   lb        $v0, 0x0($t3)
  .L800E0568:
    /* D0D68 800E0568 0300822D */  sltiu      $v0, $t4, 0x3
    /* D0D6C 800E056C 20004010 */  beqz       $v0, .L800E05F0
    /* D0D70 800E0570 00000000 */   nop
    /* D0D74 800E0574 0600E284 */  lh         $v0, 0x6($a3)
    /* D0D78 800E0578 00000000 */  nop
    /* D0D7C 800E057C C0100200 */  sll        $v0, $v0, 3
    /* D0D80 800E0580 EAFF4014 */  bnez       $v0, .L800E052C
    /* D0D84 800E0584 21385000 */   addu      $a3, $v0, $s0
  .L800E0588:
    /* D0D88 800E0588 A380030C */  jal        func_800E028C
    /* D0D8C 800E058C 21100000 */   addu      $v0, $zero, $zero
    /* D0D90 800E0590 00002281 */  lb         $v0, 0x0($t1)
    /* D0D94 800E0594 AF80030C */  jal        func_800E02BC
    /* D0D98 800E0598 00000000 */   nop
    /* D0D9C 800E059C 00002281 */  lb         $v0, 0x0($t1)
    /* D0DA0 800E05A0 01002381 */  lb         $v1, 0x1($t1)
    /* D0DA4 800E05A4 40110200 */  sll        $v0, $v0, 5
    /* D0DA8 800E05A8 1F006330 */  andi       $v1, $v1, 0x1F
    /* D0DAC 800E05AC 25104300 */  or         $v0, $v0, $v1
    /* D0DB0 800E05B0 FF034230 */  andi       $v0, $v0, 0x3FF
    /* D0DB4 800E05B4 40100200 */  sll        $v0, $v0, 1
    /* D0DB8 800E05B8 21105100 */  addu       $v0, $v0, $s1
    /* D0DBC 800E05BC 00004F84 */  lh         $t7, 0x0($v0)
    /* D0DC0 800E05C0 C0181200 */  sll        $v1, $s2, 3
    /* D0DC4 800E05C4 21187000 */  addu       $v1, $v1, $s0
    /* D0DC8 800E05C8 000069AC */  sw         $t1, 0x0($v1)
    /* D0DCC 800E05CC 06006FA4 */  sh         $t7, 0x6($v1)
    /* D0DD0 800E05D0 000052A4 */  sh         $s2, 0x0($v0)
    /* D0DD4 800E05D4 01005226 */  addiu      $s2, $s2, 0x1
    /* D0DD8 800E05D8 01000825 */  addiu      $t0, $t0, 0x1
    /* D0DDC 800E05DC 2B100601 */  sltu       $v0, $t0, $a2
    /* D0DE0 800E05E0 A6FF4014 */  bnez       $v0, .L800E047C
    /* D0DE4 800E05E4 01002925 */   addiu     $t1, $t1, 0x1
    /* D0DE8 800E05E8 87810308 */  j          .L800E061C
    /* D0DEC 800E05EC 00000000 */   nop
  .L800E05F0:
    /* D0DF0 800E05F0 A380030C */  jal        func_800E028C
    /* D0DF4 800E05F4 01000224 */   addiu     $v0, $zero, 0x1
    /* D0DF8 800E05F8 AF80030C */  jal        func_800E02BC
    /* D0DFC 800E05FC 21108001 */   addu      $v0, $t4, $zero
    /* D0E00 800E0600 0000EA8C */  lw         $t2, 0x0($a3)
    /* D0E04 800E0604 BD80030C */  jal        func_800E02F4
    /* D0E08 800E0608 23102A01 */   subu      $v0, $t1, $t2
    /* D0E0C 800E060C 21400C01 */  addu       $t0, $t0, $t4
    /* D0E10 800E0610 2B100601 */  sltu       $v0, $t0, $a2
    /* D0E14 800E0614 99FF4014 */  bnez       $v0, .L800E047C
    /* D0E18 800E0618 21482C01 */   addu      $t1, $t1, $t4
  .L800E061C:
    /* D0E1C 800E061C 0300E012 */  beqz       $s7, .L800E062C
    /* D0E20 800E0620 00000000 */   nop
    /* D0E24 800E0624 0000B6AC */  sw         $s6, 0x0($a1)
    /* D0E28 800E0628 0400A524 */  addiu      $a1, $a1, 0x4
  .L800E062C:
    /* D0E2C 800E062C 2310B300 */  subu       $v0, $a1, $s3
    /* D0E30 800E0630 21F88002 */  addu       $ra, $s4, $zero
    /* D0E34 800E0634 1000B08F */  lw         $s0, 0x10($sp)
    /* D0E38 800E0638 1400B18F */  lw         $s1, 0x14($sp)
    /* D0E3C 800E063C 1800B28F */  lw         $s2, 0x18($sp)
    /* D0E40 800E0640 1C00B38F */  lw         $s3, 0x1C($sp)
    /* D0E44 800E0644 2000B48F */  lw         $s4, 0x20($sp)
    /* D0E48 800E0648 2400B68F */  lw         $s6, 0x24($sp)
    /* D0E4C 800E064C 2800B78F */  lw         $s7, 0x28($sp)
    /* D0E50 800E0650 3000BD27 */  addiu      $sp, $sp, 0x30
    /* D0E54 800E0654 0800E003 */  jr         $ra
    /* D0E58 800E0658 00000000 */   nop
endlabel func_800E0418
