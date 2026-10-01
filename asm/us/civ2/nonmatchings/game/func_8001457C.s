.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001457C, 0x44

glabel func_8001457C
    /* 4D7C 8001457C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4D80 80014580 21200000 */  addu       $a0, $zero, $zero
    /* 4D84 80014584 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4D88 80014588 ED12040C */  jal        func_80104BB4
    /* 4D8C 8001458C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 4D90 80014590 CE4F000C */  jal        func_80013F38
    /* 4D94 80014594 21804000 */   addu      $s0, $v0, $zero
    /* 4D98 80014598 05000224 */  addiu      $v0, $zero, 0x5
    /* 4D9C 8001459C 03000216 */  bne        $s0, $v0, .L800145AC
    /* 4DA0 800145A0 00000000 */   nop
    /* 4DA4 800145A4 D61E040C */  jal        func_80107B58
    /* 4DA8 800145A8 01000424 */   addiu     $a0, $zero, 0x1
  .L800145AC:
    /* 4DAC 800145AC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4DB0 800145B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4DB4 800145B4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4DB8 800145B8 0800E003 */  jr         $ra
    /* 4DBC 800145BC 00000000 */   nop
endlabel func_8001457C
