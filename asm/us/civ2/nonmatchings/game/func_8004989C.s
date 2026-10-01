.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004989C, 0x7C

glabel func_8004989C
    /* 3A09C 8004989C 1280033C */  lui        $v1, %hi(D_8011A268)
    /* 3A0A0 800498A0 68A26384 */  lh         $v1, %lo(D_8011A268)($v1)
    /* 3A0A4 800498A4 00000000 */  nop
    /* 3A0A8 800498A8 40100300 */  sll        $v0, $v1, 1
    /* 3A0AC 800498AC 21104300 */  addu       $v0, $v0, $v1
    /* 3A0B0 800498B0 80100200 */  sll        $v0, $v0, 2
    /* 3A0B4 800498B4 21104300 */  addu       $v0, $v0, $v1
    /* 3A0B8 800498B8 40200200 */  sll        $a0, $v0, 1
    /* 3A0BC 800498BC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 3A0C0 800498C0 21082400 */  addu       $at, $at, $a0
    /* 3A0C4 800498C4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 3A0C8 800498C8 00000000 */  nop
    /* 3A0CC 800498CC 80100300 */  sll        $v0, $v1, 2
    /* 3A0D0 800498D0 21104300 */  addu       $v0, $v0, $v1
    /* 3A0D4 800498D4 80100200 */  sll        $v0, $v0, 2
    /* 3A0D8 800498D8 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 3A0DC 800498DC 21082200 */  addu       $at, $at, $v0
    /* 3A0E0 800498E0 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 3A0E4 800498E4 05000224 */  addiu      $v0, $zero, 0x5
    /* 3A0E8 800498E8 09006214 */  bne        $v1, $v0, .L80049910
    /* 3A0EC 800498EC 00000000 */   nop
    /* 3A0F0 800498F0 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 3A0F4 800498F4 21082400 */  addu       $at, $at, $a0
    /* 3A0F8 800498F8 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 3A0FC 800498FC 00000000 */  nop
    /* 3A100 80049900 00804234 */  ori        $v0, $v0, 0x8000
    /* 3A104 80049904 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 3A108 80049908 21082400 */  addu       $at, $at, $a0
    /* 3A10C 8004990C B8D622A4 */  sh         $v0, %lo(D_8010D6B8)($at)
  .L80049910:
    /* 3A110 80049910 0800E003 */  jr         $ra
    /* 3A114 80049914 00000000 */   nop
endlabel func_8004989C
