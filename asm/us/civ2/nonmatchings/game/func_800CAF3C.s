.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAF3C, 0x60

glabel func_800CAF3C
    /* BB73C 800CAF3C 21408000 */  addu       $t0, $a0, $zero
    /* BB740 800CAF40 DC2B0308 */  j          .L800CAF70
    /* BB744 800CAF44 2138A000 */   addu      $a3, $a1, $zero
  .L800CAF48:
    /* BB748 800CAF48 21104800 */  addu       $v0, $v0, $t0
    /* BB74C 800CAF4C 1000438C */  lw         $v1, 0x10($v0)
    /* BB750 800CAF50 1400448C */  lw         $a0, 0x14($v0)
    /* BB754 800CAF54 1800458C */  lw         $a1, 0x18($v0)
    /* BB758 800CAF58 1C00468C */  lw         $a2, 0x1C($v0)
    /* BB75C 800CAF5C 000043AC */  sw         $v1, 0x0($v0)
    /* BB760 800CAF60 040044AC */  sw         $a0, 0x4($v0)
    /* BB764 800CAF64 080045AC */  sw         $a1, 0x8($v0)
    /* BB768 800CAF68 0C0046AC */  sw         $a2, 0xC($v0)
    /* BB76C 800CAF6C 0100E724 */  addiu      $a3, $a3, 0x1
  .L800CAF70:
    /* BB770 800CAF70 800C028D */  lw         $v0, 0xC80($t0)
    /* BB774 800CAF74 00000000 */  nop
    /* BB778 800CAF78 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* BB77C 800CAF7C 2A10E200 */  slt        $v0, $a3, $v0
    /* BB780 800CAF80 F1FF4014 */  bnez       $v0, .L800CAF48
    /* BB784 800CAF84 00110700 */   sll       $v0, $a3, 4
    /* BB788 800CAF88 800C028D */  lw         $v0, 0xC80($t0)
    /* BB78C 800CAF8C 00000000 */  nop
    /* BB790 800CAF90 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* BB794 800CAF94 0800E003 */  jr         $ra
    /* BB798 800CAF98 800C02AD */   sw        $v0, 0xC80($t0)
endlabel func_800CAF3C
