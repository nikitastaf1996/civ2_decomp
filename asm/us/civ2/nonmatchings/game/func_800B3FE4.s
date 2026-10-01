.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B3FE4, 0x80

glabel func_800B3FE4
    /* A47E4 800B3FE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A47E8 800B3FE8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A47EC 800B3FEC 1800B0AF */  sw         $s0, 0x18($sp)
    /* A47F0 800B3FF0 21808000 */  addu       $s0, $a0, $zero
    /* A47F4 800B3FF4 0000028E */  lw         $v0, 0x0($s0)
    /* A47F8 800B3FF8 00000000 */  nop
    /* A47FC 800B3FFC 14004010 */  beqz       $v0, .L800B4050
    /* A4800 800B4000 4001C224 */   addiu     $v0, $a2, 0x140
    /* A4804 800B4004 1000A6A7 */  sh         $a2, 0x10($sp)
    /* A4808 800B4008 1200A7A7 */  sh         $a3, 0x12($sp)
    /* A480C 800B400C 1400A2A7 */  sh         $v0, 0x14($sp)
    /* A4810 800B4010 0C00E224 */  addiu      $v0, $a3, 0xC
    /* A4814 800B4014 1600A2A7 */  sh         $v0, 0x16($sp)
    /* A4818 800B4018 2402028E */  lw         $v0, 0x224($s0)
    /* A481C 800B401C 00000000 */  nop
    /* A4820 800B4020 07004014 */  bnez       $v0, .L800B4040
    /* A4824 800B4024 10000724 */   addiu     $a3, $zero, 0x10
    /* A4828 800B4028 2120A000 */  addu       $a0, $a1, $zero
    /* A482C 800B402C 1000A527 */  addiu      $a1, $sp, 0x10
    /* A4830 800B4030 DC0F040C */  jal        func_80103F70
    /* A4834 800B4034 10000624 */   addiu     $a2, $zero, 0x10
    /* A4838 800B4038 14D00208 */  j          .L800B4050
    /* A483C 800B403C 240202AE */   sw        $v0, 0x224($s0)
  .L800B4040:
    /* A4840 800B4040 2402048E */  lw         $a0, 0x224($s0)
    /* A4844 800B4044 1000A627 */  addiu      $a2, $sp, 0x10
    /* A4848 800B4048 5511040C */  jal        func_80104554
    /* A484C 800B404C FFFFE730 */   andi      $a3, $a3, 0xFFFF
  .L800B4050:
    /* A4850 800B4050 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A4854 800B4054 1800B08F */  lw         $s0, 0x18($sp)
    /* A4858 800B4058 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A485C 800B405C 0800E003 */  jr         $ra
    /* A4860 800B4060 00000000 */   nop
endlabel func_800B3FE4
