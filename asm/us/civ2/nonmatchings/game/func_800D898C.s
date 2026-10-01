.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D898C, 0x34

glabel func_800D898C
    /* C918C 800D898C B40E828C */  lw         $v0, 0xEB4($a0)
    /* C9190 800D8990 00000000 */  nop
    /* C9194 800D8994 02004010 */  beqz       $v0, .L800D89A0
    /* C9198 800D8998 02000324 */   addiu     $v1, $zero, 0x2
    /* C919C 800D899C 01000324 */  addiu      $v1, $zero, 0x1
  .L800D89A0:
    /* C91A0 800D89A0 BC0E83AC */  sw         $v1, 0xEBC($a0)
    /* C91A4 800D89A4 B40E828C */  lw         $v0, 0xEB4($a0)
    /* C91A8 800D89A8 00000000 */  nop
    /* C91AC 800D89AC 02004014 */  bnez       $v0, .L800D89B8
    /* C91B0 800D89B0 01000224 */   addiu     $v0, $zero, 0x1
    /* C91B4 800D89B4 250D82A3 */  sb         $v0, %gp_rel(D_801591FD)($gp)
  .L800D89B8:
    /* C91B8 800D89B8 0800E003 */  jr         $ra
    /* C91BC 800D89BC 00000000 */   nop
endlabel func_800D898C
