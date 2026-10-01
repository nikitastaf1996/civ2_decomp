.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E004, 0x184

glabel func_8004E004
    /* 3E804 8004E004 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E808 8004E008 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3E80C 8004E00C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E810 8004E010 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E814 8004E014 21888000 */  addu       $s1, $a0, $zero
    /* 3E818 8004E018 2180A000 */  addu       $s0, $a1, $zero
    /* 3E81C 8004E01C 21200002 */  addu       $a0, $s0, $zero
    /* 3E820 8004E020 21282002 */  addu       $a1, $s1, $zero
    /* 3E824 8004E024 A275030C */  jal        func_800DD688
    /* 3E828 8004E028 02400624 */   addiu     $a2, $zero, 0x4002
    /* 3E82C 8004E02C 21200002 */  addu       $a0, $s0, $zero
    /* 3E830 8004E030 21282002 */  addu       $a1, $s1, $zero
    /* 3E834 8004E034 6475030C */  jal        func_800DD590
    /* 3E838 8004E038 0400063C */   lui       $a2, (0x40000 >> 16)
    /* 3E83C 8004E03C 21200002 */  addu       $a0, $s0, $zero
    /* 3E840 8004E040 E175030C */  jal        func_800DD784
    /* 3E844 8004E044 21282002 */   addu      $a1, $s1, $zero
    /* 3E848 8004E048 21204000 */  addu       $a0, $v0, $zero
    /* 3E84C 8004E04C 21280000 */  addu       $a1, $zero, $zero
    /* 3E850 8004E050 F53A030C */  jal        func_800CEBD4
    /* 3E854 8004E054 32000624 */   addiu     $a2, $zero, 0x32
    /* 3E858 8004E058 21200002 */  addu       $a0, $s0, $zero
    /* 3E85C 8004E05C 21282002 */  addu       $a1, $s1, $zero
    /* 3E860 8004E060 EF75030C */  jal        func_800DD7BC
    /* 3E864 8004E064 21304000 */   addu      $a2, $v0, $zero
    /* 3E868 8004E068 21202002 */  addu       $a0, $s1, $zero
    /* 3E86C 8004E06C 6928010C */  jal        func_8004A1A4
    /* 3E870 8004E070 21280002 */   addu      $a1, $s0, $zero
    /* 3E874 8004E074 40101100 */  sll        $v0, $s1, 1
    /* 3E878 8004E078 21105100 */  addu       $v0, $v0, $s1
    /* 3E87C 8004E07C 80100200 */  sll        $v0, $v0, 2
    /* 3E880 8004E080 23105100 */  subu       $v0, $v0, $s1
    /* 3E884 8004E084 00110200 */  sll        $v0, $v0, 4
    /* 3E888 8004E088 23105100 */  subu       $v0, $v0, $s1
    /* 3E88C 8004E08C C0100200 */  sll        $v0, $v0, 3
    /* 3E890 8004E090 1180043C */  lui        $a0, %hi(D_80117A56)
    /* 3E894 8004E094 567A8424 */  addiu      $a0, $a0, %lo(D_80117A56)
    /* 3E898 8004E098 40181000 */  sll        $v1, $s0, 1
    /* 3E89C 8004E09C 21104400 */  addu       $v0, $v0, $a0
    /* 3E8A0 8004E0A0 21186200 */  addu       $v1, $v1, $v0
    /* 3E8A4 8004E0A4 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 3E8A8 8004E0A8 62A24294 */  lhu        $v0, %lo(D_8011A262)($v0)
    /* 3E8AC 8004E0AC 00000000 */  nop
    /* 3E8B0 8004E0B0 000062A4 */  sh         $v0, 0x0($v1)
    /* 3E8B4 8004E0B4 21202002 */  addu       $a0, $s1, $zero
    /* 3E8B8 8004E0B8 4130010C */  jal        func_8004C104
    /* 3E8BC 8004E0BC 21280002 */   addu      $a1, $s0, $zero
    /* 3E8C0 8004E0C0 8A54020C */  jal        func_80095228
    /* 3E8C4 8004E0C4 21200002 */   addu      $a0, $s0, $zero
    /* 3E8C8 8004E0C8 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3E8CC 8004E0CC 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3E8D0 8004E0D0 A587030C */  jal        func_800E1E94
    /* 3E8D4 8004E0D4 21284000 */   addu      $a1, $v0, $zero
    /* 3E8D8 8004E0D8 8A54020C */  jal        func_80095228
    /* 3E8DC 8004E0DC 21202002 */   addu      $a0, $s1, $zero
    /* 3E8E0 8004E0E0 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3E8E4 8004E0E4 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3E8E8 8004E0E8 A587030C */  jal        func_800E1E94
    /* 3E8EC 8004E0EC 21284000 */   addu      $a1, $v0, $zero
    /* 3E8F0 8004E0F0 AF8D020C */  jal        func_800A36BC
    /* 3E8F4 8004E0F4 02000424 */   addiu     $a0, $zero, 0x2
    /* 3E8F8 8004E0F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E8FC 8004E0FC 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E900 8004E100 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E904 8004E104 947A0524 */  addiu      $a1, $zero, 0x7A94
    /* 3E908 8004E108 1380073C */  lui        $a3, %hi(D_801358B4)
    /* 3E90C 8004E10C B458E724 */  addiu      $a3, $a3, %lo(D_801358B4)
    /* 3E910 8004E110 18E3020C */  jal        func_800B8C60
    /* 3E914 8004E114 21300000 */   addu      $a2, $zero, $zero
    /* 3E918 8004E118 01000424 */  addiu      $a0, $zero, 0x1
    /* 3E91C 8004E11C 1180063C */  lui        $a2, %hi(D_801176B4)
    /* 3E920 8004E120 B476C624 */  addiu      $a2, $a2, %lo(D_801176B4)
    /* 3E924 8004E124 80881100 */  sll        $s1, $s1, 2
    /* 3E928 8004E128 FFF70524 */  addiu      $a1, $zero, -0x801
    /* 3E92C 8004E12C 40100400 */  sll        $v0, $a0, 1
  .L8004E130:
    /* 3E930 8004E130 21104400 */  addu       $v0, $v0, $a0
    /* 3E934 8004E134 80100200 */  sll        $v0, $v0, 2
    /* 3E938 8004E138 23104400 */  subu       $v0, $v0, $a0
    /* 3E93C 8004E13C 00110200 */  sll        $v0, $v0, 4
    /* 3E940 8004E140 23104400 */  subu       $v0, $v0, $a0
    /* 3E944 8004E144 C0100200 */  sll        $v0, $v0, 3
    /* 3E948 8004E148 21104600 */  addu       $v0, $v0, $a2
    /* 3E94C 8004E14C 21102202 */  addu       $v0, $s1, $v0
    /* 3E950 8004E150 0000438C */  lw         $v1, 0x0($v0)
    /* 3E954 8004E154 00000000 */  nop
    /* 3E958 8004E158 24186500 */  and        $v1, $v1, $a1
    /* 3E95C 8004E15C 000043AC */  sw         $v1, 0x0($v0)
    /* 3E960 8004E160 01008424 */  addiu      $a0, $a0, 0x1
    /* 3E964 8004E164 08008228 */  slti       $v0, $a0, 0x8
    /* 3E968 8004E168 F1FF4014 */  bnez       $v0, .L8004E130
    /* 3E96C 8004E16C 40100400 */   sll       $v0, $a0, 1
    /* 3E970 8004E170 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3E974 8004E174 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E978 8004E178 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E97C 8004E17C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E980 8004E180 0800E003 */  jr         $ra
    /* 3E984 8004E184 00000000 */   nop
endlabel func_8004E004
