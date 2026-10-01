.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8808, 0xFC

glabel func_800A8808
    /* 99008 800A8808 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 9900C 800A880C 6400BFAF */  sw         $ra, 0x64($sp)
    /* 99010 800A8810 6000B0AF */  sw         $s0, 0x60($sp)
    /* 99014 800A8814 1280053C */  lui        $a1, %hi(D_8011F9E8)
    /* 99018 800A8818 E8F9A524 */  addiu      $a1, $a1, %lo(D_8011F9E8)
    /* 9901C 800A881C 9D87030C */  jal        func_800E1E74
    /* 99020 800A8820 21808000 */   addu      $s0, $a0, $zero
    /* 99024 800A8824 32004010 */  beqz       $v0, .L800A88F0
    /* 99028 800A8828 21200002 */   addu      $a0, $s0, $zero
    /* 9902C 800A882C AFF4030C */  jal        func_800FD2BC
    /* 99030 800A8830 1000A527 */   addiu     $a1, $sp, 0x10
    /* 99034 800A8834 00140200 */  sll        $v0, $v0, 16
    /* 99038 800A8838 2D004010 */  beqz       $v0, .L800A88F0
    /* 9903C 800A883C 00000000 */   nop
    /* 99040 800A8840 6008848F */  lw         $a0, %gp_rel(D_80158D38)($gp)
    /* 99044 800A8844 00000000 */  nop
    /* 99048 800A8848 03008010 */  beqz       $a0, .L800A8858
    /* 9904C 800A884C 00000000 */   nop
    /* 99050 800A8850 C6D5030C */  jal        func_800F5718
    /* 99054 800A8854 00000000 */   nop
  .L800A8858:
    /* 99058 800A8858 1280043C */  lui        $a0, %hi(D_8011F9E8)
    /* 9905C 800A885C E8F98424 */  addiu      $a0, $a0, %lo(D_8011F9E8)
    /* 99060 800A8860 A587030C */  jal        func_800E1E94
    /* 99064 800A8864 21280002 */   addu      $a1, $s0, $zero
    /* 99068 800A8868 1C00A48F */  lw         $a0, 0x1C($sp)
    /* 9906C 800A886C 00000000 */  nop
    /* 99070 800A8870 FF078424 */  addiu      $a0, $a0, 0x7FF
    /* 99074 800A8874 00F80224 */  addiu      $v0, $zero, -0x800
    /* 99078 800A8878 FED4030C */  jal        func_800F53F8
    /* 9907C 800A887C 24208200 */   and       $a0, $a0, $v0
    /* 99080 800A8880 600882AF */  sw         $v0, %gp_rel(D_80158D38)($gp)
    /* 99084 800A8884 1A004010 */  beqz       $v0, .L800A88F0
    /* 99088 800A8888 00000000 */   nop
    /* 9908C 800A888C 7CD6030C */  jal        func_800F59F0
    /* 99090 800A8890 21204000 */   addu      $a0, $v0, $zero
    /* 99094 800A8894 21804000 */  addu       $s0, $v0, $zero
    /* 99098 800A8898 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9909C 800A889C 64F6030C */  jal        func_800FD990
    /* 990A0 800A88A0 21280002 */   addu      $a1, $s0, $zero
    /* 990A4 800A88A4 D8F5030C */  jal        func_800FD760
    /* 990A8 800A88A8 1000A427 */   addiu     $a0, $sp, 0x10
    /* 990AC 800A88AC 1680043C */  lui        $a0, %hi(D_80158D38)
    /* 990B0 800A88B0 388D8424 */  addiu      $a0, $a0, %lo(D_80158D38)
    /* 990B4 800A88B4 1C00A58F */  lw         $a1, 0x1C($sp)
    /* 990B8 800A88B8 C8D6030C */  jal        func_800F5B20
    /* 990BC 800A88BC 00000000 */   nop
    /* 990C0 800A88C0 1280023C */  lui        $v0, %hi(D_8011FA98)
    /* 990C4 800A88C4 98FA4224 */  addiu      $v0, $v0, %lo(D_8011FA98)
    /* 990C8 800A88C8 000040AC */  sw         $zero, 0x0($v0)
    /* 990CC 800A88CC 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 990D0 800A88D0 00000000 */  nop
    /* 990D4 800A88D4 0C0043AC */  sw         $v1, 0xC($v0)
    /* 990D8 800A88D8 3C0040AC */  sw         $zero, 0x3C($v0)
    /* 990DC 800A88DC 400050AC */  sw         $s0, 0x40($v0)
    /* 990E0 800A88E0 440040AC */  sw         $zero, 0x44($v0)
    /* 990E4 800A88E4 480040AC */  sw         $zero, 0x48($v0)
    /* 990E8 800A88E8 00010324 */  addiu      $v1, $zero, 0x100
    /* 990EC 800A88EC 380043A4 */  sh         $v1, 0x38($v0)
  .L800A88F0:
    /* 990F0 800A88F0 6400BF8F */  lw         $ra, 0x64($sp)
    /* 990F4 800A88F4 6000B08F */  lw         $s0, 0x60($sp)
    /* 990F8 800A88F8 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 990FC 800A88FC 0800E003 */  jr         $ra
    /* 99100 800A8900 00000000 */   nop
endlabel func_800A8808
