.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B488, 0x3C

glabel func_8001B488
    /* BC88 8001B488 09000324 */  addiu      $v1, $zero, 0x9
  .L8001B48C:
    /* BC8C 8001B48C 0D80013C */  lui        $at, %hi(D_800CC1E8)
    /* BC90 8001B490 21082300 */  addu       $at, $at, $v1
    /* BC94 8001B494 E8C12290 */  lbu        $v0, %lo(D_800CC1E8)($at)
    /* BC98 8001B498 00000000 */  nop
    /* BC9C 8001B49C 07004014 */  bnez       $v0, .L8001B4BC
    /* BCA0 8001B4A0 00000000 */   nop
    /* BCA4 8001B4A4 0D80013C */  lui        $at, %hi(D_800CC1E8)
    /* BCA8 8001B4A8 21082300 */  addu       $at, $at, $v1
    /* BCAC 8001B4AC E8C124A0 */  sb         $a0, %lo(D_800CC1E8)($at)
    /* BCB0 8001B4B0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* BCB4 8001B4B4 F5FF601C */  bgtz       $v1, .L8001B48C
    /* BCB8 8001B4B8 00000000 */   nop
  .L8001B4BC:
    /* BCBC 8001B4BC 0800E003 */  jr         $ra
    /* BCC0 8001B4C0 00000000 */   nop
endlabel func_8001B488
