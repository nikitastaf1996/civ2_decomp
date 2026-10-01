.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A13C4, 0x64

glabel func_800A13C4
    /* 91BC4 800A13C4 40010624 */  addiu      $a2, $zero, 0x140
    /* 91BC8 800A13C8 F0000324 */  addiu      $v1, $zero, 0xF0
    /* 91BCC 800A13CC 21200000 */  addu       $a0, $zero, $zero
    /* 91BD0 800A13D0 1680023C */  lui        $v0, %hi(D_80158878)
    /* 91BD4 800A13D4 7888428C */  lw         $v0, %lo(D_80158878)($v0)
    /* 91BD8 800A13D8 00000000 */  nop
    /* 91BDC 800A13DC 07004010 */  beqz       $v0, .L800A13FC
    /* 91BE0 800A13E0 21280000 */   addu      $a1, $zero, $zero
    /* 91BE4 800A13E4 1680023C */  lui        $v0, %hi(D_8015888C)
    /* 91BE8 800A13E8 8C88428C */  lw         $v0, %lo(D_8015888C)($v0)
    /* 91BEC 800A13EC 00000000 */  nop
    /* 91BF0 800A13F0 01004424 */  addiu      $a0, $v0, 0x1
    /* 91BF4 800A13F4 EF000324 */  addiu      $v1, $zero, 0xEF
    /* 91BF8 800A13F8 23186200 */  subu       $v1, $v1, $v0
  .L800A13FC:
    /* 91BFC 800A13FC 1280013C */  lui        $at, %hi(D_8011A5A6)
    /* 91C00 800A1400 A6A525A4 */  sh         $a1, %lo(D_8011A5A6)($at)
    /* 91C04 800A1404 1280013C */  lui        $at, %hi(D_8011A5A8)
    /* 91C08 800A1408 A8A524A4 */  sh         $a0, %lo(D_8011A5A8)($at)
    /* 91C0C 800A140C 1280013C */  lui        $at, %hi(D_8011A5AA)
    /* 91C10 800A1410 AAA526A4 */  sh         $a2, %lo(D_8011A5AA)($at)
    /* 91C14 800A1414 21108300 */  addu       $v0, $a0, $v1
    /* 91C18 800A1418 1280013C */  lui        $at, %hi(D_8011A5AC)
    /* 91C1C 800A141C ACA522A4 */  sh         $v0, %lo(D_8011A5AC)($at)
    /* 91C20 800A1420 0800E003 */  jr         $ra
    /* 91C24 800A1424 00000000 */   nop
endlabel func_800A13C4
