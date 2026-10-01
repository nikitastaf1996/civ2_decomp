.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002AA20, 0x188

glabel func_8002AA20
    /* 1B220 8002AA20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B224 8002AA24 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1B228 8002AA28 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B22C 8002AA2C 00240400 */  sll        $a0, $a0, 16
    /* 1B230 8002AA30 03240400 */  sra        $a0, $a0, 16
    /* 1B234 8002AA34 80800400 */  sll        $s0, $a0, 2
    /* 1B238 8002AA38 21800402 */  addu       $s0, $s0, $a0
    /* 1B23C 8002AA3C 80801000 */  sll        $s0, $s0, 2
    /* 1B240 8002AA40 0480023C */  lui        $v0, %hi(D_80046F1C)
    /* 1B244 8002AA44 1C6F4224 */  addiu      $v0, $v0, %lo(D_80046F1C)
    /* 1B248 8002AA48 21800202 */  addu       $s0, $s0, $v0
    /* 1B24C 8002AA4C F664000C */  jal        func_800193D8
    /* 1B250 8002AA50 21200002 */   addu      $a0, $s0, $zero
    /* 1B254 8002AA54 21200002 */  addu       $a0, $s0, $zero
    /* 1B258 8002AA58 E1A5000C */  jal        func_80029784
    /* 1B25C 8002AA5C 21280000 */   addu      $a1, $zero, $zero
    /* 1B260 8002AA60 0580013C */  lui        $at, %hi(D_8005653C)
    /* 1B264 8002AA64 3C6520A4 */  sh         $zero, %lo(D_8005653C)($at)
    /* 1B268 8002AA68 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B26C 8002AA6C 186520A4 */  sh         $zero, %lo(D_80056518)($at)
    /* 1B270 8002AA70 04001024 */  addiu      $s0, $zero, 0x4
  .L8002AA74:
    /* 1B274 8002AA74 E976000C */  jal        func_8001DBA4
    /* 1B278 8002AA78 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B27C 8002AA7C 0580043C */  lui        $a0, %hi(D_8005653C)
    /* 1B280 8002AA80 3C658494 */  lhu        $a0, %lo(D_8005653C)($a0)
    /* 1B284 8002AA84 1FAA000C */  jal        func_8002A87C
    /* 1B288 8002AA88 00000000 */   nop
    /* 1B28C 8002AA8C 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B290 8002AA90 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B294 8002AA94 00000000 */  nop
    /* 1B298 8002AA98 40004230 */  andi       $v0, $v0, 0x40
    /* 1B29C 8002AA9C 0A004010 */  beqz       $v0, .L8002AAC8
    /* 1B2A0 8002AAA0 00000000 */   nop
    /* 1B2A4 8002AAA4 CE6D000C */  jal        func_8001B738
    /* 1B2A8 8002AAA8 07000424 */   addiu     $a0, $zero, 0x7
    /* 1B2AC 8002AAAC 0580023C */  lui        $v0, %hi(D_8005653C)
    /* 1B2B0 8002AAB0 3C654294 */  lhu        $v0, %lo(D_8005653C)($v0)
    /* 1B2B4 8002AAB4 00000000 */  nop
    /* 1B2B8 8002AAB8 0B004014 */  bnez       $v0, .L8002AAE8
    /* 1B2BC 8002AABC 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B2C0 8002AAC0 E5AA0008 */  j          .L8002AB94
    /* 1B2C4 8002AAC4 00000000 */   nop
  .L8002AAC8:
    /* 1B2C8 8002AAC8 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B2CC 8002AACC 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B2D0 8002AAD0 00000000 */  nop
    /* 1B2D4 8002AAD4 10004230 */  andi       $v0, $v0, 0x10
    /* 1B2D8 8002AAD8 07004010 */  beqz       $v0, .L8002AAF8
    /* 1B2DC 8002AADC 00000000 */   nop
    /* 1B2E0 8002AAE0 CE6D000C */  jal        func_8001B738
    /* 1B2E4 8002AAE4 05000424 */   addiu     $a0, $zero, 0x5
  .L8002AAE8:
    /* 1B2E8 8002AAE8 7AAA000C */  jal        func_8002A9E8
    /* 1B2EC 8002AAEC 00000000 */   nop
    /* 1B2F0 8002AAF0 E5AA0008 */  j          .L8002AB94
    /* 1B2F4 8002AAF4 21100000 */   addu      $v0, $zero, $zero
  .L8002AAF8:
    /* 1B2F8 8002AAF8 0580023C */  lui        $v0, %hi(D_80056518)
    /* 1B2FC 8002AAFC 18654294 */  lhu        $v0, %lo(D_80056518)($v0)
    /* 1B300 8002AB00 00000000 */  nop
    /* 1B304 8002AB04 1B004014 */  bnez       $v0, .L8002AB74
    /* 1B308 8002AB08 00000000 */   nop
    /* 1B30C 8002AB0C 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B310 8002AB10 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B314 8002AB14 00000000 */  nop
    /* 1B318 8002AB18 00204230 */  andi       $v0, $v0, 0x2000
    /* 1B31C 8002AB1C 07004010 */  beqz       $v0, .L8002AB3C
    /* 1B320 8002AB20 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B324 8002AB24 0580013C */  lui        $at, %hi(D_8005653C)
    /* 1B328 8002AB28 3C6522A4 */  sh         $v0, %lo(D_8005653C)($at)
    /* 1B32C 8002AB2C 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B330 8002AB30 186530A4 */  sh         $s0, %lo(D_80056518)($at)
    /* 1B334 8002AB34 CE6D000C */  jal        func_8001B738
    /* 1B338 8002AB38 02000424 */   addiu     $a0, $zero, 0x2
  .L8002AB3C:
    /* 1B33C 8002AB3C 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B340 8002AB40 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B344 8002AB44 00000000 */  nop
    /* 1B348 8002AB48 00804230 */  andi       $v0, $v0, 0x8000
    /* 1B34C 8002AB4C C9FF4010 */  beqz       $v0, .L8002AA74
    /* 1B350 8002AB50 00000000 */   nop
    /* 1B354 8002AB54 0580013C */  lui        $at, %hi(D_8005653C)
    /* 1B358 8002AB58 3C6520A4 */  sh         $zero, %lo(D_8005653C)($at)
    /* 1B35C 8002AB5C 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B360 8002AB60 186530A4 */  sh         $s0, %lo(D_80056518)($at)
    /* 1B364 8002AB64 CE6D000C */  jal        func_8001B738
    /* 1B368 8002AB68 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B36C 8002AB6C 9DAA0008 */  j          .L8002AA74
    /* 1B370 8002AB70 00000000 */   nop
  .L8002AB74:
    /* 1B374 8002AB74 0580023C */  lui        $v0, %hi(D_80056518)
    /* 1B378 8002AB78 18654294 */  lhu        $v0, %lo(D_80056518)($v0)
    /* 1B37C 8002AB7C 00000000 */  nop
    /* 1B380 8002AB80 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1B384 8002AB84 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B388 8002AB88 186522A4 */  sh         $v0, %lo(D_80056518)($at)
    /* 1B38C 8002AB8C 9DAA0008 */  j          .L8002AA74
    /* 1B390 8002AB90 00000000 */   nop
  .L8002AB94:
    /* 1B394 8002AB94 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1B398 8002AB98 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B39C 8002AB9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B3A0 8002ABA0 0800E003 */  jr         $ra
    /* 1B3A4 8002ABA4 00000000 */   nop
endlabel func_8002AA20
