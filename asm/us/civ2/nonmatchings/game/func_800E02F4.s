.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E02F4, 0x38

glabel func_800E02F4
    /* D0AF4 800E02F4 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* D0AF8 800E02F8 0418E202 */  sllv       $v1, $v0, $s7
    /* D0AFC 800E02FC 25B0C302 */  or         $s6, $s6, $v1
    /* D0B00 800E0300 0C00F726 */  addiu      $s7, $s7, 0xC
    /* D0B04 800E0304 2000E32E */  sltiu      $v1, $s7, 0x20
    /* D0B08 800E0308 06006014 */  bnez       $v1, .L800E0324
    /* D0B0C 800E030C 0C000324 */   addiu     $v1, $zero, 0xC
    /* D0B10 800E0310 0000B6AC */  sw         $s6, 0x0($a1)
    /* D0B14 800E0314 0400A524 */  addiu      $a1, $a1, 0x4
    /* D0B18 800E0318 E0FFF726 */  addiu      $s7, $s7, -0x20
    /* D0B1C 800E031C 23187700 */  subu       $v1, $v1, $s7
    /* D0B20 800E0320 06B06200 */  srlv       $s6, $v0, $v1
  .L800E0324:
    /* D0B24 800E0324 0800E003 */  jr         $ra
    /* D0B28 800E0328 00000000 */   nop
endlabel func_800E02F4
