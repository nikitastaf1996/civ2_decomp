.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009800C, 0x34

glabel func_8009800C
    /* 8880C 8009800C 1680023C */  lui        $v0, %hi(D_80159338)
    /* 88810 80098010 3893428C */  lw         $v0, %lo(D_80159338)($v0)
    /* 88814 80098014 1280043C */  lui        $a0, %hi(D_8011C310)
    /* 88818 80098018 10C38424 */  addiu      $a0, $a0, %lo(D_8011C310)
    /* 8881C 8009801C FF7F4330 */  andi       $v1, $v0, 0x7FFF
    /* 88820 80098020 000083A4 */  sh         $v1, 0x0($a0)
    /* 88824 80098024 00008294 */  lhu        $v0, 0x0($a0)
    /* 88828 80098028 00000000 */  nop
    /* 8882C 8009802C 02004014 */  bnez       $v0, .L80098038
    /* 88830 80098030 01006224 */   addiu     $v0, $v1, 0x1
    /* 88834 80098034 000082A4 */  sh         $v0, 0x0($a0)
  .L80098038:
    /* 88838 80098038 0800E003 */  jr         $ra
    /* 8883C 8009803C 00000000 */   nop
endlabel func_8009800C
