.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EE94, 0x50

glabel func_8007EE94
    /* 6F694 8007EE94 11008004 */  bltz       $a0, .L8007EEDC
    /* 6F698 8007EE98 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 6F69C 8007EE9C 40100400 */  sll        $v0, $a0, 1
    /* 6F6A0 8007EEA0 21104400 */  addu       $v0, $v0, $a0
    /* 6F6A4 8007EEA4 80100200 */  sll        $v0, $v0, 2
    /* 6F6A8 8007EEA8 21104400 */  addu       $v0, $v0, $a0
    /* 6F6AC 8007EEAC 40100200 */  sll        $v0, $v0, 1
    /* 6F6B0 8007EEB0 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6F6B4 8007EEB4 21082200 */  addu       $at, $at, $v0
    /* 6F6B8 8007EEB8 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 6F6BC 8007EEBC 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6F6C0 8007EEC0 21082200 */  addu       $at, $at, $v0
    /* 6F6C4 8007EEC4 B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 6F6C8 8007EEC8 00000000 */  nop
    /* 6F6CC 8007EECC FF7F6330 */  andi       $v1, $v1, 0x7FFF
    /* 6F6D0 8007EED0 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6F6D4 8007EED4 21082200 */  addu       $at, $at, $v0
    /* 6F6D8 8007EED8 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
  .L8007EEDC:
    /* 6F6DC 8007EEDC 0800E003 */  jr         $ra
    /* 6F6E0 8007EEE0 21100000 */   addu      $v0, $zero, $zero
endlabel func_8007EE94
