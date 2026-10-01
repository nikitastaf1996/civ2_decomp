.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BE910, 0x184

glabel func_800BE910
    /* AF110 800BE910 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AF114 800BE914 00240400 */  sll        $a0, $a0, 16
    /* AF118 800BE918 03240400 */  sra        $a0, $a0, 16
    /* AF11C 800BE91C A8000224 */  addiu      $v0, $zero, 0xA8
    /* AF120 800BE920 1400BFAF */  sw         $ra, 0x14($sp)
    /* AF124 800BE924 0F008210 */  beq        $a0, $v0, .L800BE964
    /* AF128 800BE928 1000B0AF */   sw        $s0, 0x10($sp)
    /* AF12C 800BE92C A9008228 */  slti       $v0, $a0, 0xA9
    /* AF130 800BE930 05004010 */  beqz       $v0, .L800BE948
    /* AF134 800BE934 A2000224 */   addiu     $v0, $zero, 0xA2
    /* AF138 800BE938 19008210 */  beq        $a0, $v0, .L800BE9A0
    /* AF13C 800BE93C 00000000 */   nop
    /* AF140 800BE940 A0FA0208 */  j          .L800BEA80
    /* AF144 800BE944 00000000 */   nop
  .L800BE948:
    /* AF148 800BE948 D0000224 */  addiu      $v0, $zero, 0xD0
    /* AF14C 800BE94C 2B008210 */  beq        $a0, $v0, .L800BE9FC
    /* AF150 800BE950 D2000224 */   addiu     $v0, $zero, 0xD2
    /* AF154 800BE954 42008210 */  beq        $a0, $v0, .L800BEA60
    /* AF158 800BE958 68000424 */   addiu     $a0, $zero, 0x68
    /* AF15C 800BE95C A0FA0208 */  j          .L800BEA80
    /* AF160 800BE960 00000000 */   nop
  .L800BE964:
    /* AF164 800BE964 1280103C */  lui        $s0, %hi(D_801210C8)
    /* AF168 800BE968 C8101026 */  addiu      $s0, $s0, %lo(D_801210C8)
    /* AF16C 800BE96C 0000028E */  lw         $v0, 0x0($s0)
    /* AF170 800BE970 00000000 */  nop
    /* AF174 800BE974 42004018 */  blez       $v0, .L800BEA80
    /* AF178 800BE978 5E000424 */   addiu     $a0, $zero, 0x5E
    /* AF17C 800BE97C 21280000 */  addu       $a1, $zero, $zero
    /* AF180 800BE980 21300000 */  addu       $a2, $zero, $zero
    /* AF184 800BE984 2B9D020C */  jal        func_800A74AC
    /* AF188 800BE988 21380000 */   addu      $a3, $zero, $zero
    /* AF18C 800BE98C 0000028E */  lw         $v0, 0x0($s0)
    /* AF190 800BE990 1280043C */  lui        $a0, %hi(D_80121110)
    /* AF194 800BE994 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AF198 800BE998 79FA0208 */  j          .L800BE9E4
    /* AF19C 800BE99C FFFF4224 */   addiu     $v0, $v0, -0x1
  .L800BE9A0:
    /* AF1A0 800BE9A0 1280103C */  lui        $s0, %hi(D_801210C8)
    /* AF1A4 800BE9A4 C8101026 */  addiu      $s0, $s0, %lo(D_801210C8)
    /* AF1A8 800BE9A8 0000028E */  lw         $v0, 0x0($s0)
    /* AF1AC 800BE9AC 1280033C */  lui        $v1, %hi(D_80121136)
    /* AF1B0 800BE9B0 36116384 */  lh         $v1, %lo(D_80121136)($v1)
    /* AF1B4 800BE9B4 07004224 */  addiu      $v0, $v0, 0x7
    /* AF1B8 800BE9B8 2A104300 */  slt        $v0, $v0, $v1
    /* AF1BC 800BE9BC 30004010 */  beqz       $v0, .L800BEA80
    /* AF1C0 800BE9C0 5E000424 */   addiu     $a0, $zero, 0x5E
    /* AF1C4 800BE9C4 21280000 */  addu       $a1, $zero, $zero
    /* AF1C8 800BE9C8 21300000 */  addu       $a2, $zero, $zero
    /* AF1CC 800BE9CC 2B9D020C */  jal        func_800A74AC
    /* AF1D0 800BE9D0 21380000 */   addu      $a3, $zero, $zero
    /* AF1D4 800BE9D4 0000028E */  lw         $v0, 0x0($s0)
    /* AF1D8 800BE9D8 1280043C */  lui        $a0, %hi(D_80121110)
    /* AF1DC 800BE9DC 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AF1E0 800BE9E0 01004224 */  addiu      $v0, $v0, 0x1
  .L800BE9E4:
    /* AF1E4 800BE9E4 E511040C */  jal        func_80104794
    /* AF1E8 800BE9E8 000002AE */   sw        $v0, 0x0($s0)
    /* AF1EC 800BE9EC 1280013C */  lui        $at, %hi(D_80121110)
    /* AF1F0 800BE9F0 101120AC */  sw         $zero, %lo(D_80121110)($at)
    /* AF1F4 800BE9F4 A0FA0208 */  j          .L800BEA80
    /* AF1F8 800BE9F8 00000000 */   nop
  .L800BE9FC:
    /* AF1FC 800BE9FC 68000424 */  addiu      $a0, $zero, 0x68
    /* AF200 800BEA00 21280000 */  addu       $a1, $zero, $zero
    /* AF204 800BEA04 21300000 */  addu       $a2, $zero, $zero
    /* AF208 800BEA08 2B9D020C */  jal        func_800A74AC
    /* AF20C 800BEA0C 21380000 */   addu      $a3, $zero, $zero
    /* AF210 800BEA10 1280033C */  lui        $v1, %hi(D_80121104)
    /* AF214 800BEA14 04116324 */  addiu      $v1, $v1, %lo(D_80121104)
    /* AF218 800BEA18 0000628C */  lw         $v0, 0x0($v1)
    /* AF21C 800BEA1C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AF220 800BEA20 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AF224 800BEA24 0100422C */  sltiu      $v0, $v0, 0x1
    /* AF228 800BEA28 E511040C */  jal        func_80104794
    /* AF22C 800BEA2C 000062AC */   sw        $v0, 0x0($v1)
    /* AF230 800BEA30 1280043C */  lui        $a0, %hi(D_80121110)
    /* AF234 800BEA34 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AF238 800BEA38 E511040C */  jal        func_80104794
    /* AF23C 800BEA3C 00000000 */   nop
    /* AF240 800BEA40 1280013C */  lui        $at, %hi(D_80121110)
    /* AF244 800BEA44 101120AC */  sw         $zero, %lo(D_80121110)($at)
    /* AF248 800BEA48 1280013C */  lui        $at, %hi(D_8012110C)
    /* AF24C 800BEA4C 0C1120AC */  sw         $zero, %lo(D_8012110C)($at)
    /* AF250 800BEA50 1280013C */  lui        $at, %hi(D_801210C8)
    /* AF254 800BEA54 C81020AC */  sw         $zero, %lo(D_801210C8)($at)
    /* AF258 800BEA58 A0FA0208 */  j          .L800BEA80
    /* AF25C 800BEA5C 00000000 */   nop
  .L800BEA60:
    /* AF260 800BEA60 21280000 */  addu       $a1, $zero, $zero
    /* AF264 800BEA64 21300000 */  addu       $a2, $zero, $zero
    /* AF268 800BEA68 2B9D020C */  jal        func_800A74AC
    /* AF26C 800BEA6C 21380000 */   addu      $a3, $zero, $zero
    /* AF270 800BEA70 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AF274 800BEA74 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AF278 800BEA78 29E5020C */  jal        func_800B94A4
    /* AF27C 800BEA7C 00000000 */   nop
  .L800BEA80:
    /* AF280 800BEA80 1400BF8F */  lw         $ra, 0x14($sp)
    /* AF284 800BEA84 1000B08F */  lw         $s0, 0x10($sp)
    /* AF288 800BEA88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AF28C 800BEA8C 0800E003 */  jr         $ra
    /* AF290 800BEA90 00000000 */   nop
endlabel func_800BE910
