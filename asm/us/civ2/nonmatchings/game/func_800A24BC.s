.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A24BC, 0x50

glabel func_800A24BC
    /* 92CBC 800A24BC 1800A28C */  lw         $v0, 0x18($a1)
    /* 92CC0 800A24C0 00000000 */  nop
    /* 92CC4 800A24C4 1800438C */  lw         $v1, 0x18($v0)
    /* 92CC8 800A24C8 00000000 */  nop
    /* 92CCC 800A24CC 0D006010 */  beqz       $v1, .L800A2504
    /* 92CD0 800A24D0 01000424 */   addiu     $a0, $zero, 0x1
  .L800A24D4:
    /* 92CD4 800A24D4 0B006510 */  beq        $v1, $a1, .L800A2504
    /* 92CD8 800A24D8 00000000 */   nop
    /* 92CDC 800A24DC 0800628C */  lw         $v0, 0x8($v1)
    /* 92CE0 800A24E0 00000000 */  nop
    /* 92CE4 800A24E4 02004230 */  andi       $v0, $v0, 0x2
    /* 92CE8 800A24E8 02004014 */  bnez       $v0, .L800A24F4
    /* 92CEC 800A24EC 00000000 */   nop
    /* 92CF0 800A24F0 01008424 */  addiu      $a0, $a0, 0x1
  .L800A24F4:
    /* 92CF4 800A24F4 1000638C */  lw         $v1, 0x10($v1)
    /* 92CF8 800A24F8 00000000 */  nop
    /* 92CFC 800A24FC F5FF6014 */  bnez       $v1, .L800A24D4
    /* 92D00 800A2500 00000000 */   nop
  .L800A2504:
    /* 92D04 800A2504 0800E003 */  jr         $ra
    /* 92D08 800A2508 21108000 */   addu      $v0, $a0, $zero
endlabel func_800A24BC
