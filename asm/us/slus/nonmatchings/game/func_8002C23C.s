.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C23C, 0xF0

glabel func_8002C23C
    /* 1CA3C 8002C23C D8FEBD27 */  addiu      $sp, $sp, -0x128
    /* 1CA40 8002C240 2401BFAF */  sw         $ra, 0x124($sp)
    /* 1CA44 8002C244 2001B2AF */  sw         $s2, 0x120($sp)
    /* 1CA48 8002C248 1C01B1AF */  sw         $s1, 0x11C($sp)
    /* 1CA4C 8002C24C 1801B0AF */  sw         $s0, 0x118($sp)
    /* 1CA50 8002C250 21808000 */  addu       $s0, $a0, $zero
    /* 1CA54 8002C254 08001224 */  addiu      $s2, $zero, 0x8
    /* 1CA58 8002C258 1000118E */  lw         $s1, 0x10($s0)
    /* 1CA5C 8002C25C 80030224 */  addiu      $v0, $zero, 0x380
    /* 1CA60 8002C260 1001A2A7 */  sh         $v0, 0x110($sp)
    /* 1CA64 8002C264 0C000292 */  lbu        $v0, 0xC($s0)
    /* 1CA68 8002C268 00000000 */  nop
    /* 1CA6C 8002C26C 00014224 */  addiu      $v0, $v0, 0x100
    /* 1CA70 8002C270 1201A2A7 */  sh         $v0, 0x112($sp)
    /* 1CA74 8002C274 1401B2A7 */  sh         $s2, 0x114($sp)
    /* 1CA78 8002C278 10000224 */  addiu      $v0, $zero, 0x10
    /* 1CA7C 8002C27C 1601A2A7 */  sh         $v0, 0x116($sp)
    /* 1CA80 8002C280 00002292 */  lbu        $v0, 0x0($s1)
    /* 1CA84 8002C284 00000000 */  nop
    /* 1CA88 8002C288 21004010 */  beqz       $v0, .L8002C310
    /* 1CA8C 8002C28C 1000A427 */   addiu     $a0, $sp, 0x10
  .L8002C290:
    /* 1CA90 8002C290 826D000C */  jal        func_8001B608
    /* 1CA94 8002C294 00010524 */   addiu     $a1, $zero, 0x100
    /* 1CA98 8002C298 06000292 */  lbu        $v0, 0x6($s0)
    /* 1CA9C 8002C29C 00000000 */  nop
    /* 1CAA0 8002C2A0 08004010 */  beqz       $v0, .L8002C2C4
    /* 1CAA4 8002C2A4 00000000 */   nop
    /* 1CAA8 8002C2A8 21202002 */  addu       $a0, $s1, $zero
    /* 1CAAC 8002C2AC 04000692 */  lbu        $a2, 0x4($s0)
    /* 1CAB0 8002C2B0 05000792 */  lbu        $a3, 0x5($s0)
    /* 1CAB4 8002C2B4 23B0000C */  jal        func_8002C08C
    /* 1CAB8 8002C2B8 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1CABC 8002C2BC B7B00008 */  j          .L8002C2DC
    /* 1CAC0 8002C2C0 01003126 */   addiu     $s1, $s1, 0x1
  .L8002C2C4:
    /* 1CAC4 8002C2C4 21202002 */  addu       $a0, $s1, $zero
    /* 1CAC8 8002C2C8 04000692 */  lbu        $a2, 0x4($s0)
    /* 1CACC 8002C2CC 05000792 */  lbu        $a3, 0x5($s0)
    /* 1CAD0 8002C2D0 F5AF000C */  jal        func_8002BFD4
    /* 1CAD4 8002C2D4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1CAD8 8002C2D8 01003126 */  addiu      $s1, $s1, 0x1
  .L8002C2DC:
    /* 1CADC 8002C2DC 1001A427 */  addiu      $a0, $sp, 0x110
    /* 1CAE0 8002C2E0 E5CF000C */  jal        LoadImage
    /* 1CAE4 8002C2E4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1CAE8 8002C2E8 3ACF000C */  jal        DrawSync
    /* 1CAEC 8002C2EC 21200000 */   addu      $a0, $zero, $zero
    /* 1CAF0 8002C2F0 1001A297 */  lhu        $v0, 0x110($sp)
    /* 1CAF4 8002C2F4 00000000 */  nop
    /* 1CAF8 8002C2F8 21105200 */  addu       $v0, $v0, $s2
    /* 1CAFC 8002C2FC 1001A2A7 */  sh         $v0, 0x110($sp)
    /* 1CB00 8002C300 00002292 */  lbu        $v0, 0x0($s1)
    /* 1CB04 8002C304 00000000 */  nop
    /* 1CB08 8002C308 E1FF4014 */  bnez       $v0, .L8002C290
    /* 1CB0C 8002C30C 1000A427 */   addiu     $a0, $sp, 0x10
  .L8002C310:
    /* 1CB10 8002C310 2401BF8F */  lw         $ra, 0x124($sp)
    /* 1CB14 8002C314 2001B28F */  lw         $s2, 0x120($sp)
    /* 1CB18 8002C318 1C01B18F */  lw         $s1, 0x11C($sp)
    /* 1CB1C 8002C31C 1801B08F */  lw         $s0, 0x118($sp)
    /* 1CB20 8002C320 2801BD27 */  addiu      $sp, $sp, 0x128
    /* 1CB24 8002C324 0800E003 */  jr         $ra
    /* 1CB28 8002C328 00000000 */   nop
endlabel func_8002C23C
