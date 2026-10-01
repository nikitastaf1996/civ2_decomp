.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A29BC, 0xAC

glabel func_800A29BC
    /* 931BC 800A29BC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 931C0 800A29C0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 931C4 800A29C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 931C8 800A29C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 931CC 800A29CC 21808000 */  addu       $s0, $a0, $zero
    /* 931D0 800A29D0 1189020C */  jal        func_800A2444
    /* 931D4 800A29D4 2188C000 */   addu      $s1, $a2, $zero
    /* 931D8 800A29D8 21204000 */  addu       $a0, $v0, $zero
    /* 931DC 800A29DC 1C008010 */  beqz       $a0, .L800A2A50
    /* 931E0 800A29E0 00000000 */   nop
    /* 931E4 800A29E4 0D002012 */  beqz       $s1, .L800A2A1C
    /* 931E8 800A29E8 00000000 */   nop
    /* 931EC 800A29EC 0800828C */  lw         $v0, 0x8($a0)
    /* 931F0 800A29F0 00000000 */  nop
    /* 931F4 800A29F4 02004230 */  andi       $v0, $v0, 0x2
    /* 931F8 800A29F8 05004014 */  bnez       $v0, .L800A2A10
    /* 931FC 800A29FC FFFF033C */   lui       $v1, (0xFFFF7FFF >> 16)
    /* 93200 800A2A00 1400028E */  lw         $v0, 0x14($s0)
    /* 93204 800A2A04 FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 93208 800A2A08 24104300 */  and        $v0, $v0, $v1
    /* 9320C 800A2A0C 140002AE */  sw         $v0, 0x14($s0)
  .L800A2A10:
    /* 93210 800A2A10 0800828C */  lw         $v0, 0x8($a0)
    /* 93214 800A2A14 938A0208 */  j          .L800A2A4C
    /* 93218 800A2A18 02004234 */   ori       $v0, $v0, 0x2
  .L800A2A1C:
    /* 9321C 800A2A1C 0800828C */  lw         $v0, 0x8($a0)
    /* 93220 800A2A20 00000000 */  nop
    /* 93224 800A2A24 02004230 */  andi       $v0, $v0, 0x2
    /* 93228 800A2A28 05004010 */  beqz       $v0, .L800A2A40
    /* 9322C 800A2A2C FFFF033C */   lui       $v1, (0xFFFF7FFF >> 16)
    /* 93230 800A2A30 1400028E */  lw         $v0, 0x14($s0)
    /* 93234 800A2A34 FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 93238 800A2A38 24104300 */  and        $v0, $v0, $v1
    /* 9323C 800A2A3C 140002AE */  sw         $v0, 0x14($s0)
  .L800A2A40:
    /* 93240 800A2A40 0800828C */  lw         $v0, 0x8($a0)
    /* 93244 800A2A44 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 93248 800A2A48 24104300 */  and        $v0, $v0, $v1
  .L800A2A4C:
    /* 9324C 800A2A4C 080082AC */  sw         $v0, 0x8($a0)
  .L800A2A50:
    /* 93250 800A2A50 1800BF8F */  lw         $ra, 0x18($sp)
    /* 93254 800A2A54 1400B18F */  lw         $s1, 0x14($sp)
    /* 93258 800A2A58 1000B08F */  lw         $s0, 0x10($sp)
    /* 9325C 800A2A5C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 93260 800A2A60 0800E003 */  jr         $ra
    /* 93264 800A2A64 00000000 */   nop
endlabel func_800A29BC
