.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D088C, 0xF8

glabel func_800D088C
    /* C108C 800D088C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C1090 800D0890 1400BFAF */  sw         $ra, 0x14($sp)
    /* C1094 800D0894 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1098 800D0898 9AE0030C */  jal        func_800F8268
    /* C109C 800D089C 21808000 */   addu      $s0, $a0, $zero
    /* C10A0 800D08A0 EFE9030C */  jal        func_800FA7BC
    /* C10A4 800D08A4 2C000426 */   addiu     $a0, $s0, 0x2C
    /* C10A8 800D08A8 3C0000AE */  sw         $zero, 0x3C($s0)
    /* C10AC 800D08AC 400000AE */  sw         $zero, 0x40($s0)
    /* C10B0 800D08B0 440000AE */  sw         $zero, 0x44($s0)
    /* C10B4 800D08B4 480000AE */  sw         $zero, 0x48($s0)
    /* C10B8 800D08B8 4C0000AE */  sw         $zero, 0x4C($s0)
    /* C10BC 800D08BC 500000AE */  sw         $zero, 0x50($s0)
    /* C10C0 800D08C0 540000AE */  sw         $zero, 0x54($s0)
    /* C10C4 800D08C4 580000AE */  sw         $zero, 0x58($s0)
    /* C10C8 800D08C8 5C0000AE */  sw         $zero, 0x5C($s0)
    /* C10CC 800D08CC 600000AE */  sw         $zero, 0x60($s0)
    /* C10D0 800D08D0 640000AE */  sw         $zero, 0x64($s0)
    /* C10D4 800D08D4 680000AE */  sw         $zero, 0x68($s0)
    /* C10D8 800D08D8 6C0000AE */  sw         $zero, 0x6C($s0)
    /* C10DC 800D08DC 700000AE */  sw         $zero, 0x70($s0)
    /* C10E0 800D08E0 740000AE */  sw         $zero, 0x74($s0)
    /* C10E4 800D08E4 780000AE */  sw         $zero, 0x78($s0)
    /* C10E8 800D08E8 7C0000AE */  sw         $zero, 0x7C($s0)
    /* C10EC 800D08EC 800000AE */  sw         $zero, 0x80($s0)
    /* C10F0 800D08F0 840000AE */  sw         $zero, 0x84($s0)
    /* C10F4 800D08F4 880000AE */  sw         $zero, 0x88($s0)
    /* C10F8 800D08F8 8C0000AE */  sw         $zero, 0x8C($s0)
    /* C10FC 800D08FC 900000AE */  sw         $zero, 0x90($s0)
    /* C1100 800D0900 940000AE */  sw         $zero, 0x94($s0)
    /* C1104 800D0904 980000A6 */  sh         $zero, 0x98($s0)
    /* C1108 800D0908 9A0000A6 */  sh         $zero, 0x9A($s0)
    /* C110C 800D090C 00400224 */  addiu      $v0, $zero, 0x4000
    /* C1110 800D0910 9C0002A6 */  sh         $v0, 0x9C($s0)
    /* C1114 800D0914 9E0002A6 */  sh         $v0, 0x9E($s0)
    /* C1118 800D0918 A60000A6 */  sh         $zero, 0xA6($s0)
    /* C111C 800D091C A80000A6 */  sh         $zero, 0xA8($s0)
    /* C1120 800D0920 A00000A6 */  sh         $zero, 0xA0($s0)
    /* C1124 800D0924 01000224 */  addiu      $v0, $zero, 0x1
    /* C1128 800D0928 A20002A6 */  sh         $v0, 0xA2($s0)
    /* C112C 800D092C A40002A6 */  sh         $v0, 0xA4($s0)
    /* C1130 800D0930 B00000AE */  sw         $zero, 0xB0($s0)
    /* C1134 800D0934 B40000AE */  sw         $zero, 0xB4($s0)
    /* C1138 800D0938 B80000AE */  sw         $zero, 0xB8($s0)
    /* C113C 800D093C 01000224 */  addiu      $v0, $zero, 0x1
    /* C1140 800D0940 BC0002A2 */  sb         $v0, 0xBC($s0)
    /* C1144 800D0944 0180023C */  lui        $v0, %hi(D_800138BC)
    /* C1148 800D0948 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* C114C 800D094C 280002AE */  sw         $v0, 0x28($s0)
    /* C1150 800D0950 B00000AE */  sw         $zero, 0xB0($s0)
    /* C1154 800D0954 C00000AE */  sw         $zero, 0xC0($s0)
    /* C1158 800D0958 280002AE */  sw         $v0, 0x28($s0)
    /* C115C 800D095C C12B030C */  jal        func_800CAF04
    /* C1160 800D0960 28020426 */   addiu     $a0, $s0, 0x228
    /* C1164 800D0964 E841030C */  jal        func_800D07A0
    /* C1168 800D0968 21200002 */   addu      $a0, $s0, $zero
    /* C116C 800D096C 21100002 */  addu       $v0, $s0, $zero
    /* C1170 800D0970 1400BF8F */  lw         $ra, 0x14($sp)
    /* C1174 800D0974 1000B08F */  lw         $s0, 0x10($sp)
    /* C1178 800D0978 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C117C 800D097C 0800E003 */  jr         $ra
    /* C1180 800D0980 00000000 */   nop
endlabel func_800D088C
