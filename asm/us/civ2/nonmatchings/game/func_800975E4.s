.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800975E4, 0x148

glabel func_800975E4
    /* 87DE4 800975E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 87DE8 800975E8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 87DEC 800975EC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 87DF0 800975F0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 87DF4 800975F4 CB1A030C */  jal        func_800C6B2C
    /* 87DF8 800975F8 00000000 */   nop
    /* 87DFC 800975FC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 87E00 80097600 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 87E04 80097604 731B030C */  jal        func_800C6DCC
    /* 87E08 80097608 02000524 */   addiu     $a1, $zero, 0x2
    /* 87E0C 8009760C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 87E10 80097610 40010224 */  addiu      $v0, $zero, 0x140
    /* 87E14 80097614 1400A2AF */  sw         $v0, 0x14($sp)
    /* 87E18 80097618 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 87E1C 8009761C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 87E20 80097620 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87E24 80097624 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87E28 80097628 1280053C */  lui        $a1, %hi(D_80121340)
    /* 87E2C 8009762C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 87E30 80097630 7C000624 */  addiu      $a2, $zero, 0x7C
    /* 87E34 80097634 A6DD030C */  jal        func_800F7698
    /* 87E38 80097638 21380000 */   addu      $a3, $zero, $zero
    /* 87E3C 8009763C 2817010C */  jal        func_80045CA0
    /* 87E40 80097640 00000000 */   nop
    /* 87E44 80097644 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 87E48 80097648 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 87E4C 8009764C 5A000524 */  addiu      $a1, $zero, 0x5A
    /* 87E50 80097650 0A000624 */  addiu      $a2, $zero, 0xA
    /* 87E54 80097654 44E3030C */  jal        func_800F8D10
    /* 87E58 80097658 C0000724 */   addiu     $a3, $zero, 0xC0
    /* 87E5C 8009765C 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87E60 80097660 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87E64 80097664 1280053C */  lui        $a1, %hi(D_8011C238)
    /* 87E68 80097668 38C2A524 */  addiu      $a1, $a1, %lo(D_8011C238)
    /* 87E6C 8009766C 59EB030C */  jal        func_800FAD64
    /* 87E70 80097670 00000000 */   nop
    /* 87E74 80097674 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87E78 80097678 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87E7C 8009767C 3EEB030C */  jal        func_800FACF8
    /* 87E80 80097680 9EFF0524 */   addiu     $a1, $zero, -0x62
    /* 87E84 80097684 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87E88 80097688 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87E8C 8009768C F9EB030C */  jal        func_800FAFE4
    /* 87E90 80097690 00000000 */   nop
    /* 87E94 80097694 00140200 */  sll        $v0, $v0, 16
    /* 87E98 80097698 03140200 */  sra        $v0, $v0, 16
    /* 87E9C 8009769C D00482AF */  sw         $v0, %gp_rel(D_801589A8)($gp)
    /* 87EA0 800976A0 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87EA4 800976A4 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87EA8 800976A8 03EC030C */  jal        func_800FB00C
    /* 87EAC 800976AC 00000000 */   nop
    /* 87EB0 800976B0 00140200 */  sll        $v0, $v0, 16
    /* 87EB4 800976B4 03140200 */  sra        $v0, $v0, 16
    /* 87EB8 800976B8 D40482AF */  sw         $v0, %gp_rel(D_801589AC)($gp)
    /* 87EBC 800976BC 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87EC0 800976C0 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87EC4 800976C4 70EB030C */  jal        func_800FADC0
    /* 87EC8 800976C8 00000000 */   nop
    /* 87ECC 800976CC 0680023C */  lui        $v0, %hi(func_80066028)
    /* 87ED0 800976D0 28604224 */  addiu      $v0, $v0, %lo(func_80066028)
    /* 87ED4 800976D4 1180013C */  lui        $at, %hi(D_8010CC20)
    /* 87ED8 800976D8 20CC22AC */  sw         $v0, %lo(D_8010CC20)($at)
    /* 87EDC 800976DC 0A80023C */  lui        $v0, %hi(func_800A067C)
    /* 87EE0 800976E0 7C064224 */  addiu      $v0, $v0, %lo(func_800A067C)
    /* 87EE4 800976E4 1180013C */  lui        $at, %hi(D_8010CC18)
    /* 87EE8 800976E8 18CC22AC */  sw         $v0, %lo(D_8010CC18)($at)
    /* 87EEC 800976EC 0A80023C */  lui        $v0, %hi(func_800A0508)
    /* 87EF0 800976F0 08054224 */  addiu      $v0, $v0, %lo(func_800A0508)
    /* 87EF4 800976F4 1180013C */  lui        $at, %hi(D_8010CC1C)
    /* 87EF8 800976F8 1CCC22AC */  sw         $v0, %lo(D_8010CC1C)($at)
    /* 87EFC 800976FC 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87F00 80097700 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87F04 80097704 3EEB030C */  jal        func_800FACF8
    /* 87F08 80097708 9EFF0524 */   addiu     $a1, $zero, -0x62
    /* 87F0C 8009770C BF12040C */  jal        func_80104AFC
    /* 87F10 80097710 00000000 */   nop
    /* 87F14 80097714 01000224 */  addiu      $v0, $zero, 0x1
    /* 87F18 80097718 C40482AF */  sw         $v0, %gp_rel(D_8015899C)($gp)
    /* 87F1C 8009771C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 87F20 80097720 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 87F24 80097724 0800E003 */  jr         $ra
    /* 87F28 80097728 00000000 */   nop
endlabel func_800975E4
