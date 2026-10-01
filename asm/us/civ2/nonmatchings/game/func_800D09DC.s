.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D09DC, 0x9C

glabel func_800D09DC
    /* C11DC 800D09DC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C11E0 800D09E0 2000BFAF */  sw         $ra, 0x20($sp)
    /* C11E4 800D09E4 21488000 */  addu       $t1, $a0, $zero
    /* C11E8 800D09E8 0400A484 */  lh         $a0, 0x4($a1)
    /* C11EC 800D09EC 0000A884 */  lh         $t0, 0x0($a1)
    /* C11F0 800D09F0 00000000 */  nop
    /* C11F4 800D09F4 23208800 */  subu       $a0, $a0, $t0
    /* C11F8 800D09F8 00240400 */  sll        $a0, $a0, 16
    /* C11FC 800D09FC 03240400 */  sra        $a0, $a0, 16
    /* C1200 800D0A00 0600A384 */  lh         $v1, 0x6($a1)
    /* C1204 800D0A04 0200A784 */  lh         $a3, 0x2($a1)
    /* C1208 800D0A08 00000000 */  nop
    /* C120C 800D0A0C 23186700 */  subu       $v1, $v1, $a3
    /* C1210 800D0A10 001C0300 */  sll        $v1, $v1, 16
    /* C1214 800D0A14 031C0300 */  sra        $v1, $v1, 16
    /* C1218 800D0A18 D40E268D */  lw         $a2, 0xED4($t1)
    /* C121C 800D0A1C 00000000 */  nop
    /* C1220 800D0A20 23300601 */  subu       $a2, $t0, $a2
    /* C1224 800D0A24 D4002B8D */  lw         $t3, 0xD4($t1)
    /* C1228 800D0A28 D80E228D */  lw         $v0, 0xED8($t1)
    /* C122C 800D0A2C 00000000 */  nop
    /* C1230 800D0A30 2338E200 */  subu       $a3, $a3, $v0
    /* C1234 800D0A34 D8002A8D */  lw         $t2, 0xD8($t1)
    /* C1238 800D0A38 1000A8AF */  sw         $t0, 0x10($sp)
    /* C123C 800D0A3C 0200A284 */  lh         $v0, 0x2($a1)
    /* C1240 800D0A40 00000000 */  nop
    /* C1244 800D0A44 1400A2AF */  sw         $v0, 0x14($sp)
    /* C1248 800D0A48 1800A4AF */  sw         $a0, 0x18($sp)
    /* C124C 800D0A4C 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* C1250 800D0A50 1280043C */  lui        $a0, %hi(D_80122BE0)
    /* C1254 800D0A54 E02B8424 */  addiu      $a0, $a0, %lo(D_80122BE0)
    /* C1258 800D0A58 21282001 */  addu       $a1, $t1, $zero
    /* C125C 800D0A5C 2330CB00 */  subu       $a2, $a2, $t3
    /* C1260 800D0A60 6C14020C */  jal        func_800851B0
    /* C1264 800D0A64 2338EA00 */   subu      $a3, $a3, $t2
    /* C1268 800D0A68 2000BF8F */  lw         $ra, 0x20($sp)
    /* C126C 800D0A6C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C1270 800D0A70 0800E003 */  jr         $ra
    /* C1274 800D0A74 00000000 */   nop
endlabel func_800D09DC
