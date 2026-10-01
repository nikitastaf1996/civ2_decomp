.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B6434, 0xA64

glabel func_800B6434
    /* A6C34 800B6434 E0FEBD27 */  addiu      $sp, $sp, -0x120
    /* A6C38 800B6438 1C01BFAF */  sw         $ra, 0x11C($sp)
    /* A6C3C 800B643C 1801BEAF */  sw         $fp, 0x118($sp)
    /* A6C40 800B6440 1401B7AF */  sw         $s7, 0x114($sp)
    /* A6C44 800B6444 1001B6AF */  sw         $s6, 0x110($sp)
    /* A6C48 800B6448 0C01B5AF */  sw         $s5, 0x10C($sp)
    /* A6C4C 800B644C 0801B4AF */  sw         $s4, 0x108($sp)
    /* A6C50 800B6450 0401B3AF */  sw         $s3, 0x104($sp)
    /* A6C54 800B6454 0001B2AF */  sw         $s2, 0x100($sp)
    /* A6C58 800B6458 FC00B1AF */  sw         $s1, 0xFC($sp)
    /* A6C5C 800B645C F800B0AF */  sw         $s0, 0xF8($sp)
    /* A6C60 800B6460 21A88000 */  addu       $s5, $a0, $zero
    /* A6C64 800B6464 680A95AF */  sw         $s5, %gp_rel(D_80158F40)($gp)
    /* A6C68 800B6468 3000A38E */  lw         $v1, 0x30($s5)
    /* A6C6C 800B646C 00000000 */  nop
    /* A6C70 800B6470 00026230 */  andi       $v0, $v1, 0x200
    /* A6C74 800B6474 7B024014 */  bnez       $v0, .L800B6E64
    /* A6C78 800B6478 21B80000 */   addu      $s7, $zero, $zero
    /* A6C7C 800B647C 04006830 */  andi       $t0, $v1, 0x4
    /* A6C80 800B6480 E000A8AF */  sw         $t0, 0xE0($sp)
    /* A6C84 800B6484 2400A28E */  lw         $v0, 0x24($s5)
    /* A6C88 800B6488 00000000 */  nop
    /* A6C8C 800B648C 18004010 */  beqz       $v0, .L800B64F0
    /* A6C90 800B6490 00107E30 */   andi      $fp, $v1, 0x1000
    /* A6C94 800B6494 2800B08E */  lw         $s0, 0x28($s5)
    /* A6C98 800B6498 00000000 */  nop
    /* A6C9C 800B649C 21805000 */  addu       $s0, $v0, $s0
    /* A6CA0 800B64A0 40201000 */  sll        $a0, $s0, 1
    /* A6CA4 800B64A4 21209000 */  addu       $a0, $a0, $s0
    /* A6CA8 800B64A8 80200400 */  sll        $a0, $a0, 2
    /* A6CAC 800B64AC 23209000 */  subu       $a0, $a0, $s0
    /* A6CB0 800B64B0 80200400 */  sll        $a0, $a0, 2
    /* A6CB4 800B64B4 6D82030C */  jal        __builtin_vec_delete
    /* A6CB8 800B64B8 08008424 */   addiu     $a0, $a0, 0x8
    /* A6CBC 800B64BC 000050AC */  sw         $s0, 0x0($v0)
    /* A6CC0 800B64C0 08005224 */  addiu      $s2, $v0, 0x8
    /* A6CC4 800B64C4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A6CC8 800B64C8 07000006 */  bltz       $s0, .L800B64E8
    /* A6CCC 800B64CC 21884002 */   addu      $s1, $s2, $zero
    /* A6CD0 800B64D0 FFFF1324 */  addiu      $s3, $zero, -0x1
  .L800B64D4:
    /* A6CD4 800B64D4 0DDA030C */  jal        func_800F6834
    /* A6CD8 800B64D8 21202002 */   addu      $a0, $s1, $zero
    /* A6CDC 800B64DC FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A6CE0 800B64E0 FCFF1316 */  bne        $s0, $s3, .L800B64D4
    /* A6CE4 800B64E4 2C003126 */   addiu     $s1, $s1, 0x2C
  .L800B64E8:
    /* A6CE8 800B64E8 D000B2AF */  sw         $s2, 0xD0($sp)
    /* A6CEC 800B64EC B801B2AE */  sw         $s2, 0x1B8($s5)
  .L800B64F0:
    /* A6CF0 800B64F0 21B00000 */  addu       $s6, $zero, $zero
  .L800B64F4:
    /* A6CF4 800B64F4 2400A38E */  lw         $v1, 0x24($s5)
    /* A6CF8 800B64F8 2800A28E */  lw         $v0, 0x28($s5)
    /* A6CFC 800B64FC 00000000 */  nop
    /* A6D00 800B6500 21106200 */  addu       $v0, $v1, $v0
    /* A6D04 800B6504 2A10C202 */  slt        $v0, $s6, $v0
    /* A6D08 800B6508 4B004010 */  beqz       $v0, .L800B6638
    /* A6D0C 800B650C 2A10C302 */   slt       $v0, $s6, $v1
    /* A6D10 800B6510 0A004010 */  beqz       $v0, .L800B653C
    /* A6D14 800B6514 C0101600 */   sll       $v0, $s6, 3
    /* A6D18 800B6518 2110A202 */  addu       $v0, $s5, $v0
    /* A6D1C 800B651C 5402518C */  lw         $s1, 0x254($v0)
    /* A6D20 800B6520 00000000 */  nop
    /* A6D24 800B6524 80101100 */  sll        $v0, $s1, 2
    /* A6D28 800B6528 1280013C */  lui        $at, %hi(D_801208E0)
    /* A6D2C 800B652C 21082200 */  addu       $at, $at, $v0
    /* A6D30 800B6530 E008328C */  lw         $s2, %lo(D_801208E0)($at)
    /* A6D34 800B6534 57D90208 */  j          .L800B655C
    /* A6D38 800B6538 C0801600 */   sll       $s0, $s6, 3
  .L800B653C:
    /* A6D3C 800B653C FFFF1124 */  addiu      $s1, $zero, -0x1
    /* A6D40 800B6540 2400A28E */  lw         $v0, 0x24($s5)
    /* A6D44 800B6544 00000000 */  nop
    /* A6D48 800B6548 2310C202 */  subu       $v0, $s6, $v0
    /* A6D4C 800B654C 80100200 */  sll        $v0, $v0, 2
    /* A6D50 800B6550 21105500 */  addu       $v0, $v0, $s5
    /* A6D54 800B6554 3C02528C */  lw         $s2, 0x23C($v0)
    /* A6D58 800B6558 C0801600 */  sll        $s0, $s6, 3
  .L800B655C:
    /* A6D5C 800B655C 2180B002 */  addu       $s0, $s5, $s0
    /* A6D60 800B6560 05C8020C */  jal        func_800B2014
    /* A6D64 800B6564 2120A002 */   addu      $a0, $s5, $zero
    /* A6D68 800B6568 5802038E */  lw         $v1, 0x258($s0)
    /* A6D6C 800B656C F800A48E */  lw         $a0, 0xF8($s5)
    /* A6D70 800B6570 1001A58E */  lw         $a1, 0x110($s5)
    /* A6D74 800B6574 C800A3A7 */  sh         $v1, 0xC8($sp)
    /* A6D78 800B6578 CA00A4A7 */  sh         $a0, 0xCA($sp)
    /* A6D7C 800B657C 21186500 */  addu       $v1, $v1, $a1
    /* A6D80 800B6580 CC00A3A7 */  sh         $v1, 0xCC($sp)
    /* A6D84 800B6584 21208200 */  addu       $a0, $a0, $v0
    /* A6D88 800B6588 CE00A4A7 */  sh         $a0, 0xCE($sp)
    /* A6D8C 800B658C 40101600 */  sll        $v0, $s6, 1
    /* A6D90 800B6590 21105600 */  addu       $v0, $v0, $s6
    /* A6D94 800B6594 80100200 */  sll        $v0, $v0, 2
    /* A6D98 800B6598 23105600 */  subu       $v0, $v0, $s6
    /* A6D9C 800B659C 80800200 */  sll        $s0, $v0, 2
    /* A6DA0 800B65A0 B801A48E */  lw         $a0, 0x1B8($s5)
    /* A6DA4 800B65A4 0000A58E */  lw         $a1, 0x0($s5)
    /* A6DA8 800B65A8 6400C626 */  addiu      $a2, $s6, 0x64
    /* A6DAC 800B65AC 00340600 */  sll        $a2, $a2, 16
    /* A6DB0 800B65B0 1000B2AF */  sw         $s2, 0x10($sp)
    /* A6DB4 800B65B4 21200402 */  addu       $a0, $s0, $a0
    /* A6DB8 800B65B8 2C00A524 */  addiu      $a1, $a1, 0x2C
    /* A6DBC 800B65BC 03340600 */  sra        $a2, $a2, 16
    /* A6DC0 800B65C0 4FDA030C */  jal        func_800F693C
    /* A6DC4 800B65C4 C800A727 */   addiu     $a3, $sp, 0xC8
    /* A6DC8 800B65C8 02000224 */  addiu      $v0, $zero, 0x2
    /* A6DCC 800B65CC 04002216 */  bne        $s1, $v0, .L800B65E0
    /* A6DD0 800B65D0 00000000 */   nop
    /* A6DD4 800B65D4 B801A48E */  lw         $a0, 0x1B8($s5)
    /* A6DD8 800B65D8 98DA030C */  jal        func_800F6A60
    /* A6DDC 800B65DC 21200402 */   addu      $a0, $s0, $a0
  .L800B65E0:
    /* A6DE0 800B65E0 09002016 */  bnez       $s1, .L800B6608
    /* A6DE4 800B65E4 00000000 */   nop
    /* A6DE8 800B65E8 40201600 */  sll        $a0, $s6, 1
    /* A6DEC 800B65EC 21209600 */  addu       $a0, $a0, $s6
    /* A6DF0 800B65F0 80200400 */  sll        $a0, $a0, 2
    /* A6DF4 800B65F4 23209600 */  subu       $a0, $a0, $s6
    /* A6DF8 800B65F8 80200400 */  sll        $a0, $a0, 2
    /* A6DFC 800B65FC B801A28E */  lw         $v0, 0x1B8($s5)
    /* A6E00 800B6600 8DDA030C */  jal        func_800F6A34
    /* A6E04 800B6604 21208200 */   addu      $a0, $a0, $v0
  .L800B6608:
    /* A6E08 800B6608 40201600 */  sll        $a0, $s6, 1
    /* A6E0C 800B660C 21209600 */  addu       $a0, $a0, $s6
    /* A6E10 800B6610 80200400 */  sll        $a0, $a0, 2
    /* A6E14 800B6614 23209600 */  subu       $a0, $a0, $s6
    /* A6E18 800B6618 80200400 */  sll        $a0, $a0, 2
    /* A6E1C 800B661C B801A28E */  lw         $v0, 0x1B8($s5)
    /* A6E20 800B6620 0B80053C */  lui        $a1, %hi(func_800B48C8)
    /* A6E24 800B6624 C848A524 */  addiu      $a1, $a1, %lo(func_800B48C8)
    /* A6E28 800B6628 A3DA030C */  jal        func_800F6A8C
    /* A6E2C 800B662C 21208200 */   addu      $a0, $a0, $v0
    /* A6E30 800B6630 3DD90208 */  j          .L800B64F4
    /* A6E34 800B6634 0100D626 */   addiu     $s6, $s6, 0x1
  .L800B6638:
    /* A6E38 800B6638 E000A88F */  lw         $t0, 0xE0($sp)
    /* A6E3C 800B663C 00000000 */  nop
    /* A6E40 800B6640 17000015 */  bnez       $t0, .L800B66A0
    /* A6E44 800B6644 00000000 */   nop
    /* A6E48 800B6648 1500C017 */  bnez       $fp, .L800B66A0
    /* A6E4C 800B664C 00000000 */   nop
    /* A6E50 800B6650 1C00A28E */  lw         $v0, 0x1C($s5)
    /* A6E54 800B6654 00000000 */  nop
    /* A6E58 800B6658 29004228 */  slti       $v0, $v0, 0x29
    /* A6E5C 800B665C 02004014 */  bnez       $v0, .L800B6668
    /* A6E60 800B6660 28000224 */   addiu     $v0, $zero, 0x28
    /* A6E64 800B6664 1C00A2AE */  sw         $v0, 0x1C($s5)
  .L800B6668:
    /* A6E68 800B6668 7001B48E */  lw         $s4, 0x170($s5)
    /* A6E6C 800B666C 00000000 */  nop
    /* A6E70 800B6670 0B008012 */  beqz       $s4, .L800B66A0
    /* A6E74 800B6674 00000000 */   nop
    /* A6E78 800B6678 2000A427 */  addiu      $a0, $sp, 0x20
  .L800B667C:
    /* A6E7C 800B667C 80101700 */  sll        $v0, $s7, 2
    /* A6E80 800B6680 21104400 */  addu       $v0, $v0, $a0
    /* A6E84 800B6684 0800838E */  lw         $v1, 0x8($s4)
    /* A6E88 800B6688 00000000 */  nop
    /* A6E8C 800B668C 000043AC */  sw         $v1, 0x0($v0)
    /* A6E90 800B6690 0C00948E */  lw         $s4, 0xC($s4)
    /* A6E94 800B6694 00000000 */  nop
    /* A6E98 800B6698 F8FF8016 */  bnez       $s4, .L800B667C
    /* A6E9C 800B669C 0100F726 */   addiu     $s7, $s7, 0x1
  .L800B66A0:
    /* A6EA0 800B66A0 1C00A28E */  lw         $v0, 0x1C($s5)
    /* A6EA4 800B66A4 00000000 */  nop
    /* A6EA8 800B66A8 8F014010 */  beqz       $v0, .L800B6CE8
    /* A6EAC 800B66AC 00000000 */   nop
    /* A6EB0 800B66B0 C000C013 */  beqz       $fp, .L800B69B4
    /* A6EB4 800B66B4 0400033C */   lui       $v1, (0x40000 >> 16)
    /* A6EB8 800B66B8 3000A28E */  lw         $v0, 0x30($s5)
    /* A6EBC 800B66BC 00000000 */  nop
    /* A6EC0 800B66C0 24104300 */  and        $v0, $v0, $v1
    /* A6EC4 800B66C4 41004010 */  beqz       $v0, .L800B67CC
    /* A6EC8 800B66C8 00000000 */   nop
    /* A6ECC 800B66CC 3E82030C */  jal        __builtin_new
    /* A6ED0 800B66D0 2C000424 */   addiu     $a0, $zero, 0x2C
    /* A6ED4 800B66D4 21804000 */  addu       $s0, $v0, $zero
    /* A6ED8 800B66D8 C7D8030C */  jal        func_800F631C
    /* A6EDC 800B66DC 21200002 */   addu      $a0, $s0, $zero
    /* A6EE0 800B66E0 240000AE */  sw         $zero, 0x24($s0)
    /* A6EE4 800B66E4 280000AE */  sw         $zero, 0x28($s0)
    /* A6EE8 800B66E8 BC01B0AE */  sw         $s0, 0x1BC($s5)
    /* A6EEC 800B66EC D400A28E */  lw         $v0, 0xD4($s5)
    /* A6EF0 800B66F0 D800A38E */  lw         $v1, 0xD8($s5)
    /* A6EF4 800B66F4 3C00A48E */  lw         $a0, 0x3C($s5)
    /* A6EF8 800B66F8 4000A58E */  lw         $a1, 0x40($s5)
    /* A6EFC 800B66FC C800A2A7 */  sh         $v0, 0xC8($sp)
    /* A6F00 800B6700 CA00A3A7 */  sh         $v1, 0xCA($sp)
    /* A6F04 800B6704 21104400 */  addu       $v0, $v0, $a0
    /* A6F08 800B6708 CC00A2A7 */  sh         $v0, 0xCC($sp)
    /* A6F0C 800B670C 21186500 */  addu       $v1, $v1, $a1
    /* A6F10 800B6710 CE00A3A7 */  sh         $v1, 0xCE($sp)
    /* A6F14 800B6714 BC01B08E */  lw         $s0, 0x1BC($s5)
    /* A6F18 800B6718 0000A58E */  lw         $a1, 0x0($s5)
    /* A6F1C 800B671C C800B127 */  addiu      $s1, $sp, 0xC8
    /* A6F20 800B6720 1000B1AF */  sw         $s1, 0x10($sp)
    /* A6F24 800B6724 21200002 */  addu       $a0, $s0, $zero
    /* A6F28 800B6728 2C00A524 */  addiu      $a1, $a1, 0x2C
    /* A6F2C 800B672C 07000624 */  addiu      $a2, $zero, 0x7
    /* A6F30 800B6730 EFD8030C */  jal        func_800F63BC
    /* A6F34 800B6734 0A000724 */   addiu     $a3, $zero, 0xA
    /* A6F38 800B6738 21202002 */  addu       $a0, $s1, $zero
    /* A6F3C 800B673C 21280002 */  addu       $a1, $s0, $zero
    /* A6F40 800B6740 015D020C */  jal        func_80097404
    /* A6F44 800B6744 01000624 */   addiu     $a2, $zero, 0x1
    /* A6F48 800B6748 140002AE */  sw         $v0, 0x14($s0)
    /* A6F4C 800B674C 200000A6 */  sh         $zero, 0x20($s0)
    /* A6F50 800B6750 7001B48E */  lw         $s4, 0x170($s5)
    /* A6F54 800B6754 21880000 */  addu       $s1, $zero, $zero
  .L800B6758:
    /* A6F58 800B6758 17008012 */  beqz       $s4, .L800B67B8
    /* A6F5C 800B675C 00000000 */   nop
    /* A6F60 800B6760 BC01B08E */  lw         $s0, 0x1BC($s5)
    /* A6F64 800B6764 00000000 */  nop
    /* A6F68 800B6768 1400048E */  lw         $a0, 0x14($s0)
    /* A6F6C 800B676C 0800858E */  lw         $a1, 0x8($s4)
    /* A6F70 800B6770 075D020C */  jal        func_8009741C
    /* A6F74 800B6774 00000000 */   nop
    /* A6F78 800B6778 20000296 */  lhu        $v0, 0x20($s0)
    /* A6F7C 800B677C 00000000 */  nop
    /* A6F80 800B6780 01004224 */  addiu      $v0, $v0, 0x1
    /* A6F84 800B6784 200002A6 */  sh         $v0, 0x20($s0)
    /* A6F88 800B6788 6801A28E */  lw         $v0, 0x168($s5)
    /* A6F8C 800B678C 00000000 */  nop
    /* A6F90 800B6790 06008216 */  bne        $s4, $v0, .L800B67AC
    /* A6F94 800B6794 002C1100 */   sll       $a1, $s1, 16
    /* A6F98 800B6798 BC01A28E */  lw         $v0, 0x1BC($s5)
    /* A6F9C 800B679C 00000000 */  nop
    /* A6FA0 800B67A0 1400448C */  lw         $a0, 0x14($v0)
    /* A6FA4 800B67A4 135D020C */  jal        func_8009744C
    /* A6FA8 800B67A8 032C0500 */   sra       $a1, $a1, 16
  .L800B67AC:
    /* A6FAC 800B67AC 0C00948E */  lw         $s4, 0xC($s4)
    /* A6FB0 800B67B0 D6D90208 */  j          .L800B6758
    /* A6FB4 800B67B4 01003126 */   addiu     $s1, $s1, 0x1
  .L800B67B8:
    /* A6FB8 800B67B8 BC01A38E */  lw         $v1, 0x1BC($s5)
    /* A6FBC 800B67BC 0B80023C */  lui        $v0, %hi(func_800B47AC)
    /* A6FC0 800B67C0 AC474224 */  addiu      $v0, $v0, %lo(func_800B47AC)
    /* A6FC4 800B67C4 3ADB0208 */  j          .L800B6CE8
    /* A6FC8 800B67C8 240062AC */   sw        $v0, 0x24($v1)
  .L800B67CC:
    /* A6FCC 800B67CC 4400A28E */  lw         $v0, 0x44($s5)
    /* A6FD0 800B67D0 2C00A38E */  lw         $v1, 0x2C($s5)
    /* A6FD4 800B67D4 00000000 */  nop
    /* A6FD8 800B67D8 18004300 */  mult       $v0, $v1
    /* A6FDC 800B67DC 1C00A28E */  lw         $v0, 0x1C($s5)
    /* A6FE0 800B67E0 12400000 */  mflo       $t0
    /* A6FE4 800B67E4 2A100201 */  slt        $v0, $t0, $v0
    /* A6FE8 800B67E8 61004010 */  beqz       $v0, .L800B6970
    /* A6FEC 800B67EC 01000224 */   addiu     $v0, $zero, 0x1
    /* A6FF0 800B67F0 2E006214 */  bne        $v1, $v0, .L800B68AC
    /* A6FF4 800B67F4 00000000 */   nop
    /* A6FF8 800B67F8 3E82030C */  jal        __builtin_new
    /* A6FFC 800B67FC 30000424 */   addiu     $a0, $zero, 0x30
    /* A7000 800B6800 21804000 */  addu       $s0, $v0, $zero
    /* A7004 800B6804 C7D8030C */  jal        func_800F631C
    /* A7008 800B6808 21200002 */   addu      $a0, $s0, $zero
    /* A700C 800B680C 01001224 */  addiu      $s2, $zero, 0x1
    /* A7010 800B6810 280012A6 */  sh         $s2, 0x28($s0)
    /* A7014 800B6814 200000AE */  sw         $zero, 0x20($s0)
    /* A7018 800B6818 240000AE */  sw         $zero, 0x24($s0)
    /* A701C 800B681C C401B0AE */  sw         $s0, 0x1C4($s5)
    /* A7020 800B6820 0000A58E */  lw         $a1, 0x0($s5)
    /* A7024 800B6824 2C01B126 */  addiu      $s1, $s5, 0x12C
    /* A7028 800B6828 1000B1AF */  sw         $s1, 0x10($sp)
    /* A702C 800B682C 21200002 */  addu       $a0, $s0, $zero
    /* A7030 800B6830 2C00A524 */  addiu      $a1, $a1, 0x2C
    /* A7034 800B6834 08000624 */  addiu      $a2, $zero, 0x8
    /* A7038 800B6838 EFD8030C */  jal        func_800F63BC
    /* A703C 800B683C 0B000724 */   addiu     $a3, $zero, 0xB
    /* A7040 800B6840 21202002 */  addu       $a0, $s1, $zero
    /* A7044 800B6844 21280002 */  addu       $a1, $s0, $zero
    /* A7048 800B6848 01000624 */  addiu      $a2, $zero, 0x1
    /* A704C 800B684C 415D020C */  jal        func_80097504
    /* A7050 800B6850 01000724 */   addiu     $a3, $zero, 0x1
    /* A7054 800B6854 140002AE */  sw         $v0, 0x14($s0)
    /* A7058 800B6858 2A0012A6 */  sh         $s2, 0x2A($s0)
    /* A705C 800B685C 6001A58E */  lw         $a1, 0x160($s5)
    /* A7060 800B6860 7ACC020C */  jal        func_800B31E8
    /* A7064 800B6864 2120A002 */   addu      $a0, $s5, $zero
    /* A7068 800B6868 C401A38E */  lw         $v1, 0x1C4($s5)
    /* A706C 800B686C 00000000 */  nop
    /* A7070 800B6870 2C0062A4 */  sh         $v0, 0x2C($v1)
    /* A7074 800B6874 4400A596 */  lhu        $a1, 0x44($s5)
    /* A7078 800B6878 00000000 */  nop
    /* A707C 800B687C FFFFA524 */  addiu      $a1, $a1, -0x1
    /* A7080 800B6880 002C0500 */  sll        $a1, $a1, 16
    /* A7084 800B6884 C401A48E */  lw         $a0, 0x1C4($s5)
    /* A7088 800B6888 6FDB030C */  jal        func_800F6DBC
    /* A708C 800B688C 032C0500 */   sra       $a1, $a1, 16
    /* A7090 800B6890 C401A28E */  lw         $v0, 0x1C4($s5)
    /* A7094 800B6894 0B80033C */  lui        $v1, %hi(func_800B6000)
    /* A7098 800B6898 00606324 */  addiu      $v1, $v1, %lo(func_800B6000)
    /* A709C 800B689C 200043AC */  sw         $v1, 0x20($v0)
    /* A70A0 800B68A0 C401A28E */  lw         $v0, 0x1C4($s5)
    /* A70A4 800B68A4 5CDA0208 */  j          .L800B6970
    /* A70A8 800B68A8 240043AC */   sw        $v1, 0x24($v0)
  .L800B68AC:
    /* A70AC 800B68AC 3E82030C */  jal        __builtin_new
    /* A70B0 800B68B0 30000424 */   addiu     $a0, $zero, 0x30
    /* A70B4 800B68B4 21804000 */  addu       $s0, $v0, $zero
    /* A70B8 800B68B8 C7D8030C */  jal        func_800F631C
    /* A70BC 800B68BC 21200002 */   addu      $a0, $s0, $zero
    /* A70C0 800B68C0 01001224 */  addiu      $s2, $zero, 0x1
    /* A70C4 800B68C4 280012A6 */  sh         $s2, 0x28($s0)
    /* A70C8 800B68C8 200000AE */  sw         $zero, 0x20($s0)
    /* A70CC 800B68CC 240000AE */  sw         $zero, 0x24($s0)
    /* A70D0 800B68D0 C801B0AE */  sw         $s0, 0x1C8($s5)
    /* A70D4 800B68D4 0000A58E */  lw         $a1, 0x0($s5)
    /* A70D8 800B68D8 3401B126 */  addiu      $s1, $s5, 0x134
    /* A70DC 800B68DC 1000B1AF */  sw         $s1, 0x10($sp)
    /* A70E0 800B68E0 21200002 */  addu       $a0, $s0, $zero
    /* A70E4 800B68E4 2C00A524 */  addiu      $a1, $a1, 0x2C
    /* A70E8 800B68E8 08000624 */  addiu      $a2, $zero, 0x8
    /* A70EC 800B68EC EFD8030C */  jal        func_800F63BC
    /* A70F0 800B68F0 0C000724 */   addiu     $a3, $zero, 0xC
    /* A70F4 800B68F4 21202002 */  addu       $a0, $s1, $zero
    /* A70F8 800B68F8 21280002 */  addu       $a1, $s0, $zero
    /* A70FC 800B68FC 21300000 */  addu       $a2, $zero, $zero
    /* A7100 800B6900 415D020C */  jal        func_80097504
    /* A7104 800B6904 01000724 */   addiu     $a3, $zero, 0x1
    /* A7108 800B6908 140002AE */  sw         $v0, 0x14($s0)
    /* A710C 800B690C 2A0012A6 */  sh         $s2, 0x2A($s0)
    /* A7110 800B6910 1C00A58E */  lw         $a1, 0x1C($s5)
    /* A7114 800B6914 2120A002 */  addu       $a0, $s5, $zero
    /* A7118 800B6918 45D1020C */  jal        func_800B4514
    /* A711C 800B691C FFFFA524 */   addiu     $a1, $a1, -0x1
    /* A7120 800B6920 6001A58E */  lw         $a1, 0x160($s5)
    /* A7124 800B6924 7ACC020C */  jal        func_800B31E8
    /* A7128 800B6928 2120A002 */   addu      $a0, $s5, $zero
    /* A712C 800B692C 2120A002 */  addu       $a0, $s5, $zero
    /* A7130 800B6930 45D1020C */  jal        func_800B4514
    /* A7134 800B6934 21284000 */   addu      $a1, $v0, $zero
    /* A7138 800B6938 C801A38E */  lw         $v1, 0x1C8($s5)
    /* A713C 800B693C 00000000 */  nop
    /* A7140 800B6940 2C0062A4 */  sh         $v0, 0x2C($v1)
    /* A7144 800B6944 C801A48E */  lw         $a0, 0x1C8($s5)
    /* A7148 800B6948 2C00A586 */  lh         $a1, 0x2C($s5)
    /* A714C 800B694C 6FDB030C */  jal        func_800F6DBC
    /* A7150 800B6950 00000000 */   nop
    /* A7154 800B6954 C801A28E */  lw         $v0, 0x1C8($s5)
    /* A7158 800B6958 0B80033C */  lui        $v1, %hi(func_800B6054)
    /* A715C 800B695C 54606324 */  addiu      $v1, $v1, %lo(func_800B6054)
    /* A7160 800B6960 200043AC */  sw         $v1, 0x20($v0)
    /* A7164 800B6964 C801A28E */  lw         $v0, 0x1C8($s5)
    /* A7168 800B6968 00000000 */  nop
    /* A716C 800B696C 240043AC */  sw         $v1, 0x24($v0)
  .L800B6970:
    /* A7170 800B6970 0000A38E */  lw         $v1, 0x0($s5)
    /* A7174 800B6974 0B80023C */  lui        $v0, %hi(func_800B5FE0)
    /* A7178 800B6978 E05F4224 */  addiu      $v0, $v0, %lo(func_800B5FE0)
    /* A717C 800B697C 400062AC */  sw         $v0, 0x40($v1)
    /* A7180 800B6980 0000A38E */  lw         $v1, 0x0($s5)
    /* A7184 800B6984 0B80023C */  lui        $v0, %hi(func_800B5FF0)
    /* A7188 800B6988 F05F4224 */  addiu      $v0, $v0, %lo(func_800B5FF0)
    /* A718C 800B698C 440062AC */  sw         $v0, 0x44($v1)
    /* A7190 800B6990 0000A38E */  lw         $v1, 0x0($s5)
    /* A7194 800B6994 0B80023C */  lui        $v0, %hi(func_800B5FE8)
    /* A7198 800B6998 E85F4224 */  addiu      $v0, $v0, %lo(func_800B5FE8)
    /* A719C 800B699C 3C0062AC */  sw         $v0, 0x3C($v1)
    /* A71A0 800B69A0 0000A38E */  lw         $v1, 0x0($s5)
    /* A71A4 800B69A4 0B80023C */  lui        $v0, %hi(func_800B5FF8)
    /* A71A8 800B69A8 F85F4224 */  addiu      $v0, $v0, %lo(func_800B5FF8)
    /* A71AC 800B69AC 3ADB0208 */  j          .L800B6CE8
    /* A71B0 800B69B0 580062AC */   sw        $v0, 0x58($v1)
  .L800B69B4:
    /* A71B4 800B69B4 E000A88F */  lw         $t0, 0xE0($sp)
    /* A71B8 800B69B8 00000000 */  nop
    /* A71BC 800B69BC 5E000011 */  beqz       $t0, .L800B6B38
    /* A71C0 800B69C0 00000000 */   nop
    /* A71C4 800B69C4 1C00B08E */  lw         $s0, 0x1C($s5)
    /* A71C8 800B69C8 00000000 */  nop
    /* A71CC 800B69CC 80201000 */  sll        $a0, $s0, 2
    /* A71D0 800B69D0 21209000 */  addu       $a0, $a0, $s0
    /* A71D4 800B69D4 C0200400 */  sll        $a0, $a0, 3
    /* A71D8 800B69D8 6D82030C */  jal        __builtin_vec_delete
    /* A71DC 800B69DC 08008424 */   addiu     $a0, $a0, 0x8
    /* A71E0 800B69E0 000050AC */  sw         $s0, 0x0($v0)
    /* A71E4 800B69E4 08005224 */  addiu      $s2, $v0, 0x8
    /* A71E8 800B69E8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A71EC 800B69EC 07000006 */  bltz       $s0, .L800B6A0C
    /* A71F0 800B69F0 21884002 */   addu      $s1, $s2, $zero
    /* A71F4 800B69F4 FFFF1324 */  addiu      $s3, $zero, -0x1
  .L800B69F8:
    /* A71F8 800B69F8 C7D8030C */  jal        func_800F631C
    /* A71FC 800B69FC 21202002 */   addu      $a0, $s1, $zero
    /* A7200 800B6A00 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A7204 800B6A04 FCFF1316 */  bne        $s0, $s3, .L800B69F8
    /* A7208 800B6A08 28003126 */   addiu     $s1, $s1, 0x28
  .L800B6A0C:
    /* A720C 800B6A0C D000B2AF */  sw         $s2, 0xD0($sp)
    /* A7210 800B6A10 B001B2AE */  sw         $s2, 0x1B0($s5)
    /* A7214 800B6A14 D400A88E */  lw         $t0, 0xD4($s5)
    /* A7218 800B6A18 00000000 */  nop
    /* A721C 800B6A1C E800A8AF */  sw         $t0, 0xE8($sp)
    /* A7220 800B6A20 D800A88E */  lw         $t0, 0xD8($s5)
    /* A7224 800B6A24 00000000 */  nop
    /* A7228 800B6A28 F000A8AF */  sw         $t0, 0xF0($sp)
    /* A722C 800B6A2C 21B00000 */  addu       $s6, $zero, $zero
    /* A7230 800B6A30 7001B48E */  lw         $s4, 0x170($s5)
    /* A7234 800B6A34 D800BE27 */  addiu      $fp, $sp, 0xD8
  .L800B6A38:
    /* A7238 800B6A38 AB008012 */  beqz       $s4, .L800B6CE8
    /* A723C 800B6A3C C800D226 */   addiu     $s2, $s6, 0xC8
    /* A7240 800B6A40 80101600 */  sll        $v0, $s6, 2
    /* A7244 800B6A44 21105600 */  addu       $v0, $v0, $s6
    /* A7248 800B6A48 C0B80200 */  sll        $s7, $v0, 3
    /* A724C 800B6A4C B001B08E */  lw         $s0, 0x1B0($s5)
    /* A7250 800B6A50 00000000 */  nop
    /* A7254 800B6A54 2180F002 */  addu       $s0, $s7, $s0
    /* A7258 800B6A58 0000B18E */  lw         $s1, 0x0($s5)
    /* A725C 800B6A5C 00000000 */  nop
    /* A7260 800B6A60 2C003126 */  addiu      $s1, $s1, 0x2C
    /* A7264 800B6A64 0800938E */  lw         $s3, 0x8($s4)
    /* A7268 800B6A68 E800A88F */  lw         $t0, 0xE8($sp)
    /* A726C 800B6A6C 00000000 */  nop
    /* A7270 800B6A70 002C0800 */  sll        $a1, $t0, 16
    /* A7274 800B6A74 F000A88F */  lw         $t0, 0xF0($sp)
    /* A7278 800B6A78 00000000 */  nop
    /* A727C 800B6A7C 00340800 */  sll        $a2, $t0, 16
    /* A7280 800B6A80 21206002 */  addu       $a0, $s3, $zero
    /* A7284 800B6A84 032C0500 */  sra        $a1, $a1, 16
    /* A7288 800B6A88 03340600 */  sra        $a2, $a2, 16
    /* A728C 800B6A8C 8A59020C */  jal        func_80096628
    /* A7290 800B6A90 2138C003 */   addu      $a3, $fp, $zero
    /* A7294 800B6A94 00941200 */  sll        $s2, $s2, 16
    /* A7298 800B6A98 1000BEAF */  sw         $fp, 0x10($sp)
    /* A729C 800B6A9C 21200002 */  addu       $a0, $s0, $zero
    /* A72A0 800B6AA0 21282002 */  addu       $a1, $s1, $zero
    /* A72A4 800B6AA4 02000624 */  addiu      $a2, $zero, 0x2
    /* A72A8 800B6AA8 EFD8030C */  jal        func_800F63BC
    /* A72AC 800B6AAC 033C1200 */   sra       $a3, $s2, 16
    /* A72B0 800B6AB0 200000AE */  sw         $zero, 0x20($s0)
    /* A72B4 800B6AB4 01000224 */  addiu      $v0, $zero, 0x1
    /* A72B8 800B6AB8 260002A6 */  sh         $v0, 0x26($s0)
    /* A72BC 800B6ABC 240000A6 */  sh         $zero, 0x24($s0)
    /* A72C0 800B6AC0 2120C003 */  addu       $a0, $fp, $zero
    /* A72C4 800B6AC4 21280002 */  addu       $a1, $s0, $zero
    /* A72C8 800B6AC8 21306002 */  addu       $a2, $s3, $zero
    /* A72CC 800B6ACC 8E59020C */  jal        func_80096638
    /* A72D0 800B6AD0 01000724 */   addiu     $a3, $zero, 0x1
    /* A72D4 800B6AD4 140002AE */  sw         $v0, 0x14($s0)
    /* A72D8 800B6AD8 00008396 */  lhu        $v1, 0x0($s4)
    /* A72DC 800B6ADC 00000000 */  nop
    /* A72E0 800B6AE0 04006330 */  andi       $v1, $v1, 0x4
    /* A72E4 800B6AE4 B001A28E */  lw         $v0, 0x1B0($s5)
    /* A72E8 800B6AE8 00000000 */  nop
    /* A72EC 800B6AEC 2110E202 */  addu       $v0, $s7, $v0
    /* A72F0 800B6AF0 240043A4 */  sh         $v1, 0x24($v0)
    /* A72F4 800B6AF4 00008296 */  lhu        $v0, 0x0($s4)
    /* A72F8 800B6AF8 00000000 */  nop
    /* A72FC 800B6AFC 01004230 */  andi       $v0, $v0, 0x1
    /* A7300 800B6B00 05004010 */  beqz       $v0, .L800B6B18
    /* A7304 800B6B04 00000000 */   nop
    /* A7308 800B6B08 B001A28E */  lw         $v0, 0x1B0($s5)
    /* A730C 800B6B0C 00000000 */  nop
    /* A7310 800B6B10 2110E202 */  addu       $v0, $s7, $v0
    /* A7314 800B6B14 260040A4 */  sh         $zero, 0x26($v0)
  .L800B6B18:
    /* A7318 800B6B18 9800A28E */  lw         $v0, 0x98($s5)
    /* A731C 800B6B1C F000A88F */  lw         $t0, 0xF0($sp)
    /* A7320 800B6B20 00000000 */  nop
    /* A7324 800B6B24 21400201 */  addu       $t0, $t0, $v0
    /* A7328 800B6B28 F000A8AF */  sw         $t0, 0xF0($sp)
    /* A732C 800B6B2C 0C00948E */  lw         $s4, 0xC($s4)
    /* A7330 800B6B30 8EDA0208 */  j          .L800B6A38
    /* A7334 800B6B34 0100D626 */   addiu     $s6, $s6, 0x1
  .L800B6B38:
    /* A7338 800B6B38 3E82030C */  jal        __builtin_new
    /* A733C 800B6B3C 3C000424 */   addiu     $a0, $zero, 0x3C
    /* A7340 800B6B40 21804000 */  addu       $s0, $v0, $zero
    /* A7344 800B6B44 C7D8030C */  jal        func_800F631C
    /* A7348 800B6B48 21200002 */   addu      $a0, $s0, $zero
    /* A734C 800B6B4C 340000AE */  sw         $zero, 0x34($s0)
    /* A7350 800B6B50 AC01B0AE */  sw         $s0, 0x1AC($s5)
    /* A7354 800B6B54 CC01A28E */  lw         $v0, 0x1CC($s5)
    /* A7358 800B6B58 1680013C */  lui        $at, %hi(D_80158970)
    /* A735C 800B6B5C 708922AC */  sw         $v0, %lo(D_80158970)($at)
    /* A7360 800B6B60 2C00A28E */  lw         $v0, 0x2C($s5)
    /* A7364 800B6B64 00000000 */  nop
    /* A7368 800B6B68 0200401C */  bgtz       $v0, .L800B6B74
    /* A736C 800B6B6C 21204000 */   addu      $a0, $v0, $zero
    /* A7370 800B6B70 01000424 */  addiu      $a0, $zero, 0x1
  .L800B6B74:
    /* A7374 800B6B74 1C00A28E */  lw         $v0, 0x1C($s5)
    /* A7378 800B6B78 00000000 */  nop
    /* A737C 800B6B7C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A7380 800B6B80 2C00A38E */  lw         $v1, 0x2C($s5)
    /* A7384 800B6B84 00000000 */  nop
    /* A7388 800B6B88 21104300 */  addu       $v0, $v0, $v1
    /* A738C 800B6B8C 1A004400 */  div        $zero, $v0, $a0
    /* A7390 800B6B90 02008014 */  bnez       $a0, .L800B6B9C
    /* A7394 800B6B94 00000000 */   nop
    /* A7398 800B6B98 0D000700 */  break      7
  .L800B6B9C:
    /* A739C 800B6B9C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A73A0 800B6BA0 04008114 */  bne        $a0, $at, .L800B6BB4
    /* A73A4 800B6BA4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A73A8 800B6BA8 02004114 */  bne        $v0, $at, .L800B6BB4
    /* A73AC 800B6BAC 00000000 */   nop
    /* A73B0 800B6BB0 0D000600 */  break      6
  .L800B6BB4:
    /* A73B4 800B6BB4 12100000 */  mflo       $v0
    /* A73B8 800B6BB8 9800A38E */  lw         $v1, 0x98($s5)
    /* A73BC 800B6BBC 00000000 */  nop
    /* A73C0 800B6BC0 18004300 */  mult       $v0, $v1
    /* A73C4 800B6BC4 D400A28E */  lw         $v0, 0xD4($s5)
    /* A73C8 800B6BC8 D800A38E */  lw         $v1, 0xD8($s5)
    /* A73CC 800B6BCC FC00A48E */  lw         $a0, 0xFC($s5)
    /* A73D0 800B6BD0 C800A2A7 */  sh         $v0, 0xC8($sp)
    /* A73D4 800B6BD4 CA00A3A7 */  sh         $v1, 0xCA($sp)
    /* A73D8 800B6BD8 21104400 */  addu       $v0, $v0, $a0
    /* A73DC 800B6BDC CC00A2A7 */  sh         $v0, 0xCC($sp)
    /* A73E0 800B6BE0 12400000 */  mflo       $t0
    /* A73E4 800B6BE4 21186800 */  addu       $v1, $v1, $t0
    /* A73E8 800B6BE8 CE00A3A7 */  sh         $v1, 0xCE($sp)
    /* A73EC 800B6BEC AC01B08E */  lw         $s0, 0x1AC($s5)
    /* A73F0 800B6BF0 0000A28E */  lw         $v0, 0x0($s5)
    /* A73F4 800B6BF4 00000000 */  nop
    /* A73F8 800B6BF8 2C005224 */  addiu      $s2, $v0, 0x2C
    /* A73FC 800B6BFC C800B127 */  addiu      $s1, $sp, 0xC8
    /* A7400 800B6C00 2C00B396 */  lhu        $s3, 0x2C($s5)
    /* A7404 800B6C04 1C00B496 */  lhu        $s4, 0x1C($s5)
    /* A7408 800B6C08 3400048E */  lw         $a0, 0x34($s0)
    /* A740C 800B6C0C 00000000 */  nop
    /* A7410 800B6C10 07008010 */  beqz       $a0, .L800B6C30
    /* A7414 800B6C14 2000B627 */   addiu     $s6, $sp, 0x20
    /* A7418 800B6C18 89D6030C */  jal        func_800F5A24
    /* A741C 800B6C1C 00000000 */   nop
    /* A7420 800B6C20 2C000486 */  lh         $a0, 0x2C($s0)
    /* A7424 800B6C24 3400058E */  lw         $a1, 0x34($s0)
    /* A7428 800B6C28 1D5B020C */  jal        func_80096C74
    /* A742C 800B6C2C 00000000 */   nop
  .L800B6C30:
    /* A7430 800B6C30 1000B1AF */  sw         $s1, 0x10($sp)
    /* A7434 800B6C34 21200002 */  addu       $a0, $s0, $zero
    /* A7438 800B6C38 21284002 */  addu       $a1, $s2, $zero
    /* A743C 800B6C3C 03000624 */  addiu      $a2, $zero, 0x3
    /* A7440 800B6C40 EFD8030C */  jal        func_800F63BC
    /* A7444 800B6C44 C8000724 */   addiu     $a3, $zero, 0xC8
    /* A7448 800B6C48 200000AE */  sw         $zero, 0x20($s0)
    /* A744C 800B6C4C 240000AE */  sw         $zero, 0x24($s0)
    /* A7450 800B6C50 280000AE */  sw         $zero, 0x28($s0)
    /* A7454 800B6C54 2C0014A6 */  sh         $s4, 0x2C($s0)
    /* A7458 800B6C58 2E0013A6 */  sh         $s3, 0x2E($s0)
    /* A745C 800B6C5C 300000A6 */  sh         $zero, 0x30($s0)
    /* A7460 800B6C60 00341300 */  sll        $a2, $s3, 16
    /* A7464 800B6C64 00141400 */  sll        $v0, $s4, 16
    /* A7468 800B6C68 03140200 */  sra        $v0, $v0, 16
    /* A746C 800B6C6C 1000A2AF */  sw         $v0, 0x10($sp)
    /* A7470 800B6C70 1400B6AF */  sw         $s6, 0x14($sp)
    /* A7474 800B6C74 01000224 */  addiu      $v0, $zero, 0x1
    /* A7478 800B6C78 1800A2AF */  sw         $v0, 0x18($sp)
    /* A747C 800B6C7C 2C000426 */  addiu      $a0, $s0, 0x2C
    /* A7480 800B6C80 C800A527 */  addiu      $a1, $sp, 0xC8
    /* A7484 800B6C84 03340600 */  sra        $a2, $a2, 16
    /* A7488 800B6C88 B059020C */  jal        func_800966C0
    /* A748C 800B6C8C 21380002 */   addu      $a3, $s0, $zero
    /* A7490 800B6C90 340002AE */  sw         $v0, 0x34($s0)
    /* A7494 800B6C94 7CD6030C */  jal        func_800F59F0
    /* A7498 800B6C98 21204000 */   addu      $a0, $v0, $zero
    /* A749C 800B6C9C 380002AE */  sw         $v0, 0x38($s0)
    /* A74A0 800B6CA0 7001B48E */  lw         $s4, 0x170($s5)
    /* A74A4 800B6CA4 21880000 */  addu       $s1, $zero, $zero
  .L800B6CA8:
    /* A74A8 800B6CA8 0B008012 */  beqz       $s4, .L800B6CD8
    /* A74AC 800B6CAC 00000000 */   nop
    /* A74B0 800B6CB0 6801A28E */  lw         $v0, 0x168($s5)
    /* A74B4 800B6CB4 00000000 */  nop
    /* A74B8 800B6CB8 04008216 */  bne        $s4, $v0, .L800B6CCC
    /* A74BC 800B6CBC 00000000 */   nop
    /* A74C0 800B6CC0 AC01A28E */  lw         $v0, 0x1AC($s5)
    /* A74C4 800B6CC4 00000000 */  nop
    /* A74C8 800B6CC8 300051A4 */  sh         $s1, 0x30($v0)
  .L800B6CCC:
    /* A74CC 800B6CCC 0C00948E */  lw         $s4, 0xC($s4)
    /* A74D0 800B6CD0 2ADB0208 */  j          .L800B6CA8
    /* A74D4 800B6CD4 01003126 */   addiu     $s1, $s1, 0x1
  .L800B6CD8:
    /* A74D8 800B6CD8 AC01A38E */  lw         $v1, 0x1AC($s5)
    /* A74DC 800B6CDC 0B80023C */  lui        $v0, %hi(func_800B47A4)
    /* A74E0 800B6CE0 A4474224 */  addiu      $v0, $v0, %lo(func_800B47A4)
    /* A74E4 800B6CE4 240062AC */  sw         $v0, 0x24($v1)
  .L800B6CE8:
    /* A74E8 800B6CE8 8001A28E */  lw         $v0, 0x180($s5)
    /* A74EC 800B6CEC 00000000 */  nop
    /* A74F0 800B6CF0 50004010 */  beqz       $v0, .L800B6E34
    /* A74F4 800B6CF4 21904000 */   addu      $s2, $v0, $zero
    /* A74F8 800B6CF8 1800B08E */  lw         $s0, 0x18($s5)
    /* A74FC 800B6CFC 00000000 */  nop
    /* A7500 800B6D00 40201000 */  sll        $a0, $s0, 1
    /* A7504 800B6D04 21209000 */  addu       $a0, $a0, $s0
    /* A7508 800B6D08 00210400 */  sll        $a0, $a0, 4
    /* A750C 800B6D0C 6D82030C */  jal        __builtin_vec_delete
    /* A7510 800B6D10 08008424 */   addiu     $a0, $a0, 0x8
    /* A7514 800B6D14 000050AC */  sw         $s0, 0x0($v0)
    /* A7518 800B6D18 08005324 */  addiu      $s3, $v0, 0x8
    /* A751C 800B6D1C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A7520 800B6D20 0B000006 */  bltz       $s0, .L800B6D50
    /* A7524 800B6D24 21886002 */   addu      $s1, $s3, $zero
    /* A7528 800B6D28 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800B6D2C:
    /* A752C 800B6D2C C7D8030C */  jal        func_800F631C
    /* A7530 800B6D30 21202002 */   addu      $a0, $s1, $zero
    /* A7534 800B6D34 200020AE */  sw         $zero, 0x20($s1)
    /* A7538 800B6D38 2C0020AE */  sw         $zero, 0x2C($s1)
    /* A753C 800B6D3C 240020AE */  sw         $zero, 0x24($s1)
    /* A7540 800B6D40 280020A2 */  sb         $zero, 0x28($s1)
    /* A7544 800B6D44 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A7548 800B6D48 F8FF1416 */  bne        $s0, $s4, .L800B6D2C
    /* A754C 800B6D4C 30003126 */   addiu     $s1, $s1, 0x30
  .L800B6D50:
    /* A7550 800B6D50 D000B3AF */  sw         $s3, 0xD0($sp)
    /* A7554 800B6D54 B401B3AE */  sw         $s3, 0x1B4($s5)
    /* A7558 800B6D58 21B00000 */  addu       $s6, $zero, $zero
    /* A755C 800B6D5C 1280113C */  lui        $s1, %hi(D_80120D6C)
    /* A7560 800B6D60 6C0D3126 */  addiu      $s1, $s1, %lo(D_80120D6C)
  .L800B6D64:
    /* A7564 800B6D64 33004012 */  beqz       $s2, .L800B6E34
    /* A7568 800B6D68 00000000 */   nop
    /* A756C 800B6D6C D1C7020C */  jal        func_800B1F44
    /* A7570 800B6D70 2120A002 */   addu      $a0, $s5, $zero
    /* A7574 800B6D74 1800C202 */  mult       $s6, $v0
    /* A7578 800B6D78 F000A696 */  lhu        $a2, 0xF0($s5)
    /* A757C 800B6D7C 12400000 */  mflo       $t0
    /* A7580 800B6D80 2130C800 */  addu       $a2, $a2, $t0
    /* A7584 800B6D84 00340600 */  sll        $a2, $a2, 16
    /* A7588 800B6D88 03340600 */  sra        $a2, $a2, 16
    /* A758C 800B6D8C 0800428E */  lw         $v0, 0x8($s2)
    /* A7590 800B6D90 00000000 */  nop
    /* A7594 800B6D94 40180200 */  sll        $v1, $v0, 1
    /* A7598 800B6D98 21186200 */  addu       $v1, $v1, $v0
    /* A759C 800B6D9C 401C0300 */  sll        $v1, $v1, 17
    /* A75A0 800B6DA0 031C0300 */  sra        $v1, $v1, 16
    /* A75A4 800B6DA4 40801600 */  sll        $s0, $s6, 1
    /* A75A8 800B6DA8 21801602 */  addu       $s0, $s0, $s6
    /* A75AC 800B6DAC 00811000 */  sll        $s0, $s0, 4
    /* A75B0 800B6DB0 B401A48E */  lw         $a0, 0x1B4($s5)
    /* A75B4 800B6DB4 0000A58E */  lw         $a1, 0x0($s5)
    /* A75B8 800B6DB8 EC00A796 */  lhu        $a3, 0xEC($s5)
    /* A75BC 800B6DBC F400A296 */  lhu        $v0, 0xF4($s5)
    /* A75C0 800B6DC0 00000000 */  nop
    /* A75C4 800B6DC4 2138E200 */  addu       $a3, $a3, $v0
    /* A75C8 800B6DC8 003C0700 */  sll        $a3, $a3, 16
    /* A75CC 800B6DCC 1000A6AF */  sw         $a2, 0x10($sp)
    /* A75D0 800B6DD0 1400A3AF */  sw         $v1, 0x14($sp)
    /* A75D4 800B6DD4 1400428E */  lw         $v0, 0x14($s2)
    /* A75D8 800B6DD8 00000000 */  nop
    /* A75DC 800B6DDC 1800A2AF */  sw         $v0, 0x18($sp)
    /* A75E0 800B6DE0 21200402 */  addu       $a0, $s0, $a0
    /* A75E4 800B6DE4 2C00A524 */  addiu      $a1, $a1, 0x2C
    /* A75E8 800B6DE8 14000624 */  addiu      $a2, $zero, 0x14
    /* A75EC 800B6DEC 1FDB030C */  jal        func_800F6C7C
    /* A75F0 800B6DF0 033C0700 */   sra       $a3, $a3, 16
    /* A75F4 800B6DF4 1400458E */  lw         $a1, 0x14($s2)
    /* A75F8 800B6DF8 A587030C */  jal        func_800E1E94
    /* A75FC 800B6DFC 21202002 */   addu      $a0, $s1, $zero
    /* A7600 800B6E00 AD87030C */  jal        func_800E1EB4
    /* A7604 800B6E04 21202002 */   addu      $a0, $s1, $zero
    /* A7608 800B6E08 0A02A2A6 */  sh         $v0, 0x20A($s5)
    /* A760C 800B6E0C B401A28E */  lw         $v0, 0x1B4($s5)
    /* A7610 800B6E10 00000000 */  nop
    /* A7614 800B6E14 21800202 */  addu       $s0, $s0, $v0
    /* A7618 800B6E18 1400048E */  lw         $a0, 0x14($s0)
    /* A761C 800B6E1C 08004586 */  lh         $a1, 0x8($s2)
    /* A7620 800B6E20 215D020C */  jal        func_80097484
    /* A7624 800B6E24 0100D626 */   addiu     $s6, $s6, 0x1
    /* A7628 800B6E28 1800528E */  lw         $s2, 0x18($s2)
    /* A762C 800B6E2C 59DB0208 */  j          .L800B6D64
    /* A7630 800B6E30 00000000 */   nop
  .L800B6E34:
    /* A7634 800B6E34 0000A38E */  lw         $v1, 0x0($s5)
    /* A7638 800B6E38 0B80023C */  lui        $v0, %hi(func_800B4E44)
    /* A763C 800B6E3C 444E4224 */  addiu      $v0, $v0, %lo(func_800B4E44)
    /* A7640 800B6E40 640062AC */  sw         $v0, 0x64($v1)
    /* A7644 800B6E44 0000A38E */  lw         $v1, 0x0($s5)
    /* A7648 800B6E48 0B80023C */  lui        $v0, %hi(func_800B5B40)
    /* A764C 800B6E4C 405B4224 */  addiu      $v0, $v0, %lo(func_800B5B40)
    /* A7650 800B6E50 680062AC */  sw         $v0, 0x68($v1)
    /* A7654 800B6E54 3000A28E */  lw         $v0, 0x30($s5)
    /* A7658 800B6E58 00000000 */  nop
    /* A765C 800B6E5C 00024234 */  ori        $v0, $v0, 0x200
    /* A7660 800B6E60 3000A2AE */  sw         $v0, 0x30($s5)
  .L800B6E64:
    /* A7664 800B6E64 1C01BF8F */  lw         $ra, 0x11C($sp)
    /* A7668 800B6E68 1801BE8F */  lw         $fp, 0x118($sp)
    /* A766C 800B6E6C 1401B78F */  lw         $s7, 0x114($sp)
    /* A7670 800B6E70 1001B68F */  lw         $s6, 0x110($sp)
    /* A7674 800B6E74 0C01B58F */  lw         $s5, 0x10C($sp)
    /* A7678 800B6E78 0801B48F */  lw         $s4, 0x108($sp)
    /* A767C 800B6E7C 0401B38F */  lw         $s3, 0x104($sp)
    /* A7680 800B6E80 0001B28F */  lw         $s2, 0x100($sp)
    /* A7684 800B6E84 FC00B18F */  lw         $s1, 0xFC($sp)
    /* A7688 800B6E88 F800B08F */  lw         $s0, 0xF8($sp)
    /* A768C 800B6E8C 2001BD27 */  addiu      $sp, $sp, 0x120
    /* A7690 800B6E90 0800E003 */  jr         $ra
    /* A7694 800B6E94 00000000 */   nop
endlabel func_800B6434
