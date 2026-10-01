.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BD48, 0x4C

glabel func_8007BD48
    /* 6C548 8007BD48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6C54C 8007BD4C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6C550 8007BD50 40100400 */  sll        $v0, $a0, 1
    /* 6C554 8007BD54 21104400 */  addu       $v0, $v0, $a0
    /* 6C558 8007BD58 80100200 */  sll        $v0, $v0, 2
    /* 6C55C 8007BD5C 21104400 */  addu       $v0, $v0, $a0
    /* 6C560 8007BD60 40100200 */  sll        $v0, $v0, 1
    /* 6C564 8007BD64 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C568 8007BD68 21082200 */  addu       $at, $at, $v0
    /* 6C56C 8007BD6C B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* 6C570 8007BD70 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C574 8007BD74 21082200 */  addu       $at, $at, $v0
    /* 6C578 8007BD78 B6D62684 */  lh         $a2, %lo(D_8010D6B6)($at)
    /* 6C57C 8007BD7C 36EF010C */  jal        func_8007BCD8
    /* 6C580 8007BD80 00000000 */   nop
    /* 6C584 8007BD84 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6C588 8007BD88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6C58C 8007BD8C 0800E003 */  jr         $ra
    /* 6C590 8007BD90 00000000 */   nop
endlabel func_8007BD48
