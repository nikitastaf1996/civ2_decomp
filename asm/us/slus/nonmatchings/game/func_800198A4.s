.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800198A4, 0x180

glabel func_800198A4
    /* A0A4 800198A4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A0A8 800198A8 2800BFAF */  sw         $ra, 0x28($sp)
    /* A0AC 800198AC 2400B3AF */  sw         $s3, 0x24($sp)
    /* A0B0 800198B0 2000B2AF */  sw         $s2, 0x20($sp)
    /* A0B4 800198B4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A0B8 800198B8 1800B0AF */  sw         $s0, 0x18($sp)
    /* A0BC 800198BC 21988000 */  addu       $s3, $a0, $zero
    /* A0C0 800198C0 6E68000C */  jal        func_8001A1B8
    /* A0C4 800198C4 2180A000 */   addu      $s0, $a1, $zero
    /* A0C8 800198C8 C0030424 */  addiu      $a0, $zero, 0x3C0
    /* A0CC 800198CC C7CB000C */  jal        FntLoad
    /* A0D0 800198D0 00010524 */   addiu     $a1, $zero, 0x100
    /* A0D4 800198D4 01001124 */  addiu      $s1, $zero, 0x1
    /* A0D8 800198D8 1000B1AF */  sw         $s1, 0x10($sp)
    /* A0DC 800198DC 00020224 */  addiu      $v0, $zero, 0x200
    /* A0E0 800198E0 1400A2AF */  sw         $v0, 0x14($sp)
    /* A0E4 800198E4 20000424 */  addiu      $a0, $zero, 0x20
    /* A0E8 800198E8 68000524 */  addiu      $a1, $zero, 0x68
    /* A0EC 800198EC 00010624 */  addiu      $a2, $zero, 0x100
    /* A0F0 800198F0 EFCB000C */  jal        FntOpen
    /* A0F4 800198F4 80000724 */   addiu     $a3, $zero, 0x80
    /* A0F8 800198F8 21904000 */  addu       $s2, $v0, $zero
    /* A0FC 800198FC B7CB000C */  jal        SetDumpFnt
    /* A100 80019900 21204002 */   addu      $a0, $s2, $zero
    /* A104 80019904 80801000 */  sll        $s0, $s0, 2
    /* A108 80019908 0180013C */  lui        $at, %hi(D_8001696C)
    /* A10C 8001990C 21083000 */  addu       $at, $at, $s0
    /* A110 80019910 6C69308C */  lw         $s0, %lo(D_8001696C)($at)
    /* A114 80019914 05007112 */  beq        $s3, $s1, .L8001992C
    /* A118 80019918 02000224 */   addiu     $v0, $zero, 0x2
    /* A11C 8001991C 07006212 */  beq        $s3, $v0, .L8001993C
    /* A120 80019920 00000000 */   nop
    /* A124 80019924 70660008 */  j          .L800199C0
    /* A128 80019928 1000A0AF */   sw        $zero, 0x10($sp)
  .L8001992C:
    /* A12C 8001992C 0180053C */  lui        $a1, %hi(D_800169F4)
    /* A130 80019930 F469A524 */  addiu      $a1, $a1, %lo(D_800169F4)
    /* A134 80019934 52660008 */  j          .L80019948
    /* A138 80019938 21204002 */   addu      $a0, $s2, $zero
  .L8001993C:
    /* A13C 8001993C 21204002 */  addu       $a0, $s2, $zero
    /* A140 80019940 0180053C */  lui        $a1, %hi(D_80016A54)
    /* A144 80019944 546AA524 */  addiu      $a1, $a1, %lo(D_80016A54)
  .L80019948:
    /* A148 80019948 64CD000C */  jal        FntPrint
    /* A14C 8001994C 00000000 */   nop
    /* A150 80019950 0580053C */  lui        $a1, %hi(D_8005647C)
    /* A154 80019954 7C64A524 */  addiu      $a1, $a1, %lo(D_8005647C)
    /* A158 80019958 64CD000C */  jal        FntPrint
    /* A15C 8001995C 21204002 */   addu      $a0, $s2, $zero
    /* A160 80019960 21204002 */  addu       $a0, $s2, $zero
    /* A164 80019964 64CD000C */  jal        FntPrint
    /* A168 80019968 21280002 */   addu      $a1, $s0, $zero
    /* A16C 8001996C 0580053C */  lui        $a1, %hi(D_8005647C)
    /* A170 80019970 7C64A524 */  addiu      $a1, $a1, %lo(D_8005647C)
    /* A174 80019974 64CD000C */  jal        FntPrint
    /* A178 80019978 21204002 */   addu      $a0, $s2, $zero
    /* A17C 8001997C 0180053C */  lui        $a1, %hi(D_80016A14)
    /* A180 80019980 146AA524 */  addiu      $a1, $a1, %lo(D_80016A14)
    /* A184 80019984 64CD000C */  jal        FntPrint
    /* A188 80019988 21204002 */   addu      $a0, $s2, $zero
    /* A18C 8001998C 0580053C */  lui        $a1, %hi(D_80056480)
    /* A190 80019990 8064A524 */  addiu      $a1, $a1, %lo(D_80056480)
    /* A194 80019994 64CD000C */  jal        FntPrint
    /* A198 80019998 21204002 */   addu      $a0, $s2, $zero
    /* A19C 8001999C 0180053C */  lui        $a1, %hi(D_80016A34)
    /* A1A0 800199A0 346AA524 */  addiu      $a1, $a1, %lo(D_80016A34)
    /* A1A4 800199A4 64CD000C */  jal        FntPrint
    /* A1A8 800199A8 21204002 */   addu      $a0, $s2, $zero
    /* A1AC 800199AC 0580053C */  lui        $a1, %hi(D_80056480)
    /* A1B0 800199B0 8064A524 */  addiu      $a1, $a1, %lo(D_80056480)
    /* A1B4 800199B4 64CD000C */  jal        FntPrint
    /* A1B8 800199B8 21204002 */   addu      $a0, $s2, $zero
    /* A1BC 800199BC 1000A0AF */  sw         $zero, 0x10($sp)
  .L800199C0:
    /* A1C0 800199C0 40010424 */  addiu      $a0, $zero, 0x140
    /* A1C4 800199C4 F0000524 */  addiu      $a1, $zero, 0xF0
    /* A1C8 800199C8 04000624 */  addiu      $a2, $zero, 0x4
    /* A1CC 800199CC 37E1000C */  jal        GsInitGraph2
    /* A1D0 800199D0 21380000 */   addu      $a3, $zero, $zero
    /* A1D4 800199D4 14CF000C */  jal        SetDispMask
    /* A1D8 800199D8 01000424 */   addiu     $a0, $zero, 0x1
    /* A1DC 800199DC 9DCC000C */  jal        FntFlush
    /* A1E0 800199E0 21204002 */   addu      $a0, $s2, $zero
  .L800199E4:
    /* A1E4 800199E4 23B3000C */  jal        VSync
    /* A1E8 800199E8 21200000 */   addu      $a0, $zero, $zero
    /* A1EC 800199EC 946C000C */  jal        func_8001B250
    /* A1F0 800199F0 00000000 */   nop
    /* A1F4 800199F4 FBFF4010 */  beqz       $v0, .L800199E4
    /* A1F8 800199F8 00000000 */   nop
    /* A1FC 800199FC 6E68000C */  jal        func_8001A1B8
    /* A200 80019A00 00000000 */   nop
    /* A204 80019A04 2800BF8F */  lw         $ra, 0x28($sp)
    /* A208 80019A08 2400B38F */  lw         $s3, 0x24($sp)
    /* A20C 80019A0C 2000B28F */  lw         $s2, 0x20($sp)
    /* A210 80019A10 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A214 80019A14 1800B08F */  lw         $s0, 0x18($sp)
    /* A218 80019A18 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A21C 80019A1C 0800E003 */  jr         $ra
    /* A220 80019A20 00000000 */   nop
endlabel func_800198A4
