.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEE9C, 0x54

glabel func_800CEE9C
    /* BF69C 800CEE9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BF6A0 800CEEA0 1800BFAF */  sw         $ra, 0x18($sp)
    /* BF6A4 800CEEA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* BF6A8 800CEEA8 1000B0AF */  sw         $s0, 0x10($sp)
    /* BF6AC 800CEEAC 2188A000 */  addu       $s1, $a1, $zero
    /* BF6B0 800CEEB0 2180E000 */  addu       $s0, $a3, $zero
    /* BF6B4 800CEEB4 453B030C */  jal        func_800CED14
    /* BF6B8 800CEEB8 2128C000 */   addu      $a1, $a2, $zero
    /* BF6BC 800CEEBC 23283002 */  subu       $a1, $s1, $s0
    /* BF6C0 800CEEC0 0300A01C */  bgtz       $a1, .L800CEED0
    /* BF6C4 800CEEC4 00000000 */   nop
    /* BF6C8 800CEEC8 27280500 */  nor        $a1, $zero, $a1
    /* BF6CC 800CEECC 0100A524 */  addiu      $a1, $a1, 0x1
  .L800CEED0:
    /* BF6D0 800CEED0 8E3B030C */  jal        func_800CEE38
    /* BF6D4 800CEED4 21204000 */   addu      $a0, $v0, $zero
    /* BF6D8 800CEED8 1800BF8F */  lw         $ra, 0x18($sp)
    /* BF6DC 800CEEDC 1400B18F */  lw         $s1, 0x14($sp)
    /* BF6E0 800CEEE0 1000B08F */  lw         $s0, 0x10($sp)
    /* BF6E4 800CEEE4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BF6E8 800CEEE8 0800E003 */  jr         $ra
    /* BF6EC 800CEEEC 00000000 */   nop
endlabel func_800CEE9C
