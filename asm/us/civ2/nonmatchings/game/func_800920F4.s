.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800920F4, 0x28

glabel func_800920F4
    /* 828F4 800920F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 828F8 800920F8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 828FC 800920FC 1280043C */  lui        $a0, %hi(D_8011ABF8)
    /* 82900 80092100 F8AB8424 */  addiu      $a0, $a0, %lo(D_8011ABF8)
    /* 82904 80092104 4CE1030C */  jal        func_800F8530
    /* 82908 80092108 02000524 */   addiu     $a1, $zero, 0x2
    /* 8290C 8009210C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 82910 80092110 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 82914 80092114 0800E003 */  jr         $ra
    /* 82918 80092118 00000000 */   nop
endlabel func_800920F4
