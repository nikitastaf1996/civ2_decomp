.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B47B4, 0x10C

glabel func_800B47B4
    /* A4FB4 800B47B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A4FB8 800B47B8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A4FBC 800B47BC 1800B0AF */  sw         $s0, 0x18($sp)
    /* A4FC0 800B47C0 D4FE8424 */  addiu      $a0, $a0, -0x12C
    /* A4FC4 800B47C4 21388000 */  addu       $a3, $a0, $zero
    /* A4FC8 800B47C8 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A4FCC 800B47CC 00000000 */  nop
    /* A4FD0 800B47D0 7C01458C */  lw         $a1, 0x17C($v0)
    /* A4FD4 800B47D4 21180000 */  addu       $v1, $zero, $zero
    /* A4FD8 800B47D8 00240400 */  sll        $a0, $a0, 16
    /* A4FDC 800B47DC 08008018 */  blez       $a0, .L800B4800
    /* A4FE0 800B47E0 21300000 */   addu      $a2, $zero, $zero
    /* A4FE4 800B47E4 00140700 */  sll        $v0, $a3, 16
    /* A4FE8 800B47E8 03240200 */  sra        $a0, $v0, 16
  .L800B47EC:
    /* A4FEC 800B47EC 1000A58C */  lw         $a1, 0x10($a1)
    /* A4FF0 800B47F0 01006324 */  addiu      $v1, $v1, 0x1
    /* A4FF4 800B47F4 2A106400 */  slt        $v0, $v1, $a0
    /* A4FF8 800B47F8 FCFF4014 */  bnez       $v0, .L800B47EC
    /* A4FFC 800B47FC 00000000 */   nop
  .L800B4800:
    /* A5000 800B4800 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A5004 800B4804 0000A28C */  lw         $v0, 0x0($a1)
    /* A5008 800B4808 00000000 */  nop
    /* A500C 800B480C BC0062AC */  sw         $v0, 0xBC($v1)
    /* A5010 800B4810 6C01628C */  lw         $v0, 0x16C($v1)
    /* A5014 800B4814 00000000 */  nop
    /* A5018 800B4818 08004510 */  beq        $v0, $a1, .L800B483C
    /* A501C 800B481C 00000000 */   nop
    /* A5020 800B4820 6C0165AC */  sw         $a1, 0x16C($v1)
    /* A5024 800B4824 3000628C */  lw         $v0, 0x30($v1)
    /* A5028 800B4828 0200033C */  lui        $v1, (0x20000 >> 16)
    /* A502C 800B482C 24104300 */  and        $v0, $v0, $v1
    /* A5030 800B4830 02004010 */  beqz       $v0, .L800B483C
    /* A5034 800B4834 00000000 */   nop
    /* A5038 800B4838 01000624 */  addiu      $a2, $zero, 0x1
  .L800B483C:
    /* A503C 800B483C 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A5040 800B4840 00000000 */  nop
    /* A5044 800B4844 8401428C */  lw         $v0, 0x184($v0)
    /* A5048 800B4848 00000000 */  nop
    /* A504C 800B484C 12004010 */  beqz       $v0, .L800B4898
    /* A5050 800B4850 00000000 */   nop
    /* A5054 800B4854 0000A48C */  lw         $a0, 0x0($a1)
    /* A5058 800B4858 09F84000 */  jalr       $v0
    /* A505C 800B485C 00000000 */   nop
    /* A5060 800B4860 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A5064 800B4864 A8DB020C */  jal        func_800B6EA0
    /* A5068 800B4868 21804000 */   addu      $s0, $v0, $zero
    /* A506C 800B486C 0F000012 */  beqz       $s0, .L800B48AC
    /* A5070 800B4870 00000000 */   nop
    /* A5074 800B4874 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A5078 800B4878 00000000 */  nop
    /* A507C 800B487C 3000628C */  lw         $v0, 0x30($v1)
    /* A5080 800B4880 00000000 */  nop
    /* A5084 800B4884 00204234 */  ori        $v0, $v0, 0x2000
    /* A5088 800B4888 DAD1020C */  jal        func_800B4768
    /* A508C 800B488C 300062AC */   sw        $v0, 0x30($v1)
    /* A5090 800B4890 2BD20208 */  j          .L800B48AC
    /* A5094 800B4894 00000000 */   nop
  .L800B4898:
    /* A5098 800B4898 0400C010 */  beqz       $a2, .L800B48AC
    /* A509C 800B489C 00000000 */   nop
    /* A50A0 800B48A0 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A50A4 800B48A4 A8DB020C */  jal        func_800B6EA0
    /* A50A8 800B48A8 00000000 */   nop
  .L800B48AC:
    /* A50AC 800B48AC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A50B0 800B48B0 1800B08F */  lw         $s0, 0x18($sp)
    /* A50B4 800B48B4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A50B8 800B48B8 0800E003 */  jr         $ra
    /* A50BC 800B48BC 00000000 */   nop
endlabel func_800B47B4
