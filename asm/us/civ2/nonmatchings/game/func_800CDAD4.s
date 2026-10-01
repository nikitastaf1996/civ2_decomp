.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CDAD4, 0x2A0

glabel func_800CDAD4
    /* BE2D4 800CDAD4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* BE2D8 800CDAD8 3000BFAF */  sw         $ra, 0x30($sp)
    /* BE2DC 800CDADC 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* BE2E0 800CDAE0 2800B2AF */  sw         $s2, 0x28($sp)
    /* BE2E4 800CDAE4 2400B1AF */  sw         $s1, 0x24($sp)
    /* BE2E8 800CDAE8 2000B0AF */  sw         $s0, 0x20($sp)
    /* BE2EC 800CDAEC 2180A000 */  addu       $s0, $a1, $zero
    /* BE2F0 800CDAF0 002C0500 */  sll        $a1, $a1, 16
    /* BE2F4 800CDAF4 0700A010 */  beqz       $a1, .L800CDB14
    /* BE2F8 800CDAF8 21888000 */   addu      $s1, $a0, $zero
    /* BE2FC 800CDAFC 21200000 */  addu       $a0, $zero, $zero
    /* BE300 800CDB00 7253020C */  jal        func_80094DC8
    /* BE304 800CDB04 01000524 */   addiu     $a1, $zero, 0x1
    /* BE308 800CDB08 00140200 */  sll        $v0, $v0, 16
    /* BE30C 800CDB0C 91004014 */  bnez       $v0, .L800CDD54
    /* BE310 800CDB10 01000224 */   addiu     $v0, $zero, 0x1
  .L800CDB14:
    /* BE314 800CDB14 E404248E */  lw         $a0, 0x4E4($s1)
    /* BE318 800CDB18 00000000 */  nop
    /* BE31C 800CDB1C 03008010 */  beqz       $a0, .L800CDB2C
    /* BE320 800CDB20 00000000 */   nop
    /* BE324 800CDB24 E511040C */  jal        func_80104794
    /* BE328 800CDB28 00000000 */   nop
  .L800CDB2C:
    /* BE32C 800CDB2C FED4030C */  jal        func_800F53F8
    /* BE330 800CDB30 00020424 */   addiu     $a0, $zero, 0x200
    /* BE334 800CDB34 21984000 */  addu       $s3, $v0, $zero
    /* BE338 800CDB38 7CD6030C */  jal        func_800F59F0
    /* BE33C 800CDB3C 21206002 */   addu      $a0, $s3, $zero
    /* BE340 800CDB40 21904000 */  addu       $s2, $v0, $zero
    /* BE344 800CDB44 00141000 */  sll        $v0, $s0, 16
    /* BE348 800CDB48 13004010 */  beqz       $v0, .L800CDB98
    /* BE34C 800CDB4C 00000000 */   nop
    /* BE350 800CDB50 E6032286 */  lh         $v0, 0x3E6($s1)
    /* BE354 800CDB54 00000000 */  nop
    /* BE358 800CDB58 0C004004 */  bltz       $v0, .L800CDB8C
    /* BE35C 800CDB5C 21200000 */   addu      $a0, $zero, $zero
    /* BE360 800CDB60 21184402 */  addu       $v1, $s2, $a0
  .L800CDB64:
    /* BE364 800CDB64 21102402 */  addu       $v0, $s1, $a0
    /* BE368 800CDB68 62014290 */  lbu        $v0, 0x162($v0)
    /* BE36C 800CDB6C 00000000 */  nop
    /* BE370 800CDB70 000062A0 */  sb         $v0, 0x0($v1)
    /* BE374 800CDB74 01008424 */  addiu      $a0, $a0, 0x1
    /* BE378 800CDB78 E6032286 */  lh         $v0, 0x3E6($s1)
    /* BE37C 800CDB7C 00000000 */  nop
    /* BE380 800CDB80 2A104400 */  slt        $v0, $v0, $a0
    /* BE384 800CDB84 F7FF4010 */  beqz       $v0, .L800CDB64
    /* BE388 800CDB88 21184402 */   addu      $v1, $s2, $a0
  .L800CDB8C:
    /* BE38C 800CDB8C 21104402 */  addu       $v0, $s2, $a0
    /* BE390 800CDB90 EE360308 */  j          .L800CDBB8
    /* BE394 800CDB94 000040A0 */   sb        $zero, 0x0($v0)
  .L800CDB98:
    /* BE398 800CDB98 62013026 */  addiu      $s0, $s1, 0x162
    /* BE39C 800CDB9C 21204002 */  addu       $a0, $s2, $zero
    /* BE3A0 800CDBA0 A587030C */  jal        func_800E1E94
    /* BE3A4 800CDBA4 21280002 */   addu      $a1, $s0, $zero
    /* BE3A8 800CDBA8 AD87030C */  jal        func_800E1EB4
    /* BE3AC 800CDBAC 21200002 */   addu      $a0, $s0, $zero
    /* BE3B0 800CDBB0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* BE3B4 800CDBB4 E60322A6 */  sh         $v0, 0x3E6($s1)
  .L800CDBB8:
    /* BE3B8 800CDBB8 3E0C040C */  jal        func_801030F8
    /* BE3BC 800CDBBC 04000424 */   addiu     $a0, $zero, 0x4
    /* BE3C0 800CDBC0 10000224 */  addiu      $v0, $zero, 0x10
    /* BE3C4 800CDBC4 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BE3C8 800CDBC8 20000224 */  addiu      $v0, $zero, 0x20
    /* BE3CC 800CDBCC 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BE3D0 800CDBD0 00010224 */  addiu      $v0, $zero, 0x100
    /* BE3D4 800CDBD4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BE3D8 800CDBD8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* BE3DC 800CDBDC 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* BE3E0 800CDBE0 21204002 */  addu       $a0, $s2, $zero
    /* BE3E4 800CDBE4 1800A527 */  addiu      $a1, $sp, 0x18
    /* BE3E8 800CDBE8 DC0F040C */  jal        func_80103F70
    /* BE3EC 800CDBEC 21300000 */   addu      $a2, $zero, $zero
    /* BE3F0 800CDBF0 E40422AE */  sw         $v0, 0x4E4($s1)
    /* BE3F4 800CDBF4 C6D5030C */  jal        func_800F5718
    /* BE3F8 800CDBF8 21206002 */   addu      $a0, $s3, $zero
    /* BE3FC 800CDBFC 3E0C040C */  jal        func_801030F8
    /* BE400 800CDC00 01000424 */   addiu     $a0, $zero, 0x1
    /* BE404 800CDC04 E6032286 */  lh         $v0, 0x3E6($s1)
    /* BE408 800CDC08 00000000 */  nop
    /* BE40C 800CDC0C 21102202 */  addu       $v0, $s1, $v0
    /* BE410 800CDC10 62014280 */  lb         $v0, 0x162($v0)
    /* BE414 800CDC14 00000000 */  nop
    /* BE418 800CDC18 20004228 */  slti       $v0, $v0, 0x20
    /* BE41C 800CDC1C 05004014 */  bnez       $v0, .L800CDC34
    /* BE420 800CDC20 00000000 */   nop
    /* BE424 800CDC24 E2032296 */  lhu        $v0, 0x3E2($s1)
    /* BE428 800CDC28 00000000 */  nop
    /* BE42C 800CDC2C 06004224 */  addiu      $v0, $v0, 0x6
    /* BE430 800CDC30 E20322A6 */  sh         $v0, 0x3E2($s1)
  .L800CDC34:
    /* BE434 800CDC34 E6032286 */  lh         $v0, 0x3E6($s1)
    /* BE438 800CDC38 00000000 */  nop
    /* BE43C 800CDC3C 21102202 */  addu       $v0, $s1, $v0
    /* BE440 800CDC40 62014380 */  lb         $v1, 0x162($v0)
    /* BE444 800CDC44 3A000224 */  addiu      $v0, $zero, 0x3A
    /* BE448 800CDC48 02006214 */  bne        $v1, $v0, .L800CDC54
    /* BE44C 800CDC4C 00000000 */   nop
    /* BE450 800CDC50 901520AE */  sw         $zero, 0x1590($s1)
  .L800CDC54:
    /* BE454 800CDC54 E6032296 */  lhu        $v0, 0x3E6($s1)
    /* BE458 800CDC58 00000000 */  nop
    /* BE45C 800CDC5C 01004224 */  addiu      $v0, $v0, 0x1
    /* BE460 800CDC60 E60322A6 */  sh         $v0, 0x3E6($s1)
    /* BE464 800CDC64 00140200 */  sll        $v0, $v0, 16
    /* BE468 800CDC68 03140200 */  sra        $v0, $v0, 16
    /* BE46C 800CDC6C 21102202 */  addu       $v0, $s1, $v0
    /* BE470 800CDC70 62014380 */  lb         $v1, 0x162($v0)
    /* BE474 800CDC74 0A000224 */  addiu      $v0, $zero, 0xA
    /* BE478 800CDC78 14006214 */  bne        $v1, $v0, .L800CDCCC
    /* BE47C 800CDC7C 00000000 */   nop
    /* BE480 800CDC80 01000424 */  addiu      $a0, $zero, 0x1
    /* BE484 800CDC84 0A000324 */  addiu      $v1, $zero, 0xA
  .L800CDC88:
    /* BE488 800CDC88 901524AE */  sw         $a0, 0x1590($s1)
    /* BE48C 800CDC8C E20323A6 */  sh         $v1, 0x3E2($s1)
    /* BE490 800CDC90 E4032296 */  lhu        $v0, 0x3E4($s1)
    /* BE494 800CDC94 00000000 */  nop
    /* BE498 800CDC98 0C004224 */  addiu      $v0, $v0, 0xC
    /* BE49C 800CDC9C E40322A6 */  sh         $v0, 0x3E4($s1)
    /* BE4A0 800CDCA0 E6032296 */  lhu        $v0, 0x3E6($s1)
    /* BE4A4 800CDCA4 00000000 */  nop
    /* BE4A8 800CDCA8 01004224 */  addiu      $v0, $v0, 0x1
    /* BE4AC 800CDCAC E60322A6 */  sh         $v0, 0x3E6($s1)
    /* BE4B0 800CDCB0 00140200 */  sll        $v0, $v0, 16
    /* BE4B4 800CDCB4 03140200 */  sra        $v0, $v0, 16
    /* BE4B8 800CDCB8 21102202 */  addu       $v0, $s1, $v0
    /* BE4BC 800CDCBC 62014280 */  lb         $v0, 0x162($v0)
    /* BE4C0 800CDCC0 00000000 */  nop
    /* BE4C4 800CDCC4 F0FF4310 */  beq        $v0, $v1, .L800CDC88
    /* BE4C8 800CDCC8 00000000 */   nop
  .L800CDCCC:
    /* BE4CC 800CDCCC E6032286 */  lh         $v0, 0x3E6($s1)
    /* BE4D0 800CDCD0 00000000 */  nop
    /* BE4D4 800CDCD4 21102202 */  addu       $v0, $s1, $v0
    /* BE4D8 800CDCD8 62014280 */  lb         $v0, 0x162($v0)
    /* BE4DC 800CDCDC 00000000 */  nop
    /* BE4E0 800CDCE0 16004014 */  bnez       $v0, .L800CDD3C
    /* BE4E4 800CDCE4 00000000 */   nop
    /* BE4E8 800CDCE8 5C012486 */  lh         $a0, 0x15C($s1)
    /* BE4EC 800CDCEC 00000000 */  nop
    /* BE4F0 800CDCF0 05008010 */  beqz       $a0, .L800CDD08
    /* BE4F4 800CDCF4 01000224 */   addiu     $v0, $zero, 0x1
    /* BE4F8 800CDCF8 7DF3030C */  jal        func_800FCDF4
    /* BE4FC 800CDCFC 00000000 */   nop
    /* BE500 800CDD00 5C0120A6 */  sh         $zero, 0x15C($s1)
    /* BE504 800CDD04 01000224 */  addiu      $v0, $zero, 0x1
  .L800CDD08:
    /* BE508 800CDD08 180D82AF */  sw         $v0, %gp_rel(D_801591F0)($gp)
    /* BE50C 800CDD0C 5E012286 */  lh         $v0, 0x15E($s1)
    /* BE510 800CDD10 00000000 */  nop
    /* BE514 800CDD14 08004014 */  bnez       $v0, .L800CDD38
    /* BE518 800CDD18 01000224 */   addiu     $v0, $zero, 0x1
    /* BE51C 800CDD1C 0D80043C */  lui        $a0, %hi(func_800CE4FC)
    /* BE520 800CDD20 FCE48424 */  addiu      $a0, $a0, %lo(func_800CE4FC)
    /* BE524 800CDD24 F4010524 */  addiu      $a1, $zero, 0x1F4
    /* BE528 800CDD28 5AF3030C */  jal        func_800FCD68
    /* BE52C 800CDD2C FFFF0624 */   addiu     $a2, $zero, -0x1
    /* BE530 800CDD30 5E0122A6 */  sh         $v0, 0x15E($s1)
    /* BE534 800CDD34 01000224 */  addiu      $v0, $zero, 0x1
  .L800CDD38:
    /* BE538 800CDD38 F20322A6 */  sh         $v0, 0x3F2($s1)
  .L800CDD3C:
    /* BE53C 800CDD3C E6032286 */  lh         $v0, 0x3E6($s1)
    /* BE540 800CDD40 00000000 */  nop
    /* BE544 800CDD44 21102202 */  addu       $v0, $s1, $v0
    /* BE548 800CDD48 62014280 */  lb         $v0, 0x162($v0)
    /* BE54C 800CDD4C 00000000 */  nop
    /* BE550 800CDD50 2B100200 */  sltu       $v0, $zero, $v0
  .L800CDD54:
    /* BE554 800CDD54 3000BF8F */  lw         $ra, 0x30($sp)
    /* BE558 800CDD58 2C00B38F */  lw         $s3, 0x2C($sp)
    /* BE55C 800CDD5C 2800B28F */  lw         $s2, 0x28($sp)
    /* BE560 800CDD60 2400B18F */  lw         $s1, 0x24($sp)
    /* BE564 800CDD64 2000B08F */  lw         $s0, 0x20($sp)
    /* BE568 800CDD68 3800BD27 */  addiu      $sp, $sp, 0x38
    /* BE56C 800CDD6C 0800E003 */  jr         $ra
    /* BE570 800CDD70 00000000 */   nop
endlabel func_800CDAD4
