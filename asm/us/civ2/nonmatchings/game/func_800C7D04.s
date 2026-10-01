.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C7D04, 0x23C

glabel func_800C7D04
    /* B8504 800C7D04 D8FEBD27 */  addiu      $sp, $sp, -0x128
    /* B8508 800C7D08 2401BFAF */  sw         $ra, 0x124($sp)
    /* B850C 800C7D0C 2001B2AF */  sw         $s2, 0x120($sp)
    /* B8510 800C7D10 1C01B1AF */  sw         $s1, 0x11C($sp)
    /* B8514 800C7D14 1801B0AF */  sw         $s0, 0x118($sp)
    /* B8518 800C7D18 F8EA030C */  jal        func_800FABE0
    /* B851C 800C7D1C 21908000 */   addu      $s2, $a0, $zero
    /* B8520 800C7D20 A8E9030C */  jal        func_800FA6A0
    /* B8524 800C7D24 21880000 */   addu      $s1, $zero, $zero
  .L800C7D28:
    /* B8528 800C7D28 1280013C */  lui        $at, %hi(D_8011A40E)
    /* B852C 800C7D2C 21083100 */  addu       $at, $at, $s1
    /* B8530 800C7D30 0EA42390 */  lbu        $v1, %lo(D_8011A40E)($at)
    /* B8534 800C7D34 9C024292 */  lbu        $v0, 0x29C($s2)
    /* B8538 800C7D38 00000000 */  nop
    /* B853C 800C7D3C 20006214 */  bne        $v1, $v0, .L800C7DC0
    /* B8540 800C7D40 01000224 */   addiu     $v0, $zero, 0x1
    /* B8544 800C7D44 580C82AF */  sw         $v0, %gp_rel(D_80159130)($gp)
    /* B8548 800C7D48 21204002 */  addu       $a0, $s2, $zero
    /* B854C 800C7D4C D01F030C */  jal        func_800C7F40
    /* B8550 800C7D50 21282002 */   addu      $a1, $s1, $zero
    /* B8554 800C7D54 21204002 */  addu       $a0, $s2, $zero
    /* B8558 800C7D58 3520030C */  jal        func_800C80D4
    /* B855C 800C7D5C 21282002 */   addu      $a1, $s1, $zero
    /* B8560 800C7D60 1280043C */  lui        $a0, %hi(D_8011C310)
    /* B8564 800C7D64 10C38494 */  lhu        $a0, %lo(D_8011C310)($a0)
    /* B8568 800C7D68 1280013C */  lui        $at, %hi(D_8011A41A)
    /* B856C 800C7D6C 21083100 */  addu       $at, $at, $s1
    /* B8570 800C7D70 1AA42290 */  lbu        $v0, %lo(D_8011A41A)($at)
    /* B8574 800C7D74 00000000 */  nop
    /* B8578 800C7D78 21208200 */  addu       $a0, $a0, $v0
    /* B857C 800C7D7C 07008430 */  andi       $a0, $a0, 0x7
    /* B8580 800C7D80 53008424 */  addiu      $a0, $a0, 0x53
    /* B8584 800C7D84 01000524 */  addiu      $a1, $zero, 0x1
    /* B8588 800C7D88 21300000 */  addu       $a2, $zero, $zero
    /* B858C 800C7D8C 2B9D020C */  jal        func_800A74AC
    /* B8590 800C7D90 21380000 */   addu      $a3, $zero, $zero
    /* B8594 800C7D94 8F20030C */  jal        func_800C823C
    /* B8598 800C7D98 21204002 */   addu      $a0, $s2, $zero
    /* B859C 800C7D9C 21800000 */  addu       $s0, $zero, $zero
  .L800C7DA0:
    /* B85A0 800C7DA0 6184030C */  jal        VSync
    /* B85A4 800C7DA4 21200000 */   addu      $a0, $zero, $zero
    /* B85A8 800C7DA8 01001026 */  addiu      $s0, $s0, 0x1
    /* B85AC 800C7DAC 3C00022A */  slti       $v0, $s0, 0x3C
    /* B85B0 800C7DB0 FBFF4014 */  bnez       $v0, .L800C7DA0
    /* B85B4 800C7DB4 00000000 */   nop
    /* B85B8 800C7DB8 6E20030C */  jal        func_800C81B8
    /* B85BC 800C7DBC 21204002 */   addu      $a0, $s2, $zero
  .L800C7DC0:
    /* B85C0 800C7DC0 01003126 */  addiu      $s1, $s1, 0x1
    /* B85C4 800C7DC4 0C00222A */  slti       $v0, $s1, 0xC
    /* B85C8 800C7DC8 D7FF4014 */  bnez       $v0, .L800C7D28
    /* B85CC 800C7DCC 00000000 */   nop
    /* B85D0 800C7DD0 98E9030C */  jal        func_800FA660
    /* B85D4 800C7DD4 48015026 */   addiu     $s0, $s2, 0x148
    /* B85D8 800C7DD8 21200002 */  addu       $a0, $s0, $zero
    /* B85DC 800C7DDC 21280000 */  addu       $a1, $zero, $zero
    /* B85E0 800C7DE0 A9E0030C */  jal        func_800F82A4
    /* B85E4 800C7DE4 21300000 */   addu      $a2, $zero, $zero
    /* B85E8 800C7DE8 21200002 */  addu       $a0, $s0, $zero
    /* B85EC 800C7DEC 12270524 */  addiu      $a1, $zero, 0x2712
    /* B85F0 800C7DF0 0A000624 */  addiu      $a2, $zero, 0xA
    /* B85F4 800C7DF4 44E3030C */  jal        func_800F8D10
    /* B85F8 800C7DF8 EC000724 */   addiu     $a3, $zero, 0xEC
    /* B85FC 800C7DFC C002448E */  lw         $a0, 0x2C0($s2)
    /* B8600 800C7E00 E511040C */  jal        func_80104794
    /* B8604 800C7E04 00000000 */   nop
    /* B8608 800C7E08 1280043C */  lui        $a0, %hi(D_80121340)
    /* B860C 800C7E0C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B8610 800C7E10 CB1A030C */  jal        func_800C6B2C
    /* B8614 800C7E14 C00240AE */   sw        $zero, 0x2C0($s2)
    /* B8618 800C7E18 CB1A030C */  jal        func_800C6B2C
    /* B861C 800C7E1C 1000A427 */   addiu     $a0, $sp, 0x10
    /* B8620 800C7E20 1680043C */  lui        $a0, %hi(D_80158840)
    /* B8624 800C7E24 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* B8628 800C7E28 0100053C */  lui        $a1, (0x11AAA >> 16)
    /* B862C 800C7E2C FCA0020C */  jal        func_800A83F0
    /* B8630 800C7E30 AA1AA534 */   ori       $a1, $a1, (0x11AAA & 0xFFFF)
    /* B8634 800C7E34 26004014 */  bnez       $v0, .L800C7ED0
    /* B8638 800C7E38 F1D80224 */   addiu     $v0, $zero, -0x270F
    /* B863C 800C7E3C 40001124 */  addiu      $s1, $zero, 0x40
    /* B8640 800C7E40 1000B027 */  addiu      $s0, $sp, 0x10
  .L800C7E44:
    /* B8644 800C7E44 58A1020C */  jal        func_800A8560
    /* B8648 800C7E48 00000000 */   nop
    /* B864C 800C7E4C 00004280 */  lb         $v0, 0x0($v0)
    /* B8650 800C7E50 00000000 */  nop
    /* B8654 800C7E54 0B005110 */  beq        $v0, $s1, .L800C7E84
    /* B8658 800C7E58 00000000 */   nop
    /* B865C 800C7E5C 1680053C */  lui        $a1, %hi(D_80158D40)
    /* B8660 800C7E60 408DA58C */  lw         $a1, %lo(D_80158D40)($a1)
    /* B8664 800C7E64 9987030C */  jal        func_800E1E64
    /* B8668 800C7E68 21200002 */   addu      $a0, $s0, $zero
    /* B866C 800C7E6C 1680053C */  lui        $a1, %hi(D_80159138)
    /* B8670 800C7E70 3891A524 */  addiu      $a1, $a1, %lo(D_80159138)
    /* B8674 800C7E74 9987030C */  jal        func_800E1E64
    /* B8678 800C7E78 21200002 */   addu      $a0, $s0, $zero
    /* B867C 800C7E7C 911F0308 */  j          .L800C7E44
    /* B8680 800C7E80 00000000 */   nop
  .L800C7E84:
    /* B8684 800C7E84 AD87030C */  jal        func_800E1EB4
    /* B8688 800C7E88 1000A427 */   addiu     $a0, $sp, 0x10
    /* B868C 800C7E8C 40180200 */  sll        $v1, $v0, 1
    /* B8690 800C7E90 21186200 */  addu       $v1, $v1, $v0
    /* B8694 800C7E94 A0000224 */  addiu      $v0, $zero, 0xA0
    /* B8698 800C7E98 23104300 */  subu       $v0, $v0, $v1
    /* B869C 800C7E9C 1001A2A7 */  sh         $v0, 0x110($sp)
    /* B86A0 800C7EA0 24000224 */  addiu      $v0, $zero, 0x24
    /* B86A4 800C7EA4 1201A2A7 */  sh         $v0, 0x112($sp)
    /* B86A8 800C7EA8 40010224 */  addiu      $v0, $zero, 0x140
    /* B86AC 800C7EAC 1401A2A7 */  sh         $v0, 0x114($sp)
    /* B86B0 800C7EB0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B86B4 800C7EB4 1601A2A7 */  sh         $v0, 0x116($sp)
    /* B86B8 800C7EB8 1000A427 */  addiu      $a0, $sp, 0x10
    /* B86BC 800C7EBC 1001A527 */  addiu      $a1, $sp, 0x110
    /* B86C0 800C7EC0 DC0F040C */  jal        func_80103F70
    /* B86C4 800C7EC4 10000624 */   addiu     $a2, $zero, 0x10
    /* B86C8 800C7EC8 C00242AE */  sw         $v0, 0x2C0($s2)
    /* B86CC 800C7ECC F1D80224 */  addiu      $v0, $zero, -0x270F
  .L800C7ED0:
    /* B86D0 800C7ED0 A8E9030C */  jal        func_800FA6A0
    /* B86D4 800C7ED4 BC0242AE */   sw        $v0, 0x2BC($s2)
    /* B86D8 800C7ED8 8E12040C */  jal        func_80104A38
    /* B86DC 800C7EDC 00000000 */   nop
    /* B86E0 800C7EE0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B86E4 800C7EE4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B86E8 800C7EE8 CB1A030C */  jal        func_800C6B2C
    /* B86EC 800C7EEC 00000000 */   nop
    /* B86F0 800C7EF0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B86F4 800C7EF4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B86F8 800C7EF8 731B030C */  jal        func_800C6DCC
    /* B86FC 800C7EFC C8010524 */   addiu     $a1, $zero, 0x1C8
    /* B8700 800C7F00 0D80023C */  lui        $v0, %hi(func_800C82B4)
    /* B8704 800C7F04 B4824224 */  addiu      $v0, $v0, %lo(func_800C82B4)
    /* B8708 800C7F08 E80042AE */  sw         $v0, 0xE8($s2)
    /* B870C 800C7F0C 14DE030C */  jal        func_800F7850
    /* B8710 800C7F10 B0004426 */   addiu     $a0, $s2, 0xB0
    /* B8714 800C7F14 BF12040C */  jal        func_80104AFC
    /* B8718 800C7F18 00000000 */   nop
    /* B871C 800C7F1C BF12040C */  jal        func_80104AFC
    /* B8720 800C7F20 00000000 */   nop
    /* B8724 800C7F24 2401BF8F */  lw         $ra, 0x124($sp)
    /* B8728 800C7F28 2001B28F */  lw         $s2, 0x120($sp)
    /* B872C 800C7F2C 1C01B18F */  lw         $s1, 0x11C($sp)
    /* B8730 800C7F30 1801B08F */  lw         $s0, 0x118($sp)
    /* B8734 800C7F34 2801BD27 */  addiu      $sp, $sp, 0x128
    /* B8738 800C7F38 0800E003 */  jr         $ra
    /* B873C 800C7F3C 00000000 */   nop
endlabel func_800C7D04
