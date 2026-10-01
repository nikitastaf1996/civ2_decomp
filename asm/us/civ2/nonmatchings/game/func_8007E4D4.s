.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E4D4, 0xA4

glabel func_8007E4D4
    /* 6ECD4 8007E4D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6ECD8 8007E4D8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6ECDC 8007E4DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6ECE0 8007E4E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6ECE4 8007E4E4 40100400 */  sll        $v0, $a0, 1
    /* 6ECE8 8007E4E8 21104400 */  addu       $v0, $v0, $a0
    /* 6ECEC 8007E4EC 80100200 */  sll        $v0, $v0, 2
    /* 6ECF0 8007E4F0 21104400 */  addu       $v0, $v0, $a0
    /* 6ECF4 8007E4F4 40100200 */  sll        $v0, $v0, 1
    /* 6ECF8 8007E4F8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6ECFC 8007E4FC 21082200 */  addu       $at, $at, $v0
    /* 6ED00 8007E500 B4D63184 */  lh         $s1, %lo(D_8010D6B4)($at)
    /* 6ED04 8007E504 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6ED08 8007E508 21082200 */  addu       $at, $at, $v0
    /* 6ED0C 8007E50C B6D63084 */  lh         $s0, %lo(D_8010D6B6)($at)
    /* 6ED10 8007E510 E1F8010C */  jal        func_8007E384
    /* 6ED14 8007E514 00000000 */   nop
    /* 6ED18 8007E518 0D000006 */  bltz       $s0, .L8007E550
    /* 6ED1C 8007E51C 21180000 */   addu      $v1, $zero, $zero
    /* 6ED20 8007E520 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6ED24 8007E524 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6ED28 8007E528 00000000 */  nop
    /* 6ED2C 8007E52C 2A100202 */  slt        $v0, $s0, $v0
    /* 6ED30 8007E530 07004010 */  beqz       $v0, .L8007E550
    /* 6ED34 8007E534 00000000 */   nop
    /* 6ED38 8007E538 05002006 */  bltz       $s1, .L8007E550
    /* 6ED3C 8007E53C 00000000 */   nop
    /* 6ED40 8007E540 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6ED44 8007E544 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6ED48 8007E548 00000000 */  nop
    /* 6ED4C 8007E54C 2A182202 */  slt        $v1, $s1, $v0
  .L8007E550:
    /* 6ED50 8007E550 03006010 */  beqz       $v1, .L8007E560
    /* 6ED54 8007E554 21202002 */   addu      $a0, $s1, $zero
    /* 6ED58 8007E558 426F020C */  jal        func_8009BD08
    /* 6ED5C 8007E55C 21280002 */   addu      $a1, $s0, $zero
  .L8007E560:
    /* 6ED60 8007E560 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6ED64 8007E564 1400B18F */  lw         $s1, 0x14($sp)
    /* 6ED68 8007E568 1000B08F */  lw         $s0, 0x10($sp)
    /* 6ED6C 8007E56C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6ED70 8007E570 0800E003 */  jr         $ra
    /* 6ED74 8007E574 00000000 */   nop
endlabel func_8007E4D4
