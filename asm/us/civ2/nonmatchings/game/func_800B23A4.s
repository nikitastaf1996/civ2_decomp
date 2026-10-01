.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B23A4, 0x58

glabel func_800B23A4
    /* A2BA4 800B23A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2BA8 800B23A8 1400BFAF */  sw         $ra, 0x14($sp)
    /* A2BAC 800B23AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2BB0 800B23B0 5DC8020C */  jal        func_800B2174
    /* A2BB4 800B23B4 2180C000 */   addu      $s0, $a2, $zero
    /* A2BB8 800B23B8 21184000 */  addu       $v1, $v0, $zero
    /* A2BBC 800B23BC 0A006010 */  beqz       $v1, .L800B23E8
    /* A2BC0 800B23C0 00000000 */   nop
    /* A2BC4 800B23C4 04000012 */  beqz       $s0, .L800B23D8
    /* A2BC8 800B23C8 00000000 */   nop
    /* A2BCC 800B23CC 00006294 */  lhu        $v0, 0x0($v1)
    /* A2BD0 800B23D0 F9C80208 */  j          .L800B23E4
    /* A2BD4 800B23D4 04004234 */   ori       $v0, $v0, 0x4
  .L800B23D8:
    /* A2BD8 800B23D8 00006294 */  lhu        $v0, 0x0($v1)
    /* A2BDC 800B23DC 00000000 */  nop
    /* A2BE0 800B23E0 FBFF4230 */  andi       $v0, $v0, 0xFFFB
  .L800B23E4:
    /* A2BE4 800B23E4 000062A4 */  sh         $v0, 0x0($v1)
  .L800B23E8:
    /* A2BE8 800B23E8 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2BEC 800B23EC 1000B08F */  lw         $s0, 0x10($sp)
    /* A2BF0 800B23F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2BF4 800B23F4 0800E003 */  jr         $ra
    /* A2BF8 800B23F8 00000000 */   nop
endlabel func_800B23A4
