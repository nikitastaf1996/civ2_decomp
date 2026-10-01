.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095EF0, 0x24

glabel func_80095EF0
    /* 866F0 80095EF0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 866F4 80095EF4 03008010 */  beqz       $a0, .L80095F04
    /* 866F8 80095EF8 1800BFAF */   sw        $ra, 0x18($sp)
    /* 866FC 80095EFC 511C040C */  jal        func_80107144
    /* 86700 80095F00 1000A527 */   addiu     $a1, $sp, 0x10
  .L80095F04:
    /* 86704 80095F04 1800BF8F */  lw         $ra, 0x18($sp)
    /* 86708 80095F08 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8670C 80095F0C 0800E003 */  jr         $ra
    /* 86710 80095F10 00000000 */   nop
endlabel func_80095EF0
