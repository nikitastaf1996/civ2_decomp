.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019858, 0x4C

glabel func_80019858
    /* A058 80019858 64000424 */  addiu      $a0, $zero, 0x64
    /* A05C 8001985C 0080053C */  lui        $a1, (0x80000000 >> 16)
  .L80019860:
    /* A060 80019860 C0100400 */  sll        $v0, $a0, 3
    /* A064 80019864 21104400 */  addu       $v0, $v0, $a0
    /* A068 80019868 80100200 */  sll        $v0, $v0, 2
    /* A06C 8001986C 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* A070 80019870 21082200 */  addu       $at, $at, $v0
    /* A074 80019874 E0A0238C */  lw         $v1, %lo(D_8012A0E0)($at)
    /* A078 80019878 00000000 */  nop
    /* A07C 8001987C 25186500 */  or         $v1, $v1, $a1
    /* A080 80019880 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* A084 80019884 21082200 */  addu       $at, $at, $v0
    /* A088 80019888 E0A023AC */  sw         $v1, %lo(D_8012A0E0)($at)
    /* A08C 8001988C 01008424 */  addiu      $a0, $a0, 0x1
    /* A090 80019890 A4008228 */  slti       $v0, $a0, 0xA4
    /* A094 80019894 F2FF4014 */  bnez       $v0, .L80019860
    /* A098 80019898 00000000 */   nop
    /* A09C 8001989C 0800E003 */  jr         $ra
    /* A0A0 800198A0 00000000 */   nop
endlabel func_80019858
