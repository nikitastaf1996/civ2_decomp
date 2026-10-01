.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CA9C8, 0x13C

glabel func_800CA9C8
    /* BB1C8 800CA9C8 24000224 */  addiu      $v0, $zero, 0x24
    /* BB1CC 800CA9CC 1200A210 */  beq        $a1, $v0, .L800CAA18
    /* BB1D0 800CA9D0 2500A228 */   slti      $v0, $a1, 0x25
    /* BB1D4 800CA9D4 27004010 */  beqz       $v0, .L800CAA74
    /* BB1D8 800CA9D8 23000224 */   addiu     $v0, $zero, 0x23
    /* BB1DC 800CA9DC 2600A214 */  bne        $a1, $v0, .L800CAA78
    /* BB1E0 800CA9E0 40100400 */   sll       $v0, $a0, 1
    /* BB1E4 800CA9E4 21104400 */  addu       $v0, $v0, $a0
    /* BB1E8 800CA9E8 80100200 */  sll        $v0, $v0, 2
    /* BB1EC 800CA9EC 23104400 */  subu       $v0, $v0, $a0
    /* BB1F0 800CA9F0 00110200 */  sll        $v0, $v0, 4
    /* BB1F4 800CA9F4 23104400 */  subu       $v0, $v0, $a0
    /* BB1F8 800CA9F8 C0100200 */  sll        $v0, $v0, 3
    /* BB1FC 800CA9FC 1180013C */  lui        $at, %hi(D_80117A7C)
    /* BB200 800CAA00 21082200 */  addu       $at, $at, $v0
    /* BB204 800CAA04 7C7A2284 */  lh         $v0, %lo(D_80117A7C)($at)
    /* BB208 800CAA08 1280033C */  lui        $v1, %hi(D_80121B42)
    /* BB20C 800CAA0C 421B6384 */  lh         $v1, %lo(D_80121B42)($v1)
    /* BB210 800CAA10 BC2A0308 */  j          .L800CAAF0
    /* BB214 800CAA14 2A104300 */   slt       $v0, $v0, $v1
  .L800CAA18:
    /* BB218 800CAA18 40100400 */  sll        $v0, $a0, 1
    /* BB21C 800CAA1C 21104400 */  addu       $v0, $v0, $a0
    /* BB220 800CAA20 80100200 */  sll        $v0, $v0, 2
    /* BB224 800CAA24 23104400 */  subu       $v0, $v0, $a0
    /* BB228 800CAA28 00110200 */  sll        $v0, $v0, 4
    /* BB22C 800CAA2C 23104400 */  subu       $v0, $v0, $a0
    /* BB230 800CAA30 C0200200 */  sll        $a0, $v0, 3
    /* BB234 800CAA34 1280053C */  lui        $a1, %hi(D_80121B48)
    /* BB238 800CAA38 481BA524 */  addiu      $a1, $a1, %lo(D_80121B48)
    /* BB23C 800CAA3C 1180013C */  lui        $at, %hi(D_80117A7E)
    /* BB240 800CAA40 21082400 */  addu       $at, $at, $a0
    /* BB244 800CAA44 7E7A2284 */  lh         $v0, %lo(D_80117A7E)($at)
    /* BB248 800CAA48 0000A384 */  lh         $v1, 0x0($a1)
    /* BB24C 800CAA4C 00000000 */  nop
    /* BB250 800CAA50 2A104300 */  slt        $v0, $v0, $v1
    /* BB254 800CAA54 29004014 */  bnez       $v0, .L800CAAFC
    /* BB258 800CAA58 21100000 */   addu      $v0, $zero, $zero
    /* BB25C 800CAA5C 1180013C */  lui        $at, %hi(D_80117A80)
    /* BB260 800CAA60 21082400 */  addu       $at, $at, $a0
    /* BB264 800CAA64 807A2284 */  lh         $v0, %lo(D_80117A80)($at)
    /* BB268 800CAA68 0600A384 */  lh         $v1, 0x6($a1)
    /* BB26C 800CAA6C BC2A0308 */  j          .L800CAAF0
    /* BB270 800CAA70 2A104300 */   slt       $v0, $v0, $v1
  .L800CAA74:
    /* BB274 800CAA74 40100400 */  sll        $v0, $a0, 1
  .L800CAA78:
    /* BB278 800CAA78 21104400 */  addu       $v0, $v0, $a0
    /* BB27C 800CAA7C 80100200 */  sll        $v0, $v0, 2
    /* BB280 800CAA80 23104400 */  subu       $v0, $v0, $a0
    /* BB284 800CAA84 00110200 */  sll        $v0, $v0, 4
    /* BB288 800CAA88 23104400 */  subu       $v0, $v0, $a0
    /* BB28C 800CAA8C C0200200 */  sll        $a0, $v0, 3
    /* BB290 800CAA90 1280053C */  lui        $a1, %hi(D_80121B54)
    /* BB294 800CAA94 541BA524 */  addiu      $a1, $a1, %lo(D_80121B54)
    /* BB298 800CAA98 1180013C */  lui        $at, %hi(D_80117A82)
    /* BB29C 800CAA9C 21082400 */  addu       $at, $at, $a0
    /* BB2A0 800CAAA0 827A2284 */  lh         $v0, %lo(D_80117A82)($at)
    /* BB2A4 800CAAA4 0000A384 */  lh         $v1, 0x0($a1)
    /* BB2A8 800CAAA8 00000000 */  nop
    /* BB2AC 800CAAAC 2A104300 */  slt        $v0, $v0, $v1
    /* BB2B0 800CAAB0 12004014 */  bnez       $v0, .L800CAAFC
    /* BB2B4 800CAAB4 21100000 */   addu      $v0, $zero, $zero
    /* BB2B8 800CAAB8 1180013C */  lui        $at, %hi(D_80117A84)
    /* BB2BC 800CAABC 21082400 */  addu       $at, $at, $a0
    /* BB2C0 800CAAC0 847A2284 */  lh         $v0, %lo(D_80117A84)($at)
    /* BB2C4 800CAAC4 0600A384 */  lh         $v1, 0x6($a1)
    /* BB2C8 800CAAC8 00000000 */  nop
    /* BB2CC 800CAACC 2A104300 */  slt        $v0, $v0, $v1
    /* BB2D0 800CAAD0 0A004014 */  bnez       $v0, .L800CAAFC
    /* BB2D4 800CAAD4 21100000 */   addu      $v0, $zero, $zero
    /* BB2D8 800CAAD8 1180013C */  lui        $at, %hi(D_80117A86)
    /* BB2DC 800CAADC 21082400 */  addu       $at, $at, $a0
    /* BB2E0 800CAAE0 867A2284 */  lh         $v0, %lo(D_80117A86)($at)
    /* BB2E4 800CAAE4 0C00A384 */  lh         $v1, 0xC($a1)
    /* BB2E8 800CAAE8 00000000 */  nop
    /* BB2EC 800CAAEC 2A104300 */  slt        $v0, $v0, $v1
  .L800CAAF0:
    /* BB2F0 800CAAF0 02004014 */  bnez       $v0, .L800CAAFC
    /* BB2F4 800CAAF4 21100000 */   addu      $v0, $zero, $zero
    /* BB2F8 800CAAF8 01000224 */  addiu      $v0, $zero, 0x1
  .L800CAAFC:
    /* BB2FC 800CAAFC 0800E003 */  jr         $ra
    /* BB300 800CAB00 00000000 */   nop
endlabel func_800CA9C8
