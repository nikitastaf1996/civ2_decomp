.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DEFB0, 0x54

glabel func_800DEFB0
    /* CF7B0 800DEFB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CF7B4 800DEFB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* CF7B8 800DEFB8 B17B030C */  jal        func_800DEEC4
    /* CF7BC 800DEFBC 00000000 */   nop
    /* CF7C0 800DEFC0 21184000 */  addu       $v1, $v0, $zero
    /* CF7C4 800DEFC4 0A006004 */  bltz       $v1, .L800DEFF0
    /* CF7C8 800DEFC8 40100300 */   sll       $v0, $v1, 1
    /* CF7CC 800DEFCC 21104300 */  addu       $v0, $v0, $v1
    /* CF7D0 800DEFD0 80100200 */  sll        $v0, $v0, 2
    /* CF7D4 800DEFD4 23104300 */  subu       $v0, $v0, $v1
    /* CF7D8 800DEFD8 C0100200 */  sll        $v0, $v0, 3
    /* CF7DC 800DEFDC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CF7E0 800DEFE0 21082200 */  addu       $at, $at, $v0
    /* CF7E4 800DEFE4 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CF7E8 800DEFE8 FD7B0308 */  j          .L800DEFF4
    /* CF7EC 800DEFEC 00000000 */   nop
  .L800DEFF0:
    /* CF7F0 800DEFF0 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800DEFF4:
    /* CF7F4 800DEFF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* CF7F8 800DEFF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CF7FC 800DEFFC 0800E003 */  jr         $ra
    /* CF800 800DF000 00000000 */   nop
endlabel func_800DEFB0
