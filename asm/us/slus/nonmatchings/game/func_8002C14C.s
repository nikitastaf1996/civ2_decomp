.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C14C, 0xF0

glabel func_8002C14C
    /* 1C94C 8002C14C D8FEBD27 */  addiu      $sp, $sp, -0x128
    /* 1C950 8002C150 2401BFAF */  sw         $ra, 0x124($sp)
    /* 1C954 8002C154 2001B2AF */  sw         $s2, 0x120($sp)
    /* 1C958 8002C158 1C01B1AF */  sw         $s1, 0x11C($sp)
    /* 1C95C 8002C15C 1801B0AF */  sw         $s0, 0x118($sp)
    /* 1C960 8002C160 21808000 */  addu       $s0, $a0, $zero
    /* 1C964 8002C164 02001224 */  addiu      $s2, $zero, 0x2
    /* 1C968 8002C168 1000118E */  lw         $s1, 0x10($s0)
    /* 1C96C 8002C16C 80030224 */  addiu      $v0, $zero, 0x380
    /* 1C970 8002C170 1001A2A7 */  sh         $v0, 0x110($sp)
    /* 1C974 8002C174 0C000292 */  lbu        $v0, 0xC($s0)
    /* 1C978 8002C178 00000000 */  nop
    /* 1C97C 8002C17C 00014224 */  addiu      $v0, $v0, 0x100
    /* 1C980 8002C180 1201A2A7 */  sh         $v0, 0x112($sp)
    /* 1C984 8002C184 1401B2A7 */  sh         $s2, 0x114($sp)
    /* 1C988 8002C188 10000224 */  addiu      $v0, $zero, 0x10
    /* 1C98C 8002C18C 1601A2A7 */  sh         $v0, 0x116($sp)
    /* 1C990 8002C190 00002292 */  lbu        $v0, 0x0($s1)
    /* 1C994 8002C194 00000000 */  nop
    /* 1C998 8002C198 21004010 */  beqz       $v0, .L8002C220
    /* 1C99C 8002C19C 1000A427 */   addiu     $a0, $sp, 0x10
  .L8002C1A0:
    /* 1C9A0 8002C1A0 826D000C */  jal        func_8001B608
    /* 1C9A4 8002C1A4 00010524 */   addiu     $a1, $zero, 0x100
    /* 1C9A8 8002C1A8 06000292 */  lbu        $v0, 0x6($s0)
    /* 1C9AC 8002C1AC 00000000 */  nop
    /* 1C9B0 8002C1B0 08004010 */  beqz       $v0, .L8002C1D4
    /* 1C9B4 8002C1B4 00000000 */   nop
    /* 1C9B8 8002C1B8 21202002 */  addu       $a0, $s1, $zero
    /* 1C9BC 8002C1BC 04000692 */  lbu        $a2, 0x4($s0)
    /* 1C9C0 8002C1C0 05000792 */  lbu        $a3, 0x5($s0)
    /* 1C9C4 8002C1C4 B5AF000C */  jal        func_8002BED4
    /* 1C9C8 8002C1C8 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1C9CC 8002C1CC 7BB00008 */  j          .L8002C1EC
    /* 1C9D0 8002C1D0 01003126 */   addiu     $s1, $s1, 0x1
  .L8002C1D4:
    /* 1C9D4 8002C1D4 21202002 */  addu       $a0, $s1, $zero
    /* 1C9D8 8002C1D8 04000692 */  lbu        $a2, 0x4($s0)
    /* 1C9DC 8002C1DC 05000792 */  lbu        $a3, 0x5($s0)
    /* 1C9E0 8002C1E0 77AF000C */  jal        func_8002BDDC
    /* 1C9E4 8002C1E4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1C9E8 8002C1E8 01003126 */  addiu      $s1, $s1, 0x1
  .L8002C1EC:
    /* 1C9EC 8002C1EC 1001A427 */  addiu      $a0, $sp, 0x110
    /* 1C9F0 8002C1F0 E5CF000C */  jal        LoadImage
    /* 1C9F4 8002C1F4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1C9F8 8002C1F8 3ACF000C */  jal        DrawSync
    /* 1C9FC 8002C1FC 21200000 */   addu      $a0, $zero, $zero
    /* 1CA00 8002C200 1001A297 */  lhu        $v0, 0x110($sp)
    /* 1CA04 8002C204 00000000 */  nop
    /* 1CA08 8002C208 21105200 */  addu       $v0, $v0, $s2
    /* 1CA0C 8002C20C 1001A2A7 */  sh         $v0, 0x110($sp)
    /* 1CA10 8002C210 00002292 */  lbu        $v0, 0x0($s1)
    /* 1CA14 8002C214 00000000 */  nop
    /* 1CA18 8002C218 E1FF4014 */  bnez       $v0, .L8002C1A0
    /* 1CA1C 8002C21C 1000A427 */   addiu     $a0, $sp, 0x10
  .L8002C220:
    /* 1CA20 8002C220 2401BF8F */  lw         $ra, 0x124($sp)
    /* 1CA24 8002C224 2001B28F */  lw         $s2, 0x120($sp)
    /* 1CA28 8002C228 1C01B18F */  lw         $s1, 0x11C($sp)
    /* 1CA2C 8002C22C 1801B08F */  lw         $s0, 0x118($sp)
    /* 1CA30 8002C230 2801BD27 */  addiu      $sp, $sp, 0x128
    /* 1CA34 8002C234 0800E003 */  jr         $ra
    /* 1CA38 8002C238 00000000 */   nop
endlabel func_8002C14C
