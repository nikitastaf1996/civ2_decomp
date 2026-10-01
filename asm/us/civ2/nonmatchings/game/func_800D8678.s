.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8678, 0x3C

glabel func_800D8678
    /* C8E78 800D8678 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C8E7C 800D867C 1000BFAF */  sw         $ra, 0x10($sp)
    /* C8E80 800D8680 AC0E838C */  lw         $v1, 0xEAC($a0)
    /* C8E84 800D8684 00000000 */  nop
    /* C8E88 800D8688 2A10A300 */  slt        $v0, $a1, $v1
    /* C8E8C 800D868C 05004014 */  bnez       $v0, .L800D86A4
    /* C8E90 800D8690 2A106500 */   slt       $v0, $v1, $a1
    /* C8E94 800D8694 03004014 */  bnez       $v0, .L800D86A4
    /* C8E98 800D8698 00000000 */   nop
    /* C8E9C 800D869C 5D5F030C */  jal        func_800D7D74
    /* C8EA0 800D86A0 00000000 */   nop
  .L800D86A4:
    /* C8EA4 800D86A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* C8EA8 800D86A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C8EAC 800D86AC 0800E003 */  jr         $ra
    /* C8EB0 800D86B0 00000000 */   nop
endlabel func_800D8678
