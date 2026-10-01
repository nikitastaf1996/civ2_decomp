.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CECB8, 0x5C

glabel func_800CECB8
    /* BF4B8 800CECB8 1280023C */  lui        $v0, %hi(D_8011A250)
    /* BF4BC 800CECBC 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* BF4C0 800CECC0 00000000 */  nop
    /* BF4C4 800CECC4 00804230 */  andi       $v0, $v0, 0x8000
    /* BF4C8 800CECC8 0F004014 */  bnez       $v0, .L800CED08
    /* BF4CC 800CECCC 00000000 */   nop
    /* BF4D0 800CECD0 05008104 */  bgez       $a0, .L800CECE8
    /* BF4D4 800CECD4 00000000 */   nop
    /* BF4D8 800CECD8 1280023C */  lui        $v0, %hi(D_8011C312)
    /* BF4DC 800CECDC 12C34284 */  lh         $v0, %lo(D_8011C312)($v0)
    /* BF4E0 800CECE0 433B0308 */  j          .L800CED0C
    /* BF4E4 800CECE4 21108200 */   addu      $v0, $a0, $v0
  .L800CECE8:
    /* BF4E8 800CECE8 1280033C */  lui        $v1, %hi(D_8011C312)
    /* BF4EC 800CECEC 12C36384 */  lh         $v1, %lo(D_8011C312)($v1)
    /* BF4F0 800CECF0 00000000 */  nop
    /* BF4F4 800CECF4 2A108300 */  slt        $v0, $a0, $v1
    /* BF4F8 800CECF8 04004014 */  bnez       $v0, .L800CED0C
    /* BF4FC 800CECFC 21108000 */   addu      $v0, $a0, $zero
    /* BF500 800CED00 433B0308 */  j          .L800CED0C
    /* BF504 800CED04 23108300 */   subu      $v0, $a0, $v1
  .L800CED08:
    /* BF508 800CED08 21108000 */  addu       $v0, $a0, $zero
  .L800CED0C:
    /* BF50C 800CED0C 0800E003 */  jr         $ra
    /* BF510 800CED10 00000000 */   nop
endlabel func_800CECB8
