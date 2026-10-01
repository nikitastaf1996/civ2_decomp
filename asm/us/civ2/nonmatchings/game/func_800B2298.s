.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2298, 0x58

glabel func_800B2298
    /* A2A98 800B2298 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2A9C 800B229C 1400BFAF */  sw         $ra, 0x14($sp)
    /* A2AA0 800B22A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2AA4 800B22A4 5DC8020C */  jal        func_800B2174
    /* A2AA8 800B22A8 2180C000 */   addu      $s0, $a2, $zero
    /* A2AAC 800B22AC 21184000 */  addu       $v1, $v0, $zero
    /* A2AB0 800B22B0 0A006010 */  beqz       $v1, .L800B22DC
    /* A2AB4 800B22B4 00000000 */   nop
    /* A2AB8 800B22B8 04000012 */  beqz       $s0, .L800B22CC
    /* A2ABC 800B22BC 00000000 */   nop
    /* A2AC0 800B22C0 00006294 */  lhu        $v0, 0x0($v1)
    /* A2AC4 800B22C4 B6C80208 */  j          .L800B22D8
    /* A2AC8 800B22C8 02004234 */   ori       $v0, $v0, 0x2
  .L800B22CC:
    /* A2ACC 800B22CC 00006294 */  lhu        $v0, 0x0($v1)
    /* A2AD0 800B22D0 00000000 */  nop
    /* A2AD4 800B22D4 FDFF4230 */  andi       $v0, $v0, 0xFFFD
  .L800B22D8:
    /* A2AD8 800B22D8 000062A4 */  sh         $v0, 0x0($v1)
  .L800B22DC:
    /* A2ADC 800B22DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2AE0 800B22E0 1000B08F */  lw         $s0, 0x10($sp)
    /* A2AE4 800B22E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2AE8 800B22E8 0800E003 */  jr         $ra
    /* A2AEC 800B22EC 00000000 */   nop
endlabel func_800B2298
