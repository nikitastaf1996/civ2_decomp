.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D333C, 0x3D4

glabel func_800D333C
    /* C3B3C 800D333C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* C3B40 800D3340 6400BFAF */  sw         $ra, 0x64($sp)
    /* C3B44 800D3344 6000BEAF */  sw         $fp, 0x60($sp)
    /* C3B48 800D3348 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* C3B4C 800D334C 5800B6AF */  sw         $s6, 0x58($sp)
    /* C3B50 800D3350 5400B5AF */  sw         $s5, 0x54($sp)
    /* C3B54 800D3354 5000B4AF */  sw         $s4, 0x50($sp)
    /* C3B58 800D3358 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* C3B5C 800D335C 4800B2AF */  sw         $s2, 0x48($sp)
    /* C3B60 800D3360 4400B1AF */  sw         $s1, 0x44($sp)
    /* C3B64 800D3364 4000B0AF */  sw         $s0, 0x40($sp)
    /* C3B68 800D3368 21888000 */  addu       $s1, $a0, $zero
    /* C3B6C 800D336C 140F2886 */  lh         $t0, 0xF14($s1)
    /* C3B70 800D3370 00000000 */  nop
    /* C3B74 800D3374 2000A8AF */  sw         $t0, 0x20($sp)
    /* C3B78 800D3378 160F2686 */  lh         $a2, 0xF16($s1)
    /* C3B7C 800D337C FDFF0824 */  addiu      $t0, $zero, -0x3
    /* C3B80 800D3380 2800A8AF */  sw         $t0, 0x28($sp)
    /* C3B84 800D3384 E40E238E */  lw         $v1, 0xEE4($s1)
    /* C3B88 800D3388 01000224 */  addiu      $v0, $zero, 0x1
    /* C3B8C 800D338C 04006214 */  bne        $v1, $v0, .L800D33A0
    /* C3B90 800D3390 03000224 */   addiu     $v0, $zero, 0x3
    /* C3B94 800D3394 FAFF0824 */  addiu      $t0, $zero, -0x6
    /* C3B98 800D3398 2800A8AF */  sw         $t0, 0x28($sp)
    /* C3B9C 800D339C E40E238E */  lw         $v1, 0xEE4($s1)
  .L800D33A0:
    /* C3BA0 800D33A0 00000000 */  nop
    /* C3BA4 800D33A4 02006214 */  bne        $v1, $v0, .L800D33B0
    /* C3BA8 800D33A8 00000000 */   nop
    /* C3BAC 800D33AC 2800A0AF */  sw         $zero, 0x28($sp)
  .L800D33B0:
    /* C3BB0 800D33B0 1280023C */  lui        $v0, %hi(D_8011A280)
    /* C3BB4 800D33B4 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* C3BB8 800D33B8 00000000 */  nop
    /* C3BBC 800D33BC 09004018 */  blez       $v0, .L800D33E4
    /* C3BC0 800D33C0 21800000 */   addu      $s0, $zero, $zero
    /* C3BC4 800D33C4 1680043C */  lui        $a0, %hi(D_80158860)
    /* C3BC8 800D33C8 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C3BCC 800D33CC 1280033C */  lui        $v1, %hi(D_8011A280)
    /* C3BD0 800D33D0 80A26384 */  lh         $v1, %lo(D_8011A280)($v1)
    /* C3BD4 800D33D4 01001026 */  addiu      $s0, $s0, 0x1
  .L800D33D8:
    /* C3BD8 800D33D8 2A100302 */  slt        $v0, $s0, $v1
    /* C3BDC 800D33DC FEFF4014 */  bnez       $v0, .L800D33D8
    /* C3BE0 800D33E0 01001026 */   addiu     $s0, $s0, 0x1
  .L800D33E4:
    /* C3BE4 800D33E4 2000A88F */  lw         $t0, 0x20($sp)
    /* C3BE8 800D33E8 00000000 */  nop
    /* C3BEC 800D33EC 00001225 */  addiu      $s2, $t0, 0x0
    /* C3BF0 800D33F0 21A0C000 */  addu       $s4, $a2, $zero
    /* C3BF4 800D33F4 21B00000 */  addu       $s6, $zero, $zero
    /* C3BF8 800D33F8 21980000 */  addu       $s3, $zero, $zero
    /* C3BFC 800D33FC 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3C00 800D3400 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3C04 800D3404 00000000 */  nop
    /* C3C08 800D3408 08005E80 */  lb         $fp, 0x8($v0)
    /* C3C0C 800D340C 00000000 */  nop
    /* C3C10 800D3410 40101E00 */  sll        $v0, $fp, 1
    /* C3C14 800D3414 21105E00 */  addu       $v0, $v0, $fp
    /* C3C18 800D3418 80100200 */  sll        $v0, $v0, 2
    /* C3C1C 800D341C 23105E00 */  subu       $v0, $v0, $fp
    /* C3C20 800D3420 00110200 */  sll        $v0, $v0, 4
    /* C3C24 800D3424 23105E00 */  subu       $v0, $v0, $fp
    /* C3C28 800D3428 C0100200 */  sll        $v0, $v0, 3
    /* C3C2C 800D342C 1180013C */  lui        $at, %hi(D_801176A7)
    /* C3C30 800D3430 21082200 */  addu       $at, $at, $v0
    /* C3C34 800D3434 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* C3C38 800D3438 00000000 */  nop
    /* C3C3C 800D343C 3000A2AF */  sw         $v0, 0x30($sp)
    /* C3C40 800D3440 21B80000 */  addu       $s7, $zero, $zero
    /* C3C44 800D3444 28022426 */  addiu      $a0, $s1, 0x228
    /* C3C48 800D3448 082C030C */  jal        func_800CB020
    /* C3C4C 800D344C 06000524 */   addiu     $a1, $zero, 0x6
    /* C3C50 800D3450 21A80000 */  addu       $s5, $zero, $zero
    /* C3C54 800D3454 21800000 */  addu       $s0, $zero, $zero
  .L800D3458:
    /* C3C58 800D3458 1280023C */  lui        $v0, %hi(D_8011A280)
    /* C3C5C 800D345C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* C3C60 800D3460 00000000 */  nop
    /* C3C64 800D3464 2A100202 */  slt        $v0, $s0, $v0
    /* C3C68 800D3468 78004010 */  beqz       $v0, .L800D364C
    /* C3C6C 800D346C 40101000 */   sll       $v0, $s0, 1
    /* C3C70 800D3470 21105000 */  addu       $v0, $v0, $s0
    /* C3C74 800D3474 80100200 */  sll        $v0, $v0, 2
    /* C3C78 800D3478 21105000 */  addu       $v0, $v0, $s0
    /* C3C7C 800D347C 40100200 */  sll        $v0, $v0, 1
    /* C3C80 800D3480 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C3C84 800D3484 21082200 */  addu       $at, $at, $v0
    /* C3C88 800D3488 C4D62390 */  lbu        $v1, %lo(D_8010D6C4)($at)
    /* C3C8C 800D348C 1680023C */  lui        $v0, %hi(D_80158860)
    /* C3C90 800D3490 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* C3C94 800D3494 00000000 */  nop
    /* C3C98 800D3498 6A006214 */  bne        $v1, $v0, .L800D3644
    /* C3C9C 800D349C 00000000 */   nop
    /* C3CA0 800D34A0 0100B526 */  addiu      $s5, $s5, 0x1
    /* C3CA4 800D34A4 FFFFA226 */  addiu      $v0, $s5, -0x1
    /* C3CA8 800D34A8 83100200 */  sra        $v0, $v0, 2
    /* C3CAC 800D34AC 880F238E */  lw         $v1, 0xF88($s1)
    /* C3CB0 800D34B0 00000000 */  nop
    /* C3CB4 800D34B4 2A204300 */  slt        $a0, $v0, $v1
    /* C3CB8 800D34B8 03006324 */  addiu      $v1, $v1, 0x3
    /* C3CBC 800D34BC 2A186200 */  slt        $v1, $v1, $v0
    /* C3CC0 800D34C0 25208300 */  or         $a0, $a0, $v1
    /* C3CC4 800D34C4 5F008014 */  bnez       $a0, .L800D3644
    /* C3CC8 800D34C8 21202002 */   addu      $a0, $s1, $zero
    /* C3CCC 800D34CC 1000B4AF */  sw         $s4, 0x10($sp)
    /* C3CD0 800D34D0 2800A88F */  lw         $t0, 0x28($sp)
    /* C3CD4 800D34D4 00000000 */  nop
    /* C3CD8 800D34D8 1400A8AF */  sw         $t0, 0x14($sp)
    /* C3CDC 800D34DC 21280002 */  addu       $a1, $s0, $zero
    /* C3CE0 800D34E0 04000624 */  addiu      $a2, $zero, 0x4
    /* C3CE4 800D34E4 4CBB020C */  jal        func_800AED30
    /* C3CE8 800D34E8 21384002 */   addu      $a3, $s2, $zero
    /* C3CEC 800D34EC 800F228E */  lw         $v0, 0xF80($s1)
    /* C3CF0 800D34F0 00000000 */  nop
    /* C3CF4 800D34F4 14004014 */  bnez       $v0, .L800D3548
    /* C3CF8 800D34F8 40101000 */   sll       $v0, $s0, 1
    /* C3CFC 800D34FC BA0F2386 */  lh         $v1, 0xFBA($s1)
    /* C3D00 800D3500 00000000 */  nop
    /* C3D04 800D3504 26187600 */  xor        $v1, $v1, $s6
    /* C3D08 800D3508 0100632C */  sltiu      $v1, $v1, 0x1
    /* C3D0C 800D350C B80F2286 */  lh         $v0, 0xFB8($s1)
    /* C3D10 800D3510 00000000 */  nop
    /* C3D14 800D3514 26105300 */  xor        $v0, $v0, $s3
    /* C3D18 800D3518 0100422C */  sltiu      $v0, $v0, 0x1
    /* C3D1C 800D351C 24186200 */  and        $v1, $v1, $v0
    /* C3D20 800D3520 08006010 */  beqz       $v1, .L800D3544
    /* C3D24 800D3524 18008226 */   addiu     $v0, $s4, 0x18
    /* C3D28 800D3528 1000A2AF */  sw         $v0, 0x10($sp)
    /* C3D2C 800D352C 1400A0AF */  sw         $zero, 0x14($sp)
    /* C3D30 800D3530 21202002 */  addu       $a0, $s1, $zero
    /* C3D34 800D3534 21284002 */  addu       $a1, $s2, $zero
    /* C3D38 800D3538 21308002 */  addu       $a2, $s4, $zero
    /* C3D3C 800D353C C413020C */  jal        func_80084F10
    /* C3D40 800D3540 20004726 */   addiu     $a3, $s2, 0x20
  .L800D3544:
    /* C3D44 800D3544 40101000 */  sll        $v0, $s0, 1
  .L800D3548:
    /* C3D48 800D3548 21105000 */  addu       $v0, $v0, $s0
    /* C3D4C 800D354C 80100200 */  sll        $v0, $v0, 2
    /* C3D50 800D3550 21105000 */  addu       $v0, $v0, $s0
    /* C3D54 800D3554 40100200 */  sll        $v0, $v0, 1
    /* C3D58 800D3558 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* C3D5C 800D355C 21082200 */  addu       $at, $at, $v0
    /* C3D60 800D3560 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* C3D64 800D3564 00000000 */  nop
    /* C3D68 800D3568 80100300 */  sll        $v0, $v1, 2
    /* C3D6C 800D356C 40101000 */  sll        $v0, $s0, 1
    /* C3D70 800D3570 21105000 */  addu       $v0, $v0, $s0
    /* C3D74 800D3574 80100200 */  sll        $v0, $v0, 2
    /* C3D78 800D3578 40101000 */  sll        $v0, $s0, 1
    /* C3D7C 800D357C 21105000 */  addu       $v0, $v0, $s0
    /* C3D80 800D3580 80100200 */  sll        $v0, $v0, 2
    /* C3D84 800D3584 21105000 */  addu       $v0, $v0, $s0
    /* C3D88 800D3588 40100200 */  sll        $v0, $v0, 1
    /* C3D8C 800D358C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* C3D90 800D3590 21082200 */  addu       $at, $at, $v0
    /* C3D94 800D3594 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* C3D98 800D3598 00000000 */  nop
    /* C3D9C 800D359C 00044230 */  andi       $v0, $v0, 0x400
    /* C3DA0 800D35A0 1E004010 */  beqz       $v0, .L800D361C
    /* C3DA4 800D35A4 00000000 */   nop
    /* C3DA8 800D35A8 3000A88F */  lw         $t0, 0x30($sp)
    /* C3DAC 800D35AC 00000000 */  nop
    /* C3DB0 800D35B0 05000229 */  slti       $v0, $t0, 0x5
    /* C3DB4 800D35B4 19004014 */  bnez       $v0, .L800D361C
    /* C3DB8 800D35B8 2120C003 */   addu      $a0, $fp, $zero
    /* C3DBC 800D35BC C17B030C */  jal        func_800DEF04
    /* C3DC0 800D35C0 15000524 */   addiu     $a1, $zero, 0x15
    /* C3DC4 800D35C4 08004014 */  bnez       $v0, .L800D35E8
    /* C3DC8 800D35C8 21180000 */   addu      $v1, $zero, $zero
    /* C3DCC 800D35CC 1680043C */  lui        $a0, %hi(D_80158860)
    /* C3DD0 800D35D0 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C3DD4 800D35D4 C826020C */  jal        func_80089B20
    /* C3DD8 800D35D8 21000524 */   addiu     $a1, $zero, 0x21
    /* C3DDC 800D35DC 02004014 */  bnez       $v0, .L800D35E8
    /* C3DE0 800D35E0 21180000 */   addu      $v1, $zero, $zero
    /* C3DE4 800D35E4 01000324 */  addiu      $v1, $zero, 0x1
  .L800D35E8:
    /* C3DE8 800D35E8 06000224 */  addiu      $v0, $zero, 0x6
    /* C3DEC 800D35EC 3000A88F */  lw         $t0, 0x30($sp)
    /* C3DF0 800D35F0 00000000 */  nop
    /* C3DF4 800D35F4 03000215 */  bne        $t0, $v0, .L800D3604
    /* C3DF8 800D35F8 00000000 */   nop
    /* C3DFC 800D35FC 864D0308 */  j          .L800D3618
    /* C3E00 800D3600 01006324 */   addiu     $v1, $v1, 0x1
  .L800D3604:
    /* C3E04 800D3604 04006010 */  beqz       $v1, .L800D3618
    /* C3E08 800D3608 00000000 */   nop
    /* C3E0C 800D360C 0200E016 */  bnez       $s7, .L800D3618
    /* C3E10 800D3610 00000000 */   nop
    /* C3E14 800D3614 21180000 */  addu       $v1, $zero, $zero
  .L800D3618:
    /* C3E18 800D3618 0100F726 */  addiu      $s7, $s7, 0x1
  .L800D361C:
    /* C3E1C 800D361C 01007326 */  addiu      $s3, $s3, 0x1
    /* C3E20 800D3620 0400622A */  slti       $v0, $s3, 0x4
    /* C3E24 800D3624 07004014 */  bnez       $v0, .L800D3644
    /* C3E28 800D3628 20005226 */   addiu     $s2, $s2, 0x20
    /* C3E2C 800D362C 21980000 */  addu       $s3, $zero, $zero
    /* C3E30 800D3630 2000A88F */  lw         $t0, 0x20($sp)
    /* C3E34 800D3634 00000000 */  nop
    /* C3E38 800D3638 00001225 */  addiu      $s2, $t0, 0x0
    /* C3E3C 800D363C 0100D626 */  addiu      $s6, $s6, 0x1
    /* C3E40 800D3640 20009426 */  addiu      $s4, $s4, 0x20
  .L800D3644:
    /* C3E44 800D3644 164D0308 */  j          .L800D3458
    /* C3E48 800D3648 01001026 */   addiu     $s0, $s0, 0x1
  .L800D364C:
    /* C3E4C 800D364C B40F35AE */  sw         $s5, 0xFB4($s1)
    /* C3E50 800D3650 800F228E */  lw         $v0, 0xF80($s1)
    /* C3E54 800D3654 00000000 */  nop
    /* C3E58 800D3658 20004014 */  bnez       $v0, .L800D36DC
    /* C3E5C 800D365C 00000000 */   nop
    /* C3E60 800D3660 0300A016 */  bnez       $s5, .L800D3670
    /* C3E64 800D3664 01000224 */   addiu     $v0, $zero, 0x1
    /* C3E68 800D3668 B74D0308 */  j          .L800D36DC
    /* C3E6C 800D366C 800F22AE */   sw        $v0, 0xF80($s1)
  .L800D3670:
    /* C3E70 800D3670 BA0F2286 */  lh         $v0, 0xFBA($s1)
    /* C3E74 800D3674 00000000 */  nop
    /* C3E78 800D3678 2A10C202 */  slt        $v0, $s6, $v0
    /* C3E7C 800D367C 02004010 */  beqz       $v0, .L800D3688
    /* C3E80 800D3680 00000000 */   nop
    /* C3E84 800D3684 BA0F36A6 */  sh         $s6, 0xFBA($s1)
  .L800D3688:
    /* C3E88 800D3688 BA0F2386 */  lh         $v1, 0xFBA($s1)
    /* C3E8C 800D368C 00000000 */  nop
    /* C3E90 800D3690 26187600 */  xor        $v1, $v1, $s6
    /* C3E94 800D3694 0100632C */  sltiu      $v1, $v1, 0x1
    /* C3E98 800D3698 B80F2286 */  lh         $v0, 0xFB8($s1)
    /* C3E9C 800D369C 00000000 */  nop
    /* C3EA0 800D36A0 2A105300 */  slt        $v0, $v0, $s3
    /* C3EA4 800D36A4 01004238 */  xori       $v0, $v0, 0x1
    /* C3EA8 800D36A8 24186200 */  and        $v1, $v1, $v0
    /* C3EAC 800D36AC 0B006010 */  beqz       $v1, .L800D36DC
    /* C3EB0 800D36B0 00000000 */   nop
    /* C3EB4 800D36B4 08006016 */  bnez       $s3, .L800D36D8
    /* C3EB8 800D36B8 FFFF6226 */   addiu     $v0, $s3, -0x1
    /* C3EBC 800D36BC 03000224 */  addiu      $v0, $zero, 0x3
    /* C3EC0 800D36C0 B80F22A6 */  sh         $v0, 0xFB8($s1)
    /* C3EC4 800D36C4 BA0F2296 */  lhu        $v0, 0xFBA($s1)
    /* C3EC8 800D36C8 00000000 */  nop
    /* C3ECC 800D36CC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C3ED0 800D36D0 B74D0308 */  j          .L800D36DC
    /* C3ED4 800D36D4 BA0F22A6 */   sh        $v0, 0xFBA($s1)
  .L800D36D8:
    /* C3ED8 800D36D8 B80F22A6 */  sh         $v0, 0xFB8($s1)
  .L800D36DC:
    /* C3EDC 800D36DC 6400BF8F */  lw         $ra, 0x64($sp)
    /* C3EE0 800D36E0 6000BE8F */  lw         $fp, 0x60($sp)
    /* C3EE4 800D36E4 5C00B78F */  lw         $s7, 0x5C($sp)
    /* C3EE8 800D36E8 5800B68F */  lw         $s6, 0x58($sp)
    /* C3EEC 800D36EC 5400B58F */  lw         $s5, 0x54($sp)
    /* C3EF0 800D36F0 5000B48F */  lw         $s4, 0x50($sp)
    /* C3EF4 800D36F4 4C00B38F */  lw         $s3, 0x4C($sp)
    /* C3EF8 800D36F8 4800B28F */  lw         $s2, 0x48($sp)
    /* C3EFC 800D36FC 4400B18F */  lw         $s1, 0x44($sp)
    /* C3F00 800D3700 4000B08F */  lw         $s0, 0x40($sp)
    /* C3F04 800D3704 6800BD27 */  addiu      $sp, $sp, 0x68
    /* C3F08 800D3708 0800E003 */  jr         $ra
    /* C3F0C 800D370C 00000000 */   nop
endlabel func_800D333C
