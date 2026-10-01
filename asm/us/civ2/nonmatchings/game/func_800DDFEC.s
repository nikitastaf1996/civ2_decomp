.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DDFEC, 0xA4

glabel func_800DDFEC
    /* CE7EC 800DDFEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE7F0 800DDFF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* CE7F4 800DDFF4 1000B0AF */  sw         $s0, 0x10($sp)
    /* CE7F8 800DDFF8 21808000 */  addu       $s0, $a0, $zero
    /* CE7FC 800DDFFC 05000106 */  bgez       $s0, .L800DE014
    /* CE800 800DE000 00000000 */   nop
    /* CE804 800DE004 277A030C */  jal        func_800DE89C
    /* CE808 800DE008 00000000 */   nop
    /* CE80C 800DE00C 1F780308 */  j          .L800DE07C
    /* CE810 800DE010 00000000 */   nop
  .L800DE014:
    /* CE814 800DE014 659F020C */  jal        func_800A7D94
    /* CE818 800DE018 00000000 */   nop
    /* CE81C 800DE01C 3E82030C */  jal        __builtin_new
    /* CE820 800DE020 4C060424 */   addiu     $a0, $zero, 0x64C
    /* CE824 800DE024 2478030C */  jal        func_800DE090
    /* CE828 800DE028 21204000 */   addu      $a0, $v0, $zero
    /* CE82C 800DE02C 7C0D82AF */  sw         $v0, %gp_rel(D_80159254)($gp)
    /* CE830 800DE030 12004010 */  beqz       $v0, .L800DE07C
    /* CE834 800DE034 00000000 */   nop
    /* CE838 800DE038 1680013C */  lui        $at, %hi(D_801593EC)
    /* CE83C 800DE03C EC9320A4 */  sh         $zero, %lo(D_801593EC)($at)
    /* CE840 800DE040 100250AC */  sw         $s0, 0x210($v0)
    /* CE844 800DE044 A178030C */  jal        func_800DE284
    /* CE848 800DE048 21204000 */   addu      $a0, $v0, $zero
    /* CE84C 800DE04C 01000224 */  addiu      $v0, $zero, 0x1
    /* CE850 800DE050 1680013C */  lui        $at, %hi(D_801593EC)
    /* CE854 800DE054 EC9322A4 */  sh         $v0, %lo(D_801593EC)($at)
    /* CE858 800DE058 7C0D848F */  lw         $a0, %gp_rel(D_80159254)($gp)
    /* CE85C 800DE05C 00000000 */  nop
    /* CE860 800DE060 03008010 */  beqz       $a0, .L800DE070
    /* CE864 800DE064 00000000 */   nop
    /* CE868 800DE068 5878030C */  jal        func_800DE160
    /* CE86C 800DE06C 03000524 */   addiu     $a1, $zero, 0x3
  .L800DE070:
    /* CE870 800DE070 7C0D80AF */  sw         $zero, %gp_rel(D_80159254)($gp)
    /* CE874 800DE074 A8E9030C */  jal        func_800FA6A0
    /* CE878 800DE078 00000000 */   nop
  .L800DE07C:
    /* CE87C 800DE07C 1400BF8F */  lw         $ra, 0x14($sp)
    /* CE880 800DE080 1000B08F */  lw         $s0, 0x10($sp)
    /* CE884 800DE084 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CE888 800DE088 0800E003 */  jr         $ra
    /* CE88C 800DE08C 00000000 */   nop
endlabel func_800DDFEC
