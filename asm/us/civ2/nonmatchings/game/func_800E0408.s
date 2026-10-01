.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0408, 0x10

glabel func_800E0408
    /* D0C08 800E0408 0E80013C */  lui        $at, %hi(D_800E0268)
    /* D0C0C 800E040C 680224AC */  sw         $a0, %lo(D_800E0268)($at)
    /* D0C10 800E0410 0800E003 */  jr         $ra
    /* D0C14 800E0414 00000000 */   nop
endlabel func_800E0408
