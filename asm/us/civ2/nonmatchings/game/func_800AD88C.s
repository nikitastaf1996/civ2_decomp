.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AD88C, 0x108

glabel func_800AD88C
    /* 9E08C 800AD88C 30FDBD27 */  addiu      $sp, $sp, -0x2D0
    /* 9E090 800AD890 CC02BFAF */  sw         $ra, 0x2CC($sp)
    /* 9E094 800AD894 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 9E098 800AD898 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E09C 800AD89C ADC5020C */  jal        func_800B16B4
    /* 9E0A0 800AD8A0 00200524 */   addiu     $a1, $zero, 0x2000
  .L800AD8A4:
    /* 9E0A4 800AD8A4 A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9E0A8 800AD8A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E0AC 800AD8AC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9E0B0 800AD8B0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9E0B4 800AD8B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9E0B8 800AD8B8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9E0BC 800AD8BC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9E0C0 800AD8C0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E0C4 800AD8C4 6F060624 */  addiu      $a2, $zero, 0x66F
    /* 9E0C8 800AD8C8 2CE0020C */  jal        func_800B80B0
    /* 9E0CC 800AD8CC 21380000 */   addu      $a3, $zero, $zero
    /* 9E0D0 800AD8D0 01001024 */  addiu      $s0, $zero, 0x1
    /* 9E0D4 800AD8D4 C0181000 */  sll        $v1, $s0, 3
  .L800AD8D8:
    /* 9E0D8 800AD8D8 1180013C */  lui        $at, %hi(D_8010D06A)
    /* 9E0DC 800AD8DC 21082300 */  addu       $at, $at, $v1
    /* 9E0E0 800AD8E0 6AD02280 */  lb         $v0, %lo(D_8010D06A)($at)
    /* 9E0E4 800AD8E4 00000000 */  nop
    /* 9E0E8 800AD8E8 FFFF4228 */  slti       $v0, $v0, -0x1
    /* 9E0EC 800AD8EC 0A004014 */  bnez       $v0, .L800AD918
    /* 9E0F0 800AD8F0 00000000 */   nop
    /* 9E0F4 800AD8F4 1180013C */  lui        $at, %hi(D_8010D064)
    /* 9E0F8 800AD8F8 21082300 */  addu       $at, $at, $v1
    /* 9E0FC 800AD8FC 64D0248C */  lw         $a0, %lo(D_8010D064)($at)
    /* 9E100 800AD900 A63A030C */  jal        func_800CEA98
    /* 9E104 800AD904 00000000 */   nop
    /* 9E108 800AD908 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E10C 800AD90C 21284000 */  addu       $a1, $v0, $zero
    /* 9E110 800AD910 A8C9020C */  jal        func_800B26A0
    /* 9E114 800AD914 21300002 */   addu      $a2, $s0, $zero
  .L800AD918:
    /* 9E118 800AD918 01001026 */  addiu      $s0, $s0, 0x1
    /* 9E11C 800AD91C 2300022A */  slti       $v0, $s0, 0x23
    /* 9E120 800AD920 EDFF4014 */  bnez       $v0, .L800AD8D8
    /* 9E124 800AD924 C0181000 */   sll       $v1, $s0, 3
    /* 9E128 800AD928 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E12C 800AD92C 21280000 */  addu       $a1, $zero, $zero
    /* 9E130 800AD930 78000624 */  addiu      $a2, $zero, 0x78
    /* 9E134 800AD934 ACE2020C */  jal        func_800B8AB0
    /* 9E138 800AD938 E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9E13C 800AD93C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E140 800AD940 21280000 */  addu       $a1, $zero, $zero
    /* 9E144 800AD944 78000624 */  addiu      $a2, $zero, 0x78
    /* 9E148 800AD948 B0E2020C */  jal        func_800B8AC0
    /* 9E14C 800AD94C E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9E150 800AD950 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E154 800AD954 52DF020C */  jal        func_800B7D48
    /* 9E158 800AD958 21280000 */   addu      $a1, $zero, $zero
    /* 9E15C 800AD95C 21804000 */  addu       $s0, $v0, $zero
    /* 9E160 800AD960 05000006 */  bltz       $s0, .L800AD978
    /* 9E164 800AD964 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9E168 800AD968 53B4020C */  jal        func_800AD14C
    /* 9E16C 800AD96C 21200002 */   addu      $a0, $s0, $zero
    /* 9E170 800AD970 29B60208 */  j          .L800AD8A4
    /* 9E174 800AD974 00000000 */   nop
  .L800AD978:
    /* 9E178 800AD978 0AC7020C */  jal        func_800B1C28
    /* 9E17C 800AD97C 02000524 */   addiu     $a1, $zero, 0x2
    /* 9E180 800AD980 CC02BF8F */  lw         $ra, 0x2CC($sp)
    /* 9E184 800AD984 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 9E188 800AD988 D002BD27 */  addiu      $sp, $sp, 0x2D0
    /* 9E18C 800AD98C 0800E003 */  jr         $ra
    /* 9E190 800AD990 00000000 */   nop
endlabel func_800AD88C
