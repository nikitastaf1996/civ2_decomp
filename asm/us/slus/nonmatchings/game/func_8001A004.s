.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A004, 0x194

glabel func_8001A004
    /* A804 8001A004 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* A808 8001A008 4400BFAF */  sw         $ra, 0x44($sp)
    /* A80C 8001A00C 4000BEAF */  sw         $fp, 0x40($sp)
    /* A810 8001A010 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* A814 8001A014 3800B6AF */  sw         $s6, 0x38($sp)
    /* A818 8001A018 3400B5AF */  sw         $s5, 0x34($sp)
    /* A81C 8001A01C 3000B4AF */  sw         $s4, 0x30($sp)
    /* A820 8001A020 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* A824 8001A024 2800B2AF */  sw         $s2, 0x28($sp)
    /* A828 8001A028 2400B1AF */  sw         $s1, 0x24($sp)
    /* A82C 8001A02C 2000B0AF */  sw         $s0, 0x20($sp)
    /* A830 8001A030 21A88000 */  addu       $s5, $a0, $zero
    /* A834 8001A034 1800A5AF */  sw         $a1, 0x18($sp)
    /* A838 8001A038 21B8E000 */  addu       $s7, $a3, $zero
    /* A83C 8001A03C 21B0C000 */  addu       $s6, $a2, $zero
    /* A840 8001A040 80001E24 */  addiu      $fp, $zero, 0x80
    /* A844 8001A044 1480023C */  lui        $v0, %hi(D_80139DC8)
    /* A848 8001A048 C89D4224 */  addiu      $v0, $v0, %lo(D_80139DC8)
    /* A84C 8001A04C 0580013C */  lui        $at, %hi(D_800564F4)
    /* A850 8001A050 F46422AC */  sw         $v0, %lo(D_800564F4)($at)
    /* A854 8001A054 21A00000 */  addu       $s4, $zero, $zero
    /* A858 8001A058 01001324 */  addiu      $s3, $zero, 0x1
  .L8001A05C:
    /* A85C 8001A05C 1800B08F */  lw         $s0, 0x18($sp)
    /* A860 8001A060 3F680008 */  j          .L8001A0FC
    /* A864 8001A064 2190A002 */   addu      $s2, $s5, $zero
  .L8001A068:
    /* A868 8001A068 04004014 */  bnez       $v0, .L8001A07C
    /* A86C 8001A06C 21880002 */   addu      $s1, $s0, $zero
    /* A870 8001A070 24001124 */  addiu      $s1, $zero, 0x24
    /* A874 8001A074 20680008 */  j          .L8001A080
    /* A878 8001A078 DCFF1026 */   addiu     $s0, $s0, -0x24
  .L8001A07C:
    /* A87C 8001A07C 21800000 */  addu       $s0, $zero, $zero
  .L8001A080:
    /* A880 8001A080 02000424 */  addiu      $a0, $zero, 0x2
  .L8001A084:
    /* A884 8001A084 1000A527 */  addiu      $a1, $sp, 0x10
    /* A888 8001A088 F6B9000C */  jal        CdControl
    /* A88C 8001A08C 21300000 */   addu      $a2, $zero, $zero
    /* A890 8001A090 FCFF4010 */  beqz       $v0, .L8001A084
    /* A894 8001A094 02000424 */   addiu     $a0, $zero, 0x2
    /* A898 8001A098 21202002 */  addu       $a0, $s1, $zero
    /* A89C 8001A09C 0580053C */  lui        $a1, %hi(D_800564F4)
    /* A8A0 8001A0A0 F464A58C */  lw         $a1, %lo(D_800564F4)($a1)
    /* A8A4 8001A0A4 1BC5000C */  jal        CdRead
    /* A8A8 8001A0A8 2130C003 */   addu      $a2, $fp, $zero
    /* A8AC 8001A0AC 0500E012 */  beqz       $s7, .L8001A0C4
    /* A8B0 8001A0B0 21200000 */   addu      $a0, $zero, $zero
    /* A8B4 8001A0B4 5BC5000C */  jal        CdReadSync
    /* A8B8 8001A0B8 21280000 */   addu      $a1, $zero, $zero
    /* A8BC 8001A0BC 1E004014 */  bnez       $v0, .L8001A138
    /* A8C0 8001A0C0 02000424 */   addiu     $a0, $zero, 0x2
  .L8001A0C4:
    /* A8C4 8001A0C4 00341600 */  sll        $a2, $s6, 16
    /* A8C8 8001A0C8 0580043C */  lui        $a0, %hi(D_800564F4)
    /* A8CC 8001A0CC F464848C */  lw         $a0, %lo(D_800564F4)($a0)
    /* A8D0 8001A0D0 C02A1100 */  sll        $a1, $s1, 11
    /* A8D4 8001A0D4 4B18010C */  jal        SsVabTransBodyPartly
    /* A8D8 8001A0D8 03340600 */   sra       $a2, $a2, 16
    /* A8DC 8001A0DC 00140200 */  sll        $v0, $v0, 16
    /* A8E0 8001A0E0 03140200 */  sra        $v0, $v0, 16
    /* A8E4 8001A0E4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* A8E8 8001A0E8 0F004310 */  beq        $v0, $v1, .L8001A128
    /* A8EC 8001A0EC 00000000 */   nop
    /* A8F0 8001A0F0 C718010C */  jal        SsVabTransCompleted
    /* A8F4 8001A0F4 01000424 */   addiu     $a0, $zero, 0x1
    /* A8F8 8001A0F8 21905102 */  addu       $s2, $s2, $s1
  .L8001A0FC:
    /* A8FC 8001A0FC 21204002 */  addu       $a0, $s2, $zero
    /* A900 8001A100 0EBB000C */  jal        CdIntToPos
    /* A904 8001A104 1000A527 */   addiu     $a1, $sp, 0x10
    /* A908 8001A108 D7FF001E */  bgtz       $s0, .L8001A068
    /* A90C 8001A10C 2500022A */   slti      $v0, $s0, 0x25
  .L8001A110:
    /* A910 8001A110 21186002 */  addu       $v1, $s3, $zero
    /* A914 8001A114 01000224 */  addiu      $v0, $zero, 0x1
    /* A918 8001A118 12006210 */  beq        $v1, $v0, .L8001A164
    /* A91C 8001A11C 00000000 */   nop
    /* A920 8001A120 52680008 */  j          .L8001A148
    /* A924 8001A124 01008226 */   addiu     $v0, $s4, 0x1
  .L8001A128:
    /* A928 8001A128 E766000C */  jal        func_80019B9C
    /* A92C 8001A12C 01000424 */   addiu     $a0, $zero, 0x1
    /* A930 8001A130 44680008 */  j          .L8001A110
    /* A934 8001A134 21980000 */   addu      $s3, $zero, $zero
  .L8001A138:
    /* A938 8001A138 8966000C */  jal        func_80019A24
    /* A93C 8001A13C 2128A002 */   addu      $a1, $s5, $zero
    /* A940 8001A140 44680008 */  j          .L8001A110
    /* A944 8001A144 21980000 */   addu      $s3, $zero, $zero
  .L8001A148:
    /* A948 8001A148 21A04000 */  addu       $s4, $v0, $zero
    /* A94C 8001A14C 00140200 */  sll        $v0, $v0, 16
    /* A950 8001A150 03140200 */  sra        $v0, $v0, 16
    /* A954 8001A154 0A004228 */  slti       $v0, $v0, 0xA
    /* A958 8001A158 C0FF4014 */  bnez       $v0, .L8001A05C
    /* A95C 8001A15C 01001324 */   addiu     $s3, $zero, 0x1
    /* A960 8001A160 21100000 */  addu       $v0, $zero, $zero
  .L8001A164:
    /* A964 8001A164 4400BF8F */  lw         $ra, 0x44($sp)
    /* A968 8001A168 4000BE8F */  lw         $fp, 0x40($sp)
    /* A96C 8001A16C 3C00B78F */  lw         $s7, 0x3C($sp)
    /* A970 8001A170 3800B68F */  lw         $s6, 0x38($sp)
    /* A974 8001A174 3400B58F */  lw         $s5, 0x34($sp)
    /* A978 8001A178 3000B48F */  lw         $s4, 0x30($sp)
    /* A97C 8001A17C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* A980 8001A180 2800B28F */  lw         $s2, 0x28($sp)
    /* A984 8001A184 2400B18F */  lw         $s1, 0x24($sp)
    /* A988 8001A188 2000B08F */  lw         $s0, 0x20($sp)
    /* A98C 8001A18C 4800BD27 */  addiu      $sp, $sp, 0x48
    /* A990 8001A190 0800E003 */  jr         $ra
    /* A994 8001A194 00000000 */   nop
endlabel func_8001A004
