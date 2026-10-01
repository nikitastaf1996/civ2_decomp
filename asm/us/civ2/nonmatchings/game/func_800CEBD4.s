.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEBD4, 0x28

glabel func_800CEBD4
    /* BF3D4 800CEBD4 2A108500 */  slt        $v0, $a0, $a1
    /* BF3D8 800CEBD8 03004010 */  beqz       $v0, .L800CEBE8
    /* BF3DC 800CEBDC 2A10C400 */   slt       $v0, $a2, $a0
    /* BF3E0 800CEBE0 2120A000 */  addu       $a0, $a1, $zero
    /* BF3E4 800CEBE4 2A10C400 */  slt        $v0, $a2, $a0
  .L800CEBE8:
    /* BF3E8 800CEBE8 02004010 */  beqz       $v0, .L800CEBF4
    /* BF3EC 800CEBEC 00000000 */   nop
    /* BF3F0 800CEBF0 2120C000 */  addu       $a0, $a2, $zero
  .L800CEBF4:
    /* BF3F4 800CEBF4 0800E003 */  jr         $ra
    /* BF3F8 800CEBF8 21108000 */   addu      $v0, $a0, $zero
endlabel func_800CEBD4
