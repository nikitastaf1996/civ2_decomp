.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8D08, 0xB8

glabel func_800B8D08
    /* A9508 800B8D08 20FDBD27 */  addiu      $sp, $sp, -0x2E0
    /* A950C 800B8D0C DC02BFAF */  sw         $ra, 0x2DC($sp)
    /* A9510 800B8D10 D802B4AF */  sw         $s4, 0x2D8($sp)
    /* A9514 800B8D14 D402B3AF */  sw         $s3, 0x2D4($sp)
    /* A9518 800B8D18 D002B2AF */  sw         $s2, 0x2D0($sp)
    /* A951C 800B8D1C CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* A9520 800B8D20 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* A9524 800B8D24 21888000 */  addu       $s1, $a0, $zero
    /* A9528 800B8D28 2190A000 */  addu       $s2, $a1, $zero
    /* A952C 800B8D2C 2198C000 */  addu       $s3, $a2, $zero
    /* A9530 800B8D30 2180E000 */  addu       $s0, $a3, $zero
    /* A9534 800B8D34 21A00000 */  addu       $s4, $zero, $zero
    /* A9538 800B8D38 2800A427 */  addiu      $a0, $sp, 0x28
    /* A953C 800B8D3C ADC5020C */  jal        func_800B16B4
    /* A9540 800B8D40 00200524 */   addiu     $a1, $zero, 0x2000
    /* A9544 800B8D44 1000B0AF */  sw         $s0, 0x10($sp)
    /* A9548 800B8D48 1400A0AF */  sw         $zero, 0x14($sp)
    /* A954C 800B8D4C 1800A0AF */  sw         $zero, 0x18($sp)
    /* A9550 800B8D50 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* A9554 800B8D54 01000224 */  addiu      $v0, $zero, 0x1
    /* A9558 800B8D58 2000A2AF */  sw         $v0, 0x20($sp)
    /* A955C 800B8D5C 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9560 800B8D60 21282002 */  addu       $a1, $s1, $zero
    /* A9564 800B8D64 21304002 */  addu       $a2, $s2, $zero
    /* A9568 800B8D68 2CE0020C */  jal        func_800B80B0
    /* A956C 800B8D6C 21386002 */   addu      $a3, $s3, $zero
    /* A9570 800B8D70 07004014 */  bnez       $v0, .L800B8D90
    /* A9574 800B8D74 2800A427 */   addiu     $a0, $sp, 0x28
    /* A9578 800B8D78 1280053C */  lui        $a1, %hi(D_8011FCF8)
    /* A957C 800B8D7C F8FCA524 */  addiu      $a1, $a1, %lo(D_8011FCF8)
    /* A9580 800B8D80 52DF020C */  jal        func_800B7D48
    /* A9584 800B8D84 2800A427 */   addiu     $a0, $sp, 0x28
    /* A9588 800B8D88 21A04000 */  addu       $s4, $v0, $zero
    /* A958C 800B8D8C 2800A427 */  addiu      $a0, $sp, 0x28
  .L800B8D90:
    /* A9590 800B8D90 0AC7020C */  jal        func_800B1C28
    /* A9594 800B8D94 02000524 */   addiu     $a1, $zero, 0x2
    /* A9598 800B8D98 21108002 */  addu       $v0, $s4, $zero
    /* A959C 800B8D9C DC02BF8F */  lw         $ra, 0x2DC($sp)
    /* A95A0 800B8DA0 D802B48F */  lw         $s4, 0x2D8($sp)
    /* A95A4 800B8DA4 D402B38F */  lw         $s3, 0x2D4($sp)
    /* A95A8 800B8DA8 D002B28F */  lw         $s2, 0x2D0($sp)
    /* A95AC 800B8DAC CC02B18F */  lw         $s1, 0x2CC($sp)
    /* A95B0 800B8DB0 C802B08F */  lw         $s0, 0x2C8($sp)
    /* A95B4 800B8DB4 E002BD27 */  addiu      $sp, $sp, 0x2E0
    /* A95B8 800B8DB8 0800E003 */  jr         $ra
    /* A95BC 800B8DBC 00000000 */   nop
endlabel func_800B8D08
