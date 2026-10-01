.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F2C8, 0x198

glabel func_8009F2C8
    /* 8FAC8 8009F2C8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8FACC 8009F2CC 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8FAD0 8009F2D0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 8FAD4 8009F2D4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 8FAD8 8009F2D8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 8FADC 8009F2DC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8FAE0 8009F2E0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8FAE4 8009F2E4 21888000 */  addu       $s1, $a0, $zero
    /* 8FAE8 8009F2E8 2180A000 */  addu       $s0, $a1, $zero
    /* 8FAEC 8009F2EC 21A0C000 */  addu       $s4, $a2, $zero
    /* 8FAF0 8009F2F0 4800A28F */  lw         $v0, 0x48($sp)
    /* 8FAF4 8009F2F4 21900002 */  addu       $s2, $s0, $zero
    /* 8FAF8 8009F2F8 21988002 */  addu       $s3, $s4, $zero
    /* 8FAFC 8009F2FC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8FB00 8009F300 1800A527 */  addiu      $a1, $sp, 0x18
    /* 8FB04 8009F304 0A66020C */  jal        func_80099828
    /* 8FB08 8009F308 1C00A627 */   addiu     $a2, $sp, 0x1C
    /* 8FB0C 8009F30C 00841000 */  sll        $s0, $s0, 16
    /* 8FB10 8009F310 03841000 */  sra        $s0, $s0, 16
    /* 8FB14 8009F314 1800A28F */  lw         $v0, 0x18($sp)
    /* 8FB18 8009F318 00000000 */  nop
    /* 8FB1C 8009F31C 2A800202 */  slt        $s0, $s0, $v0
    /* 8FB20 8009F320 46000016 */  bnez       $s0, .L8009F43C
    /* 8FB24 8009F324 08000224 */   addiu     $v0, $zero, 0x8
    /* 8FB28 8009F328 00141400 */  sll        $v0, $s4, 16
    /* 8FB2C 8009F32C 03140200 */  sra        $v0, $v0, 16
    /* 8FB30 8009F330 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 8FB34 8009F334 00000000 */  nop
    /* 8FB38 8009F338 2A104300 */  slt        $v0, $v0, $v1
    /* 8FB3C 8009F33C 3F004014 */  bnez       $v0, .L8009F43C
    /* 8FB40 8009F340 08000224 */   addiu     $v0, $zero, 0x8
    /* 8FB44 8009F344 00141200 */  sll        $v0, $s2, 16
    /* 8FB48 8009F348 03140200 */  sra        $v0, $v0, 16
    /* 8FB4C 8009F34C 44022386 */  lh         $v1, 0x244($s1)
    /* 8FB50 8009F350 1800A48F */  lw         $a0, 0x18($sp)
    /* 8FB54 8009F354 00000000 */  nop
    /* 8FB58 8009F358 21186400 */  addu       $v1, $v1, $a0
    /* 8FB5C 8009F35C 2A104300 */  slt        $v0, $v0, $v1
    /* 8FB60 8009F360 2B004010 */  beqz       $v0, .L8009F410
    /* 8FB64 8009F364 00141300 */   sll       $v0, $s3, 16
    /* 8FB68 8009F368 03140200 */  sra        $v0, $v0, 16
    /* 8FB6C 8009F36C 46022386 */  lh         $v1, 0x246($s1)
    /* 8FB70 8009F370 1C00A48F */  lw         $a0, 0x1C($sp)
    /* 8FB74 8009F374 00000000 */  nop
    /* 8FB78 8009F378 21186400 */  addu       $v1, $v1, $a0
    /* 8FB7C 8009F37C 2A104300 */  slt        $v0, $v0, $v1
    /* 8FB80 8009F380 23004010 */  beqz       $v0, .L8009F410
    /* 8FB84 8009F384 00141200 */   sll       $v0, $s2, 16
    /* 8FB88 8009F388 032C0200 */  sra        $a1, $v0, 16
    /* 8FB8C 8009F38C 1800A28F */  lw         $v0, 0x18($sp)
    /* 8FB90 8009F390 00000000 */  nop
    /* 8FB94 8009F394 2328A200 */  subu       $a1, $a1, $v0
    /* 8FB98 8009F398 00141300 */  sll        $v0, $s3, 16
    /* 8FB9C 8009F39C 03340200 */  sra        $a2, $v0, 16
    /* 8FBA0 8009F3A0 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 8FBA4 8009F3A4 00000000 */  nop
    /* 8FBA8 8009F3A8 2330C200 */  subu       $a2, $a2, $v0
    /* 8FBAC 8009F3AC D4002296 */  lhu        $v0, 0xD4($s1)
    /* 8FBB0 8009F3B0 00000000 */  nop
    /* 8FBB4 8009F3B4 23104202 */  subu       $v0, $s2, $v0
    /* 8FBB8 8009F3B8 21904000 */  addu       $s2, $v0, $zero
    /* 8FBBC 8009F3BC D8002396 */  lhu        $v1, 0xD8($s1)
    /* 8FBC0 8009F3C0 00000000 */  nop
    /* 8FBC4 8009F3C4 23186302 */  subu       $v1, $s3, $v1
    /* 8FBC8 8009F3C8 00140200 */  sll        $v0, $v0, 16
    /* 8FBCC 8009F3CC 10004004 */  bltz       $v0, .L8009F410
    /* 8FBD0 8009F3D0 21986000 */   addu      $s3, $v1, $zero
    /* 8FBD4 8009F3D4 00140300 */  sll        $v0, $v1, 16
    /* 8FBD8 8009F3D8 0D004004 */  bltz       $v0, .L8009F410
    /* 8FBDC 8009F3DC 00141200 */   sll       $v0, $s2, 16
    /* 8FBE0 8009F3E0 03140200 */  sra        $v0, $v0, 16
    /* 8FBE4 8009F3E4 DC00238E */  lw         $v1, 0xDC($s1)
    /* 8FBE8 8009F3E8 00000000 */  nop
    /* 8FBEC 8009F3EC 2A104300 */  slt        $v0, $v0, $v1
    /* 8FBF0 8009F3F0 07004010 */  beqz       $v0, .L8009F410
    /* 8FBF4 8009F3F4 00141300 */   sll       $v0, $s3, 16
    /* 8FBF8 8009F3F8 03140200 */  sra        $v0, $v0, 16
    /* 8FBFC 8009F3FC E000238E */  lw         $v1, 0xE0($s1)
    /* 8FC00 8009F400 00000000 */  nop
    /* 8FC04 8009F404 2A104300 */  slt        $v0, $v0, $v1
    /* 8FC08 8009F408 03004014 */  bnez       $v0, .L8009F418
    /* 8FC0C 8009F40C 002C0500 */   sll       $a1, $a1, 16
  .L8009F410:
    /* 8FC10 8009F410 0F7D0208 */  j          .L8009F43C
    /* 8FC14 8009F414 08000224 */   addiu     $v0, $zero, 0x8
  .L8009F418:
    /* 8FC18 8009F418 00340600 */  sll        $a2, $a2, 16
    /* 8FC1C 8009F41C 94022426 */  addiu      $a0, $s1, 0x294
    /* 8FC20 8009F420 032C0500 */  sra        $a1, $a1, 16
    /* 8FC24 8009F424 55E7030C */  jal        func_800F9D54
    /* 8FC28 8009F428 03340600 */   sra       $a2, $a2, 16
    /* 8FC2C 8009F42C 00140200 */  sll        $v0, $v0, 16
    /* 8FC30 8009F430 03140200 */  sra        $v0, $v0, 16
    /* 8FC34 8009F434 F6FF4224 */  addiu      $v0, $v0, -0xA
    /* 8FC38 8009F438 03110200 */  sra        $v0, $v0, 4
  .L8009F43C:
    /* 8FC3C 8009F43C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8FC40 8009F440 3000B48F */  lw         $s4, 0x30($sp)
    /* 8FC44 8009F444 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 8FC48 8009F448 2800B28F */  lw         $s2, 0x28($sp)
    /* 8FC4C 8009F44C 2400B18F */  lw         $s1, 0x24($sp)
    /* 8FC50 8009F450 2000B08F */  lw         $s0, 0x20($sp)
    /* 8FC54 8009F454 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8FC58 8009F458 0800E003 */  jr         $ra
    /* 8FC5C 8009F45C 00000000 */   nop
endlabel func_8009F2C8
