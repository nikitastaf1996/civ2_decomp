.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A4A4C, 0xD8

glabel func_800A4A4C
    /* 9524C 800A4A4C 0300801C */  bgtz       $a0, .L800A4A5C
    /* 95250 800A4A50 08000624 */   addiu     $a2, $zero, 0x8
    /* 95254 800A4A54 98920208 */  j          .L800A4A60
    /* 95258 800A4A58 C3270400 */   sra       $a0, $a0, 31
  .L800A4A5C:
    /* 9525C 800A4A5C 01000424 */  addiu      $a0, $zero, 0x1
  .L800A4A60:
    /* 95260 800A4A60 0200A018 */  blez       $a1, .L800A4A6C
    /* 95264 800A4A64 C32F0500 */   sra       $a1, $a1, 31
    /* 95268 800A4A68 01000524 */  addiu      $a1, $zero, 0x1
  .L800A4A6C:
    /* 9526C 800A4A6C 21180000 */  addu       $v1, $zero, $zero
    /* 95270 800A4A70 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 95274 800A4A74 01000724 */  addiu      $a3, $zero, 0x1
  .L800A4A78:
    /* 95278 800A4A78 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 9527C 800A4A7C 21082300 */  addu       $at, $at, $v1
    /* 95280 800A4A80 24AC2280 */  lb         $v0, %lo(D_8011AC24)($at)
    /* 95284 800A4A84 00000000 */  nop
    /* 95288 800A4A88 0B00401C */  bgtz       $v0, .L800A4AB8
    /* 9528C 800A4A8C 00000000 */   nop
    /* 95290 800A4A90 05004104 */  bgez       $v0, .L800A4AA8
    /* 95294 800A4A94 00000000 */   nop
    /* 95298 800A4A98 09008810 */  beq        $a0, $t0, .L800A4AC0
    /* 9529C 800A4A9C 00000000 */   nop
    /* 952A0 800A4AA0 C4920208 */  j          .L800A4B10
    /* 952A4 800A4AA4 01006324 */   addiu     $v1, $v1, 0x1
  .L800A4AA8:
    /* 952A8 800A4AA8 05008010 */  beqz       $a0, .L800A4AC0
    /* 952AC 800A4AAC 00000000 */   nop
    /* 952B0 800A4AB0 C4920208 */  j          .L800A4B10
    /* 952B4 800A4AB4 01006324 */   addiu     $v1, $v1, 0x1
  .L800A4AB8:
    /* 952B8 800A4AB8 14008714 */  bne        $a0, $a3, .L800A4B0C
    /* 952BC 800A4ABC 00000000 */   nop
  .L800A4AC0:
    /* 952C0 800A4AC0 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 952C4 800A4AC4 21082300 */  addu       $at, $at, $v1
    /* 952C8 800A4AC8 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 952CC 800A4ACC 00000000 */  nop
    /* 952D0 800A4AD0 0B00401C */  bgtz       $v0, .L800A4B00
    /* 952D4 800A4AD4 00000000 */   nop
    /* 952D8 800A4AD8 05004104 */  bgez       $v0, .L800A4AF0
    /* 952DC 800A4ADC 00000000 */   nop
    /* 952E0 800A4AE0 0900A810 */  beq        $a1, $t0, .L800A4B08
    /* 952E4 800A4AE4 00000000 */   nop
    /* 952E8 800A4AE8 C4920208 */  j          .L800A4B10
    /* 952EC 800A4AEC 01006324 */   addiu     $v1, $v1, 0x1
  .L800A4AF0:
    /* 952F0 800A4AF0 0600A014 */  bnez       $a1, .L800A4B0C
    /* 952F4 800A4AF4 00000000 */   nop
    /* 952F8 800A4AF8 C3920208 */  j          .L800A4B0C
    /* 952FC 800A4AFC 21306000 */   addu      $a2, $v1, $zero
  .L800A4B00:
    /* 95300 800A4B00 0200A714 */  bne        $a1, $a3, .L800A4B0C
    /* 95304 800A4B04 00000000 */   nop
  .L800A4B08:
    /* 95308 800A4B08 21306000 */  addu       $a2, $v1, $zero
  .L800A4B0C:
    /* 9530C 800A4B0C 01006324 */  addiu      $v1, $v1, 0x1
  .L800A4B10:
    /* 95310 800A4B10 08006228 */  slti       $v0, $v1, 0x8
    /* 95314 800A4B14 D8FF4014 */  bnez       $v0, .L800A4A78
    /* 95318 800A4B18 00000000 */   nop
    /* 9531C 800A4B1C 0800E003 */  jr         $ra
    /* 95320 800A4B20 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800A4A4C
