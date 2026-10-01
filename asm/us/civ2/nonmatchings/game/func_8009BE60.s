.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BE60, 0xAC

glabel func_8009BE60
    /* 8C660 8009BE60 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8C664 8009BE64 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8C668 8009BE68 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8C66C 8009BE6C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8C670 8009BE70 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C674 8009BE74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C678 8009BE78 21908000 */  addu       $s2, $a0, $zero
    /* 8C67C 8009BE7C 2188A000 */  addu       $s1, $a1, $zero
    /* 8C680 8009BE80 21800000 */  addu       $s0, $zero, $zero
    /* 8C684 8009BE84 1280133C */  lui        $s3, %hi(D_8011E72C)
    /* 8C688 8009BE88 2CE77326 */  addiu      $s3, $s3, %lo(D_8011E72C)
  .L8009BE8C:
    /* 8C68C 8009BE8C 0B000012 */  beqz       $s0, .L8009BEBC
    /* 8C690 8009BE90 40101000 */   sll       $v0, $s0, 1
    /* 8C694 8009BE94 21105000 */  addu       $v0, $v0, $s0
    /* 8C698 8009BE98 80100200 */  sll        $v0, $v0, 2
    /* 8C69C 8009BE9C 23105000 */  subu       $v0, $v0, $s0
    /* 8C6A0 8009BEA0 80110200 */  sll        $v0, $v0, 6
    /* 8C6A4 8009BEA4 1280013C */  lui        $at, %hi(D_8011E956)
    /* 8C6A8 8009BEA8 21082200 */  addu       $at, $at, $v0
    /* 8C6AC 8009BEAC 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 8C6B0 8009BEB0 00000000 */  nop
    /* 8C6B4 8009BEB4 0A004010 */  beqz       $v0, .L8009BEE0
    /* 8C6B8 8009BEB8 00000000 */   nop
  .L8009BEBC:
    /* 8C6BC 8009BEBC 40201000 */  sll        $a0, $s0, 1
    /* 8C6C0 8009BEC0 21209000 */  addu       $a0, $a0, $s0
    /* 8C6C4 8009BEC4 80200400 */  sll        $a0, $a0, 2
    /* 8C6C8 8009BEC8 23209000 */  subu       $a0, $a0, $s0
    /* 8C6CC 8009BECC 80210400 */  sll        $a0, $a0, 6
    /* 8C6D0 8009BED0 21209300 */  addu       $a0, $a0, $s3
    /* 8C6D4 8009BED4 21284002 */  addu       $a1, $s2, $zero
    /* 8C6D8 8009BED8 E16E020C */  jal        func_8009BB84
    /* 8C6DC 8009BEDC 21302002 */   addu      $a2, $s1, $zero
  .L8009BEE0:
    /* 8C6E0 8009BEE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 8C6E4 8009BEE4 E9FF001A */  blez       $s0, .L8009BE8C
    /* 8C6E8 8009BEE8 00000000 */   nop
    /* 8C6EC 8009BEEC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8C6F0 8009BEF0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8C6F4 8009BEF4 1800B28F */  lw         $s2, 0x18($sp)
    /* 8C6F8 8009BEF8 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C6FC 8009BEFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C700 8009BF00 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8C704 8009BF04 0800E003 */  jr         $ra
    /* 8C708 8009BF08 00000000 */   nop
endlabel func_8009BE60
