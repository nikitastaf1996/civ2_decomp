.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EC64, 0xA4

glabel func_8007EC64
    /* 6F464 8007EC64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6F468 8007EC68 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6F46C 8007EC6C 40100400 */  sll        $v0, $a0, 1
    /* 6F470 8007EC70 21104400 */  addu       $v0, $v0, $a0
    /* 6F474 8007EC74 80100200 */  sll        $v0, $v0, 2
    /* 6F478 8007EC78 21104400 */  addu       $v0, $v0, $a0
    /* 6F47C 8007EC7C 40100200 */  sll        $v0, $v0, 1
    /* 6F480 8007EC80 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6F484 8007EC84 21082200 */  addu       $at, $at, $v0
    /* 6F488 8007EC88 C4D62380 */  lb         $v1, %lo(D_8010D6C4)($at)
    /* 6F48C 8007EC8C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6F490 8007EC90 09006214 */  bne        $v1, $v0, .L8007ECB8
    /* 6F494 8007EC94 40100400 */   sll       $v0, $a0, 1
    /* 6F498 8007EC98 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 6F49C 8007EC9C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 6F4A0 8007ECA0 00000000 */  nop
    /* 6F4A4 8007ECA4 3800448C */  lw         $a0, 0x38($v0)
    /* 6F4A8 8007ECA8 A63A030C */  jal        func_800CEA98
    /* 6F4AC 8007ECAC 00000000 */   nop
    /* 6F4B0 8007ECB0 3EFB0108 */  j          .L8007ECF8
    /* 6F4B4 8007ECB4 00000000 */   nop
  .L8007ECB8:
    /* 6F4B8 8007ECB8 21104400 */  addu       $v0, $v0, $a0
    /* 6F4BC 8007ECBC 80100200 */  sll        $v0, $v0, 2
    /* 6F4C0 8007ECC0 21104400 */  addu       $v0, $v0, $a0
    /* 6F4C4 8007ECC4 40100200 */  sll        $v0, $v0, 1
    /* 6F4C8 8007ECC8 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6F4CC 8007ECCC 21082200 */  addu       $at, $at, $v0
    /* 6F4D0 8007ECD0 C4D62390 */  lbu        $v1, %lo(D_8010D6C4)($at)
    /* 6F4D4 8007ECD4 00000000 */  nop
    /* 6F4D8 8007ECD8 40100300 */  sll        $v0, $v1, 1
    /* 6F4DC 8007ECDC 21104300 */  addu       $v0, $v0, $v1
    /* 6F4E0 8007ECE0 80100200 */  sll        $v0, $v0, 2
    /* 6F4E4 8007ECE4 23104300 */  subu       $v0, $v0, $v1
    /* 6F4E8 8007ECE8 C0100200 */  sll        $v0, $v0, 3
    /* 6F4EC 8007ECEC 1180033C */  lui        $v1, %hi(D_80113EF2)
    /* 6F4F0 8007ECF0 F23E6324 */  addiu      $v1, $v1, %lo(D_80113EF2)
    /* 6F4F4 8007ECF4 21104300 */  addu       $v0, $v0, $v1
  .L8007ECF8:
    /* 6F4F8 8007ECF8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6F4FC 8007ECFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6F500 8007ED00 0800E003 */  jr         $ra
    /* 6F504 8007ED04 00000000 */   nop
endlabel func_8007EC64
