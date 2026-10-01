.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D9F10, 0x24

glabel func_800D9F10
    /* CA710 800D9F10 04000224 */  addiu      $v0, $zero, 0x4
    /* CA714 800D9F14 1480013C */  lui        $at, %hi(D_8013883C)
    /* CA718 800D9F18 21082400 */  addu       $at, $at, $a0
    /* CA71C 800D9F1C 3C8822A0 */  sb         $v0, %lo(D_8013883C)($at)
    /* CA720 800D9F20 1480013C */  lui        $at, %hi(D_80138874)
    /* CA724 800D9F24 21082400 */  addu       $at, $at, $a0
    /* CA728 800D9F28 748820A0 */  sb         $zero, %lo(D_80138874)($at)
    /* CA72C 800D9F2C 0800E003 */  jr         $ra
    /* CA730 800D9F30 00000000 */   nop
endlabel func_800D9F10
