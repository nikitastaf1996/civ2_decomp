.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8340, 0x28

glabel func_800C8340
    /* B8B40 800C8340 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8B44 800C8344 1000BFAF */  sw         $ra, 0x10($sp)
    /* B8B48 800C8348 1680043C */  lui        $a0, %hi(D_8015EE40)
    /* B8B4C 800C834C 40EE8424 */  addiu      $a0, $a0, %lo(D_8015EE40)
    /* B8B50 800C8350 9AE0030C */  jal        func_800F8268
    /* B8B54 800C8354 00000000 */   nop
    /* B8B58 800C8358 1000BF8F */  lw         $ra, 0x10($sp)
    /* B8B5C 800C835C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8B60 800C8360 0800E003 */  jr         $ra
    /* B8B64 800C8364 00000000 */   nop
endlabel func_800C8340
