.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D954C, 0x68

glabel func_800D954C
    /* C9D4C 800D954C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C9D50 800D9550 1800BFAF */  sw         $ra, 0x18($sp)
    /* C9D54 800D9554 1400B1AF */  sw         $s1, 0x14($sp)
    /* C9D58 800D9558 1000B0AF */  sw         $s0, 0x10($sp)
    /* C9D5C 800D955C 21800000 */  addu       $s0, $zero, $zero
    /* C9D60 800D9560 1380113C */  lui        $s1, %hi(D_801292FC)
    /* C9D64 800D9564 FC923126 */  addiu      $s1, $s1, %lo(D_801292FC)
  .L800D9568:
    /* C9D68 800D9568 0B00022A */  slti       $v0, $s0, 0xB
    /* C9D6C 800D956C 0B004010 */  beqz       $v0, .L800D959C
    /* C9D70 800D9570 C0201000 */   sll       $a0, $s0, 3
    /* C9D74 800D9574 21209000 */  addu       $a0, $a0, $s0
    /* C9D78 800D9578 80200400 */  sll        $a0, $a0, 2
    /* C9D7C 800D957C 21209000 */  addu       $a0, $a0, $s0
    /* C9D80 800D9580 80200400 */  sll        $a0, $a0, 2
    /* C9D84 800D9584 21209100 */  addu       $a0, $a0, $s1
    /* C9D88 800D9588 21280000 */  addu       $a1, $zero, $zero
    /* C9D8C 800D958C A9E0030C */  jal        func_800F82A4
    /* C9D90 800D9590 21300000 */   addu      $a2, $zero, $zero
    /* C9D94 800D9594 5A650308 */  j          .L800D9568
    /* C9D98 800D9598 01001026 */   addiu     $s0, $s0, 0x1
  .L800D959C:
    /* C9D9C 800D959C 1800BF8F */  lw         $ra, 0x18($sp)
    /* C9DA0 800D95A0 1400B18F */  lw         $s1, 0x14($sp)
    /* C9DA4 800D95A4 1000B08F */  lw         $s0, 0x10($sp)
    /* C9DA8 800D95A8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C9DAC 800D95AC 0800E003 */  jr         $ra
    /* C9DB0 800D95B0 00000000 */   nop
endlabel func_800D954C
