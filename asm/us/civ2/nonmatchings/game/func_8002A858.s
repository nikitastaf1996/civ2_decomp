.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A858, 0x100

glabel func_8002A858
    /* 1B058 8002A858 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B05C 8002A85C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1B060 8002A860 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B064 8002A864 21808000 */  addu       $s0, $a0, $zero
    /* 1B068 8002A868 40101000 */  sll        $v0, $s0, 1
    /* 1B06C 8002A86C 21105000 */  addu       $v0, $v0, $s0
    /* 1B070 8002A870 80100200 */  sll        $v0, $v0, 2
    /* 1B074 8002A874 21105000 */  addu       $v0, $v0, $s0
    /* 1B078 8002A878 40200200 */  sll        $a0, $v0, 1
    /* 1B07C 8002A87C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 1B080 8002A880 21082400 */  addu       $at, $at, $a0
    /* 1B084 8002A884 B8D62594 */  lhu        $a1, %lo(D_8010D6B8)($at)
    /* 1B088 8002A888 00000000 */  nop
    /* 1B08C 8002A88C 0020A230 */  andi       $v0, $a1, 0x2000
    /* 1B090 8002A890 2C004014 */  bnez       $v0, .L8002A944
    /* 1B094 8002A894 00000000 */   nop
    /* 1B098 8002A898 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1B09C 8002A89C 21082400 */  addu       $at, $at, $a0
    /* 1B0A0 8002A8A0 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 1B0A4 8002A8A4 00000000 */  nop
    /* 1B0A8 8002A8A8 80180200 */  sll        $v1, $v0, 2
    /* 1B0AC 8002A8AC 21186200 */  addu       $v1, $v1, $v0
    /* 1B0B0 8002A8B0 80180300 */  sll        $v1, $v1, 2
    /* 1B0B4 8002A8B4 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1B0B8 8002A8B8 21082300 */  addu       $at, $at, $v1
    /* 1B0BC 8002A8BC 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1B0C0 8002A8C0 00000000 */  nop
    /* 1B0C4 8002A8C4 00104230 */  andi       $v0, $v0, 0x1000
    /* 1B0C8 8002A8C8 1E004014 */  bnez       $v0, .L8002A944
    /* 1B0CC 8002A8CC 0020A234 */   ori       $v0, $a1, 0x2000
    /* 1B0D0 8002A8D0 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 1B0D4 8002A8D4 21082400 */  addu       $at, $at, $a0
    /* 1B0D8 8002A8D8 B8D622A4 */  sh         $v0, %lo(D_8010D6B8)($at)
    /* 1B0DC 8002A8DC 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1B0E0 8002A8E0 21082400 */  addu       $at, $at, $a0
    /* 1B0E4 8002A8E4 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 1B0E8 8002A8E8 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 1B0EC 8002A8EC B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 1B0F0 8002A8F0 00000000 */  nop
    /* 1B0F4 8002A8F4 13004314 */  bne        $v0, $v1, .L8002A944
    /* 1B0F8 8002A8F8 00000000 */   nop
    /* 1B0FC 8002A8FC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1B100 8002A900 21082400 */  addu       $at, $at, $a0
    /* 1B104 8002A904 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1B108 8002A908 00000000 */  nop
    /* 1B10C 8002A90C 80100300 */  sll        $v0, $v1, 2
    /* 1B110 8002A910 21104300 */  addu       $v0, $v0, $v1
    /* 1B114 8002A914 80100200 */  sll        $v0, $v0, 2
    /* 1B118 8002A918 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 1B11C 8002A91C 21082200 */  addu       $at, $at, $v0
    /* 1B120 8002A920 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 1B124 8002A924 ABAC020C */  jal        func_800AB2AC
    /* 1B128 8002A928 21200000 */   addu      $a0, $zero, $zero
    /* 1B12C 8002A92C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 1B130 8002A930 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 1B134 8002A934 BE3E0524 */  addiu      $a1, $zero, 0x3EBE
    /* 1B138 8002A938 21300000 */  addu       $a2, $zero, $zero
    /* 1B13C 8002A93C 63E4020C */  jal        func_800B918C
    /* 1B140 8002A940 21380002 */   addu      $a3, $s0, $zero
  .L8002A944:
    /* 1B144 8002A944 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1B148 8002A948 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B14C 8002A94C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B150 8002A950 0800E003 */  jr         $ra
    /* 1B154 8002A954 00000000 */   nop
endlabel func_8002A858
