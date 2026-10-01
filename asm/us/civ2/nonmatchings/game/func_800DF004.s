.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF004, 0xD8

glabel func_800DF004
    /* CF804 800DF004 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CF808 800DF008 2800BFAF */  sw         $ra, 0x28($sp)
    /* CF80C 800DF00C 2400B1AF */  sw         $s1, 0x24($sp)
    /* CF810 800DF010 2000B0AF */  sw         $s0, 0x20($sp)
    /* CF814 800DF014 1680013C */  lui        $at, %hi(D_80158872)
    /* CF818 800DF018 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* CF81C 800DF01C 659F020C */  jal        func_800A7D94
    /* CF820 800DF020 21888000 */   addu      $s1, $a0, $zero
    /* CF824 800DF024 3E82030C */  jal        __builtin_new
    /* CF828 800DF028 E0030424 */   addiu     $a0, $zero, 0x3E0
    /* CF82C 800DF02C 377C030C */  jal        func_800DF0DC
    /* CF830 800DF030 21204000 */   addu      $a0, $v0, $zero
    /* CF834 800DF034 21804000 */  addu       $s0, $v0, $zero
    /* CF838 800DF038 002C1100 */  sll        $a1, $s1, 16
    /* CF83C 800DF03C 21200002 */  addu       $a0, $s0, $zero
    /* CF840 800DF040 8F7C030C */  jal        func_800DF23C
    /* CF844 800DF044 032C0500 */   sra       $a1, $a1, 16
    /* CF848 800DF048 D47C030C */  jal        func_800DF350
    /* CF84C 800DF04C 21200002 */   addu      $a0, $s0, $zero
    /* CF850 800DF050 03000012 */  beqz       $s0, .L800DF060
    /* CF854 800DF054 21200002 */   addu      $a0, $s0, $zero
    /* CF858 800DF058 767C030C */  jal        func_800DF1D8
    /* CF85C 800DF05C 03000524 */   addiu     $a1, $zero, 0x3
  .L800DF060:
    /* CF860 800DF060 AE9F020C */  jal        func_800A7EB8
    /* CF864 800DF064 00000000 */   nop
    /* CF868 800DF068 1680023C */  lui        $v0, %hi(D_8015887C)
    /* CF86C 800DF06C 7C88428C */  lw         $v0, %lo(D_8015887C)($v0)
    /* CF870 800DF070 00000000 */  nop
    /* CF874 800DF074 03004010 */  beqz       $v0, .L800DF084
    /* CF878 800DF078 03080424 */   addiu     $a0, $zero, 0x803
    /* CF87C 800DF07C 149C020C */  jal        func_800A7050
    /* CF880 800DF080 27002526 */   addiu     $a1, $s1, 0x27
  .L800DF084:
    /* CF884 800DF084 16000224 */  addiu      $v0, $zero, 0x16
    /* CF888 800DF088 1800A2A7 */  sh         $v0, 0x18($sp)
    /* CF88C 800DF08C 10000224 */  addiu      $v0, $zero, 0x10
    /* CF890 800DF090 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* CF894 800DF094 26010224 */  addiu      $v0, $zero, 0x126
    /* CF898 800DF098 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* CF89C 800DF09C E0000224 */  addiu      $v0, $zero, 0xE0
    /* CF8A0 800DF0A0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* CF8A4 800DF0A4 1000A0AF */  sw         $zero, 0x10($sp)
    /* CF8A8 800DF0A8 1800A427 */  addiu      $a0, $sp, 0x18
    /* CF8AC 800DF0AC A0000524 */  addiu      $a1, $zero, 0xA0
    /* CF8B0 800DF0B0 78000624 */  addiu      $a2, $zero, 0x78
    /* CF8B4 800DF0B4 011D040C */  jal        func_80107404
    /* CF8B8 800DF0B8 401F0724 */   addiu     $a3, $zero, 0x1F40
    /* CF8BC 800DF0BC B31E040C */  jal        func_80107ACC
    /* CF8C0 800DF0C0 00000000 */   nop
    /* CF8C4 800DF0C4 2800BF8F */  lw         $ra, 0x28($sp)
    /* CF8C8 800DF0C8 2400B18F */  lw         $s1, 0x24($sp)
    /* CF8CC 800DF0CC 2000B08F */  lw         $s0, 0x20($sp)
    /* CF8D0 800DF0D0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* CF8D4 800DF0D4 0800E003 */  jr         $ra
    /* CF8D8 800DF0D8 00000000 */   nop
endlabel func_800DF004
