.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2CC0, 0x528

glabel func_800B2CC0
    /* A34C0 800B2CC0 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* A34C4 800B2CC4 A400BFAF */  sw         $ra, 0xA4($sp)
    /* A34C8 800B2CC8 A000BEAF */  sw         $fp, 0xA0($sp)
    /* A34CC 800B2CCC 9C00B7AF */  sw         $s7, 0x9C($sp)
    /* A34D0 800B2CD0 9800B6AF */  sw         $s6, 0x98($sp)
    /* A34D4 800B2CD4 9400B5AF */  sw         $s5, 0x94($sp)
    /* A34D8 800B2CD8 9000B4AF */  sw         $s4, 0x90($sp)
    /* A34DC 800B2CDC 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* A34E0 800B2CE0 8800B2AF */  sw         $s2, 0x88($sp)
    /* A34E4 800B2CE4 8400B1AF */  sw         $s1, 0x84($sp)
    /* A34E8 800B2CE8 8000B0AF */  sw         $s0, 0x80($sp)
    /* A34EC 800B2CEC 21988000 */  addu       $s3, $a0, $zero
    /* A34F0 800B2CF0 6000A5AF */  sw         $a1, 0x60($sp)
    /* A34F4 800B2CF4 D001648E */  lw         $a0, 0x1D0($s3)
    /* A34F8 800B2CF8 00000000 */  nop
    /* A34FC 800B2CFC 07008010 */  beqz       $a0, .L800B2D1C
    /* A3500 800B2D00 00000000 */   nop
    /* A3504 800B2D04 0500A010 */  beqz       $a1, .L800B2D1C
    /* A3508 800B2D08 00000000 */   nop
    /* A350C 800B2D0C 7D11040C */  jal        func_801045F4
    /* A3510 800B2D10 00000000 */   nop
    /* A3514 800B2D14 6DCC0208 */  j          .L800B31B4
    /* A3518 800B2D18 21100000 */   addu      $v0, $zero, $zero
  .L800B2D1C:
    /* A351C 800B2D1C 4800628E */  lw         $v0, 0x48($s3)
    /* A3520 800B2D20 4C00638E */  lw         $v1, 0x4C($s3)
    /* A3524 800B2D24 00000000 */  nop
    /* A3528 800B2D28 26104300 */  xor        $v0, $v0, $v1
    /* A352C 800B2D2C 2B100200 */  sltu       $v0, $zero, $v0
    /* A3530 800B2D30 7000A2AF */  sw         $v0, 0x70($sp)
    /* A3534 800B2D34 7801688E */  lw         $t0, 0x178($s3)
    /* A3538 800B2D38 00000000 */  nop
    /* A353C 800B2D3C 7800A8AF */  sw         $t0, 0x78($sp)
    /* A3540 800B2D40 04026386 */  lh         $v1, 0x204($s3)
    /* A3544 800B2D44 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A3548 800B2D48 04006214 */  bne        $v1, $v0, .L800B2D5C
    /* A354C 800B2D4C 00000000 */   nop
    /* A3550 800B2D50 00017E8E */  lw         $fp, 0x100($s3)
    /* A3554 800B2D54 6DCB0208 */  j          .L800B2DB4
    /* A3558 800B2D58 00000000 */   nop
  .L800B2D5C:
    /* A355C 800B2D5C 6000A88F */  lw         $t0, 0x60($sp)
    /* A3560 800B2D60 00000000 */  nop
    /* A3564 800B2D64 08000011 */  beqz       $t0, .L800B2D88
    /* A3568 800B2D68 00000000 */   nop
    /* A356C 800B2D6C 34007E8E */  lw         $fp, 0x34($s3)
    /* A3570 800B2D70 DC00628E */  lw         $v0, 0xDC($s3)
    /* A3574 800B2D74 00000000 */  nop
    /* A3578 800B2D78 0E004018 */  blez       $v0, .L800B2DB4
    /* A357C 800B2D7C 00000000 */   nop
    /* A3580 800B2D80 6DCB0208 */  j          .L800B2DB4
    /* A3584 800B2D84 23F0C203 */   subu      $fp, $fp, $v0
  .L800B2D88:
    /* A3588 800B2D88 00017E8E */  lw         $fp, 0x100($s3)
    /* A358C 800B2D8C DC00628E */  lw         $v0, 0xDC($s3)
    /* A3590 800B2D90 A800638E */  lw         $v1, 0xA8($s3)
    /* A3594 800B2D94 00000000 */  nop
    /* A3598 800B2D98 21104300 */  addu       $v0, $v0, $v1
    /* A359C 800B2D9C 30010324 */  addiu      $v1, $zero, 0x130
    /* A35A0 800B2DA0 23186200 */  subu       $v1, $v1, $v0
    /* A35A4 800B2DA4 2A107E00 */  slt        $v0, $v1, $fp
    /* A35A8 800B2DA8 02004010 */  beqz       $v0, .L800B2DB4
    /* A35AC 800B2DAC 00000000 */   nop
    /* A35B0 800B2DB0 21F06000 */  addu       $fp, $v1, $zero
  .L800B2DB4:
    /* A35B4 800B2DB4 04026386 */  lh         $v1, 0x204($s3)
    /* A35B8 800B2DB8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A35BC 800B2DBC 22006214 */  bne        $v1, $v0, .L800B2E48
    /* A35C0 800B2DC0 21B00000 */   addu      $s6, $zero, $zero
    /* A35C4 800B2DC4 6000A88F */  lw         $t0, 0x60($sp)
    /* A35C8 800B2DC8 00000000 */  nop
    /* A35CC 800B2DCC 1E000011 */  beqz       $t0, .L800B2E48
    /* A35D0 800B2DD0 00000000 */   nop
    /* A35D4 800B2DD4 7001628E */  lw         $v0, 0x170($s3)
    /* A35D8 800B2DD8 00000000 */  nop
    /* A35DC 800B2DDC 0E004010 */  beqz       $v0, .L800B2E18
    /* A35E0 800B2DE0 00000000 */   nop
    /* A35E4 800B2DE4 3800628E */  lw         $v0, 0x38($s3)
    /* A35E8 800B2DE8 00000000 */  nop
    /* A35EC 800B2DEC C21F0200 */  srl        $v1, $v0, 31
    /* A35F0 800B2DF0 21104300 */  addu       $v0, $v0, $v1
    /* A35F4 800B2DF4 43A80200 */  sra        $s5, $v0, 1
    /* A35F8 800B2DF8 1C00638E */  lw         $v1, 0x1C($s3)
    /* A35FC 800B2DFC 9800628E */  lw         $v0, 0x98($s3)
    /* A3600 800B2E00 00000000 */  nop
    /* A3604 800B2E04 18006200 */  mult       $v1, $v0
    /* A3608 800B2E08 1C02628E */  lw         $v0, 0x21C($s3)
    /* A360C 800B2E0C 12400000 */  mflo       $t0
    /* A3610 800B2E10 8CCB0208 */  j          .L800B2E30
    /* A3614 800B2E14 21100201 */   addu      $v0, $t0, $v0
  .L800B2E18:
    /* A3618 800B2E18 3800628E */  lw         $v0, 0x38($s3)
    /* A361C 800B2E1C 00000000 */  nop
    /* A3620 800B2E20 C21F0200 */  srl        $v1, $v0, 31
    /* A3624 800B2E24 21104300 */  addu       $v0, $v0, $v1
    /* A3628 800B2E28 43A80200 */  sra        $s5, $v0, 1
    /* A362C 800B2E2C 1C02628E */  lw         $v0, 0x21C($s3)
  .L800B2E30:
    /* A3630 800B2E30 00000000 */  nop
    /* A3634 800B2E34 C21F0200 */  srl        $v1, $v0, 31
    /* A3638 800B2E38 21104300 */  addu       $v0, $v0, $v1
    /* A363C 800B2E3C 43100200 */  sra        $v0, $v0, 1
    /* A3640 800B2E40 93CB0208 */  j          .L800B2E4C
    /* A3644 800B2E44 23A8A202 */   subu      $s5, $s5, $v0
  .L800B2E48:
    /* A3648 800B2E48 E000758E */  lw         $s5, 0xE0($s3)
  .L800B2E4C:
    /* A364C 800B2E4C 1680013C */  lui        $at, %hi(D_8015E280)
    /* A3650 800B2E50 80E220A0 */  sb         $zero, %lo(D_8015E280)($at)
    /* A3654 800B2E54 1000A0A3 */  sb         $zero, 0x10($sp)
    /* A3658 800B2E58 7800A88F */  lw         $t0, 0x78($sp)
    /* A365C 800B2E5C 00000000 */  nop
    /* A3660 800B2E60 AA000011 */  beqz       $t0, .L800B310C
    /* A3664 800B2E64 21900000 */   addu      $s2, $zero, $zero
    /* A3668 800B2E68 43B81E00 */  sra        $s7, $fp, 1
  .L800B2E6C:
    /* A366C 800B2E6C 7800A88F */  lw         $t0, 0x78($sp)
    /* A3670 800B2E70 00000000 */  nop
    /* A3674 800B2E74 0400108D */  lw         $s0, 0x4($t0)
    /* A3678 800B2E78 0000028D */  lw         $v0, 0x0($t0)
    /* A367C 800B2E7C 00000000 */  nop
    /* A3680 800B2E80 03004230 */  andi       $v0, $v0, 0x3
    /* A3684 800B2E84 36004010 */  beqz       $v0, .L800B2F60
    /* A3688 800B2E88 00000000 */   nop
    /* A368C 800B2E8C 1680023C */  lui        $v0, %hi(D_8015E280)
    /* A3690 800B2E90 80E24280 */  lb         $v0, %lo(D_8015E280)($v0)
    /* A3694 800B2E94 00000000 */  nop
    /* A3698 800B2E98 10004010 */  beqz       $v0, .L800B2EDC
    /* A369C 800B2E9C 00000000 */   nop
    /* A36A0 800B2EA0 6000A88F */  lw         $t0, 0x60($sp)
    /* A36A4 800B2EA4 00000000 */  nop
    /* A36A8 800B2EA8 06000011 */  beqz       $t0, .L800B2EC4
    /* A36AC 800B2EAC 21206002 */   addu      $a0, $s3, $zero
    /* A36B0 800B2EB0 1680053C */  lui        $a1, %hi(D_8015E280)
    /* A36B4 800B2EB4 80E2A524 */  addiu      $a1, $a1, %lo(D_8015E280)
    /* A36B8 800B2EB8 21300000 */  addu       $a2, $zero, $zero
    /* A36BC 800B2EBC E7CA020C */  jal        func_800B2B9C
    /* A36C0 800B2EC0 2138A002 */   addu      $a3, $s5, $zero
  .L800B2EC4:
    /* A36C4 800B2EC4 0C00D626 */  addiu      $s6, $s6, 0xC
    /* A36C8 800B2EC8 0C00B526 */  addiu      $s5, $s5, 0xC
    /* A36CC 800B2ECC 1680013C */  lui        $at, %hi(D_8015E280)
    /* A36D0 800B2ED0 80E220A0 */  sb         $zero, %lo(D_8015E280)($at)
    /* A36D4 800B2ED4 21900000 */  addu       $s2, $zero, $zero
    /* A36D8 800B2ED8 7800A88F */  lw         $t0, 0x78($sp)
  .L800B2EDC:
    /* A36DC 800B2EDC 00000000 */  nop
    /* A36E0 800B2EE0 0000038D */  lw         $v1, 0x0($t0)
    /* A36E4 800B2EE4 00000000 */  nop
    /* A36E8 800B2EE8 01006330 */  andi       $v1, $v1, 0x1
    /* A36EC 800B2EEC 00000282 */  lb         $v0, 0x0($s0)
    /* A36F0 800B2EF0 00000000 */  nop
    /* A36F4 800B2EF4 0100422C */  sltiu      $v0, $v0, 0x1
    /* A36F8 800B2EF8 25186200 */  or         $v1, $v1, $v0
    /* A36FC 800B2EFC 18006010 */  beqz       $v1, .L800B2F60
    /* A3700 800B2F00 00000000 */   nop
    /* A3704 800B2F04 6000A88F */  lw         $t0, 0x60($sp)
    /* A3708 800B2F08 00000000 */  nop
    /* A370C 800B2F0C 0D000011 */  beqz       $t0, .L800B2F44
    /* A3710 800B2F10 00000000 */   nop
    /* A3714 800B2F14 AD87030C */  jal        func_800E1EB4
    /* A3718 800B2F18 21200002 */   addu      $a0, $s0, $zero
    /* A371C 800B2F1C 40180200 */  sll        $v1, $v0, 1
    /* A3720 800B2F20 21186200 */  addu       $v1, $v1, $v0
    /* A3724 800B2F24 40100300 */  sll        $v0, $v1, 1
    /* A3728 800B2F28 7000A88F */  lw         $t0, 0x70($sp)
    /* A372C 800B2F2C 42100200 */  srl        $v0, $v0, 1
    /* A3730 800B2F30 2330E202 */  subu       $a2, $s7, $v0
    /* A3734 800B2F34 21206002 */  addu       $a0, $s3, $zero
    /* A3738 800B2F38 21280002 */  addu       $a1, $s0, $zero
    /* A373C 800B2F3C E7CA020C */  jal        func_800B2B9C
    /* A3740 800B2F40 2138A002 */   addu      $a3, $s5, $zero
  .L800B2F44:
    /* A3744 800B2F44 00000282 */  lb         $v0, 0x0($s0)
    /* A3748 800B2F48 00000000 */  nop
    /* A374C 800B2F4C FDFF4014 */  bnez       $v0, .L800B2F44
    /* A3750 800B2F50 01001026 */   addiu     $s0, $s0, 0x1
    /* A3754 800B2F54 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A3758 800B2F58 0C00D626 */  addiu      $s6, $s6, 0xC
    /* A375C 800B2F5C 0C00B526 */  addiu      $s5, $s5, 0xC
  .L800B2F60:
    /* A3760 800B2F60 AD87030C */  jal        func_800E1EB4
    /* A3764 800B2F64 21200002 */   addu      $a0, $s0, $zero
    /* A3768 800B2F68 62004010 */  beqz       $v0, .L800B30F4
    /* A376C 800B2F6C 20000824 */   addiu     $t0, $zero, 0x20
    /* A3770 800B2F70 00000282 */  lb         $v0, 0x0($s0)
    /* A3774 800B2F74 00000000 */  nop
    /* A3778 800B2F78 07004814 */  bne        $v0, $t0, .L800B2F98
    /* A377C 800B2F7C 20000324 */   addiu     $v1, $zero, 0x20
    /* A3780 800B2F80 01001026 */  addiu      $s0, $s0, 0x1
  .L800B2F84:
    /* A3784 800B2F84 00000282 */  lb         $v0, 0x0($s0)
    /* A3788 800B2F88 00000000 */  nop
    /* A378C 800B2F8C FDFF4310 */  beq        $v0, $v1, .L800B2F84
    /* A3790 800B2F90 01001026 */   addiu     $s0, $s0, 0x1
    /* A3794 800B2F94 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800B2F98:
    /* A3798 800B2F98 21200002 */  addu       $a0, $s0, $zero
    /* A379C 800B2F9C B187030C */  jal        func_800E1EC4
    /* A37A0 800B2FA0 20000524 */   addiu     $a1, $zero, 0x20
    /* A37A4 800B2FA4 21A04000 */  addu       $s4, $v0, $zero
    /* A37A8 800B2FA8 02008012 */  beqz       $s4, .L800B2FB4
    /* A37AC 800B2FAC 00000000 */   nop
    /* A37B0 800B2FB0 000080A2 */  sb         $zero, 0x0($s4)
  .L800B2FB4:
    /* A37B4 800B2FB4 AD87030C */  jal        func_800E1EB4
    /* A37B8 800B2FB8 21200002 */   addu      $a0, $s0, $zero
    /* A37BC 800B2FBC 6800A2AF */  sw         $v0, 0x68($sp)
    /* A37C0 800B2FC0 1000A0A3 */  sb         $zero, 0x10($sp)
    /* A37C4 800B2FC4 1680023C */  lui        $v0, %hi(D_8015E280)
    /* A37C8 800B2FC8 80E24280 */  lb         $v0, %lo(D_8015E280)($v0)
    /* A37CC 800B2FCC 00000000 */  nop
    /* A37D0 800B2FD0 05004010 */  beqz       $v0, .L800B2FE8
    /* A37D4 800B2FD4 00000000 */   nop
    /* A37D8 800B2FD8 1680053C */  lui        $a1, %hi(D_80158F54)
    /* A37DC 800B2FDC 548FA524 */  addiu      $a1, $a1, %lo(D_80158F54)
    /* A37E0 800B2FE0 9987030C */  jal        func_800E1E64
    /* A37E4 800B2FE4 1000A427 */   addiu     $a0, $sp, 0x10
  .L800B2FE8:
    /* A37E8 800B2FE8 1000A427 */  addiu      $a0, $sp, 0x10
    /* A37EC 800B2FEC 9987030C */  jal        func_800E1E64
    /* A37F0 800B2FF0 21280002 */   addu      $a1, $s0, $zero
    /* A37F4 800B2FF4 AD87030C */  jal        func_800E1EB4
    /* A37F8 800B2FF8 1000A427 */   addiu     $a0, $sp, 0x10
    /* A37FC 800B2FFC 40180200 */  sll        $v1, $v0, 1
    /* A3800 800B3000 21186200 */  addu       $v1, $v1, $v0
    /* A3804 800B3004 40880300 */  sll        $s1, $v1, 1
    /* A3808 800B3008 7000A88F */  lw         $t0, 0x70($sp)
    /* A380C 800B300C 00000000 */  nop
    /* A3810 800B3010 02000011 */  beqz       $t0, .L800B301C
    /* A3814 800B3014 21105102 */   addu      $v0, $s2, $s1
    /* A3818 800B3018 01004224 */  addiu      $v0, $v0, 0x1
  .L800B301C:
    /* A381C 800B301C 2A10C203 */  slt        $v0, $fp, $v0
    /* A3820 800B3020 29004010 */  beqz       $v0, .L800B30C8
    /* A3824 800B3024 00000000 */   nop
    /* A3828 800B3028 6000A88F */  lw         $t0, 0x60($sp)
    /* A382C 800B302C 00000000 */  nop
    /* A3830 800B3030 15000011 */  beqz       $t0, .L800B3088
    /* A3834 800B3034 2000033C */   lui       $v1, (0x200000 >> 16)
    /* A3838 800B3038 3000628E */  lw         $v0, 0x30($s3)
    /* A383C 800B303C 00000000 */  nop
    /* A3840 800B3040 24104300 */  and        $v0, $v0, $v1
    /* A3844 800B3044 0B004010 */  beqz       $v0, .L800B3074
    /* A3848 800B3048 21300000 */   addu      $a2, $zero, $zero
    /* A384C 800B304C 1680043C */  lui        $a0, %hi(D_8015E280)
    /* A3850 800B3050 80E28424 */  addiu      $a0, $a0, %lo(D_8015E280)
    /* A3854 800B3054 AD87030C */  jal        func_800E1EB4
    /* A3858 800B3058 00000000 */   nop
    /* A385C 800B305C 40180200 */  sll        $v1, $v0, 1
    /* A3860 800B3060 21186200 */  addu       $v1, $v1, $v0
    /* A3864 800B3064 40100300 */  sll        $v0, $v1, 1
    /* A3868 800B3068 7000A88F */  lw         $t0, 0x70($sp)
    /* A386C 800B306C 42100200 */  srl        $v0, $v0, 1
    /* A3870 800B3070 2330E202 */  subu       $a2, $s7, $v0
  .L800B3074:
    /* A3874 800B3074 21206002 */  addu       $a0, $s3, $zero
    /* A3878 800B3078 1680053C */  lui        $a1, %hi(D_8015E280)
    /* A387C 800B307C 80E2A524 */  addiu      $a1, $a1, %lo(D_8015E280)
    /* A3880 800B3080 E7CA020C */  jal        func_800B2B9C
    /* A3884 800B3084 2138A002 */   addu      $a3, $s5, $zero
  .L800B3088:
    /* A3888 800B3088 0C00D626 */  addiu      $s6, $s6, 0xC
    /* A388C 800B308C 1000A283 */  lb         $v0, 0x10($sp)
    /* A3890 800B3090 20000824 */  addiu      $t0, $zero, 0x20
    /* A3894 800B3094 09004814 */  bne        $v0, $t0, .L800B30BC
    /* A3898 800B3098 0C00B526 */   addiu     $s5, $s5, 0xC
    /* A389C 800B309C 20001224 */  addiu      $s2, $zero, 0x20
    /* A38A0 800B30A0 1000A427 */  addiu      $a0, $sp, 0x10
  .L800B30A4:
    /* A38A4 800B30A4 A587030C */  jal        func_800E1E94
    /* A38A8 800B30A8 1100A527 */   addiu     $a1, $sp, 0x11
    /* A38AC 800B30AC 1000A283 */  lb         $v0, 0x10($sp)
    /* A38B0 800B30B0 00000000 */  nop
    /* A38B4 800B30B4 FBFF5210 */  beq        $v0, $s2, .L800B30A4
    /* A38B8 800B30B8 1000A427 */   addiu     $a0, $sp, 0x10
  .L800B30BC:
    /* A38BC 800B30BC 1680013C */  lui        $at, %hi(D_8015E280)
    /* A38C0 800B30C0 80E220A0 */  sb         $zero, %lo(D_8015E280)($at)
    /* A38C4 800B30C4 21900000 */  addu       $s2, $zero, $zero
  .L800B30C8:
    /* A38C8 800B30C8 1680043C */  lui        $a0, %hi(D_8015E280)
    /* A38CC 800B30CC 80E28424 */  addiu      $a0, $a0, %lo(D_8015E280)
    /* A38D0 800B30D0 9987030C */  jal        func_800E1E64
    /* A38D4 800B30D4 1000A527 */   addiu     $a1, $sp, 0x10
    /* A38D8 800B30D8 03008012 */  beqz       $s4, .L800B30E8
    /* A38DC 800B30DC 21905102 */   addu      $s2, $s2, $s1
    /* A38E0 800B30E0 20000824 */  addiu      $t0, $zero, 0x20
    /* A38E4 800B30E4 000088A2 */  sb         $t0, 0x0($s4)
  .L800B30E8:
    /* A38E8 800B30E8 6800A88F */  lw         $t0, 0x68($sp)
    /* A38EC 800B30EC D8CB0208 */  j          .L800B2F60
    /* A38F0 800B30F0 21800802 */   addu      $s0, $s0, $t0
  .L800B30F4:
    /* A38F4 800B30F4 7800A88F */  lw         $t0, 0x78($sp)
    /* A38F8 800B30F8 00000000 */  nop
    /* A38FC 800B30FC 0800088D */  lw         $t0, 0x8($t0)
    /* A3900 800B3100 00000000 */  nop
    /* A3904 800B3104 59FF0015 */  bnez       $t0, .L800B2E6C
    /* A3908 800B3108 7800A8AF */   sw        $t0, 0x78($sp)
  .L800B310C:
    /* A390C 800B310C 1680043C */  lui        $a0, %hi(D_8015E280)
    /* A3910 800B3110 80E28424 */  addiu      $a0, $a0, %lo(D_8015E280)
    /* A3914 800B3114 00008280 */  lb         $v0, 0x0($a0)
    /* A3918 800B3118 00000000 */  nop
    /* A391C 800B311C 1D004010 */  beqz       $v0, .L800B3194
    /* A3920 800B3120 00000000 */   nop
    /* A3924 800B3124 6000A88F */  lw         $t0, 0x60($sp)
    /* A3928 800B3128 00000000 */  nop
    /* A392C 800B312C 16000011 */  beqz       $t0, .L800B3188
    /* A3930 800B3130 2000033C */   lui       $v1, (0x200000 >> 16)
    /* A3934 800B3134 3000628E */  lw         $v0, 0x30($s3)
    /* A3938 800B3138 00000000 */  nop
    /* A393C 800B313C 24104300 */  and        $v0, $v0, $v1
    /* A3940 800B3140 0B004010 */  beqz       $v0, .L800B3170
    /* A3944 800B3144 00000000 */   nop
    /* A3948 800B3148 AD87030C */  jal        func_800E1EB4
    /* A394C 800B314C 00000000 */   nop
    /* A3950 800B3150 40180200 */  sll        $v1, $v0, 1
    /* A3954 800B3154 21186200 */  addu       $v1, $v1, $v0
    /* A3958 800B3158 40100300 */  sll        $v0, $v1, 1
    /* A395C 800B315C 43301E00 */  sra        $a2, $fp, 1
    /* A3960 800B3160 7000A88F */  lw         $t0, 0x70($sp)
    /* A3964 800B3164 42100200 */  srl        $v0, $v0, 1
    /* A3968 800B3168 5DCC0208 */  j          .L800B3174
    /* A396C 800B316C 2330C200 */   subu      $a2, $a2, $v0
  .L800B3170:
    /* A3970 800B3170 21300000 */  addu       $a2, $zero, $zero
  .L800B3174:
    /* A3974 800B3174 21206002 */  addu       $a0, $s3, $zero
    /* A3978 800B3178 1680053C */  lui        $a1, %hi(D_8015E280)
    /* A397C 800B317C 80E2A524 */  addiu      $a1, $a1, %lo(D_8015E280)
    /* A3980 800B3180 E7CA020C */  jal        func_800B2B9C
    /* A3984 800B3184 2138A002 */   addu      $a3, $s5, $zero
  .L800B3188:
    /* A3988 800B3188 0C00D626 */  addiu      $s6, $s6, 0xC
    /* A398C 800B318C 1680013C */  lui        $at, %hi(D_8015E280)
    /* A3990 800B3190 80E220A0 */  sb         $zero, %lo(D_8015E280)($at)
  .L800B3194:
    /* A3994 800B3194 6000A88F */  lw         $t0, 0x60($sp)
    /* A3998 800B3198 00000000 */  nop
    /* A399C 800B319C 05000011 */  beqz       $t0, .L800B31B4
    /* A39A0 800B31A0 2110C002 */   addu      $v0, $s6, $zero
    /* A39A4 800B31A4 D001648E */  lw         $a0, 0x1D0($s3)
    /* A39A8 800B31A8 7D11040C */  jal        func_801045F4
    /* A39AC 800B31AC 00000000 */   nop
    /* A39B0 800B31B0 2110C002 */  addu       $v0, $s6, $zero
  .L800B31B4:
    /* A39B4 800B31B4 A400BF8F */  lw         $ra, 0xA4($sp)
    /* A39B8 800B31B8 A000BE8F */  lw         $fp, 0xA0($sp)
    /* A39BC 800B31BC 9C00B78F */  lw         $s7, 0x9C($sp)
    /* A39C0 800B31C0 9800B68F */  lw         $s6, 0x98($sp)
    /* A39C4 800B31C4 9400B58F */  lw         $s5, 0x94($sp)
    /* A39C8 800B31C8 9000B48F */  lw         $s4, 0x90($sp)
    /* A39CC 800B31CC 8C00B38F */  lw         $s3, 0x8C($sp)
    /* A39D0 800B31D0 8800B28F */  lw         $s2, 0x88($sp)
    /* A39D4 800B31D4 8400B18F */  lw         $s1, 0x84($sp)
    /* A39D8 800B31D8 8000B08F */  lw         $s0, 0x80($sp)
    /* A39DC 800B31DC A800BD27 */  addiu      $sp, $sp, 0xA8
    /* A39E0 800B31E0 0800E003 */  jr         $ra
    /* A39E4 800B31E4 00000000 */   nop
endlabel func_800B2CC0
