.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BF24, 0x198

glabel func_8007BF24
    /* 6C724 8007BF24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6C728 8007BF28 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6C72C 8007BF2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C730 8007BF30 1800A4AF */  sw         $a0, 0x18($sp)
    /* 6C734 8007BF34 2120A000 */  addu       $a0, $a1, $zero
    /* 6C738 8007BF38 0E008004 */  bltz       $a0, .L8007BF74
    /* 6C73C 8007BF3C 1C00A5AF */   sw        $a1, 0x1C($sp)
  .L8007BF40:
    /* 6C740 8007BF40 1800A28F */  lw         $v0, 0x18($sp)
    /* 6C744 8007BF44 00000000 */  nop
    /* 6C748 8007BF48 05008214 */  bne        $a0, $v0, .L8007BF60
    /* 6C74C 8007BF4C 00000000 */   nop
    /* 6C750 8007BF50 1800A427 */  addiu      $a0, $sp, 0x18
    /* 6C754 8007BF54 FF3A030C */  jal        func_800CEBFC
    /* 6C758 8007BF58 1C00A527 */   addiu     $a1, $sp, 0x1C
    /* 6C75C 8007BF5C FFFF0424 */  addiu      $a0, $zero, -0x1
  .L8007BF60:
    /* 6C760 8007BF60 BFED010C */  jal        func_8007B6FC
    /* 6C764 8007BF64 00000000 */   nop
    /* 6C768 8007BF68 21204000 */  addu       $a0, $v0, $zero
    /* 6C76C 8007BF6C F4FF8104 */  bgez       $a0, .L8007BF40
    /* 6C770 8007BF70 00000000 */   nop
  .L8007BF74:
    /* 6C774 8007BF74 1800A28F */  lw         $v0, 0x18($sp)
    /* 6C778 8007BF78 00000000 */  nop
    /* 6C77C 8007BF7C 40180200 */  sll        $v1, $v0, 1
    /* 6C780 8007BF80 21186200 */  addu       $v1, $v1, $v0
    /* 6C784 8007BF84 80180300 */  sll        $v1, $v1, 2
    /* 6C788 8007BF88 21186200 */  addu       $v1, $v1, $v0
    /* 6C78C 8007BF8C 40200300 */  sll        $a0, $v1, 1
    /* 6C790 8007BF90 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C794 8007BF94 21082400 */  addu       $at, $at, $a0
    /* 6C798 8007BF98 CCD62384 */  lh         $v1, %lo(D_8010D6CC)($at)
    /* 6C79C 8007BF9C 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 6C7A0 8007BFA0 00000000 */  nop
    /* 6C7A4 8007BFA4 1B006214 */  bne        $v1, $v0, .L8007C014
    /* 6C7A8 8007BFA8 40100300 */   sll       $v0, $v1, 1
    /* 6C7AC 8007BFAC 21104300 */  addu       $v0, $v0, $v1
    /* 6C7B0 8007BFB0 80100200 */  sll        $v0, $v0, 2
    /* 6C7B4 8007BFB4 21104300 */  addu       $v0, $v0, $v1
    /* 6C7B8 8007BFB8 40100200 */  sll        $v0, $v0, 1
    /* 6C7BC 8007BFBC 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C7C0 8007BFC0 21082200 */  addu       $at, $at, $v0
    /* 6C7C4 8007BFC4 CCD62394 */  lhu        $v1, %lo(D_8010D6CC)($at)
    /* 6C7C8 8007BFC8 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C7CC 8007BFCC 21082400 */  addu       $at, $at, $a0
    /* 6C7D0 8007BFD0 CCD623A4 */  sh         $v1, %lo(D_8010D6CC)($at)
    /* 6C7D4 8007BFD4 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C7D8 8007BFD8 21082400 */  addu       $at, $at, $a0
    /* 6C7DC 8007BFDC CAD62394 */  lhu        $v1, %lo(D_8010D6CA)($at)
    /* 6C7E0 8007BFE0 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C7E4 8007BFE4 21082200 */  addu       $at, $at, $v0
    /* 6C7E8 8007BFE8 CAD623A4 */  sh         $v1, %lo(D_8010D6CA)($at)
    /* 6C7EC 8007BFEC 1800A397 */  lhu        $v1, 0x18($sp)
    /* 6C7F0 8007BFF0 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6C7F4 8007BFF4 21082200 */  addu       $at, $at, $v0
    /* 6C7F8 8007BFF8 CCD623A4 */  sh         $v1, %lo(D_8010D6CC)($at)
    /* 6C7FC 8007BFFC 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 6C800 8007C000 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6C804 8007C004 21082400 */  addu       $at, $at, $a0
    /* 6C808 8007C008 CAD622A4 */  sh         $v0, %lo(D_8010D6CA)($at)
    /* 6C80C 8007C00C 2AF00108 */  j          .L8007C0A8
    /* 6C810 8007C010 00000000 */   nop
  .L8007C014:
    /* 6C814 8007C014 1800A28F */  lw         $v0, 0x18($sp)
    /* 6C818 8007C018 00000000 */  nop
    /* 6C81C 8007C01C 40200200 */  sll        $a0, $v0, 1
    /* 6C820 8007C020 21208200 */  addu       $a0, $a0, $v0
    /* 6C824 8007C024 80200400 */  sll        $a0, $a0, 2
    /* 6C828 8007C028 21208200 */  addu       $a0, $a0, $v0
    /* 6C82C 8007C02C 40200400 */  sll        $a0, $a0, 1
    /* 6C830 8007C030 1180103C */  lui        $s0, %hi(D_8010D6CA)
    /* 6C834 8007C034 CAD61026 */  addiu      $s0, $s0, %lo(D_8010D6CA)
    /* 6C838 8007C038 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 6C83C 8007C03C 00000000 */  nop
    /* 6C840 8007C040 40280200 */  sll        $a1, $v0, 1
    /* 6C844 8007C044 2128A200 */  addu       $a1, $a1, $v0
    /* 6C848 8007C048 80280500 */  sll        $a1, $a1, 2
    /* 6C84C 8007C04C 2128A200 */  addu       $a1, $a1, $v0
    /* 6C850 8007C050 40280500 */  sll        $a1, $a1, 1
    /* 6C854 8007C054 21209000 */  addu       $a0, $a0, $s0
    /* 6C858 8007C058 053B030C */  jal        func_800CEC14
    /* 6C85C 8007C05C 2128B000 */   addu      $a1, $a1, $s0
    /* 6C860 8007C060 1800A28F */  lw         $v0, 0x18($sp)
    /* 6C864 8007C064 00000000 */  nop
    /* 6C868 8007C068 40200200 */  sll        $a0, $v0, 1
    /* 6C86C 8007C06C 21208200 */  addu       $a0, $a0, $v0
    /* 6C870 8007C070 80200400 */  sll        $a0, $a0, 2
    /* 6C874 8007C074 21208200 */  addu       $a0, $a0, $v0
    /* 6C878 8007C078 40200400 */  sll        $a0, $a0, 1
    /* 6C87C 8007C07C 02001026 */  addiu      $s0, $s0, 0x2
    /* 6C880 8007C080 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 6C884 8007C084 00000000 */  nop
    /* 6C888 8007C088 40280200 */  sll        $a1, $v0, 1
    /* 6C88C 8007C08C 2128A200 */  addu       $a1, $a1, $v0
    /* 6C890 8007C090 80280500 */  sll        $a1, $a1, 2
    /* 6C894 8007C094 2128A200 */  addu       $a1, $a1, $v0
    /* 6C898 8007C098 40280500 */  sll        $a1, $a1, 1
    /* 6C89C 8007C09C 21209000 */  addu       $a0, $a0, $s0
    /* 6C8A0 8007C0A0 053B030C */  jal        func_800CEC14
    /* 6C8A4 8007C0A4 2128B000 */   addu      $a1, $a1, $s0
  .L8007C0A8:
    /* 6C8A8 8007C0A8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6C8AC 8007C0AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C8B0 8007C0B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6C8B4 8007C0B4 0800E003 */  jr         $ra
    /* 6C8B8 8007C0B8 00000000 */   nop
endlabel func_8007BF24
