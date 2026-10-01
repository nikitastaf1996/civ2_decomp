.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DEC0, 0x144

glabel func_8004DEC0
    /* 3E6C0 8004DEC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E6C4 8004DEC4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3E6C8 8004DEC8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E6CC 8004DECC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E6D0 8004DED0 21888000 */  addu       $s1, $a0, $zero
    /* 3E6D4 8004DED4 2180A000 */  addu       $s0, $a1, $zero
    /* 3E6D8 8004DED8 21200002 */  addu       $a0, $s0, $zero
    /* 3E6DC 8004DEDC 21282002 */  addu       $a1, $s1, $zero
    /* 3E6E0 8004DEE0 A275030C */  jal        func_800DD688
    /* 3E6E4 8004DEE4 04400624 */   addiu     $a2, $zero, 0x4004
    /* 3E6E8 8004DEE8 21200002 */  addu       $a0, $s0, $zero
    /* 3E6EC 8004DEEC E175030C */  jal        func_800DD784
    /* 3E6F0 8004DEF0 21282002 */   addu      $a1, $s1, $zero
    /* 3E6F4 8004DEF4 21204000 */  addu       $a0, $v0, $zero
    /* 3E6F8 8004DEF8 21280000 */  addu       $a1, $zero, $zero
    /* 3E6FC 8004DEFC F53A030C */  jal        func_800CEBD4
    /* 3E700 8004DF00 32000624 */   addiu     $a2, $zero, 0x32
    /* 3E704 8004DF04 21200002 */  addu       $a0, $s0, $zero
    /* 3E708 8004DF08 21282002 */  addu       $a1, $s1, $zero
    /* 3E70C 8004DF0C EF75030C */  jal        func_800DD7BC
    /* 3E710 8004DF10 21304000 */   addu      $a2, $v0, $zero
    /* 3E714 8004DF14 21202002 */  addu       $a0, $s1, $zero
    /* 3E718 8004DF18 6928010C */  jal        func_8004A1A4
    /* 3E71C 8004DF1C 21280002 */   addu      $a1, $s0, $zero
    /* 3E720 8004DF20 40101000 */  sll        $v0, $s0, 1
    /* 3E724 8004DF24 21105000 */  addu       $v0, $v0, $s0
    /* 3E728 8004DF28 80100200 */  sll        $v0, $v0, 2
    /* 3E72C 8004DF2C 23105000 */  subu       $v0, $v0, $s0
    /* 3E730 8004DF30 00110200 */  sll        $v0, $v0, 4
    /* 3E734 8004DF34 23105000 */  subu       $v0, $v0, $s0
    /* 3E738 8004DF38 C0100200 */  sll        $v0, $v0, 3
    /* 3E73C 8004DF3C 1180013C */  lui        $at, %hi(D_801176B1)
    /* 3E740 8004DF40 21082200 */  addu       $at, $at, $v0
    /* 3E744 8004DF44 B17620A0 */  sb         $zero, %lo(D_801176B1)($at)
    /* 3E748 8004DF48 40101100 */  sll        $v0, $s1, 1
    /* 3E74C 8004DF4C 21105100 */  addu       $v0, $v0, $s1
    /* 3E750 8004DF50 80100200 */  sll        $v0, $v0, 2
    /* 3E754 8004DF54 23105100 */  subu       $v0, $v0, $s1
    /* 3E758 8004DF58 00110200 */  sll        $v0, $v0, 4
    /* 3E75C 8004DF5C 23105100 */  subu       $v0, $v0, $s1
    /* 3E760 8004DF60 C0100200 */  sll        $v0, $v0, 3
    /* 3E764 8004DF64 1180043C */  lui        $a0, %hi(D_80117A56)
    /* 3E768 8004DF68 567A8424 */  addiu      $a0, $a0, %lo(D_80117A56)
    /* 3E76C 8004DF6C 40181000 */  sll        $v1, $s0, 1
    /* 3E770 8004DF70 21104400 */  addu       $v0, $v0, $a0
    /* 3E774 8004DF74 21186200 */  addu       $v1, $v1, $v0
    /* 3E778 8004DF78 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 3E77C 8004DF7C 62A24294 */  lhu        $v0, %lo(D_8011A262)($v0)
    /* 3E780 8004DF80 00000000 */  nop
    /* 3E784 8004DF84 000062A4 */  sh         $v0, 0x0($v1)
    /* 3E788 8004DF88 21202002 */  addu       $a0, $s1, $zero
    /* 3E78C 8004DF8C 4130010C */  jal        func_8004C104
    /* 3E790 8004DF90 21280002 */   addu      $a1, $s0, $zero
    /* 3E794 8004DF94 8A54020C */  jal        func_80095228
    /* 3E798 8004DF98 21200002 */   addu      $a0, $s0, $zero
    /* 3E79C 8004DF9C 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3E7A0 8004DFA0 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3E7A4 8004DFA4 A587030C */  jal        func_800E1E94
    /* 3E7A8 8004DFA8 21284000 */   addu      $a1, $v0, $zero
    /* 3E7AC 8004DFAC 8A54020C */  jal        func_80095228
    /* 3E7B0 8004DFB0 21202002 */   addu      $a0, $s1, $zero
    /* 3E7B4 8004DFB4 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3E7B8 8004DFB8 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3E7BC 8004DFBC A587030C */  jal        func_800E1E94
    /* 3E7C0 8004DFC0 21284000 */   addu      $a1, $v0, $zero
    /* 3E7C4 8004DFC4 AF8D020C */  jal        func_800A36BC
    /* 3E7C8 8004DFC8 02000424 */   addiu     $a0, $zero, 0x2
    /* 3E7CC 8004DFCC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E7D0 8004DFD0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E7D4 8004DFD4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E7D8 8004DFD8 A5790524 */  addiu      $a1, $zero, 0x79A5
    /* 3E7DC 8004DFDC 1380073C */  lui        $a3, %hi(D_80135948)
    /* 3E7E0 8004DFE0 4859E724 */  addiu      $a3, $a3, %lo(D_80135948)
    /* 3E7E4 8004DFE4 18E3020C */  jal        func_800B8C60
    /* 3E7E8 8004DFE8 21300000 */   addu      $a2, $zero, $zero
    /* 3E7EC 8004DFEC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3E7F0 8004DFF0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E7F4 8004DFF4 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E7F8 8004DFF8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E7FC 8004DFFC 0800E003 */  jr         $ra
    /* 3E800 8004E000 00000000 */   nop
endlabel func_8004DEC0
