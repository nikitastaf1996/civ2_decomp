.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CE00, 0x2C

glabel func_8007CE00
    /* 6D600 8007CE00 08008004 */  bltz       $a0, .L8007CE24
    /* 6D604 8007CE04 40100400 */   sll       $v0, $a0, 1
    /* 6D608 8007CE08 21104400 */  addu       $v0, $v0, $a0
    /* 6D60C 8007CE0C 80100200 */  sll        $v0, $v0, 2
    /* 6D610 8007CE10 21104400 */  addu       $v0, $v0, $a0
    /* 6D614 8007CE14 40100200 */  sll        $v0, $v0, 1
    /* 6D618 8007CE18 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 6D61C 8007CE1C 21082200 */  addu       $at, $at, $v0
    /* 6D620 8007CE20 BDD620A0 */  sb         $zero, %lo(D_8010D6BD)($at)
  .L8007CE24:
    /* 6D624 8007CE24 0800E003 */  jr         $ra
    /* 6D628 8007CE28 00000000 */   nop
endlabel func_8007CE00
