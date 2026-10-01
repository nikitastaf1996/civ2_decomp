.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80099004, 0x60

glabel func_80099004
    /* 89804 80099004 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 89808 80099008 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8980C 8009900C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 89810 80099010 21808000 */  addu       $s0, $a0, $zero
    /* 89814 80099014 2120A000 */  addu       $a0, $a1, $zero
    /* 89818 80099018 1000A527 */  addiu      $a1, $sp, 0x10
    /* 8981C 8009901C C73B030C */  jal        func_800CEF1C
    /* 89820 80099020 1400A627 */   addiu     $a2, $sp, 0x14
    /* 89824 80099024 00811000 */  sll        $s0, $s0, 4
    /* 89828 80099028 1180023C */  lui        $v0, %hi(D_8010CC6B)
    /* 8982C 8009902C 6BCC4224 */  addiu      $v0, $v0, %lo(D_8010CC6B)
    /* 89830 80099030 1000A38F */  lw         $v1, 0x10($sp)
    /* 89834 80099034 21800202 */  addu       $s0, $s0, $v0
    /* 89838 80099038 21800302 */  addu       $s0, $s0, $v1
    /* 8983C 8009903C 00000292 */  lbu        $v0, 0x0($s0)
    /* 89840 80099040 1400A38F */  lw         $v1, 0x14($sp)
    /* 89844 80099044 00000000 */  nop
    /* 89848 80099048 24104300 */  and        $v0, $v0, $v1
    /* 8984C 8009904C 2B100200 */  sltu       $v0, $zero, $v0
    /* 89850 80099050 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 89854 80099054 1800B08F */  lw         $s0, 0x18($sp)
    /* 89858 80099058 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8985C 8009905C 0800E003 */  jr         $ra
    /* 89860 80099060 00000000 */   nop
endlabel func_80099004
