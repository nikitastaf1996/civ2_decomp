.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D5D8, 0x18C

glabel func_8001D5D8
    /* DDD8 8001D5D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* DDDC 8001D5DC 1800BFAF */  sw         $ra, 0x18($sp)
    /* DDE0 8001D5E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* DDE4 8001D5E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* DDE8 8001D5E8 01001124 */  addiu      $s1, $zero, 0x1
    /* DDEC 8001D5EC FF061024 */  addiu      $s0, $zero, 0x6FF
    /* DDF0 8001D5F0 00141000 */  sll        $v0, $s0, 16
  .L8001D5F4:
    /* DDF4 8001D5F4 03140200 */  sra        $v0, $v0, 16
    /* DDF8 8001D5F8 C0180200 */  sll        $v1, $v0, 3
    /* DDFC 8001D5FC 21186200 */  addu       $v1, $v1, $v0
    /* DE00 8001D600 80180300 */  sll        $v1, $v1, 2
    /* DE04 8001D604 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* DE08 8001D608 21082300 */  addu       $at, $at, $v1
    /* DE0C 8001D60C E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* DE10 8001D610 00000000 */  nop
    /* DE14 8001D614 1D004004 */  bltz       $v0, .L8001D68C
    /* DE18 8001D618 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* DE1C 8001D61C 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* DE20 8001D620 21082300 */  addu       $at, $at, $v1
    /* DE24 8001D624 E8A02294 */  lhu        $v0, %lo(D_8012A0E8)($at)
    /* DE28 8001D628 00000000 */  nop
    /* DE2C 8001D62C 17004010 */  beqz       $v0, .L8001D68C
    /* DE30 8001D630 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* DE34 8001D634 1380013C */  lui        $at, %hi(D_8012A0EA)
    /* DE38 8001D638 21082300 */  addu       $at, $at, $v1
    /* DE3C 8001D63C EAA02294 */  lhu        $v0, %lo(D_8012A0EA)($at)
    /* DE40 8001D640 00000000 */  nop
    /* DE44 8001D644 11004010 */  beqz       $v0, .L8001D68C
    /* DE48 8001D648 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* DE4C 8001D64C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* DE50 8001D650 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* DE54 8001D654 0580023C */  lui        $v0, %hi(D_80056524)
    /* DE58 8001D658 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* DE5C 8001D65C 00000000 */  nop
    /* DE60 8001D660 80280200 */  sll        $a1, $v0, 2
    /* DE64 8001D664 2128A200 */  addu       $a1, $a1, $v0
    /* DE68 8001D668 80280500 */  sll        $a1, $a1, 2
    /* DE6C 8001D66C 0D80023C */  lui        $v0, %hi(D_800CC1F8)
    /* DE70 8001D670 F8C14224 */  addiu      $v0, $v0, %lo(D_800CC1F8)
    /* DE74 8001D674 21206400 */  addu       $a0, $v1, $a0
    /* DE78 8001D678 2128A200 */  addu       $a1, $a1, $v0
    /* DE7C 8001D67C 33DE000C */  jal        GsSortSprite
    /* DE80 8001D680 FFFF2632 */   andi      $a2, $s1, 0xFFFF
    /* DE84 8001D684 01003126 */  addiu      $s1, $s1, 0x1
    /* DE88 8001D688 FFFF0226 */  addiu      $v0, $s0, -0x1
  .L8001D68C:
    /* DE8C 8001D68C 21804000 */  addu       $s0, $v0, $zero
    /* DE90 8001D690 00140200 */  sll        $v0, $v0, 16
    /* DE94 8001D694 D7FF4104 */  bgez       $v0, .L8001D5F4
    /* DE98 8001D698 00141000 */   sll       $v0, $s0, 16
    /* DE9C 8001D69C 03001024 */  addiu      $s0, $zero, 0x3
    /* DEA0 8001D6A0 00141000 */  sll        $v0, $s0, 16
  .L8001D6A4:
    /* DEA4 8001D6A4 03140200 */  sra        $v0, $v0, 16
    /* DEA8 8001D6A8 C0180200 */  sll        $v1, $v0, 3
    /* DEAC 8001D6AC 21186200 */  addu       $v1, $v1, $v0
    /* DEB0 8001D6B0 80180300 */  sll        $v1, $v1, 2
    /* DEB4 8001D6B4 1780013C */  lui        $at, %hi(D_80172E88)
    /* DEB8 8001D6B8 21082300 */  addu       $at, $at, $v1
    /* DEBC 8001D6BC 882E228C */  lw         $v0, %lo(D_80172E88)($at)
    /* DEC0 8001D6C0 00000000 */  nop
    /* DEC4 8001D6C4 1D004004 */  bltz       $v0, .L8001D73C
    /* DEC8 8001D6C8 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* DECC 8001D6CC 1780013C */  lui        $at, %hi(D_80172E90)
    /* DED0 8001D6D0 21082300 */  addu       $at, $at, $v1
    /* DED4 8001D6D4 902E2284 */  lh         $v0, %lo(D_80172E90)($at)
    /* DED8 8001D6D8 00000000 */  nop
    /* DEDC 8001D6DC 17004010 */  beqz       $v0, .L8001D73C
    /* DEE0 8001D6E0 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* DEE4 8001D6E4 1780013C */  lui        $at, %hi(D_80172E92)
    /* DEE8 8001D6E8 21082300 */  addu       $at, $at, $v1
    /* DEEC 8001D6EC 922E2284 */  lh         $v0, %lo(D_80172E92)($at)
    /* DEF0 8001D6F0 00000000 */  nop
    /* DEF4 8001D6F4 11004010 */  beqz       $v0, .L8001D73C
    /* DEF8 8001D6F8 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* DEFC 8001D6FC 1780043C */  lui        $a0, %hi(D_80172E88)
    /* DF00 8001D700 882E8424 */  addiu      $a0, $a0, %lo(D_80172E88)
    /* DF04 8001D704 0580023C */  lui        $v0, %hi(D_80056524)
    /* DF08 8001D708 2465428C */  lw         $v0, %lo(D_80056524)($v0)
    /* DF0C 8001D70C 00000000 */  nop
    /* DF10 8001D710 80280200 */  sll        $a1, $v0, 2
    /* DF14 8001D714 2128A200 */  addu       $a1, $a1, $v0
    /* DF18 8001D718 80280500 */  sll        $a1, $a1, 2
    /* DF1C 8001D71C 0D80023C */  lui        $v0, %hi(D_800CC1F8)
    /* DF20 8001D720 F8C14224 */  addiu      $v0, $v0, %lo(D_800CC1F8)
    /* DF24 8001D724 21206400 */  addu       $a0, $v1, $a0
    /* DF28 8001D728 2128A200 */  addu       $a1, $a1, $v0
    /* DF2C 8001D72C AFDA000C */  jal        GsSortBg
    /* DF30 8001D730 FFFF2632 */   andi      $a2, $s1, 0xFFFF
    /* DF34 8001D734 01003126 */  addiu      $s1, $s1, 0x1
    /* DF38 8001D738 FFFF0226 */  addiu      $v0, $s0, -0x1
  .L8001D73C:
    /* DF3C 8001D73C 21804000 */  addu       $s0, $v0, $zero
    /* DF40 8001D740 00140200 */  sll        $v0, $v0, 16
    /* DF44 8001D744 D7FF4104 */  bgez       $v0, .L8001D6A4
    /* DF48 8001D748 00141000 */   sll       $v0, $s0, 16
    /* DF4C 8001D74C 1800BF8F */  lw         $ra, 0x18($sp)
    /* DF50 8001D750 1400B18F */  lw         $s1, 0x14($sp)
    /* DF54 8001D754 1000B08F */  lw         $s0, 0x10($sp)
    /* DF58 8001D758 2000BD27 */  addiu      $sp, $sp, 0x20
    /* DF5C 8001D75C 0800E003 */  jr         $ra
    /* DF60 8001D760 00000000 */   nop
endlabel func_8001D5D8
