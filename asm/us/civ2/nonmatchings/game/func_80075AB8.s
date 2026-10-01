.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80075AB8, 0x90

glabel func_80075AB8
    /* 662B8 80075AB8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 662BC 80075ABC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 662C0 80075AC0 2140A000 */  addu       $t0, $a1, $zero
    /* 662C4 80075AC4 3C00A58F */  lw         $a1, 0x3C($sp)
    /* 662C8 80075AC8 4000A38F */  lw         $v1, 0x40($sp)
    /* 662CC 80075ACC 3800A48F */  lw         $a0, 0x38($sp)
    /* 662D0 80075AD0 0100E730 */  andi       $a3, $a3, 0x1
    /* 662D4 80075AD4 0200E010 */  beqz       $a3, .L80075AE0
    /* 662D8 80075AD8 00000000 */   nop
    /* 662DC 80075ADC 16008424 */  addiu      $a0, $a0, 0x16
  .L80075AE0:
    /* 662E0 80075AE0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 662E4 80075AE4 23104300 */  subu       $v0, $v0, $v1
    /* 662E8 80075AE8 C21F0200 */  srl        $v1, $v0, 31
    /* 662EC 80075AEC 21104300 */  addu       $v0, $v0, $v1
    /* 662F0 80075AF0 43100200 */  sra        $v0, $v0, 1
    /* 662F4 80075AF4 2310A200 */  subu       $v0, $a1, $v0
    /* 662F8 80075AF8 C0280600 */  sll        $a1, $a2, 3
    /* 662FC 80075AFC 2128A600 */  addu       $a1, $a1, $a2
    /* 66300 80075B00 80280500 */  sll        $a1, $a1, 2
    /* 66304 80075B04 2128A600 */  addu       $a1, $a1, $a2
    /* 66308 80075B08 80280500 */  sll        $a1, $a1, 2
    /* 6630C 80075B0C 1380033C */  lui        $v1, %hi(D_80131638)
    /* 66310 80075B10 38166324 */  addiu      $v1, $v1, %lo(D_80131638)
    /* 66314 80075B14 003C0400 */  sll        $a3, $a0, 16
    /* 66318 80075B18 00140200 */  sll        $v0, $v0, 16
    /* 6631C 80075B1C 03140200 */  sra        $v0, $v0, 16
    /* 66320 80075B20 1000A2AF */  sw         $v0, 0x10($sp)
    /* 66324 80075B24 1800A427 */  addiu      $a0, $sp, 0x18
    /* 66328 80075B28 2128A300 */  addu       $a1, $a1, $v1
    /* 6632C 80075B2C 21300001 */  addu       $a2, $t0, $zero
    /* 66330 80075B30 89EE030C */  jal        func_800FBA24
    /* 66334 80075B34 033C0700 */   sra       $a3, $a3, 16
    /* 66338 80075B38 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6633C 80075B3C 21100000 */  addu       $v0, $zero, $zero
    /* 66340 80075B40 0800E003 */  jr         $ra
    /* 66344 80075B44 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_80075AB8
