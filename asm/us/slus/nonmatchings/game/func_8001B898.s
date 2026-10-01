.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B898, 0x4C

glabel func_8001B898
    /* C098 8001B898 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C09C 8001B89C 1400BFAF */  sw         $ra, 0x14($sp)
    /* C0A0 8001B8A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* C0A4 8001B8A4 2180A000 */  addu       $s0, $a1, $zero
    /* C0A8 8001B8A8 1316010C */  jal        SsVabOpenHead
    /* C0AC 8001B8AC 21280000 */   addu      $a1, $zero, $zero
    /* C0B0 8001B8B0 1780013C */  lui        $at, %hi(D_80172F18)
    /* C0B4 8001B8B4 182F22A4 */  sh         $v0, %lo(D_80172F18)($at)
    /* C0B8 8001B8B8 00140200 */  sll        $v0, $v0, 16
    /* C0BC 8001B8BC 21200002 */  addu       $a0, $s0, $zero
    /* C0C0 8001B8C0 DF17010C */  jal        SsVabTransBody
    /* C0C4 8001B8C4 032C0200 */   sra       $a1, $v0, 16
    /* C0C8 8001B8C8 C718010C */  jal        SsVabTransCompleted
    /* C0CC 8001B8CC 01000424 */   addiu     $a0, $zero, 0x1
    /* C0D0 8001B8D0 1400BF8F */  lw         $ra, 0x14($sp)
    /* C0D4 8001B8D4 1000B08F */  lw         $s0, 0x10($sp)
    /* C0D8 8001B8D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C0DC 8001B8DC 0800E003 */  jr         $ra
    /* C0E0 8001B8E0 00000000 */   nop
endlabel func_8001B898
