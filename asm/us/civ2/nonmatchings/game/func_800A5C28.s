.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A5C28, 0x324

glabel func_800A5C28
    /* 96428 800A5C28 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 9642C 800A5C2C 4400BFAF */  sw         $ra, 0x44($sp)
    /* 96430 800A5C30 4000BEAF */  sw         $fp, 0x40($sp)
    /* 96434 800A5C34 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 96438 800A5C38 3800B6AF */  sw         $s6, 0x38($sp)
    /* 9643C 800A5C3C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 96440 800A5C40 3000B4AF */  sw         $s4, 0x30($sp)
    /* 96444 800A5C44 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 96448 800A5C48 2800B2AF */  sw         $s2, 0x28($sp)
    /* 9644C 800A5C4C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 96450 800A5C50 2000B0AF */  sw         $s0, 0x20($sp)
    /* 96454 800A5C54 21B08000 */  addu       $s6, $a0, $zero
    /* 96458 800A5C58 21A8A000 */  addu       $s5, $a1, $zero
    /* 9645C 800A5C5C 2198C000 */  addu       $s3, $a2, $zero
    /* 96460 800A5C60 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 96464 800A5C64 83B81600 */  sra        $s7, $s6, 2
    /* 96468 800A5C68 05006012 */  beqz       $s3, .L800A5C80
    /* 9646C 800A5C6C 83F01500 */   sra       $fp, $s5, 2
    /* 96470 800A5C70 1680023C */  lui        $v0, %hi(D_801589B8)
    /* 96474 800A5C74 B889428C */  lw         $v0, %lo(D_801589B8)($v0)
    /* 96478 800A5C78 24970208 */  j          .L800A5C90
    /* 9647C 800A5C7C 2110E202 */   addu      $v0, $s7, $v0
  .L800A5C80:
    /* 96480 800A5C80 1680023C */  lui        $v0, %hi(D_801589B4)
    /* 96484 800A5C84 B489428C */  lw         $v0, %lo(D_801589B4)($v0)
    /* 96488 800A5C88 00000000 */  nop
    /* 9648C 800A5C8C 2110E202 */  addu       $v0, $s7, $v0
  .L800A5C90:
    /* 96490 800A5C90 1280033C */  lui        $v1, %hi(D_8011C312)
    /* 96494 800A5C94 12C36384 */  lh         $v1, %lo(D_8011C312)($v1)
    /* 96498 800A5C98 00000000 */  nop
    /* 9649C 800A5C9C 1800C303 */  mult       $fp, $v1
    /* 964A0 800A5CA0 12400000 */  mflo       $t0
    /* 964A4 800A5CA4 21104800 */  addu       $v0, $v0, $t0
    /* 964A8 800A5CA8 00004290 */  lbu        $v0, 0x0($v0)
    /* 964AC 800A5CAC 00000000 */  nop
    /* 964B0 800A5CB0 02004010 */  beqz       $v0, .L800A5CBC
    /* 964B4 800A5CB4 08000224 */   addiu     $v0, $zero, 0x8
    /* 964B8 800A5CB8 08001224 */  addiu      $s2, $zero, 0x8
  .L800A5CBC:
    /* 964BC 800A5CBC 14004216 */  bne        $s2, $v0, .L800A5D10
    /* 964C0 800A5CC0 80201700 */   sll       $a0, $s7, 2
    /* 964C4 800A5CC4 80281E00 */  sll        $a1, $fp, 2
    /* 964C8 800A5CC8 1000B3AF */  sw         $s3, 0x10($sp)
    /* 964CC 800A5CCC 01008424 */  addiu      $a0, $a0, 0x1
    /* 964D0 800A5CD0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 964D4 800A5CD4 1800A627 */  addiu      $a2, $sp, 0x18
    /* 964D8 800A5CD8 5692020C */  jal        func_800A4958
    /* 964DC 800A5CDC 1C00A727 */   addiu     $a3, $sp, 0x1C
    /* 964E0 800A5CE0 0A004010 */  beqz       $v0, .L800A5D0C
    /* 964E4 800A5CE4 12000224 */   addiu     $v0, $zero, 0x12
    /* 964E8 800A5CE8 1000B3AF */  sw         $s3, 0x10($sp)
    /* 964EC 800A5CEC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 964F0 800A5CF0 1800A48F */  lw         $a0, 0x18($sp)
    /* 964F4 800A5CF4 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 964F8 800A5CF8 2130C002 */  addu       $a2, $s6, $zero
    /* 964FC 800A5CFC D096020C */  jal        func_800A5B40
    /* 96500 800A5D00 2138A002 */   addu      $a3, $s5, $zero
    /* 96504 800A5D04 02004104 */  bgez       $v0, .L800A5D10
    /* 96508 800A5D08 00000000 */   nop
  .L800A5D0C:
    /* 9650C 800A5D0C FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800A5D10:
    /* 96510 800A5D10 73004106 */  bgez       $s2, .L800A5EE0
    /* 96514 800A5D14 21804002 */   addu      $s0, $s2, $zero
    /* 96518 800A5D18 63001424 */  addiu      $s4, $zero, 0x63
    /* 9651C 800A5D1C 21800000 */  addu       $s0, $zero, $zero
  .L800A5D20:
    /* 96520 800A5D20 0800022A */  slti       $v0, $s0, 0x8
    /* 96524 800A5D24 6B004010 */  beqz       $v0, .L800A5ED4
    /* 96528 800A5D28 00000000 */   nop
    /* 9652C 800A5D2C 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 96530 800A5D30 21083000 */  addu       $at, $at, $s0
    /* 96534 800A5D34 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 96538 800A5D38 2E3B030C */  jal        func_800CECB8
    /* 9653C 800A5D3C 2120E402 */   addu      $a0, $s7, $a0
    /* 96540 800A5D40 21204000 */  addu       $a0, $v0, $zero
    /* 96544 800A5D44 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 96548 800A5D48 21083000 */  addu       $at, $at, $s0
    /* 9654C 800A5D4C 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 96550 800A5D50 5E008004 */  bltz       $a0, .L800A5ECC
    /* 96554 800A5D54 2128C203 */   addu      $a1, $fp, $v0
    /* 96558 800A5D58 1280033C */  lui        $v1, %hi(D_8011C312)
    /* 9655C 800A5D5C 12C36384 */  lh         $v1, %lo(D_8011C312)($v1)
    /* 96560 800A5D60 00000000 */  nop
    /* 96564 800A5D64 2A108300 */  slt        $v0, $a0, $v1
    /* 96568 800A5D68 58004010 */  beqz       $v0, .L800A5ECC
    /* 9656C 800A5D6C 00000000 */   nop
    /* 96570 800A5D70 5600A004 */  bltz       $a1, .L800A5ECC
    /* 96574 800A5D74 00000000 */   nop
    /* 96578 800A5D78 1280023C */  lui        $v0, %hi(D_8011C314)
    /* 9657C 800A5D7C 14C34284 */  lh         $v0, %lo(D_8011C314)($v0)
    /* 96580 800A5D80 00000000 */  nop
    /* 96584 800A5D84 2A10A200 */  slt        $v0, $a1, $v0
    /* 96588 800A5D88 50004010 */  beqz       $v0, .L800A5ECC
    /* 9658C 800A5D8C 00000000 */   nop
    /* 96590 800A5D90 0E006012 */  beqz       $s3, .L800A5DCC
    /* 96594 800A5D94 21300000 */   addu      $a2, $zero, $zero
    /* 96598 800A5D98 1680023C */  lui        $v0, %hi(D_801589B8)
    /* 9659C 800A5D9C B889428C */  lw         $v0, %lo(D_801589B8)($v0)
    /* 965A0 800A5DA0 00000000 */  nop
    /* 965A4 800A5DA4 21108200 */  addu       $v0, $a0, $v0
    /* 965A8 800A5DA8 1800A300 */  mult       $a1, $v1
    /* 965AC 800A5DAC 12400000 */  mflo       $t0
    /* 965B0 800A5DB0 21104800 */  addu       $v0, $v0, $t0
    /* 965B4 800A5DB4 00004290 */  lbu        $v0, 0x0($v0)
    /* 965B8 800A5DB8 00000000 */  nop
    /* 965BC 800A5DBC 12004010 */  beqz       $v0, .L800A5E08
    /* 965C0 800A5DC0 00000000 */   nop
    /* 965C4 800A5DC4 82970208 */  j          .L800A5E08
    /* 965C8 800A5DC8 01000624 */   addiu     $a2, $zero, 0x1
  .L800A5DCC:
    /* 965CC 800A5DCC 1680033C */  lui        $v1, %hi(D_801589B4)
    /* 965D0 800A5DD0 B489638C */  lw         $v1, %lo(D_801589B4)($v1)
    /* 965D4 800A5DD4 00000000 */  nop
    /* 965D8 800A5DD8 21188300 */  addu       $v1, $a0, $v1
    /* 965DC 800A5DDC 1280023C */  lui        $v0, %hi(D_8011C312)
    /* 965E0 800A5DE0 12C34284 */  lh         $v0, %lo(D_8011C312)($v0)
    /* 965E4 800A5DE4 00000000 */  nop
    /* 965E8 800A5DE8 1800A200 */  mult       $a1, $v0
    /* 965EC 800A5DEC 12400000 */  mflo       $t0
    /* 965F0 800A5DF0 21186800 */  addu       $v1, $v1, $t0
    /* 965F4 800A5DF4 00006290 */  lbu        $v0, 0x0($v1)
    /* 965F8 800A5DF8 00000000 */  nop
    /* 965FC 800A5DFC 02004010 */  beqz       $v0, .L800A5E08
    /* 96600 800A5E00 00000000 */   nop
    /* 96604 800A5E04 01000624 */  addiu      $a2, $zero, 0x1
  .L800A5E08:
    /* 96608 800A5E08 3000C010 */  beqz       $a2, .L800A5ECC
    /* 9660C 800A5E0C 80100400 */   sll       $v0, $a0, 2
    /* 96610 800A5E10 01004424 */  addiu      $a0, $v0, 0x1
    /* 96614 800A5E14 1800A4AF */  sw         $a0, 0x18($sp)
    /* 96618 800A5E18 80100500 */  sll        $v0, $a1, 2
    /* 9661C 800A5E1C 01004324 */  addiu      $v1, $v0, 0x1
    /* 96620 800A5E20 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 96624 800A5E24 0D006004 */  bltz       $v1, .L800A5E5C
    /* 96628 800A5E28 21280000 */   addu      $a1, $zero, $zero
    /* 9662C 800A5E2C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 96630 800A5E30 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 96634 800A5E34 00000000 */  nop
    /* 96638 800A5E38 2A106200 */  slt        $v0, $v1, $v0
    /* 9663C 800A5E3C 07004010 */  beqz       $v0, .L800A5E5C
    /* 96640 800A5E40 00000000 */   nop
    /* 96644 800A5E44 05008004 */  bltz       $a0, .L800A5E5C
    /* 96648 800A5E48 00000000 */   nop
    /* 9664C 800A5E4C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 96650 800A5E50 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 96654 800A5E54 00000000 */  nop
    /* 96658 800A5E58 2A288200 */  slt        $a1, $a0, $v0
  .L800A5E5C:
    /* 9665C 800A5E5C 1B00A010 */  beqz       $a1, .L800A5ECC
    /* 96660 800A5E60 2120C002 */   addu      $a0, $s6, $zero
    /* 96664 800A5E64 1800A68F */  lw         $a2, 0x18($sp)
    /* 96668 800A5E68 1C00A78F */  lw         $a3, 0x1C($sp)
    /* 9666C 800A5E6C A73B030C */  jal        func_800CEE9C
    /* 96670 800A5E70 2128A002 */   addu      $a1, $s5, $zero
    /* 96674 800A5E74 21884000 */  addu       $s1, $v0, $zero
    /* 96678 800A5E78 2A103402 */  slt        $v0, $s1, $s4
    /* 9667C 800A5E7C 13004010 */  beqz       $v0, .L800A5ECC
    /* 96680 800A5E80 1800A627 */   addiu     $a2, $sp, 0x18
    /* 96684 800A5E84 1000B3AF */  sw         $s3, 0x10($sp)
    /* 96688 800A5E88 1800A48F */  lw         $a0, 0x18($sp)
    /* 9668C 800A5E8C 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 96690 800A5E90 5692020C */  jal        func_800A4958
    /* 96694 800A5E94 1C00A727 */   addiu     $a3, $sp, 0x1C
    /* 96698 800A5E98 0C004010 */  beqz       $v0, .L800A5ECC
    /* 9669C 800A5E9C 12000224 */   addiu     $v0, $zero, 0x12
    /* 966A0 800A5EA0 1000B3AF */  sw         $s3, 0x10($sp)
    /* 966A4 800A5EA4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 966A8 800A5EA8 1800A48F */  lw         $a0, 0x18($sp)
    /* 966AC 800A5EAC 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 966B0 800A5EB0 2130C002 */  addu       $a2, $s6, $zero
    /* 966B4 800A5EB4 D096020C */  jal        func_800A5B40
    /* 966B8 800A5EB8 2138A002 */   addu      $a3, $s5, $zero
    /* 966BC 800A5EBC 03004004 */  bltz       $v0, .L800A5ECC
    /* 966C0 800A5EC0 00000000 */   nop
    /* 966C4 800A5EC4 21A02002 */  addu       $s4, $s1, $zero
    /* 966C8 800A5EC8 21900002 */  addu       $s2, $s0, $zero
  .L800A5ECC:
    /* 966CC 800A5ECC 48970208 */  j          .L800A5D20
    /* 966D0 800A5ED0 01001026 */   addiu     $s0, $s0, 0x1
  .L800A5ED4:
    /* 966D4 800A5ED4 02004106 */  bgez       $s2, .L800A5EE0
    /* 966D8 800A5ED8 21804002 */   addu      $s0, $s2, $zero
    /* 966DC 800A5EDC 08001024 */  addiu      $s0, $zero, 0x8
  .L800A5EE0:
    /* 966E0 800A5EE0 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 966E4 800A5EE4 21083000 */  addu       $at, $at, $s0
    /* 966E8 800A5EE8 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 966EC 800A5EEC 2E3B030C */  jal        func_800CECB8
    /* 966F0 800A5EF0 2120E402 */   addu      $a0, $s7, $a0
    /* 966F4 800A5EF4 FC0582AF */  sw         $v0, %gp_rel(D_80158AD4)($gp)
    /* 966F8 800A5EF8 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 966FC 800A5EFC 21083000 */  addu       $at, $at, $s0
    /* 96700 800A5F00 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 96704 800A5F04 00000000 */  nop
    /* 96708 800A5F08 2110C203 */  addu       $v0, $fp, $v0
    /* 9670C 800A5F0C 000682AF */  sw         $v0, %gp_rel(D_80158AD8)($gp)
    /* 96710 800A5F10 27101200 */  nor        $v0, $zero, $s2
    /* 96714 800A5F14 C2170200 */  srl        $v0, $v0, 31
    /* 96718 800A5F18 4400BF8F */  lw         $ra, 0x44($sp)
    /* 9671C 800A5F1C 4000BE8F */  lw         $fp, 0x40($sp)
    /* 96720 800A5F20 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 96724 800A5F24 3800B68F */  lw         $s6, 0x38($sp)
    /* 96728 800A5F28 3400B58F */  lw         $s5, 0x34($sp)
    /* 9672C 800A5F2C 3000B48F */  lw         $s4, 0x30($sp)
    /* 96730 800A5F30 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 96734 800A5F34 2800B28F */  lw         $s2, 0x28($sp)
    /* 96738 800A5F38 2400B18F */  lw         $s1, 0x24($sp)
    /* 9673C 800A5F3C 2000B08F */  lw         $s0, 0x20($sp)
    /* 96740 800A5F40 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 96744 800A5F44 0800E003 */  jr         $ra
    /* 96748 800A5F48 00000000 */   nop
endlabel func_800A5C28
