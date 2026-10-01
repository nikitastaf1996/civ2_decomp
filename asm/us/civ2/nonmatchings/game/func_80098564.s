.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098564, 0x40

glabel func_80098564
    /* 88D64 80098564 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88D68 80098568 1400BFAF */  sw         $ra, 0x14($sp)
    /* 88D6C 8009856C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88D70 80098570 BD60020C */  jal        func_800982F4
    /* 88D74 80098574 2180C000 */   addu      $s0, $a2, $zero
    /* 88D78 80098578 02004390 */  lbu        $v1, 0x2($v0)
    /* 88D7C 8009857C 00000000 */  nop
    /* 88D80 80098580 1F006330 */  andi       $v1, $v1, 0x1F
    /* 88D84 80098584 40811000 */  sll        $s0, $s0, 5
    /* 88D88 80098588 25187000 */  or         $v1, $v1, $s0
    /* 88D8C 8009858C 020043A0 */  sb         $v1, 0x2($v0)
    /* 88D90 80098590 1400BF8F */  lw         $ra, 0x14($sp)
    /* 88D94 80098594 1000B08F */  lw         $s0, 0x10($sp)
    /* 88D98 80098598 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88D9C 8009859C 0800E003 */  jr         $ra
    /* 88DA0 800985A0 00000000 */   nop
endlabel func_80098564
