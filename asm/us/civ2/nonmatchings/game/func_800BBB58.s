.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BBB58, 0x28

glabel func_800BBB58
    /* AC358 800BBB58 1280043C */  lui        $a0, %hi(D_801210C4)
    /* AC35C 800BBB5C C410848C */  lw         $a0, %lo(D_801210C4)($a0)
    /* AC360 800BBB60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AC364 800BBB64 1000BFAF */  sw         $ra, 0x10($sp)
    /* AC368 800BBB68 18EB020C */  jal        func_800BAC60
    /* AC36C 800BBB6C 00000000 */   nop
    /* AC370 800BBB70 1000BF8F */  lw         $ra, 0x10($sp)
    /* AC374 800BBB74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AC378 800BBB78 0800E003 */  jr         $ra
    /* AC37C 800BBB7C 00000000 */   nop
endlabel func_800BBB58
