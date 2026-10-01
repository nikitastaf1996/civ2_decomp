.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D0B28, 0x150

glabel func_800D0B28
    /* C1328 800D0B28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C132C 800D0B2C 1400BFAF */  sw         $ra, 0x14($sp)
    /* C1330 800D0B30 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1334 800D0B34 21808000 */  addu       $s0, $a0, $zero
    /* C1338 800D0B38 1280043C */  lui        $a0, %hi(D_80122AA4)
    /* C133C 800D0B3C A42A848C */  lw         $a0, %lo(D_80122AA4)($a0)
    /* C1340 800D0B40 0C25020C */  jal        func_80089430
    /* C1344 800D0B44 00000000 */   nop
    /* C1348 800D0B48 1680023C */  lui        $v0, %hi(D_80158864)
    /* C134C 800D0B4C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1350 800D0B50 00000000 */  nop
    /* C1354 800D0B54 08004380 */  lb         $v1, 0x8($v0)
    /* C1358 800D0B58 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C135C 800D0B5C B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C1360 800D0B60 00000000 */  nop
    /* C1364 800D0B64 06006210 */  beq        $v1, $v0, .L800D0B80
    /* C1368 800D0B68 00000000 */   nop
    /* C136C 800D0B6C 1280023C */  lui        $v0, %hi(D_8011A271)
    /* C1370 800D0B70 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* C1374 800D0B74 00000000 */  nop
    /* C1378 800D0B78 3A004010 */  beqz       $v0, .L800D0C64
    /* C137C 800D0B7C 00000000 */   nop
  .L800D0B80:
    /* C1380 800D0B80 0C63000C */  jal        func_80018C30
    /* C1384 800D0B84 21200000 */   addu      $a0, $zero, $zero
    /* C1388 800D0B88 1680023C */  lui        $v0, %hi(D_80158864)
    /* C138C 800D0B8C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1390 800D0B90 1680053C */  lui        $a1, %hi(D_8015858C)
    /* C1394 800D0B94 8C85A58C */  lw         $a1, %lo(D_8015858C)($a1)
    /* C1398 800D0B98 001C1000 */  sll        $v1, $s0, 16
    /* C139C 800D0B9C 031C0300 */  sra        $v1, $v1, 16
    /* C13A0 800D0BA0 09004480 */  lb         $a0, 0x9($v0)
    /* C13A4 800D0BA4 00000000 */  nop
    /* C13A8 800D0BA8 23108500 */  subu       $v0, $a0, $a1
    /* C13AC 800D0BAC 2A186200 */  slt        $v1, $v1, $v0
    /* C13B0 800D0BB0 2C006014 */  bnez       $v1, .L800D0C64
    /* C13B4 800D0BB4 00000000 */   nop
    /* C13B8 800D0BB8 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C13BC 800D0BBC 8C854294 */  lhu        $v0, %lo(D_8015858C)($v0)
    /* C13C0 800D0BC0 00000000 */  nop
    /* C13C4 800D0BC4 23108200 */  subu       $v0, $a0, $v0
    /* C13C8 800D0BC8 23100202 */  subu       $v0, $s0, $v0
    /* C13CC 800D0BCC 00140200 */  sll        $v0, $v0, 16
    /* C13D0 800D0BD0 03240200 */  sra        $a0, $v0, 16
    /* C13D4 800D0BD4 2A108500 */  slt        $v0, $a0, $a1
    /* C13D8 800D0BD8 22004010 */  beqz       $v0, .L800D0C64
    /* C13DC 800D0BDC 00000000 */   nop
    /* C13E0 800D0BE0 C351000C */  jal        func_8001470C
    /* C13E4 800D0BE4 21808000 */   addu      $s0, $a0, $zero
    /* C13E8 800D0BE8 21284000 */  addu       $a1, $v0, $zero
    /* C13EC 800D0BEC 1680023C */  lui        $v0, %hi(D_80158864)
    /* C13F0 800D0BF0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C13F4 800D0BF4 00000000 */  nop
    /* C13F8 800D0BF8 09004280 */  lb         $v0, 0x9($v0)
    /* C13FC 800D0BFC 00000000 */  nop
    /* C1400 800D0C00 05004228 */  slti       $v0, $v0, 0x5
    /* C1404 800D0C04 0C004010 */  beqz       $v0, .L800D0C38
    /* C1408 800D0C08 01000224 */   addiu     $v0, $zero, 0x1
    /* C140C 800D0C0C 0F00A214 */  bne        $a1, $v0, .L800D0C4C
    /* C1410 800D0C10 01000524 */   addiu     $a1, $zero, 0x1
    /* C1414 800D0C14 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* C1418 800D0C18 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* C141C 800D0C1C 402B0524 */  addiu      $a1, $zero, 0x2B40
    /* C1420 800D0C20 1680073C */  lui        $a3, %hi(D_80158860)
    /* C1424 800D0C24 6088E78C */  lw         $a3, %lo(D_80158860)($a3)
    /* C1428 800D0C28 04E4020C */  jal        func_800B9010
    /* C142C 800D0C2C 21300000 */   addu      $a2, $zero, $zero
    /* C1430 800D0C30 19430308 */  j          .L800D0C64
    /* C1434 800D0C34 00000000 */   nop
  .L800D0C38:
    /* C1438 800D0C38 0100A524 */  addiu      $a1, $a1, 0x1
    /* C143C 800D0C3C 0400A228 */  slti       $v0, $a1, 0x4
    /* C1440 800D0C40 02004014 */  bnez       $v0, .L800D0C4C
    /* C1444 800D0C44 00000000 */   nop
    /* C1448 800D0C48 01000524 */  addiu      $a1, $zero, 0x1
  .L800D0C4C:
    /* C144C 800D0C4C B251000C */  jal        func_800146C8
    /* C1450 800D0C50 21200002 */   addu      $a0, $s0, $zero
    /* C1454 800D0C54 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C1458 800D0C58 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C145C 800D0C5C B042030C */  jal        func_800D0AC0
    /* C1460 800D0C60 01000524 */   addiu     $a1, $zero, 0x1
  .L800D0C64:
    /* C1464 800D0C64 1400BF8F */  lw         $ra, 0x14($sp)
    /* C1468 800D0C68 1000B08F */  lw         $s0, 0x10($sp)
    /* C146C 800D0C6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C1470 800D0C70 0800E003 */  jr         $ra
    /* C1474 800D0C74 00000000 */   nop
endlabel func_800D0B28
