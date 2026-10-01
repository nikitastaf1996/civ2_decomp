.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3A04, 0xA0

glabel func_800A3A04
    /* 94204 800A3A04 08FFBD27 */  addiu      $sp, $sp, -0xF8
    /* 94208 800A3A08 F400BFAF */  sw         $ra, 0xF4($sp)
    /* 9420C 800A3A0C F000B0AF */  sw         $s0, 0xF0($sp)
    /* 94210 800A3A10 21808000 */  addu       $s0, $a0, $zero
    /* 94214 800A3A14 BE0580A3 */  sb         $zero, %gp_rel(D_80158A96)($gp)
    /* 94218 800A3A18 1E0605A2 */  sb         $a1, 0x61E($s0)
    /* 9421C 800A3A1C 1D0606A2 */  sb         $a2, 0x61D($s0)
    /* 94220 800A3A20 1D060392 */  lbu        $v1, 0x61D($s0)
    /* 94224 800A3A24 00000000 */  nop
    /* 94228 800A3A28 40100300 */  sll        $v0, $v1, 1
    /* 9422C 800A3A2C 21104300 */  addu       $v0, $v0, $v1
    /* 94230 800A3A30 80100200 */  sll        $v0, $v0, 2
    /* 94234 800A3A34 23104300 */  subu       $v0, $v0, $v1
    /* 94238 800A3A38 00110200 */  sll        $v0, $v0, 4
    /* 9423C 800A3A3C 23104300 */  subu       $v0, $v0, $v1
    /* 94240 800A3A40 C0100200 */  sll        $v0, $v0, 3
    /* 94244 800A3A44 1180013C */  lui        $at, %hi(D_80117698)
    /* 94248 800A3A48 21082200 */  addu       $at, $at, $v0
    /* 9424C 800A3A4C 98762290 */  lbu        $v0, %lo(D_80117698)($at)
    /* 94250 800A3A50 00000000 */  nop
    /* 94254 800A3A54 1C0602A2 */  sb         $v0, 0x61C($s0)
    /* 94258 800A3A58 1D060492 */  lbu        $a0, 0x61D($s0)
    /* 9425C 800A3A5C 1663030C */  jal        func_800D8C58
    /* 94260 800A3A60 00000000 */   nop
    /* 94264 800A3A64 1F0602A2 */  sb         $v0, 0x61F($s0)
    /* 94268 800A3A68 EC8E020C */  jal        func_800A3BB0
    /* 9426C 800A3A6C 21200002 */   addu      $a0, $s0, $zero
    /* 94270 800A3A70 00140200 */  sll        $v0, $v0, 16
    /* 94274 800A3A74 06004010 */  beqz       $v0, .L800A3A90
    /* 94278 800A3A78 21100000 */   addu      $v0, $zero, $zero
    /* 9427C 800A3A7C 2F8F020C */  jal        func_800A3CBC
    /* 94280 800A3A80 21200002 */   addu      $a0, $s0, $zero
    /* 94284 800A3A84 0A92020C */  jal        func_800A4828
    /* 94288 800A3A88 21200002 */   addu      $a0, $s0, $zero
    /* 9428C 800A3A8C 01000224 */  addiu      $v0, $zero, 0x1
  .L800A3A90:
    /* 94290 800A3A90 F400BF8F */  lw         $ra, 0xF4($sp)
    /* 94294 800A3A94 F000B08F */  lw         $s0, 0xF0($sp)
    /* 94298 800A3A98 F800BD27 */  addiu      $sp, $sp, 0xF8
    /* 9429C 800A3A9C 0800E003 */  jr         $ra
    /* 942A0 800A3AA0 00000000 */   nop
endlabel func_800A3A04
