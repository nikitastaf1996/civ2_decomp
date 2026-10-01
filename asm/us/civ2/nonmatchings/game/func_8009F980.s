.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F980, 0x88

glabel func_8009F980
    /* 90180 8009F980 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90184 8009F984 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90188 8009F988 397E020C */  jal        func_8009F8E4
    /* 9018C 8009F98C 00000000 */   nop
    /* 90190 8009F990 19004010 */  beqz       $v0, .L8009F9F8
    /* 90194 8009F994 21180000 */   addu      $v1, $zero, $zero
    /* 90198 8009F998 01020424 */  addiu      $a0, $zero, 0x201
  .L8009F99C:
    /* 9019C 8009F99C 0B006010 */  beqz       $v1, .L8009F9CC
    /* 901A0 8009F9A0 40100300 */   sll       $v0, $v1, 1
    /* 901A4 8009F9A4 21104300 */  addu       $v0, $v0, $v1
    /* 901A8 8009F9A8 80100200 */  sll        $v0, $v0, 2
    /* 901AC 8009F9AC 23104300 */  subu       $v0, $v0, $v1
    /* 901B0 8009F9B0 80110200 */  sll        $v0, $v0, 6
    /* 901B4 8009F9B4 1280013C */  lui        $at, %hi(D_8011E956)
    /* 901B8 8009F9B8 21082200 */  addu       $at, $at, $v0
    /* 901BC 8009F9BC 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 901C0 8009F9C0 00000000 */  nop
    /* 901C4 8009F9C4 09004010 */  beqz       $v0, .L8009F9EC
    /* 901C8 8009F9C8 00000000 */   nop
  .L8009F9CC:
    /* 901CC 8009F9CC 40100300 */  sll        $v0, $v1, 1
    /* 901D0 8009F9D0 21104300 */  addu       $v0, $v0, $v1
    /* 901D4 8009F9D4 80100200 */  sll        $v0, $v0, 2
    /* 901D8 8009F9D8 23104300 */  subu       $v0, $v0, $v1
    /* 901DC 8009F9DC 80110200 */  sll        $v0, $v0, 6
    /* 901E0 8009F9E0 1280013C */  lui        $at, %hi(D_8011E990)
    /* 901E4 8009F9E4 21082200 */  addu       $at, $at, $v0
    /* 901E8 8009F9E8 90E924A4 */  sh         $a0, %lo(D_8011E990)($at)
  .L8009F9EC:
    /* 901EC 8009F9EC 01006324 */  addiu      $v1, $v1, 0x1
    /* 901F0 8009F9F0 EAFF6018 */  blez       $v1, .L8009F99C
    /* 901F4 8009F9F4 00000000 */   nop
  .L8009F9F8:
    /* 901F8 8009F9F8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 901FC 8009F9FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 90200 8009FA00 0800E003 */  jr         $ra
    /* 90204 8009FA04 00000000 */   nop
endlabel func_8009F980
