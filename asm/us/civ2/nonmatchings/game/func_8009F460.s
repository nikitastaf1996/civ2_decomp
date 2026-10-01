.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F460, 0x12C

glabel func_8009F460
    /* 8FC60 8009F460 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8FC64 8009F464 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8FC68 8009F468 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8FC6C 8009F46C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8FC70 8009F470 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8FC74 8009F474 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8FC78 8009F478 21908000 */  addu       $s2, $a0, $zero
    /* 8FC7C 8009F47C 35DE030C */  jal        func_800F78D4
    /* 8FC80 8009F480 2198A000 */   addu      $s3, $a1, $zero
    /* 8FC84 8009F484 02004014 */  bnez       $v0, .L8009F490
    /* 8FC88 8009F488 D4FF5124 */   addiu     $s1, $v0, -0x2C
    /* 8FC8C 8009F48C 21880000 */  addu       $s1, $zero, $zero
  .L8009F490:
    /* 8FC90 8009F490 1680023C */  lui        $v0, %hi(D_80158500)
    /* 8FC94 8009F494 0085428C */  lw         $v0, %lo(D_80158500)($v0)
    /* 8FC98 8009F498 00000000 */  nop
    /* 8FC9C 8009F49C 33004014 */  bnez       $v0, .L8009F56C
    /* 8FCA0 8009F4A0 FE010224 */   addiu     $v0, $zero, 0x1FE
    /* 8FCA4 8009F4A4 64022386 */  lh         $v1, 0x264($s1)
    /* 8FCA8 8009F4A8 00000000 */  nop
    /* 8FCAC 8009F4AC 2F006210 */  beq        $v1, $v0, .L8009F56C
    /* 8FCB0 8009F4B0 00000000 */   nop
    /* 8FCB4 8009F4B4 1280043C */  lui        $a0, %hi(D_8011A254)
    /* 8FCB8 8009F4B8 54A28424 */  addiu      $a0, $a0, %lo(D_8011A254)
    /* 8FCBC 8009F4BC 0000828C */  lw         $v0, 0x0($a0)
    /* 8FCC0 8009F4C0 00000000 */  nop
    /* 8FCC4 8009F4C4 80004230 */  andi       $v0, $v0, 0x80
    /* 8FCC8 8009F4C8 23004010 */  beqz       $v0, .L8009F558
    /* 8FCCC 8009F4CC 01021024 */   addiu     $s0, $zero, 0x201
    /* 8FCD0 8009F4D0 1280033C */  lui        $v1, %hi(D_8011ACBC)
    /* 8FCD4 8009F4D4 BCAC638C */  lw         $v1, %lo(D_8011ACBC)($v1)
    /* 8FCD8 8009F4D8 01000224 */  addiu      $v0, $zero, 0x1
    /* 8FCDC 8009F4DC 1E006214 */  bne        $v1, $v0, .L8009F558
    /* 8FCE0 8009F4E0 00000000 */   nop
    /* 8FCE4 8009F4E4 14008384 */  lh         $v1, 0x14($a0)
    /* 8FCE8 8009F4E8 00000000 */  nop
    /* 8FCEC 8009F4EC 1A006004 */  bltz       $v1, .L8009F558
    /* 8FCF0 8009F4F0 002C1200 */   sll       $a1, $s2, 16
    /* 8FCF4 8009F4F4 00341300 */  sll        $a2, $s3, 16
    /* 8FCF8 8009F4F8 40100300 */  sll        $v0, $v1, 1
    /* 8FCFC 8009F4FC 21104300 */  addu       $v0, $v0, $v1
    /* 8FD00 8009F500 80100200 */  sll        $v0, $v0, 2
    /* 8FD04 8009F504 21104300 */  addu       $v0, $v0, $v1
    /* 8FD08 8009F508 40100200 */  sll        $v0, $v0, 1
    /* 8FD0C 8009F50C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 8FD10 8009F510 21082200 */  addu       $at, $at, $v0
    /* 8FD14 8009F514 B4D62784 */  lh         $a3, %lo(D_8010D6B4)($at)
    /* 8FD18 8009F518 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 8FD1C 8009F51C 21082200 */  addu       $at, $at, $v0
    /* 8FD20 8009F520 B6D62284 */  lh         $v0, %lo(D_8010D6B6)($at)
    /* 8FD24 8009F524 00000000 */  nop
    /* 8FD28 8009F528 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8FD2C 8009F52C 21202002 */  addu       $a0, $s1, $zero
    /* 8FD30 8009F530 032C0500 */  sra        $a1, $a1, 16
    /* 8FD34 8009F534 B27C020C */  jal        func_8009F2C8
    /* 8FD38 8009F538 03340600 */   sra       $a2, $a2, 16
    /* 8FD3C 8009F53C 21184000 */  addu       $v1, $v0, $zero
    /* 8FD40 8009F540 0800622C */  sltiu      $v0, $v1, 0x8
    /* 8FD44 8009F544 04004010 */  beqz       $v0, .L8009F558
    /* 8FD48 8009F548 00000000 */   nop
    /* 8FD4C 8009F54C 01007024 */  addiu      $s0, $v1, 0x1
    /* 8FD50 8009F550 07001032 */  andi       $s0, $s0, 0x7
    /* 8FD54 8009F554 F4011026 */  addiu      $s0, $s0, 0x1F4
  .L8009F558:
    /* 8FD58 8009F558 64022286 */  lh         $v0, 0x264($s1)
    /* 8FD5C 8009F55C 00000000 */  nop
    /* 8FD60 8009F560 02000212 */  beq        $s0, $v0, .L8009F56C
    /* 8FD64 8009F564 00000000 */   nop
    /* 8FD68 8009F568 640230A6 */  sh         $s0, 0x264($s1)
  .L8009F56C:
    /* 8FD6C 8009F56C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8FD70 8009F570 2400B38F */  lw         $s3, 0x24($sp)
    /* 8FD74 8009F574 2000B28F */  lw         $s2, 0x20($sp)
    /* 8FD78 8009F578 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8FD7C 8009F57C 1800B08F */  lw         $s0, 0x18($sp)
    /* 8FD80 8009F580 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8FD84 8009F584 0800E003 */  jr         $ra
    /* 8FD88 8009F588 00000000 */   nop
endlabel func_8009F460
