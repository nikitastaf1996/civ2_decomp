.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006A864, 0x154

glabel func_8006A864
    /* 5B064 8006A864 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B068 8006A868 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5B06C 8006A86C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5B070 8006A870 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B074 8006A874 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B078 8006A878 1280123C */  lui        $s2, %hi(D_8011ACBC)
    /* 5B07C 8006A87C BCAC5226 */  addiu      $s2, $s2, %lo(D_8011ACBC)
    /* 5B080 8006A880 0000428E */  lw         $v0, 0x0($s2)
    /* 5B084 8006A884 01001024 */  addiu      $s0, $zero, 0x1
    /* 5B088 8006A888 0B005010 */  beq        $v0, $s0, .L8006A8B8
    /* 5B08C 8006A88C 21880000 */   addu      $s1, $zero, $zero
    /* 5B090 8006A890 1680013C */  lui        $at, %hi(D_80158874)
    /* 5B094 8006A894 748820A0 */  sb         $zero, %lo(D_80158874)($at)
    /* 5B098 8006A898 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B09C 8006A89C 1680013C */  lui        $at, %hi(D_80158876)
    /* 5B0A0 8006A8A0 768822A0 */  sb         $v0, %lo(D_80158876)($at)
    /* 5B0A4 8006A8A4 3374020C */  jal        func_8009D0CC
    /* 5B0A8 8006A8A8 01001124 */   addiu     $s1, $zero, 0x1
    /* 5B0AC 8006A8AC 000050AE */  sw         $s0, 0x0($s2)
    /* 5B0B0 8006A8B0 1680013C */  lui        $at, %hi(D_80158872)
    /* 5B0B4 8006A8B4 728820A0 */  sb         $zero, %lo(D_80158872)($at)
  .L8006A8B8:
    /* 5B0B8 8006A8B8 1280043C */  lui        $a0, %hi(D_8011A268)
    /* 5B0BC 8006A8BC 68A28484 */  lh         $a0, %lo(D_8011A268)($a0)
    /* 5B0C0 8006A8C0 ABF9010C */  jal        func_8007E6AC
    /* 5B0C4 8006A8C4 00000000 */   nop
    /* 5B0C8 8006A8C8 05004014 */  bnez       $v0, .L8006A8E0
    /* 5B0CC 8006A8CC 00000000 */   nop
    /* 5B0D0 8006A8D0 B2A9010C */  jal        func_8006A6C8
    /* 5B0D4 8006A8D4 21200000 */   addu      $a0, $zero, $zero
    /* 5B0D8 8006A8D8 5674020C */  jal        func_8009D158
    /* 5B0DC 8006A8DC 21880000 */   addu      $s1, $zero, $zero
  .L8006A8E0:
    /* 5B0E0 8006A8E0 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 5B0E4 8006A8E4 68A24224 */  addiu      $v0, $v0, %lo(D_8011A268)
    /* 5B0E8 8006A8E8 00005084 */  lh         $s0, 0x0($v0)
    /* 5B0EC 8006A8EC 00000000 */  nop
    /* 5B0F0 8006A8F0 0A000006 */  bltz       $s0, .L8006A91C
    /* 5B0F4 8006A8F4 00000000 */   nop
    /* 5B0F8 8006A8F8 18004284 */  lh         $v0, 0x18($v0)
    /* 5B0FC 8006A8FC 00000000 */  nop
    /* 5B100 8006A900 2A100202 */  slt        $v0, $s0, $v0
    /* 5B104 8006A904 05004010 */  beqz       $v0, .L8006A91C
    /* 5B108 8006A908 00000000 */   nop
    /* 5B10C 8006A90C ABF9010C */  jal        func_8007E6AC
    /* 5B110 8006A910 21200002 */   addu      $a0, $s0, $zero
    /* 5B114 8006A914 07004014 */  bnez       $v0, .L8006A934
    /* 5B118 8006A918 40101000 */   sll       $v0, $s0, 1
  .L8006A91C:
    /* 5B11C 8006A91C 1680013C */  lui        $at, %hi(D_80158872)
    /* 5B120 8006A920 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* 5B124 8006A924 96A9010C */  jal        func_8006A658
    /* 5B128 8006A928 21200000 */   addu      $a0, $zero, $zero
    /* 5B12C 8006A92C 67AA0108 */  j          .L8006A99C
    /* 5B130 8006A930 00000000 */   nop
  .L8006A934:
    /* 5B134 8006A934 21105000 */  addu       $v0, $v0, $s0
    /* 5B138 8006A938 80100200 */  sll        $v0, $v0, 2
    /* 5B13C 8006A93C 21105000 */  addu       $v0, $v0, $s0
    /* 5B140 8006A940 40100200 */  sll        $v0, $v0, 1
    /* 5B144 8006A944 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 5B148 8006A948 21082200 */  addu       $at, $at, $v0
    /* 5B14C 8006A94C B4D62594 */  lhu        $a1, %lo(D_8010D6B4)($at)
    /* 5B150 8006A950 1680013C */  lui        $at, %hi(D_80158886)
    /* 5B154 8006A954 868825A4 */  sh         $a1, %lo(D_80158886)($at)
    /* 5B158 8006A958 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 5B15C 8006A95C 21082200 */  addu       $at, $at, $v0
    /* 5B160 8006A960 B6D62694 */  lhu        $a2, %lo(D_8010D6B6)($at)
    /* 5B164 8006A964 1680013C */  lui        $at, %hi(D_80158888)
    /* 5B168 8006A968 888826A4 */  sh         $a2, %lo(D_80158888)($at)
    /* 5B16C 8006A96C 07002012 */  beqz       $s1, .L8006A98C
    /* 5B170 8006A970 002C0500 */   sll       $a1, $a1, 16
    /* 5B174 8006A974 00340600 */  sll        $a2, $a2, 16
    /* 5B178 8006A978 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 5B17C 8006A97C 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 5B180 8006A980 032C0500 */  sra        $a1, $a1, 16
    /* 5B184 8006A984 BC7B020C */  jal        func_8009EEF0
    /* 5B188 8006A988 03340600 */   sra       $a2, $a2, 16
  .L8006A98C:
    /* 5B18C 8006A98C DD19010C */  jal        func_80046774
    /* 5B190 8006A990 00000000 */   nop
    /* 5B194 8006A994 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B198 8006A998 E80F82A3 */  sb         $v0, %gp_rel(D_801594C0)($gp)
  .L8006A99C:
    /* 5B19C 8006A99C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 5B1A0 8006A9A0 1800B28F */  lw         $s2, 0x18($sp)
    /* 5B1A4 8006A9A4 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B1A8 8006A9A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B1AC 8006A9AC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5B1B0 8006A9B0 0800E003 */  jr         $ra
    /* 5B1B4 8006A9B4 00000000 */   nop
endlabel func_8006A864
