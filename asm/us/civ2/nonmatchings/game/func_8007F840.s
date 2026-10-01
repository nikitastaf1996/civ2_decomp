.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007F840, 0x14C

glabel func_8007F840
    /* 70040 8007F840 30FDBD27 */  addiu      $sp, $sp, -0x2D0
    /* 70044 8007F844 CC02BFAF */  sw         $ra, 0x2CC($sp)
    /* 70048 8007F848 C802B2AF */  sw         $s2, 0x2C8($sp)
    /* 7004C 8007F84C C402B1AF */  sw         $s1, 0x2C4($sp)
    /* 70050 8007F850 C002B0AF */  sw         $s0, 0x2C0($sp)
    /* 70054 8007F854 21908000 */  addu       $s2, $a0, $zero
    /* 70058 8007F858 1800A427 */  addiu      $a0, $sp, 0x18
    /* 7005C 8007F85C ADC5020C */  jal        func_800B16B4
    /* 70060 8007F860 00200524 */   addiu     $a1, $zero, 0x2000
    /* 70064 8007F864 1800B027 */  addiu      $s0, $sp, 0x18
    /* 70068 8007F868 01000224 */  addiu      $v0, $zero, 0x1
    /* 7006C 8007F86C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 70070 8007F870 21200002 */  addu       $a0, $s0, $zero
    /* 70074 8007F874 21280000 */  addu       $a1, $zero, $zero
    /* 70078 8007F878 21300000 */  addu       $a2, $zero, $zero
    /* 7007C 8007F87C 1EC7020C */  jal        func_800B1C78
    /* 70080 8007F880 21380000 */   addu      $a3, $zero, $zero
    /* 70084 8007F884 0180053C */  lui        $a1, %hi(D_80010DA4)
    /* 70088 8007F888 A40DA524 */  addiu      $a1, $a1, %lo(D_80010DA4)
    /* 7008C 8007F88C 1CC8020C */  jal        func_800B2070
    /* 70090 8007F890 21200002 */   addu      $a0, $s0, $zero
    /* 70094 8007F894 21200002 */  addu       $a0, $s0, $zero
    /* 70098 8007F898 39C8020C */  jal        func_800B20E4
    /* 7009C 8007F89C 80020524 */   addiu     $a1, $zero, 0x280
    /* 700A0 8007F8A0 18000224 */  addiu      $v0, $zero, 0x18
    /* 700A4 8007F8A4 7001A2AF */  sw         $v0, 0x170($sp)
    /* 700A8 8007F8A8 21200002 */  addu       $a0, $s0, $zero
    /* 700AC 8007F8AC 07000524 */  addiu      $a1, $zero, 0x7
    /* 700B0 8007F8B0 F5C7020C */  jal        func_800B1FD4
    /* 700B4 8007F8B4 2C010624 */   addiu     $a2, $zero, 0x12C
    /* 700B8 8007F8B8 0880053C */  lui        $a1, %hi(func_8007EFE0)
    /* 700BC 8007F8BC E0EFA524 */  addiu      $a1, $a1, %lo(func_8007EFE0)
    /* 700C0 8007F8C0 37C9020C */  jal        func_800B24DC
    /* 700C4 8007F8C4 21200002 */   addu      $a0, $s0, $zero
    /* 700C8 8007F8C8 21880000 */  addu       $s1, $zero, $zero
    /* 700CC 8007F8CC 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 700D0 8007F8D0 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 700D4 8007F8D4 00000000 */  nop
    /* 700D8 8007F8D8 18004018 */  blez       $v0, .L8007F93C
    /* 700DC 8007F8DC 21800000 */   addu      $s0, $zero, $zero
    /* 700E0 8007F8E0 40101000 */  sll        $v0, $s0, 1
  .L8007F8E4:
    /* 700E4 8007F8E4 21105000 */  addu       $v0, $v0, $s0
    /* 700E8 8007F8E8 80100200 */  sll        $v0, $v0, 2
    /* 700EC 8007F8EC 21105000 */  addu       $v0, $v0, $s0
    /* 700F0 8007F8F0 40100200 */  sll        $v0, $v0, 1
    /* 700F4 8007F8F4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 700F8 8007F8F8 21082200 */  addu       $at, $at, $v0
    /* 700FC 8007F8FC BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 70100 8007F900 00000000 */  nop
    /* 70104 8007F904 06005214 */  bne        $v0, $s2, .L8007F920
    /* 70108 8007F908 1800A427 */   addiu     $a0, $sp, 0x18
    /* 7010C 8007F90C 1680053C */  lui        $a1, %hi(D_801587DC)
    /* 70110 8007F910 DC87A524 */  addiu      $a1, $a1, %lo(D_801587DC)
    /* 70114 8007F914 A8C9020C */  jal        func_800B26A0
    /* 70118 8007F918 21300002 */   addu      $a2, $s0, $zero
    /* 7011C 8007F91C 01003126 */  addiu      $s1, $s1, 0x1
  .L8007F920:
    /* 70120 8007F920 01001026 */  addiu      $s0, $s0, 0x1
    /* 70124 8007F924 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 70128 8007F928 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 7012C 8007F92C 00000000 */  nop
    /* 70130 8007F930 2A100202 */  slt        $v0, $s0, $v0
    /* 70134 8007F934 EBFF4014 */  bnez       $v0, .L8007F8E4
    /* 70138 8007F938 40101000 */   sll       $v0, $s0, 1
  .L8007F93C:
    /* 7013C 8007F93C 0800201A */  blez       $s1, .L8007F960
    /* 70140 8007F940 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 70144 8007F944 CBFB010C */  jal        func_8007EF2C
    /* 70148 8007F948 00000000 */   nop
    /* 7014C 8007F94C 1800A427 */  addiu      $a0, $sp, 0x18
    /* 70150 8007F950 52DF020C */  jal        func_800B7D48
    /* 70154 8007F954 21280000 */   addu      $a1, $zero, $zero
    /* 70158 8007F958 DCFB010C */  jal        func_8007EF70
    /* 7015C 8007F95C 21804000 */   addu      $s0, $v0, $zero
  .L8007F960:
    /* 70160 8007F960 1800A427 */  addiu      $a0, $sp, 0x18
    /* 70164 8007F964 0AC7020C */  jal        func_800B1C28
    /* 70168 8007F968 02000524 */   addiu     $a1, $zero, 0x2
    /* 7016C 8007F96C 21100002 */  addu       $v0, $s0, $zero
    /* 70170 8007F970 CC02BF8F */  lw         $ra, 0x2CC($sp)
    /* 70174 8007F974 C802B28F */  lw         $s2, 0x2C8($sp)
    /* 70178 8007F978 C402B18F */  lw         $s1, 0x2C4($sp)
    /* 7017C 8007F97C C002B08F */  lw         $s0, 0x2C0($sp)
    /* 70180 8007F980 D002BD27 */  addiu      $sp, $sp, 0x2D0
    /* 70184 8007F984 0800E003 */  jr         $ra
    /* 70188 8007F988 00000000 */   nop
endlabel func_8007F840
