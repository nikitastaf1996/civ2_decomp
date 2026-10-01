.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800300CC, 0x2C

glabel func_800300CC
    /* 208CC 800300CC 1280023C */  lui        $v0, %hi(D_8011C312)
    /* 208D0 800300D0 12C34284 */  lh         $v0, %lo(D_8011C312)($v0)
    /* 208D4 800300D4 00000000 */  nop
    /* 208D8 800300D8 1800A200 */  mult       $a1, $v0
    /* 208DC 800300DC 1680023C */  lui        $v0, %hi(D_801589C0)
    /* 208E0 800300E0 C089428C */  lw         $v0, %lo(D_801589C0)($v0)
    /* 208E4 800300E4 00000000 */  nop
    /* 208E8 800300E8 21104400 */  addu       $v0, $v0, $a0
    /* 208EC 800300EC 12180000 */  mflo       $v1
    /* 208F0 800300F0 0800E003 */  jr         $ra
    /* 208F4 800300F4 21104300 */   addu      $v0, $v0, $v1
endlabel func_800300CC
