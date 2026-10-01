.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009446C, 0xAC

glabel func_8009446C
    /* 84C6C 8009446C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 84C70 80094470 2000BFAF */  sw         $ra, 0x20($sp)
    /* 84C74 80094474 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 84C78 80094478 1800B0AF */  sw         $s0, 0x18($sp)
    /* 84C7C 8009447C 21808000 */  addu       $s0, $a0, $zero
    /* 84C80 80094480 21880000 */  addu       $s1, $zero, $zero
    /* 84C84 80094484 00000292 */  lbu        $v0, 0x0($s0)
    /* 84C88 80094488 00000000 */  nop
    /* 84C8C 8009448C 1B004010 */  beqz       $v0, .L800944FC
    /* 84C90 80094490 21204000 */   addu      $a0, $v0, $zero
  .L80094494:
    /* 84C94 80094494 BD87030C */  jal        func_800E1EF4
    /* 84C98 80094498 01001026 */   addiu     $s0, $s0, 0x1
    /* 84C9C 8009449C FF004330 */  andi       $v1, $v0, 0xFF
    /* 84CA0 800944A0 D0FF6224 */  addiu      $v0, $v1, -0x30
    /* 84CA4 800944A4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 84CA8 800944A8 05004010 */  beqz       $v0, .L800944C0
    /* 84CAC 800944AC 00000000 */   nop
    /* 84CB0 800944B0 40881100 */  sll        $s1, $s1, 1
    /* 84CB4 800944B4 D0FF2226 */  addiu      $v0, $s1, -0x30
    /* 84CB8 800944B8 3A510208 */  j          .L800944E8
    /* 84CBC 800944BC 21884300 */   addu      $s1, $v0, $v1
  .L800944C0:
    /* 84CC0 800944C0 00000282 */  lb         $v0, 0x0($s0)
    /* 84CC4 800944C4 00000000 */  nop
    /* 84CC8 800944C8 0D004010 */  beqz       $v0, .L80094500
    /* 84CCC 800944CC 21102002 */   addu      $v0, $s1, $zero
    /* 84CD0 800944D0 01001026 */  addiu      $s0, $s0, 0x1
  .L800944D4:
    /* 84CD4 800944D4 00000282 */  lb         $v0, 0x0($s0)
    /* 84CD8 800944D8 00000000 */  nop
    /* 84CDC 800944DC FDFF4014 */  bnez       $v0, .L800944D4
    /* 84CE0 800944E0 01001026 */   addiu     $s0, $s0, 0x1
    /* 84CE4 800944E4 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800944E8:
    /* 84CE8 800944E8 00000492 */  lbu        $a0, 0x0($s0)
    /* 84CEC 800944EC 00000282 */  lb         $v0, 0x0($s0)
    /* 84CF0 800944F0 00000000 */  nop
    /* 84CF4 800944F4 E7FF4014 */  bnez       $v0, .L80094494
    /* 84CF8 800944F8 00000000 */   nop
  .L800944FC:
    /* 84CFC 800944FC 21102002 */  addu       $v0, $s1, $zero
  .L80094500:
    /* 84D00 80094500 2000BF8F */  lw         $ra, 0x20($sp)
    /* 84D04 80094504 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 84D08 80094508 1800B08F */  lw         $s0, 0x18($sp)
    /* 84D0C 8009450C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 84D10 80094510 0800E003 */  jr         $ra
    /* 84D14 80094514 00000000 */   nop
endlabel func_8009446C
