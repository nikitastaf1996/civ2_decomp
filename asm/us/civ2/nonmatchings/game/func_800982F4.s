.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800982F4, 0x30

glabel func_800982F4
    /* 88AF4 800982F4 43200400 */  sra        $a0, $a0, 1
    /* 88AF8 800982F8 F004828F */  lw         $v0, %gp_rel(D_801589C8)($gp)
    /* 88AFC 800982FC 00000000 */  nop
    /* 88B00 80098300 1800A200 */  mult       $a1, $v0
    /* 88B04 80098304 12300000 */  mflo       $a2
    /* 88B08 80098308 21208600 */  addu       $a0, $a0, $a2
    /* 88B0C 8009830C 40100400 */  sll        $v0, $a0, 1
    /* 88B10 80098310 21104400 */  addu       $v0, $v0, $a0
    /* 88B14 80098314 40100200 */  sll        $v0, $v0, 1
    /* 88B18 80098318 D804838F */  lw         $v1, %gp_rel(D_801589B0)($gp)
    /* 88B1C 8009831C 0800E003 */  jr         $ra
    /* 88B20 80098320 21104300 */   addu      $v0, $v0, $v1
endlabel func_800982F4
