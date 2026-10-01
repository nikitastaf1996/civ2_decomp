.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005B690, 0xC0

glabel func_8005B690
    /* 4BE90 8005B690 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4BE94 8005B694 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4BE98 8005B698 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4BE9C 8005B69C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4BEA0 8005B6A0 2130A000 */  addu       $a2, $a1, $zero
    /* 4BEA4 8005B6A4 40100400 */  sll        $v0, $a0, 1
    /* 4BEA8 8005B6A8 21104400 */  addu       $v0, $v0, $a0
    /* 4BEAC 8005B6AC 80100200 */  sll        $v0, $v0, 2
    /* 4BEB0 8005B6B0 21104400 */  addu       $v0, $v0, $a0
    /* 4BEB4 8005B6B4 40100200 */  sll        $v0, $v0, 1
    /* 4BEB8 8005B6B8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4BEBC 8005B6BC 21082200 */  addu       $at, $at, $v0
    /* 4BEC0 8005B6C0 BBD63180 */  lb         $s1, %lo(D_8010D6BB)($at)
    /* 4BEC4 8005B6C4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4BEC8 8005B6C8 21082200 */  addu       $at, $at, $v0
    /* 4BECC 8005B6CC BAD63090 */  lbu        $s0, %lo(D_8010D6BA)($at)
    /* 4BED0 8005B6D0 966C010C */  jal        func_8005B258
    /* 4BED4 8005B6D4 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 4BED8 8005B6D8 17004010 */  beqz       $v0, .L8005B738
    /* 4BEDC 8005B6DC 21100000 */   addu      $v0, $zero, $zero
    /* 4BEE0 8005B6E0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4BEE4 8005B6E4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4BEE8 8005B6E8 00000000 */  nop
    /* 4BEEC 8005B6EC 07102202 */  srav       $v0, $v0, $s1
    /* 4BEF0 8005B6F0 01004230 */  andi       $v0, $v0, 0x1
    /* 4BEF4 8005B6F4 0F004010 */  beqz       $v0, .L8005B734
    /* 4BEF8 8005B6F8 08000224 */   addiu     $v0, $zero, 0x8
    /* 4BEFC 8005B6FC C0381000 */  sll        $a3, $s0, 3
    /* 4BF00 8005B700 2138F000 */  addu       $a3, $a3, $s0
    /* 4BF04 8005B704 80380700 */  sll        $a3, $a3, 2
    /* 4BF08 8005B708 2138F000 */  addu       $a3, $a3, $s0
    /* 4BF0C 8005B70C 80380700 */  sll        $a3, $a3, 2
    /* 4BF10 8005B710 1380033C */  lui        $v1, %hi(D_8012BF80)
    /* 4BF14 8005B714 80BF6324 */  addiu      $v1, $v1, %lo(D_8012BF80)
    /* 4BF18 8005B718 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4BF1C 8005B71C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4BF20 8005B720 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4BF24 8005B724 02C80534 */  ori        $a1, $zero, 0xC802
    /* 4BF28 8005B728 21300000 */  addu       $a2, $zero, $zero
    /* 4BF2C 8005B72C 18E3020C */  jal        func_800B8C60
    /* 4BF30 8005B730 2138E300 */   addu      $a3, $a3, $v1
  .L8005B734:
    /* 4BF34 8005B734 01000224 */  addiu      $v0, $zero, 0x1
  .L8005B738:
    /* 4BF38 8005B738 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4BF3C 8005B73C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4BF40 8005B740 1800B08F */  lw         $s0, 0x18($sp)
    /* 4BF44 8005B744 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4BF48 8005B748 0800E003 */  jr         $ra
    /* 4BF4C 8005B74C 00000000 */   nop
endlabel func_8005B690
