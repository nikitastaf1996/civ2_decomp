.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1408, 0x2AC

glabel func_800B1408
    /* A1C08 800B1408 000080AC */  sw         $zero, 0x0($a0)
    /* A1C0C 800B140C 040080AC */  sw         $zero, 0x4($a0)
    /* A1C10 800B1410 990180A0 */  sb         $zero, 0x199($a0)
    /* A1C14 800B1414 200080AC */  sw         $zero, 0x20($a0)
    /* A1C18 800B1418 1C0080AC */  sw         $zero, 0x1C($a0)
    /* A1C1C 800B141C 180080AC */  sw         $zero, 0x18($a0)
    /* A1C20 800B1420 140080AC */  sw         $zero, 0x14($a0)
    /* A1C24 800B1424 280080AC */  sw         $zero, 0x28($a0)
    /* A1C28 800B1428 240080AC */  sw         $zero, 0x24($a0)
    /* A1C2C 800B142C 300080AC */  sw         $zero, 0x30($a0)
    /* A1C30 800B1430 4C0A828F */  lw         $v0, %gp_rel(D_80158F24)($gp)
    /* A1C34 800B1434 00000000 */  nop
    /* A1C38 800B1438 640082AC */  sw         $v0, 0x64($a0)
    /* A1C3C 800B143C 500A828F */  lw         $v0, %gp_rel(D_80158F28)($gp)
    /* A1C40 800B1440 00000000 */  nop
    /* A1C44 800B1444 680082AC */  sw         $v0, 0x68($a0)
    /* A1C48 800B1448 19FC0324 */  addiu      $v1, $zero, -0x3E7
    /* A1C4C 800B144C C80083AC */  sw         $v1, 0xC8($a0)
    /* A1C50 800B1450 C40083AC */  sw         $v1, 0xC4($a0)
    /* A1C54 800B1454 D00080AC */  sw         $zero, 0xD0($a0)
    /* A1C58 800B1458 CC0080AC */  sw         $zero, 0xCC($a0)
    /* A1C5C 800B145C 380080AC */  sw         $zero, 0x38($a0)
    /* A1C60 800B1460 340080AC */  sw         $zero, 0x34($a0)
    /* A1C64 800B1464 100A828F */  lw         $v0, %gp_rel(D_80158EE8)($gp)
    /* A1C68 800B1468 00000000 */  nop
    /* A1C6C 800B146C 09004014 */  bnez       $v0, .L800B1494
    /* A1C70 800B1470 00000000 */   nop
    /* A1C74 800B1474 140A828F */  lw         $v0, %gp_rel(D_80158EEC)($gp)
    /* A1C78 800B1478 00000000 */  nop
    /* A1C7C 800B147C 04004014 */  bnez       $v0, .L800B1490
    /* A1C80 800B1480 00000000 */   nop
    /* A1C84 800B1484 0C0083AC */  sw         $v1, 0xC($a0)
    /* A1C88 800B1488 2AC50208 */  j          .L800B14A8
    /* A1C8C 800B148C 080083AC */   sw        $v1, 0x8($a0)
  .L800B1490:
    /* A1C90 800B1490 100A828F */  lw         $v0, %gp_rel(D_80158EE8)($gp)
  .L800B1494:
    /* A1C94 800B1494 00000000 */  nop
    /* A1C98 800B1498 080082AC */  sw         $v0, 0x8($a0)
    /* A1C9C 800B149C 140A828F */  lw         $v0, %gp_rel(D_80158EEC)($gp)
    /* A1CA0 800B14A0 00000000 */  nop
    /* A1CA4 800B14A4 0C0082AC */  sw         $v0, 0xC($a0)
  .L800B14A8:
    /* A1CA8 800B14A8 100080AC */  sw         $zero, 0x10($a0)
    /* A1CAC 800B14AC F40080AC */  sw         $zero, 0xF4($a0)
    /* A1CB0 800B14B0 2A0A8293 */  lbu        $v0, %gp_rel(D_80158F02)($gp)
    /* A1CB4 800B14B4 00000000 */  nop
    /* A1CB8 800B14B8 580082AC */  sw         $v0, 0x58($a0)
    /* A1CBC 800B14BC 280A8293 */  lbu        $v0, %gp_rel(D_80158F00)($gp)
    /* A1CC0 800B14C0 00000000 */  nop
    /* A1CC4 800B14C4 480082AC */  sw         $v0, 0x48($a0)
    /* A1CC8 800B14C8 270A8293 */  lbu        $v0, %gp_rel(D_80158EFF)($gp)
    /* A1CCC 800B14CC 00000000 */  nop
    /* A1CD0 800B14D0 4C0082AC */  sw         $v0, 0x4C($a0)
    /* A1CD4 800B14D4 260A8293 */  lbu        $v0, %gp_rel(D_80158EFE)($gp)
    /* A1CD8 800B14D8 00000000 */  nop
    /* A1CDC 800B14DC 540082AC */  sw         $v0, 0x54($a0)
    /* A1CE0 800B14E0 290A8293 */  lbu        $v0, %gp_rel(D_80158F01)($gp)
    /* A1CE4 800B14E4 00000000 */  nop
    /* A1CE8 800B14E8 500082AC */  sw         $v0, 0x50($a0)
    /* A1CEC 800B14EC 2B0A8293 */  lbu        $v0, %gp_rel(D_80158F03)($gp)
    /* A1CF0 800B14F0 00000000 */  nop
    /* A1CF4 800B14F4 5C0082AC */  sw         $v0, 0x5C($a0)
    /* A1CF8 800B14F8 2C0A8293 */  lbu        $v0, %gp_rel(D_80158F04)($gp)
    /* A1CFC 800B14FC 00000000 */  nop
    /* A1D00 800B1500 600082AC */  sw         $v0, 0x60($a0)
    /* A1D04 800B1504 2D0A8293 */  lbu        $v0, %gp_rel(D_80158F05)($gp)
    /* A1D08 800B1508 00000000 */  nop
    /* A1D0C 800B150C 6C0082AC */  sw         $v0, 0x6C($a0)
    /* A1D10 800B1510 2E0A8293 */  lbu        $v0, %gp_rel(D_80158F06)($gp)
    /* A1D14 800B1514 00000000 */  nop
    /* A1D18 800B1518 700082AC */  sw         $v0, 0x70($a0)
    /* A1D1C 800B151C 300A828F */  lw         $v0, %gp_rel(D_80158F08)($gp)
    /* A1D20 800B1520 00000000 */  nop
    /* A1D24 800B1524 740082AC */  sw         $v0, 0x74($a0)
    /* A1D28 800B1528 340A828F */  lw         $v0, %gp_rel(D_80158F0C)($gp)
    /* A1D2C 800B152C 00000000 */  nop
    /* A1D30 800B1530 780082AC */  sw         $v0, 0x78($a0)
    /* A1D34 800B1534 380A828F */  lw         $v0, %gp_rel(D_80158F10)($gp)
    /* A1D38 800B1538 00000000 */  nop
    /* A1D3C 800B153C 7C0082AC */  sw         $v0, 0x7C($a0)
    /* A1D40 800B1540 3C0A828F */  lw         $v0, %gp_rel(D_80158F14)($gp)
    /* A1D44 800B1544 00000000 */  nop
    /* A1D48 800B1548 800082AC */  sw         $v0, 0x80($a0)
    /* A1D4C 800B154C 400A828F */  lw         $v0, %gp_rel(D_80158F18)($gp)
    /* A1D50 800B1550 00000000 */  nop
    /* A1D54 800B1554 840082AC */  sw         $v0, 0x84($a0)
    /* A1D58 800B1558 440A828F */  lw         $v0, %gp_rel(D_80158F1C)($gp)
    /* A1D5C 800B155C 00000000 */  nop
    /* A1D60 800B1560 880082AC */  sw         $v0, 0x88($a0)
    /* A1D64 800B1564 480A828F */  lw         $v0, %gp_rel(D_80158F20)($gp)
    /* A1D68 800B1568 00000000 */  nop
    /* A1D6C 800B156C 8C0082AC */  sw         $v0, 0x8C($a0)
    /* A1D70 800B1570 580180AC */  sw         $zero, 0x158($a0)
    /* A1D74 800B1574 5C0180AC */  sw         $zero, 0x15C($a0)
    /* A1D78 800B1578 0C0180AC */  sw         $zero, 0x10C($a0)
    /* A1D7C 800B157C 080180AC */  sw         $zero, 0x108($a0)
    /* A1D80 800B1580 040180AC */  sw         $zero, 0x104($a0)
    /* A1D84 800B1584 000180AC */  sw         $zero, 0x100($a0)
    /* A1D88 800B1588 FC0080AC */  sw         $zero, 0xFC($a0)
    /* A1D8C 800B158C 680180AC */  sw         $zero, 0x168($a0)
    /* A1D90 800B1590 6C0180AC */  sw         $zero, 0x16C($a0)
    /* A1D94 800B1594 740180AC */  sw         $zero, 0x174($a0)
    /* A1D98 800B1598 700180AC */  sw         $zero, 0x170($a0)
    /* A1D9C 800B159C 780180AC */  sw         $zero, 0x178($a0)
    /* A1DA0 800B15A0 7C0180AC */  sw         $zero, 0x17C($a0)
    /* A1DA4 800B15A4 800180AC */  sw         $zero, 0x180($a0)
    /* A1DA8 800B15A8 940080AC */  sw         $zero, 0x94($a0)
    /* A1DAC 800B15AC 02000324 */  addiu      $v1, $zero, 0x2
    /* A1DB0 800B15B0 9C0083AC */  sw         $v1, 0x9C($a0)
    /* A1DB4 800B15B4 A00083AC */  sw         $v1, 0xA0($a0)
    /* A1DB8 800B15B8 04000224 */  addiu      $v0, $zero, 0x4
    /* A1DBC 800B15BC A40082AC */  sw         $v0, 0xA4($a0)
    /* A1DC0 800B15C0 A80082AC */  sw         $v0, 0xA8($a0)
    /* A1DC4 800B15C4 08000224 */  addiu      $v0, $zero, 0x8
    /* A1DC8 800B15C8 B00082AC */  sw         $v0, 0xB0($a0)
    /* A1DCC 800B15CC AC0083AC */  sw         $v1, 0xAC($a0)
    /* A1DD0 800B15D0 900080AC */  sw         $zero, 0x90($a0)
    /* A1DD4 800B15D4 01000224 */  addiu      $v0, $zero, 0x1
    /* A1DD8 800B15D8 2C0082AC */  sw         $v0, 0x2C($a0)
    /* A1DDC 800B15DC 640180AC */  sw         $zero, 0x164($a0)
    /* A1DE0 800B15E0 140180AC */  sw         $zero, 0x114($a0)
    /* A1DE4 800B15E4 180180AC */  sw         $zero, 0x118($a0)
    /* A1DE8 800B15E8 AC0180AC */  sw         $zero, 0x1AC($a0)
    /* A1DEC 800B15EC B00180AC */  sw         $zero, 0x1B0($a0)
    /* A1DF0 800B15F0 B40180AC */  sw         $zero, 0x1B4($a0)
    /* A1DF4 800B15F4 B80180AC */  sw         $zero, 0x1B8($a0)
    /* A1DF8 800B15F8 BC0180AC */  sw         $zero, 0x1BC($a0)
    /* A1DFC 800B15FC C00180AC */  sw         $zero, 0x1C0($a0)
    /* A1E00 800B1600 C40180AC */  sw         $zero, 0x1C4($a0)
    /* A1E04 800B1604 C80180AC */  sw         $zero, 0x1C8($a0)
    /* A1E08 800B1608 8C0180AC */  sw         $zero, 0x18C($a0)
    /* A1E0C 800B160C 840180AC */  sw         $zero, 0x184($a0)
    /* A1E10 800B1610 880180AC */  sw         $zero, 0x188($a0)
    /* A1E14 800B1614 900180AC */  sw         $zero, 0x190($a0)
    /* A1E18 800B1618 940180AC */  sw         $zero, 0x194($a0)
    /* A1E1C 800B161C BC0080AC */  sw         $zero, 0xBC($a0)
    /* A1E20 800B1620 C00080AC */  sw         $zero, 0xC0($a0)
    /* A1E24 800B1624 CC0180AC */  sw         $zero, 0x1CC($a0)
    /* A1E28 800B1628 1680013C */  lui        $at, %hi(D_80158970)
    /* A1E2C 800B162C 708920AC */  sw         $zero, %lo(D_80158970)($at)
    /* A1E30 800B1630 FC0180AC */  sw         $zero, 0x1FC($a0)
    /* A1E34 800B1634 D00180AC */  sw         $zero, 0x1D0($a0)
    /* A1E38 800B1638 000280AC */  sw         $zero, 0x200($a0)
    /* A1E3C 800B163C 21180000 */  addu       $v1, $zero, $zero
    /* A1E40 800B1640 80100300 */  sll        $v0, $v1, 2
  .L800B1644:
    /* A1E44 800B1644 21104400 */  addu       $v0, $v0, $a0
    /* A1E48 800B1648 D40140AC */  sw         $zero, 0x1D4($v0)
    /* A1E4C 800B164C 01006324 */  addiu      $v1, $v1, 0x1
    /* A1E50 800B1650 0A006228 */  slti       $v0, $v1, 0xA
    /* A1E54 800B1654 FBFF4014 */  bnez       $v0, .L800B1644
    /* A1E58 800B1658 80100300 */   sll       $v0, $v1, 2
    /* A1E5C 800B165C 040280A4 */  sh         $zero, 0x204($a0)
    /* A1E60 800B1660 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A1E64 800B1664 080282A4 */  sh         $v0, 0x208($a0)
    /* A1E68 800B1668 060282A4 */  sh         $v0, 0x206($a0)
    /* A1E6C 800B166C 0A0280A4 */  sh         $zero, 0x20A($a0)
    /* A1E70 800B1670 140280A4 */  sh         $zero, 0x214($a0)
    /* A1E74 800B1674 120280A4 */  sh         $zero, 0x212($a0)
    /* A1E78 800B1678 160282A4 */  sh         $v0, 0x216($a0)
    /* A1E7C 800B167C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A1E80 800B1680 200282AC */  sw         $v0, 0x220($a0)
    /* A1E84 800B1684 240280AC */  sw         $zero, 0x224($a0)
    /* A1E88 800B1688 280282AC */  sw         $v0, 0x228($a0)
    /* A1E8C 800B168C A0000224 */  addiu      $v0, $zero, 0xA0
    /* A1E90 800B1690 320282A4 */  sh         $v0, 0x232($a0)
    /* A1E94 800B1694 2C0282A4 */  sh         $v0, 0x22C($a0)
    /* A1E98 800B1698 78000224 */  addiu      $v0, $zero, 0x78
    /* A1E9C 800B169C 340282A4 */  sh         $v0, 0x234($a0)
    /* A1EA0 800B16A0 2E0282A4 */  sh         $v0, 0x22E($a0)
    /* A1EA4 800B16A4 401F0224 */  addiu      $v0, $zero, 0x1F40
    /* A1EA8 800B16A8 360282A4 */  sh         $v0, 0x236($a0)
    /* A1EAC 800B16AC 0800E003 */  jr         $ra
    /* A1EB0 800B16B0 300282A4 */   sh        $v0, 0x230($a0)
endlabel func_800B1408
