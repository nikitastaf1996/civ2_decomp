.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800966B8, 0x8

glabel func_800966B8
    /* 86EB8 800966B8 0800E003 */  jr         $ra
    /* 86EBC 800966BC 0C000224 */   addiu     $v0, $zero, 0xC
endlabel func_800966B8
