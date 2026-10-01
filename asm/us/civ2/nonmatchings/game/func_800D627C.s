.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D627C, 0x50

glabel func_800D627C
    /* C6A7C 800D627C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C6A80 800D6280 1400BFAF */  sw         $ra, 0x14($sp)
    /* C6A84 800D6284 1000B0AF */  sw         $s0, 0x10($sp)
    /* C6A88 800D6288 21808000 */  addu       $s0, $a0, $zero
    /* C6A8C 800D628C 0A00022A */  slti       $v0, $s0, 0xA
    /* C6A90 800D6290 05004010 */  beqz       $v0, .L800D62A8
    /* C6A94 800D6294 00000000 */   nop
    /* C6A98 800D6298 1280043C */  lui        $a0, %hi(D_80121340)
    /* C6A9C 800D629C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C6AA0 800D62A0 CD1A030C */  jal        func_800C6B34
    /* C6AA4 800D62A4 00000000 */   nop
  .L800D62A8:
    /* C6AA8 800D62A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C6AAC 800D62AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C6AB0 800D62B0 9C1B030C */  jal        func_800C6E70
    /* C6AB4 800D62B4 21280002 */   addu      $a1, $s0, $zero
    /* C6AB8 800D62B8 1400BF8F */  lw         $ra, 0x14($sp)
    /* C6ABC 800D62BC 1000B08F */  lw         $s0, 0x10($sp)
    /* C6AC0 800D62C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C6AC4 800D62C4 0800E003 */  jr         $ra
    /* C6AC8 800D62C8 00000000 */   nop
endlabel func_800D627C
