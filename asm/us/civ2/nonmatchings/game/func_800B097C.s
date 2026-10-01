.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B097C, 0x88

glabel func_800B097C
    /* A117C 800B097C 2150A000 */  addu       $t2, $a1, $zero
    /* A1180 800B0980 0E000824 */  addiu      $t0, $zero, 0xE
    /* A1184 800B0984 2A100A01 */  slt        $v0, $t0, $t2
    /* A1188 800B0988 1C004014 */  bnez       $v0, .L800B09FC
    /* A118C 800B098C 40100400 */   sll       $v0, $a0, 1
    /* A1190 800B0990 21104400 */  addu       $v0, $v0, $a0
    /* A1194 800B0994 80100200 */  sll        $v0, $v0, 2
    /* A1198 800B0998 23104400 */  subu       $v0, $v0, $a0
    /* A119C 800B099C 00110200 */  sll        $v0, $v0, 4
    /* A11A0 800B09A0 23104400 */  subu       $v0, $v0, $a0
    /* A11A4 800B09A4 C0480200 */  sll        $t1, $v0, 3
    /* A11A8 800B09A8 11800C3C */  lui        $t4, %hi(D_80117BAE)
    /* A11AC 800B09AC AE7B8C25 */  addiu      $t4, $t4, %lo(D_80117BAE)
    /* A11B0 800B09B0 1180023C */  lui        $v0, %hi(D_80117BA8)
    /* A11B4 800B09B4 A87B4224 */  addiu      $v0, $v0, %lo(D_80117BA8)
    /* A11B8 800B09B8 21582201 */  addu       $t3, $t1, $v0
    /* A11BC 800B09BC 40100800 */  sll        $v0, $t0, 1
  .L800B09C0:
    /* A11C0 800B09C0 21104800 */  addu       $v0, $v0, $t0
    /* A11C4 800B09C4 40100200 */  sll        $v0, $v0, 1
    /* A11C8 800B09C8 21184C00 */  addu       $v1, $v0, $t4
    /* A11CC 800B09CC 21186900 */  addu       $v1, $v1, $t1
    /* A11D0 800B09D0 21104B00 */  addu       $v0, $v0, $t3
    /* A11D4 800B09D4 03004488 */  lwl        $a0, 0x3($v0)
    /* A11D8 800B09D8 00004498 */  lwr        $a0, 0x0($v0)
    /* A11DC 800B09DC 04004584 */  lh         $a1, 0x4($v0)
    /* A11E0 800B09E0 030064A8 */  swl        $a0, 0x3($v1)
    /* A11E4 800B09E4 000064B8 */  swr        $a0, 0x0($v1)
    /* A11E8 800B09E8 040065A4 */  sh         $a1, 0x4($v1)
    /* A11EC 800B09EC FFFF0825 */  addiu      $t0, $t0, -0x1
    /* A11F0 800B09F0 2A100A01 */  slt        $v0, $t0, $t2
    /* A11F4 800B09F4 F2FF4010 */  beqz       $v0, .L800B09C0
    /* A11F8 800B09F8 40100800 */   sll       $v0, $t0, 1
  .L800B09FC:
    /* A11FC 800B09FC 0800E003 */  jr         $ra
    /* A1200 800B0A00 00000000 */   nop
endlabel func_800B097C
