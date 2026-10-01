.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C0BC8, 0xB8

glabel func_800C0BC8
    /* B13C8 800C0BC8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B13CC 800C0BCC 2400B1AF */  sw         $s1, 0x24($sp)
    /* B13D0 800C0BD0 21888000 */  addu       $s1, $a0, $zero
    /* B13D4 800C0BD4 2000B0AF */  sw         $s0, 0x20($sp)
    /* B13D8 800C0BD8 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B13DC 800C0BDC 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B13E0 800C0BE0 21200002 */  addu       $a0, $s0, $zero
    /* B13E4 800C0BE4 07000524 */  addiu      $a1, $zero, 0x7
    /* B13E8 800C0BE8 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B13EC 800C0BEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* B13F0 800C0BF0 C8000224 */  addiu      $v0, $zero, 0xC8
    /* B13F4 800C0BF4 07000624 */  addiu      $a2, $zero, 0x7
    /* B13F8 800C0BF8 01000724 */  addiu      $a3, $zero, 0x1
    /* B13FC 800C0BFC 2800BFAF */  sw         $ra, 0x28($sp)
    /* B1400 800C0C00 1400A2AF */  sw         $v0, 0x14($sp)
    /* B1404 800C0C04 1800A0AF */  sw         $zero, 0x18($sp)
    /* B1408 800C0C08 6FE5020C */  jal        func_800B95BC
    /* B140C 800C0C0C 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B1410 800C0C10 1280013C */  lui        $at, %hi(D_801210C4)
    /* B1414 800C0C14 C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* B1418 800C0C18 50E6020C */  jal        func_800B9940
    /* B141C 800C0C1C 21200002 */   addu      $a0, $s0, $zero
    /* B1420 800C0C20 0C80053C */  lui        $a1, %hi(func_800C03E4)
    /* B1424 800C0C24 E403A524 */  addiu      $a1, $a1, %lo(func_800C03E4)
    /* B1428 800C0C28 82DF030C */  jal        func_800F7E08
    /* B142C 800C0C2C 21200002 */   addu      $a0, $s0, $zero
    /* B1430 800C0C30 0C80023C */  lui        $v0, %hi(func_800C0AEC)
    /* B1434 800C0C34 EC0A4224 */  addiu      $v0, $v0, %lo(func_800C0AEC)
    /* B1438 800C0C38 1280013C */  lui        $at, %hi(D_80120DE8)
    /* B143C 800C0C3C E80D22AC */  sw         $v0, %lo(D_80120DE8)($at)
    /* B1440 800C0C40 E5DE030C */  jal        func_800F7B94
    /* B1444 800C0C44 21200002 */   addu      $a0, $s0, $zero
    /* B1448 800C0C48 F8EA030C */  jal        func_800FABE0
    /* B144C 800C0C4C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B1450 800C0C50 05DD030C */  jal        func_800F7414
    /* B1454 800C0C54 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B1458 800C0C58 14DE030C */  jal        func_800F7850
    /* B145C 800C0C5C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B1460 800C0C60 29E5020C */  jal        func_800B94A4
    /* B1464 800C0C64 21200002 */   addu      $a0, $s0, $zero
    /* B1468 800C0C68 2800BF8F */  lw         $ra, 0x28($sp)
    /* B146C 800C0C6C 2400B18F */  lw         $s1, 0x24($sp)
    /* B1470 800C0C70 2000B08F */  lw         $s0, 0x20($sp)
    /* B1474 800C0C74 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B1478 800C0C78 0800E003 */  jr         $ra
    /* B147C 800C0C7C 00000000 */   nop
endlabel func_800C0BC8
