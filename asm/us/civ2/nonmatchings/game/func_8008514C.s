.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008514C, 0x24

glabel func_8008514C
    /* 7594C 8008514C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 75950 80085150 1000BFAF */  sw         $ra, 0x10($sp)
    /* 75954 80085154 002C0500 */  sll        $a1, $a1, 16
    /* 75958 80085158 D3E3030C */  jal        func_800F8F4C
    /* 7595C 8008515C 032C0500 */   sra       $a1, $a1, 16
    /* 75960 80085160 1000BF8F */  lw         $ra, 0x10($sp)
    /* 75964 80085164 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 75968 80085168 0800E003 */  jr         $ra
    /* 7596C 8008516C 00000000 */   nop
endlabel func_8008514C
