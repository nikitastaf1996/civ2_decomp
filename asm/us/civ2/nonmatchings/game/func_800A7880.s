.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A7880, 0x120

glabel func_800A7880
    /* 98080 800A7880 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 98084 800A7884 9400BFAF */  sw         $ra, 0x94($sp)
    /* 98088 800A7888 9000B4AF */  sw         $s4, 0x90($sp)
    /* 9808C 800A788C 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 98090 800A7890 8800B2AF */  sw         $s2, 0x88($sp)
    /* 98094 800A7894 8400B1AF */  sw         $s1, 0x84($sp)
    /* 98098 800A7898 8000B0AF */  sw         $s0, 0x80($sp)
    /* 9809C 800A789C 5DBC030C */  jal        SsSetTickMode
    /* 980A0 800A78A0 03000424 */   addiu     $a0, $zero, 0x3
    /* 980A4 800A78A4 C9B6030C */  jal        SsStart2
    /* 980A8 800A78A8 21900000 */   addu      $s2, $zero, $zero
    /* 980AC 800A78AC 3000B327 */  addiu      $s3, $sp, 0x30
    /* 980B0 800A78B0 1680143C */  lui        $s4, %hi(D_80158D18)
    /* 980B4 800A78B4 188D9426 */  addiu      $s4, $s4, %lo(D_80158D18)
  .L800A78B8:
    /* 980B8 800A78B8 2E00401E */  bgtz       $s2, .L800A7974
    /* 980BC 800A78BC 80881200 */   sll       $s1, $s2, 2
    /* 980C0 800A78C0 21283202 */  addu       $a1, $s1, $s2
    /* 980C4 800A78C4 80280500 */  sll        $a1, $a1, 2
    /* 980C8 800A78C8 1280023C */  lui        $v0, %hi(D_8011F010)
    /* 980CC 800A78CC 10F04224 */  addiu      $v0, $v0, %lo(D_8011F010)
    /* 980D0 800A78D0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 980D4 800A78D4 A587030C */  jal        func_800E1E94
    /* 980D8 800A78D8 2128A200 */   addu      $a1, $a1, $v0
    /* 980DC 800A78DC 1680053C */  lui        $a1, %hi(D_80158CE4)
    /* 980E0 800A78E0 E48CA524 */  addiu      $a1, $a1, %lo(D_80158CE4)
    /* 980E4 800A78E4 9987030C */  jal        func_800E1E64
    /* 980E8 800A78E8 1000A427 */   addiu     $a0, $sp, 0x10
    /* 980EC 800A78EC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 980F0 800A78F0 AFF4030C */  jal        func_800FD2BC
    /* 980F4 800A78F4 21286002 */   addu      $a1, $s3, $zero
    /* 980F8 800A78F8 3C00A48F */  lw         $a0, 0x3C($sp)
    /* 980FC 800A78FC 00000000 */  nop
    /* 98100 800A7900 FF078424 */  addiu      $a0, $a0, 0x7FF
    /* 98104 800A7904 00F80224 */  addiu      $v0, $zero, -0x800
    /* 98108 800A7908 FED4030C */  jal        func_800F53F8
    /* 9810C 800A790C 24208200 */   and       $a0, $a0, $v0
    /* 98110 800A7910 1680033C */  lui        $v1, %hi(D_80158D1C)
    /* 98114 800A7914 1C8D6324 */  addiu      $v1, $v1, %lo(D_80158D1C)
    /* 98118 800A7918 21882302 */  addu       $s1, $s1, $v1
    /* 9811C 800A791C 000022AE */  sw         $v0, 0x0($s1)
    /* 98120 800A7920 7CD6030C */  jal        func_800F59F0
    /* 98124 800A7924 21204000 */   addu      $a0, $v0, $zero
    /* 98128 800A7928 21804000 */  addu       $s0, $v0, $zero
    /* 9812C 800A792C 21206002 */  addu       $a0, $s3, $zero
    /* 98130 800A7930 64F6030C */  jal        func_800FD990
    /* 98134 800A7934 21280002 */   addu      $a1, $s0, $zero
    /* 98138 800A7938 D8F5030C */  jal        func_800FD760
    /* 9813C 800A793C 21206002 */   addu      $a0, $s3, $zero
    /* 98140 800A7940 09D4030C */  jal        SsVabTransCompleted
    /* 98144 800A7944 01000424 */   addiu     $a0, $zero, 0x1
    /* 98148 800A7948 21200002 */  addu       $a0, $s0, $zero
    /* 9814C 800A794C B79F020C */  jal        func_800A7EDC
    /* 98150 800A7950 21280000 */   addu      $a1, $zero, $zero
    /* 98154 800A7954 40181200 */  sll        $v1, $s2, 1
    /* 98158 800A7958 21187400 */  addu       $v1, $v1, $s4
    /* 9815C 800A795C 000062A4 */  sh         $v0, 0x0($v1)
    /* 98160 800A7960 21202002 */  addu       $a0, $s1, $zero
    /* 98164 800A7964 C8D6030C */  jal        func_800F5B20
    /* 98168 800A7968 300C0524 */   addiu     $a1, $zero, 0xC30
    /* 9816C 800A796C 2E9E0208 */  j          .L800A78B8
    /* 98170 800A7970 01005226 */   addiu     $s2, $s2, 0x1
  .L800A7974:
    /* 98174 800A7974 09D4030C */  jal        SsVabTransCompleted
    /* 98178 800A7978 01000424 */   addiu     $a0, $zero, 0x1
    /* 9817C 800A797C 9400BF8F */  lw         $ra, 0x94($sp)
    /* 98180 800A7980 9000B48F */  lw         $s4, 0x90($sp)
    /* 98184 800A7984 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 98188 800A7988 8800B28F */  lw         $s2, 0x88($sp)
    /* 9818C 800A798C 8400B18F */  lw         $s1, 0x84($sp)
    /* 98190 800A7990 8000B08F */  lw         $s0, 0x80($sp)
    /* 98194 800A7994 9800BD27 */  addiu      $sp, $sp, 0x98
    /* 98198 800A7998 0800E003 */  jr         $ra
    /* 9819C 800A799C 00000000 */   nop
endlabel func_800A7880
