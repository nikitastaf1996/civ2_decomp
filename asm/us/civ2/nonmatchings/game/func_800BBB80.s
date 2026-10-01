.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BBB80, 0x168

glabel func_800BBB80
    /* AC380 800BBB80 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AC384 800BBB84 00240400 */  sll        $a0, $a0, 16
    /* AC388 800BBB88 03240400 */  sra        $a0, $a0, 16
    /* AC38C 800BBB8C A8000224 */  addiu      $v0, $zero, 0xA8
    /* AC390 800BBB90 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* AC394 800BBB94 1800B2AF */  sw         $s2, 0x18($sp)
    /* AC398 800BBB98 1400B1AF */  sw         $s1, 0x14($sp)
    /* AC39C 800BBB9C 0F008210 */  beq        $a0, $v0, .L800BBBDC
    /* AC3A0 800BBBA0 1000B0AF */   sw        $s0, 0x10($sp)
    /* AC3A4 800BBBA4 A9008228 */  slti       $v0, $a0, 0xA9
    /* AC3A8 800BBBA8 05004010 */  beqz       $v0, .L800BBBC0
    /* AC3AC 800BBBAC A2000224 */   addiu     $v0, $zero, 0xA2
    /* AC3B0 800BBBB0 22008210 */  beq        $a0, $v0, .L800BBC3C
    /* AC3B4 800BBBB4 00000000 */   nop
    /* AC3B8 800BBBB8 33EF0208 */  j          .L800BBCCC
    /* AC3BC 800BBBBC 00000000 */   nop
  .L800BBBC0:
    /* AC3C0 800BBBC0 D0000224 */  addiu      $v0, $zero, 0xD0
    /* AC3C4 800BBBC4 38008210 */  beq        $a0, $v0, .L800BBCA8
    /* AC3C8 800BBBC8 D2000224 */   addiu     $v0, $zero, 0xD2
    /* AC3CC 800BBBCC 37008210 */  beq        $a0, $v0, .L800BBCAC
    /* AC3D0 800BBBD0 68000424 */   addiu     $a0, $zero, 0x68
    /* AC3D4 800BBBD4 33EF0208 */  j          .L800BBCCC
    /* AC3D8 800BBBD8 00000000 */   nop
  .L800BBBDC:
    /* AC3DC 800BBBDC 1280123C */  lui        $s2, %hi(D_801210C8)
    /* AC3E0 800BBBE0 C8105226 */  addiu      $s2, $s2, %lo(D_801210C8)
    /* AC3E4 800BBBE4 0000428E */  lw         $v0, 0x0($s2)
    /* AC3E8 800BBBE8 00000000 */  nop
    /* AC3EC 800BBBEC 37004018 */  blez       $v0, .L800BBCCC
    /* AC3F0 800BBBF0 5E000424 */   addiu     $a0, $zero, 0x5E
    /* AC3F4 800BBBF4 21280000 */  addu       $a1, $zero, $zero
    /* AC3F8 800BBBF8 21300000 */  addu       $a2, $zero, $zero
    /* AC3FC 800BBBFC 2B9D020C */  jal        func_800A74AC
    /* AC400 800BBC00 21380000 */   addu      $a3, $zero, $zero
    /* AC404 800BBC04 21880000 */  addu       $s1, $zero, $zero
    /* AC408 800BBC08 0000428E */  lw         $v0, 0x0($s2)
    /* AC40C 800BBC0C 44005026 */  addiu      $s0, $s2, 0x44
    /* AC410 800BBC10 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AC414 800BBC14 000042AE */  sw         $v0, 0x0($s2)
  .L800BBC18:
    /* AC418 800BBC18 0000048E */  lw         $a0, 0x0($s0)
    /* AC41C 800BBC1C E511040C */  jal        func_80104794
    /* AC420 800BBC20 01003126 */   addiu     $s1, $s1, 0x1
    /* AC424 800BBC24 000000AE */  sw         $zero, 0x0($s0)
    /* AC428 800BBC28 0400222A */  slti       $v0, $s1, 0x4
    /* AC42C 800BBC2C FAFF4014 */  bnez       $v0, .L800BBC18
    /* AC430 800BBC30 04001026 */   addiu     $s0, $s0, 0x4
    /* AC434 800BBC34 33EF0208 */  j          .L800BBCCC
    /* AC438 800BBC38 00000000 */   nop
  .L800BBC3C:
    /* AC43C 800BBC3C 1280123C */  lui        $s2, %hi(D_801210C8)
    /* AC440 800BBC40 C8105226 */  addiu      $s2, $s2, %lo(D_801210C8)
    /* AC444 800BBC44 0000428E */  lw         $v0, 0x0($s2)
    /* AC448 800BBC48 1280033C */  lui        $v1, %hi(D_80121136)
    /* AC44C 800BBC4C 36116384 */  lh         $v1, %lo(D_80121136)($v1)
    /* AC450 800BBC50 06004224 */  addiu      $v0, $v0, 0x6
    /* AC454 800BBC54 2A104300 */  slt        $v0, $v0, $v1
    /* AC458 800BBC58 1C004010 */  beqz       $v0, .L800BBCCC
    /* AC45C 800BBC5C 5E000424 */   addiu     $a0, $zero, 0x5E
    /* AC460 800BBC60 21280000 */  addu       $a1, $zero, $zero
    /* AC464 800BBC64 21300000 */  addu       $a2, $zero, $zero
    /* AC468 800BBC68 2B9D020C */  jal        func_800A74AC
    /* AC46C 800BBC6C 21380000 */   addu      $a3, $zero, $zero
    /* AC470 800BBC70 21880000 */  addu       $s1, $zero, $zero
    /* AC474 800BBC74 0000428E */  lw         $v0, 0x0($s2)
    /* AC478 800BBC78 44005026 */  addiu      $s0, $s2, 0x44
    /* AC47C 800BBC7C 01004224 */  addiu      $v0, $v0, 0x1
    /* AC480 800BBC80 000042AE */  sw         $v0, 0x0($s2)
  .L800BBC84:
    /* AC484 800BBC84 0000048E */  lw         $a0, 0x0($s0)
    /* AC488 800BBC88 E511040C */  jal        func_80104794
    /* AC48C 800BBC8C 01003126 */   addiu     $s1, $s1, 0x1
    /* AC490 800BBC90 000000AE */  sw         $zero, 0x0($s0)
    /* AC494 800BBC94 0400222A */  slti       $v0, $s1, 0x4
    /* AC498 800BBC98 FAFF4014 */  bnez       $v0, .L800BBC84
    /* AC49C 800BBC9C 04001026 */   addiu     $s0, $s0, 0x4
    /* AC4A0 800BBCA0 33EF0208 */  j          .L800BBCCC
    /* AC4A4 800BBCA4 00000000 */   nop
  .L800BBCA8:
    /* AC4A8 800BBCA8 68000424 */  addiu      $a0, $zero, 0x68
  .L800BBCAC:
    /* AC4AC 800BBCAC 21280000 */  addu       $a1, $zero, $zero
    /* AC4B0 800BBCB0 21300000 */  addu       $a2, $zero, $zero
    /* AC4B4 800BBCB4 2B9D020C */  jal        func_800A74AC
    /* AC4B8 800BBCB8 21380000 */   addu      $a3, $zero, $zero
    /* AC4BC 800BBCBC 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AC4C0 800BBCC0 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AC4C4 800BBCC4 29E5020C */  jal        func_800B94A4
    /* AC4C8 800BBCC8 00000000 */   nop
  .L800BBCCC:
    /* AC4CC 800BBCCC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AC4D0 800BBCD0 1800B28F */  lw         $s2, 0x18($sp)
    /* AC4D4 800BBCD4 1400B18F */  lw         $s1, 0x14($sp)
    /* AC4D8 800BBCD8 1000B08F */  lw         $s0, 0x10($sp)
    /* AC4DC 800BBCDC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AC4E0 800BBCE0 0800E003 */  jr         $ra
    /* AC4E4 800BBCE4 00000000 */   nop
endlabel func_800BBB80
