.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098540, 0x24

glabel func_80098540
    /* 88D40 80098540 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88D44 80098544 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88D48 80098548 BD60020C */  jal        func_800982F4
    /* 88D4C 8009854C 00000000 */   nop
    /* 88D50 80098550 02004290 */  lbu        $v0, 0x2($v0)
    /* 88D54 80098554 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88D58 80098558 42110200 */  srl        $v0, $v0, 5
    /* 88D5C 8009855C 0800E003 */  jr         $ra
    /* 88D60 80098560 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80098540
