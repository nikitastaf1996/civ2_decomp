.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8AB0, 0x10

glabel func_800B8AB0
    /* A92B0 800B8AB0 2C0285A4 */  sh         $a1, 0x22C($a0)
    /* A92B4 800B8AB4 2E0286A4 */  sh         $a2, 0x22E($a0)
    /* A92B8 800B8AB8 0800E003 */  jr         $ra
    /* A92BC 800B8ABC 300287A4 */   sh        $a3, 0x230($a0)
endlabel func_800B8AB0
