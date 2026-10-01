.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800945B8, 0x8C

glabel func_800945B8
    /* 84DB8 800945B8 1180013C */  lui        $at, %hi(D_80113EBA)
    /* 84DBC 800945BC BA3E24A0 */  sb         $a0, %lo(D_80113EBA)($at)
    /* 84DC0 800945C0 1180013C */  lui        $at, %hi(D_80113EBB)
    /* 84DC4 800945C4 BB3E25A0 */  sb         $a1, %lo(D_80113EBB)($at)
    /* 84DC8 800945C8 CEFF0224 */  addiu      $v0, $zero, -0x32
    /* 84DCC 800945CC 1180013C */  lui        $at, %hi(D_80113EB4)
    /* 84DD0 800945D0 B43E22A4 */  sh         $v0, %lo(D_80113EB4)($at)
    /* 84DD4 800945D4 1180013C */  lui        $at, %hi(D_80113EB6)
    /* 84DD8 800945D8 B63E22A4 */  sh         $v0, %lo(D_80113EB6)($at)
    /* 84DDC 800945DC 1180013C */  lui        $at, %hi(D_80113EB8)
    /* 84DE0 800945E0 B83E20A4 */  sh         $zero, %lo(D_80113EB8)($at)
    /* 84DE4 800945E4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 84DE8 800945E8 1180013C */  lui        $at, %hi(D_80113EC4)
    /* 84DEC 800945EC C43E23A0 */  sb         $v1, %lo(D_80113EC4)($at)
    /* 84DF0 800945F0 1180013C */  lui        $at, %hi(D_80113EBC)
    /* 84DF4 800945F4 BC3E20A0 */  sb         $zero, %lo(D_80113EBC)($at)
    /* 84DF8 800945F8 1180013C */  lui        $at, %hi(D_80113EBD)
    /* 84DFC 800945FC BD3E20A0 */  sb         $zero, %lo(D_80113EBD)($at)
    /* 84E00 80094600 1180013C */  lui        $at, %hi(D_80113EC2)
    /* 84E04 80094604 C23E20A0 */  sb         $zero, %lo(D_80113EC2)($at)
    /* 84E08 80094608 1180013C */  lui        $at, %hi(D_80113EC1)
    /* 84E0C 8009460C C13E20A0 */  sb         $zero, %lo(D_80113EC1)($at)
    /* 84E10 80094610 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 84E14 80094614 1180013C */  lui        $at, %hi(D_80113ECA)
    /* 84E18 80094618 CA3E22A4 */  sh         $v0, %lo(D_80113ECA)($at)
    /* 84E1C 8009461C 1180013C */  lui        $at, %hi(D_80113ECC)
    /* 84E20 80094620 CC3E22A4 */  sh         $v0, %lo(D_80113ECC)($at)
    /* 84E24 80094624 1180013C */  lui        $at, %hi(D_80113EC3)
    /* 84E28 80094628 C33E23A0 */  sb         $v1, %lo(D_80113EC3)($at)
    /* 84E2C 8009462C 1180013C */  lui        $at, %hi(D_80113EC6)
    /* 84E30 80094630 C63E22A4 */  sh         $v0, %lo(D_80113EC6)($at)
    /* 84E34 80094634 1180013C */  lui        $at, %hi(D_80113EC8)
    /* 84E38 80094638 C83E22A4 */  sh         $v0, %lo(D_80113EC8)($at)
    /* 84E3C 8009463C 0800E003 */  jr         $ra
    /* 84E40 80094640 00040224 */   addiu     $v0, $zero, 0x400
endlabel func_800945B8
