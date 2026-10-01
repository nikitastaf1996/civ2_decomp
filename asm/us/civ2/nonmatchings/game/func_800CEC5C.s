.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEC5C, 0x5C

glabel func_800CEC5C
    /* BF45C 800CEC5C 1280023C */  lui        $v0, %hi(D_8011A250)
    /* BF460 800CEC60 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* BF464 800CEC64 00000000 */  nop
    /* BF468 800CEC68 00804230 */  andi       $v0, $v0, 0x8000
    /* BF46C 800CEC6C 0F004014 */  bnez       $v0, .L800CECAC
    /* BF470 800CEC70 00000000 */   nop
    /* BF474 800CEC74 05008104 */  bgez       $a0, .L800CEC8C
    /* BF478 800CEC78 00000000 */   nop
    /* BF47C 800CEC7C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* BF480 800CEC80 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* BF484 800CEC84 2C3B0308 */  j          .L800CECB0
    /* BF488 800CEC88 21108200 */   addu      $v0, $a0, $v0
  .L800CEC8C:
    /* BF48C 800CEC8C 1280033C */  lui        $v1, %hi(D_8011C308)
    /* BF490 800CEC90 08C36384 */  lh         $v1, %lo(D_8011C308)($v1)
    /* BF494 800CEC94 00000000 */  nop
    /* BF498 800CEC98 2A108300 */  slt        $v0, $a0, $v1
    /* BF49C 800CEC9C 04004014 */  bnez       $v0, .L800CECB0
    /* BF4A0 800CECA0 21108000 */   addu      $v0, $a0, $zero
    /* BF4A4 800CECA4 2C3B0308 */  j          .L800CECB0
    /* BF4A8 800CECA8 23108300 */   subu      $v0, $a0, $v1
  .L800CECAC:
    /* BF4AC 800CECAC 21108000 */  addu       $v0, $a0, $zero
  .L800CECB0:
    /* BF4B0 800CECB0 0800E003 */  jr         $ra
    /* BF4B4 800CECB4 00000000 */   nop
endlabel func_800CEC5C
