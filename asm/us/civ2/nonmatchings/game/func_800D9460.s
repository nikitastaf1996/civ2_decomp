.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D9460, 0xEC

glabel func_800D9460
    /* C9C60 800D9460 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* C9C64 800D9464 3400BFAF */  sw         $ra, 0x34($sp)
    /* C9C68 800D9468 3000B6AF */  sw         $s6, 0x30($sp)
    /* C9C6C 800D946C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* C9C70 800D9470 2800B4AF */  sw         $s4, 0x28($sp)
    /* C9C74 800D9474 2400B3AF */  sw         $s3, 0x24($sp)
    /* C9C78 800D9478 2000B2AF */  sw         $s2, 0x20($sp)
    /* C9C7C 800D947C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C9C80 800D9480 1800B0AF */  sw         $s0, 0x18($sp)
    /* C9C84 800D9484 1680043C */  lui        $a0, %hi(D_8015EE88)
    /* C9C88 800D9488 88EE8424 */  addiu      $a0, $a0, %lo(D_8015EE88)
    /* C9C8C 800D948C 55000524 */  addiu      $a1, $zero, 0x55
    /* C9C90 800D9490 0A000624 */  addiu      $a2, $zero, 0xA
    /* C9C94 800D9494 44E3030C */  jal        func_800F8D10
    /* C9C98 800D9498 C0000724 */   addiu     $a3, $zero, 0xC0
    /* C9C9C 800D949C 01001124 */  addiu      $s1, $zero, 0x1
    /* C9CA0 800D94A0 01001324 */  addiu      $s3, $zero, 0x1
    /* C9CA4 800D94A4 21900000 */  addu       $s2, $zero, $zero
    /* C9CA8 800D94A8 21800000 */  addu       $s0, $zero, $zero
    /* C9CAC 800D94AC 1380163C */  lui        $s6, %hi(D_801292FC)
    /* C9CB0 800D94B0 FC92D626 */  addiu      $s6, $s6, %lo(D_801292FC)
    /* C9CB4 800D94B4 23001524 */  addiu      $s5, $zero, 0x23
    /* C9CB8 800D94B8 06001424 */  addiu      $s4, $zero, 0x6
    /* C9CBC 800D94BC C0201000 */  sll        $a0, $s0, 3
  .L800D94C0:
    /* C9CC0 800D94C0 21209000 */  addu       $a0, $a0, $s0
    /* C9CC4 800D94C4 80200400 */  sll        $a0, $a0, 2
    /* C9CC8 800D94C8 21209000 */  addu       $a0, $a0, $s0
    /* C9CCC 800D94CC 80200400 */  sll        $a0, $a0, 2
    /* C9CD0 800D94D0 1000B5AF */  sw         $s5, 0x10($sp)
    /* C9CD4 800D94D4 21209600 */  addu       $a0, $a0, $s6
    /* C9CD8 800D94D8 21282002 */  addu       $a1, $s1, $zero
    /* C9CDC 800D94DC 21306002 */  addu       $a2, $s3, $zero
    /* C9CE0 800D94E0 6D63030C */  jal        func_800D8DB4
    /* C9CE4 800D94E4 2C000724 */   addiu     $a3, $zero, 0x2C
    /* C9CE8 800D94E8 01005226 */  addiu      $s2, $s2, 0x1
    /* C9CEC 800D94EC 03005416 */  bne        $s2, $s4, .L800D94FC
    /* C9CF0 800D94F0 2D003126 */   addiu     $s1, $s1, 0x2D
    /* C9CF4 800D94F4 01001124 */  addiu      $s1, $zero, 0x1
    /* C9CF8 800D94F8 24007326 */  addiu      $s3, $s3, 0x24
  .L800D94FC:
    /* C9CFC 800D94FC 01001026 */  addiu      $s0, $s0, 0x1
    /* C9D00 800D9500 0B00022A */  slti       $v0, $s0, 0xB
    /* C9D04 800D9504 EEFF4014 */  bnez       $v0, .L800D94C0
    /* C9D08 800D9508 C0201000 */   sll       $a0, $s0, 3
    /* C9D0C 800D950C 1680043C */  lui        $a0, %hi(D_8015EE88)
    /* C9D10 800D9510 88EE8424 */  addiu      $a0, $a0, %lo(D_8015EE88)
    /* C9D14 800D9514 21280000 */  addu       $a1, $zero, $zero
    /* C9D18 800D9518 A9E0030C */  jal        func_800F82A4
    /* C9D1C 800D951C 21300000 */   addu      $a2, $zero, $zero
    /* C9D20 800D9520 3400BF8F */  lw         $ra, 0x34($sp)
    /* C9D24 800D9524 3000B68F */  lw         $s6, 0x30($sp)
    /* C9D28 800D9528 2C00B58F */  lw         $s5, 0x2C($sp)
    /* C9D2C 800D952C 2800B48F */  lw         $s4, 0x28($sp)
    /* C9D30 800D9530 2400B38F */  lw         $s3, 0x24($sp)
    /* C9D34 800D9534 2000B28F */  lw         $s2, 0x20($sp)
    /* C9D38 800D9538 1C00B18F */  lw         $s1, 0x1C($sp)
    /* C9D3C 800D953C 1800B08F */  lw         $s0, 0x18($sp)
    /* C9D40 800D9540 3800BD27 */  addiu      $sp, $sp, 0x38
    /* C9D44 800D9544 0800E003 */  jr         $ra
    /* C9D48 800D9548 00000000 */   nop
endlabel func_800D9460
