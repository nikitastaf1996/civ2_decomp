.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D7D74, 0x44

glabel func_800D7D74
    /* C8574 800D7D74 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C8578 800D7D78 1400BFAF */  sw         $ra, 0x14($sp)
    /* C857C 800D7D7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C8580 800D7D80 1280103C */  lui        $s0, %hi(D_80122AAC)
    /* C8584 800D7D84 AC2A1026 */  addiu      $s0, $s0, %lo(D_80122AAC)
    /* C8588 800D7D88 01000224 */  addiu      $v0, $zero, 0x1
    /* C858C 800D7D8C 000002AE */  sw         $v0, 0x0($s0)
    /* C8590 800D7D90 EFEA030C */  jal        func_800FABBC
    /* C8594 800D7D94 78F10426 */   addiu     $a0, $s0, -0xE88
    /* C8598 800D7D98 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C859C 800D7D9C F8FF02AE */  sw         $v0, -0x8($s0)
    /* C85A0 800D7DA0 21100000 */  addu       $v0, $zero, $zero
    /* C85A4 800D7DA4 1400BF8F */  lw         $ra, 0x14($sp)
    /* C85A8 800D7DA8 1000B08F */  lw         $s0, 0x10($sp)
    /* C85AC 800D7DAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C85B0 800D7DB0 0800E003 */  jr         $ra
    /* C85B4 800D7DB4 00000000 */   nop
endlabel func_800D7D74
