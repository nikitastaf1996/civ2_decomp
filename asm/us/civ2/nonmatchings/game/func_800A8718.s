.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8718, 0x88

glabel func_800A8718
    /* 98F18 800A8718 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98F1C 800A871C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 98F20 800A8720 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98F24 800A8724 79A1020C */  jal        func_800A85E4
    /* 98F28 800A8728 21800000 */   addu      $s0, $zero, $zero
    /* 98F2C 800A872C 1280043C */  lui        $a0, %hi(D_8011F9F8)
    /* 98F30 800A8730 F8F98424 */  addiu      $a0, $a0, %lo(D_8011F9F8)
    /* 98F34 800A8734 00008290 */  lbu        $v0, 0x0($a0)
    /* 98F38 800A8738 00000000 */  nop
    /* 98F3C 800A873C 21284000 */  addu       $a1, $v0, $zero
    /* 98F40 800A8740 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 98F44 800A8744 0200422C */  sltiu      $v0, $v0, 0x2
    /* 98F48 800A8748 10004010 */  beqz       $v0, .L800A878C
    /* 98F4C 800A874C FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* 98F50 800A8750 31000624 */  addiu      $a2, $zero, 0x31
    /* 98F54 800A8754 40181000 */  sll        $v1, $s0, 1
  .L800A8758:
    /* 98F58 800A8758 00160500 */  sll        $v0, $a1, 24
    /* 98F5C 800A875C 03160200 */  sra        $v0, $v0, 24
    /* 98F60 800A8760 02004614 */  bne        $v0, $a2, .L800A876C
    /* 98F64 800A8764 21806000 */   addu      $s0, $v1, $zero
    /* 98F68 800A8768 01007024 */  addiu      $s0, $v1, 0x1
  .L800A876C:
    /* 98F6C 800A876C 01008424 */  addiu      $a0, $a0, 0x1
    /* 98F70 800A8770 00008590 */  lbu        $a1, 0x0($a0)
    /* 98F74 800A8774 00000000 */  nop
    /* 98F78 800A8778 D0FFA224 */  addiu      $v0, $a1, -0x30
    /* 98F7C 800A877C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 98F80 800A8780 F5FF4014 */  bnez       $v0, .L800A8758
    /* 98F84 800A8784 40181000 */   sll       $v1, $s0, 1
    /* 98F88 800A8788 FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L800A878C:
    /* 98F8C 800A878C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 98F90 800A8790 1000B08F */  lw         $s0, 0x10($sp)
    /* 98F94 800A8794 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98F98 800A8798 0800E003 */  jr         $ra
    /* 98F9C 800A879C 00000000 */   nop
endlabel func_800A8718
