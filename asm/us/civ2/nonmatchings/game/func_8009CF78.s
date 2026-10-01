.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009CF78, 0x154

glabel func_8009CF78
    /* 8D778 8009CF78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8D77C 8009CF7C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8D780 8009CF80 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8D784 8009CF84 1680023C */  lui        $v0, %hi(D_80158678)
    /* 8D788 8009CF88 7886428C */  lw         $v0, %lo(D_80158678)($v0)
    /* 8D78C 8009CF8C 00000000 */  nop
    /* 8D790 8009CF90 3A004010 */  beqz       $v0, .L8009D07C
    /* 8D794 8009CF94 21808000 */   addu      $s0, $a0, $zero
    /* 8D798 8009CF98 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 8D79C 8009CF9C BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 8D7A0 8009CFA0 00000000 */  nop
    /* 8D7A4 8009CFA4 25004014 */  bnez       $v0, .L8009D03C
    /* 8D7A8 8009CFA8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8D7AC 8009CFAC 1680023C */  lui        $v0, %hi(D_80158874)
    /* 8D7B0 8009CFB0 74884290 */  lbu        $v0, %lo(D_80158874)($v0)
    /* 8D7B4 8009CFB4 00000000 */  nop
    /* 8D7B8 8009CFB8 20004010 */  beqz       $v0, .L8009D03C
    /* 8D7BC 8009CFBC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8D7C0 8009CFC0 1680023C */  lui        $v0, %hi(D_80158872)
    /* 8D7C4 8009CFC4 72884290 */  lbu        $v0, %lo(D_80158872)($v0)
    /* 8D7C8 8009CFC8 00000000 */  nop
    /* 8D7CC 8009CFCC 1B004010 */  beqz       $v0, .L8009D03C
    /* 8D7D0 8009CFD0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8D7D4 8009CFD4 28020286 */  lh         $v0, 0x228($s0)
    /* 8D7D8 8009CFD8 00000000 */  nop
    /* 8D7DC 8009CFDC 17004014 */  bnez       $v0, .L8009D03C
    /* 8D7E0 8009CFE0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8D7E4 8009CFE4 1680053C */  lui        $a1, %hi(D_80158886)
    /* 8D7E8 8009CFE8 8688A584 */  lh         $a1, %lo(D_80158886)($a1)
    /* 8D7EC 8009CFEC 1680063C */  lui        $a2, %hi(D_80158888)
    /* 8D7F0 8009CFF0 8888C684 */  lh         $a2, %lo(D_80158888)($a2)
    /* 8D7F4 8009CFF4 796C020C */  jal        func_8009B1E4
    /* 8D7F8 8009CFF8 00000000 */   nop
    /* 8D7FC 8009CFFC 2E004010 */  beqz       $v0, .L8009D0B8
    /* 8D800 8009D000 00000000 */   nop
    /* 8D804 8009D004 1680073C */  lui        $a3, %hi(D_80158886)
    /* 8D808 8009D008 8688E784 */  lh         $a3, %lo(D_80158886)($a3)
    /* 8D80C 8009D00C 1680023C */  lui        $v0, %hi(D_80158888)
    /* 8D810 8009D010 88884284 */  lh         $v0, %lo(D_80158888)($v0)
    /* 8D814 8009D014 00000000 */  nop
    /* 8D818 8009D018 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D81C 8009D01C 1680053C */  lui        $a1, %hi(D_801589FC)
    /* 8D820 8009D020 FC89A524 */  addiu      $a1, $a1, %lo(D_801589FC)
    /* 8D824 8009D024 1680063C */  lui        $a2, %hi(D_80158A00)
    /* 8D828 8009D028 008AC624 */  addiu      $a2, $a2, %lo(D_80158A00)
    /* 8D82C 8009D02C 0A66020C */  jal        func_80099828
    /* 8D830 8009D030 21200002 */   addu      $a0, $s0, $zero
    /* 8D834 8009D034 2E740208 */  j          .L8009D0B8
    /* 8D838 8009D038 00000000 */   nop
  .L8009D03C:
    /* 8D83C 8009D03C 240582AF */  sw         $v0, %gp_rel(D_801589FC)($gp)
    /* 8D840 8009D040 1280043C */  lui        $a0, %hi(D_8011ACBC)
    /* 8D844 8009D044 BCAC8424 */  addiu      $a0, $a0, %lo(D_8011ACBC)
    /* 8D848 8009D048 0000838C */  lw         $v1, 0x0($a0)
    /* 8D84C 8009D04C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8D850 8009D050 19006214 */  bne        $v1, $v0, .L8009D0B8
    /* 8D854 8009D054 00000000 */   nop
    /* 8D858 8009D058 1680053C */  lui        $a1, %hi(D_80158886)
    /* 8D85C 8009D05C 8688A584 */  lh         $a1, %lo(D_80158886)($a1)
    /* 8D860 8009D060 1680063C */  lui        $a2, %hi(D_80158888)
    /* 8D864 8009D064 8888C684 */  lh         $a2, %lo(D_80158888)($a2)
    /* 8D868 8009D068 F8FF828C */  lw         $v0, -0x8($a0)
    /* 8D86C 8009D06C 00000000 */  nop
    /* 8D870 8009D070 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D874 8009D074 2B740208 */  j          .L8009D0AC
    /* 8D878 8009D078 1400A3AF */   sw        $v1, 0x14($sp)
  .L8009D07C:
    /* 8D87C 8009D07C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8D880 8009D080 240582AF */  sw         $v0, %gp_rel(D_801589FC)($gp)
    /* 8D884 8009D084 1680053C */  lui        $a1, %hi(D_80158886)
    /* 8D888 8009D088 8688A584 */  lh         $a1, %lo(D_80158886)($a1)
    /* 8D88C 8009D08C 1680063C */  lui        $a2, %hi(D_80158888)
    /* 8D890 8009D090 8888C684 */  lh         $a2, %lo(D_80158888)($a2)
    /* 8D894 8009D094 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 8D898 8009D098 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 8D89C 8009D09C 00000000 */  nop
    /* 8D8A0 8009D0A0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D8A4 8009D0A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 8D8A8 8009D0A8 1400A2AF */  sw         $v0, 0x14($sp)
  .L8009D0AC:
    /* 8D8AC 8009D0AC 21200002 */  addu       $a0, $s0, $zero
    /* 8D8B0 8009D0B0 8F6E020C */  jal        func_8009BA3C
    /* 8D8B4 8009D0B4 21380000 */   addu      $a3, $zero, $zero
  .L8009D0B8:
    /* 8D8B8 8009D0B8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8D8BC 8009D0BC 1800B08F */  lw         $s0, 0x18($sp)
    /* 8D8C0 8009D0C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8D8C4 8009D0C4 0800E003 */  jr         $ra
    /* 8D8C8 8009D0C8 00000000 */   nop
endlabel func_8009CF78
