.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D9C5C, 0x3C

glabel func_800D9C5C
    /* CA45C 800D9C5C 1480023C */  lui        $v0, %hi(D_801387DC)
    /* CA460 800D9C60 DC874224 */  addiu      $v0, $v0, %lo(D_801387DC)
    /* CA464 800D9C64 C0200400 */  sll        $a0, $a0, 3
    /* CA468 800D9C68 21108200 */  addu       $v0, $a0, $v0
    /* CA46C 800D9C6C 40280500 */  sll        $a1, $a1, 1
    /* CA470 800D9C70 2110A200 */  addu       $v0, $a1, $v0
    /* CA474 800D9C74 21104600 */  addu       $v0, $v0, $a2
    /* CA478 800D9C78 000040A0 */  sb         $zero, 0x0($v0)
    /* CA47C 800D9C7C 1480023C */  lui        $v0, %hi(D_8013880C)
    /* CA480 800D9C80 0C884224 */  addiu      $v0, $v0, %lo(D_8013880C)
    /* CA484 800D9C84 21208200 */  addu       $a0, $a0, $v0
    /* CA488 800D9C88 2128A400 */  addu       $a1, $a1, $a0
    /* CA48C 800D9C8C 2128A600 */  addu       $a1, $a1, $a2
    /* CA490 800D9C90 0800E003 */  jr         $ra
    /* CA494 800D9C94 0000A0A0 */   sb        $zero, 0x0($a1)
endlabel func_800D9C5C
