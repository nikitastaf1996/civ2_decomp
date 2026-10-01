.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF1D8, 0x64

glabel func_800DF1D8
    /* CF9D8 800DF1D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CF9DC 800DF1DC 1800BFAF */  sw         $ra, 0x18($sp)
    /* CF9E0 800DF1E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* CF9E4 800DF1E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* CF9E8 800DF1E8 21808000 */  addu       $s0, $a0, $zero
    /* CF9EC 800DF1EC 2188A000 */  addu       $s1, $a1, $zero
    /* CF9F0 800DF1F0 0180023C */  lui        $v0, %hi(D_800138BC)
    /* CF9F4 800DF1F4 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* CF9F8 800DF1F8 280002AE */  sw         $v0, 0x28($s0)
    /* CF9FC 800DF1FC 301080AF */  sw         $zero, %gp_rel(D_80159508)($gp)
    /* CFA00 800DF200 B4030426 */  addiu      $a0, $s0, 0x3B4
    /* CFA04 800DF204 4CE1030C */  jal        func_800F8530
    /* CFA08 800DF208 02000524 */   addiu     $a1, $zero, 0x2
    /* CFA0C 800DF20C 28020426 */  addiu      $a0, $s0, 0x228
    /* CFA10 800DF210 9BD7030C */  jal        func_800F5E6C
    /* CFA14 800DF214 02000524 */   addiu     $a1, $zero, 0x2
    /* CFA18 800DF218 21200002 */  addu       $a0, $s0, $zero
    /* CFA1C 800DF21C D74A020C */  jal        func_80092B5C
    /* CFA20 800DF220 21282002 */   addu      $a1, $s1, $zero
    /* CFA24 800DF224 1800BF8F */  lw         $ra, 0x18($sp)
    /* CFA28 800DF228 1400B18F */  lw         $s1, 0x14($sp)
    /* CFA2C 800DF22C 1000B08F */  lw         $s0, 0x10($sp)
    /* CFA30 800DF230 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CFA34 800DF234 0800E003 */  jr         $ra
    /* CFA38 800DF238 00000000 */   nop
endlabel func_800DF1D8
