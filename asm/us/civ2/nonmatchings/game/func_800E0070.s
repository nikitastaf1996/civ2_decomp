.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0070, 0x28

glabel func_800E0070
    /* D0870 800E0070 B00D84AF */  sw         $a0, %gp_rel(D_80159288)($gp)
    /* D0874 800E0074 B40D85AF */  sw         $a1, %gp_rel(D_8015928C)($gp)
    /* D0878 800E0078 0200C004 */  bltz       $a2, .L800E0084
    /* D087C 800E007C 00000000 */   nop
    /* D0880 800E0080 B80D86AF */  sw         $a2, %gp_rel(D_80159290)($gp)
  .L800E0084:
    /* D0884 800E0084 0200E004 */  bltz       $a3, .L800E0090
    /* D0888 800E0088 00000000 */   nop
    /* D088C 800E008C BC0D87AF */  sw         $a3, %gp_rel(D_80159294)($gp)
  .L800E0090:
    /* D0890 800E0090 0800E003 */  jr         $ra
    /* D0894 800E0094 00000000 */   nop
endlabel func_800E0070
