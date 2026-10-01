.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098624, 0x60

glabel func_80098624
    /* 88E24 80098624 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88E28 80098628 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 88E2C 8009862C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 88E30 80098630 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88E34 80098634 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88E38 80098638 21888000 */  addu       $s1, $a0, $zero
    /* 88E3C 8009863C 0A00C010 */  beqz       $a2, .L80098668
    /* 88E40 80098640 2190A000 */   addu      $s2, $a1, $zero
    /* 88E44 80098644 C960020C */  jal        func_80098324
    /* 88E48 80098648 00000000 */   nop
    /* 88E4C 8009864C 21804000 */  addu       $s0, $v0, $zero
    /* 88E50 80098650 21202002 */  addu       $a0, $s1, $zero
    /* 88E54 80098654 BD60020C */  jal        func_800982F4
    /* 88E58 80098658 21284002 */   addu      $a1, $s2, $zero
    /* 88E5C 8009865C 01004290 */  lbu        $v0, 0x1($v0)
    /* 88E60 80098660 00000000 */  nop
    /* 88E64 80098664 000002A2 */  sb         $v0, 0x0($s0)
  .L80098668:
    /* 88E68 80098668 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 88E6C 8009866C 1800B28F */  lw         $s2, 0x18($sp)
    /* 88E70 80098670 1400B18F */  lw         $s1, 0x14($sp)
    /* 88E74 80098674 1000B08F */  lw         $s0, 0x10($sp)
    /* 88E78 80098678 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 88E7C 8009867C 0800E003 */  jr         $ra
    /* 88E80 80098680 00000000 */   nop
endlabel func_80098624
