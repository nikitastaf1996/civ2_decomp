.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80091390, 0x98

glabel func_80091390
    /* 81B90 80091390 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 81B94 80091394 1800BFAF */  sw         $ra, 0x18($sp)
    /* 81B98 80091398 1400B1AF */  sw         $s1, 0x14($sp)
    /* 81B9C 8009139C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 81BA0 800913A0 21808000 */  addu       $s0, $a0, $zero
    /* 81BA4 800913A4 2188A000 */  addu       $s1, $a1, $zero
    /* 81BA8 800913A8 21200000 */  addu       $a0, $zero, $zero
    /* 81BAC 800913AC 7253020C */  jal        func_80094DC8
    /* 81BB0 800913B0 03000524 */   addiu     $a1, $zero, 0x3
    /* 81BB4 800913B4 21184000 */  addu       $v1, $v0, $zero
    /* 81BB8 800913B8 6830028E */  lw         $v0, 0x3068($s0)
    /* 81BBC 800913BC 00000000 */  nop
    /* 81BC0 800913C0 13004014 */  bnez       $v0, .L80091410
    /* 81BC4 800913C4 00000000 */   nop
    /* 81BC8 800913C8 182F028E */  lw         $v0, 0x2F18($s0)
    /* 81BCC 800913CC 00000000 */  nop
    /* 81BD0 800913D0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 81BD4 800913D4 182F02AE */  sw         $v0, 0x2F18($s0)
    /* 81BD8 800913D8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 81BDC 800913DC 0C002212 */  beq        $s1, $v0, .L80091410
    /* 81BE0 800913E0 80201100 */   sll       $a0, $s1, 2
    /* 81BE4 800913E4 21209000 */  addu       $a0, $a0, $s0
    /* 81BE8 800913E8 001C0300 */  sll        $v1, $v1, 16
    /* 81BEC 800913EC 031C0300 */  sra        $v1, $v1, 16
    /* 81BF0 800913F0 C0100300 */  sll        $v0, $v1, 3
    /* 81BF4 800913F4 21104300 */  addu       $v0, $v0, $v1
    /* 81BF8 800913F8 80100200 */  sll        $v0, $v0, 2
    /* 81BFC 800913FC 21104300 */  addu       $v0, $v0, $v1
    /* 81C00 80091400 80100200 */  sll        $v0, $v0, 2
    /* 81C04 80091404 EC274224 */  addiu      $v0, $v0, 0x27EC
    /* 81C08 80091408 21100202 */  addu       $v0, $s0, $v0
    /* 81C0C 8009140C AC2482AC */  sw         $v0, 0x24AC($a0)
  .L80091410:
    /* 81C10 80091410 1800BF8F */  lw         $ra, 0x18($sp)
    /* 81C14 80091414 1400B18F */  lw         $s1, 0x14($sp)
    /* 81C18 80091418 1000B08F */  lw         $s0, 0x10($sp)
    /* 81C1C 8009141C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 81C20 80091420 0800E003 */  jr         $ra
    /* 81C24 80091424 00000000 */   nop
endlabel func_80091390
