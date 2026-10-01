.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BD814, 0x5C

glabel func_800BD814
    /* AE014 800BD814 2C10828F */  lw         $v0, %gp_rel(D_80159504)($gp)
    /* AE018 800BD818 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AE01C 800BD81C 1000B0AF */  sw         $s0, 0x10($sp)
    /* AE020 800BD820 21808000 */  addu       $s0, $a0, $zero
    /* AE024 800BD824 07004010 */  beqz       $v0, .L800BD844
    /* AE028 800BD828 1400BFAF */   sw        $ra, 0x14($sp)
    /* AE02C 800BD82C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE030 800BD830 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE034 800BD834 1680053C */  lui        $a1, %hi(D_80158FF4)
    /* AE038 800BD838 F48FA524 */  addiu      $a1, $a1, %lo(D_80158FF4)
    /* AE03C 800BD83C 9987030C */  jal        func_800E1E64
    /* AE040 800BD840 00000000 */   nop
  .L800BD844:
    /* AE044 800BD844 01000224 */  addiu      $v0, $zero, 0x1
    /* AE048 800BD848 2C1082AF */  sw         $v0, %gp_rel(D_80159504)($gp)
    /* AE04C 800BD84C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE050 800BD850 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE054 800BD854 731B030C */  jal        func_800C6DCC
    /* AE058 800BD858 21280002 */   addu      $a1, $s0, $zero
    /* AE05C 800BD85C 1400BF8F */  lw         $ra, 0x14($sp)
    /* AE060 800BD860 1000B08F */  lw         $s0, 0x10($sp)
    /* AE064 800BD864 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AE068 800BD868 0800E003 */  jr         $ra
    /* AE06C 800BD86C 00000000 */   nop
endlabel func_800BD814
