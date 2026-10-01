.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C670, 0x11C

glabel func_8001C670
    /* CE70 8001C670 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CE74 8001C674 2800BFAF */  sw         $ra, 0x28($sp)
    /* CE78 8001C678 2400B1AF */  sw         $s1, 0x24($sp)
    /* CE7C 8001C67C 2000B0AF */  sw         $s0, 0x20($sp)
    /* CE80 8001C680 21800000 */  addu       $s0, $zero, $zero
    /* CE84 8001C684 09001124 */  addiu      $s1, $zero, 0x9
    /* CE88 8001C688 00141000 */  sll        $v0, $s0, 16
  .L8001C68C:
    /* CE8C 8001C68C 03140200 */  sra        $v0, $v0, 16
    /* CE90 8001C690 23102202 */  subu       $v0, $s1, $v0
    /* CE94 8001C694 C0300200 */  sll        $a2, $v0, 3
    /* CE98 8001C698 2130C200 */  addu       $a2, $a2, $v0
    /* CE9C 8001C69C 00340600 */  sll        $a2, $a2, 16
    /* CEA0 8001C6A0 03340600 */  sra        $a2, $a2, 16
    /* CEA4 8001C6A4 21200000 */  addu       $a0, $zero, $zero
    /* CEA8 8001C6A8 C7FD000C */  jal        SsSetSerialVol
    /* CEAC 8001C6AC 2128C000 */   addu      $a1, $a2, $zero
    /* CEB0 8001C6B0 23B3000C */  jal        VSync
    /* CEB4 8001C6B4 21200000 */   addu      $a0, $zero, $zero
    /* CEB8 8001C6B8 01000226 */  addiu      $v0, $s0, 0x1
    /* CEBC 8001C6BC 21804000 */  addu       $s0, $v0, $zero
    /* CEC0 8001C6C0 00140200 */  sll        $v0, $v0, 16
    /* CEC4 8001C6C4 03140200 */  sra        $v0, $v0, 16
    /* CEC8 8001C6C8 0A004228 */  slti       $v0, $v0, 0xA
    /* CECC 8001C6CC EFFF4014 */  bnez       $v0, .L8001C68C
    /* CED0 8001C6D0 00141000 */   sll       $v0, $s0, 16
    /* CED4 8001C6D4 21200000 */  addu       $a0, $zero, $zero
    /* CED8 8001C6D8 21280000 */  addu       $a1, $zero, $zero
    /* CEDC 8001C6DC C7FD000C */  jal        SsSetSerialVol
    /* CEE0 8001C6E0 21300000 */   addu      $a2, $zero, $zero
    /* CEE4 8001C6E4 21200000 */  addu       $a0, $zero, $zero
    /* CEE8 8001C6E8 21280000 */  addu       $a1, $zero, $zero
    /* CEEC 8001C6EC 7BF6000C */  jal        SsSetSerialAttr
    /* CEF0 8001C6F0 21300000 */   addu      $a2, $zero, $zero
    /* CEF4 8001C6F4 23B3000C */  jal        VSync
    /* CEF8 8001C6F8 21200000 */   addu      $a0, $zero, $zero
    /* CEFC 8001C6FC 21200000 */  addu       $a0, $zero, $zero
    /* CF00 8001C700 DCB9000C */  jal        CdSync
    /* CF04 8001C704 21280000 */   addu      $a1, $zero, $zero
    /* CF08 8001C708 21200000 */  addu       $a0, $zero, $zero
    /* CF0C 8001C70C 5BC5000C */  jal        CdReadSync
    /* CF10 8001C710 21280000 */   addu      $a1, $zero, $zero
    /* CF14 8001C714 06BB000C */  jal        CdDataSync
    /* CF18 8001C718 21200000 */   addu      $a0, $zero, $zero
    /* CF1C 8001C71C 09000424 */  addiu      $a0, $zero, 0x9
  .L8001C720:
    /* CF20 8001C720 21280000 */  addu       $a1, $zero, $zero
    /* CF24 8001C724 F6B9000C */  jal        CdControl
    /* CF28 8001C728 1800A627 */   addiu     $a2, $sp, 0x18
    /* CF2C 8001C72C FCFF4010 */  beqz       $v0, .L8001C720
    /* CF30 8001C730 09000424 */   addiu     $a0, $zero, 0x9
    /* CF34 8001C734 21200000 */  addu       $a0, $zero, $zero
    /* CF38 8001C738 DCB9000C */  jal        CdSync
    /* CF3C 8001C73C 21280000 */   addu      $a1, $zero, $zero
    /* CF40 8001C740 80000224 */  addiu      $v0, $zero, 0x80
    /* CF44 8001C744 1000A2A3 */  sb         $v0, 0x10($sp)
    /* CF48 8001C748 0E000424 */  addiu      $a0, $zero, 0xE
  .L8001C74C:
    /* CF4C 8001C74C 1000A527 */  addiu      $a1, $sp, 0x10
    /* CF50 8001C750 F6B9000C */  jal        CdControl
    /* CF54 8001C754 21300000 */   addu      $a2, $zero, $zero
    /* CF58 8001C758 FCFF4010 */  beqz       $v0, .L8001C74C
    /* CF5C 8001C75C 0E000424 */   addiu     $a0, $zero, 0xE
    /* CF60 8001C760 23B3000C */  jal        VSync
    /* CF64 8001C764 03000424 */   addiu     $a0, $zero, 0x3
    /* CF68 8001C768 21200000 */  addu       $a0, $zero, $zero
    /* CF6C 8001C76C DCB9000C */  jal        CdSync
    /* CF70 8001C770 21280000 */   addu      $a1, $zero, $zero
    /* CF74 8001C774 2800BF8F */  lw         $ra, 0x28($sp)
    /* CF78 8001C778 2400B18F */  lw         $s1, 0x24($sp)
    /* CF7C 8001C77C 2000B08F */  lw         $s0, 0x20($sp)
    /* CF80 8001C780 3000BD27 */  addiu      $sp, $sp, 0x30
    /* CF84 8001C784 0800E003 */  jr         $ra
    /* CF88 8001C788 00000000 */   nop
endlabel func_8001C670
