.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098684, 0x4C

glabel func_80098684
    /* 88E84 80098684 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88E88 80098688 1400BFAF */  sw         $ra, 0x14($sp)
    /* 88E8C 8009868C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88E90 80098690 2180C000 */  addu       $s0, $a2, $zero
    /* 88E94 80098694 08000006 */  bltz       $s0, .L800986B8
    /* 88E98 80098698 00000000 */   nop
    /* 88E9C 8009869C BD60020C */  jal        func_800982F4
    /* 88EA0 800986A0 00000000 */   nop
    /* 88EA4 800986A4 04004390 */  lbu        $v1, 0x4($v0)
    /* 88EA8 800986A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 88EAC 800986AC 04100202 */  sllv       $v0, $v0, $s0
    /* 88EB0 800986B0 AF610208 */  j          .L800986BC
    /* 88EB4 800986B4 24106200 */   and       $v0, $v1, $v0
  .L800986B8:
    /* 88EB8 800986B8 01000224 */  addiu      $v0, $zero, 0x1
  .L800986BC:
    /* 88EBC 800986BC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 88EC0 800986C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 88EC4 800986C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88EC8 800986C8 0800E003 */  jr         $ra
    /* 88ECC 800986CC 00000000 */   nop
endlabel func_80098684
