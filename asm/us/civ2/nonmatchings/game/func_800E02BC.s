.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E02BC, 0x38

glabel func_800E02BC
    /* D0ABC 800E02BC FF004230 */  andi       $v0, $v0, 0xFF
    /* D0AC0 800E02C0 0418E202 */  sllv       $v1, $v0, $s7
    /* D0AC4 800E02C4 25B0C302 */  or         $s6, $s6, $v1
    /* D0AC8 800E02C8 0800F726 */  addiu      $s7, $s7, 0x8
    /* D0ACC 800E02CC 2000E32E */  sltiu      $v1, $s7, 0x20
    /* D0AD0 800E02D0 06006014 */  bnez       $v1, .L800E02EC
    /* D0AD4 800E02D4 08000324 */   addiu     $v1, $zero, 0x8
    /* D0AD8 800E02D8 0000B6AC */  sw         $s6, 0x0($a1)
    /* D0ADC 800E02DC 0400A524 */  addiu      $a1, $a1, 0x4
    /* D0AE0 800E02E0 E0FFF726 */  addiu      $s7, $s7, -0x20
    /* D0AE4 800E02E4 23187700 */  subu       $v1, $v1, $s7
    /* D0AE8 800E02E8 06B06200 */  srlv       $s6, $v0, $v1
  .L800E02EC:
    /* D0AEC 800E02EC 0800E003 */  jr         $ra
    /* D0AF0 800E02F0 00000000 */   nop
endlabel func_800E02BC
