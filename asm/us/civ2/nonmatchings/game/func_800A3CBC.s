.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3CBC, 0x230

glabel func_800A3CBC
    /* 944BC 800A3CBC 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 944C0 800A3CC0 6000BFAF */  sw         $ra, 0x60($sp)
    /* 944C4 800A3CC4 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 944C8 800A3CC8 5800B2AF */  sw         $s2, 0x58($sp)
    /* 944CC 800A3CCC 5400B1AF */  sw         $s1, 0x54($sp)
    /* 944D0 800A3CD0 5000B0AF */  sw         $s0, 0x50($sp)
    /* 944D4 800A3CD4 21988000 */  addu       $s3, $a0, $zero
    /* 944D8 800A3CD8 9AE0030C */  jal        func_800F8268
    /* 944DC 800A3CDC 2000A427 */   addiu     $a0, $sp, 0x20
    /* 944E0 800A3CE0 2C8D030C */  jal        DrawSync
    /* 944E4 800A3CE4 21200000 */   addu      $a0, $zero, $zero
    /* 944E8 800A3CE8 2000A427 */  addiu      $a0, $sp, 0x20
    /* 944EC 800A3CEC D7000524 */  addiu      $a1, $zero, 0xD7
    /* 944F0 800A3CF0 9CFF0624 */  addiu      $a2, $zero, -0x64
    /* 944F4 800A3CF4 44E3030C */  jal        func_800F8D10
    /* 944F8 800A3CF8 EC000724 */   addiu     $a3, $zero, 0xEC
    /* 944FC 800A3CFC 6F004010 */  beqz       $v0, .L800A3EBC
    /* 94500 800A3D00 36001224 */   addiu     $s2, $zero, 0x36
    /* 94504 800A3D04 1F066292 */  lbu        $v0, 0x61F($s3)
    /* 94508 800A3D08 00000000 */  nop
    /* 9450C 800A3D0C C0380200 */  sll        $a3, $v0, 3
    /* 94510 800A3D10 2338E200 */  subu       $a3, $a3, $v0
    /* 94514 800A3D14 80380700 */  sll        $a3, $a3, 2
    /* 94518 800A3D18 2338E200 */  subu       $a3, $a3, $v0
    /* 9451C 800A3D1C 403C0700 */  sll        $a3, $a3, 17
    /* 94520 800A3D20 4B000224 */  addiu      $v0, $zero, 0x4B
    /* 94524 800A3D24 1000A2AF */  sw         $v0, 0x10($sp)
    /* 94528 800A3D28 1400B2AF */  sw         $s2, 0x14($sp)
    /* 9452C 800A3D2C 0F001124 */  addiu      $s1, $zero, 0xF
    /* 94530 800A3D30 1800B1AF */  sw         $s1, 0x18($sp)
    /* 94534 800A3D34 7C016426 */  addiu      $a0, $s3, 0x17C
    /* 94538 800A3D38 2000A527 */  addiu      $a1, $sp, 0x20
    /* 9453C 800A3D3C 09000624 */  addiu      $a2, $zero, 0x9
    /* 94540 800A3D40 67ED030C */  jal        func_800FB59C
    /* 94544 800A3D44 033C0700 */   sra       $a3, $a3, 16
    /* 94548 800A3D48 1F066292 */  lbu        $v0, 0x61F($s3)
    /* 9454C 800A3D4C 00000000 */  nop
    /* 94550 800A3D50 C0800200 */  sll        $s0, $v0, 3
    /* 94554 800A3D54 23800202 */  subu       $s0, $s0, $v0
    /* 94558 800A3D58 80801000 */  sll        $s0, $s0, 2
    /* 9455C 800A3D5C 23800202 */  subu       $s0, $s0, $v0
    /* 94560 800A3D60 40841000 */  sll        $s0, $s0, 17
    /* 94564 800A3D64 03841000 */  sra        $s0, $s0, 16
    /* 94568 800A3D68 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9456C 800A3D6C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 94570 800A3D70 1800B1AF */  sw         $s1, 0x18($sp)
    /* 94574 800A3D74 CC036426 */  addiu      $a0, $s3, 0x3CC
    /* 94578 800A3D78 2000A527 */  addiu      $a1, $sp, 0x20
    /* 9457C 800A3D7C 09000624 */  addiu      $a2, $zero, 0x9
    /* 94580 800A3D80 67ED030C */  jal        func_800FB59C
    /* 94584 800A3D84 21380002 */   addu      $a3, $s0, $zero
    /* 94588 800A3D88 1000B1AF */  sw         $s1, 0x10($sp)
    /* 9458C 800A3D8C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 94590 800A3D90 1800B1AF */  sw         $s1, 0x18($sp)
    /* 94594 800A3D94 10026426 */  addiu      $a0, $s3, 0x210
    /* 94598 800A3D98 2000A527 */  addiu      $a1, $sp, 0x20
    /* 9459C 800A3D9C 09000624 */  addiu      $a2, $zero, 0x9
    /* 945A0 800A3DA0 67ED030C */  jal        func_800FB59C
    /* 945A4 800A3DA4 21380002 */   addu      $a3, $s0, $zero
    /* 945A8 800A3DA8 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 945AC 800A3DAC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 945B0 800A3DB0 1400B2AF */  sw         $s2, 0x14($sp)
    /* 945B4 800A3DB4 1800B1AF */  sw         $s1, 0x18($sp)
    /* 945B8 800A3DB8 A4026426 */  addiu      $a0, $s3, 0x2A4
    /* 945BC 800A3DBC 2000A527 */  addiu      $a1, $sp, 0x20
    /* 945C0 800A3DC0 09000624 */  addiu      $a2, $zero, 0x9
    /* 945C4 800A3DC4 67ED030C */  jal        func_800FB59C
    /* 945C8 800A3DC8 21380002 */   addu      $a3, $s0, $zero
    /* 945CC 800A3DCC 2D000224 */  addiu      $v0, $zero, 0x2D
    /* 945D0 800A3DD0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 945D4 800A3DD4 1400B2AF */  sw         $s2, 0x14($sp)
    /* 945D8 800A3DD8 1800B1AF */  sw         $s1, 0x18($sp)
    /* 945DC 800A3DDC 38036426 */  addiu      $a0, $s3, 0x338
    /* 945E0 800A3DE0 2000A527 */  addiu      $a1, $sp, 0x20
    /* 945E4 800A3DE4 09000624 */  addiu      $a2, $zero, 0x9
    /* 945E8 800A3DE8 67ED030C */  jal        func_800FB59C
    /* 945EC 800A3DEC 21380002 */   addu      $a3, $s0, $zero
    /* 945F0 800A3DF0 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 945F4 800A3DF4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 945F8 800A3DF8 1400B2AF */  sw         $s2, 0x14($sp)
    /* 945FC 800A3DFC 1800B1AF */  sw         $s1, 0x18($sp)
    /* 94600 800A3E00 60046426 */  addiu      $a0, $s3, 0x460
    /* 94604 800A3E04 2000A527 */  addiu      $a1, $sp, 0x20
    /* 94608 800A3E08 09000624 */  addiu      $a2, $zero, 0x9
    /* 9460C 800A3E0C 67ED030C */  jal        func_800FB59C
    /* 94610 800A3E10 21380002 */   addu      $a3, $s0, $zero
    /* 94614 800A3E14 2000B027 */  addiu      $s0, $sp, 0x20
    /* 94618 800A3E18 21200002 */  addu       $a0, $s0, $zero
    /* 9461C 800A3E1C 21280000 */  addu       $a1, $zero, $zero
    /* 94620 800A3E20 A9E0030C */  jal        func_800F82A4
    /* 94624 800A3E24 21300000 */   addu      $a2, $zero, $zero
    /* 94628 800A3E28 1D066392 */  lbu        $v1, 0x61D($s3)
    /* 9462C 800A3E2C 00000000 */  nop
    /* 94630 800A3E30 40100300 */  sll        $v0, $v1, 1
    /* 94634 800A3E34 21104300 */  addu       $v0, $v0, $v1
    /* 94638 800A3E38 80100200 */  sll        $v0, $v0, 2
    /* 9463C 800A3E3C 23104300 */  subu       $v0, $v0, $v1
    /* 94640 800A3E40 00110200 */  sll        $v0, $v0, 4
    /* 94644 800A3E44 23104300 */  subu       $v0, $v0, $v1
    /* 94648 800A3E48 C0100200 */  sll        $v0, $v0, 3
    /* 9464C 800A3E4C 1180013C */  lui        $at, %hi(D_80117A66)
    /* 94650 800A3E50 21082200 */  addu       $at, $at, $v0
    /* 94654 800A3E54 667A2590 */  lbu        $a1, %lo(D_80117A66)($at)
    /* 94658 800A3E58 21200002 */  addu       $a0, $s0, $zero
    /* 9465C 800A3E5C DC00A524 */  addiu      $a1, $a1, 0xDC
    /* 94660 800A3E60 0A000624 */  addiu      $a2, $zero, 0xA
    /* 94664 800A3E64 44E3030C */  jal        func_800F8D10
    /* 94668 800A3E68 EC000724 */   addiu     $a3, $zero, 0xEC
    /* 9466C 800A3E6C 13004010 */  beqz       $v0, .L800A3EBC
    /* 94670 800A3E70 70000224 */   addiu     $v0, $zero, 0x70
    /* 94674 800A3E74 1000A0AF */  sw         $zero, 0x10($sp)
    /* 94678 800A3E78 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9467C 800A3E7C 89000224 */  addiu      $v0, $zero, 0x89
    /* 94680 800A3E80 1800A2AF */  sw         $v0, 0x18($sp)
    /* 94684 800A3E84 F4046426 */  addiu      $a0, $s3, 0x4F4
    /* 94688 800A3E88 21280002 */  addu       $a1, $s0, $zero
    /* 9468C 800A3E8C 09000624 */  addiu      $a2, $zero, 0x9
    /* 94690 800A3E90 67ED030C */  jal        func_800FB59C
    /* 94694 800A3E94 21380000 */   addu      $a3, $zero, $zero
    /* 94698 800A3E98 21200002 */  addu       $a0, $s0, $zero
    /* 9469C 800A3E9C 21280000 */  addu       $a1, $zero, $zero
    /* 946A0 800A3EA0 A9E0030C */  jal        func_800F82A4
    /* 946A4 800A3EA4 21300000 */   addu      $a2, $zero, $zero
    /* 946A8 800A3EA8 21200002 */  addu       $a0, $s0, $zero
    /* 946AC 800A3EAC 4CE1030C */  jal        func_800F8530
    /* 946B0 800A3EB0 02000524 */   addiu     $a1, $zero, 0x2
    /* 946B4 800A3EB4 B38F0208 */  j          .L800A3ECC
    /* 946B8 800A3EB8 01000224 */   addiu     $v0, $zero, 0x1
  .L800A3EBC:
    /* 946BC 800A3EBC 2000A427 */  addiu      $a0, $sp, 0x20
    /* 946C0 800A3EC0 4CE1030C */  jal        func_800F8530
    /* 946C4 800A3EC4 02000524 */   addiu     $a1, $zero, 0x2
    /* 946C8 800A3EC8 21100000 */  addu       $v0, $zero, $zero
  .L800A3ECC:
    /* 946CC 800A3ECC 6000BF8F */  lw         $ra, 0x60($sp)
    /* 946D0 800A3ED0 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 946D4 800A3ED4 5800B28F */  lw         $s2, 0x58($sp)
    /* 946D8 800A3ED8 5400B18F */  lw         $s1, 0x54($sp)
    /* 946DC 800A3EDC 5000B08F */  lw         $s0, 0x50($sp)
    /* 946E0 800A3EE0 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 946E4 800A3EE4 0800E003 */  jr         $ra
    /* 946E8 800A3EE8 00000000 */   nop
endlabel func_800A3CBC
