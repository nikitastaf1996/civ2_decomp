.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E308, 0x7C

glabel func_8007E308
    /* 6EB08 8007E308 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6EB0C 8007E30C 19008004 */  bltz       $a0, .L8007E374
    /* 6EB10 8007E310 1000BFAF */   sw        $ra, 0x10($sp)
    /* 6EB14 8007E314 40100400 */  sll        $v0, $a0, 1
    /* 6EB18 8007E318 21104400 */  addu       $v0, $v0, $a0
    /* 6EB1C 8007E31C 80100200 */  sll        $v0, $v0, 2
    /* 6EB20 8007E320 21104400 */  addu       $v0, $v0, $a0
    /* 6EB24 8007E324 40100200 */  sll        $v0, $v0, 1
    /* 6EB28 8007E328 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6EB2C 8007E32C 21082200 */  addu       $at, $at, $v0
    /* 6EB30 8007E330 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6EB34 8007E334 00000000 */  nop
    /* 6EB38 8007E338 80100300 */  sll        $v0, $v1, 2
    /* 6EB3C 8007E33C 21104300 */  addu       $v0, $v0, $v1
    /* 6EB40 8007E340 80100200 */  sll        $v0, $v0, 2
    /* 6EB44 8007E344 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6EB48 8007E348 21082200 */  addu       $at, $at, $v0
    /* 6EB4C 8007E34C 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6EB50 8007E350 02000224 */  addiu      $v0, $zero, 0x2
    /* 6EB54 8007E354 05006214 */  bne        $v1, $v0, .L8007E36C
    /* 6EB58 8007E358 00000000 */   nop
    /* 6EB5C 8007E35C 1BF7010C */  jal        func_8007DC6C
    /* 6EB60 8007E360 01000524 */   addiu     $a1, $zero, 0x1
    /* 6EB64 8007E364 DDF80108 */  j          .L8007E374
    /* 6EB68 8007E368 00000000 */   nop
  .L8007E36C:
    /* 6EB6C 8007E36C 4AEF010C */  jal        func_8007BD28
    /* 6EB70 8007E370 FEFF0524 */   addiu     $a1, $zero, -0x2
  .L8007E374:
    /* 6EB74 8007E374 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6EB78 8007E378 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6EB7C 8007E37C 0800E003 */  jr         $ra
    /* 6EB80 8007E380 00000000 */   nop
endlabel func_8007E308
