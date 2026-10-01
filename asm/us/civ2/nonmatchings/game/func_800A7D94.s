.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A7D94, 0x124

glabel func_800A7D94
    /* 98594 800A7D94 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 98598 800A7D98 2800BFAF */  sw         $ra, 0x28($sp)
    /* 9859C 800A7D9C 2408828F */  lw         $v0, %gp_rel(D_80158CFC)($gp)
    /* 985A0 800A7DA0 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 985A4 800A7DA4 40004310 */  beq        $v0, $v1, .L800A7EA8
    /* 985A8 800A7DA8 00000000 */   nop
    /* 985AC 800A7DAC 00088487 */  lh         $a0, %gp_rel(D_80158CD8)($gp)
    /* 985B0 800A7DB0 00000000 */  nop
    /* 985B4 800A7DB4 06008310 */  beq        $a0, $v1, .L800A7DD0
    /* 985B8 800A7DB8 00000000 */   nop
    /* 985BC 800A7DBC D1D0030C */  jal        SsVabClose
    /* 985C0 800A7DC0 00000000 */   nop
    /* 985C4 800A7DC4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 985C8 800A7DC8 020882A7 */  sh         $v0, %gp_rel(D_80158CDA)($gp)
    /* 985CC 800A7DCC 000882A7 */  sh         $v0, %gp_rel(D_80158CD8)($gp)
  .L800A7DD0:
    /* 985D0 800A7DD0 0408848F */  lw         $a0, %gp_rel(D_80158CDC)($gp)
    /* 985D4 800A7DD4 00000000 */  nop
    /* 985D8 800A7DD8 07008010 */  beqz       $a0, .L800A7DF8
    /* 985DC 800A7DDC 00000000 */   nop
    /* 985E0 800A7DE0 89D6030C */  jal        func_800F5A24
    /* 985E4 800A7DE4 00000000 */   nop
    /* 985E8 800A7DE8 0408848F */  lw         $a0, %gp_rel(D_80158CDC)($gp)
    /* 985EC 800A7DEC C6D5030C */  jal        func_800F5718
    /* 985F0 800A7DF0 00000000 */   nop
    /* 985F4 800A7DF4 040880AF */  sw         $zero, %gp_rel(D_80158CDC)($gp)
  .L800A7DF8:
    /* 985F8 800A7DF8 2A088487 */  lh         $a0, %gp_rel(D_80158D02)($gp)
    /* 985FC 800A7DFC 21280000 */  addu       $a1, $zero, $zero
    /* 98600 800A7E00 F9BC030C */  jal        SsSeqSetVol
    /* 98604 800A7E04 21300000 */   addu      $a2, $zero, $zero
    /* 98608 800A7E08 2A088487 */  lh         $a0, %gp_rel(D_80158D02)($gp)
    /* 9860C 800A7E0C 45BC030C */  jal        SsSeqStop
    /* 98610 800A7E10 00000000 */   nop
    /* 98614 800A7E14 2A088487 */  lh         $a0, %gp_rel(D_80158D02)($gp)
    /* 98618 800A7E18 DCAA030C */  jal        SsSeqClose
    /* 9861C 800A7E1C 00000000 */   nop
    /* 98620 800A7E20 CDBD030C */  jal        SsUtAllKeyOff
    /* 98624 800A7E24 21200000 */   addu      $a0, $zero, $zero
    /* 98628 800A7E28 21200000 */  addu       $a0, $zero, $zero
    /* 9862C 800A7E2C FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* 98630 800A7E30 B5A9030C */  jal        SpuSetKey
    /* 98634 800A7E34 FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* 98638 800A7E38 1280043C */  lui        $a0, %hi(D_8011F9D8)
    /* 9863C 800A7E3C D8F98424 */  addiu      $a0, $a0, %lo(D_8011F9D8)
    /* 98640 800A7E40 00010224 */  addiu      $v0, $zero, 0x100
    /* 98644 800A7E44 000082AC */  sw         $v0, 0x0($a0)
    /* 98648 800A7E48 040080A4 */  sh         $zero, 0x4($a0)
    /* 9864C 800A7E4C 060080A4 */  sh         $zero, 0x6($a0)
    /* 98650 800A7E50 2DA6030C */  jal        SpuSetReverbModeParam
    /* 98654 800A7E54 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* 98658 800A7E58 28088487 */  lh         $a0, %gp_rel(D_80158D00)($gp)
    /* 9865C 800A7E5C D1D0030C */  jal        SsVabClose
    /* 98660 800A7E60 00000000 */   nop
    /* 98664 800A7E64 E1C1030C */  jal        SsUtReverbOff
    /* 98668 800A7E68 00000000 */   nop
    /* 9866C 800A7E6C 71C1030C */  jal        SsUtSetReverbType
    /* 98670 800A7E70 21200000 */   addu      $a0, $zero, $zero
    /* 98674 800A7E74 21200000 */  addu       $a0, $zero, $zero
    /* 98678 800A7E78 4DC1030C */  jal        SsUtSetReverbDepth
    /* 9867C 800A7E7C 21280000 */   addu      $a1, $zero, $zero
    /* 98680 800A7E80 4C08848F */  lw         $a0, %gp_rel(D_80158D24)($gp)
    /* 98684 800A7E84 C6D5030C */  jal        func_800F5718
    /* 98688 800A7E88 00000000 */   nop
    /* 9868C 800A7E8C 5008848F */  lw         $a0, %gp_rel(D_80158D28)($gp)
    /* 98690 800A7E90 C6D5030C */  jal        func_800F5718
    /* 98694 800A7E94 00000000 */   nop
    /* 98698 800A7E98 500880AF */  sw         $zero, %gp_rel(D_80158D28)($gp)
    /* 9869C 800A7E9C 4C0880AF */  sw         $zero, %gp_rel(D_80158D24)($gp)
    /* 986A0 800A7EA0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 986A4 800A7EA4 240882AF */  sw         $v0, %gp_rel(D_80158CFC)($gp)
  .L800A7EA8:
    /* 986A8 800A7EA8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 986AC 800A7EAC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 986B0 800A7EB0 0800E003 */  jr         $ra
    /* 986B4 800A7EB4 00000000 */   nop
endlabel func_800A7D94
