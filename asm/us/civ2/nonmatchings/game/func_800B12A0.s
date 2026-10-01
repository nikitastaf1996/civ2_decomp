.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B12A0, 0x20

glabel func_800B12A0
    /* A1AA0 800B12A0 00240400 */  sll        $a0, $a0, 16
    /* A1AA4 800B12A4 03240400 */  sra        $a0, $a0, 16
    /* A1AA8 800B12A8 100A84AF */  sw         $a0, %gp_rel(D_80158EE8)($gp)
    /* A1AAC 800B12AC 002C0500 */  sll        $a1, $a1, 16
    /* A1AB0 800B12B0 032C0500 */  sra        $a1, $a1, 16
    /* A1AB4 800B12B4 140A85AF */  sw         $a1, %gp_rel(D_80158EEC)($gp)
    /* A1AB8 800B12B8 0800E003 */  jr         $ra
    /* A1ABC 800B12BC 00000000 */   nop
endlabel func_800B12A0
