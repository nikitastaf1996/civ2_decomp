.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EBD0, 0x50

glabel func_8001EBD0
    /* F3D0 8001EBD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F3D4 8001EBD4 1400BFAF */  sw         $ra, 0x14($sp)
    /* F3D8 8001EBD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* F3DC 8001EBDC A768000C */  jal        func_8001A29C
    /* F3E0 8001EBE0 21808000 */   addu      $s0, $a0, $zero
  .L8001EBE4:
    /* F3E4 8001EBE4 D568000C */  jal        func_8001A354
    /* F3E8 8001EBE8 FF000432 */   andi      $a0, $s0, 0xFF
    /* F3EC 8001EBEC 05004014 */  bnez       $v0, .L8001EC04
    /* F3F0 8001EBF0 00000000 */   nop
    /* F3F4 8001EBF4 E976000C */  jal        func_8001DBA4
    /* F3F8 8001EBF8 01000424 */   addiu     $a0, $zero, 0x1
    /* F3FC 8001EBFC F97A0008 */  j          .L8001EBE4
    /* F400 8001EC00 00000000 */   nop
  .L8001EC04:
    /* F404 8001EC04 E976000C */  jal        func_8001DBA4
    /* F408 8001EC08 01000424 */   addiu     $a0, $zero, 0x1
    /* F40C 8001EC0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* F410 8001EC10 1000B08F */  lw         $s0, 0x10($sp)
    /* F414 8001EC14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F418 8001EC18 0800E003 */  jr         $ra
    /* F41C 8001EC1C 00000000 */   nop
endlabel func_8001EBD0
