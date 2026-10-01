.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFFA0, 0x74

glabel func_800DFFA0
    /* D07A0 800DFFA0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D07A4 800DFFA4 1000BFAF */  sw         $ra, 0x10($sp)
    /* D07A8 800DFFA8 1480043C */  lui        $a0, %hi(D_801388D0)
    /* D07AC 800DFFAC D0888424 */  addiu      $a0, $a0, %lo(D_801388D0)
    /* D07B0 800DFFB0 21280000 */  addu       $a1, $zero, $zero
    /* D07B4 800DFFB4 A9E0030C */  jal        func_800F82A4
    /* D07B8 800DFFB8 21300000 */   addu      $a2, $zero, $zero
    /* D07BC 800DFFBC 1680043C */  lui        $a0, %hi(D_801589F0)
    /* D07C0 800DFFC0 F089848C */  lw         $a0, %lo(D_801589F0)($a0)
    /* D07C4 800DFFC4 00000000 */  nop
    /* D07C8 800DFFC8 05008010 */  beqz       $a0, .L800DFFE0
    /* D07CC 800DFFCC 00000000 */   nop
    /* D07D0 800DFFD0 E511040C */  jal        func_80104794
    /* D07D4 800DFFD4 00000000 */   nop
    /* D07D8 800DFFD8 1680013C */  lui        $at, %hi(D_801589F0)
    /* D07DC 800DFFDC F08920AC */  sw         $zero, %lo(D_801589F0)($at)
  .L800DFFE0:
    /* D07E0 800DFFE0 1680043C */  lui        $a0, %hi(D_801589F4)
    /* D07E4 800DFFE4 F489848C */  lw         $a0, %lo(D_801589F4)($a0)
    /* D07E8 800DFFE8 00000000 */  nop
    /* D07EC 800DFFEC 05008010 */  beqz       $a0, .L800E0004
    /* D07F0 800DFFF0 00000000 */   nop
    /* D07F4 800DFFF4 E511040C */  jal        func_80104794
    /* D07F8 800DFFF8 00000000 */   nop
    /* D07FC 800DFFFC 1680013C */  lui        $at, %hi(D_801589F4)
    /* D0800 800E0000 F48920AC */  sw         $zero, %lo(D_801589F4)($at)
  .L800E0004:
    /* D0804 800E0004 1000BF8F */  lw         $ra, 0x10($sp)
    /* D0808 800E0008 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D080C 800E000C 0800E003 */  jr         $ra
    /* D0810 800E0010 00000000 */   nop
endlabel func_800DFFA0
