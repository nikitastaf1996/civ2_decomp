.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D9C18, 0x44

glabel func_800D9C18
    /* CA418 800D9C18 1480023C */  lui        $v0, %hi(D_8013874C)
    /* CA41C 800D9C1C 4C874224 */  addiu      $v0, $v0, %lo(D_8013874C)
    /* CA420 800D9C20 C0200400 */  sll        $a0, $a0, 3
    /* CA424 800D9C24 21108200 */  addu       $v0, $a0, $v0
    /* CA428 800D9C28 40280500 */  sll        $a1, $a1, 1
    /* CA42C 800D9C2C 2110A200 */  addu       $v0, $a1, $v0
    /* CA430 800D9C30 21104600 */  addu       $v0, $v0, $a2
    /* CA434 800D9C34 10000324 */  addiu      $v1, $zero, 0x10
    /* CA438 800D9C38 000043A0 */  sb         $v1, 0x0($v0)
    /* CA43C 800D9C3C 1480023C */  lui        $v0, %hi(D_8013877C)
    /* CA440 800D9C40 7C874224 */  addiu      $v0, $v0, %lo(D_8013877C)
    /* CA444 800D9C44 21208200 */  addu       $a0, $a0, $v0
    /* CA448 800D9C48 2128A400 */  addu       $a1, $a1, $a0
    /* CA44C 800D9C4C 2128A600 */  addu       $a1, $a1, $a2
    /* CA450 800D9C50 04000224 */  addiu      $v0, $zero, 0x4
    /* CA454 800D9C54 0800E003 */  jr         $ra
    /* CA458 800D9C58 0000A2A0 */   sb        $v0, 0x0($a1)
endlabel func_800D9C18
