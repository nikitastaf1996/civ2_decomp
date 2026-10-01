.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8F74, 0x44

glabel func_800B8F74
    /* A9774 800B8F74 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9778 800B8F78 1800BFAF */  sw         $ra, 0x18($sp)
    /* A977C 800B8F7C 3000A38F */  lw         $v1, 0x30($sp)
    /* A9780 800B8F80 C0100700 */  sll        $v0, $a3, 3
    /* A9784 800B8F84 21104700 */  addu       $v0, $v0, $a3
    /* A9788 800B8F88 80100200 */  sll        $v0, $v0, 2
    /* A978C 800B8F8C 21104700 */  addu       $v0, $v0, $a3
    /* A9790 800B8F90 80100200 */  sll        $v0, $v0, 2
    /* A9794 800B8F94 1380073C */  lui        $a3, %hi(D_8012BF80)
    /* A9798 800B8F98 80BFE724 */  addiu      $a3, $a3, %lo(D_8012BF80)
    /* A979C 800B8F9C 1000A3AF */  sw         $v1, 0x10($sp)
    /* A97A0 800B8FA0 18E3020C */  jal        func_800B8C60
    /* A97A4 800B8FA4 21384700 */   addu      $a3, $v0, $a3
    /* A97A8 800B8FA8 1800BF8F */  lw         $ra, 0x18($sp)
    /* A97AC 800B8FAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A97B0 800B8FB0 0800E003 */  jr         $ra
    /* A97B4 800B8FB4 00000000 */   nop
endlabel func_800B8F74
