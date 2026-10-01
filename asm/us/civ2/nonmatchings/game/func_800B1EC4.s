.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1EC4, 0x14

glabel func_800B1EC4
    /* A26C4 800B1EC4 3000828C */  lw         $v0, 0x30($a0)
    /* A26C8 800B1EC8 00000000 */  nop
    /* A26CC 800B1ECC C2110200 */  srl        $v0, $v0, 7
    /* A26D0 800B1ED0 0800E003 */  jr         $ra
    /* A26D4 800B1ED4 01004230 */   andi      $v0, $v0, 0x1
endlabel func_800B1EC4
