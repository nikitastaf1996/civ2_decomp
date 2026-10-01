.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DEEC4, 0x40

glabel func_800DEEC4
    /* CF6C4 800DEEC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CF6C8 800DEEC8 1400BFAF */  sw         $ra, 0x14($sp)
    /* CF6CC 800DEECC 1000B0AF */  sw         $s0, 0x10($sp)
    /* CF6D0 800DEED0 917B030C */  jal        func_800DEE44
    /* CF6D4 800DEED4 21808000 */   addu      $s0, $a0, $zero
    /* CF6D8 800DEED8 05004014 */  bnez       $v0, .L800DEEF0
    /* CF6DC 800DEEDC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* CF6E0 800DEEE0 40101000 */  sll        $v0, $s0, 1
    /* CF6E4 800DEEE4 1280013C */  lui        $at, %hi(D_8011A342)
    /* CF6E8 800DEEE8 21082200 */  addu       $at, $at, $v0
    /* CF6EC 800DEEEC 42A32284 */  lh         $v0, %lo(D_8011A342)($at)
  .L800DEEF0:
    /* CF6F0 800DEEF0 1400BF8F */  lw         $ra, 0x14($sp)
    /* CF6F4 800DEEF4 1000B08F */  lw         $s0, 0x10($sp)
    /* CF6F8 800DEEF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CF6FC 800DEEFC 0800E003 */  jr         $ra
    /* CF700 800DEF00 00000000 */   nop
endlabel func_800DEEC4
