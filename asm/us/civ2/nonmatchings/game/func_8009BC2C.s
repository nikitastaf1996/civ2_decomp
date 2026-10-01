.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BC2C, 0xDC

glabel func_8009BC2C
    /* 8C42C 8009BC2C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8C430 8009BC30 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8C434 8009BC34 3000B6AF */  sw         $s6, 0x30($sp)
    /* 8C438 8009BC38 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 8C43C 8009BC3C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8C440 8009BC40 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8C444 8009BC44 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8C448 8009BC48 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8C44C 8009BC4C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8C450 8009BC50 21A08000 */  addu       $s4, $a0, $zero
    /* 8C454 8009BC54 2198A000 */  addu       $s3, $a1, $zero
    /* 8C458 8009BC58 2190C000 */  addu       $s2, $a2, $zero
    /* 8C45C 8009BC5C 2188E000 */  addu       $s1, $a3, $zero
    /* 8C460 8009BC60 4800B68F */  lw         $s6, 0x48($sp)
    /* 8C464 8009BC64 21800000 */  addu       $s0, $zero, $zero
    /* 8C468 8009BC68 1280153C */  lui        $s5, %hi(D_8011E72C)
    /* 8C46C 8009BC6C 2CE7B526 */  addiu      $s5, $s5, %lo(D_8011E72C)
  .L8009BC70:
    /* 8C470 8009BC70 0B000012 */  beqz       $s0, .L8009BCA0
    /* 8C474 8009BC74 40101000 */   sll       $v0, $s0, 1
    /* 8C478 8009BC78 21105000 */  addu       $v0, $v0, $s0
    /* 8C47C 8009BC7C 80100200 */  sll        $v0, $v0, 2
    /* 8C480 8009BC80 23105000 */  subu       $v0, $v0, $s0
    /* 8C484 8009BC84 80110200 */  sll        $v0, $v0, 6
    /* 8C488 8009BC88 1280013C */  lui        $at, %hi(D_8011E956)
    /* 8C48C 8009BC8C 21082200 */  addu       $at, $at, $v0
    /* 8C490 8009BC90 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 8C494 8009BC94 00000000 */  nop
    /* 8C498 8009BC98 0D004010 */  beqz       $v0, .L8009BCD0
    /* 8C49C 8009BC9C 00000000 */   nop
  .L8009BCA0:
    /* 8C4A0 8009BCA0 40201000 */  sll        $a0, $s0, 1
    /* 8C4A4 8009BCA4 21209000 */  addu       $a0, $a0, $s0
    /* 8C4A8 8009BCA8 80200400 */  sll        $a0, $a0, 2
    /* 8C4AC 8009BCAC 23209000 */  subu       $a0, $a0, $s0
    /* 8C4B0 8009BCB0 80210400 */  sll        $a0, $a0, 6
    /* 8C4B4 8009BCB4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 8C4B8 8009BCB8 1400B6AF */  sw         $s6, 0x14($sp)
    /* 8C4BC 8009BCBC 21209500 */  addu       $a0, $a0, $s5
    /* 8C4C0 8009BCC0 21288002 */  addu       $a1, $s4, $zero
    /* 8C4C4 8009BCC4 21306002 */  addu       $a2, $s3, $zero
    /* 8C4C8 8009BCC8 8F6E020C */  jal        func_8009BA3C
    /* 8C4CC 8009BCCC 21384002 */   addu      $a3, $s2, $zero
  .L8009BCD0:
    /* 8C4D0 8009BCD0 01001026 */  addiu      $s0, $s0, 0x1
    /* 8C4D4 8009BCD4 E6FF001A */  blez       $s0, .L8009BC70
    /* 8C4D8 8009BCD8 00000000 */   nop
    /* 8C4DC 8009BCDC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8C4E0 8009BCE0 3000B68F */  lw         $s6, 0x30($sp)
    /* 8C4E4 8009BCE4 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 8C4E8 8009BCE8 2800B48F */  lw         $s4, 0x28($sp)
    /* 8C4EC 8009BCEC 2400B38F */  lw         $s3, 0x24($sp)
    /* 8C4F0 8009BCF0 2000B28F */  lw         $s2, 0x20($sp)
    /* 8C4F4 8009BCF4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8C4F8 8009BCF8 1800B08F */  lw         $s0, 0x18($sp)
    /* 8C4FC 8009BCFC 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8C500 8009BD00 0800E003 */  jr         $ra
    /* 8C504 8009BD04 00000000 */   nop
endlabel func_8009BC2C
