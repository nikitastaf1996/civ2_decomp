.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB1D0, 0x84

glabel func_800CB1D0
    /* BB9D0 800CB1D0 21280000 */  addu       $a1, $zero, $zero
    /* BB9D4 800CB1D4 1680063C */  lui        $a2, %hi(D_8015EE70)
    /* BB9D8 800CB1D8 70EEC624 */  addiu      $a2, $a2, %lo(D_8015EE70)
    /* BB9DC 800CB1DC 00240400 */  sll        $a0, $a0, 16
    /* BB9E0 800CB1E0 03240400 */  sra        $a0, $a0, 16
    /* BB9E4 800CB1E4 40100400 */  sll        $v0, $a0, 1
    /* BB9E8 800CB1E8 21104400 */  addu       $v0, $v0, $a0
    /* BB9EC 800CB1EC 80100200 */  sll        $v0, $v0, 2
    /* BB9F0 800CB1F0 23104400 */  subu       $v0, $v0, $a0
    /* BB9F4 800CB1F4 00110200 */  sll        $v0, $v0, 4
    /* BB9F8 800CB1F8 23104400 */  subu       $v0, $v0, $a0
    /* BB9FC 800CB1FC C0100200 */  sll        $v0, $v0, 3
    /* BBA00 800CB200 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* BBA04 800CB204 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* BBA08 800CB208 21204300 */  addu       $a0, $v0, $v1
  .L800CB20C:
    /* BBA0C 800CB20C 00140500 */  sll        $v0, $a1, 16
    /* BBA10 800CB210 03140200 */  sra        $v0, $v0, 16
    /* BBA14 800CB214 80180200 */  sll        $v1, $v0, 2
    /* BBA18 800CB218 21186600 */  addu       $v1, $v1, $a2
    /* BBA1C 800CB21C 40100200 */  sll        $v0, $v0, 1
    /* BBA20 800CB220 21104400 */  addu       $v0, $v0, $a0
    /* BBA24 800CB224 00004284 */  lh         $v0, 0x0($v0)
    /* BBA28 800CB228 00000000 */  nop
    /* BBA2C 800CB22C 000062AC */  sw         $v0, 0x0($v1)
    /* BBA30 800CB230 0100A224 */  addiu      $v0, $a1, 0x1
    /* BBA34 800CB234 21284000 */  addu       $a1, $v0, $zero
    /* BBA38 800CB238 00140200 */  sll        $v0, $v0, 16
    /* BBA3C 800CB23C 03140200 */  sra        $v0, $v0, 16
    /* BBA40 800CB240 06004228 */  slti       $v0, $v0, 0x6
    /* BBA44 800CB244 F1FF4014 */  bnez       $v0, .L800CB20C
    /* BBA48 800CB248 00000000 */   nop
    /* BBA4C 800CB24C 0800E003 */  jr         $ra
    /* BBA50 800CB250 00000000 */   nop
endlabel func_800CB1D0
