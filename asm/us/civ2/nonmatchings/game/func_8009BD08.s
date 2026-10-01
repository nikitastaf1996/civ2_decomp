.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BD08, 0xAC

glabel func_8009BD08
    /* 8C508 8009BD08 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8C50C 8009BD0C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8C510 8009BD10 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C514 8009BD14 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C518 8009BD18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C51C 8009BD1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C520 8009BD20 21908000 */  addu       $s2, $a0, $zero
    /* 8C524 8009BD24 2188A000 */  addu       $s1, $a1, $zero
    /* 8C528 8009BD28 21800000 */  addu       $s0, $zero, $zero
    /* 8C52C 8009BD2C 1280133C */  lui        $s3, %hi(D_8011E72C)
    /* 8C530 8009BD30 2CE77326 */  addiu      $s3, $s3, %lo(D_8011E72C)
  .L8009BD34:
    /* 8C534 8009BD34 0B000012 */  beqz       $s0, .L8009BD64
    /* 8C538 8009BD38 40101000 */   sll       $v0, $s0, 1
    /* 8C53C 8009BD3C 21105000 */  addu       $v0, $v0, $s0
    /* 8C540 8009BD40 80100200 */  sll        $v0, $v0, 2
    /* 8C544 8009BD44 23105000 */  subu       $v0, $v0, $s0
    /* 8C548 8009BD48 80110200 */  sll        $v0, $v0, 6
    /* 8C54C 8009BD4C 1280013C */  lui        $at, %hi(D_8011E956)
    /* 8C550 8009BD50 21082200 */  addu       $at, $at, $v0
    /* 8C554 8009BD54 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 8C558 8009BD58 00000000 */  nop
    /* 8C55C 8009BD5C 0A004010 */  beqz       $v0, .L8009BD88
    /* 8C560 8009BD60 00000000 */   nop
  .L8009BD64:
    /* 8C564 8009BD64 40201000 */  sll        $a0, $s0, 1
    /* 8C568 8009BD68 21209000 */  addu       $a0, $a0, $s0
    /* 8C56C 8009BD6C 80200400 */  sll        $a0, $a0, 2
    /* 8C570 8009BD70 23209000 */  subu       $a0, $a0, $s0
    /* 8C574 8009BD74 80210400 */  sll        $a0, $a0, 6
    /* 8C578 8009BD78 21209300 */  addu       $a0, $a0, $s3
    /* 8C57C 8009BD7C 21284002 */  addu       $a1, $s2, $zero
    /* 8C580 8009BD80 C56E020C */  jal        func_8009BB14
    /* 8C584 8009BD84 21302002 */   addu      $a2, $s1, $zero
  .L8009BD88:
    /* 8C588 8009BD88 01001026 */  addiu      $s0, $s0, 0x1
    /* 8C58C 8009BD8C E9FF001A */  blez       $s0, .L8009BD34
    /* 8C590 8009BD90 00000000 */   nop
    /* 8C594 8009BD94 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8C598 8009BD98 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C59C 8009BD9C 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C5A0 8009BDA0 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C5A4 8009BDA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C5A8 8009BDA8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8C5AC 8009BDAC 0800E003 */  jr         $ra
    /* 8C5B0 8009BDB0 00000000 */   nop
endlabel func_8009BD08
