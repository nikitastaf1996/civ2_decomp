.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C67D4, 0x28

glabel func_800C67D4
    /* B6FD4 800C67D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B6FD8 800C67D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B6FDC 800C67DC 1280043C */  lui        $a0, %hi(D_80120D84)
    /* B6FE0 800C67E0 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* B6FE4 800C67E4 D4E4020C */  jal        func_800B9350
    /* B6FE8 800C67E8 00000000 */   nop
    /* B6FEC 800C67EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* B6FF0 800C67F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B6FF4 800C67F4 0800E003 */  jr         $ra
    /* B6FF8 800C67F8 00000000 */   nop
endlabel func_800C67D4
