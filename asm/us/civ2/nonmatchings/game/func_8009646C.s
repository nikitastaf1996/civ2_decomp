.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009646C, 0x5C

glabel func_8009646C
    /* 86C6C 8009646C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 86C70 80096470 1400BFAF */  sw         $ra, 0x14($sp)
    /* 86C74 80096474 7C57020C */  jal        func_80095DF0
    /* 86C78 80096478 1000B0AF */   sw        $s0, 0x10($sp)
    /* 86C7C 8009647C 0D004010 */  beqz       $v0, .L800964B4
    /* 86C80 80096480 00000000 */   nop
    /* 86C84 80096484 0400508C */  lw         $s0, 0x4($v0)
    /* 86C88 80096488 0A0040A4 */  sh         $zero, 0xA($v0)
    /* 86C8C 8009648C 21D9030C */  jal        func_800F6484
    /* 86C90 80096490 21200002 */   addu      $a0, $s0, $zero
    /* 86C94 80096494 1680013C */  lui        $at, %hi(D_801592CC)
    /* 86C98 80096498 CC9222AC */  sw         $v0, %lo(D_801592CC)($at)
    /* 86C9C 8009649C 24D9030C */  jal        func_800F6490
    /* 86CA0 800964A0 21200002 */   addu      $a0, $s0, $zero
    /* 86CA4 800964A4 00140200 */  sll        $v0, $v0, 16
    /* 86CA8 800964A8 21200002 */  addu       $a0, $s0, $zero
    /* 86CAC 800964AC A5DA030C */  jal        func_800F6A94
    /* 86CB0 800964B0 032C0200 */   sra       $a1, $v0, 16
  .L800964B4:
    /* 86CB4 800964B4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 86CB8 800964B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 86CBC 800964BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 86CC0 800964C0 0800E003 */  jr         $ra
    /* 86CC4 800964C4 00000000 */   nop
endlabel func_8009646C
