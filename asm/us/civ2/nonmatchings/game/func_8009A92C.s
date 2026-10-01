.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009A92C, 0x1E4

glabel func_8009A92C
    /* 8B12C 8009A92C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8B130 8009A930 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8B134 8009A934 3000B6AF */  sw         $s6, 0x30($sp)
    /* 8B138 8009A938 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 8B13C 8009A93C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8B140 8009A940 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8B144 8009A944 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8B148 8009A948 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8B14C 8009A94C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8B150 8009A950 21A88000 */  addu       $s5, $a0, $zero
    /* 8B154 8009A954 21B0A000 */  addu       $s6, $a1, $zero
    /* 8B158 8009A958 21A0C000 */  addu       $s4, $a2, $zero
    /* 8B15C 8009A95C 2180E000 */  addu       $s0, $a3, $zero
    /* 8B160 8009A960 4800B28F */  lw         $s2, 0x48($sp)
    /* 8B164 8009A964 21200002 */  addu       $a0, $s0, $zero
    /* 8B168 8009A968 1E26020C */  jal        func_80089878
    /* 8B16C 8009A96C 21284002 */   addu      $a1, $s2, $zero
    /* 8B170 8009A970 21884000 */  addu       $s1, $v0, $zero
    /* 8B174 8009A974 5B002006 */  bltz       $s1, .L8009AAE4
    /* 8B178 8009A978 00000000 */   nop
    /* 8B17C 8009A97C 0D004006 */  bltz       $s2, .L8009A9B4
    /* 8B180 8009A980 21180000 */   addu      $v1, $zero, $zero
    /* 8B184 8009A984 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8B188 8009A988 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8B18C 8009A98C 00000000 */  nop
    /* 8B190 8009A990 2A104202 */  slt        $v0, $s2, $v0
    /* 8B194 8009A994 07004010 */  beqz       $v0, .L8009A9B4
    /* 8B198 8009A998 00000000 */   nop
    /* 8B19C 8009A99C 05000006 */  bltz       $s0, .L8009A9B4
    /* 8B1A0 8009A9A0 00000000 */   nop
    /* 8B1A4 8009A9A4 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8B1A8 8009A9A8 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8B1AC 8009A9AC 00000000 */  nop
    /* 8B1B0 8009A9B0 2A180202 */  slt        $v1, $s0, $v0
  .L8009A9B4:
    /* 8B1B4 8009A9B4 4B006010 */  beqz       $v1, .L8009AAE4
    /* 8B1B8 8009A9B8 21200002 */   addu      $a0, $s0, $zero
    /* 8B1BC 8009A9BC 1280133C */  lui        $s3, %hi(D_8011ACB4)
    /* 8B1C0 8009A9C0 B4AC7326 */  addiu      $s3, $s3, %lo(D_8011ACB4)
    /* 8B1C4 8009A9C4 0000668E */  lw         $a2, 0x0($s3)
    /* 8B1C8 8009A9C8 A161020C */  jal        func_80098684
    /* 8B1CC 8009A9CC 21284002 */   addu      $a1, $s2, $zero
    /* 8B1D0 8009A9D0 21204000 */  addu       $a0, $v0, $zero
    /* 8B1D4 8009A9D4 40101100 */  sll        $v0, $s1, 1
    /* 8B1D8 8009A9D8 21105100 */  addu       $v0, $v0, $s1
    /* 8B1DC 8009A9DC 80100200 */  sll        $v0, $v0, 2
    /* 8B1E0 8009A9E0 23105100 */  subu       $v0, $v0, $s1
    /* 8B1E4 8009A9E4 C0280200 */  sll        $a1, $v0, 3
    /* 8B1E8 8009A9E8 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 8B1EC 8009A9EC 21082500 */  addu       $at, $at, $a1
    /* 8B1F0 8009A9F0 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 8B1F4 8009A9F4 00006292 */  lbu        $v0, 0x0($s3)
    /* 8B1F8 8009A9F8 00000000 */  nop
    /* 8B1FC 8009A9FC 1A006210 */  beq        $v1, $v0, .L8009AA68
    /* 8B200 8009AA00 00000000 */   nop
    /* 8B204 8009AA04 17008010 */  beqz       $a0, .L8009AA64
    /* 8B208 8009AA08 21300000 */   addu      $a2, $zero, $zero
    /* 8B20C 8009AA0C 1180013C */  lui        $at, %hi(D_80113EDC)
    /* 8B210 8009AA10 21082500 */  addu       $at, $at, $a1
    /* 8B214 8009AA14 DC3E2280 */  lb         $v0, %lo(D_80113EDC)($at)
    /* 8B218 8009AA18 0000638E */  lw         $v1, 0x0($s3)
    /* 8B21C 8009AA1C 00000000 */  nop
    /* 8B220 8009AA20 07106200 */  srav       $v0, $v0, $v1
    /* 8B224 8009AA24 01004230 */  andi       $v0, $v0, 0x1
    /* 8B228 8009AA28 0E004010 */  beqz       $v0, .L8009AA64
    /* 8B22C 8009AA2C 40101100 */   sll       $v0, $s1, 1
    /* 8B230 8009AA30 21105100 */  addu       $v0, $v0, $s1
    /* 8B234 8009AA34 80100200 */  sll        $v0, $v0, 2
    /* 8B238 8009AA38 23105100 */  subu       $v0, $v0, $s1
    /* 8B23C 8009AA3C C0100200 */  sll        $v0, $v0, 3
    /* 8B240 8009AA40 1180033C */  lui        $v1, %hi(D_80113EDD)
    /* 8B244 8009AA44 DD3E6324 */  addiu      $v1, $v1, %lo(D_80113EDD)
    /* 8B248 8009AA48 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 8B24C 8009AA4C B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 8B250 8009AA50 21104300 */  addu       $v0, $v0, $v1
    /* 8B254 8009AA54 21104400 */  addu       $v0, $v0, $a0
    /* 8B258 8009AA58 00004280 */  lb         $v0, 0x0($v0)
    /* 8B25C 8009AA5C 00000000 */  nop
    /* 8B260 8009AA60 2B300200 */  sltu       $a2, $zero, $v0
  .L8009AA64:
    /* 8B264 8009AA64 2120C000 */  addu       $a0, $a2, $zero
  .L8009AA68:
    /* 8B268 8009AA68 12008014 */  bnez       $a0, .L8009AAB4
    /* 8B26C 8009AA6C 00000000 */   nop
    /* 8B270 8009AA70 1280033C */  lui        $v1, %hi(D_8011A271)
    /* 8B274 8009AA74 71A26324 */  addiu      $v1, $v1, %lo(D_8011A271)
    /* 8B278 8009AA78 00006290 */  lbu        $v0, 0x0($v1)
    /* 8B27C 8009AA7C 00000000 */  nop
    /* 8B280 8009AA80 0C004014 */  bnez       $v0, .L8009AAB4
    /* 8B284 8009AA84 00000000 */   nop
    /* 8B288 8009AA88 E9FF6294 */  lhu        $v0, -0x17($v1)
    /* 8B28C 8009AA8C 00000000 */  nop
    /* 8B290 8009AA90 80004230 */  andi       $v0, $v0, 0x80
    /* 8B294 8009AA94 13004010 */  beqz       $v0, .L8009AAE4
    /* 8B298 8009AA98 00000000 */   nop
    /* 8B29C 8009AA9C 1280023C */  lui        $v0, %hi(D_8011A390)
    /* 8B2A0 8009AAA0 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* 8B2A4 8009AAA4 00000000 */  nop
    /* 8B2A8 8009AAA8 08004230 */  andi       $v0, $v0, 0x8
    /* 8B2AC 8009AAAC 0D004010 */  beqz       $v0, .L8009AAE4
    /* 8B2B0 8009AAB0 00000000 */   nop
  .L8009AAB4:
    /* 8B2B4 8009AAB4 4A02A286 */  lh         $v0, 0x24A($s5)
    /* 8B2B8 8009AAB8 00000000 */  nop
    /* 8B2BC 8009AABC 23A08202 */  subu       $s4, $s4, $v0
    /* 8B2C0 8009AAC0 1000B4AF */  sw         $s4, 0x10($sp)
    /* 8B2C4 8009AAC4 3202A286 */  lh         $v0, 0x232($s5)
    /* 8B2C8 8009AAC8 00000000 */  nop
    /* 8B2CC 8009AACC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8B2D0 8009AAD0 2120A002 */  addu       $a0, $s5, $zero
    /* 8B2D4 8009AAD4 21282002 */  addu       $a1, $s1, $zero
    /* 8B2D8 8009AAD8 21300000 */  addu       $a2, $zero, $zero
    /* 8B2DC 8009AADC 17C0020C */  jal        func_800B005C
    /* 8B2E0 8009AAE0 2138C002 */   addu      $a3, $s6, $zero
  .L8009AAE4:
    /* 8B2E4 8009AAE4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8B2E8 8009AAE8 3000B68F */  lw         $s6, 0x30($sp)
    /* 8B2EC 8009AAEC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 8B2F0 8009AAF0 2800B48F */  lw         $s4, 0x28($sp)
    /* 8B2F4 8009AAF4 2400B38F */  lw         $s3, 0x24($sp)
    /* 8B2F8 8009AAF8 2000B28F */  lw         $s2, 0x20($sp)
    /* 8B2FC 8009AAFC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8B300 8009AB00 1800B08F */  lw         $s0, 0x18($sp)
    /* 8B304 8009AB04 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8B308 8009AB08 0800E003 */  jr         $ra
    /* 8B30C 8009AB0C 00000000 */   nop
endlabel func_8009A92C
