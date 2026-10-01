.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BF8BC, 0x180

glabel func_800BF8BC
    /* B00BC 800BF8BC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B00C0 800BF8C0 1280073C */  lui        $a3, %hi(D_801210D0)
    /* B00C4 800BF8C4 D010E724 */  addiu      $a3, $a3, %lo(D_801210D0)
    /* B00C8 800BF8C8 2400BFAF */  sw         $ra, 0x24($sp)
    /* B00CC 800BF8CC 2000B4AF */  sw         $s4, 0x20($sp)
    /* B00D0 800BF8D0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B00D4 800BF8D4 1800B2AF */  sw         $s2, 0x18($sp)
    /* B00D8 800BF8D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* B00DC 800BF8DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B00E0 800BF8E0 0000E28C */  lw         $v0, 0x0($a3)
    /* B00E4 800BF8E4 00000000 */  nop
    /* B00E8 800BF8E8 2328A200 */  subu       $a1, $a1, $v0
    /* B00EC 800BF8EC 002C0500 */  sll        $a1, $a1, 16
    /* B00F0 800BF8F0 032C0500 */  sra        $a1, $a1, 16
    /* B00F4 800BF8F4 4800A004 */  bltz       $a1, .L800BFA18
    /* B00F8 800BF8F8 00000000 */   nop
    /* B00FC 800BF8FC 1280023C */  lui        $v0, %hi(D_801210D8)
    /* B0100 800BF900 D810428C */  lw         $v0, %lo(D_801210D8)($v0)
    /* B0104 800BF904 00000000 */  nop
    /* B0108 800BF908 1A00A200 */  div        $zero, $a1, $v0
    /* B010C 800BF90C 02004014 */  bnez       $v0, .L800BF918
    /* B0110 800BF910 00000000 */   nop
    /* B0114 800BF914 0D000700 */  break      7
  .L800BF918:
    /* B0118 800BF918 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B011C 800BF91C 04004114 */  bne        $v0, $at, .L800BF930
    /* B0120 800BF920 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B0124 800BF924 0200A114 */  bne        $a1, $at, .L800BF930
    /* B0128 800BF928 00000000 */   nop
    /* B012C 800BF92C 0D000600 */  break      6
  .L800BF930:
    /* B0130 800BF930 12280000 */  mflo       $a1
    /* B0134 800BF934 1280063C */  lui        $a2, %hi(D_801210CC)
    /* B0138 800BF938 CC10C68C */  lw         $a2, %lo(D_801210CC)($a2)
    /* B013C 800BF93C 00000000 */  nop
    /* B0140 800BF940 2A10A600 */  slt        $v0, $a1, $a2
    /* B0144 800BF944 34004010 */  beqz       $v0, .L800BFA18
    /* B0148 800BF948 FEFF8224 */   addiu     $v0, $a0, -0x2
    /* B014C 800BF94C 00140200 */  sll        $v0, $v0, 16
    /* B0150 800BF950 031C0200 */  sra        $v1, $v0, 16
    /* B0154 800BF954 30006004 */  bltz       $v1, .L800BFA18
    /* B0158 800BF958 00000000 */   nop
    /* B015C 800BF95C 1280023C */  lui        $v0, %hi(D_801210F0)
    /* B0160 800BF960 F010428C */  lw         $v0, %lo(D_801210F0)($v0)
    /* B0164 800BF964 00000000 */  nop
    /* B0168 800BF968 1A006200 */  div        $zero, $v1, $v0
    /* B016C 800BF96C 02004014 */  bnez       $v0, .L800BF978
    /* B0170 800BF970 00000000 */   nop
    /* B0174 800BF974 0D000700 */  break      7
  .L800BF978:
    /* B0178 800BF978 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B017C 800BF97C 04004114 */  bne        $v0, $at, .L800BF990
    /* B0180 800BF980 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B0184 800BF984 02006114 */  bne        $v1, $at, .L800BF990
    /* B0188 800BF988 00000000 */   nop
    /* B018C 800BF98C 0D000600 */  break      6
  .L800BF990:
    /* B0190 800BF990 12180000 */  mflo       $v1
    /* B0194 800BF994 00000000 */  nop
    /* B0198 800BF998 03006228 */  slti       $v0, $v1, 0x3
    /* B019C 800BF99C 1E004010 */  beqz       $v0, .L800BFA18
    /* B01A0 800BF9A0 1800C300 */   mult      $a2, $v1
    /* B01A4 800BF9A4 21880000 */  addu       $s1, $zero, $zero
    /* B01A8 800BF9A8 21800000 */  addu       $s0, $zero, $zero
    /* B01AC 800BF9AC F4FFF324 */  addiu      $s3, $a3, -0xC
    /* B01B0 800BF9B0 1280023C */  lui        $v0, %hi(D_801210C8)
    /* B01B4 800BF9B4 C810428C */  lw         $v0, %lo(D_801210C8)($v0)
    /* B01B8 800BF9B8 01001424 */  addiu      $s4, $zero, 0x1
    /* B01BC 800BF9BC 21104500 */  addu       $v0, $v0, $a1
    /* B01C0 800BF9C0 12400000 */  mflo       $t0
    /* B01C4 800BF9C4 21904800 */  addu       $s2, $v0, $t0
  .L800BF9C8:
    /* B01C8 800BF9C8 0000648E */  lw         $a0, 0x0($s3)
    /* B01CC 800BF9CC 8ACA010C */  jal        func_80072A28
    /* B01D0 800BF9D0 21280002 */   addu      $a1, $s0, $zero
    /* B01D4 800BF9D4 0C004010 */  beqz       $v0, .L800BFA08
    /* B01D8 800BF9D8 00000000 */   nop
    /* B01DC 800BF9DC 01003126 */  addiu      $s1, $s1, 0x1
    /* B01E0 800BF9E0 FFFF2226 */  addiu      $v0, $s1, -0x1
    /* B01E4 800BF9E4 08005214 */  bne        $v0, $s2, .L800BFA08
    /* B01E8 800BF9E8 01080424 */   addiu     $a0, $zero, 0x801
    /* B01EC 800BF9EC 149C020C */  jal        func_800A7050
    /* B01F0 800BF9F0 21280002 */   addu      $a1, $s0, $zero
    /* B01F4 800BF9F4 31DE030C */  jal        func_800F78C4
    /* B01F8 800BF9F8 ECFC6426 */   addiu     $a0, $s3, -0x314
    /* B01FC 800BF9FC 300B94AF */  sw         $s4, %gp_rel(D_80159008)($gp)
    /* B0200 800BFA00 86FE0208 */  j          .L800BFA18
    /* B0204 800BFA04 00000000 */   nop
  .L800BFA08:
    /* B0208 800BFA08 01001026 */  addiu      $s0, $s0, 0x1
    /* B020C 800BFA0C 5D00022A */  slti       $v0, $s0, 0x5D
    /* B0210 800BFA10 EDFF4014 */  bnez       $v0, .L800BF9C8
    /* B0214 800BFA14 00000000 */   nop
  .L800BFA18:
    /* B0218 800BFA18 2400BF8F */  lw         $ra, 0x24($sp)
    /* B021C 800BFA1C 2000B48F */  lw         $s4, 0x20($sp)
    /* B0220 800BFA20 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B0224 800BFA24 1800B28F */  lw         $s2, 0x18($sp)
    /* B0228 800BFA28 1400B18F */  lw         $s1, 0x14($sp)
    /* B022C 800BFA2C 1000B08F */  lw         $s0, 0x10($sp)
    /* B0230 800BFA30 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B0234 800BFA34 0800E003 */  jr         $ra
    /* B0238 800BFA38 00000000 */   nop
endlabel func_800BF8BC
