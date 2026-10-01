.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007F720, 0x120

glabel func_8007F720
    /* 6FF20 8007F720 30FDBD27 */  addiu      $sp, $sp, -0x2D0
    /* 6FF24 8007F724 C802BFAF */  sw         $ra, 0x2C8($sp)
    /* 6FF28 8007F728 C402B3AF */  sw         $s3, 0x2C4($sp)
    /* 6FF2C 8007F72C C002B2AF */  sw         $s2, 0x2C0($sp)
    /* 6FF30 8007F730 BC02B1AF */  sw         $s1, 0x2BC($sp)
    /* 6FF34 8007F734 B802B0AF */  sw         $s0, 0x2B8($sp)
    /* 6FF38 8007F738 21988000 */  addu       $s3, $a0, $zero
    /* 6FF3C 8007F73C 2190A000 */  addu       $s2, $a1, $zero
    /* 6FF40 8007F740 2180C000 */  addu       $s0, $a2, $zero
    /* 6FF44 8007F744 1800A427 */  addiu      $a0, $sp, 0x18
    /* 6FF48 8007F748 ADC5020C */  jal        func_800B16B4
    /* 6FF4C 8007F74C 00200524 */   addiu     $a1, $zero, 0x2000
    /* 6FF50 8007F750 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6FF54 8007F754 EC0282AF */  sw         $v0, %gp_rel(D_801587C4)($gp)
    /* 6FF58 8007F758 2B801000 */  sltu       $s0, $zero, $s0
    /* 6FF5C 8007F75C 1800B127 */  addiu      $s1, $sp, 0x18
    /* 6FF60 8007F760 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6FF64 8007F764 21202002 */  addu       $a0, $s1, $zero
    /* 6FF68 8007F768 21280000 */  addu       $a1, $zero, $zero
    /* 6FF6C 8007F76C 21300000 */  addu       $a2, $zero, $zero
    /* 6FF70 8007F770 1EC7020C */  jal        func_800B1C78
    /* 6FF74 8007F774 21380000 */   addu      $a3, $zero, $zero
    /* 6FF78 8007F778 21202002 */  addu       $a0, $s1, $zero
    /* 6FF7C 8007F77C 1CC8020C */  jal        func_800B2070
    /* 6FF80 8007F780 21284002 */   addu      $a1, $s2, $zero
    /* 6FF84 8007F784 21202002 */  addu       $a0, $s1, $zero
    /* 6FF88 8007F788 39C8020C */  jal        func_800B20E4
    /* 6FF8C 8007F78C 80020524 */   addiu     $a1, $zero, 0x280
    /* 6FF90 8007F790 18000224 */  addiu      $v0, $zero, 0x18
    /* 6FF94 8007F794 7001A2AF */  sw         $v0, 0x170($sp)
    /* 6FF98 8007F798 21202002 */  addu       $a0, $s1, $zero
    /* 6FF9C 8007F79C 07000524 */  addiu      $a1, $zero, 0x7
    /* 6FFA0 8007F7A0 F5C7020C */  jal        func_800B1FD4
    /* 6FFA4 8007F7A4 2C010624 */   addiu     $a2, $zero, 0x12C
    /* 6FFA8 8007F7A8 0880053C */  lui        $a1, %hi(func_8007EFE0)
    /* 6FFAC 8007F7AC E0EFA524 */  addiu      $a1, $a1, %lo(func_8007EFE0)
    /* 6FFB0 8007F7B0 37C9020C */  jal        func_800B24DC
    /* 6FFB4 8007F7B4 21202002 */   addu      $a0, $s1, $zero
    /* 6FFB8 8007F7B8 E6ED010C */  jal        func_8007B798
    /* 6FFBC 8007F7BC 21206002 */   addu      $a0, $s3, $zero
    /* 6FFC0 8007F7C0 21984000 */  addu       $s3, $v0, $zero
    /* 6FFC4 8007F7C4 0A006006 */  bltz       $s3, .L8007F7F0
    /* 6FFC8 8007F7C8 1800A427 */   addiu     $a0, $sp, 0x18
  .L8007F7CC:
    /* 6FFCC 8007F7CC 1680053C */  lui        $a1, %hi(D_801587DC)
    /* 6FFD0 8007F7D0 DC87A524 */  addiu      $a1, $a1, %lo(D_801587DC)
    /* 6FFD4 8007F7D4 A8C9020C */  jal        func_800B26A0
    /* 6FFD8 8007F7D8 21306002 */   addu      $a2, $s3, $zero
    /* 6FFDC 8007F7DC BFED010C */  jal        func_8007B6FC
    /* 6FFE0 8007F7E0 21206002 */   addu      $a0, $s3, $zero
    /* 6FFE4 8007F7E4 21984000 */  addu       $s3, $v0, $zero
    /* 6FFE8 8007F7E8 F8FF6106 */  bgez       $s3, .L8007F7CC
    /* 6FFEC 8007F7EC 1800A427 */   addiu     $a0, $sp, 0x18
  .L8007F7F0:
    /* 6FFF0 8007F7F0 CBFB010C */  jal        func_8007EF2C
    /* 6FFF4 8007F7F4 00000000 */   nop
    /* 6FFF8 8007F7F8 1800B027 */  addiu      $s0, $sp, 0x18
    /* 6FFFC 8007F7FC 21200002 */  addu       $a0, $s0, $zero
    /* 70000 8007F800 52DF020C */  jal        func_800B7D48
    /* 70004 8007F804 21280000 */   addu      $a1, $zero, $zero
    /* 70008 8007F808 DCFB010C */  jal        func_8007EF70
    /* 7000C 8007F80C 21984000 */   addu      $s3, $v0, $zero
    /* 70010 8007F810 21200002 */  addu       $a0, $s0, $zero
    /* 70014 8007F814 0AC7020C */  jal        func_800B1C28
    /* 70018 8007F818 02000524 */   addiu     $a1, $zero, 0x2
    /* 7001C 8007F81C 21106002 */  addu       $v0, $s3, $zero
    /* 70020 8007F820 C802BF8F */  lw         $ra, 0x2C8($sp)
    /* 70024 8007F824 C402B38F */  lw         $s3, 0x2C4($sp)
    /* 70028 8007F828 C002B28F */  lw         $s2, 0x2C0($sp)
    /* 7002C 8007F82C BC02B18F */  lw         $s1, 0x2BC($sp)
    /* 70030 8007F830 B802B08F */  lw         $s0, 0x2B8($sp)
    /* 70034 8007F834 D002BD27 */  addiu      $sp, $sp, 0x2D0
    /* 70038 8007F838 0800E003 */  jr         $ra
    /* 7003C 8007F83C 00000000 */   nop
endlabel func_8007F720
