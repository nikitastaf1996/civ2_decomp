.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CF078, 0x4C

glabel func_800CF078
    /* BF878 800CF078 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF87C 800CF07C 1400BFAF */  sw         $ra, 0x14($sp)
    /* BF880 800CF080 1000B0AF */  sw         $s0, 0x10($sp)
    /* BF884 800CF084 1280023C */  lui        $v0, %hi(D_80122BB8)
    /* BF888 800CF088 B82B4224 */  addiu      $v0, $v0, %lo(D_80122BB8)
    /* BF88C 800CF08C 80200400 */  sll        $a0, $a0, 2
    /* BF890 800CF090 21808200 */  addu       $s0, $a0, $v0
    /* BF894 800CF094 0000048E */  lw         $a0, 0x0($s0)
    /* BF898 800CF098 00000000 */  nop
    /* BF89C 800CF09C 04008010 */  beqz       $a0, .L800CF0B0
    /* BF8A0 800CF0A0 00000000 */   nop
    /* BF8A4 800CF0A4 E511040C */  jal        func_80104794
    /* BF8A8 800CF0A8 00000000 */   nop
    /* BF8AC 800CF0AC 000000AE */  sw         $zero, 0x0($s0)
  .L800CF0B0:
    /* BF8B0 800CF0B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* BF8B4 800CF0B4 1000B08F */  lw         $s0, 0x10($sp)
    /* BF8B8 800CF0B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BF8BC 800CF0BC 0800E003 */  jr         $ra
    /* BF8C0 800CF0C0 00000000 */   nop
endlabel func_800CF078
