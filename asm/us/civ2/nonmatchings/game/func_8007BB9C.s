.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BB9C, 0x13C

glabel func_8007BB9C
    /* 6C39C 8007BB9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C3A0 8007BBA0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6C3A4 8007BBA4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C3A8 8007BBA8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C3AC 8007BBAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C3B0 8007BBB0 21808000 */  addu       $s0, $a0, $zero
    /* 6C3B4 8007BBB4 2188A000 */  addu       $s1, $a1, $zero
    /* 6C3B8 8007BBB8 2190C000 */  addu       $s2, $a2, $zero
    /* 6C3BC 8007BBBC 21202002 */  addu       $a0, $s1, $zero
    /* 6C3C0 8007BBC0 04EE010C */  jal        func_8007B810
    /* 6C3C4 8007BBC4 21284002 */   addu      $a1, $s2, $zero
    /* 6C3C8 8007BBC8 21204000 */  addu       $a0, $v0, $zero
    /* 6C3CC 8007BBCC 40101000 */  sll        $v0, $s0, 1
    /* 6C3D0 8007BBD0 21105000 */  addu       $v0, $v0, $s0
    /* 6C3D4 8007BBD4 80100200 */  sll        $v0, $v0, 2
    /* 6C3D8 8007BBD8 21105000 */  addu       $v0, $v0, $s0
    /* 6C3DC 8007BBDC 40100200 */  sll        $v0, $v0, 1
    /* 6C3E0 8007BBE0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6C3E4 8007BBE4 21082200 */  addu       $at, $at, $v0
    /* 6C3E8 8007BBE8 B4D631A4 */  sh         $s1, %lo(D_8010D6B4)($at)
    /* 6C3EC 8007BBEC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6C3F0 8007BBF0 21082200 */  addu       $at, $at, $v0
    /* 6C3F4 8007BBF4 B6D632A4 */  sh         $s2, %lo(D_8010D6B6)($at)
    /* 6C3F8 8007BBF8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6C3FC 8007BBFC 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C400 8007BC00 21082200 */  addu       $at, $at, $v0
    /* 6C404 8007BC04 CAD623A4 */  sh         $v1, %lo(D_8010D6CA)($at)
    /* 6C408 8007BC08 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C40C 8007BC0C 21082200 */  addu       $at, $at, $v0
    /* 6C410 8007BC10 CCD624A4 */  sh         $a0, %lo(D_8010D6CC)($at)
    /* 6C414 8007BC14 0A008004 */  bltz       $a0, .L8007BC40
    /* 6C418 8007BC18 40100400 */   sll       $v0, $a0, 1
    /* 6C41C 8007BC1C 21104400 */  addu       $v0, $v0, $a0
    /* 6C420 8007BC20 80100200 */  sll        $v0, $v0, 2
    /* 6C424 8007BC24 21104400 */  addu       $v0, $v0, $a0
    /* 6C428 8007BC28 40100200 */  sll        $v0, $v0, 1
    /* 6C42C 8007BC2C 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C430 8007BC30 21082200 */  addu       $at, $at, $v0
    /* 6C434 8007BC34 CAD630A4 */  sh         $s0, %lo(D_8010D6CA)($at)
    /* 6C438 8007BC38 2FEF0108 */  j          .L8007BCBC
    /* 6C43C 8007BC3C 00000000 */   nop
  .L8007BC40:
    /* 6C440 8007BC40 0D004006 */  bltz       $s2, .L8007BC78
    /* 6C444 8007BC44 21180000 */   addu      $v1, $zero, $zero
    /* 6C448 8007BC48 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6C44C 8007BC4C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6C450 8007BC50 00000000 */  nop
    /* 6C454 8007BC54 2A104202 */  slt        $v0, $s2, $v0
    /* 6C458 8007BC58 07004010 */  beqz       $v0, .L8007BC78
    /* 6C45C 8007BC5C 00000000 */   nop
    /* 6C460 8007BC60 05002006 */  bltz       $s1, .L8007BC78
    /* 6C464 8007BC64 00000000 */   nop
    /* 6C468 8007BC68 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6C46C 8007BC6C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6C470 8007BC70 00000000 */  nop
    /* 6C474 8007BC74 2A182202 */  slt        $v1, $s1, $v0
  .L8007BC78:
    /* 6C478 8007BC78 10006010 */  beqz       $v1, .L8007BCBC
    /* 6C47C 8007BC7C 21202002 */   addu      $a0, $s1, $zero
    /* 6C480 8007BC80 21284002 */  addu       $a1, $s2, $zero
    /* 6C484 8007BC84 01000624 */  addiu      $a2, $zero, 0x1
    /* 6C488 8007BC88 7261020C */  jal        func_800985C8
    /* 6C48C 8007BC8C 01000724 */   addiu     $a3, $zero, 0x1
    /* 6C490 8007BC90 40101000 */  sll        $v0, $s0, 1
    /* 6C494 8007BC94 21105000 */  addu       $v0, $v0, $s0
    /* 6C498 8007BC98 80100200 */  sll        $v0, $v0, 2
    /* 6C49C 8007BC9C 21105000 */  addu       $v0, $v0, $s0
    /* 6C4A0 8007BCA0 40100200 */  sll        $v0, $v0, 1
    /* 6C4A4 8007BCA4 21202002 */  addu       $a0, $s1, $zero
    /* 6C4A8 8007BCA8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6C4AC 8007BCAC 21082200 */  addu       $at, $at, $v0
    /* 6C4B0 8007BCB0 BBD62680 */  lb         $a2, %lo(D_8010D6BB)($at)
    /* 6C4B4 8007BCB4 1061020C */  jal        func_80098440
    /* 6C4B8 8007BCB8 21284002 */   addu      $a1, $s2, $zero
  .L8007BCBC:
    /* 6C4BC 8007BCBC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6C4C0 8007BCC0 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C4C4 8007BCC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C4C8 8007BCC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C4CC 8007BCCC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6C4D0 8007BCD0 0800E003 */  jr         $ra
    /* 6C4D4 8007BCD4 00000000 */   nop
endlabel func_8007BB9C
