.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D7764, 0x3C

glabel func_800D7764
    /* C7F64 800D7764 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C7F68 800D7768 1400BFAF */  sw         $ra, 0x14($sp)
    /* C7F6C 800D776C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C7F70 800D7770 E5DE030C */  jal        func_800F7B94
    /* C7F74 800D7774 21808000 */   addu      $s0, $a0, $zero
    /* C7F78 800D7778 2C001026 */  addiu      $s0, $s0, 0x2C
    /* C7F7C 800D777C F8EA030C */  jal        func_800FABE0
    /* C7F80 800D7780 21200002 */   addu      $a0, $s0, $zero
    /* C7F84 800D7784 05DD030C */  jal        func_800F7414
    /* C7F88 800D7788 21200002 */   addu      $a0, $s0, $zero
    /* C7F8C 800D778C 1400BF8F */  lw         $ra, 0x14($sp)
    /* C7F90 800D7790 1000B08F */  lw         $s0, 0x10($sp)
    /* C7F94 800D7794 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C7F98 800D7798 0800E003 */  jr         $ra
    /* C7F9C 800D779C 00000000 */   nop
endlabel func_800D7764
