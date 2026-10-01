.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B334, 0x94

glabel func_8007B334
    /* 6BB34 8007B334 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 6BB38 8007B338 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 6BB3C 8007B33C 00000000 */  nop
    /* 6BB40 8007B340 10004230 */  andi       $v0, $v0, 0x10
    /* 6BB44 8007B344 09004014 */  bnez       $v0, .L8007B36C
    /* 6BB48 8007B348 40180400 */   sll       $v1, $a0, 1
    /* 6BB4C 8007B34C 40100400 */  sll        $v0, $a0, 1
    /* 6BB50 8007B350 21104400 */  addu       $v0, $v0, $a0
    /* 6BB54 8007B354 80100200 */  sll        $v0, $v0, 2
    /* 6BB58 8007B358 21104400 */  addu       $v0, $v0, $a0
    /* 6BB5C 8007B35C 40100200 */  sll        $v0, $v0, 1
    /* 6BB60 8007B360 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 6BB64 8007B364 21082200 */  addu       $at, $at, $v0
    /* 6BB68 8007B368 BED620A0 */  sb         $zero, %lo(D_8010D6BE)($at)
  .L8007B36C:
    /* 6BB6C 8007B36C 21186400 */  addu       $v1, $v1, $a0
    /* 6BB70 8007B370 80180300 */  sll        $v1, $v1, 2
    /* 6BB74 8007B374 21186400 */  addu       $v1, $v1, $a0
    /* 6BB78 8007B378 40180300 */  sll        $v1, $v1, 1
    /* 6BB7C 8007B37C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6BB80 8007B380 21082300 */  addu       $at, $at, $v1
    /* 6BB84 8007B384 BAD62490 */  lbu        $a0, %lo(D_8010D6BA)($at)
    /* 6BB88 8007B388 00000000 */  nop
    /* 6BB8C 8007B38C 80100400 */  sll        $v0, $a0, 2
    /* 6BB90 8007B390 21104400 */  addu       $v0, $v0, $a0
    /* 6BB94 8007B394 80100200 */  sll        $v0, $v0, 2
    /* 6BB98 8007B398 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 6BB9C 8007B39C 21082200 */  addu       $at, $at, $v0
    /* 6BBA0 8007B3A0 8AD22480 */  lb         $a0, %lo(D_8010D28A)($at)
    /* 6BBA4 8007B3A4 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 6BBA8 8007B3A8 21082300 */  addu       $at, $at, $v1
    /* 6BBAC 8007B3AC BED62290 */  lbu        $v0, %lo(D_8010D6BE)($at)
    /* 6BBB0 8007B3B0 00000000 */  nop
    /* 6BBB4 8007B3B4 23208200 */  subu       $a0, $a0, $v0
    /* 6BBB8 8007B3B8 2A100400 */  slt        $v0, $zero, $a0
    /* 6BBBC 8007B3BC 23100200 */  negu       $v0, $v0
    /* 6BBC0 8007B3C0 0800E003 */  jr         $ra
    /* 6BBC4 8007B3C4 24104400 */   and       $v0, $v0, $a0
endlabel func_8007B334
