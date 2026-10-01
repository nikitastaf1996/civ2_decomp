.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8BE0, 0x78

glabel func_800D8BE0
    /* C93E0 800D8BE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C93E4 800D8BE4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C93E8 800D8BE8 1800B2AF */  sw         $s2, 0x18($sp)
    /* C93EC 800D8BEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* C93F0 800D8BF0 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C93F4 800D8BF4 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C93F8 800D8BF8 2342030C */  jal        func_800D088C
    /* C93FC 800D8BFC 1000B0AF */   sw        $s0, 0x10($sp)
    /* C9400 800D8C00 1280043C */  lui        $a0, %hi(D_80122BE0)
    /* C9404 800D8C04 E02B8424 */  addiu      $a0, $a0, %lo(D_80122BE0)
    /* C9408 800D8C08 9AE0030C */  jal        func_800F8268
    /* C940C 800D8C0C 03001024 */   addiu     $s0, $zero, 0x3
    /* C9410 800D8C10 1280043C */  lui        $a0, %hi(D_80122C0C)
    /* C9414 800D8C14 0C2C8424 */  addiu      $a0, $a0, %lo(D_80122C0C)
    /* C9418 800D8C18 9AE0030C */  jal        func_800F8268
    /* C941C 800D8C1C FFFF1224 */   addiu     $s2, $zero, -0x1
    /* C9420 800D8C20 1280113C */  lui        $s1, %hi(D_80122C38)
    /* C9424 800D8C24 382C3126 */  addiu      $s1, $s1, %lo(D_80122C38)
  .L800D8C28:
    /* C9428 800D8C28 FCEC030C */  jal        func_800FB3F0
    /* C942C 800D8C2C 21202002 */   addu      $a0, $s1, $zero
    /* C9430 800D8C30 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* C9434 800D8C34 FCFF1216 */  bne        $s0, $s2, .L800D8C28
    /* C9438 800D8C38 94003126 */   addiu     $s1, $s1, 0x94
    /* C943C 800D8C3C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C9440 800D8C40 1800B28F */  lw         $s2, 0x18($sp)
    /* C9444 800D8C44 1400B18F */  lw         $s1, 0x14($sp)
    /* C9448 800D8C48 1000B08F */  lw         $s0, 0x10($sp)
    /* C944C 800D8C4C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C9450 800D8C50 0800E003 */  jr         $ra
    /* C9454 800D8C54 00000000 */   nop
endlabel func_800D8BE0
