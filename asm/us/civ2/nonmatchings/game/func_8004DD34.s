.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DD34, 0x18C

glabel func_8004DD34
    /* 3E534 8004DD34 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E538 8004DD38 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3E53C 8004DD3C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E540 8004DD40 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E544 8004DD44 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E548 8004DD48 21888000 */  addu       $s1, $a0, $zero
    /* 3E54C 8004DD4C 2180A000 */  addu       $s0, $a1, $zero
    /* 3E550 8004DD50 21200002 */  addu       $a0, $s0, $zero
    /* 3E554 8004DD54 21282002 */  addu       $a1, $s1, $zero
    /* 3E558 8004DD58 F427010C */  jal        func_80049FD0
    /* 3E55C 8004DD5C E7FF0624 */   addiu     $a2, $zero, -0x19
    /* 3E560 8004DD60 21200002 */  addu       $a0, $s0, $zero
    /* 3E564 8004DD64 21282002 */  addu       $a1, $s1, $zero
    /* 3E568 8004DD68 A275030C */  jal        func_800DD688
    /* 3E56C 8004DD6C 08000624 */   addiu     $a2, $zero, 0x8
    /* 3E570 8004DD70 21202002 */  addu       $a0, $s1, $zero
    /* 3E574 8004DD74 6928010C */  jal        func_8004A1A4
    /* 3E578 8004DD78 21280002 */   addu      $a1, $s0, $zero
    /* 3E57C 8004DD7C 40101000 */  sll        $v0, $s0, 1
    /* 3E580 8004DD80 21105000 */  addu       $v0, $v0, $s0
    /* 3E584 8004DD84 80100200 */  sll        $v0, $v0, 2
    /* 3E588 8004DD88 23105000 */  subu       $v0, $v0, $s0
    /* 3E58C 8004DD8C 00110200 */  sll        $v0, $v0, 4
    /* 3E590 8004DD90 23105000 */  subu       $v0, $v0, $s0
    /* 3E594 8004DD94 C0100200 */  sll        $v0, $v0, 3
    /* 3E598 8004DD98 1180013C */  lui        $at, %hi(D_801176B1)
    /* 3E59C 8004DD9C 21082200 */  addu       $at, $at, $v0
    /* 3E5A0 8004DDA0 B17620A0 */  sb         $zero, %lo(D_801176B1)($at)
    /* 3E5A4 8004DDA4 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E5A8 8004DDA8 21082200 */  addu       $at, $at, $v0
    /* 3E5AC 8004DDAC 90762394 */  lhu        $v1, %lo(D_80117690)($at)
    /* 3E5B0 8004DDB0 00000000 */  nop
    /* 3E5B4 8004DDB4 00016334 */  ori        $v1, $v1, 0x100
    /* 3E5B8 8004DDB8 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E5BC 8004DDBC 21082200 */  addu       $at, $at, $v0
    /* 3E5C0 8004DDC0 907623A4 */  sh         $v1, %lo(D_80117690)($at)
    /* 3E5C4 8004DDC4 980F80AF */  sw         $zero, %gp_rel(D_80159470)($gp)
    /* 3E5C8 8004DDC8 40101100 */  sll        $v0, $s1, 1
    /* 3E5CC 8004DDCC 21105100 */  addu       $v0, $v0, $s1
    /* 3E5D0 8004DDD0 80100200 */  sll        $v0, $v0, 2
    /* 3E5D4 8004DDD4 23105100 */  subu       $v0, $v0, $s1
    /* 3E5D8 8004DDD8 00110200 */  sll        $v0, $v0, 4
    /* 3E5DC 8004DDDC 23105100 */  subu       $v0, $v0, $s1
    /* 3E5E0 8004DDE0 C0100200 */  sll        $v0, $v0, 3
    /* 3E5E4 8004DDE4 1180033C */  lui        $v1, %hi(D_80117A56)
    /* 3E5E8 8004DDE8 567A6324 */  addiu      $v1, $v1, %lo(D_80117A56)
    /* 3E5EC 8004DDEC 40201000 */  sll        $a0, $s0, 1
    /* 3E5F0 8004DDF0 21184300 */  addu       $v1, $v0, $v1
    /* 3E5F4 8004DDF4 21208300 */  addu       $a0, $a0, $v1
    /* 3E5F8 8004DDF8 1280123C */  lui        $s2, %hi(D_8011A262)
    /* 3E5FC 8004DDFC 62A25226 */  addiu      $s2, $s2, %lo(D_8011A262)
    /* 3E600 8004DE00 00004396 */  lhu        $v1, 0x0($s2)
    /* 3E604 8004DE04 00000000 */  nop
    /* 3E608 8004DE08 000083A4 */  sh         $v1, 0x0($a0)
    /* 3E60C 8004DE0C 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E610 8004DE10 21082200 */  addu       $at, $at, $v0
    /* 3E614 8004DE14 90762394 */  lhu        $v1, %lo(D_80117690)($at)
    /* 3E618 8004DE18 00000000 */  nop
    /* 3E61C 8004DE1C 00016334 */  ori        $v1, $v1, 0x100
    /* 3E620 8004DE20 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E624 8004DE24 21082200 */  addu       $at, $at, $v0
    /* 3E628 8004DE28 907623A4 */  sh         $v1, %lo(D_80117690)($at)
    /* 3E62C 8004DE2C 21202002 */  addu       $a0, $s1, $zero
    /* 3E630 8004DE30 4130010C */  jal        func_8004C104
    /* 3E634 8004DE34 21280002 */   addu      $a1, $s0, $zero
    /* 3E638 8004DE38 8A54020C */  jal        func_80095228
    /* 3E63C 8004DE3C 21200002 */   addu      $a0, $s0, $zero
    /* 3E640 8004DE40 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3E644 8004DE44 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3E648 8004DE48 A587030C */  jal        func_800E1E94
    /* 3E64C 8004DE4C 21284000 */   addu      $a1, $v0, $zero
    /* 3E650 8004DE50 8A54020C */  jal        func_80095228
    /* 3E654 8004DE54 21202002 */   addu      $a0, $s1, $zero
    /* 3E658 8004DE58 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3E65C 8004DE5C 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3E660 8004DE60 A587030C */  jal        func_800E1E94
    /* 3E664 8004DE64 21284000 */   addu      $a1, $v0, $zero
    /* 3E668 8004DE68 AF8D020C */  jal        func_800A36BC
    /* 3E66C 8004DE6C 02000424 */   addiu     $a0, $zero, 0x2
    /* 3E670 8004DE70 92004282 */  lb         $v0, 0x92($s2)
    /* 3E674 8004DE74 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 3E678 8004DE78 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 3E67C 8004DE7C 03004010 */  beqz       $v0, .L8004DE8C
    /* 3E680 8004DE80 00000000 */   nop
    /* 3E684 8004DE84 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 3E688 8004DE88 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8004DE8C:
    /* 3E68C 8004DE8C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E690 8004DE90 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E694 8004DE94 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E698 8004DE98 B3780524 */  addiu      $a1, $zero, 0x78B3
    /* 3E69C 8004DE9C 18E3020C */  jal        func_800B8C60
    /* 3E6A0 8004DEA0 21300000 */   addu      $a2, $zero, $zero
    /* 3E6A4 8004DEA4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3E6A8 8004DEA8 2000B28F */  lw         $s2, 0x20($sp)
    /* 3E6AC 8004DEAC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E6B0 8004DEB0 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E6B4 8004DEB4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E6B8 8004DEB8 0800E003 */  jr         $ra
    /* 3E6BC 8004DEBC 00000000 */   nop
endlabel func_8004DD34
