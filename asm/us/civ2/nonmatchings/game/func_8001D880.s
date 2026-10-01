.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D880, 0x1B0

glabel func_8001D880
    /* E080 8001D880 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* E084 8001D884 2000BFAF */  sw         $ra, 0x20($sp)
    /* E088 8001D888 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* E08C 8001D88C 1800B2AF */  sw         $s2, 0x18($sp)
    /* E090 8001D890 1400B1AF */  sw         $s1, 0x14($sp)
    /* E094 8001D894 1000B0AF */  sw         $s0, 0x10($sp)
    /* E098 8001D898 1680023C */  lui        $v0, %hi(D_80158864)
    /* E09C 8001D89C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E0A0 8001D8A0 00000000 */  nop
    /* E0A4 8001D8A4 08005380 */  lb         $s3, 0x8($v0)
    /* E0A8 8001D8A8 00000000 */  nop
    /* E0AC 8001D8AC 40101300 */  sll        $v0, $s3, 1
    /* E0B0 8001D8B0 21105300 */  addu       $v0, $v0, $s3
    /* E0B4 8001D8B4 80100200 */  sll        $v0, $v0, 2
    /* E0B8 8001D8B8 23105300 */  subu       $v0, $v0, $s3
    /* E0BC 8001D8BC 00110200 */  sll        $v0, $v0, 4
    /* E0C0 8001D8C0 23105300 */  subu       $v0, $v0, $s3
    /* E0C4 8001D8C4 C0100200 */  sll        $v0, $v0, 3
    /* E0C8 8001D8C8 1180013C */  lui        $at, %hi(D_801176A7)
    /* E0CC 8001D8CC 21082200 */  addu       $at, $at, $v0
    /* E0D0 8001D8D0 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* E0D4 8001D8D4 00000000 */  nop
    /* E0D8 8001D8D8 4D004010 */  beqz       $v0, .L8001DA10
    /* E0DC 8001D8DC 01001124 */   addiu     $s1, $zero, 0x1
    /* E0E0 8001D8E0 40101300 */  sll        $v0, $s3, 1
    /* E0E4 8001D8E4 21105300 */  addu       $v0, $v0, $s3
    /* E0E8 8001D8E8 80100200 */  sll        $v0, $v0, 2
    /* E0EC 8001D8EC 23105300 */  subu       $v0, $v0, $s3
    /* E0F0 8001D8F0 00110200 */  sll        $v0, $v0, 4
    /* E0F4 8001D8F4 23105300 */  subu       $v0, $v0, $s3
    /* E0F8 8001D8F8 C0900200 */  sll        $s2, $v0, 3
  .L8001D8FC:
    /* E0FC 8001D8FC 2700222A */  slti       $v0, $s1, 0x27
    /* E100 8001D900 43004010 */  beqz       $v0, .L8001DA10
    /* E104 8001D904 00000000 */   nop
    /* E108 8001D908 1680043C */  lui        $a0, %hi(D_80158860)
    /* E10C 8001D90C 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* E110 8001D910 C826020C */  jal        func_80089B20
    /* E114 8001D914 21282002 */   addu      $a1, $s1, $zero
    /* E118 8001D918 3B004010 */  beqz       $v0, .L8001DA08
    /* E11C 8001D91C 21206002 */   addu      $a0, $s3, $zero
    /* E120 8001D920 C875000C */  jal        func_8001D720
    /* E124 8001D924 21282002 */   addu      $a1, $s1, $zero
    /* E128 8001D928 1180013C */  lui        $at, %hi(D_80117694)
    /* E12C 8001D92C 21083200 */  addu       $at, $at, $s2
    /* E130 8001D930 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* E134 8001D934 00000000 */  nop
    /* E138 8001D938 23186200 */  subu       $v1, $v1, $v0
    /* E13C 8001D93C 1180013C */  lui        $at, %hi(D_80117694)
    /* E140 8001D940 21083200 */  addu       $at, $at, $s2
    /* E144 8001D944 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* E148 8001D948 2F006104 */  bgez       $v1, .L8001DA08
    /* E14C 8001D94C 21282002 */   addu      $a1, $s1, $zero
    /* E150 8001D950 1180013C */  lui        $at, %hi(D_80117694)
    /* E154 8001D954 21083200 */  addu       $at, $at, $s2
    /* E158 8001D958 947620AC */  sw         $zero, %lo(D_80117694)($at)
    /* E15C 8001D95C 1680043C */  lui        $a0, %hi(D_80158860)
    /* E160 8001D960 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* E164 8001D964 E926020C */  jal        func_80089BA4
    /* E168 8001D968 21300000 */   addu      $a2, $zero, $zero
    /* E16C 8001D96C C0801100 */  sll        $s0, $s1, 3
    /* E170 8001D970 1180013C */  lui        $at, %hi(D_8010D064)
    /* E174 8001D974 21083000 */  addu       $at, $at, $s0
    /* E178 8001D978 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* E17C 8001D97C ABAC020C */  jal        func_800AB2AC
    /* E180 8001D980 01000424 */   addiu     $a0, $zero, 0x1
    /* E184 8001D984 1180013C */  lui        $at, %hi(D_8010D068)
    /* E188 8001D988 21083000 */  addu       $at, $at, $s0
    /* E18C 8001D98C 68D02390 */  lbu        $v1, %lo(D_8010D068)($at)
    /* E190 8001D990 6800828F */  lw         $v0, %gp_rel(D_80158540)($gp)
    /* E194 8001D994 00000000 */  nop
    /* E198 8001D998 18006200 */  mult       $v1, $v0
    /* E19C 8001D99C 12380000 */  mflo       $a3
    /* E1A0 8001D9A0 1280013C */  lui        $at, %hi(D_8011FF28)
    /* E1A4 8001D9A4 28FF27AC */  sw         $a3, %lo(D_8011FF28)($at)
    /* E1A8 8001D9A8 21301102 */  addu       $a2, $s0, $s1
    /* E1AC 8001D9AC 80300600 */  sll        $a2, $a2, 2
    /* E1B0 8001D9B0 2130D100 */  addu       $a2, $a2, $s1
    /* E1B4 8001D9B4 80300600 */  sll        $a2, $a2, 2
    /* E1B8 8001D9B8 1380023C */  lui        $v0, %hi(D_80131638)
    /* E1BC 8001D9BC 38164224 */  addiu      $v0, $v0, %lo(D_80131638)
    /* E1C0 8001D9C0 591B0424 */  addiu      $a0, $zero, 0x1B59
    /* E1C4 8001D9C4 21280000 */  addu       $a1, $zero, $zero
    /* E1C8 8001D9C8 2963000C */  jal        func_80018CA4
    /* E1CC 8001D9CC 2130C200 */   addu      $a2, $a2, $v0
    /* E1D0 8001D9D0 1180013C */  lui        $at, %hi(D_8010D068)
    /* E1D4 8001D9D4 21083000 */  addu       $at, $at, $s0
    /* E1D8 8001D9D8 68D02390 */  lbu        $v1, %lo(D_8010D068)($at)
    /* E1DC 8001D9DC 6800828F */  lw         $v0, %gp_rel(D_80158540)($gp)
    /* E1E0 8001D9E0 00000000 */  nop
    /* E1E4 8001D9E4 18006200 */  mult       $v1, $v0
    /* E1E8 8001D9E8 1180013C */  lui        $at, %hi(D_80117694)
    /* E1EC 8001D9EC 21083200 */  addu       $at, $at, $s2
    /* E1F0 8001D9F0 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* E1F4 8001D9F4 12380000 */  mflo       $a3
    /* E1F8 8001D9F8 2110E200 */  addu       $v0, $a3, $v0
    /* E1FC 8001D9FC 1180013C */  lui        $at, %hi(D_80117694)
    /* E200 8001DA00 21083200 */  addu       $at, $at, $s2
    /* E204 8001DA04 947622AC */  sw         $v0, %lo(D_80117694)($at)
  .L8001DA08:
    /* E208 8001DA08 3F760008 */  j          .L8001D8FC
    /* E20C 8001DA0C 01003126 */   addiu     $s1, $s1, 0x1
  .L8001DA10:
    /* E210 8001DA10 2000BF8F */  lw         $ra, 0x20($sp)
    /* E214 8001DA14 1C00B38F */  lw         $s3, 0x1C($sp)
    /* E218 8001DA18 1800B28F */  lw         $s2, 0x18($sp)
    /* E21C 8001DA1C 1400B18F */  lw         $s1, 0x14($sp)
    /* E220 8001DA20 1000B08F */  lw         $s0, 0x10($sp)
    /* E224 8001DA24 2800BD27 */  addiu      $sp, $sp, 0x28
    /* E228 8001DA28 0800E003 */  jr         $ra
    /* E22C 8001DA2C 00000000 */   nop
endlabel func_8001D880
