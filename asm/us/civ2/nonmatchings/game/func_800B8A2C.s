.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8A2C, 0x24

glabel func_800B8A2C
    /* A922C 800B8A2C 160285A4 */  sh         $a1, 0x216($a0)
    /* A9230 800B8A30 002C0500 */  sll        $a1, $a1, 16
    /* A9234 800B8A34 032C0500 */  sra        $a1, $a1, 16
    /* A9238 800B8A38 6500A528 */  slti       $a1, $a1, 0x65
    /* A923C 800B8A3C 0200A014 */  bnez       $a1, .L800B8A48
    /* A9240 800B8A40 64000224 */   addiu     $v0, $zero, 0x64
    /* A9244 800B8A44 160282A4 */  sh         $v0, 0x216($a0)
  .L800B8A48:
    /* A9248 800B8A48 0800E003 */  jr         $ra
    /* A924C 800B8A4C 00000000 */   nop
endlabel func_800B8A2C
