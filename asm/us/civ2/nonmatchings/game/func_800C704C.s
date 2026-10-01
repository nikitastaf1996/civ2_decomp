.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C704C, 0x3C

glabel func_800C704C
    /* B784C 800C704C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7850 800C7050 3175A228 */  slti       $v0, $a1, 0x7531
    /* B7854 800C7054 02004014 */  bnez       $v0, .L800C7060
    /* B7858 800C7058 1000BFAF */   sw        $ra, 0x10($sp)
    /* B785C 800C705C 30750524 */  addiu      $a1, $zero, 0x7530
  .L800C7060:
    /* B7860 800C7060 D31B030C */  jal        func_800C6F4C
    /* B7864 800C7064 00000000 */   nop
    /* B7868 800C7068 1280043C */  lui        $a0, %hi(D_80121340)
    /* B786C 800C706C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B7870 800C7070 731B030C */  jal        func_800C6DCC
    /* B7874 800C7074 43010524 */   addiu     $a1, $zero, 0x143
    /* B7878 800C7078 1000BF8F */  lw         $ra, 0x10($sp)
    /* B787C 800C707C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7880 800C7080 0800E003 */  jr         $ra
    /* B7884 800C7084 00000000 */   nop
endlabel func_800C704C
