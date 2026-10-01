.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FF28, 0x158

glabel func_8002FF28
    /* 20728 8002FF28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2072C 8002FF2C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 20730 8002FF30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 20734 8002FF34 1180103C */  lui        $s0, %hi(D_8010BA60)
    /* 20738 8002FF38 60BA1026 */  addiu      $s0, $s0, %lo(D_8010BA60)
    /* 2073C 8002FF3C 9AE0030C */  jal        func_800F8268
    /* 20740 8002FF40 21200002 */   addu      $a0, $s0, $zero
    /* 20744 8002FF44 EFE9030C */  jal        func_800FA7BC
    /* 20748 8002FF48 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 2074C 8002FF4C 1180013C */  lui        $at, %hi(D_8010BA9C)
    /* 20750 8002FF50 9CBA20AC */  sw         $zero, %lo(D_8010BA9C)($at)
    /* 20754 8002FF54 1180013C */  lui        $at, %hi(D_8010BAA0)
    /* 20758 8002FF58 A0BA20AC */  sw         $zero, %lo(D_8010BAA0)($at)
    /* 2075C 8002FF5C 1180013C */  lui        $at, %hi(D_8010BAA4)
    /* 20760 8002FF60 A4BA20AC */  sw         $zero, %lo(D_8010BAA4)($at)
    /* 20764 8002FF64 1180013C */  lui        $at, %hi(D_8010BAA8)
    /* 20768 8002FF68 A8BA20AC */  sw         $zero, %lo(D_8010BAA8)($at)
    /* 2076C 8002FF6C 1180013C */  lui        $at, %hi(D_8010BAAC)
    /* 20770 8002FF70 ACBA20AC */  sw         $zero, %lo(D_8010BAAC)($at)
    /* 20774 8002FF74 1180013C */  lui        $at, %hi(D_8010BAB0)
    /* 20778 8002FF78 B0BA20AC */  sw         $zero, %lo(D_8010BAB0)($at)
    /* 2077C 8002FF7C 1180013C */  lui        $at, %hi(D_8010BAB4)
    /* 20780 8002FF80 B4BA20AC */  sw         $zero, %lo(D_8010BAB4)($at)
    /* 20784 8002FF84 1180013C */  lui        $at, %hi(D_8010BAB8)
    /* 20788 8002FF88 B8BA20AC */  sw         $zero, %lo(D_8010BAB8)($at)
    /* 2078C 8002FF8C 1180013C */  lui        $at, %hi(D_8010BABC)
    /* 20790 8002FF90 BCBA20AC */  sw         $zero, %lo(D_8010BABC)($at)
    /* 20794 8002FF94 1180013C */  lui        $at, %hi(D_8010BAC0)
    /* 20798 8002FF98 C0BA20AC */  sw         $zero, %lo(D_8010BAC0)($at)
    /* 2079C 8002FF9C 1180013C */  lui        $at, %hi(D_8010BAC4)
    /* 207A0 8002FFA0 C4BA20AC */  sw         $zero, %lo(D_8010BAC4)($at)
    /* 207A4 8002FFA4 1180013C */  lui        $at, %hi(D_8010BAC8)
    /* 207A8 8002FFA8 C8BA20AC */  sw         $zero, %lo(D_8010BAC8)($at)
    /* 207AC 8002FFAC 1180013C */  lui        $at, %hi(D_8010BACC)
    /* 207B0 8002FFB0 CCBA20AC */  sw         $zero, %lo(D_8010BACC)($at)
    /* 207B4 8002FFB4 1180013C */  lui        $at, %hi(D_8010BAD0)
    /* 207B8 8002FFB8 D0BA20AC */  sw         $zero, %lo(D_8010BAD0)($at)
    /* 207BC 8002FFBC 1180013C */  lui        $at, %hi(D_8010BAD4)
    /* 207C0 8002FFC0 D4BA20AC */  sw         $zero, %lo(D_8010BAD4)($at)
    /* 207C4 8002FFC4 1180013C */  lui        $at, %hi(D_8010BAD8)
    /* 207C8 8002FFC8 D8BA20AC */  sw         $zero, %lo(D_8010BAD8)($at)
    /* 207CC 8002FFCC 1180013C */  lui        $at, %hi(D_8010BADC)
    /* 207D0 8002FFD0 DCBA20AC */  sw         $zero, %lo(D_8010BADC)($at)
    /* 207D4 8002FFD4 1180013C */  lui        $at, %hi(D_8010BAE0)
    /* 207D8 8002FFD8 E0BA20AC */  sw         $zero, %lo(D_8010BAE0)($at)
    /* 207DC 8002FFDC 1180013C */  lui        $at, %hi(D_8010BAE4)
    /* 207E0 8002FFE0 E4BA20AC */  sw         $zero, %lo(D_8010BAE4)($at)
    /* 207E4 8002FFE4 1180013C */  lui        $at, %hi(D_8010BAE8)
    /* 207E8 8002FFE8 E8BA20AC */  sw         $zero, %lo(D_8010BAE8)($at)
    /* 207EC 8002FFEC 1180013C */  lui        $at, %hi(D_8010BAEC)
    /* 207F0 8002FFF0 ECBA20AC */  sw         $zero, %lo(D_8010BAEC)($at)
    /* 207F4 8002FFF4 1180013C */  lui        $at, %hi(D_8010BAF0)
    /* 207F8 8002FFF8 F0BA20AC */  sw         $zero, %lo(D_8010BAF0)($at)
    /* 207FC 8002FFFC 1180013C */  lui        $at, %hi(D_8010BAF4)
    /* 20800 80030000 F4BA20AC */  sw         $zero, %lo(D_8010BAF4)($at)
    /* 20804 80030004 980000A6 */  sh         $zero, 0x98($s0)
    /* 20808 80030008 9A0000A6 */  sh         $zero, 0x9A($s0)
    /* 2080C 8003000C 00400224 */  addiu      $v0, $zero, 0x4000
    /* 20810 80030010 9C0002A6 */  sh         $v0, 0x9C($s0)
    /* 20814 80030014 9E0002A6 */  sh         $v0, 0x9E($s0)
    /* 20818 80030018 A60000A6 */  sh         $zero, 0xA6($s0)
    /* 2081C 8003001C A80000A6 */  sh         $zero, 0xA8($s0)
    /* 20820 80030020 A00000A6 */  sh         $zero, 0xA0($s0)
    /* 20824 80030024 01000224 */  addiu      $v0, $zero, 0x1
    /* 20828 80030028 A20002A6 */  sh         $v0, 0xA2($s0)
    /* 2082C 8003002C A40002A6 */  sh         $v0, 0xA4($s0)
    /* 20830 80030030 B00000AE */  sw         $zero, 0xB0($s0)
    /* 20834 80030034 B40000AE */  sw         $zero, 0xB4($s0)
    /* 20838 80030038 B80000AE */  sw         $zero, 0xB8($s0)
    /* 2083C 8003003C 01000224 */  addiu      $v0, $zero, 0x1
    /* 20840 80030040 BC0002A2 */  sb         $v0, 0xBC($s0)
    /* 20844 80030044 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 20848 80030048 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 2084C 8003004C 1180013C */  lui        $at, %hi(D_8010BA88)
    /* 20850 80030050 88BA22AC */  sw         $v0, %lo(D_8010BA88)($at)
    /* 20854 80030054 1180013C */  lui        $at, %hi(D_8010BB10)
    /* 20858 80030058 10BB20AC */  sw         $zero, %lo(D_8010BB10)($at)
    /* 2085C 8003005C 1180013C */  lui        $at, %hi(D_8010BB20)
    /* 20860 80030060 20BB20AC */  sw         $zero, %lo(D_8010BB20)($at)
    /* 20864 80030064 1180013C */  lui        $at, %hi(D_8010BA88)
    /* 20868 80030068 88BA22AC */  sw         $v0, %lo(D_8010BA88)($at)
    /* 2086C 8003006C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 20870 80030070 1000B08F */  lw         $s0, 0x10($sp)
    /* 20874 80030074 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 20878 80030078 0800E003 */  jr         $ra
    /* 2087C 8003007C 00000000 */   nop
endlabel func_8002FF28
