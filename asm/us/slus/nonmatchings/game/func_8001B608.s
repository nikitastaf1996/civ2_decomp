.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B608, 0x20

glabel func_8001B608
    /* BE08 8001B608 0500A010 */  beqz       $a1, .L8001B620
    /* BE0C 8001B60C 00000000 */   nop
  .L8001B610:
    /* BE10 8001B610 000080A0 */  sb         $zero, 0x0($a0)
    /* BE14 8001B614 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* BE18 8001B618 FDFFA014 */  bnez       $a1, .L8001B610
    /* BE1C 8001B61C 01008424 */   addiu     $a0, $a0, 0x1
  .L8001B620:
    /* BE20 8001B620 0800E003 */  jr         $ra
    /* BE24 8001B624 00000000 */   nop
endlabel func_8001B608
