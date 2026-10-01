.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C4F1C, 0x90

glabel func_800C4F1C
    /* B571C 800C4F1C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B5720 800C4F20 2400B1AF */  sw         $s1, 0x24($sp)
    /* B5724 800C4F24 21888000 */  addu       $s1, $a0, $zero
    /* B5728 800C4F28 2000B0AF */  sw         $s0, 0x20($sp)
    /* B572C 800C4F2C 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B5730 800C4F30 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B5734 800C4F34 21200002 */  addu       $a0, $s0, $zero
    /* B5738 800C4F38 0A000524 */  addiu      $a1, $zero, 0xA
    /* B573C 800C4F3C 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B5740 800C4F40 1000A2AF */  sw         $v0, 0x10($sp)
    /* B5744 800C4F44 C8000224 */  addiu      $v0, $zero, 0xC8
    /* B5748 800C4F48 0A000624 */  addiu      $a2, $zero, 0xA
    /* B574C 800C4F4C 01000724 */  addiu      $a3, $zero, 0x1
    /* B5750 800C4F50 2800BFAF */  sw         $ra, 0x28($sp)
    /* B5754 800C4F54 1400A2AF */  sw         $v0, 0x14($sp)
    /* B5758 800C4F58 1800A0AF */  sw         $zero, 0x18($sp)
    /* B575C 800C4F5C 6FE5020C */  jal        func_800B95BC
    /* B5760 800C4F60 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B5764 800C4F64 1280013C */  lui        $at, %hi(D_801210C4)
    /* B5768 800C4F68 C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* B576C 800C4F6C 50E6020C */  jal        func_800B9940
    /* B5770 800C4F70 21200002 */   addu      $a0, $s0, $zero
    /* B5774 800C4F74 0C80053C */  lui        $a1, %hi(func_800C4A48)
    /* B5778 800C4F78 484AA524 */  addiu      $a1, $a1, %lo(func_800C4A48)
    /* B577C 800C4F7C 82DF030C */  jal        func_800F7E08
    /* B5780 800C4F80 21200002 */   addu      $a0, $s0, $zero
    /* B5784 800C4F84 14DE030C */  jal        func_800F7850
    /* B5788 800C4F88 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B578C 800C4F8C 29E5020C */  jal        func_800B94A4
    /* B5790 800C4F90 21200002 */   addu      $a0, $s0, $zero
    /* B5794 800C4F94 2800BF8F */  lw         $ra, 0x28($sp)
    /* B5798 800C4F98 2400B18F */  lw         $s1, 0x24($sp)
    /* B579C 800C4F9C 2000B08F */  lw         $s0, 0x20($sp)
    /* B57A0 800C4FA0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B57A4 800C4FA4 0800E003 */  jr         $ra
    /* B57A8 800C4FA8 00000000 */   nop
endlabel func_800C4F1C
