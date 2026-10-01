.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C0AEC, 0xDC

glabel func_800C0AEC
    /* B12EC 800C0AEC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B12F0 800C0AF0 1400B1AF */  sw         $s1, 0x14($sp)
    /* B12F4 800C0AF4 1280113C */  lui        $s1, %hi(D_801210C8)
    /* B12F8 800C0AF8 C8103126 */  addiu      $s1, $s1, %lo(D_801210C8)
    /* B12FC 800C0AFC 00240400 */  sll        $a0, $a0, 16
    /* B1300 800C0B00 03240400 */  sra        $a0, $a0, 16
    /* B1304 800C0B04 A2000224 */  addiu      $v0, $zero, 0xA2
    /* B1308 800C0B08 1800BFAF */  sw         $ra, 0x18($sp)
    /* B130C 800C0B0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B1310 800C0B10 0000308E */  lw         $s0, 0x0($s1)
    /* B1314 800C0B14 0D008210 */  beq        $a0, $v0, .L800C0B4C
    /* B1318 800C0B18 A8000224 */   addiu     $v0, $zero, 0xA8
    /* B131C 800C0B1C 19008214 */  bne        $a0, $v0, .L800C0B84
    /* B1320 800C0B20 00000000 */   nop
    /* B1324 800C0B24 1700001A */  blez       $s0, .L800C0B84
    /* B1328 800C0B28 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* B132C 800C0B2C 000022AE */  sw         $v0, 0x0($s1)
    /* B1330 800C0B30 5E000424 */  addiu      $a0, $zero, 0x5E
    /* B1334 800C0B34 21280000 */  addu       $a1, $zero, $zero
    /* B1338 800C0B38 21300000 */  addu       $a2, $zero, $zero
    /* B133C 800C0B3C 2B9D020C */  jal        func_800A74AC
    /* B1340 800C0B40 21380000 */   addu      $a3, $zero, $zero
    /* B1344 800C0B44 E1020308 */  j          .L800C0B84
    /* B1348 800C0B48 00000000 */   nop
  .L800C0B4C:
    /* B134C 800C0B4C 1280033C */  lui        $v1, %hi(D_80121136)
    /* B1350 800C0B50 36116384 */  lh         $v1, %lo(D_80121136)($v1)
    /* B1354 800C0B54 06000226 */  addiu      $v0, $s0, 0x6
    /* B1358 800C0B58 2A104300 */  slt        $v0, $v0, $v1
    /* B135C 800C0B5C 09004010 */  beqz       $v0, .L800C0B84
    /* B1360 800C0B60 5E000424 */   addiu     $a0, $zero, 0x5E
    /* B1364 800C0B64 21280000 */  addu       $a1, $zero, $zero
    /* B1368 800C0B68 21300000 */  addu       $a2, $zero, $zero
    /* B136C 800C0B6C 2B9D020C */  jal        func_800A74AC
    /* B1370 800C0B70 21380000 */   addu      $a3, $zero, $zero
    /* B1374 800C0B74 0000228E */  lw         $v0, 0x0($s1)
    /* B1378 800C0B78 00000000 */  nop
    /* B137C 800C0B7C 01004224 */  addiu      $v0, $v0, 0x1
    /* B1380 800C0B80 000022AE */  sw         $v0, 0x0($s1)
  .L800C0B84:
    /* B1384 800C0B84 1280023C */  lui        $v0, %hi(D_801210C8)
    /* B1388 800C0B88 C810428C */  lw         $v0, %lo(D_801210C8)($v0)
    /* B138C 800C0B8C 00000000 */  nop
    /* B1390 800C0B90 07000212 */  beq        $s0, $v0, .L800C0BB0
    /* B1394 800C0B94 00000000 */   nop
    /* B1398 800C0B98 1280043C */  lui        $a0, %hi(D_80121110)
    /* B139C 800C0B9C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B13A0 800C0BA0 E511040C */  jal        func_80104794
    /* B13A4 800C0BA4 00000000 */   nop
    /* B13A8 800C0BA8 1280013C */  lui        $at, %hi(D_80121110)
    /* B13AC 800C0BAC 101120AC */  sw         $zero, %lo(D_80121110)($at)
  .L800C0BB0:
    /* B13B0 800C0BB0 1800BF8F */  lw         $ra, 0x18($sp)
    /* B13B4 800C0BB4 1400B18F */  lw         $s1, 0x14($sp)
    /* B13B8 800C0BB8 1000B08F */  lw         $s0, 0x10($sp)
    /* B13BC 800C0BBC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B13C0 800C0BC0 0800E003 */  jr         $ra
    /* B13C4 800C0BC4 00000000 */   nop
endlabel func_800C0AEC
