.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F8E4, 0x18

glabel func_8009F8E4
    /* 900E4 8009F8E4 1280023C */  lui        $v0, %hi(D_8011E990)
    /* 900E8 8009F8E8 90E94294 */  lhu        $v0, %lo(D_8011E990)($v0)
    /* 900EC 8009F8EC 00000000 */  nop
    /* 900F0 8009F8F0 FEFD4224 */  addiu      $v0, $v0, -0x202
    /* 900F4 8009F8F4 0800E003 */  jr         $ra
    /* 900F8 8009F8F8 0200422C */   sltiu     $v0, $v0, 0x2
endlabel func_8009F8E4
