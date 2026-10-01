.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C58A8, 0x30

glabel func_800C58A8
    /* B60A8 800C58A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B60AC 800C58AC 1280043C */  lui        $a0, %hi(D_801210C4)
    /* B60B0 800C58B0 C4108424 */  addiu      $a0, $a0, %lo(D_801210C4)
    /* B60B4 800C58B4 01000224 */  addiu      $v0, $zero, 0x1
    /* B60B8 800C58B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B60BC 800C58BC 000082AC */  sw         $v0, 0x0($a0)
    /* B60C0 800C58C0 31DE030C */  jal        func_800F78C4
    /* B60C4 800C58C4 ECFC8424 */   addiu     $a0, $a0, -0x314
    /* B60C8 800C58C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* B60CC 800C58CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B60D0 800C58D0 0800E003 */  jr         $ra
    /* B60D4 800C58D4 00000000 */   nop
endlabel func_800C58A8
