.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006A658, 0x70

glabel func_8006A658
    /* 5AE58 8006A658 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5AE5C 8006A65C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5AE60 8006A660 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 5AE64 8006A664 BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 5AE68 8006A668 00000000 */  nop
    /* 5AE6C 8006A66C 03004014 */  bnez       $v0, .L8006A67C
    /* 5AE70 8006A670 00000000 */   nop
    /* 5AE74 8006A674 10008010 */  beqz       $a0, .L8006A6B8
    /* 5AE78 8006A678 00000000 */   nop
  .L8006A67C:
    /* 5AE7C 8006A67C 1280013C */  lui        $at, %hi(D_8011ACBC)
    /* 5AE80 8006A680 BCAC20AC */  sw         $zero, %lo(D_8011ACBC)($at)
    /* 5AE84 8006A684 01000224 */  addiu      $v0, $zero, 0x1
    /* 5AE88 8006A688 1680013C */  lui        $at, %hi(D_80158874)
    /* 5AE8C 8006A68C 748822A0 */  sb         $v0, %lo(D_80158874)($at)
    /* 5AE90 8006A690 1680013C */  lui        $at, %hi(D_80158876)
    /* 5AE94 8006A694 768822A0 */  sb         $v0, %lo(D_80158876)($at)
    /* 5AE98 8006A698 1680013C */  lui        $at, %hi(D_80158872)
    /* 5AE9C 8006A69C 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* 5AEA0 8006A6A0 A3BF000C */  jal        func_8002FE8C
    /* 5AEA4 8006A6A4 01000424 */   addiu     $a0, $zero, 0x1
    /* 5AEA8 8006A6A8 3374020C */  jal        func_8009D0CC
    /* 5AEAC 8006A6AC 00000000 */   nop
    /* 5AEB0 8006A6B0 DD19010C */  jal        func_80046774
    /* 5AEB4 8006A6B4 00000000 */   nop
  .L8006A6B8:
    /* 5AEB8 8006A6B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5AEBC 8006A6BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5AEC0 8006A6C0 0800E003 */  jr         $ra
    /* 5AEC4 8006A6C4 00000000 */   nop
endlabel func_8006A658
