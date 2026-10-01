.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AD010, 0x13C

glabel func_800AD010
    /* 9D810 800AD010 30FDBD27 */  addiu      $sp, $sp, -0x2D0
    /* 9D814 800AD014 CC02BFAF */  sw         $ra, 0x2CC($sp)
    /* 9D818 800AD018 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 9D81C 800AD01C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D820 800AD020 ADC5020C */  jal        func_800B16B4
    /* 9D824 800AD024 00200524 */   addiu     $a1, $zero, 0x2000
  .L800AD028:
    /* 9D828 800AD028 A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9D82C 800AD02C 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D830 800AD030 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9D834 800AD034 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9D838 800AD038 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9D83C 800AD03C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9D840 800AD040 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9D844 800AD044 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D848 800AD048 61030624 */  addiu      $a2, $zero, 0x361
    /* 9D84C 800AD04C 2CE0020C */  jal        func_800B80B0
    /* 9D850 800AD050 21380000 */   addu      $a3, $zero, $zero
    /* 9D854 800AD054 21800000 */  addu       $s0, $zero, $zero
    /* 9D858 800AD058 80101000 */  sll        $v0, $s0, 2
  .L800AD05C:
    /* 9D85C 800AD05C 21105000 */  addu       $v0, $v0, $s0
    /* 9D860 800AD060 80100200 */  sll        $v0, $v0, 2
    /* 9D864 800AD064 1180013C */  lui        $at, %hi(D_8010D28F)
    /* 9D868 800AD068 21082200 */  addu       $at, $at, $v0
    /* 9D86C 800AD06C 8FD22380 */  lb         $v1, %lo(D_8010D28F)($at)
    /* 9D870 800AD070 00000000 */  nop
    /* 9D874 800AD074 FFFF6228 */  slti       $v0, $v1, -0x1
    /* 9D878 800AD078 15004014 */  bnez       $v0, .L800AD0D0
    /* 9D87C 800AD07C 00000000 */   nop
    /* 9D880 800AD080 07006018 */  blez       $v1, .L800AD0A0
    /* 9D884 800AD084 00110300 */   sll       $v0, $v1, 4
    /* 9D888 800AD088 1180013C */  lui        $at, %hi(D_8010C2A5)
    /* 9D88C 800AD08C 21082200 */  addu       $at, $at, $v0
    /* 9D890 800AD090 A5C22290 */  lbu        $v0, %lo(D_8010C2A5)($at)
    /* 9D894 800AD094 00000000 */  nop
    /* 9D898 800AD098 0D004010 */  beqz       $v0, .L800AD0D0
    /* 9D89C 800AD09C 00000000 */   nop
  .L800AD0A0:
    /* 9D8A0 800AD0A0 80101000 */  sll        $v0, $s0, 2
    /* 9D8A4 800AD0A4 21105000 */  addu       $v0, $v0, $s0
    /* 9D8A8 800AD0A8 80100200 */  sll        $v0, $v0, 2
    /* 9D8AC 800AD0AC 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 9D8B0 800AD0B0 21082200 */  addu       $at, $at, $v0
    /* 9D8B4 800AD0B4 7CD2248C */  lw         $a0, %lo(D_8010D27C)($at)
    /* 9D8B8 800AD0B8 A63A030C */  jal        func_800CEA98
    /* 9D8BC 800AD0BC 00000000 */   nop
    /* 9D8C0 800AD0C0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D8C4 800AD0C4 21284000 */  addu       $a1, $v0, $zero
    /* 9D8C8 800AD0C8 A8C9020C */  jal        func_800B26A0
    /* 9D8CC 800AD0CC 21300002 */   addu      $a2, $s0, $zero
  .L800AD0D0:
    /* 9D8D0 800AD0D0 01001026 */  addiu      $s0, $s0, 0x1
    /* 9D8D4 800AD0D4 3600022A */  slti       $v0, $s0, 0x36
    /* 9D8D8 800AD0D8 E0FF4014 */  bnez       $v0, .L800AD05C
    /* 9D8DC 800AD0DC 80101000 */   sll       $v0, $s0, 2
    /* 9D8E0 800AD0E0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D8E4 800AD0E4 21280000 */  addu       $a1, $zero, $zero
    /* 9D8E8 800AD0E8 78000624 */  addiu      $a2, $zero, 0x78
    /* 9D8EC 800AD0EC ACE2020C */  jal        func_800B8AB0
    /* 9D8F0 800AD0F0 E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9D8F4 800AD0F4 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D8F8 800AD0F8 21280000 */  addu       $a1, $zero, $zero
    /* 9D8FC 800AD0FC 78000624 */  addiu      $a2, $zero, 0x78
    /* 9D900 800AD100 B0E2020C */  jal        func_800B8AC0
    /* 9D904 800AD104 E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9D908 800AD108 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D90C 800AD10C 52DF020C */  jal        func_800B7D48
    /* 9D910 800AD110 21280000 */   addu      $a1, $zero, $zero
    /* 9D914 800AD114 21804000 */  addu       $s0, $v0, $zero
    /* 9D918 800AD118 05000006 */  bltz       $s0, .L800AD130
    /* 9D91C 800AD11C 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D920 800AD120 E5B0020C */  jal        func_800AC394
    /* 9D924 800AD124 21200002 */   addu      $a0, $s0, $zero
    /* 9D928 800AD128 0AB40208 */  j          .L800AD028
    /* 9D92C 800AD12C 00000000 */   nop
  .L800AD130:
    /* 9D930 800AD130 0AC7020C */  jal        func_800B1C28
    /* 9D934 800AD134 02000524 */   addiu     $a1, $zero, 0x2
    /* 9D938 800AD138 CC02BF8F */  lw         $ra, 0x2CC($sp)
    /* 9D93C 800AD13C C802B08F */  lw         $s0, 0x2C8($sp)
    /* 9D940 800AD140 D002BD27 */  addiu      $sp, $sp, 0x2D0
    /* 9D944 800AD144 0800E003 */  jr         $ra
    /* 9D948 800AD148 00000000 */   nop
endlabel func_800AD010
