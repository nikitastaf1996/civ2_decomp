.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BDB4, 0xAC

glabel func_8009BDB4
    /* 8C5B4 8009BDB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8C5B8 8009BDB8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8C5BC 8009BDBC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C5C0 8009BDC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C5C4 8009BDC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C5C8 8009BDC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C5CC 8009BDCC 21908000 */  addu       $s2, $a0, $zero
    /* 8C5D0 8009BDD0 2188A000 */  addu       $s1, $a1, $zero
    /* 8C5D4 8009BDD4 21800000 */  addu       $s0, $zero, $zero
    /* 8C5D8 8009BDD8 1280133C */  lui        $s3, %hi(D_8011E72C)
    /* 8C5DC 8009BDDC 2CE77326 */  addiu      $s3, $s3, %lo(D_8011E72C)
  .L8009BDE0:
    /* 8C5E0 8009BDE0 0B000012 */  beqz       $s0, .L8009BE10
    /* 8C5E4 8009BDE4 40101000 */   sll       $v0, $s0, 1
    /* 8C5E8 8009BDE8 21105000 */  addu       $v0, $v0, $s0
    /* 8C5EC 8009BDEC 80100200 */  sll        $v0, $v0, 2
    /* 8C5F0 8009BDF0 23105000 */  subu       $v0, $v0, $s0
    /* 8C5F4 8009BDF4 80110200 */  sll        $v0, $v0, 6
    /* 8C5F8 8009BDF8 1280013C */  lui        $at, %hi(D_8011E956)
    /* 8C5FC 8009BDFC 21082200 */  addu       $at, $at, $v0
    /* 8C600 8009BE00 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 8C604 8009BE04 00000000 */  nop
    /* 8C608 8009BE08 0A004010 */  beqz       $v0, .L8009BE34
    /* 8C60C 8009BE0C 00000000 */   nop
  .L8009BE10:
    /* 8C610 8009BE10 40201000 */  sll        $a0, $s0, 1
    /* 8C614 8009BE14 21209000 */  addu       $a0, $a0, $s0
    /* 8C618 8009BE18 80200400 */  sll        $a0, $a0, 2
    /* 8C61C 8009BE1C 23209000 */  subu       $a0, $a0, $s0
    /* 8C620 8009BE20 80210400 */  sll        $a0, $a0, 6
    /* 8C624 8009BE24 21209300 */  addu       $a0, $a0, $s3
    /* 8C628 8009BE28 21284002 */  addu       $a1, $s2, $zero
    /* 8C62C 8009BE2C D36E020C */  jal        func_8009BB4C
    /* 8C630 8009BE30 21302002 */   addu      $a2, $s1, $zero
  .L8009BE34:
    /* 8C634 8009BE34 01001026 */  addiu      $s0, $s0, 0x1
    /* 8C638 8009BE38 E9FF001A */  blez       $s0, .L8009BDE0
    /* 8C63C 8009BE3C 00000000 */   nop
    /* 8C640 8009BE40 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8C644 8009BE44 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C648 8009BE48 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C64C 8009BE4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C650 8009BE50 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C654 8009BE54 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8C658 8009BE58 0800E003 */  jr         $ra
    /* 8C65C 8009BE5C 00000000 */   nop
endlabel func_8009BDB4
