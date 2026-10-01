.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A375C, 0x1D0

glabel func_800A375C
    /* 93F5C 800A375C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 93F60 800A3760 2000BFAF */  sw         $ra, 0x20($sp)
    /* 93F64 800A3764 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 93F68 800A3768 1800B2AF */  sw         $s2, 0x18($sp)
    /* 93F6C 800A376C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 93F70 800A3770 1000B0AF */  sw         $s0, 0x10($sp)
    /* 93F74 800A3774 EFE9030C */  jal        func_800FA7BC
    /* 93F78 800A3778 21908000 */   addu      $s2, $a0, $zero
    /* 93F7C 800A377C 100040AE */  sw         $zero, 0x10($s2)
    /* 93F80 800A3780 140040AE */  sw         $zero, 0x14($s2)
    /* 93F84 800A3784 180040AE */  sw         $zero, 0x18($s2)
    /* 93F88 800A3788 1C0040AE */  sw         $zero, 0x1C($s2)
    /* 93F8C 800A378C 200040AE */  sw         $zero, 0x20($s2)
    /* 93F90 800A3790 240040AE */  sw         $zero, 0x24($s2)
    /* 93F94 800A3794 280040AE */  sw         $zero, 0x28($s2)
    /* 93F98 800A3798 2C0040AE */  sw         $zero, 0x2C($s2)
    /* 93F9C 800A379C 300040AE */  sw         $zero, 0x30($s2)
    /* 93FA0 800A37A0 340040AE */  sw         $zero, 0x34($s2)
    /* 93FA4 800A37A4 380040AE */  sw         $zero, 0x38($s2)
    /* 93FA8 800A37A8 3C0040AE */  sw         $zero, 0x3C($s2)
    /* 93FAC 800A37AC 400040AE */  sw         $zero, 0x40($s2)
    /* 93FB0 800A37B0 440040AE */  sw         $zero, 0x44($s2)
    /* 93FB4 800A37B4 480040AE */  sw         $zero, 0x48($s2)
    /* 93FB8 800A37B8 4C0040AE */  sw         $zero, 0x4C($s2)
    /* 93FBC 800A37BC 500040AE */  sw         $zero, 0x50($s2)
    /* 93FC0 800A37C0 540040AE */  sw         $zero, 0x54($s2)
    /* 93FC4 800A37C4 580040AE */  sw         $zero, 0x58($s2)
    /* 93FC8 800A37C8 5C0040AE */  sw         $zero, 0x5C($s2)
    /* 93FCC 800A37CC 600040AE */  sw         $zero, 0x60($s2)
    /* 93FD0 800A37D0 640040AE */  sw         $zero, 0x64($s2)
    /* 93FD4 800A37D4 680040AE */  sw         $zero, 0x68($s2)
    /* 93FD8 800A37D8 6C0040A6 */  sh         $zero, 0x6C($s2)
    /* 93FDC 800A37DC 6E0040A6 */  sh         $zero, 0x6E($s2)
    /* 93FE0 800A37E0 00401124 */  addiu      $s1, $zero, 0x4000
    /* 93FE4 800A37E4 700051A6 */  sh         $s1, 0x70($s2)
    /* 93FE8 800A37E8 720051A6 */  sh         $s1, 0x72($s2)
    /* 93FEC 800A37EC 7A0040A6 */  sh         $zero, 0x7A($s2)
    /* 93FF0 800A37F0 7C0040A6 */  sh         $zero, 0x7C($s2)
    /* 93FF4 800A37F4 740040A6 */  sh         $zero, 0x74($s2)
    /* 93FF8 800A37F8 01001024 */  addiu      $s0, $zero, 0x1
    /* 93FFC 800A37FC 760050A6 */  sh         $s0, 0x76($s2)
    /* 94000 800A3800 780050A6 */  sh         $s0, 0x78($s2)
    /* 94004 800A3804 9AE0030C */  jal        func_800F8268
    /* 94008 800A3808 8C004426 */   addiu     $a0, $s2, 0x8C
    /* 9400C 800A380C EFE9030C */  jal        func_800FA7BC
    /* 94010 800A3810 B8004426 */   addiu     $a0, $s2, 0xB8
    /* 94014 800A3814 C80040AE */  sw         $zero, 0xC8($s2)
    /* 94018 800A3818 CC0040AE */  sw         $zero, 0xCC($s2)
    /* 9401C 800A381C D00040AE */  sw         $zero, 0xD0($s2)
    /* 94020 800A3820 D40040AE */  sw         $zero, 0xD4($s2)
    /* 94024 800A3824 D80040AE */  sw         $zero, 0xD8($s2)
    /* 94028 800A3828 DC0040AE */  sw         $zero, 0xDC($s2)
    /* 9402C 800A382C E00040AE */  sw         $zero, 0xE0($s2)
    /* 94030 800A3830 E40040AE */  sw         $zero, 0xE4($s2)
    /* 94034 800A3834 E80040AE */  sw         $zero, 0xE8($s2)
    /* 94038 800A3838 EC0040AE */  sw         $zero, 0xEC($s2)
    /* 9403C 800A383C F00040AE */  sw         $zero, 0xF0($s2)
    /* 94040 800A3840 F40040AE */  sw         $zero, 0xF4($s2)
    /* 94044 800A3844 F80040AE */  sw         $zero, 0xF8($s2)
    /* 94048 800A3848 FC0040AE */  sw         $zero, 0xFC($s2)
    /* 9404C 800A384C 000140AE */  sw         $zero, 0x100($s2)
    /* 94050 800A3850 040140AE */  sw         $zero, 0x104($s2)
    /* 94054 800A3854 080140AE */  sw         $zero, 0x108($s2)
    /* 94058 800A3858 0C0140AE */  sw         $zero, 0x10C($s2)
    /* 9405C 800A385C 100140AE */  sw         $zero, 0x110($s2)
    /* 94060 800A3860 140140AE */  sw         $zero, 0x114($s2)
    /* 94064 800A3864 180140AE */  sw         $zero, 0x118($s2)
    /* 94068 800A3868 1C0140AE */  sw         $zero, 0x11C($s2)
    /* 9406C 800A386C 200140AE */  sw         $zero, 0x120($s2)
    /* 94070 800A3870 240140A6 */  sh         $zero, 0x124($s2)
    /* 94074 800A3874 260140A6 */  sh         $zero, 0x126($s2)
    /* 94078 800A3878 280151A6 */  sh         $s1, 0x128($s2)
    /* 9407C 800A387C 2A0151A6 */  sh         $s1, 0x12A($s2)
    /* 94080 800A3880 320140A6 */  sh         $zero, 0x132($s2)
    /* 94084 800A3884 340140A6 */  sh         $zero, 0x134($s2)
    /* 94088 800A3888 2C0140A6 */  sh         $zero, 0x12C($s2)
    /* 9408C 800A388C 2E0150A6 */  sh         $s0, 0x12E($s2)
    /* 94090 800A3890 300150A6 */  sh         $s0, 0x130($s2)
    /* 94094 800A3894 3C0140AE */  sw         $zero, 0x13C($s2)
    /* 94098 800A3898 400140AE */  sw         $zero, 0x140($s2)
    /* 9409C 800A389C 440140AE */  sw         $zero, 0x144($s2)
    /* 940A0 800A38A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 940A4 800A38A4 480142A2 */  sb         $v0, 0x148($s2)
    /* 940A8 800A38A8 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 940AC 800A38AC BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 940B0 800A38B0 B40042AE */  sw         $v0, 0xB4($s2)
    /* 940B4 800A38B4 3C0140AE */  sw         $zero, 0x13C($s2)
    /* 940B8 800A38B8 4C0140AE */  sw         $zero, 0x14C($s2)
    /* 940BC 800A38BC 9AE0030C */  jal        func_800F8268
    /* 940C0 800A38C0 50014426 */   addiu     $a0, $s2, 0x150
    /* 940C4 800A38C4 FCEC030C */  jal        func_800FB3F0
    /* 940C8 800A38C8 7C014426 */   addiu     $a0, $s2, 0x17C
    /* 940CC 800A38CC 10025126 */  addiu      $s1, $s2, 0x210
    /* 940D0 800A38D0 04001024 */  addiu      $s0, $zero, 0x4
    /* 940D4 800A38D4 FFFF1324 */  addiu      $s3, $zero, -0x1
  .L800A38D8:
    /* 940D8 800A38D8 FCEC030C */  jal        func_800FB3F0
    /* 940DC 800A38DC 21202002 */   addu      $a0, $s1, $zero
    /* 940E0 800A38E0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 940E4 800A38E4 FCFF1316 */  bne        $s0, $s3, .L800A38D8
    /* 940E8 800A38E8 94003126 */   addiu     $s1, $s1, 0x94
    /* 940EC 800A38EC FCEC030C */  jal        func_800FB3F0
    /* 940F0 800A38F0 F4044426 */   addiu     $a0, $s2, 0x4F4
    /* 940F4 800A38F4 FCEC030C */  jal        func_800FB3F0
    /* 940F8 800A38F8 88054426 */   addiu     $a0, $s2, 0x588
    /* 940FC 800A38FC 221B040C */  jal        func_80106C88
    /* 94100 800A3900 84004426 */   addiu     $a0, $s2, 0x84
    /* 94104 800A3904 200640A2 */  sb         $zero, 0x620($s2)
    /* 94108 800A3908 21104002 */  addu       $v0, $s2, $zero
    /* 9410C 800A390C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 94110 800A3910 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 94114 800A3914 1800B28F */  lw         $s2, 0x18($sp)
    /* 94118 800A3918 1400B18F */  lw         $s1, 0x14($sp)
    /* 9411C 800A391C 1000B08F */  lw         $s0, 0x10($sp)
    /* 94120 800A3920 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 94124 800A3924 0800E003 */  jr         $ra
    /* 94128 800A3928 00000000 */   nop
endlabel func_800A375C
