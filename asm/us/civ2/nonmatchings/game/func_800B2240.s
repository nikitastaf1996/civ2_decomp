.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2240, 0x58

glabel func_800B2240
    /* A2A40 800B2240 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2A44 800B2244 1400BFAF */  sw         $ra, 0x14($sp)
    /* A2A48 800B2248 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2A4C 800B224C 5DC8020C */  jal        func_800B2174
    /* A2A50 800B2250 2180C000 */   addu      $s0, $a2, $zero
    /* A2A54 800B2254 21184000 */  addu       $v1, $v0, $zero
    /* A2A58 800B2258 0A006010 */  beqz       $v1, .L800B2284
    /* A2A5C 800B225C 00000000 */   nop
    /* A2A60 800B2260 04000012 */  beqz       $s0, .L800B2274
    /* A2A64 800B2264 00000000 */   nop
    /* A2A68 800B2268 00006294 */  lhu        $v0, 0x0($v1)
    /* A2A6C 800B226C A0C80208 */  j          .L800B2280
    /* A2A70 800B2270 01004234 */   ori       $v0, $v0, 0x1
  .L800B2274:
    /* A2A74 800B2274 00006294 */  lhu        $v0, 0x0($v1)
    /* A2A78 800B2278 00000000 */  nop
    /* A2A7C 800B227C FEFF4230 */  andi       $v0, $v0, 0xFFFE
  .L800B2280:
    /* A2A80 800B2280 000062A4 */  sh         $v0, 0x0($v1)
  .L800B2284:
    /* A2A84 800B2284 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2A88 800B2288 1000B08F */  lw         $s0, 0x10($sp)
    /* A2A8C 800B228C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2A90 800B2290 0800E003 */  jr         $ra
    /* A2A94 800B2294 00000000 */   nop
endlabel func_800B2240
