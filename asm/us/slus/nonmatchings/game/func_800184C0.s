.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800184C0, 0x50

glabel func_800184C0
    /* 8CC0 800184C0 21280000 */  addu       $a1, $zero, $zero
    /* 8CC4 800184C4 0580063C */  lui        $a2, %hi(D_8004C41C)
    /* 8CC8 800184C8 1CC4C624 */  addiu      $a2, $a2, %lo(D_8004C41C)
    /* 8CCC 800184CC 00140500 */  sll        $v0, $a1, 16
  .L800184D0:
    /* 8CD0 800184D0 C31A0200 */  sra        $v1, $v0, 11
    /* 8CD4 800184D4 0580013C */  lui        $at, %hi(D_8004C41C)
    /* 8CD8 800184D8 21082300 */  addu       $at, $at, $v1
    /* 8CDC 800184DC 1CC4228C */  lw         $v0, %lo(D_8004C41C)($at)
    /* 8CE0 800184E0 00000000 */  nop
    /* 8CE4 800184E4 03004414 */  bne        $v0, $a0, .L800184F4
    /* 8CE8 800184E8 0100A224 */   addiu     $v0, $a1, 0x1
    /* 8CEC 800184EC 42610008 */  j          .L80018508
    /* 8CF0 800184F0 21106600 */   addu      $v0, $v1, $a2
  .L800184F4:
    /* 8CF4 800184F4 21284000 */  addu       $a1, $v0, $zero
    /* 8CF8 800184F8 00140200 */  sll        $v0, $v0, 16
    /* 8CFC 800184FC F4FF4018 */  blez       $v0, .L800184D0
    /* 8D00 80018500 00140500 */   sll       $v0, $a1, 16
    /* 8D04 80018504 21100000 */  addu       $v0, $zero, $zero
  .L80018508:
    /* 8D08 80018508 0800E003 */  jr         $ra
    /* 8D0C 8001850C 00000000 */   nop
endlabel func_800184C0
