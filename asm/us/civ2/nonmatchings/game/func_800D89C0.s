.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D89C0, 0x3C

glabel func_800D89C0
    /* C91C0 800D89C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C91C4 800D89C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* C91C8 800D89C8 BC0E828C */  lw         $v0, 0xEBC($a0)
    /* C91CC 800D89CC 00000000 */  nop
    /* C91D0 800D89D0 02004238 */  xori       $v0, $v0, 0x2
    /* C91D4 800D89D4 0100422C */  sltiu      $v0, $v0, 0x1
    /* C91D8 800D89D8 03004010 */  beqz       $v0, .L800D89E8
    /* C91DC 800D89DC BC0E80AC */   sw        $zero, 0xEBC($a0)
    /* C91E0 800D89E0 5D62030C */  jal        func_800D8974
    /* C91E4 800D89E4 01000524 */   addiu     $a1, $zero, 0x1
  .L800D89E8:
    /* C91E8 800D89E8 250D80A3 */  sb         $zero, %gp_rel(D_801591FD)($gp)
    /* C91EC 800D89EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* C91F0 800D89F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C91F4 800D89F4 0800E003 */  jr         $ra
    /* C91F8 800D89F8 00000000 */   nop
endlabel func_800D89C0
