.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B22F0, 0x38

glabel func_800B22F0
    /* A2AF0 800B22F0 7001838C */  lw         $v1, 0x170($a0)
    /* A2AF4 800B22F4 00000000 */  nop
    /* A2AF8 800B22F8 09006010 */  beqz       $v1, .L800B2320
    /* A2AFC 800B22FC 00000000 */   nop
  .L800B2300:
    /* A2B00 800B2300 00006294 */  lhu        $v0, 0x0($v1)
    /* A2B04 800B2304 00000000 */  nop
    /* A2B08 800B2308 FEFF4230 */  andi       $v0, $v0, 0xFFFE
    /* A2B0C 800B230C 000062A4 */  sh         $v0, 0x0($v1)
    /* A2B10 800B2310 0C00638C */  lw         $v1, 0xC($v1)
    /* A2B14 800B2314 00000000 */  nop
    /* A2B18 800B2318 F9FF6014 */  bnez       $v1, .L800B2300
    /* A2B1C 800B231C 00000000 */   nop
  .L800B2320:
    /* A2B20 800B2320 0800E003 */  jr         $ra
    /* A2B24 800B2324 00000000 */   nop
endlabel func_800B22F0
