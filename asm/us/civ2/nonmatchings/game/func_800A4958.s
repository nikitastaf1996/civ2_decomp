.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A4958, 0xF4

glabel func_800A4958
    /* 95158 800A4958 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9515C 800A495C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 95160 800A4960 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 95164 800A4964 2800B6AF */  sw         $s6, 0x28($sp)
    /* 95168 800A4968 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9516C 800A496C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 95170 800A4970 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 95174 800A4974 1800B2AF */  sw         $s2, 0x18($sp)
    /* 95178 800A4978 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9517C 800A497C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 95180 800A4980 21B08000 */  addu       $s6, $a0, $zero
    /* 95184 800A4984 2198A000 */  addu       $s3, $a1, $zero
    /* 95188 800A4988 21A0C000 */  addu       $s4, $a2, $zero
    /* 9518C 800A498C 21A8E000 */  addu       $s5, $a3, $zero
    /* 95190 800A4990 4800B78F */  lw         $s7, 0x48($sp)
    /* 95194 800A4994 21900000 */  addu       $s2, $zero, $zero
  .L800A4998:
    /* 95198 800A4998 0200422A */  slti       $v0, $s2, 0x2
    /* 9519C 800A499C 1F004010 */  beqz       $v0, .L800A4A1C
    /* 951A0 800A49A0 21100000 */   addu      $v0, $zero, $zero
    /* 951A4 800A49A4 173B030C */  jal        func_800CEC5C
    /* 951A8 800A49A8 2120D202 */   addu      $a0, $s6, $s2
    /* 951AC 800A49AC 21884000 */  addu       $s1, $v0, $zero
    /* 951B0 800A49B0 21807202 */  addu       $s0, $s3, $s2
    /* 951B4 800A49B4 0D000006 */  bltz       $s0, .L800A49EC
    /* 951B8 800A49B8 21180000 */   addu      $v1, $zero, $zero
    /* 951BC 800A49BC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 951C0 800A49C0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 951C4 800A49C4 00000000 */  nop
    /* 951C8 800A49C8 2A100202 */  slt        $v0, $s0, $v0
    /* 951CC 800A49CC 07004010 */  beqz       $v0, .L800A49EC
    /* 951D0 800A49D0 00000000 */   nop
    /* 951D4 800A49D4 05002006 */  bltz       $s1, .L800A49EC
    /* 951D8 800A49D8 00000000 */   nop
    /* 951DC 800A49DC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 951E0 800A49E0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 951E4 800A49E4 00000000 */  nop
    /* 951E8 800A49E8 2A182202 */  slt        $v1, $s1, $v0
  .L800A49EC:
    /* 951EC 800A49EC 09006010 */  beqz       $v1, .L800A4A14
    /* 951F0 800A49F0 21202002 */   addu      $a0, $s1, $zero
    /* 951F4 800A49F4 F760020C */  jal        func_800983DC
    /* 951F8 800A49F8 21280002 */   addu      $a1, $s0, $zero
    /* 951FC 800A49FC E6FF5714 */  bne        $v0, $s7, .L800A4998
    /* 95200 800A4A00 01005226 */   addiu     $s2, $s2, 0x1
    /* 95204 800A4A04 000091AE */  sw         $s1, 0x0($s4)
    /* 95208 800A4A08 0000B0AE */  sw         $s0, 0x0($s5)
    /* 9520C 800A4A0C 87920208 */  j          .L800A4A1C
    /* 95210 800A4A10 01000224 */   addiu     $v0, $zero, 0x1
  .L800A4A14:
    /* 95214 800A4A14 66920208 */  j          .L800A4998
    /* 95218 800A4A18 01005226 */   addiu     $s2, $s2, 0x1
  .L800A4A1C:
    /* 9521C 800A4A1C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 95220 800A4A20 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 95224 800A4A24 2800B68F */  lw         $s6, 0x28($sp)
    /* 95228 800A4A28 2400B58F */  lw         $s5, 0x24($sp)
    /* 9522C 800A4A2C 2000B48F */  lw         $s4, 0x20($sp)
    /* 95230 800A4A30 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 95234 800A4A34 1800B28F */  lw         $s2, 0x18($sp)
    /* 95238 800A4A38 1400B18F */  lw         $s1, 0x14($sp)
    /* 9523C 800A4A3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 95240 800A4A40 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 95244 800A4A44 0800E003 */  jr         $ra
    /* 95248 800A4A48 00000000 */   nop
endlabel func_800A4958
