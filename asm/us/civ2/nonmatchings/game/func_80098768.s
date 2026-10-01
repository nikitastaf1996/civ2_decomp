.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098768, 0x70

glabel func_80098768
    /* 88F68 80098768 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88F6C 8009876C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 88F70 80098770 1800B2AF */  sw         $s2, 0x18($sp)
    /* 88F74 80098774 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88F78 80098778 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88F7C 8009877C 21888000 */  addu       $s1, $a0, $zero
    /* 88F80 80098780 2190A000 */  addu       $s2, $a1, $zero
    /* 88F84 80098784 BD60020C */  jal        func_800982F4
    /* 88F88 80098788 2180C000 */   addu      $s0, $a2, $zero
    /* 88F8C 8009878C 05004390 */  lbu        $v1, 0x5($v0)
    /* 88F90 80098790 00000000 */  nop
    /* 88F94 80098794 F0006330 */  andi       $v1, $v1, 0xF0
    /* 88F98 80098798 050043A0 */  sb         $v1, 0x5($v0)
    /* 88F9C 8009879C 21202002 */  addu       $a0, $s1, $zero
    /* 88FA0 800987A0 BD60020C */  jal        func_800982F4
    /* 88FA4 800987A4 21284002 */   addu      $a1, $s2, $zero
    /* 88FA8 800987A8 0F001032 */  andi       $s0, $s0, 0xF
    /* 88FAC 800987AC 05004390 */  lbu        $v1, 0x5($v0)
    /* 88FB0 800987B0 00000000 */  nop
    /* 88FB4 800987B4 25187000 */  or         $v1, $v1, $s0
    /* 88FB8 800987B8 050043A0 */  sb         $v1, 0x5($v0)
    /* 88FBC 800987BC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 88FC0 800987C0 1800B28F */  lw         $s2, 0x18($sp)
    /* 88FC4 800987C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 88FC8 800987C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 88FCC 800987CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 88FD0 800987D0 0800E003 */  jr         $ra
    /* 88FD4 800987D4 00000000 */   nop
endlabel func_80098768
