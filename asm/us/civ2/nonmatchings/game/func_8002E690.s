.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E690, 0x7C

glabel func_8002E690
    /* 1EE90 8002E690 40100400 */  sll        $v0, $a0, 1
    /* 1EE94 8002E694 21104400 */  addu       $v0, $v0, $a0
    /* 1EE98 8002E698 80100200 */  sll        $v0, $v0, 2
    /* 1EE9C 8002E69C 21104400 */  addu       $v0, $v0, $a0
    /* 1EEA0 8002E6A0 40200200 */  sll        $a0, $v0, 1
    /* 1EEA4 8002E6A4 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 1EEA8 8002E6A8 21082400 */  addu       $at, $at, $a0
    /* 1EEAC 8002E6AC C3D62290 */  lbu        $v0, %lo(D_8010D6C3)($at)
    /* 1EEB0 8002E6B0 00000000 */  nop
    /* 1EEB4 8002E6B4 0F004230 */  andi       $v0, $v0, 0xF
    /* 1EEB8 8002E6B8 0B000324 */  addiu      $v1, $zero, 0xB
    /* 1EEBC 8002E6BC 11004314 */  bne        $v0, $v1, .L8002E704
    /* 1EEC0 8002E6C0 00000000 */   nop
    /* 1EEC4 8002E6C4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1EEC8 8002E6C8 21082400 */  addu       $at, $at, $a0
    /* 1EECC 8002E6CC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1EED0 8002E6D0 00000000 */  nop
    /* 1EED4 8002E6D4 80100300 */  sll        $v0, $v1, 2
    /* 1EED8 8002E6D8 21104300 */  addu       $v0, $v0, $v1
    /* 1EEDC 8002E6DC 80100200 */  sll        $v0, $v0, 2
    /* 1EEE0 8002E6E0 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 1EEE4 8002E6E4 21082200 */  addu       $at, $at, $v0
    /* 1EEE8 8002E6E8 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 1EEEC 8002E6EC 07000224 */  addiu      $v0, $zero, 0x7
    /* 1EEF0 8002E6F0 04006210 */  beq        $v1, $v0, .L8002E704
    /* 1EEF4 8002E6F4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1EEF8 8002E6F8 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 1EEFC 8002E6FC 21082400 */  addu       $at, $at, $a0
    /* 1EF00 8002E700 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
  .L8002E704:
    /* 1EF04 8002E704 0800E003 */  jr         $ra
    /* 1EF08 8002E708 00000000 */   nop
endlabel func_8002E690
