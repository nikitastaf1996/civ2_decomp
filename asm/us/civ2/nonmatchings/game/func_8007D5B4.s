.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D5B4, 0x78

glabel func_8007D5B4
    /* 6DDB4 8007D5B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6DDB8 8007D5B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6DDBC 8007D5BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DDC0 8007D5C0 E6ED010C */  jal        func_8007B798
    /* 6DDC4 8007D5C4 2180A000 */   addu      $s0, $a1, $zero
    /* 6DDC8 8007D5C8 21204000 */  addu       $a0, $v0, $zero
    /* 6DDCC 8007D5CC 12008004 */  bltz       $a0, .L8007D618
    /* 6DDD0 8007D5D0 40100400 */   sll       $v0, $a0, 1
  .L8007D5D4:
    /* 6DDD4 8007D5D4 21104400 */  addu       $v0, $v0, $a0
    /* 6DDD8 8007D5D8 80100200 */  sll        $v0, $v0, 2
    /* 6DDDC 8007D5DC 21104400 */  addu       $v0, $v0, $a0
    /* 6DDE0 8007D5E0 40100200 */  sll        $v0, $v0, 1
    /* 6DDE4 8007D5E4 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 6DDE8 8007D5E8 21082200 */  addu       $at, $at, $v0
    /* 6DDEC 8007D5EC BDD62390 */  lbu        $v1, %lo(D_8010D6BD)($at)
    /* 6DDF0 8007D5F0 00000000 */  nop
    /* 6DDF4 8007D5F4 25187000 */  or         $v1, $v1, $s0
    /* 6DDF8 8007D5F8 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 6DDFC 8007D5FC 21082200 */  addu       $at, $at, $v0
    /* 6DE00 8007D600 BDD623A0 */  sb         $v1, %lo(D_8010D6BD)($at)
    /* 6DE04 8007D604 BFED010C */  jal        func_8007B6FC
    /* 6DE08 8007D608 00000000 */   nop
    /* 6DE0C 8007D60C 21204000 */  addu       $a0, $v0, $zero
    /* 6DE10 8007D610 F0FF8104 */  bgez       $a0, .L8007D5D4
    /* 6DE14 8007D614 40100400 */   sll       $v0, $a0, 1
  .L8007D618:
    /* 6DE18 8007D618 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6DE1C 8007D61C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DE20 8007D620 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6DE24 8007D624 0800E003 */  jr         $ra
    /* 6DE28 8007D628 00000000 */   nop
endlabel func_8007D5B4
