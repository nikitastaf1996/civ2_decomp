.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EB70, 0x60

glabel func_8001EB70
    /* F370 8001EB70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F374 8001EB74 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* F378 8001EB78 1800B2AF */  sw         $s2, 0x18($sp)
    /* F37C 8001EB7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* F380 8001EB80 1000B0AF */  sw         $s0, 0x10($sp)
    /* F384 8001EB84 21808000 */  addu       $s0, $a0, $zero
    /* F388 8001EB88 2190C000 */  addu       $s2, $a2, $zero
    /* F38C 8001EB8C 008C0500 */  sll        $s1, $a1, 16
    /* F390 8001EB90 038C1100 */  sra        $s1, $s1, 16
    /* F394 8001EB94 CC78000C */  jal        func_8001E330
    /* F398 8001EB98 21202002 */   addu      $a0, $s1, $zero
    /* F39C 8001EB9C 00841000 */  sll        $s0, $s0, 16
    /* F3A0 8001EBA0 00941200 */  sll        $s2, $s2, 16
    /* F3A4 8001EBA4 03241000 */  sra        $a0, $s0, 16
    /* F3A8 8001EBA8 21282002 */  addu       $a1, $s1, $zero
    /* F3AC 8001EBAC 8378000C */  jal        func_8001E20C
    /* F3B0 8001EBB0 03341200 */   sra       $a2, $s2, 16
    /* F3B4 8001EBB4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F3B8 8001EBB8 1800B28F */  lw         $s2, 0x18($sp)
    /* F3BC 8001EBBC 1400B18F */  lw         $s1, 0x14($sp)
    /* F3C0 8001EBC0 1000B08F */  lw         $s0, 0x10($sp)
    /* F3C4 8001EBC4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F3C8 8001EBC8 0800E003 */  jr         $ra
    /* F3CC 8001EBCC 00000000 */   nop
endlabel func_8001EB70
