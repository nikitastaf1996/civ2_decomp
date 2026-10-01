.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6E70, 0x44

glabel func_800C6E70
    /* B7670 800C6E70 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B7674 800C6E74 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* B7678 800C6E78 2800B0AF */  sw         $s0, 0x28($sp)
    /* B767C 800C6E7C 21808000 */  addu       $s0, $a0, $zero
    /* B7680 800C6E80 00240500 */  sll        $a0, $a1, 16
    /* B7684 800C6E84 03240400 */  sra        $a0, $a0, 16
    /* B7688 800C6E88 1000A527 */  addiu      $a1, $sp, 0x10
    /* B768C 800C6E8C 95D4030C */  jal        func_800F5254
    /* B7690 800C6E90 0A000624 */   addiu     $a2, $zero, 0xA
    /* B7694 800C6E94 21200002 */  addu       $a0, $s0, $zero
    /* B7698 800C6E98 9987030C */  jal        func_800E1E64
    /* B769C 800C6E9C 1000A527 */   addiu     $a1, $sp, 0x10
    /* B76A0 800C6EA0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* B76A4 800C6EA4 2800B08F */  lw         $s0, 0x28($sp)
    /* B76A8 800C6EA8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B76AC 800C6EAC 0800E003 */  jr         $ra
    /* B76B0 800C6EB0 00000000 */   nop
endlabel func_800C6E70
