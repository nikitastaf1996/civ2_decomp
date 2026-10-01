.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D750, 0x8C

glabel func_8007D750
    /* 6DF50 8007D750 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6DF54 8007D754 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6DF58 8007D758 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DF5C 8007D75C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DF60 8007D760 2188A000 */  addu       $s1, $a1, $zero
    /* 6DF64 8007D764 E6ED010C */  jal        func_8007B798
    /* 6DF68 8007D768 21800000 */   addu      $s0, $zero, $zero
    /* 6DF6C 8007D76C 21204000 */  addu       $a0, $v0, $zero
    /* 6DF70 8007D770 14008004 */  bltz       $a0, .L8007D7C4
    /* 6DF74 8007D774 21100002 */   addu      $v0, $s0, $zero
    /* 6DF78 8007D778 40100400 */  sll        $v0, $a0, 1
  .L8007D77C:
    /* 6DF7C 8007D77C 21104400 */  addu       $v0, $v0, $a0
    /* 6DF80 8007D780 80100200 */  sll        $v0, $v0, 2
    /* 6DF84 8007D784 21104400 */  addu       $v0, $v0, $a0
    /* 6DF88 8007D788 40100200 */  sll        $v0, $v0, 1
    /* 6DF8C 8007D78C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6DF90 8007D790 21082200 */  addu       $at, $at, $v0
    /* 6DF94 8007D794 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 6DF98 8007D798 00000000 */  nop
    /* 6DF9C 8007D79C 03005114 */  bne        $v0, $s1, .L8007D7AC
    /* 6DFA0 8007D7A0 00000000 */   nop
    /* 6DFA4 8007D7A4 F0F50108 */  j          .L8007D7C0
    /* 6DFA8 8007D7A8 01001024 */   addiu     $s0, $zero, 0x1
  .L8007D7AC:
    /* 6DFAC 8007D7AC BFED010C */  jal        func_8007B6FC
    /* 6DFB0 8007D7B0 00000000 */   nop
    /* 6DFB4 8007D7B4 21204000 */  addu       $a0, $v0, $zero
    /* 6DFB8 8007D7B8 F0FF8104 */  bgez       $a0, .L8007D77C
    /* 6DFBC 8007D7BC 40100400 */   sll       $v0, $a0, 1
  .L8007D7C0:
    /* 6DFC0 8007D7C0 21100002 */  addu       $v0, $s0, $zero
  .L8007D7C4:
    /* 6DFC4 8007D7C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6DFC8 8007D7C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DFCC 8007D7CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DFD0 8007D7D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6DFD4 8007D7D4 0800E003 */  jr         $ra
    /* 6DFD8 8007D7D8 00000000 */   nop
endlabel func_8007D750
