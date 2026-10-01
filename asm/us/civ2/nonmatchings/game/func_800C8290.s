.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8290, 0x24

glabel func_800C8290
    /* B8A90 800C8290 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8A94 800C8294 1000BFAF */  sw         $ra, 0x10($sp)
    /* B8A98 800C8298 540C848F */  lw         $a0, %gp_rel(D_8015912C)($gp)
    /* B8A9C 800C829C 31DE030C */  jal        func_800F78C4
    /* B8AA0 800C82A0 B0008424 */   addiu     $a0, $a0, 0xB0
    /* B8AA4 800C82A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* B8AA8 800C82A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8AAC 800C82AC 0800E003 */  jr         $ra
    /* B8AB0 800C82B0 00000000 */   nop
endlabel func_800C8290
