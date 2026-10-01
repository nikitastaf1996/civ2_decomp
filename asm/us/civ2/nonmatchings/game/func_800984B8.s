.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800984B8, 0x5C

glabel func_800984B8
    /* 88CB8 800984B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88CBC 800984BC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 88CC0 800984C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 88CC4 800984C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88CC8 800984C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88CCC 800984CC 21888000 */  addu       $s1, $a0, $zero
    /* 88CD0 800984D0 2190A000 */  addu       $s2, $a1, $zero
    /* 88CD4 800984D4 F760020C */  jal        func_800983DC
    /* 88CD8 800984D8 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 88CDC 800984DC 06004014 */  bnez       $v0, .L800984F8
    /* 88CE0 800984E0 21100002 */   addu      $v0, $s0, $zero
    /* 88CE4 800984E4 21202002 */  addu       $a0, $s1, $zero
    /* 88CE8 800984E8 2561020C */  jal        func_80098494
    /* 88CEC 800984EC 21284002 */   addu      $a1, $s2, $zero
    /* 88CF0 800984F0 21804000 */  addu       $s0, $v0, $zero
    /* 88CF4 800984F4 21100002 */  addu       $v0, $s0, $zero
  .L800984F8:
    /* 88CF8 800984F8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 88CFC 800984FC 1800B28F */  lw         $s2, 0x18($sp)
    /* 88D00 80098500 1400B18F */  lw         $s1, 0x14($sp)
    /* 88D04 80098504 1000B08F */  lw         $s0, 0x10($sp)
    /* 88D08 80098508 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 88D0C 8009850C 0800E003 */  jr         $ra
    /* 88D10 80098510 00000000 */   nop
endlabel func_800984B8
