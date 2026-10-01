.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800286EC, 0x80

glabel func_800286EC
    /* 18EEC 800286EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18EF0 800286F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 18EF4 800286F4 06000224 */  addiu      $v0, $zero, 0x6
    /* 18EF8 800286F8 BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 18EFC 800286FC 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 18F00 80028700 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 18F04 80028704 02000224 */  addiu      $v0, $zero, 0x2
    /* 18F08 80028708 0F006214 */  bne        $v1, $v0, .L80028748
    /* 18F0C 8002870C 00000000 */   nop
    /* 18F10 80028710 2E7C000C */  jal        func_8001F0B8
    /* 18F14 80028714 01000424 */   addiu     $a0, $zero, 0x1
    /* 18F18 80028718 77000424 */  addiu      $a0, $zero, 0x77
    /* 18F1C 8002871C 02000524 */  addiu      $a1, $zero, 0x2
    /* 18F20 80028720 A07A000C */  jal        func_8001EA80
    /* 18F24 80028724 08000624 */   addiu     $a2, $zero, 0x8
    /* 18F28 80028728 79000424 */  addiu      $a0, $zero, 0x79
    /* 18F2C 8002872C 03000524 */  addiu      $a1, $zero, 0x3
    /* 18F30 80028730 A07A000C */  jal        func_8001EA80
    /* 18F34 80028734 08000624 */   addiu     $a2, $zero, 0x8
    /* 18F38 80028738 7C000424 */  addiu      $a0, $zero, 0x7C
    /* 18F3C 8002873C 04000524 */  addiu      $a1, $zero, 0x4
    /* 18F40 80028740 A07A000C */  jal        func_8001EA80
    /* 18F44 80028744 08000624 */   addiu     $a2, $zero, 0x8
  .L80028748:
    /* 18F48 80028748 1E7E000C */  jal        func_8001F878
    /* 18F4C 8002874C 01000424 */   addiu     $a0, $zero, 0x1
    /* 18F50 80028750 E5A0000C */  jal        func_80028394
    /* 18F54 80028754 00000000 */   nop
    /* 18F58 80028758 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 18F5C 8002875C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 18F60 80028760 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18F64 80028764 0800E003 */  jr         $ra
    /* 18F68 80028768 00000000 */   nop
endlabel func_800286EC
