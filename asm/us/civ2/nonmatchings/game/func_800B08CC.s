.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B08CC, 0xB0

glabel func_800B08CC
    /* A10CC 800B08CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A10D0 800B08D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* A10D4 800B08D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A10D8 800B08D8 2F00A228 */  slti       $v0, $a1, 0x2F
    /* A10DC 800B08DC 21004010 */  beqz       $v0, .L800B0964
    /* A10E0 800B08E0 1000B0AF */   sw        $s0, 0x10($sp)
    /* A10E4 800B08E4 40100500 */  sll        $v0, $a1, 1
    /* A10E8 800B08E8 21104500 */  addu       $v0, $v0, $a1
    /* A10EC 800B08EC 40880200 */  sll        $s1, $v0, 1
    /* A10F0 800B08F0 40100400 */  sll        $v0, $a0, 1
    /* A10F4 800B08F4 21104400 */  addu       $v0, $v0, $a0
    /* A10F8 800B08F8 80100200 */  sll        $v0, $v0, 2
    /* A10FC 800B08FC 23104400 */  subu       $v0, $v0, $a0
    /* A1100 800B0900 00110200 */  sll        $v0, $v0, 4
    /* A1104 800B0904 23104400 */  subu       $v0, $v0, $a0
    /* A1108 800B0908 C0800200 */  sll        $s0, $v0, 3
    /* A110C 800B090C 21103002 */  addu       $v0, $s1, $s0
    /* A1110 800B0910 1180013C */  lui        $at, %hi(D_80117A8C)
    /* A1114 800B0914 21082200 */  addu       $at, $at, $v0
    /* A1118 800B0918 8C7A2380 */  lb         $v1, %lo(D_80117A8C)($at)
    /* A111C 800B091C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A1120 800B0920 10006210 */  beq        $v1, $v0, .L800B0964
    /* A1124 800B0924 00000000 */   nop
    /* A1128 800B0928 33C2020C */  jal        func_800B08CC
    /* A112C 800B092C 0100A524 */   addiu     $a1, $a1, 0x1
    /* A1130 800B0930 1180023C */  lui        $v0, %hi(D_80117A8E)
    /* A1134 800B0934 8E7A4224 */  addiu      $v0, $v0, %lo(D_80117A8E)
    /* A1138 800B0938 21182202 */  addu       $v1, $s1, $v0
    /* A113C 800B093C 21187000 */  addu       $v1, $v1, $s0
    /* A1140 800B0940 FAFF4224 */  addiu      $v0, $v0, -0x6
    /* A1144 800B0944 21100202 */  addu       $v0, $s0, $v0
    /* A1148 800B0948 21102202 */  addu       $v0, $s1, $v0
    /* A114C 800B094C 03004488 */  lwl        $a0, 0x3($v0)
    /* A1150 800B0950 00004498 */  lwr        $a0, 0x0($v0)
    /* A1154 800B0954 04004584 */  lh         $a1, 0x4($v0)
    /* A1158 800B0958 030064A8 */  swl        $a0, 0x3($v1)
    /* A115C 800B095C 000064B8 */  swr        $a0, 0x0($v1)
    /* A1160 800B0960 040065A4 */  sh         $a1, 0x4($v1)
  .L800B0964:
    /* A1164 800B0964 1800BF8F */  lw         $ra, 0x18($sp)
    /* A1168 800B0968 1400B18F */  lw         $s1, 0x14($sp)
    /* A116C 800B096C 1000B08F */  lw         $s0, 0x10($sp)
    /* A1170 800B0970 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A1174 800B0974 0800E003 */  jr         $ra
    /* A1178 800B0978 00000000 */   nop
endlabel func_800B08CC
