.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AB0CC, 0x1E0

glabel func_800AB0CC
    /* 9B8CC 800AB0CC A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 9B8D0 800AB0D0 5000BFAF */  sw         $ra, 0x50($sp)
    /* 9B8D4 800AB0D4 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 9B8D8 800AB0D8 4800B4AF */  sw         $s4, 0x48($sp)
    /* 9B8DC 800AB0DC 4400B3AF */  sw         $s3, 0x44($sp)
    /* 9B8E0 800AB0E0 4000B2AF */  sw         $s2, 0x40($sp)
    /* 9B8E4 800AB0E4 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 9B8E8 800AB0E8 3800B0AF */  sw         $s0, 0x38($sp)
    /* 9B8EC 800AB0EC 21908000 */  addu       $s2, $a0, $zero
    /* 9B8F0 800AB0F0 2198A000 */  addu       $s3, $a1, $zero
    /* 9B8F4 800AB0F4 000060A2 */  sb         $zero, 0x0($s3)
    /* 9B8F8 800AB0F8 1280143C */  lui        $s4, %hi(D_8011FF28)
    /* 9B8FC 800AB0FC 28FF9426 */  addiu      $s4, $s4, %lo(D_8011FF28)
    /* 9B900 800AB100 04001524 */  addiu      $s5, $zero, 0x4
    /* 9B904 800AB104 21204002 */  addu       $a0, $s2, $zero
  .L800AB108:
    /* 9B908 800AB108 B187030C */  jal        func_800E1EC4
    /* 9B90C 800AB10C 25000524 */   addiu     $a1, $zero, 0x25
    /* 9B910 800AB110 21884000 */  addu       $s1, $v0, $zero
    /* 9B914 800AB114 02002012 */  beqz       $s1, .L800AB120
    /* 9B918 800AB118 00000000 */   nop
    /* 9B91C 800AB11C 000020A2 */  sb         $zero, 0x0($s1)
  .L800AB120:
    /* 9B920 800AB120 00004282 */  lb         $v0, 0x0($s2)
    /* 9B924 800AB124 00000000 */  nop
    /* 9B928 800AB128 03004010 */  beqz       $v0, .L800AB138
    /* 9B92C 800AB12C 21206002 */   addu      $a0, $s3, $zero
    /* 9B930 800AB130 9987030C */  jal        func_800E1E64
    /* 9B934 800AB134 21284002 */   addu      $a1, $s2, $zero
  .L800AB138:
    /* 9B938 800AB138 52002012 */  beqz       $s1, .L800AB284
    /* 9B93C 800AB13C 01003126 */   addiu     $s1, $s1, 0x1
    /* 9B940 800AB140 21902002 */  addu       $s2, $s1, $zero
    /* 9B944 800AB144 21202002 */  addu       $a0, $s1, $zero
    /* 9B948 800AB148 1680053C */  lui        $a1, %hi(D_80158D54)
    /* 9B94C 800AB14C 548DA524 */  addiu      $a1, $a1, %lo(D_80158D54)
    /* 9B950 800AB150 CB3A030C */  jal        func_800CEB2C
    /* 9B954 800AB154 06000624 */   addiu     $a2, $zero, 0x6
    /* 9B958 800AB158 0D004014 */  bnez       $v0, .L800AB190
    /* 9B95C 800AB15C 21202002 */   addu      $a0, $s1, $zero
    /* 9B960 800AB160 8D87030C */  jal        func_800E1E34
    /* 9B964 800AB164 06002426 */   addiu     $a0, $s1, 0x6
    /* 9B968 800AB168 80180200 */  sll        $v1, $v0, 2
    /* 9B96C 800AB16C 21186200 */  addu       $v1, $v1, $v0
    /* 9B970 800AB170 00190300 */  sll        $v1, $v1, 4
    /* 9B974 800AB174 1280053C */  lui        $a1, %hi(D_8011FCF8)
    /* 9B978 800AB178 F8FCA524 */  addiu      $a1, $a1, %lo(D_8011FCF8)
    /* 9B97C 800AB17C 21206002 */  addu       $a0, $s3, $zero
    /* 9B980 800AB180 9987030C */  jal        func_800E1E64
    /* 9B984 800AB184 21286500 */   addu      $a1, $v1, $a1
    /* 9B988 800AB188 9FAC0208 */  j          .L800AB27C
    /* 9B98C 800AB18C 07003226 */   addiu     $s2, $s1, 0x7
  .L800AB190:
    /* 9B990 800AB190 1680053C */  lui        $a1, %hi(D_80158D5C)
    /* 9B994 800AB194 5C8DA524 */  addiu      $a1, $a1, %lo(D_80158D5C)
    /* 9B998 800AB198 A187030C */  jal        func_800E1E84
    /* 9B99C 800AB19C 06000624 */   addiu     $a2, $zero, 0x6
    /* 9B9A0 800AB1A0 0E004014 */  bnez       $v0, .L800AB1DC
    /* 9B9A4 800AB1A4 21202002 */   addu      $a0, $s1, $zero
    /* 9B9A8 800AB1A8 8D87030C */  jal        func_800E1E34
    /* 9B9AC 800AB1AC 06002426 */   addiu     $a0, $s1, 0x6
    /* 9B9B0 800AB1B0 80100200 */  sll        $v0, $v0, 2
    /* 9B9B4 800AB1B4 21105400 */  addu       $v0, $v0, $s4
    /* 9B9B8 800AB1B8 0000448C */  lw         $a0, 0x0($v0)
    /* 9B9BC 800AB1BC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 9B9C0 800AB1C0 C50A040C */  jal        func_80102B14
    /* 9B9C4 800AB1C4 0A000624 */   addiu     $a2, $zero, 0xA
    /* 9B9C8 800AB1C8 21206002 */  addu       $a0, $s3, $zero
    /* 9B9CC 800AB1CC 9987030C */  jal        func_800E1E64
    /* 9B9D0 800AB1D0 1000A527 */   addiu     $a1, $sp, 0x10
    /* 9B9D4 800AB1D4 9FAC0208 */  j          .L800AB27C
    /* 9B9D8 800AB1D8 07005226 */   addiu     $s2, $s2, 0x7
  .L800AB1DC:
    /* 9B9DC 800AB1DC 1680053C */  lui        $a1, %hi(D_80158D64)
    /* 9B9E0 800AB1E0 648DA524 */  addiu      $a1, $a1, %lo(D_80158D64)
    /* 9B9E4 800AB1E4 A187030C */  jal        func_800E1E84
    /* 9B9E8 800AB1E8 03000624 */   addiu     $a2, $zero, 0x3
    /* 9B9EC 800AB1EC 1A004014 */  bnez       $v0, .L800AB258
    /* 9B9F0 800AB1F0 25000224 */   addiu     $v0, $zero, 0x25
    /* 9B9F4 800AB1F4 8D87030C */  jal        func_800E1E34
    /* 9B9F8 800AB1F8 03002426 */   addiu     $a0, $s1, 0x3
    /* 9B9FC 800AB1FC 80100200 */  sll        $v0, $v0, 2
    /* 9BA00 800AB200 21105400 */  addu       $v0, $v0, $s4
    /* 9BA04 800AB204 0000448C */  lw         $a0, 0x0($v0)
    /* 9BA08 800AB208 1000A527 */  addiu      $a1, $sp, 0x10
    /* 9BA0C 800AB20C C50A040C */  jal        func_80102B14
    /* 9BA10 800AB210 10000624 */   addiu     $a2, $zero, 0x10
    /* 9BA14 800AB214 21800000 */  addu       $s0, $zero, $zero
  .L800AB218:
    /* 9BA18 800AB218 AD87030C */  jal        func_800E1EB4
    /* 9BA1C 800AB21C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 9BA20 800AB220 2310A202 */  subu       $v0, $s5, $v0
    /* 9BA24 800AB224 2B100202 */  sltu       $v0, $s0, $v0
    /* 9BA28 800AB228 07004010 */  beqz       $v0, .L800AB248
    /* 9BA2C 800AB22C 21206002 */   addu      $a0, $s3, $zero
    /* 9BA30 800AB230 1680053C */  lui        $a1, %hi(D_80158D68)
    /* 9BA34 800AB234 688DA524 */  addiu      $a1, $a1, %lo(D_80158D68)
    /* 9BA38 800AB238 9987030C */  jal        func_800E1E64
    /* 9BA3C 800AB23C 21206002 */   addu      $a0, $s3, $zero
    /* 9BA40 800AB240 86AC0208 */  j          .L800AB218
    /* 9BA44 800AB244 01001026 */   addiu     $s0, $s0, 0x1
  .L800AB248:
    /* 9BA48 800AB248 9987030C */  jal        func_800E1E64
    /* 9BA4C 800AB24C 1000A527 */   addiu     $a1, $sp, 0x10
    /* 9BA50 800AB250 9FAC0208 */  j          .L800AB27C
    /* 9BA54 800AB254 04005226 */   addiu     $s2, $s2, 0x4
  .L800AB258:
    /* 9BA58 800AB258 00002382 */  lb         $v1, 0x0($s1)
    /* 9BA5C 800AB25C 00000000 */  nop
    /* 9BA60 800AB260 06006214 */  bne        $v1, $v0, .L800AB27C
    /* 9BA64 800AB264 00000000 */   nop
    /* 9BA68 800AB268 1680053C */  lui        $a1, %hi(D_80158D6C)
    /* 9BA6C 800AB26C 6C8DA524 */  addiu      $a1, $a1, %lo(D_80158D6C)
    /* 9BA70 800AB270 9987030C */  jal        func_800E1E64
    /* 9BA74 800AB274 21206002 */   addu      $a0, $s3, $zero
    /* 9BA78 800AB278 01005226 */  addiu      $s2, $s2, 0x1
  .L800AB27C:
    /* 9BA7C 800AB27C A2FF2016 */  bnez       $s1, .L800AB108
    /* 9BA80 800AB280 21204002 */   addu      $a0, $s2, $zero
  .L800AB284:
    /* 9BA84 800AB284 5000BF8F */  lw         $ra, 0x50($sp)
    /* 9BA88 800AB288 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 9BA8C 800AB28C 4800B48F */  lw         $s4, 0x48($sp)
    /* 9BA90 800AB290 4400B38F */  lw         $s3, 0x44($sp)
    /* 9BA94 800AB294 4000B28F */  lw         $s2, 0x40($sp)
    /* 9BA98 800AB298 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 9BA9C 800AB29C 3800B08F */  lw         $s0, 0x38($sp)
    /* 9BAA0 800AB2A0 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 9BAA4 800AB2A4 0800E003 */  jr         $ra
    /* 9BAA8 800AB2A8 00000000 */   nop
endlabel func_800AB0CC
