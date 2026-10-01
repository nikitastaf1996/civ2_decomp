.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B6000, 0x54

glabel func_800B6000
    /* A6800 800B6000 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A6804 800B6004 1000BFAF */  sw         $ra, 0x10($sp)
    /* A6808 800B6008 21288000 */  addu       $a1, $a0, $zero
    /* A680C 800B600C 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A6810 800B6010 00000000 */  nop
    /* A6814 800B6014 0B008010 */  beqz       $a0, .L800B6044
    /* A6818 800B6018 002C0500 */   sll       $a1, $a1, 16
    /* A681C 800B601C 8BCC020C */  jal        func_800B322C
    /* A6820 800B6020 032C0500 */   sra       $a1, $a1, 16
    /* A6824 800B6024 21204000 */  addu       $a0, $v0, $zero
    /* A6828 800B6028 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A682C 800B602C 00000000 */  nop
    /* A6830 800B6030 6001628C */  lw         $v0, 0x160($v1)
    /* A6834 800B6034 00000000 */  nop
    /* A6838 800B6038 02008210 */  beq        $a0, $v0, .L800B6044
    /* A683C 800B603C 00000000 */   nop
    /* A6840 800B6040 600164AC */  sw         $a0, 0x160($v1)
  .L800B6044:
    /* A6844 800B6044 1000BF8F */  lw         $ra, 0x10($sp)
    /* A6848 800B6048 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A684C 800B604C 0800E003 */  jr         $ra
    /* A6850 800B6050 00000000 */   nop
endlabel func_800B6000
