.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008F758, 0x148

glabel func_8008F758
    /* 7FF58 8008F758 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 7FF5C 8008F75C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 7FF60 8008F760 2400B5AF */  sw         $s5, 0x24($sp)
    /* 7FF64 8008F764 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7FF68 8008F768 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 7FF6C 8008F76C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7FF70 8008F770 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7FF74 8008F774 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7FF78 8008F778 21A8A000 */  addu       $s5, $a1, $zero
    /* 7FF7C 8008F77C 40100400 */  sll        $v0, $a0, 1
    /* 7FF80 8008F780 21104400 */  addu       $v0, $v0, $a0
    /* 7FF84 8008F784 80100200 */  sll        $v0, $v0, 2
    /* 7FF88 8008F788 23104400 */  subu       $v0, $v0, $a0
    /* 7FF8C 8008F78C C0100200 */  sll        $v0, $v0, 3
    /* 7FF90 8008F790 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7FF94 8008F794 21082200 */  addu       $at, $at, $v0
    /* 7FF98 8008F798 D03E3484 */  lh         $s4, %lo(D_80113ED0)($at)
    /* 7FF9C 8008F79C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7FFA0 8008F7A0 21082200 */  addu       $at, $at, $v0
    /* 7FFA4 8008F7A4 D23E3384 */  lh         $s3, %lo(D_80113ED2)($at)
    /* 7FFA8 8008F7A8 21208002 */  addu       $a0, $s4, $zero
    /* 7FFAC 8008F7AC 2561020C */  jal        func_80098494
    /* 7FFB0 8008F7B0 21286002 */   addu      $a1, $s3, $zero
    /* 7FFB4 8008F7B4 0300A216 */  bne        $s5, $v0, .L8008F7C4
    /* 7FFB8 8008F7B8 21800000 */   addu      $s0, $zero, $zero
  .L8008F7BC:
    /* 7FFBC 8008F7BC 1E3E0208 */  j          .L8008F878
    /* 7FFC0 8008F7C0 01000224 */   addiu     $v0, $zero, 0x1
  .L8008F7C4:
    /* 7FFC4 8008F7C4 0800022A */  slti       $v0, $s0, 0x8
    /* 7FFC8 8008F7C8 2B004010 */  beqz       $v0, .L8008F878
    /* 7FFCC 8008F7CC 21100000 */   addu      $v0, $zero, $zero
    /* 7FFD0 8008F7D0 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 7FFD4 8008F7D4 21083000 */  addu       $at, $at, $s0
    /* 7FFD8 8008F7D8 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 7FFDC 8008F7DC 173B030C */  jal        func_800CEC5C
    /* 7FFE0 8008F7E0 21208402 */   addu      $a0, $s4, $a0
    /* 7FFE4 8008F7E4 21904000 */  addu       $s2, $v0, $zero
    /* 7FFE8 8008F7E8 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 7FFEC 8008F7EC 21083000 */  addu       $at, $at, $s0
    /* 7FFF0 8008F7F0 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 7FFF4 8008F7F4 00000000 */  nop
    /* 7FFF8 8008F7F8 21886202 */  addu       $s1, $s3, $v0
    /* 7FFFC 8008F7FC 0D002006 */  bltz       $s1, .L8008F834
    /* 80000 8008F800 21180000 */   addu      $v1, $zero, $zero
    /* 80004 8008F804 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 80008 8008F808 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8000C 8008F80C 00000000 */  nop
    /* 80010 8008F810 2A102202 */  slt        $v0, $s1, $v0
    /* 80014 8008F814 07004010 */  beqz       $v0, .L8008F834
    /* 80018 8008F818 00000000 */   nop
    /* 8001C 8008F81C 05004006 */  bltz       $s2, .L8008F834
    /* 80020 8008F820 00000000 */   nop
    /* 80024 8008F824 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 80028 8008F828 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8002C 8008F82C 00000000 */  nop
    /* 80030 8008F830 2A184202 */  slt        $v1, $s2, $v0
  .L8008F834:
    /* 80034 8008F834 0E006010 */  beqz       $v1, .L8008F870
    /* 80038 8008F838 21204002 */   addu      $a0, $s2, $zero
    /* 8003C 8008F83C F760020C */  jal        func_800983DC
    /* 80040 8008F840 21282002 */   addu      $a1, $s1, $zero
    /* 80044 8008F844 0A004010 */  beqz       $v0, .L8008F870
    /* 80048 8008F848 21204002 */   addu      $a0, $s2, $zero
    /* 8004C 8008F84C 2561020C */  jal        func_80098494
    /* 80050 8008F850 21282002 */   addu      $a1, $s1, $zero
    /* 80054 8008F854 2120A002 */  addu       $a0, $s5, $zero
    /* 80058 8008F858 0164020C */  jal        func_80099004
    /* 8005C 8008F85C 21284000 */   addu      $a1, $v0, $zero
    /* 80060 8008F860 D6FF4014 */  bnez       $v0, .L8008F7BC
    /* 80064 8008F864 02000326 */   addiu     $v1, $s0, 0x2
    /* 80068 8008F868 01000232 */  andi       $v0, $s0, 0x1
    /* 8006C 8008F86C 23806200 */  subu       $s0, $v1, $v0
  .L8008F870:
    /* 80070 8008F870 F13D0208 */  j          .L8008F7C4
    /* 80074 8008F874 01001026 */   addiu     $s0, $s0, 0x1
  .L8008F878:
    /* 80078 8008F878 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8007C 8008F87C 2400B58F */  lw         $s5, 0x24($sp)
    /* 80080 8008F880 2000B48F */  lw         $s4, 0x20($sp)
    /* 80084 8008F884 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 80088 8008F888 1800B28F */  lw         $s2, 0x18($sp)
    /* 8008C 8008F88C 1400B18F */  lw         $s1, 0x14($sp)
    /* 80090 8008F890 1000B08F */  lw         $s0, 0x10($sp)
    /* 80094 8008F894 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 80098 8008F898 0800E003 */  jr         $ra
    /* 8009C 8008F89C 00000000 */   nop
endlabel func_8008F758
