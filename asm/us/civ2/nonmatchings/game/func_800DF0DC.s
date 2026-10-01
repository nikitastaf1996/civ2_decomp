.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF0DC, 0xFC

glabel func_800DF0DC
    /* CF8DC 800DF0DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CF8E0 800DF0E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* CF8E4 800DF0E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* CF8E8 800DF0E8 9AE0030C */  jal        func_800F8268
    /* CF8EC 800DF0EC 21808000 */   addu      $s0, $a0, $zero
    /* CF8F0 800DF0F0 EFE9030C */  jal        func_800FA7BC
    /* CF8F4 800DF0F4 2C000426 */   addiu     $a0, $s0, 0x2C
    /* CF8F8 800DF0F8 3C0000AE */  sw         $zero, 0x3C($s0)
    /* CF8FC 800DF0FC 400000AE */  sw         $zero, 0x40($s0)
    /* CF900 800DF100 440000AE */  sw         $zero, 0x44($s0)
    /* CF904 800DF104 480000AE */  sw         $zero, 0x48($s0)
    /* CF908 800DF108 4C0000AE */  sw         $zero, 0x4C($s0)
    /* CF90C 800DF10C 500000AE */  sw         $zero, 0x50($s0)
    /* CF910 800DF110 540000AE */  sw         $zero, 0x54($s0)
    /* CF914 800DF114 580000AE */  sw         $zero, 0x58($s0)
    /* CF918 800DF118 5C0000AE */  sw         $zero, 0x5C($s0)
    /* CF91C 800DF11C 600000AE */  sw         $zero, 0x60($s0)
    /* CF920 800DF120 640000AE */  sw         $zero, 0x64($s0)
    /* CF924 800DF124 680000AE */  sw         $zero, 0x68($s0)
    /* CF928 800DF128 6C0000AE */  sw         $zero, 0x6C($s0)
    /* CF92C 800DF12C 700000AE */  sw         $zero, 0x70($s0)
    /* CF930 800DF130 740000AE */  sw         $zero, 0x74($s0)
    /* CF934 800DF134 780000AE */  sw         $zero, 0x78($s0)
    /* CF938 800DF138 7C0000AE */  sw         $zero, 0x7C($s0)
    /* CF93C 800DF13C 800000AE */  sw         $zero, 0x80($s0)
    /* CF940 800DF140 840000AE */  sw         $zero, 0x84($s0)
    /* CF944 800DF144 880000AE */  sw         $zero, 0x88($s0)
    /* CF948 800DF148 8C0000AE */  sw         $zero, 0x8C($s0)
    /* CF94C 800DF14C 900000AE */  sw         $zero, 0x90($s0)
    /* CF950 800DF150 940000AE */  sw         $zero, 0x94($s0)
    /* CF954 800DF154 980000A6 */  sh         $zero, 0x98($s0)
    /* CF958 800DF158 9A0000A6 */  sh         $zero, 0x9A($s0)
    /* CF95C 800DF15C 00400224 */  addiu      $v0, $zero, 0x4000
    /* CF960 800DF160 9C0002A6 */  sh         $v0, 0x9C($s0)
    /* CF964 800DF164 9E0002A6 */  sh         $v0, 0x9E($s0)
    /* CF968 800DF168 A60000A6 */  sh         $zero, 0xA6($s0)
    /* CF96C 800DF16C A80000A6 */  sh         $zero, 0xA8($s0)
    /* CF970 800DF170 A00000A6 */  sh         $zero, 0xA0($s0)
    /* CF974 800DF174 01000224 */  addiu      $v0, $zero, 0x1
    /* CF978 800DF178 A20002A6 */  sh         $v0, 0xA2($s0)
    /* CF97C 800DF17C A40002A6 */  sh         $v0, 0xA4($s0)
    /* CF980 800DF180 B00000AE */  sw         $zero, 0xB0($s0)
    /* CF984 800DF184 B40000AE */  sw         $zero, 0xB4($s0)
    /* CF988 800DF188 B80000AE */  sw         $zero, 0xB8($s0)
    /* CF98C 800DF18C 01000224 */  addiu      $v0, $zero, 0x1
    /* CF990 800DF190 BC0002A2 */  sb         $v0, 0xBC($s0)
    /* CF994 800DF194 0180023C */  lui        $v0, %hi(D_800138BC)
    /* CF998 800DF198 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* CF99C 800DF19C 280002AE */  sw         $v0, 0x28($s0)
    /* CF9A0 800DF1A0 B00000AE */  sw         $zero, 0xB0($s0)
    /* CF9A4 800DF1A4 C00000AE */  sw         $zero, 0xC0($s0)
    /* CF9A8 800DF1A8 280002AE */  sw         $v0, 0x28($s0)
    /* CF9AC 800DF1AC 43D7030C */  jal        func_800F5D0C
    /* CF9B0 800DF1B0 28020426 */   addiu     $a0, $s0, 0x228
    /* CF9B4 800DF1B4 9AE0030C */  jal        func_800F8268
    /* CF9B8 800DF1B8 B4030426 */   addiu     $a0, $s0, 0x3B4
    /* CF9BC 800DF1BC 301090AF */  sw         $s0, %gp_rel(D_80159508)($gp)
    /* CF9C0 800DF1C0 21100002 */  addu       $v0, $s0, $zero
    /* CF9C4 800DF1C4 1400BF8F */  lw         $ra, 0x14($sp)
    /* CF9C8 800DF1C8 1000B08F */  lw         $s0, 0x10($sp)
    /* CF9CC 800DF1CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CF9D0 800DF1D0 0800E003 */  jr         $ra
    /* CF9D4 800DF1D4 00000000 */   nop
endlabel func_800DF0DC
