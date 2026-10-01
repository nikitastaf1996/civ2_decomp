.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B5E44, 0x24

glabel func_800B5E44
    /* A6644 800B5E44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A6648 800B5E48 03008010 */  beqz       $a0, .L800B5E58
    /* A664C 800B5E4C 1000BFAF */   sw        $ra, 0x10($sp)
    /* A6650 800B5E50 A8DB020C */  jal        func_800B6EA0
    /* A6654 800B5E54 00000000 */   nop
  .L800B5E58:
    /* A6658 800B5E58 1000BF8F */  lw         $ra, 0x10($sp)
    /* A665C 800B5E5C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A6660 800B5E60 0800E003 */  jr         $ra
    /* A6664 800B5E64 00000000 */   nop
endlabel func_800B5E44
