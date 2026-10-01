.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2360, 0x44

glabel func_800B2360
    /* A2B60 800B2360 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2B64 800B2364 1400BFAF */  sw         $ra, 0x14($sp)
    /* A2B68 800B2368 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2B6C 800B236C 5DC8020C */  jal        func_800B2174
    /* A2B70 800B2370 21800000 */   addu      $s0, $zero, $zero
    /* A2B74 800B2374 05004010 */  beqz       $v0, .L800B238C
    /* A2B78 800B2378 00000000 */   nop
    /* A2B7C 800B237C 00004294 */  lhu        $v0, 0x0($v0)
    /* A2B80 800B2380 00000000 */  nop
    /* A2B84 800B2384 82100200 */  srl        $v0, $v0, 2
    /* A2B88 800B2388 01005030 */  andi       $s0, $v0, 0x1
  .L800B238C:
    /* A2B8C 800B238C 21100002 */  addu       $v0, $s0, $zero
    /* A2B90 800B2390 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2B94 800B2394 1000B08F */  lw         $s0, 0x10($sp)
    /* A2B98 800B2398 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2B9C 800B239C 0800E003 */  jr         $ra
    /* A2BA0 800B23A0 00000000 */   nop
endlabel func_800B2360
