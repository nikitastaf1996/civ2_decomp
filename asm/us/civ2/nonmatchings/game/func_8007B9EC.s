.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B9EC, 0x1B0

glabel func_8007B9EC
    /* 6C1EC 8007B9EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6C1F0 8007B9F0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6C1F4 8007B9F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C1F8 8007B9F8 21808000 */  addu       $s0, $a0, $zero
    /* 6C1FC 8007B9FC 40101000 */  sll        $v0, $s0, 1
    /* 6C200 8007BA00 21105000 */  addu       $v0, $v0, $s0
    /* 6C204 8007BA04 80100200 */  sll        $v0, $v0, 2
    /* 6C208 8007BA08 21105000 */  addu       $v0, $v0, $s0
    /* 6C20C 8007BA0C 40280200 */  sll        $a1, $v0, 1
    /* 6C210 8007BA10 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C214 8007BA14 21082500 */  addu       $at, $at, $a1
    /* 6C218 8007BA18 CAD62384 */  lh         $v1, %lo(D_8010D6CA)($at)
    /* 6C21C 8007BA1C 00000000 */  nop
    /* 6C220 8007BA20 0D006004 */  bltz       $v1, .L8007BA58
    /* 6C224 8007BA24 21200000 */   addu      $a0, $zero, $zero
    /* 6C228 8007BA28 40100300 */  sll        $v0, $v1, 1
    /* 6C22C 8007BA2C 21104300 */  addu       $v0, $v0, $v1
    /* 6C230 8007BA30 80100200 */  sll        $v0, $v0, 2
    /* 6C234 8007BA34 21104300 */  addu       $v0, $v0, $v1
    /* 6C238 8007BA38 40100200 */  sll        $v0, $v0, 1
    /* 6C23C 8007BA3C 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C240 8007BA40 21082500 */  addu       $at, $at, $a1
    /* 6C244 8007BA44 CCD62394 */  lhu        $v1, %lo(D_8010D6CC)($at)
    /* 6C248 8007BA48 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C24C 8007BA4C 21082200 */  addu       $at, $at, $v0
    /* 6C250 8007BA50 CCD623A4 */  sh         $v1, %lo(D_8010D6CC)($at)
    /* 6C254 8007BA54 01000424 */  addiu      $a0, $zero, 0x1
  .L8007BA58:
    /* 6C258 8007BA58 40101000 */  sll        $v0, $s0, 1
    /* 6C25C 8007BA5C 21105000 */  addu       $v0, $v0, $s0
    /* 6C260 8007BA60 80100200 */  sll        $v0, $v0, 2
    /* 6C264 8007BA64 21105000 */  addu       $v0, $v0, $s0
    /* 6C268 8007BA68 40280200 */  sll        $a1, $v0, 1
    /* 6C26C 8007BA6C 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C270 8007BA70 21082500 */  addu       $at, $at, $a1
    /* 6C274 8007BA74 CCD62384 */  lh         $v1, %lo(D_8010D6CC)($at)
    /* 6C278 8007BA78 00000000 */  nop
    /* 6C27C 8007BA7C 0C006004 */  bltz       $v1, .L8007BAB0
    /* 6C280 8007BA80 40100300 */   sll       $v0, $v1, 1
    /* 6C284 8007BA84 21104300 */  addu       $v0, $v0, $v1
    /* 6C288 8007BA88 80100200 */  sll        $v0, $v0, 2
    /* 6C28C 8007BA8C 21104300 */  addu       $v0, $v0, $v1
    /* 6C290 8007BA90 40100200 */  sll        $v0, $v0, 1
    /* 6C294 8007BA94 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C298 8007BA98 21082500 */  addu       $at, $at, $a1
    /* 6C29C 8007BA9C CAD62394 */  lhu        $v1, %lo(D_8010D6CA)($at)
    /* 6C2A0 8007BAA0 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C2A4 8007BAA4 21082200 */  addu       $at, $at, $v0
    /* 6C2A8 8007BAA8 CAD623A4 */  sh         $v1, %lo(D_8010D6CA)($at)
    /* 6C2AC 8007BAAC 01000424 */  addiu      $a0, $zero, 0x1
  .L8007BAB0:
    /* 6C2B0 8007BAB0 2A008014 */  bnez       $a0, .L8007BB5C
    /* 6C2B4 8007BAB4 40101000 */   sll       $v0, $s0, 1
    /* 6C2B8 8007BAB8 21105000 */  addu       $v0, $v0, $s0
    /* 6C2BC 8007BABC 80100200 */  sll        $v0, $v0, 2
    /* 6C2C0 8007BAC0 21105000 */  addu       $v0, $v0, $s0
    /* 6C2C4 8007BAC4 40100200 */  sll        $v0, $v0, 1
    /* 6C2C8 8007BAC8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C2CC 8007BACC 21082200 */  addu       $at, $at, $v0
    /* 6C2D0 8007BAD0 B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* 6C2D4 8007BAD4 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C2D8 8007BAD8 21082200 */  addu       $at, $at, $v0
    /* 6C2DC 8007BADC B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* 6C2E0 8007BAE0 00000000 */  nop
    /* 6C2E4 8007BAE4 0D006004 */  bltz       $v1, .L8007BB1C
    /* 6C2E8 8007BAE8 21200000 */   addu      $a0, $zero, $zero
    /* 6C2EC 8007BAEC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6C2F0 8007BAF0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6C2F4 8007BAF4 00000000 */  nop
    /* 6C2F8 8007BAF8 2A106200 */  slt        $v0, $v1, $v0
    /* 6C2FC 8007BAFC 07004010 */  beqz       $v0, .L8007BB1C
    /* 6C300 8007BB00 00000000 */   nop
    /* 6C304 8007BB04 0500A004 */  bltz       $a1, .L8007BB1C
    /* 6C308 8007BB08 00000000 */   nop
    /* 6C30C 8007BB0C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6C310 8007BB10 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6C314 8007BB14 00000000 */  nop
    /* 6C318 8007BB18 2A20A200 */  slt        $a0, $a1, $v0
  .L8007BB1C:
    /* 6C31C 8007BB1C 0E008010 */  beqz       $a0, .L8007BB58
    /* 6C320 8007BB20 40101000 */   sll       $v0, $s0, 1
    /* 6C324 8007BB24 21105000 */  addu       $v0, $v0, $s0
    /* 6C328 8007BB28 80100200 */  sll        $v0, $v0, 2
    /* 6C32C 8007BB2C 21105000 */  addu       $v0, $v0, $s0
    /* 6C330 8007BB30 40100200 */  sll        $v0, $v0, 1
    /* 6C334 8007BB34 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C338 8007BB38 21082200 */  addu       $at, $at, $v0
    /* 6C33C 8007BB3C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 6C340 8007BB40 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C344 8007BB44 21082200 */  addu       $at, $at, $v0
    /* 6C348 8007BB48 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 6C34C 8007BB4C 01000624 */  addiu      $a2, $zero, 0x1
    /* 6C350 8007BB50 7261020C */  jal        func_800985C8
    /* 6C354 8007BB54 21380000 */   addu      $a3, $zero, $zero
  .L8007BB58:
    /* 6C358 8007BB58 40101000 */  sll        $v0, $s0, 1
  .L8007BB5C:
    /* 6C35C 8007BB5C 21105000 */  addu       $v0, $v0, $s0
    /* 6C360 8007BB60 80100200 */  sll        $v0, $v0, 2
    /* 6C364 8007BB64 21105000 */  addu       $v0, $v0, $s0
    /* 6C368 8007BB68 40100200 */  sll        $v0, $v0, 1
    /* 6C36C 8007BB6C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6C370 8007BB70 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C374 8007BB74 21082200 */  addu       $at, $at, $v0
    /* 6C378 8007BB78 B4D623A4 */  sh         $v1, %lo(D_8010D6B4)($at)
    /* 6C37C 8007BB7C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C380 8007BB80 21082200 */  addu       $at, $at, $v0
    /* 6C384 8007BB84 B6D623A4 */  sh         $v1, %lo(D_8010D6B6)($at)
    /* 6C388 8007BB88 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6C38C 8007BB8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C390 8007BB90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6C394 8007BB94 0800E003 */  jr         $ra
    /* 6C398 8007BB98 00000000 */   nop
endlabel func_8007B9EC
