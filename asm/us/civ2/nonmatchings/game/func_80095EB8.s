.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095EB8, 0x20

glabel func_80095EB8
    /* 866B8 80095EB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 866BC 80095EBC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 866C0 80095EC0 511C040C */  jal        func_80107144
    /* 866C4 80095EC4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 866C8 80095EC8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 866CC 80095ECC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 866D0 80095ED0 0800E003 */  jr         $ra
    /* 866D4 80095ED4 00000000 */   nop
endlabel func_80095EB8
