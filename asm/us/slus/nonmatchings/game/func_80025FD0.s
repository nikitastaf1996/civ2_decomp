.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80025FD0, 0x74

glabel func_80025FD0
    /* 167D0 80025FD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 167D4 80025FD4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 167D8 80025FD8 2E7C000C */  jal        func_8001F0B8
    /* 167DC 80025FDC 01000424 */   addiu     $a0, $zero, 0x1
    /* 167E0 80025FE0 05000224 */  addiu      $v0, $zero, 0x5
    /* 167E4 80025FE4 BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 167E8 80025FE8 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 167EC 80025FEC 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 167F0 80025FF0 02000224 */  addiu      $v0, $zero, 0x2
    /* 167F4 80025FF4 0C006214 */  bne        $v1, $v0, .L80026028
    /* 167F8 80025FF8 6B000424 */   addiu     $a0, $zero, 0x6B
    /* 167FC 80025FFC 02000524 */  addiu      $a1, $zero, 0x2
    /* 16800 80026000 A07A000C */  jal        func_8001EA80
    /* 16804 80026004 08000624 */   addiu     $a2, $zero, 0x8
    /* 16808 80026008 6D000424 */  addiu      $a0, $zero, 0x6D
    /* 1680C 8002600C 03000524 */  addiu      $a1, $zero, 0x3
    /* 16810 80026010 A07A000C */  jal        func_8001EA80
    /* 16814 80026014 08000624 */   addiu     $a2, $zero, 0x8
    /* 16818 80026018 70000424 */  addiu      $a0, $zero, 0x70
    /* 1681C 8002601C 05000524 */  addiu      $a1, $zero, 0x5
    /* 16820 80026020 A07A000C */  jal        func_8001EA80
    /* 16824 80026024 08000624 */   addiu     $a2, $zero, 0x8
  .L80026028:
    /* 16828 80026028 6E97000C */  jal        func_80025DB8
    /* 1682C 8002602C 00000000 */   nop
    /* 16830 80026030 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 16834 80026034 1000BF8F */  lw         $ra, 0x10($sp)
    /* 16838 80026038 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1683C 8002603C 0800E003 */  jr         $ra
    /* 16840 80026040 00000000 */   nop
endlabel func_80025FD0
