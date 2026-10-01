.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A23A4, 0x48

glabel func_800A23A4
    /* 92BA4 800A23A4 1800838C */  lw         $v1, 0x18($a0)
    /* 92BA8 800A23A8 00000000 */  nop
    /* 92BAC 800A23AC 0D006010 */  beqz       $v1, .L800A23E4
    /* 92BB0 800A23B0 01000624 */   addiu     $a2, $zero, 0x1
  .L800A23B4:
    /* 92BB4 800A23B4 0B006510 */  beq        $v1, $a1, .L800A23E4
    /* 92BB8 800A23B8 00000000 */   nop
    /* 92BBC 800A23BC 0800628C */  lw         $v0, 0x8($v1)
    /* 92BC0 800A23C0 00000000 */  nop
    /* 92BC4 800A23C4 02004230 */  andi       $v0, $v0, 0x2
    /* 92BC8 800A23C8 02004014 */  bnez       $v0, .L800A23D4
    /* 92BCC 800A23CC 00000000 */   nop
    /* 92BD0 800A23D0 0100C624 */  addiu      $a2, $a2, 0x1
  .L800A23D4:
    /* 92BD4 800A23D4 1000638C */  lw         $v1, 0x10($v1)
    /* 92BD8 800A23D8 00000000 */  nop
    /* 92BDC 800A23DC F5FF6014 */  bnez       $v1, .L800A23B4
    /* 92BE0 800A23E0 00000000 */   nop
  .L800A23E4:
    /* 92BE4 800A23E4 0800E003 */  jr         $ra
    /* 92BE8 800A23E8 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800A23A4
