.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C77EC, 0x118

glabel func_800C77EC
    /* B7FEC 800C77EC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B7FF0 800C77F0 2800BFAF */  sw         $ra, 0x28($sp)
    /* B7FF4 800C77F4 7907040C */  jal        func_80101DE4
    /* B7FF8 800C77F8 01000424 */   addiu     $a0, $zero, 0x1
    /* B7FFC 800C77FC 1800A0A7 */  sh         $zero, 0x18($sp)
    /* B8000 800C7800 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* B8004 800C7804 40010224 */  addiu      $v0, $zero, 0x140
    /* B8008 800C7808 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B800C 800C780C F0000224 */  addiu      $v0, $zero, 0xF0
    /* B8010 800C7810 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B8014 800C7814 540C858F */  lw         $a1, %gp_rel(D_8015912C)($gp)
    /* B8018 800C7818 00000000 */  nop
    /* B801C 800C781C 4801A424 */  addiu      $a0, $a1, 0x148
    /* B8020 800C7820 B000A524 */  addiu      $a1, $a1, 0xB0
    /* B8024 800C7824 1800A627 */  addiu      $a2, $sp, 0x18
    /* B8028 800C7828 1FE4030C */  jal        func_800F907C
    /* B802C 800C782C 2138C000 */   addu      $a3, $a2, $zero
    /* B8030 800C7830 540C868F */  lw         $a2, %gp_rel(D_8015912C)($gp)
    /* B8034 800C7834 00000000 */  nop
    /* B8038 800C7838 BC02C28C */  lw         $v0, 0x2BC($a2)
    /* B803C 800C783C 00000000 */  nop
    /* B8040 800C7840 F2D84228 */  slti       $v0, $v0, -0x270E
    /* B8044 800C7844 14004014 */  bnez       $v0, .L800C7898
    /* B8048 800C7848 1C000224 */   addiu     $v0, $zero, 0x1C
    /* B804C 800C784C 1000A2AF */  sw         $v0, 0x10($sp)
    /* B8050 800C7850 2000A427 */  addiu      $a0, $sp, 0x20
    /* B8054 800C7854 0802C524 */  addiu      $a1, $a2, 0x208
    /* B8058 800C7858 8400C624 */  addiu      $a2, $a2, 0x84
    /* B805C 800C785C 89EE030C */  jal        func_800FBA24
    /* B8060 800C7860 68000724 */   addiu     $a3, $zero, 0x68
    /* B8064 800C7864 540C858F */  lw         $a1, %gp_rel(D_8015912C)($gp)
    /* B8068 800C7868 00000000 */  nop
    /* B806C 800C786C BC02A28C */  lw         $v0, 0x2BC($a1)
    /* B8070 800C7870 00000000 */  nop
    /* B8074 800C7874 08004018 */  blez       $v0, .L800C7898
    /* B8078 800C7878 4801A424 */   addiu     $a0, $a1, 0x148
    /* B807C 800C787C BC02A294 */  lhu        $v0, 0x2BC($a1)
    /* B8080 800C7880 00000000 */  nop
    /* B8084 800C7884 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B8088 800C7888 B000A524 */  addiu      $a1, $a1, 0xB0
    /* B808C 800C788C 1800A627 */  addiu      $a2, $sp, 0x18
    /* B8090 800C7890 1FE4030C */  jal        func_800F907C
    /* B8094 800C7894 2138C000 */   addu      $a3, $a2, $zero
  .L800C7898:
    /* B8098 800C7898 540C828F */  lw         $v0, %gp_rel(D_8015912C)($gp)
    /* B809C 800C789C 00000000 */  nop
    /* B80A0 800C78A0 C002448C */  lw         $a0, 0x2C0($v0)
    /* B80A4 800C78A4 00000000 */  nop
    /* B80A8 800C78A8 08008010 */  beqz       $a0, .L800C78CC
    /* B80AC 800C78AC FFFF0524 */   addiu     $a1, $zero, -0x1
    /* B80B0 800C78B0 9911040C */  jal        func_80104664
    /* B80B4 800C78B4 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* B80B8 800C78B8 540C828F */  lw         $v0, %gp_rel(D_8015912C)($gp)
    /* B80BC 800C78BC 00000000 */  nop
    /* B80C0 800C78C0 C002448C */  lw         $a0, 0x2C0($v0)
    /* B80C4 800C78C4 7D11040C */  jal        func_801045F4
    /* B80C8 800C78C8 00000000 */   nop
  .L800C78CC:
    /* B80CC 800C78CC 540C868F */  lw         $a2, %gp_rel(D_8015912C)($gp)
    /* B80D0 800C78D0 00000000 */  nop
    /* B80D4 800C78D4 BC02C284 */  lh         $v0, 0x2BC($a2)
    /* B80D8 800C78D8 00000000 */  nop
    /* B80DC 800C78DC 1000A2AF */  sw         $v0, 0x10($sp)
    /* B80E0 800C78E0 2000A427 */  addiu      $a0, $sp, 0x20
    /* B80E4 800C78E4 7401C524 */  addiu      $a1, $a2, 0x174
    /* B80E8 800C78E8 8400C624 */  addiu      $a2, $a2, 0x84
    /* B80EC 800C78EC 89EE030C */  jal        func_800FBA24
    /* B80F0 800C78F0 55000724 */   addiu     $a3, $zero, 0x55
    /* B80F4 800C78F4 2800BF8F */  lw         $ra, 0x28($sp)
    /* B80F8 800C78F8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B80FC 800C78FC 0800E003 */  jr         $ra
    /* B8100 800C7900 00000000 */   nop
endlabel func_800C77EC
