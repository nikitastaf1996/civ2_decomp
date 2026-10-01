.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F630, 0x84

glabel func_8009F630
    /* 8FE30 8009F630 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8FE34 8009F634 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8FE38 8009F638 6C05828F */  lw         $v0, %gp_rel(D_80158A44)($gp)
    /* 8FE3C 8009F63C 00000000 */  nop
    /* 8FE40 8009F640 18004004 */  bltz       $v0, .L8009F6A4
    /* 8FE44 8009F644 00000000 */   nop
    /* 8FE48 8009F648 6C058487 */  lh         $a0, %gp_rel(D_80158A44)($gp)
    /* 8FE4C 8009F64C 7DF3030C */  jal        func_800FCDF4
    /* 8FE50 8009F650 00000000 */   nop
    /* 8FE54 8009F654 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8FE58 8009F658 6C0582AF */  sw         $v0, %gp_rel(D_80158A44)($gp)
    /* 8FE5C 8009F65C 7005828F */  lw         $v0, %gp_rel(D_80158A48)($gp)
    /* 8FE60 8009F660 00000000 */  nop
    /* 8FE64 8009F664 0F004004 */  bltz       $v0, .L8009F6A4
    /* 8FE68 8009F668 40200200 */   sll       $a0, $v0, 1
    /* 8FE6C 8009F66C 21208200 */  addu       $a0, $a0, $v0
    /* 8FE70 8009F670 80200400 */  sll        $a0, $a0, 2
    /* 8FE74 8009F674 23208200 */  subu       $a0, $a0, $v0
    /* 8FE78 8009F678 80210400 */  sll        $a0, $a0, 6
    /* 8FE7C 8009F67C FE010224 */  addiu      $v0, $zero, 0x1FE
    /* 8FE80 8009F680 1280013C */  lui        $at, %hi(D_8011E990)
    /* 8FE84 8009F684 21082400 */  addu       $at, $at, $a0
    /* 8FE88 8009F688 90E922A4 */  sh         $v0, %lo(D_8011E990)($at)
    /* 8FE8C 8009F68C 1280023C */  lui        $v0, %hi(D_8011E758)
    /* 8FE90 8009F690 58E74224 */  addiu      $v0, $v0, %lo(D_8011E758)
    /* 8FE94 8009F694 E9EA030C */  jal        func_800FABA4
    /* 8FE98 8009F698 21208200 */   addu      $a0, $a0, $v0
    /* 8FE9C 8009F69C 4F1B040C */  jal        func_80106D3C
    /* 8FEA0 8009F6A0 21204000 */   addu      $a0, $v0, $zero
  .L8009F6A4:
    /* 8FEA4 8009F6A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8FEA8 8009F6A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8FEAC 8009F6AC 0800E003 */  jr         $ra
    /* 8FEB0 8009F6B0 00000000 */   nop
endlabel func_8009F630
