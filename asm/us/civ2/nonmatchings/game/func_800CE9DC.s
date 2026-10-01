.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE9DC, 0x30

glabel func_800CE9DC
    /* BF1DC 800CE9DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF1E0 800CE9E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* BF1E4 800CE9E4 FFFF8630 */  andi       $a2, $a0, 0xFFFF
    /* BF1E8 800CE9E8 1280043C */  lui        $a0, %hi(D_80121BE4)
    /* BF1EC 800CE9EC E41B8424 */  addiu      $a0, $a0, %lo(D_80121BE4)
    /* BF1F0 800CE9F0 8B52020C */  jal        func_80094A2C
    /* BF1F4 800CE9F4 02000524 */   addiu     $a1, $zero, 0x2
    /* BF1F8 800CE9F8 1C0D80AF */  sw         $zero, %gp_rel(D_801591F4)($gp)
    /* BF1FC 800CE9FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* BF200 800CEA00 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BF204 800CEA04 0800E003 */  jr         $ra
    /* BF208 800CEA08 00000000 */   nop
endlabel func_800CE9DC
