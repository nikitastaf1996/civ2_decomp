.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B628, 0x20

glabel func_8001B628
    /* BE28 8001B628 0500A010 */  beqz       $a1, .L8001B640
    /* BE2C 8001B62C 00000000 */   nop
  .L8001B630:
    /* BE30 8001B630 000086A0 */  sb         $a2, 0x0($a0)
    /* BE34 8001B634 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* BE38 8001B638 FDFFA014 */  bnez       $a1, .L8001B630
    /* BE3C 8001B63C 01008424 */   addiu     $a0, $a0, 0x1
  .L8001B640:
    /* BE40 8001B640 0800E003 */  jr         $ra
    /* BE44 8001B644 00000000 */   nop
endlabel func_8001B628
