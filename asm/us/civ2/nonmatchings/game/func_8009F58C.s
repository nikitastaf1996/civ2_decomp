.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F58C, 0xA4

glabel func_8009F58C
    /* 8FD8C 8009F58C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8FD90 8009F590 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8FD94 8009F594 6C05828F */  lw         $v0, %gp_rel(D_80158A44)($gp)
    /* 8FD98 8009F598 00000000 */  nop
    /* 8FD9C 8009F59C 06004004 */  bltz       $v0, .L8009F5B8
    /* 8FDA0 8009F5A0 00000000 */   nop
    /* 8FDA4 8009F5A4 6C058487 */  lh         $a0, %gp_rel(D_80158A44)($gp)
    /* 8FDA8 8009F5A8 7DF3030C */  jal        func_800FCDF4
    /* 8FDAC 8009F5AC 00000000 */   nop
    /* 8FDB0 8009F5B0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8FDB4 8009F5B4 6C0582AF */  sw         $v0, %gp_rel(D_80158A44)($gp)
  .L8009F5B8:
    /* 8FDB8 8009F5B8 7005838F */  lw         $v1, %gp_rel(D_80158A48)($gp)
    /* 8FDBC 8009F5BC 00000000 */  nop
    /* 8FDC0 8009F5C0 15006004 */  bltz       $v1, .L8009F618
    /* 8FDC4 8009F5C4 40100300 */   sll       $v0, $v1, 1
    /* 8FDC8 8009F5C8 21104300 */  addu       $v0, $v0, $v1
    /* 8FDCC 8009F5CC 80100200 */  sll        $v0, $v0, 2
    /* 8FDD0 8009F5D0 23104300 */  subu       $v0, $v0, $v1
    /* 8FDD4 8009F5D4 80290200 */  sll        $a1, $v0, 6
    /* 8FDD8 8009F5D8 1280013C */  lui        $at, %hi(D_8011E990)
    /* 8FDDC 8009F5DC 21082500 */  addu       $at, $at, $a1
    /* 8FDE0 8009F5E0 90E92384 */  lh         $v1, %lo(D_8011E990)($at)
    /* 8FDE4 8009F5E4 FE010224 */  addiu      $v0, $zero, 0x1FE
    /* 8FDE8 8009F5E8 0C006214 */  bne        $v1, $v0, .L8009F61C
    /* 8FDEC 8009F5EC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8FDF0 8009F5F0 01020224 */  addiu      $v0, $zero, 0x201
    /* 8FDF4 8009F5F4 1280013C */  lui        $at, %hi(D_8011E990)
    /* 8FDF8 8009F5F8 21082500 */  addu       $at, $at, $a1
    /* 8FDFC 8009F5FC 90E922A4 */  sh         $v0, %lo(D_8011E990)($at)
    /* 8FE00 8009F600 1280043C */  lui        $a0, %hi(D_8011E758)
    /* 8FE04 8009F604 58E78424 */  addiu      $a0, $a0, %lo(D_8011E758)
    /* 8FE08 8009F608 E9EA030C */  jal        func_800FABA4
    /* 8FE0C 8009F60C 2120A400 */   addu      $a0, $a1, $a0
    /* 8FE10 8009F610 511B040C */  jal        func_80106D44
    /* 8FE14 8009F614 21204000 */   addu      $a0, $v0, $zero
  .L8009F618:
    /* 8FE18 8009F618 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8009F61C:
    /* 8FE1C 8009F61C 700582AF */  sw         $v0, %gp_rel(D_80158A48)($gp)
    /* 8FE20 8009F620 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8FE24 8009F624 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8FE28 8009F628 0800E003 */  jr         $ra
    /* 8FE2C 8009F62C 00000000 */   nop
endlabel func_8009F58C
