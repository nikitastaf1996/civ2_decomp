.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009270C, 0x64

glabel func_8009270C
    /* 82F0C 8009270C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 82F10 80092710 1400BFAF */  sw         $ra, 0x14($sp)
    /* 82F14 80092714 1000B0AF */  sw         $s0, 0x10($sp)
    /* 82F18 80092718 35DE030C */  jal        func_800F78D4
    /* 82F1C 8009271C 18FC9024 */   addiu     $s0, $a0, -0x3E8
    /* 82F20 80092720 02004014 */  bnez       $v0, .L8009272C
    /* 82F24 80092724 D4FF4424 */   addiu     $a0, $v0, -0x2C
    /* 82F28 80092728 21200000 */  addu       $a0, $zero, $zero
  .L8009272C:
    /* 82F2C 8009272C 1402858C */  lw         $a1, 0x214($a0)
    /* 82F30 80092730 00000000 */  nop
    /* 82F34 80092734 0900A010 */  beqz       $a1, .L8009275C
    /* 82F38 80092738 001C1000 */   sll       $v1, $s0, 16
    /* 82F3C 8009273C 031C0300 */  sra        $v1, $v1, 16
    /* 82F40 80092740 C0100300 */  sll        $v0, $v1, 3
    /* 82F44 80092744 23104300 */  subu       $v0, $v0, $v1
    /* 82F48 80092748 80100200 */  sll        $v0, $v0, 2
    /* 82F4C 8009274C 21108200 */  addu       $v0, $a0, $v0
    /* 82F50 80092750 6C01448C */  lw         $a0, 0x16C($v0)
    /* 82F54 80092754 09F8A000 */  jalr       $a1
    /* 82F58 80092758 00000000 */   nop
  .L8009275C:
    /* 82F5C 8009275C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 82F60 80092760 1000B08F */  lw         $s0, 0x10($sp)
    /* 82F64 80092764 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 82F68 80092768 0800E003 */  jr         $ra
    /* 82F6C 8009276C 00000000 */   nop
endlabel func_8009270C
