.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8C58, 0x90

glabel func_800D8C58
    /* C9458 800D8C58 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C945C 800D8C5C 1800BFAF */  sw         $ra, 0x18($sp)
    /* C9460 800D8C60 1400B1AF */  sw         $s1, 0x14($sp)
    /* C9464 800D8C64 1000B0AF */  sw         $s0, 0x10($sp)
    /* C9468 800D8C68 21808000 */  addu       $s0, $a0, $zero
    /* C946C 800D8C6C 21880000 */  addu       $s1, $zero, $zero
    /* C9470 800D8C70 8ACA010C */  jal        func_80072A28
    /* C9474 800D8C74 18000524 */   addiu     $a1, $zero, 0x18
    /* C9478 800D8C78 04004010 */  beqz       $v0, .L800D8C8C
    /* C947C 800D8C7C 21200002 */   addu      $a0, $s0, $zero
    /* C9480 800D8C80 8ACA010C */  jal        func_80072A28
    /* C9484 800D8C84 05000524 */   addiu     $a1, $zero, 0x5
    /* C9488 800D8C88 2B880200 */  sltu       $s1, $zero, $v0
  .L800D8C8C:
    /* C948C 800D8C8C 10002016 */  bnez       $s1, .L800D8CD0
    /* C9490 800D8C90 03000224 */   addiu     $v0, $zero, 0x3
    /* C9494 800D8C94 21200002 */  addu       $a0, $s0, $zero
    /* C9498 800D8C98 8ACA010C */  jal        func_80072A28
    /* C949C 800D8C9C 25000524 */   addiu     $a1, $zero, 0x25
    /* C94A0 800D8CA0 0B004014 */  bnez       $v0, .L800D8CD0
    /* C94A4 800D8CA4 02000224 */   addiu     $v0, $zero, 0x2
    /* C94A8 800D8CA8 21880000 */  addu       $s1, $zero, $zero
    /* C94AC 800D8CAC 21200002 */  addu       $a0, $s0, $zero
    /* C94B0 800D8CB0 8ACA010C */  jal        func_80072A28
    /* C94B4 800D8CB4 26000524 */   addiu     $a1, $zero, 0x26
    /* C94B8 800D8CB8 04004010 */  beqz       $v0, .L800D8CCC
    /* C94BC 800D8CBC 21200002 */   addu      $a0, $s0, $zero
    /* C94C0 800D8CC0 8ACA010C */  jal        func_80072A28
    /* C94C4 800D8CC4 3C000524 */   addiu     $a1, $zero, 0x3C
    /* C94C8 800D8CC8 2B880200 */  sltu       $s1, $zero, $v0
  .L800D8CCC:
    /* C94CC 800D8CCC 2B101100 */  sltu       $v0, $zero, $s1
  .L800D8CD0:
    /* C94D0 800D8CD0 1800BF8F */  lw         $ra, 0x18($sp)
    /* C94D4 800D8CD4 1400B18F */  lw         $s1, 0x14($sp)
    /* C94D8 800D8CD8 1000B08F */  lw         $s0, 0x10($sp)
    /* C94DC 800D8CDC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C94E0 800D8CE0 0800E003 */  jr         $ra
    /* C94E4 800D8CE4 00000000 */   nop
endlabel func_800D8C58
