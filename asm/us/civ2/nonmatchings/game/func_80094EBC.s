.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094EBC, 0x44

glabel func_80094EBC
    /* 856BC 80094EBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 856C0 80094EC0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 856C4 80094EC4 7004848F */  lw         $a0, %gp_rel(D_80158948)($gp)
    /* 856C8 80094EC8 00000000 */  nop
    /* 856CC 80094ECC 07008010 */  beqz       $a0, .L80094EEC
    /* 856D0 80094ED0 00000000 */   nop
    /* 856D4 80094ED4 89D6030C */  jal        func_800F5A24
    /* 856D8 80094ED8 00000000 */   nop
    /* 856DC 80094EDC 7004848F */  lw         $a0, %gp_rel(D_80158948)($gp)
    /* 856E0 80094EE0 C6D5030C */  jal        func_800F5718
    /* 856E4 80094EE4 00000000 */   nop
    /* 856E8 80094EE8 700480AF */  sw         $zero, %gp_rel(D_80158948)($gp)
  .L80094EEC:
    /* 856EC 80094EEC 780480AF */  sw         $zero, %gp_rel(D_80158950)($gp)
    /* 856F0 80094EF0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 856F4 80094EF4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 856F8 80094EF8 0800E003 */  jr         $ra
    /* 856FC 80094EFC 00000000 */   nop
endlabel func_80094EBC
