.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DEE44, 0x80

glabel func_800DEE44
    /* CF644 800DEE44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CF648 800DEE48 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* CF64C 800DEE4C 1800B2AF */  sw         $s2, 0x18($sp)
    /* CF650 800DEE50 1400B1AF */  sw         $s1, 0x14($sp)
    /* CF654 800DEE54 1000B0AF */  sw         $s0, 0x10($sp)
    /* CF658 800DEE58 1280013C */  lui        $at, %hi(D_8011A72C)
    /* CF65C 800DEE5C 21082400 */  addu       $at, $at, $a0
    /* CF660 800DEE60 2CA73180 */  lb         $s1, %lo(D_8011A72C)($at)
    /* CF664 800DEE64 00000000 */  nop
    /* CF668 800DEE68 03002106 */  bgez       $s1, .L800DEE78
    /* CF66C 800DEE6C 21900000 */   addu      $s2, $zero, $zero
    /* CF670 800DEE70 AA7B0308 */  j          .L800DEEA8
    /* CF674 800DEE74 21100000 */   addu      $v0, $zero, $zero
  .L800DEE78:
    /* CF678 800DEE78 01001024 */  addiu      $s0, $zero, 0x1
    /* CF67C 800DEE7C 21200002 */  addu       $a0, $s0, $zero
  .L800DEE80:
    /* CF680 800DEE80 8ACA010C */  jal        func_80072A28
    /* CF684 800DEE84 21282002 */   addu      $a1, $s1, $zero
    /* CF688 800DEE88 02004010 */  beqz       $v0, .L800DEE94
    /* CF68C 800DEE8C 00000000 */   nop
    /* CF690 800DEE90 01001224 */  addiu      $s2, $zero, 0x1
  .L800DEE94:
    /* CF694 800DEE94 01001026 */  addiu      $s0, $s0, 0x1
    /* CF698 800DEE98 0800022A */  slti       $v0, $s0, 0x8
    /* CF69C 800DEE9C F8FF4014 */  bnez       $v0, .L800DEE80
    /* CF6A0 800DEEA0 21200002 */   addu      $a0, $s0, $zero
    /* CF6A4 800DEEA4 21104002 */  addu       $v0, $s2, $zero
  .L800DEEA8:
    /* CF6A8 800DEEA8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* CF6AC 800DEEAC 1800B28F */  lw         $s2, 0x18($sp)
    /* CF6B0 800DEEB0 1400B18F */  lw         $s1, 0x14($sp)
    /* CF6B4 800DEEB4 1000B08F */  lw         $s0, 0x10($sp)
    /* CF6B8 800DEEB8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CF6BC 800DEEBC 0800E003 */  jr         $ra
    /* CF6C0 800DEEC0 00000000 */   nop
endlabel func_800DEE44
