.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE090, 0xD0

glabel func_800DE090
    /* CE890 800DE090 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE894 800DE094 1400BFAF */  sw         $ra, 0x14($sp)
    /* CE898 800DE098 1000B0AF */  sw         $s0, 0x10($sp)
    /* CE89C 800DE09C EFE9030C */  jal        func_800FA7BC
    /* CE8A0 800DE0A0 21808000 */   addu      $s0, $a0, $zero
    /* CE8A4 800DE0A4 100000AE */  sw         $zero, 0x10($s0)
    /* CE8A8 800DE0A8 140000AE */  sw         $zero, 0x14($s0)
    /* CE8AC 800DE0AC 180000AE */  sw         $zero, 0x18($s0)
    /* CE8B0 800DE0B0 1C0000AE */  sw         $zero, 0x1C($s0)
    /* CE8B4 800DE0B4 200000AE */  sw         $zero, 0x20($s0)
    /* CE8B8 800DE0B8 240000AE */  sw         $zero, 0x24($s0)
    /* CE8BC 800DE0BC 280000AE */  sw         $zero, 0x28($s0)
    /* CE8C0 800DE0C0 2C0000AE */  sw         $zero, 0x2C($s0)
    /* CE8C4 800DE0C4 300000AE */  sw         $zero, 0x30($s0)
    /* CE8C8 800DE0C8 340000AE */  sw         $zero, 0x34($s0)
    /* CE8CC 800DE0CC 380000AE */  sw         $zero, 0x38($s0)
    /* CE8D0 800DE0D0 3C0000AE */  sw         $zero, 0x3C($s0)
    /* CE8D4 800DE0D4 400000AE */  sw         $zero, 0x40($s0)
    /* CE8D8 800DE0D8 440000AE */  sw         $zero, 0x44($s0)
    /* CE8DC 800DE0DC 480000AE */  sw         $zero, 0x48($s0)
    /* CE8E0 800DE0E0 4C0000AE */  sw         $zero, 0x4C($s0)
    /* CE8E4 800DE0E4 500000AE */  sw         $zero, 0x50($s0)
    /* CE8E8 800DE0E8 540000AE */  sw         $zero, 0x54($s0)
    /* CE8EC 800DE0EC 580000AE */  sw         $zero, 0x58($s0)
    /* CE8F0 800DE0F0 5C0000AE */  sw         $zero, 0x5C($s0)
    /* CE8F4 800DE0F4 600000AE */  sw         $zero, 0x60($s0)
    /* CE8F8 800DE0F8 640000AE */  sw         $zero, 0x64($s0)
    /* CE8FC 800DE0FC 680000AE */  sw         $zero, 0x68($s0)
    /* CE900 800DE100 6C0000A6 */  sh         $zero, 0x6C($s0)
    /* CE904 800DE104 6E0000A6 */  sh         $zero, 0x6E($s0)
    /* CE908 800DE108 00400224 */  addiu      $v0, $zero, 0x4000
    /* CE90C 800DE10C 700002A6 */  sh         $v0, 0x70($s0)
    /* CE910 800DE110 720002A6 */  sh         $v0, 0x72($s0)
    /* CE914 800DE114 7A0000A6 */  sh         $zero, 0x7A($s0)
    /* CE918 800DE118 7C0000A6 */  sh         $zero, 0x7C($s0)
    /* CE91C 800DE11C 740000A6 */  sh         $zero, 0x74($s0)
    /* CE920 800DE120 01000224 */  addiu      $v0, $zero, 0x1
    /* CE924 800DE124 760002A6 */  sh         $v0, 0x76($s0)
    /* CE928 800DE128 780002A6 */  sh         $v0, 0x78($s0)
    /* CE92C 800DE12C 43D7030C */  jal        func_800F5D0C
    /* CE930 800DE130 84000426 */   addiu     $a0, $s0, 0x84
    /* CE934 800DE134 0C0200AE */  sw         $zero, 0x20C($s0)
    /* CE938 800DE138 9AE0030C */  jal        func_800F8268
    /* CE93C 800DE13C 14060426 */   addiu     $a0, $s0, 0x614
    /* CE940 800DE140 100200AE */  sw         $zero, 0x210($s0)
    /* CE944 800DE144 480600AE */  sw         $zero, 0x648($s0)
    /* CE948 800DE148 21100002 */  addu       $v0, $s0, $zero
    /* CE94C 800DE14C 1400BF8F */  lw         $ra, 0x14($sp)
    /* CE950 800DE150 1000B08F */  lw         $s0, 0x10($sp)
    /* CE954 800DE154 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CE958 800DE158 0800E003 */  jr         $ra
    /* CE95C 800DE15C 00000000 */   nop
endlabel func_800DE090
