.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C2240, 0x124

glabel func_800C2240
    /* B2A40 800C2240 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B2A44 800C2244 1800B0AF */  sw         $s0, 0x18($sp)
    /* B2A48 800C2248 2180C000 */  addu       $s0, $a2, $zero
    /* B2A4C 800C224C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* B2A50 800C2250 01001124 */  addiu      $s1, $zero, 0x1
    /* B2A54 800C2254 F1D80724 */  addiu      $a3, $zero, -0x270F
    /* B2A58 800C2258 01000624 */  addiu      $a2, $zero, 0x1
    /* B2A5C 800C225C 1280083C */  lui        $t0, %hi(D_8011A274)
    /* B2A60 800C2260 74A20825 */  addiu      $t0, $t0, %lo(D_8011A274)
    /* B2A64 800C2264 80280500 */  sll        $a1, $a1, 2
    /* B2A68 800C2268 2128A400 */  addu       $a1, $a1, $a0
    /* B2A6C 800C226C 2000B2AF */  sw         $s2, 0x20($sp)
    /* B2A70 800C2270 3800B28F */  lw         $s2, 0x38($sp)
    /* B2A74 800C2274 04008424 */  addiu      $a0, $a0, 0x4
    /* B2A78 800C2278 2400BFAF */  sw         $ra, 0x24($sp)
  .L800C227C:
    /* B2A7C 800C227C 00000291 */  lbu        $v0, 0x0($t0)
    /* B2A80 800C2280 00000000 */  nop
    /* B2A84 800C2284 0710C200 */  srav       $v0, $v0, $a2
    /* B2A88 800C2288 01004230 */  andi       $v0, $v0, 0x1
    /* B2A8C 800C228C 11004010 */  beqz       $v0, .L800C22D4
    /* B2A90 800C2290 00000000 */   nop
    /* B2A94 800C2294 05000106 */  bgez       $s0, .L800C22AC
    /* B2A98 800C2298 00000000 */   nop
    /* B2A9C 800C229C 0000828C */  lw         $v0, 0x0($a0)
    /* B2AA0 800C22A0 00000000 */  nop
    /* B2AA4 800C22A4 23100200 */  negu       $v0, $v0
    /* B2AA8 800C22A8 000082AC */  sw         $v0, 0x0($a0)
  .L800C22AC:
    /* B2AAC 800C22AC 0000838C */  lw         $v1, 0x0($a0)
    /* B2AB0 800C22B0 0000A28C */  lw         $v0, 0x0($a1)
    /* B2AB4 800C22B4 00000000 */  nop
    /* B2AB8 800C22B8 2A104300 */  slt        $v0, $v0, $v1
    /* B2ABC 800C22BC 02004010 */  beqz       $v0, .L800C22C8
    /* B2AC0 800C22C0 2A10E300 */   slt       $v0, $a3, $v1
    /* B2AC4 800C22C4 01003126 */  addiu      $s1, $s1, 0x1
  .L800C22C8:
    /* B2AC8 800C22C8 02004010 */  beqz       $v0, .L800C22D4
    /* B2ACC 800C22CC 00000000 */   nop
    /* B2AD0 800C22D0 21386000 */  addu       $a3, $v1, $zero
  .L800C22D4:
    /* B2AD4 800C22D4 0100C624 */  addiu      $a2, $a2, 0x1
    /* B2AD8 800C22D8 0800C228 */  slti       $v0, $a2, 0x8
    /* B2ADC 800C22DC E7FF4014 */  bnez       $v0, .L800C227C
    /* B2AE0 800C22E0 04008424 */   addiu     $a0, $a0, 0x4
    /* B2AE4 800C22E4 0300001E */  bgtz       $s0, .L800C22F4
    /* B2AE8 800C22E8 21100002 */   addu      $v0, $s0, $zero
    /* B2AEC 800C22EC 27101000 */  nor        $v0, $zero, $s0
    /* B2AF0 800C22F0 01004224 */  addiu      $v0, $v0, 0x1
  .L800C22F4:
    /* B2AF4 800C22F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2AF8 800C22F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2AFC 800C22FC CB1A030C */  jal        func_800C6B2C
    /* B2B00 800C2300 21804000 */   addu      $s0, $v0, $zero
    /* B2B04 800C2304 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2B08 800C2308 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2B0C 800C230C 731B030C */  jal        func_800C6DCC
    /* B2B10 800C2310 89012526 */   addiu     $a1, $s1, 0x189
    /* B2B14 800C2314 1280053C */  lui        $a1, %hi(D_80121340)
    /* B2B18 800C2318 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B2B1C 800C231C 38010224 */  addiu      $v0, $zero, 0x138
    /* B2B20 800C2320 1400A2A7 */  sh         $v0, 0x14($sp)
    /* B2B24 800C2324 0C000226 */  addiu      $v0, $s0, 0xC
    /* B2B28 800C2328 1000A627 */  addiu      $a2, $sp, 0x10
    /* B2B2C 800C232C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B2B30 800C2330 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B2B34 800C2334 10000724 */  addiu      $a3, $zero, 0x10
    /* B2B38 800C2338 1000B2A7 */  sh         $s2, 0x10($sp)
    /* B2B3C 800C233C 1200B0A7 */  sh         $s0, 0x12($sp)
    /* B2B40 800C2340 5511040C */  jal        func_80104554
    /* B2B44 800C2344 1600A2A7 */   sh        $v0, 0x16($sp)
    /* B2B48 800C2348 2400BF8F */  lw         $ra, 0x24($sp)
    /* B2B4C 800C234C 2000B28F */  lw         $s2, 0x20($sp)
    /* B2B50 800C2350 1C00B18F */  lw         $s1, 0x1C($sp)
    /* B2B54 800C2354 1800B08F */  lw         $s0, 0x18($sp)
    /* B2B58 800C2358 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B2B5C 800C235C 0800E003 */  jr         $ra
    /* B2B60 800C2360 00000000 */   nop
endlabel func_800C2240
