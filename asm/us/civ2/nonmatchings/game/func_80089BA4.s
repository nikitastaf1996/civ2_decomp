.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089BA4, 0xD4

glabel func_80089BA4
    /* 7A3A4 80089BA4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7A3A8 80089BA8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 7A3AC 80089BAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7A3B0 80089BB0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7A3B4 80089BB4 21808000 */  addu       $s0, $a0, $zero
    /* 7A3B8 80089BB8 2120A000 */  addu       $a0, $a1, $zero
    /* 7A3BC 80089BBC FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 7A3C0 80089BC0 2200422C */  sltiu      $v0, $v0, 0x22
    /* 7A3C4 80089BC4 26004010 */  beqz       $v0, .L80089C60
    /* 7A3C8 80089BC8 2188C000 */   addu      $s1, $a2, $zero
    /* 7A3CC 80089BCC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 7A3D0 80089BD0 C73B030C */  jal        func_800CEF1C
    /* 7A3D4 80089BD4 1400A627 */   addiu     $a2, $sp, 0x14
    /* 7A3D8 80089BD8 10002012 */  beqz       $s1, .L80089C1C
    /* 7A3DC 80089BDC 40101000 */   sll       $v0, $s0, 1
    /* 7A3E0 80089BE0 21105000 */  addu       $v0, $v0, $s0
    /* 7A3E4 80089BE4 80100200 */  sll        $v0, $v0, 2
    /* 7A3E8 80089BE8 23105000 */  subu       $v0, $v0, $s0
    /* 7A3EC 80089BEC C0100200 */  sll        $v0, $v0, 3
    /* 7A3F0 80089BF0 1180033C */  lui        $v1, %hi(D_80113F08)
    /* 7A3F4 80089BF4 083F6324 */  addiu      $v1, $v1, %lo(D_80113F08)
    /* 7A3F8 80089BF8 1000A48F */  lw         $a0, 0x10($sp)
    /* 7A3FC 80089BFC 21104300 */  addu       $v0, $v0, $v1
    /* 7A400 80089C00 21104400 */  addu       $v0, $v0, $a0
    /* 7A404 80089C04 00004390 */  lbu        $v1, 0x0($v0)
    /* 7A408 80089C08 1400A493 */  lbu        $a0, 0x14($sp)
    /* 7A40C 80089C0C 00000000 */  nop
    /* 7A410 80089C10 25186400 */  or         $v1, $v1, $a0
    /* 7A414 80089C14 18270208 */  j          .L80089C60
    /* 7A418 80089C18 000043A0 */   sb        $v1, 0x0($v0)
  .L80089C1C:
    /* 7A41C 80089C1C 40181000 */  sll        $v1, $s0, 1
    /* 7A420 80089C20 21187000 */  addu       $v1, $v1, $s0
    /* 7A424 80089C24 80180300 */  sll        $v1, $v1, 2
    /* 7A428 80089C28 23187000 */  subu       $v1, $v1, $s0
    /* 7A42C 80089C2C C0180300 */  sll        $v1, $v1, 3
    /* 7A430 80089C30 1180023C */  lui        $v0, %hi(D_80113F08)
    /* 7A434 80089C34 083F4224 */  addiu      $v0, $v0, %lo(D_80113F08)
    /* 7A438 80089C38 1000A48F */  lw         $a0, 0x10($sp)
    /* 7A43C 80089C3C 21186200 */  addu       $v1, $v1, $v0
    /* 7A440 80089C40 21186400 */  addu       $v1, $v1, $a0
    /* 7A444 80089C44 1400A493 */  lbu        $a0, 0x14($sp)
    /* 7A448 80089C48 00000000 */  nop
    /* 7A44C 80089C4C 27200400 */  nor        $a0, $zero, $a0
    /* 7A450 80089C50 00006290 */  lbu        $v0, 0x0($v1)
    /* 7A454 80089C54 00000000 */  nop
    /* 7A458 80089C58 24104400 */  and        $v0, $v0, $a0
    /* 7A45C 80089C5C 000062A0 */  sb         $v0, 0x0($v1)
  .L80089C60:
    /* 7A460 80089C60 2000BF8F */  lw         $ra, 0x20($sp)
    /* 7A464 80089C64 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7A468 80089C68 1800B08F */  lw         $s0, 0x18($sp)
    /* 7A46C 80089C6C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7A470 80089C70 0800E003 */  jr         $ra
    /* 7A474 80089C74 00000000 */   nop
endlabel func_80089BA4
