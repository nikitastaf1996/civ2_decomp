.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80027E60, 0x64

glabel func_80027E60
    /* 18660 80027E60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18664 80027E64 1000BFAF */  sw         $ra, 0x10($sp)
    /* 18668 80027E68 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 1866C 80027E6C 40100400 */  sll        $v0, $a0, 1
    /* 18670 80027E70 21104400 */  addu       $v0, $v0, $a0
    /* 18674 80027E74 80100200 */  sll        $v0, $v0, 2
    /* 18678 80027E78 23104400 */  subu       $v0, $v0, $a0
    /* 1867C 80027E7C 40100200 */  sll        $v0, $v0, 1
    /* 18680 80027E80 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 18684 80027E84 0180033C */  lui        $v1, %hi(D_80016D76)
    /* 18688 80027E88 766D6324 */  addiu      $v1, $v1, %lo(D_80016D76)
    /* 1868C 80027E8C 40280500 */  sll        $a1, $a1, 1
    /* 18690 80027E90 21204300 */  addu       $a0, $v0, $v1
    /* 18694 80027E94 2120A400 */  addu       $a0, $a1, $a0
    /* 18698 80027E98 0A006324 */  addiu      $v1, $v1, 0xA
    /* 1869C 80027E9C 21104300 */  addu       $v0, $v0, $v1
    /* 186A0 80027EA0 2128A200 */  addu       $a1, $a1, $v0
    /* 186A4 80027EA4 00008484 */  lh         $a0, 0x0($a0)
    /* 186A8 80027EA8 0000A584 */  lh         $a1, 0x0($a1)
    /* 186AC 80027EAC 8378000C */  jal        func_8001E20C
    /* 186B0 80027EB0 21300000 */   addu      $a2, $zero, $zero
    /* 186B4 80027EB4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 186B8 80027EB8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 186BC 80027EBC 0800E003 */  jr         $ra
    /* 186C0 80027EC0 00000000 */   nop
endlabel func_80027E60
