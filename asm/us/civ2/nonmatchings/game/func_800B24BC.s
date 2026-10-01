.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24BC, 0x8

glabel func_800B24BC
    /* A2CBC 800B24BC 0800E003 */  jr         $ra
    /* A2CC0 800B24C0 BC0085AC */   sw        $a1, 0xBC($a0)
endlabel func_800B24BC
