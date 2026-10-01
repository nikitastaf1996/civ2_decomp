.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A4B74, 0x4C

glabel func_800A4B74
    /* 95374 800A4B74 1C10828F */  lw         $v0, %gp_rel(D_801594F4)($gp)
    /* 95378 800A4B78 00000000 */  nop
    /* 9537C 800A4B7C 23208200 */  subu       $a0, $a0, $v0
    /* 95380 800A4B80 2010828F */  lw         $v0, %gp_rel(D_801594F8)($gp)
    /* 95384 800A4B84 00000000 */  nop
    /* 95388 800A4B88 2328A200 */  subu       $a1, $a1, $v0
    /* 9538C 800A4B8C 21288500 */  addu       $a1, $a0, $a1
    /* 95390 800A4B90 43280500 */  sra        $a1, $a1, 1
    /* 95394 800A4B94 23208500 */  subu       $a0, $a0, $a1
    /* 95398 800A4B98 1280033C */  lui        $v1, %hi(D_8011D52C)
    /* 9539C 800A4B9C 2CD56324 */  addiu      $v1, $v1, %lo(D_8011D52C)
    /* 953A0 800A4BA0 40100400 */  sll        $v0, $a0, 1
    /* 953A4 800A4BA4 21104400 */  addu       $v0, $v0, $a0
    /* 953A8 800A4BA8 80110200 */  sll        $v0, $v0, 6
    /* 953AC 800A4BAC 21104300 */  addu       $v0, $v0, $v1
    /* 953B0 800A4BB0 80280500 */  sll        $a1, $a1, 2
    /* 953B4 800A4BB4 2128A200 */  addu       $a1, $a1, $v0
    /* 953B8 800A4BB8 0800E003 */  jr         $ra
    /* 953BC 800A4BBC 6000A6AC */   sw        $a2, 0x60($a1)
endlabel func_800A4B74
