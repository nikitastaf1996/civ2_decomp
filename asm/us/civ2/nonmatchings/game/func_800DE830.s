.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE830, 0x64

glabel func_800DE830
    /* CF030 800DE830 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CF034 800DE834 97028228 */  slti       $v0, $a0, 0x297
    /* CF038 800DE838 12004014 */  bnez       $v0, .L800DE884
    /* CF03C 800DE83C 1000BFAF */   sw        $ra, 0x10($sp)
    /* CF040 800DE840 B8028228 */  slti       $v0, $a0, 0x2B8
    /* CF044 800DE844 0A004010 */  beqz       $v0, .L800DE870
    /* CF048 800DE848 69FD8224 */   addiu     $v0, $a0, -0x297
    /* CF04C 800DE84C 80100200 */  sll        $v0, $v0, 2
    /* CF050 800DE850 1680013C */  lui        $at, %hi(D_801592E4)
    /* CF054 800DE854 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* CF058 800DE858 7C0D828F */  lw         $v0, %gp_rel(D_80159254)($gp)
    /* CF05C 800DE85C 00000000 */  nop
    /* CF060 800DE860 4806448C */  lw         $a0, 0x648($v0)
    /* CF064 800DE864 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* CF068 800DE868 9911040C */  jal        func_80104664
    /* CF06C 800DE86C FFFF0624 */   addiu     $a2, $zero, -0x1
  .L800DE870:
    /* CF070 800DE870 7C0D828F */  lw         $v0, %gp_rel(D_80159254)($gp)
    /* CF074 800DE874 00000000 */  nop
    /* CF078 800DE878 4806448C */  lw         $a0, 0x648($v0)
    /* CF07C 800DE87C 7D11040C */  jal        func_801045F4
    /* CF080 800DE880 00000000 */   nop
  .L800DE884:
    /* CF084 800DE884 1000BF8F */  lw         $ra, 0x10($sp)
    /* CF088 800DE888 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CF08C 800DE88C 0800E003 */  jr         $ra
    /* CF090 800DE890 00000000 */   nop
endlabel func_800DE830
