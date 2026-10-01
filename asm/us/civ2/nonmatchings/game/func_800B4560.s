.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4560, 0x58

glabel func_800B4560
    /* A4D60 800B4560 2C00838C */  lw         $v1, 0x2C($a0)
    /* A4D64 800B4564 01000224 */  addiu      $v0, $zero, 0x1
    /* A4D68 800B4568 10006210 */  beq        $v1, $v0, .L800B45AC
    /* A4D6C 800B456C 00000000 */   nop
    /* A4D70 800B4570 4400838C */  lw         $v1, 0x44($a0)
    /* A4D74 800B4574 00000000 */  nop
    /* A4D78 800B4578 1A00A300 */  div        $zero, $a1, $v1
    /* A4D7C 800B457C 02006014 */  bnez       $v1, .L800B4588
    /* A4D80 800B4580 00000000 */   nop
    /* A4D84 800B4584 0D000700 */  break      7
  .L800B4588:
    /* A4D88 800B4588 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A4D8C 800B458C 04006114 */  bne        $v1, $at, .L800B45A0
    /* A4D90 800B4590 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A4D94 800B4594 0200A114 */  bne        $a1, $at, .L800B45A0
    /* A4D98 800B4598 00000000 */   nop
    /* A4D9C 800B459C 0D000600 */  break      6
  .L800B45A0:
    /* A4DA0 800B45A0 10100000 */  mfhi       $v0
    /* A4DA4 800B45A4 6CD10208 */  j          .L800B45B0
    /* A4DA8 800B45A8 2310A200 */   subu      $v0, $a1, $v0
  .L800B45AC:
    /* A4DAC 800B45AC 2110A000 */  addu       $v0, $a1, $zero
  .L800B45B0:
    /* A4DB0 800B45B0 0800E003 */  jr         $ra
    /* A4DB4 800B45B4 00000000 */   nop
endlabel func_800B4560
