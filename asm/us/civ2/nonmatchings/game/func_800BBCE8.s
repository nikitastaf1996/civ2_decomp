.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BBCE8, 0xC4

glabel func_800BBCE8
    /* AC4E8 800BBCE8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* AC4EC 800BBCEC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* AC4F0 800BBCF0 21888000 */  addu       $s1, $a0, $zero
    /* AC4F4 800BBCF4 2800B0AF */  sw         $s0, 0x28($sp)
    /* AC4F8 800BBCF8 1280103C */  lui        $s0, %hi(D_80120D84)
    /* AC4FC 800BBCFC 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* AC500 800BBD00 21200002 */  addu       $a0, $s0, $zero
    /* AC504 800BBD04 05000524 */  addiu      $a1, $zero, 0x5
    /* AC508 800BBD08 2C010224 */  addiu      $v0, $zero, 0x12C
    /* AC50C 800BBD0C 1000A2AF */  sw         $v0, 0x10($sp)
    /* AC510 800BBD10 C8000224 */  addiu      $v0, $zero, 0xC8
    /* AC514 800BBD14 05000624 */  addiu      $a2, $zero, 0x5
    /* AC518 800BBD18 21380000 */  addu       $a3, $zero, $zero
    /* AC51C 800BBD1C 3000BFAF */  sw         $ra, 0x30($sp)
    /* AC520 800BBD20 1400A2AF */  sw         $v0, 0x14($sp)
    /* AC524 800BBD24 1800A0AF */  sw         $zero, 0x18($sp)
    /* AC528 800BBD28 6FE5020C */  jal        func_800B95BC
    /* AC52C 800BBD2C 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* AC530 800BBD30 0C80053C */  lui        $a1, %hi(func_800BAD58)
    /* AC534 800BBD34 58ADA524 */  addiu      $a1, $a1, %lo(func_800BAD58)
    /* AC538 800BBD38 1280013C */  lui        $at, %hi(D_801210C4)
    /* AC53C 800BBD3C C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* AC540 800BBD40 82DF030C */  jal        func_800F7E08
    /* AC544 800BBD44 21200002 */   addu      $a0, $s0, $zero
    /* AC548 800BBD48 0C80023C */  lui        $v0, %hi(func_800BBB80)
    /* AC54C 800BBD4C 80BB4224 */  addiu      $v0, $v0, %lo(func_800BBB80)
    /* AC550 800BBD50 1280013C */  lui        $at, %hi(D_80120DE8)
    /* AC554 800BBD54 E80D22AC */  sw         $v0, %lo(D_80120DE8)($at)
    /* AC558 800BBD58 E5DE030C */  jal        func_800F7B94
    /* AC55C 800BBD5C 21200002 */   addu      $a0, $s0, $zero
    /* AC560 800BBD60 F8EA030C */  jal        func_800FABE0
    /* AC564 800BBD64 2C000426 */   addiu     $a0, $s0, 0x2C
    /* AC568 800BBD68 05DD030C */  jal        func_800F7414
    /* AC56C 800BBD6C 2C000426 */   addiu     $a0, $s0, 0x2C
  .L800BBD70:
    /* AC570 800BBD70 1280023C */  lui        $v0, %hi(D_80120DA0)
    /* AC574 800BBD74 A00D428C */  lw         $v0, %lo(D_80120DA0)($v0)
    /* AC578 800BBD78 00000000 */  nop
    /* AC57C 800BBD7C 05004010 */  beqz       $v0, .L800BBD94
    /* AC580 800BBD80 00000000 */   nop
    /* AC584 800BBD84 1E12040C */  jal        func_80104878
    /* AC588 800BBD88 00000000 */   nop
    /* AC58C 800BBD8C 5CEF0208 */  j          .L800BBD70
    /* AC590 800BBD90 00000000 */   nop
  .L800BBD94:
    /* AC594 800BBD94 3000BF8F */  lw         $ra, 0x30($sp)
    /* AC598 800BBD98 2C00B18F */  lw         $s1, 0x2C($sp)
    /* AC59C 800BBD9C 2800B08F */  lw         $s0, 0x28($sp)
    /* AC5A0 800BBDA0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* AC5A4 800BBDA4 0800E003 */  jr         $ra
    /* AC5A8 800BBDA8 00000000 */   nop
endlabel func_800BBCE8
