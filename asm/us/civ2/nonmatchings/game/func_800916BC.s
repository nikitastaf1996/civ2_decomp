.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800916BC, 0x34

glabel func_800916BC
    /* 81EBC 800916BC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 81EC0 800916C0 00240400 */  sll        $a0, $a0, 16
    /* 81EC4 800916C4 03240400 */  sra        $a0, $a0, 16
    /* 81EC8 800916C8 D2000224 */  addiu      $v0, $zero, 0xD2
    /* 81ECC 800916CC 04008214 */  bne        $a0, $v0, .L800916E0
    /* 81ED0 800916D0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 81ED4 800916D4 5403848F */  lw         $a0, %gp_rel(D_8015882C)($gp)
    /* 81ED8 800916D8 31DE030C */  jal        func_800F78C4
    /* 81EDC 800916DC 00000000 */   nop
  .L800916E0:
    /* 81EE0 800916E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 81EE4 800916E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 81EE8 800916E8 0800E003 */  jr         $ra
    /* 81EEC 800916EC 00000000 */   nop
endlabel func_800916BC
