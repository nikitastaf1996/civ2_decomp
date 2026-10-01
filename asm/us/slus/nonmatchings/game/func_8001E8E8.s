.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E8E8, 0x198

glabel func_8001E8E8
    /* F0E8 8001E8E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F0EC 8001E8EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* F0F0 8001E8F0 0877000C */  jal        func_8001DC20
    /* F0F4 8001E8F4 00000000 */   nop
    /* F0F8 8001E8F8 1380023C */  lui        $v0, %hi(D_8012A344)
    /* F0FC 8001E8FC 44A3428C */  lw         $v0, %lo(D_8012A344)($v0)
    /* F100 8001E900 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* F104 8001E904 25104300 */  or         $v0, $v0, $v1
    /* F108 8001E908 1380013C */  lui        $at, %hi(D_8012A344)
    /* F10C 8001E90C 44A322AC */  sw         $v0, %lo(D_8012A344)($at)
    /* F110 8001E910 1380023C */  lui        $v0, %hi(D_8012A5A8)
    /* F114 8001E914 A8A5428C */  lw         $v0, %lo(D_8012A5A8)($v0)
    /* F118 8001E918 00000000 */  nop
    /* F11C 8001E91C 25104300 */  or         $v0, $v0, $v1
    /* F120 8001E920 1380013C */  lui        $at, %hi(D_8012A5A8)
    /* F124 8001E924 A8A522AC */  sw         $v0, %lo(D_8012A5A8)($at)
    /* F128 8001E928 1380023C */  lui        $v0, %hi(D_8012A950)
    /* F12C 8001E92C 50A9428C */  lw         $v0, %lo(D_8012A950)($v0)
    /* F130 8001E930 00000000 */  nop
    /* F134 8001E934 25104300 */  or         $v0, $v0, $v1
    /* F138 8001E938 1380013C */  lui        $at, %hi(D_8012A950)
    /* F13C 8001E93C 50A922AC */  sw         $v0, %lo(D_8012A950)($at)
    /* F140 8001E940 1380023C */  lui        $v0, %hi(D_8012A6EC)
    /* F144 8001E944 ECA6428C */  lw         $v0, %lo(D_8012A6EC)($v0)
    /* F148 8001E948 00000000 */  nop
    /* F14C 8001E94C 25104300 */  or         $v0, $v0, $v1
    /* F150 8001E950 1380013C */  lui        $at, %hi(D_8012A6EC)
    /* F154 8001E954 ECA622AC */  sw         $v0, %lo(D_8012A6EC)($at)
    /* F158 8001E958 21280000 */  addu       $a1, $zero, $zero
    /* F15C 8001E95C 0080063C */  lui        $a2, (0x80000000 >> 16)
    /* F160 8001E960 00240500 */  sll        $a0, $a1, 16
  .L8001E964:
    /* F164 8001E964 03240400 */  sra        $a0, $a0, 16
    /* F168 8001E968 12008224 */  addiu      $v0, $a0, 0x12
    /* F16C 8001E96C C0180200 */  sll        $v1, $v0, 3
    /* F170 8001E970 21186200 */  addu       $v1, $v1, $v0
    /* F174 8001E974 80180300 */  sll        $v1, $v1, 2
    /* F178 8001E978 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F17C 8001E97C 21082300 */  addu       $at, $at, $v1
    /* F180 8001E980 E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* F184 8001E984 00000000 */  nop
    /* F188 8001E988 25104600 */  or         $v0, $v0, $a2
    /* F18C 8001E98C 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F190 8001E990 21082300 */  addu       $at, $at, $v1
    /* F194 8001E994 E0A022AC */  sw         $v0, %lo(D_8012A0E0)($at)
    /* F198 8001E998 2C008224 */  addiu      $v0, $a0, 0x2C
    /* F19C 8001E99C C0180200 */  sll        $v1, $v0, 3
    /* F1A0 8001E9A0 21186200 */  addu       $v1, $v1, $v0
    /* F1A4 8001E9A4 80180300 */  sll        $v1, $v1, 2
    /* F1A8 8001E9A8 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F1AC 8001E9AC 21082300 */  addu       $at, $at, $v1
    /* F1B0 8001E9B0 E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* F1B4 8001E9B4 00000000 */  nop
    /* F1B8 8001E9B8 25104600 */  or         $v0, $v0, $a2
    /* F1BC 8001E9BC 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F1C0 8001E9C0 21082300 */  addu       $at, $at, $v1
    /* F1C4 8001E9C4 E0A022AC */  sw         $v0, %lo(D_8012A0E0)($at)
    /* F1C8 8001E9C8 0100A224 */  addiu      $v0, $a1, 0x1
    /* F1CC 8001E9CC 21284000 */  addu       $a1, $v0, $zero
    /* F1D0 8001E9D0 00140200 */  sll        $v0, $v0, 16
    /* F1D4 8001E9D4 03140200 */  sra        $v0, $v0, 16
    /* F1D8 8001E9D8 10004228 */  slti       $v0, $v0, 0x10
    /* F1DC 8001E9DC E1FF4014 */  bnez       $v0, .L8001E964
    /* F1E0 8001E9E0 00240500 */   sll       $a0, $a1, 16
    /* F1E4 8001E9E4 21280000 */  addu       $a1, $zero, $zero
    /* F1E8 8001E9E8 0080063C */  lui        $a2, (0x80000000 >> 16)
    /* F1EC 8001E9EC 00240500 */  sll        $a0, $a1, 16
  .L8001E9F0:
    /* F1F0 8001E9F0 03240400 */  sra        $a0, $a0, 16
    /* F1F4 8001E9F4 3D008224 */  addiu      $v0, $a0, 0x3D
    /* F1F8 8001E9F8 C0180200 */  sll        $v1, $v0, 3
    /* F1FC 8001E9FC 21186200 */  addu       $v1, $v1, $v0
    /* F200 8001EA00 80180300 */  sll        $v1, $v1, 2
    /* F204 8001EA04 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F208 8001EA08 21082300 */  addu       $at, $at, $v1
    /* F20C 8001EA0C E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* F210 8001EA10 00000000 */  nop
    /* F214 8001EA14 25104600 */  or         $v0, $v0, $a2
    /* F218 8001EA18 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F21C 8001EA1C 21082300 */  addu       $at, $at, $v1
    /* F220 8001EA20 E0A022AC */  sw         $v0, %lo(D_8012A0E0)($at)
    /* F224 8001EA24 23008224 */  addiu      $v0, $a0, 0x23
    /* F228 8001EA28 C0180200 */  sll        $v1, $v0, 3
    /* F22C 8001EA2C 21186200 */  addu       $v1, $v1, $v0
    /* F230 8001EA30 80180300 */  sll        $v1, $v1, 2
    /* F234 8001EA34 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F238 8001EA38 21082300 */  addu       $at, $at, $v1
    /* F23C 8001EA3C E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* F240 8001EA40 00000000 */  nop
    /* F244 8001EA44 25104600 */  or         $v0, $v0, $a2
    /* F248 8001EA48 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* F24C 8001EA4C 21082300 */  addu       $at, $at, $v1
    /* F250 8001EA50 E0A022AC */  sw         $v0, %lo(D_8012A0E0)($at)
    /* F254 8001EA54 0100A224 */  addiu      $v0, $a1, 0x1
    /* F258 8001EA58 21284000 */  addu       $a1, $v0, $zero
    /* F25C 8001EA5C 00140200 */  sll        $v0, $v0, 16
    /* F260 8001EA60 03140200 */  sra        $v0, $v0, 16
    /* F264 8001EA64 05004228 */  slti       $v0, $v0, 0x5
    /* F268 8001EA68 E1FF4014 */  bnez       $v0, .L8001E9F0
    /* F26C 8001EA6C 00240500 */   sll       $a0, $a1, 16
    /* F270 8001EA70 1000BF8F */  lw         $ra, 0x10($sp)
    /* F274 8001EA74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F278 8001EA78 0800E003 */  jr         $ra
    /* F27C 8001EA7C 00000000 */   nop
endlabel func_8001E8E8
