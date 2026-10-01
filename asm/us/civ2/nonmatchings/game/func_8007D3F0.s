.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D3F0, 0x74

glabel func_8007D3F0
    /* 6DBF0 8007D3F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6DBF4 8007D3F4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6DBF8 8007D3F8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6DBFC 8007D3FC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DC00 8007D400 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DC04 8007D404 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DC08 8007D408 21888000 */  addu       $s1, $a0, $zero
    /* 6DC0C 8007D40C 2190A000 */  addu       $s2, $a1, $zero
    /* 6DC10 8007D410 2198C000 */  addu       $s3, $a2, $zero
    /* 6DC14 8007D414 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6DC18 8007D418 080382AF */  sw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6DC1C 8007D41C 1262020C */  jal        func_80098848
    /* 6DC20 8007D420 21800000 */   addu      $s0, $zero, $zero
    /* 6DC24 8007D424 07004104 */  bgez       $v0, .L8007D444
    /* 6DC28 8007D428 21100002 */   addu      $v0, $s0, $zero
    /* 6DC2C 8007D42C 21202002 */  addu       $a0, $s1, $zero
    /* 6DC30 8007D430 21284002 */  addu       $a1, $s2, $zero
    /* 6DC34 8007D434 99F4010C */  jal        func_8007D264
    /* 6DC38 8007D438 21306002 */   addu      $a2, $s3, $zero
    /* 6DC3C 8007D43C 21804000 */  addu       $s0, $v0, $zero
    /* 6DC40 8007D440 21100002 */  addu       $v0, $s0, $zero
  .L8007D444:
    /* 6DC44 8007D444 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6DC48 8007D448 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DC4C 8007D44C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DC50 8007D450 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DC54 8007D454 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DC58 8007D458 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6DC5C 8007D45C 0800E003 */  jr         $ra
    /* 6DC60 8007D460 00000000 */   nop
endlabel func_8007D3F0
