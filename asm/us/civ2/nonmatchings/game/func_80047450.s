.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80047450, 0x78

glabel func_80047450
    /* 37C50 80047450 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37C54 80047454 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37C58 80047458 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 37C5C 8004745C 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 37C60 80047460 00000000 */  nop
    /* 37C64 80047464 40180200 */  sll        $v1, $v0, 1
    /* 37C68 80047468 21186200 */  addu       $v1, $v1, $v0
    /* 37C6C 8004746C 80180300 */  sll        $v1, $v1, 2
    /* 37C70 80047470 21186200 */  addu       $v1, $v1, $v0
    /* 37C74 80047474 40180300 */  sll        $v1, $v1, 1
    /* 37C78 80047478 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 37C7C 8004747C 21082300 */  addu       $at, $at, $v1
    /* 37C80 80047480 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 37C84 80047484 00000000 */  nop
    /* 37C88 80047488 00404234 */  ori        $v0, $v0, 0x4000
    /* 37C8C 8004748C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 37C90 80047490 21082300 */  addu       $at, $at, $v1
    /* 37C94 80047494 B8D622A4 */  sh         $v0, %lo(D_8010D6B8)($at)
    /* 37C98 80047498 1680013C */  lui        $at, %hi(D_80158872)
    /* 37C9C 8004749C 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* 37CA0 800474A0 1680013C */  lui        $at, %hi(D_80158874)
    /* 37CA4 800474A4 748820A0 */  sb         $zero, %lo(D_80158874)($at)
    /* 37CA8 800474A8 3374020C */  jal        func_8009D0CC
    /* 37CAC 800474AC 00000000 */   nop
    /* 37CB0 800474B0 B2A9010C */  jal        func_8006A6C8
    /* 37CB4 800474B4 21200000 */   addu      $a0, $zero, $zero
    /* 37CB8 800474B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37CBC 800474BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37CC0 800474C0 0800E003 */  jr         $ra
    /* 37CC4 800474C4 00000000 */   nop
endlabel func_80047450
