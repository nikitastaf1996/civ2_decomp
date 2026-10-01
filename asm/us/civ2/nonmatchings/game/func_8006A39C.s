.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006A39C, 0x2BC

glabel func_8006A39C
    /* 5AB9C 8006A39C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5ABA0 8006A3A0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5ABA4 8006A3A4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5ABA8 8006A3A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5ABAC 8006A3AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5ABB0 8006A3B0 21888000 */  addu       $s1, $a0, $zero
    /* 5ABB4 8006A3B4 01000224 */  addiu      $v0, $zero, 0x1
    /* 5ABB8 8006A3B8 AC0182AF */  sw         $v0, %gp_rel(D_80158684)($gp)
    /* 5ABBC 8006A3BC 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 5ABC0 8006A3C0 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 5ABC4 8006A3C4 00000000 */  nop
    /* 5ABC8 8006A3C8 07102202 */  srav       $v0, $v0, $s1
    /* 5ABCC 8006A3CC 01004230 */  andi       $v0, $v0, 0x1
    /* 5ABD0 8006A3D0 18004010 */  beqz       $v0, .L8006A434
    /* 5ABD4 8006A3D4 21900000 */   addu      $s2, $zero, $zero
    /* 5ABD8 8006A3D8 57DF010C */  jal        func_80077D5C
    /* 5ABDC 8006A3DC 00000000 */   nop
    /* 5ABE0 8006A3E0 14004010 */  beqz       $v0, .L8006A434
    /* 5ABE4 8006A3E4 40101100 */   sll       $v0, $s1, 1
    /* 5ABE8 8006A3E8 21200000 */  addu       $a0, $zero, $zero
    /* 5ABEC 8006A3EC 21105100 */  addu       $v0, $v0, $s1
    /* 5ABF0 8006A3F0 80100200 */  sll        $v0, $v0, 2
    /* 5ABF4 8006A3F4 23105100 */  subu       $v0, $v0, $s1
    /* 5ABF8 8006A3F8 00110200 */  sll        $v0, $v0, 4
    /* 5ABFC 8006A3FC 23105100 */  subu       $v0, $v0, $s1
    /* 5AC00 8006A400 C0100200 */  sll        $v0, $v0, 3
    /* 5AC04 8006A404 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* 5AC08 8006A408 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* 5AC0C 8006A40C 21184300 */  addu       $v1, $v0, $v1
    /* 5AC10 8006A410 40100400 */  sll        $v0, $a0, 1
  .L8006A414:
    /* 5AC14 8006A414 21104300 */  addu       $v0, $v0, $v1
    /* 5AC18 8006A418 00004284 */  lh         $v0, 0x0($v0)
    /* 5AC1C 8006A41C 00000000 */  nop
    /* 5AC20 8006A420 21904202 */  addu       $s2, $s2, $v0
    /* 5AC24 8006A424 01008424 */  addiu      $a0, $a0, 0x1
    /* 5AC28 8006A428 06008228 */  slti       $v0, $a0, 0x6
    /* 5AC2C 8006A42C F9FF4014 */  bnez       $v0, .L8006A414
    /* 5AC30 8006A430 40100400 */   sll       $v0, $a0, 1
  .L8006A434:
    /* 5AC34 8006A434 00241100 */  sll        $a0, $s1, 16
    /* 5AC38 8006A438 742C030C */  jal        func_800CB1D0
    /* 5AC3C 8006A43C 03240400 */   sra       $a0, $a0, 16
    /* 5AC40 8006A440 1280043C */  lui        $a0, %hi(D_80120D84)
    /* 5AC44 8006A444 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* 5AC48 8006A448 29E5020C */  jal        func_800B94A4
    /* 5AC4C 8006A44C 00000000 */   nop
    /* 5AC50 8006A450 40101100 */  sll        $v0, $s1, 1
    /* 5AC54 8006A454 21105100 */  addu       $v0, $v0, $s1
    /* 5AC58 8006A458 80100200 */  sll        $v0, $v0, 2
    /* 5AC5C 8006A45C 23105100 */  subu       $v0, $v0, $s1
    /* 5AC60 8006A460 00110200 */  sll        $v0, $v0, 4
    /* 5AC64 8006A464 23105100 */  subu       $v0, $v0, $s1
    /* 5AC68 8006A468 C0180200 */  sll        $v1, $v0, 3
    /* 5AC6C 8006A46C 1180013C */  lui        $at, %hi(D_80117694)
    /* 5AC70 8006A470 21082300 */  addu       $at, $at, $v1
    /* 5AC74 8006A474 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 5AC78 8006A478 00000000 */  nop
    /* 5AC7C 8006A47C 31754228 */  slti       $v0, $v0, 0x7531
    /* 5AC80 8006A480 06004014 */  bnez       $v0, .L8006A49C
    /* 5AC84 8006A484 40101100 */   sll       $v0, $s1, 1
    /* 5AC88 8006A488 30750224 */  addiu      $v0, $zero, 0x7530
    /* 5AC8C 8006A48C 1180013C */  lui        $at, %hi(D_80117694)
    /* 5AC90 8006A490 21082300 */  addu       $at, $at, $v1
    /* 5AC94 8006A494 947622AC */  sw         $v0, %lo(D_80117694)($at)
    /* 5AC98 8006A498 40101100 */  sll        $v0, $s1, 1
  .L8006A49C:
    /* 5AC9C 8006A49C 21105100 */  addu       $v0, $v0, $s1
    /* 5ACA0 8006A4A0 80100200 */  sll        $v0, $v0, 2
    /* 5ACA4 8006A4A4 23105100 */  subu       $v0, $v0, $s1
    /* 5ACA8 8006A4A8 00110200 */  sll        $v0, $v0, 4
    /* 5ACAC 8006A4AC 23105100 */  subu       $v0, $v0, $s1
    /* 5ACB0 8006A4B0 C0180200 */  sll        $v1, $v0, 3
    /* 5ACB4 8006A4B4 1180013C */  lui        $at, %hi(D_80117694)
    /* 5ACB8 8006A4B8 21082300 */  addu       $at, $at, $v1
    /* 5ACBC 8006A4BC 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 5ACC0 8006A4C0 00000000 */  nop
    /* 5ACC4 8006A4C4 00C04228 */  slti       $v0, $v0, -0x4000
    /* 5ACC8 8006A4C8 04004010 */  beqz       $v0, .L8006A4DC
    /* 5ACCC 8006A4CC 30750224 */   addiu     $v0, $zero, 0x7530
    /* 5ACD0 8006A4D0 1180013C */  lui        $at, %hi(D_80117694)
    /* 5ACD4 8006A4D4 21082300 */  addu       $at, $at, $v1
    /* 5ACD8 8006A4D8 947622AC */  sw         $v0, %lo(D_80117694)($at)
  .L8006A4DC:
    /* 5ACDC 8006A4DC 40101100 */  sll        $v0, $s1, 1
    /* 5ACE0 8006A4E0 21105100 */  addu       $v0, $v0, $s1
    /* 5ACE4 8006A4E4 80100200 */  sll        $v0, $v0, 2
    /* 5ACE8 8006A4E8 23105100 */  subu       $v0, $v0, $s1
    /* 5ACEC 8006A4EC 00110200 */  sll        $v0, $v0, 4
    /* 5ACF0 8006A4F0 23105100 */  subu       $v0, $v0, $s1
    /* 5ACF4 8006A4F4 C0180200 */  sll        $v1, $v0, 3
    /* 5ACF8 8006A4F8 1180013C */  lui        $at, %hi(D_80117694)
    /* 5ACFC 8006A4FC 21082300 */  addu       $at, $at, $v1
    /* 5AD00 8006A500 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 5AD04 8006A504 00000000 */  nop
    /* 5AD08 8006A508 04004104 */  bgez       $v0, .L8006A51C
    /* 5AD0C 8006A50C 40101100 */   sll       $v0, $s1, 1
    /* 5AD10 8006A510 1180013C */  lui        $at, %hi(D_80117694)
    /* 5AD14 8006A514 21082300 */  addu       $at, $at, $v1
    /* 5AD18 8006A518 947620AC */  sw         $zero, %lo(D_80117694)($at)
  .L8006A51C:
    /* 5AD1C 8006A51C 21105100 */  addu       $v0, $v0, $s1
    /* 5AD20 8006A520 80100200 */  sll        $v0, $v0, 2
    /* 5AD24 8006A524 23105100 */  subu       $v0, $v0, $s1
    /* 5AD28 8006A528 00110200 */  sll        $v0, $v0, 4
    /* 5AD2C 8006A52C 23105100 */  subu       $v0, $v0, $s1
    /* 5AD30 8006A530 C0100200 */  sll        $v0, $v0, 3
    /* 5AD34 8006A534 1180013C */  lui        $at, %hi(D_80117694)
    /* 5AD38 8006A538 21082200 */  addu       $at, $at, $v0
    /* 5AD3C 8006A53C 9476308C */  lw         $s0, %lo(D_80117694)($at)
    /* 5AD40 8006A540 58A6010C */  jal        func_80069960
    /* 5AD44 8006A544 21202002 */   addu      $a0, $s1, $zero
    /* 5AD48 8006A548 A7A1010C */  jal        func_8006869C
    /* 5AD4C 8006A54C 21202002 */   addu      $a0, $s1, $zero
    /* 5AD50 8006A550 9B8D010C */  jal        func_8006366C
    /* 5AD54 8006A554 21202002 */   addu      $a0, $s1, $zero
    /* 5AD58 8006A558 04C2000C */  jal        func_80030810
    /* 5AD5C 8006A55C 21202002 */   addu      $a0, $s1, $zero
    /* 5AD60 8006A560 21202002 */  addu       $a0, $s1, $zero
    /* 5AD64 8006A564 26A8010C */  jal        func_8006A098
    /* 5AD68 8006A568 21280002 */   addu      $a1, $s0, $zero
    /* 5AD6C 8006A56C 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 5AD70 8006A570 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 5AD74 8006A574 00000000 */  nop
    /* 5AD78 8006A578 07102202 */  srav       $v0, $v0, $s1
    /* 5AD7C 8006A57C 01004230 */  andi       $v0, $v0, 0x1
    /* 5AD80 8006A580 18004010 */  beqz       $v0, .L8006A5E4
    /* 5AD84 8006A584 00000000 */   nop
    /* 5AD88 8006A588 57DF010C */  jal        func_80077D5C
    /* 5AD8C 8006A58C 21202002 */   addu      $a0, $s1, $zero
    /* 5AD90 8006A590 14004010 */  beqz       $v0, .L8006A5E4
    /* 5AD94 8006A594 40101100 */   sll       $v0, $s1, 1
    /* 5AD98 8006A598 21200000 */  addu       $a0, $zero, $zero
    /* 5AD9C 8006A59C 21105100 */  addu       $v0, $v0, $s1
    /* 5ADA0 8006A5A0 80100200 */  sll        $v0, $v0, 2
    /* 5ADA4 8006A5A4 23105100 */  subu       $v0, $v0, $s1
    /* 5ADA8 8006A5A8 00110200 */  sll        $v0, $v0, 4
    /* 5ADAC 8006A5AC 23105100 */  subu       $v0, $v0, $s1
    /* 5ADB0 8006A5B0 C0100200 */  sll        $v0, $v0, 3
    /* 5ADB4 8006A5B4 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* 5ADB8 8006A5B8 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* 5ADBC 8006A5BC 21184300 */  addu       $v1, $v0, $v1
    /* 5ADC0 8006A5C0 40100400 */  sll        $v0, $a0, 1
  .L8006A5C4:
    /* 5ADC4 8006A5C4 21104300 */  addu       $v0, $v0, $v1
    /* 5ADC8 8006A5C8 00004284 */  lh         $v0, 0x0($v0)
    /* 5ADCC 8006A5CC 00000000 */  nop
    /* 5ADD0 8006A5D0 23904202 */  subu       $s2, $s2, $v0
    /* 5ADD4 8006A5D4 01008424 */  addiu      $a0, $a0, 0x1
    /* 5ADD8 8006A5D8 06008228 */  slti       $v0, $a0, 0x6
    /* 5ADDC 8006A5DC F9FF4014 */  bnez       $v0, .L8006A5C4
    /* 5ADE0 8006A5E0 40100400 */   sll       $v0, $a0, 1
  .L8006A5E4:
    /* 5ADE4 8006A5E4 0C004012 */  beqz       $s2, .L8006A618
    /* 5ADE8 8006A5E8 00241100 */   sll       $a0, $s1, 16
    /* 5ADEC 8006A5EC DF2C030C */  jal        func_800CB37C
    /* 5ADF0 8006A5F0 03240400 */   sra       $a0, $a0, 16
    /* 5ADF4 8006A5F4 00140200 */  sll        $v0, $v0, 16
    /* 5ADF8 8006A5F8 07004014 */  bnez       $v0, .L8006A618
    /* 5ADFC 8006A5FC 21202002 */   addu      $a0, $s1, $zero
    /* 5AE00 8006A600 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 5AE04 8006A604 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 5AE08 8006A608 01000524 */  addiu      $a1, $zero, 0x1
    /* 5AE0C 8006A60C 04282502 */  sllv       $a1, $a1, $s1
    /* 5AE10 8006A610 A824030C */  jal        func_800C92A0
    /* 5AE14 8006A614 24284500 */   and       $a1, $v0, $a1
  .L8006A618:
    /* 5AE18 8006A618 AC0180AF */  sw         $zero, %gp_rel(D_80158684)($gp)
    /* 5AE1C 8006A61C 1280023C */  lui        $v0, %hi(D_8011A254)
    /* 5AE20 8006A620 54A2428C */  lw         $v0, %lo(D_8011A254)($v0)
    /* 5AE24 8006A624 00000000 */  nop
    /* 5AE28 8006A628 00204230 */  andi       $v0, $v0, 0x2000
    /* 5AE2C 8006A62C 03004010 */  beqz       $v0, .L8006A63C
    /* 5AE30 8006A630 00000000 */   nop
    /* 5AE34 8006A634 9DA5010C */  jal        func_80069674
    /* 5AE38 8006A638 21202002 */   addu      $a0, $s1, $zero
  .L8006A63C:
    /* 5AE3C 8006A63C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5AE40 8006A640 1800B28F */  lw         $s2, 0x18($sp)
    /* 5AE44 8006A644 1400B18F */  lw         $s1, 0x14($sp)
    /* 5AE48 8006A648 1000B08F */  lw         $s0, 0x10($sp)
    /* 5AE4C 8006A64C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5AE50 8006A650 0800E003 */  jr         $ra
    /* 5AE54 8006A654 00000000 */   nop
endlabel func_8006A39C
