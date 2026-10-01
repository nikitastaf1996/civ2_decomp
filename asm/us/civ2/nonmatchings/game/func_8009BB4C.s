.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BB4C, 0x38

glabel func_8009BB4C
    /* 8C34C 8009BB4C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8C350 8009BB50 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8C354 8009BB54 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 8C358 8009BB58 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 8C35C 8009BB5C 00000000 */  nop
    /* 8C360 8009BB60 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C364 8009BB64 01000224 */  addiu      $v0, $zero, 0x1
    /* 8C368 8009BB68 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8C36C 8009BB6C 8F6E020C */  jal        func_8009BA3C
    /* 8C370 8009BB70 01000724 */   addiu     $a3, $zero, 0x1
    /* 8C374 8009BB74 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8C378 8009BB78 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8C37C 8009BB7C 0800E003 */  jr         $ra
    /* 8C380 8009BB80 00000000 */   nop
endlabel func_8009BB4C
