.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD908, 0xFC

glabel func_800DD908
    /* CE108 800DD908 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE10C 800DD90C 1000BFAF */  sw         $ra, 0x10($sp)
    /* CE110 800DD910 21308000 */  addu       $a2, $a0, $zero
    /* CE114 800DD914 40100600 */  sll        $v0, $a2, 1
    /* CE118 800DD918 21104600 */  addu       $v0, $v0, $a2
    /* CE11C 800DD91C 80100200 */  sll        $v0, $v0, 2
    /* CE120 800DD920 23104600 */  subu       $v0, $v0, $a2
    /* CE124 800DD924 00110200 */  sll        $v0, $v0, 4
    /* CE128 800DD928 23104600 */  subu       $v0, $v0, $a2
    /* CE12C 800DD92C C0100200 */  sll        $v0, $v0, 3
    /* CE130 800DD930 1180043C */  lui        $a0, %hi(D_801176B4)
    /* CE134 800DD934 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* CE138 800DD938 80180500 */  sll        $v1, $a1, 2
    /* CE13C 800DD93C 21104400 */  addu       $v0, $v0, $a0
    /* CE140 800DD940 21186200 */  addu       $v1, $v1, $v0
    /* CE144 800DD944 0000628C */  lw         $v0, 0x0($v1)
    /* CE148 800DD948 00000000 */  nop
    /* CE14C 800DD94C 00204230 */  andi       $v0, $v0, 0x2000
    /* CE150 800DD950 28004014 */  bnez       $v0, .L800DD9F4
    /* CE154 800DD954 01000224 */   addiu     $v0, $zero, 0x1
    /* CE158 800DD958 40100600 */  sll        $v0, $a2, 1
    /* CE15C 800DD95C 21104600 */  addu       $v0, $v0, $a2
    /* CE160 800DD960 80100200 */  sll        $v0, $v0, 2
    /* CE164 800DD964 23104600 */  subu       $v0, $v0, $a2
    /* CE168 800DD968 00110200 */  sll        $v0, $v0, 4
    /* CE16C 800DD96C 23104600 */  subu       $v0, $v0, $a2
    /* CE170 800DD970 C0100200 */  sll        $v0, $v0, 3
    /* CE174 800DD974 1180043C */  lui        $a0, %hi(D_801176B4)
    /* CE178 800DD978 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* CE17C 800DD97C 80180500 */  sll        $v1, $a1, 2
    /* CE180 800DD980 21104400 */  addu       $v0, $v0, $a0
    /* CE184 800DD984 21186200 */  addu       $v1, $v1, $v0
    /* CE188 800DD988 0000628C */  lw         $v0, 0x0($v1)
    /* CE18C 800DD98C 00000000 */  nop
    /* CE190 800DD990 08004230 */  andi       $v0, $v0, 0x8
    /* CE194 800DD994 17004014 */  bnez       $v0, .L800DD9F4
    /* CE198 800DD998 21100000 */   addu      $v0, $zero, $zero
    /* CE19C 800DD99C 40100600 */  sll        $v0, $a2, 1
    /* CE1A0 800DD9A0 21104600 */  addu       $v0, $v0, $a2
    /* CE1A4 800DD9A4 80100200 */  sll        $v0, $v0, 2
    /* CE1A8 800DD9A8 23104600 */  subu       $v0, $v0, $a2
    /* CE1AC 800DD9AC 00110200 */  sll        $v0, $v0, 4
    /* CE1B0 800DD9B0 23104600 */  subu       $v0, $v0, $a2
    /* CE1B4 800DD9B4 C0100200 */  sll        $v0, $v0, 3
    /* CE1B8 800DD9B8 1180043C */  lui        $a0, %hi(D_801176B4)
    /* CE1BC 800DD9BC B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* CE1C0 800DD9C0 80180500 */  sll        $v1, $a1, 2
    /* CE1C4 800DD9C4 21104400 */  addu       $v0, $v0, $a0
    /* CE1C8 800DD9C8 21186200 */  addu       $v1, $v1, $v0
    /* CE1CC 800DD9CC 0000628C */  lw         $v0, 0x0($v1)
    /* CE1D0 800DD9D0 00000000 */  nop
    /* CE1D4 800DD9D4 05004230 */  andi       $v0, $v0, 0x5
    /* CE1D8 800DD9D8 01000324 */  addiu      $v1, $zero, 0x1
    /* CE1DC 800DD9DC 05004314 */  bne        $v0, $v1, .L800DD9F4
    /* CE1E0 800DD9E0 21100000 */   addu      $v0, $zero, $zero
    /* CE1E4 800DD9E4 E175030C */  jal        func_800DD784
    /* CE1E8 800DD9E8 2120C000 */   addu      $a0, $a2, $zero
    /* CE1EC 800DD9EC 32004228 */  slti       $v0, $v0, 0x32
    /* CE1F0 800DD9F0 01004238 */  xori       $v0, $v0, 0x1
  .L800DD9F4:
    /* CE1F4 800DD9F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* CE1F8 800DD9F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CE1FC 800DD9FC 0800E003 */  jr         $ra
    /* CE200 800DDA00 00000000 */   nop
endlabel func_800DD908
