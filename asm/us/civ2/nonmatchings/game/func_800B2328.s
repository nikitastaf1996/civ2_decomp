.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2328, 0x38

glabel func_800B2328
    /* A2B28 800B2328 7001838C */  lw         $v1, 0x170($a0)
    /* A2B2C 800B232C 00000000 */  nop
    /* A2B30 800B2330 09006010 */  beqz       $v1, .L800B2358
    /* A2B34 800B2334 00000000 */   nop
  .L800B2338:
    /* A2B38 800B2338 00006294 */  lhu        $v0, 0x0($v1)
    /* A2B3C 800B233C 00000000 */  nop
    /* A2B40 800B2340 FDFF4230 */  andi       $v0, $v0, 0xFFFD
    /* A2B44 800B2344 000062A4 */  sh         $v0, 0x0($v1)
    /* A2B48 800B2348 0C00638C */  lw         $v1, 0xC($v1)
    /* A2B4C 800B234C 00000000 */  nop
    /* A2B50 800B2350 F9FF6014 */  bnez       $v1, .L800B2338
    /* A2B54 800B2354 00000000 */   nop
  .L800B2358:
    /* A2B58 800B2358 0800E003 */  jr         $ra
    /* A2B5C 800B235C 00000000 */   nop
endlabel func_800B2328
