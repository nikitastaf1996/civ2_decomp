.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E20C, 0x124

glabel func_8001E20C
    /* EA0C 8001E20C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* EA10 8001E210 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* EA14 8001E214 2800B4AF */  sw         $s4, 0x28($sp)
    /* EA18 8001E218 2400B3AF */  sw         $s3, 0x24($sp)
    /* EA1C 8001E21C 2000B2AF */  sw         $s2, 0x20($sp)
    /* EA20 8001E220 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* EA24 8001E224 1800B0AF */  sw         $s0, 0x18($sp)
    /* EA28 8001E228 2138C000 */  addu       $a3, $a2, $zero
    /* EA2C 8001E22C 21988000 */  addu       $s3, $a0, $zero
    /* EA30 8001E230 2190A000 */  addu       $s2, $a1, $zero
    /* EA34 8001E234 21A0E000 */  addu       $s4, $a3, $zero
    /* EA38 8001E238 00240400 */  sll        $a0, $a0, 16
    /* EA3C 8001E23C 03840400 */  sra        $s0, $a0, 16
    /* EA40 8001E240 002C0500 */  sll        $a1, $a1, 16
    /* EA44 8001E244 038C0500 */  sra        $s1, $a1, 16
    /* EA48 8001E248 003C0700 */  sll        $a3, $a3, 16
    /* EA4C 8001E24C 200C828F */  lw         $v0, %gp_rel(D_80055330)($gp)
    /* EA50 8001E250 00000000 */  nop
    /* EA54 8001E254 1000A2AF */  sw         $v0, 0x10($sp)
    /* EA58 8001E258 0180043C */  lui        $a0, %hi(D_80017164)
    /* EA5C 8001E25C 64718424 */  addiu      $a0, $a0, %lo(D_80017164)
    /* EA60 8001E260 21280002 */  addu       $a1, $s0, $zero
    /* EA64 8001E264 21302002 */  addu       $a2, $s1, $zero
    /* EA68 8001E268 5CAD000C */  jal        func_8002B570
    /* EA6C 8001E26C 033C0700 */   sra       $a3, $a3, 16
    /* EA70 8001E270 32040224 */  addiu      $v0, $zero, 0x432
    /* EA74 8001E274 07000212 */  beq        $s0, $v0, .L8001E294
    /* EA78 8001E278 21200002 */   addu      $a0, $s0, $zero
    /* EA7C 8001E27C 21282002 */  addu       $a1, $s1, $zero
    /* EA80 8001E280 32040624 */  addiu      $a2, $zero, 0x432
    /* EA84 8001E284 11B1000C */  jal        func_8002C444
    /* EA88 8001E288 01000724 */   addiu     $a3, $zero, 0x1
    /* EA8C 8001E28C 21904000 */  addu       $s2, $v0, $zero
    /* EA90 8001E290 32041324 */  addiu      $s3, $zero, 0x432
  .L8001E294:
    /* EA94 8001E294 0877000C */  jal        func_8001DC20
    /* EA98 8001E298 21880000 */   addu      $s1, $zero, $zero
    /* EA9C 8001E29C 00141200 */  sll        $v0, $s2, 16
    /* EAA0 8001E2A0 1A004018 */  blez       $v0, .L8001E30C
    /* EAA4 8001E2A4 00141300 */   sll       $v0, $s3, 16
    /* EAA8 8001E2A8 039C0200 */  sra        $s3, $v0, 16
    /* EAAC 8001E2AC 00141200 */  sll        $v0, $s2, 16
    /* EAB0 8001E2B0 03940200 */  sra        $s2, $v0, 16
    /* EAB4 8001E2B4 00141100 */  sll        $v0, $s1, 16
  .L8001E2B8:
    /* EAB8 8001E2B8 03140200 */  sra        $v0, $v0, 16
    /* EABC 8001E2BC 21106202 */  addu       $v0, $s3, $v0
    /* EAC0 8001E2C0 80800200 */  sll        $s0, $v0, 2
    /* EAC4 8001E2C4 21800202 */  addu       $s0, $s0, $v0
    /* EAC8 8001E2C8 80801000 */  sll        $s0, $s0, 2
    /* EACC 8001E2CC 0480023C */  lui        $v0, %hi(D_80046F1C)
    /* EAD0 8001E2D0 1C6F4224 */  addiu      $v0, $v0, %lo(D_80046F1C)
    /* EAD4 8001E2D4 21800202 */  addu       $s0, $s0, $v0
    /* EAD8 8001E2D8 F664000C */  jal        func_800193D8
    /* EADC 8001E2DC 21200002 */   addu      $a0, $s0, $zero
    /* EAE0 8001E2E0 002C1400 */  sll        $a1, $s4, 16
    /* EAE4 8001E2E4 21200002 */  addu       $a0, $s0, $zero
    /* EAE8 8001E2E8 3577000C */  jal        func_8001DCD4
    /* EAEC 8001E2EC 032C0500 */   sra       $a1, $a1, 16
    /* EAF0 8001E2F0 01002226 */  addiu      $v0, $s1, 0x1
    /* EAF4 8001E2F4 21884000 */  addu       $s1, $v0, $zero
    /* EAF8 8001E2F8 00140200 */  sll        $v0, $v0, 16
    /* EAFC 8001E2FC 03140200 */  sra        $v0, $v0, 16
    /* EB00 8001E300 2A105200 */  slt        $v0, $v0, $s2
    /* EB04 8001E304 ECFF4014 */  bnez       $v0, .L8001E2B8
    /* EB08 8001E308 00141100 */   sll       $v0, $s1, 16
  .L8001E30C:
    /* EB0C 8001E30C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* EB10 8001E310 2800B48F */  lw         $s4, 0x28($sp)
    /* EB14 8001E314 2400B38F */  lw         $s3, 0x24($sp)
    /* EB18 8001E318 2000B28F */  lw         $s2, 0x20($sp)
    /* EB1C 8001E31C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* EB20 8001E320 1800B08F */  lw         $s0, 0x18($sp)
    /* EB24 8001E324 3000BD27 */  addiu      $sp, $sp, 0x30
    /* EB28 8001E328 0800E003 */  jr         $ra
    /* EB2C 8001E32C 00000000 */   nop
endlabel func_8001E20C
