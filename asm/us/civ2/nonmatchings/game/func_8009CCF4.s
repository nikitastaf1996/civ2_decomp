.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009CCF4, 0x284

glabel func_8009CCF4
    /* 8D4F4 8009CCF4 A0FCBD27 */  addiu      $sp, $sp, -0x360
    /* 8D4F8 8009CCF8 5C03BFAF */  sw         $ra, 0x35C($sp)
    /* 8D4FC 8009CCFC 5803B4AF */  sw         $s4, 0x358($sp)
    /* 8D500 8009CD00 5403B3AF */  sw         $s3, 0x354($sp)
    /* 8D504 8009CD04 5003B2AF */  sw         $s2, 0x350($sp)
    /* 8D508 8009CD08 4C03B1AF */  sw         $s1, 0x34C($sp)
    /* 8D50C 8009CD0C 4803B0AF */  sw         $s0, 0x348($sp)
    /* 8D510 8009CD10 21908000 */  addu       $s2, $a0, $zero
    /* 8D514 8009CD14 FCEC030C */  jal        func_800FB3F0
    /* 8D518 8009CD18 1000A427 */   addiu     $a0, $sp, 0x10
    /* 8D51C 8009CD1C A800A427 */  addiu      $a0, $sp, 0xA8
    /* 8D520 8009CD20 ADC5020C */  jal        func_800B16B4
    /* 8D524 8009CD24 00200524 */   addiu     $a1, $zero, 0x2000
    /* 8D528 8009CD28 1000A427 */  addiu      $a0, $sp, 0x10
    /* 8D52C 8009CD2C 20000524 */  addiu      $a1, $zero, 0x20
    /* 8D530 8009CD30 18000624 */  addiu      $a2, $zero, 0x18
    /* 8D534 8009CD34 27ED030C */  jal        func_800FB49C
    /* 8D538 8009CD38 21380000 */   addu      $a3, $zero, $zero
    /* 8D53C 8009CD3C 40801200 */  sll        $s0, $s2, 1
    /* 8D540 8009CD40 21801202 */  addu       $s0, $s0, $s2
    /* 8D544 8009CD44 80801000 */  sll        $s0, $s0, 2
    /* 8D548 8009CD48 23801202 */  subu       $s0, $s0, $s2
    /* 8D54C 8009CD4C C0801000 */  sll        $s0, $s0, 3
    /* 8D550 8009CD50 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* 8D554 8009CD54 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* 8D558 8009CD58 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 8D55C 8009CD5C F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 8D560 8009CD60 A587030C */  jal        func_800E1E94
    /* 8D564 8009CD64 21280502 */   addu      $a1, $s0, $a1
    /* 8D568 8009CD68 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D56C 8009CD6C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D570 8009CD70 CB1A030C */  jal        func_800C6B2C
    /* 8D574 8009CD74 00000000 */   nop
    /* 8D578 8009CD78 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 8D57C 8009CD7C 21083000 */  addu       $at, $at, $s0
    /* 8D580 8009CD80 D83E2480 */  lb         $a0, %lo(D_80113ED8)($at)
    /* 8D584 8009CD84 8A54020C */  jal        func_80095228
    /* 8D588 8009CD88 00000000 */   nop
    /* 8D58C 8009CD8C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D590 8009CD90 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D594 8009CD94 9987030C */  jal        func_800E1E64
    /* 8D598 8009CD98 21284000 */   addu      $a1, $v0, $zero
    /* 8D59C 8009CD9C 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* 8D5A0 8009CDA0 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* 8D5A4 8009CDA4 00000000 */  nop
    /* 8D5A8 8009CDA8 80004230 */  andi       $v0, $v0, 0x80
    /* 8D5AC 8009CDAC 21004010 */  beqz       $v0, .L8009CE34
    /* 8D5B0 8009CDB0 00000000 */   nop
    /* 8D5B4 8009CDB4 1280023C */  lui        $v0, %hi(D_8011A390)
    /* 8D5B8 8009CDB8 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* 8D5BC 8009CDBC 00000000 */  nop
    /* 8D5C0 8009CDC0 02004230 */  andi       $v0, $v0, 0x2
    /* 8D5C4 8009CDC4 1B004010 */  beqz       $v0, .L8009CE34
    /* 8D5C8 8009CDC8 00000000 */   nop
    /* 8D5CC 8009CDCC FD25020C */  jal        func_800897F4
    /* 8D5D0 8009CDD0 21204002 */   addu      $a0, $s2, $zero
    /* 8D5D4 8009CDD4 21804000 */  addu       $s0, $v0, $zero
    /* 8D5D8 8009CDD8 16000012 */  beqz       $s0, .L8009CE34
    /* 8D5DC 8009CDDC 00000000 */   nop
    /* 8D5E0 8009CDE0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D5E4 8009CDE4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D5E8 8009CDE8 CD1A030C */  jal        func_800C6B34
    /* 8D5EC 8009CDEC 00000000 */   nop
    /* 8D5F0 8009CDF0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D5F4 8009CDF4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D5F8 8009CDF8 731B030C */  jal        func_800C6DCC
    /* 8D5FC 8009CDFC B0010524 */   addiu     $a1, $zero, 0x1B0
    /* 8D600 8009CE00 0200022A */  slti       $v0, $s0, 0x2
    /* 8D604 8009CE04 0B004014 */  bnez       $v0, .L8009CE34
    /* 8D608 8009CE08 00000000 */   nop
    /* 8D60C 8009CE0C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D610 8009CE10 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D614 8009CE14 1680053C */  lui        $a1, %hi(D_80158A08)
    /* 8D618 8009CE18 088AA524 */  addiu      $a1, $a1, %lo(D_80158A08)
    /* 8D61C 8009CE1C 9987030C */  jal        func_800E1E64
    /* 8D620 8009CE20 00000000 */   nop
    /* 8D624 8009CE24 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D628 8009CE28 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D62C 8009CE2C 9C1B030C */  jal        func_800C6E70
    /* 8D630 8009CE30 21280002 */   addu      $a1, $s0, $zero
  .L8009CE34:
    /* 8D634 8009CE34 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 8D638 8009CE38 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 8D63C 8009CE3C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 8D640 8009CE40 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 8D644 8009CE44 A587030C */  jal        func_800E1E94
    /* 8D648 8009CE48 21880000 */   addu      $s1, $zero, $zero
    /* 8D64C 8009CE4C 40101200 */  sll        $v0, $s2, 1
    /* 8D650 8009CE50 21105200 */  addu       $v0, $v0, $s2
    /* 8D654 8009CE54 80100200 */  sll        $v0, $v0, 2
    /* 8D658 8009CE58 23105200 */  subu       $v0, $v0, $s2
    /* 8D65C 8009CE5C C0100200 */  sll        $v0, $v0, 3
    /* 8D660 8009CE60 1180033C */  lui        $v1, %hi(D_80113F12)
    /* 8D664 8009CE64 123F6324 */  addiu      $v1, $v1, %lo(D_80113F12)
    /* 8D668 8009CE68 21A04300 */  addu       $s4, $v0, $v1
    /* 8D66C 8009CE6C 1280133C */  lui        $s3, %hi(D_8011A6B0)
    /* 8D670 8009CE70 B0A67326 */  addiu      $s3, $s3, %lo(D_8011A6B0)
  .L8009CE74:
    /* 8D674 8009CE74 0300222A */  slti       $v0, $s1, 0x3
    /* 8D678 8009CE78 2A004010 */  beqz       $v0, .L8009CF24
    /* 8D67C 8009CE7C 21109102 */   addu      $v0, $s4, $s1
    /* 8D680 8009CE80 00005080 */  lb         $s0, 0x0($v0)
    /* 8D684 8009CE84 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D688 8009CE88 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D68C 8009CE8C CB1A030C */  jal        func_800C6B2C
    /* 8D690 8009CE90 00000000 */   nop
    /* 8D694 8009CE94 05000106 */  bgez       $s0, .L8009CEAC
    /* 8D698 8009CE98 00000000 */   nop
    /* 8D69C 8009CE9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D6A0 8009CEA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D6A4 8009CEA4 151B030C */  jal        func_800C6C54
    /* 8D6A8 8009CEA8 00000000 */   nop
  .L8009CEAC:
    /* 8D6AC 8009CEAC 0400001E */  bgtz       $s0, .L8009CEC0
    /* 8D6B0 8009CEB0 27101000 */   nor       $v0, $zero, $s0
    /* 8D6B4 8009CEB4 01004224 */  addiu      $v0, $v0, 0x1
    /* 8D6B8 8009CEB8 B1730208 */  j          .L8009CEC4
    /* 8D6BC 8009CEBC 80100200 */   sll       $v0, $v0, 2
  .L8009CEC0:
    /* 8D6C0 8009CEC0 80101000 */  sll        $v0, $s0, 2
  .L8009CEC4:
    /* 8D6C4 8009CEC4 21106202 */  addu       $v0, $s3, $v0
    /* 8D6C8 8009CEC8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D6CC 8009CECC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D6D0 8009CED0 0000458C */  lw         $a1, 0x0($v0)
    /* 8D6D4 8009CED4 651B030C */  jal        func_800C6D94
    /* 8D6D8 8009CED8 00000000 */   nop
    /* 8D6DC 8009CEDC 06000106 */  bgez       $s0, .L8009CEF8
    /* 8D6E0 8009CEE0 02002226 */   addiu     $v0, $s1, 0x2
    /* 8D6E4 8009CEE4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 8D6E8 8009CEE8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 8D6EC 8009CEEC 1F1B030C */  jal        func_800C6C7C
    /* 8D6F0 8009CEF0 00000000 */   nop
    /* 8D6F4 8009CEF4 02002226 */  addiu      $v0, $s1, 0x2
  .L8009CEF8:
    /* 8D6F8 8009CEF8 80200200 */  sll        $a0, $v0, 2
    /* 8D6FC 8009CEFC 21208200 */  addu       $a0, $a0, $v0
    /* 8D700 8009CF00 00210400 */  sll        $a0, $a0, 4
    /* 8D704 8009CF04 1280023C */  lui        $v0, %hi(D_8011FCF8)
    /* 8D708 8009CF08 F8FC4224 */  addiu      $v0, $v0, %lo(D_8011FCF8)
    /* 8D70C 8009CF0C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 8D710 8009CF10 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 8D714 8009CF14 A587030C */  jal        func_800E1E94
    /* 8D718 8009CF18 21208200 */   addu      $a0, $a0, $v0
    /* 8D71C 8009CF1C 9D730208 */  j          .L8009CE74
    /* 8D720 8009CF20 01003126 */   addiu     $s1, $s1, 0x1
  .L8009CF24:
    /* 8D724 8009CF24 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 8D728 8009CF28 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 8D72C 8009CF2C ADE50534 */  ori        $a1, $zero, 0xE5AD
    /* 8D730 8009CF30 21300000 */  addu       $a2, $zero, $zero
    /* 8D734 8009CF34 04E4020C */  jal        func_800B9010
    /* 8D738 8009CF38 21384002 */   addu      $a3, $s2, $zero
    /* 8D73C 8009CF3C A800A427 */  addiu      $a0, $sp, 0xA8
    /* 8D740 8009CF40 0AC7020C */  jal        func_800B1C28
    /* 8D744 8009CF44 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D748 8009CF48 1000A427 */  addiu      $a0, $sp, 0x10
    /* 8D74C 8009CF4C 12ED030C */  jal        func_800FB448
    /* 8D750 8009CF50 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D754 8009CF54 5C03BF8F */  lw         $ra, 0x35C($sp)
    /* 8D758 8009CF58 5803B48F */  lw         $s4, 0x358($sp)
    /* 8D75C 8009CF5C 5403B38F */  lw         $s3, 0x354($sp)
    /* 8D760 8009CF60 5003B28F */  lw         $s2, 0x350($sp)
    /* 8D764 8009CF64 4C03B18F */  lw         $s1, 0x34C($sp)
    /* 8D768 8009CF68 4803B08F */  lw         $s0, 0x348($sp)
    /* 8D76C 8009CF6C 6003BD27 */  addiu      $sp, $sp, 0x360
    /* 8D770 8009CF70 0800E003 */  jr         $ra
    /* 8D774 8009CF74 00000000 */   nop
endlabel func_8009CCF4
