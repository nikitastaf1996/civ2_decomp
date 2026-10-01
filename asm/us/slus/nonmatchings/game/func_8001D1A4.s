.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D1A4, 0x200

glabel func_8001D1A4
    /* D9A4 8001D1A4 1380063C */  lui        $a2, %hi(D_8012A0E0)
    /* D9A8 8001D1A8 E0A0C624 */  addiu      $a2, $a2, %lo(D_8012A0E0)
    /* D9AC 8001D1AC 40000324 */  addiu      $v1, $zero, 0x40
    /* D9B0 8001D1B0 C601C3A0 */  sb         $v1, 0x1C6($a2)
    /* D9B4 8001D1B4 C501C3A0 */  sb         $v1, 0x1C5($a2)
    /* D9B8 8001D1B8 1380013C */  lui        $at, %hi(D_8012A2A4)
    /* D9BC 8001D1BC A4A223A0 */  sb         $v1, %lo(D_8012A2A4)($at)
    /* D9C0 8001D1C0 9C000724 */  addiu      $a3, $zero, 0x9C
    /* D9C4 8001D1C4 1380013C */  lui        $at, %hi(D_8012A294)
    /* D9C8 8001D1C8 94A227A4 */  sh         $a3, %lo(D_8012A294)($at)
    /* D9CC 8001D1CC 5C000224 */  addiu      $v0, $zero, 0x5C
    /* D9D0 8001D1D0 1380013C */  lui        $at, %hi(D_8012A296)
    /* D9D4 8001D1D4 96A222A4 */  sh         $v0, %lo(D_8012A296)($at)
    /* D9D8 8001D1D8 28000824 */  addiu      $t0, $zero, 0x28
    /* D9DC 8001D1DC 1380013C */  lui        $at, %hi(D_8012A2A8)
    /* D9E0 8001D1E0 A8A228A4 */  sh         $t0, %lo(D_8012A2A8)($at)
    /* D9E4 8001D1E4 0C000924 */  addiu      $t1, $zero, 0xC
    /* D9E8 8001D1E8 1380013C */  lui        $at, %hi(D_8012A2AA)
    /* D9EC 8001D1EC AAA229A4 */  sh         $t1, %lo(D_8012A2AA)($at)
    /* D9F0 8001D1F0 000F0524 */  addiu      $a1, $zero, 0xF00
    /* D9F4 8001D1F4 1380013C */  lui        $at, %hi(D_8012A2AC)
    /* D9F8 8001D1F8 ACA225A4 */  sh         $a1, %lo(D_8012A2AC)($at)
    /* D9FC 8001D1FC 1380013C */  lui        $at, %hi(D_8012A2AE)
    /* DA00 8001D200 AEA225A4 */  sh         $a1, %lo(D_8012A2AE)($at)
    /* DA04 8001D204 EA01C3A0 */  sb         $v1, 0x1EA($a2)
    /* DA08 8001D208 E901C3A0 */  sb         $v1, 0x1E9($a2)
    /* DA0C 8001D20C 1380013C */  lui        $at, %hi(D_8012A2C8)
    /* DA10 8001D210 C8A223A0 */  sb         $v1, %lo(D_8012A2C8)($at)
    /* DA14 8001D214 1380013C */  lui        $at, %hi(D_8012A2B8)
    /* DA18 8001D218 B8A227A4 */  sh         $a3, %lo(D_8012A2B8)($at)
    /* DA1C 8001D21C 7C000224 */  addiu      $v0, $zero, 0x7C
    /* DA20 8001D220 1380013C */  lui        $at, %hi(D_8012A2BA)
    /* DA24 8001D224 BAA222A4 */  sh         $v0, %lo(D_8012A2BA)($at)
    /* DA28 8001D228 1380013C */  lui        $at, %hi(D_8012A2CC)
    /* DA2C 8001D22C CCA228A4 */  sh         $t0, %lo(D_8012A2CC)($at)
    /* DA30 8001D230 1380013C */  lui        $at, %hi(D_8012A2CE)
    /* DA34 8001D234 CEA229A4 */  sh         $t1, %lo(D_8012A2CE)($at)
    /* DA38 8001D238 1380013C */  lui        $at, %hi(D_8012A2D0)
    /* DA3C 8001D23C D0A225A4 */  sh         $a1, %lo(D_8012A2D0)($at)
    /* DA40 8001D240 1380013C */  lui        $at, %hi(D_8012A2D2)
    /* DA44 8001D244 D2A225A4 */  sh         $a1, %lo(D_8012A2D2)($at)
    /* DA48 8001D248 0E02C3A0 */  sb         $v1, 0x20E($a2)
    /* DA4C 8001D24C 0D02C3A0 */  sb         $v1, 0x20D($a2)
    /* DA50 8001D250 1380013C */  lui        $at, %hi(D_8012A2EC)
    /* DA54 8001D254 ECA223A0 */  sb         $v1, %lo(D_8012A2EC)($at)
    /* DA58 8001D258 1380013C */  lui        $at, %hi(D_8012A2DC)
    /* DA5C 8001D25C DCA227A4 */  sh         $a3, %lo(D_8012A2DC)($at)
    /* DA60 8001D260 1380013C */  lui        $at, %hi(D_8012A2DE)
    /* DA64 8001D264 DEA227A4 */  sh         $a3, %lo(D_8012A2DE)($at)
    /* DA68 8001D268 1380013C */  lui        $at, %hi(D_8012A2F0)
    /* DA6C 8001D26C F0A228A4 */  sh         $t0, %lo(D_8012A2F0)($at)
    /* DA70 8001D270 1380013C */  lui        $at, %hi(D_8012A2F2)
    /* DA74 8001D274 F2A229A4 */  sh         $t1, %lo(D_8012A2F2)($at)
    /* DA78 8001D278 1380013C */  lui        $at, %hi(D_8012A2F4)
    /* DA7C 8001D27C F4A225A4 */  sh         $a1, %lo(D_8012A2F4)($at)
    /* DA80 8001D280 1380013C */  lui        $at, %hi(D_8012A2F6)
    /* DA84 8001D284 F6A225A4 */  sh         $a1, %lo(D_8012A2F6)($at)
    /* DA88 8001D288 3202C3A0 */  sb         $v1, 0x232($a2)
    /* DA8C 8001D28C 3102C3A0 */  sb         $v1, 0x231($a2)
    /* DA90 8001D290 1380013C */  lui        $at, %hi(D_8012A310)
    /* DA94 8001D294 10A323A0 */  sb         $v1, %lo(D_8012A310)($at)
    /* DA98 8001D298 1380013C */  lui        $at, %hi(D_8012A300)
    /* DA9C 8001D29C 00A327A4 */  sh         $a3, %lo(D_8012A300)($at)
    /* DAA0 8001D2A0 BC000224 */  addiu      $v0, $zero, 0xBC
    /* DAA4 8001D2A4 1380013C */  lui        $at, %hi(D_8012A302)
    /* DAA8 8001D2A8 02A322A4 */  sh         $v0, %lo(D_8012A302)($at)
    /* DAAC 8001D2AC 30000224 */  addiu      $v0, $zero, 0x30
    /* DAB0 8001D2B0 1380013C */  lui        $at, %hi(D_8012A314)
    /* DAB4 8001D2B4 14A322A4 */  sh         $v0, %lo(D_8012A314)($at)
    /* DAB8 8001D2B8 1380013C */  lui        $at, %hi(D_8012A316)
    /* DABC 8001D2BC 16A329A4 */  sh         $t1, %lo(D_8012A316)($at)
    /* DAC0 8001D2C0 1380013C */  lui        $at, %hi(D_8012A318)
    /* DAC4 8001D2C4 18A325A4 */  sh         $a1, %lo(D_8012A318)($at)
    /* DAC8 8001D2C8 1380013C */  lui        $at, %hi(D_8012A31A)
    /* DACC 8001D2CC 1AA325A4 */  sh         $a1, %lo(D_8012A31A)($at)
    /* DAD0 8001D2D0 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* DAD4 8001D2D4 0C008424 */  addiu      $a0, $a0, 0xC
    /* DAD8 8001D2D8 C0180400 */  sll        $v1, $a0, 3
    /* DADC 8001D2DC 21186400 */  addu       $v1, $v1, $a0
    /* DAE0 8001D2E0 80180300 */  sll        $v1, $v1, 2
    /* DAE4 8001D2E4 21306600 */  addu       $a2, $v1, $a2
    /* DAE8 8001D2E8 80000224 */  addiu      $v0, $zero, 0x80
    /* DAEC 8001D2EC 1600C2A0 */  sb         $v0, 0x16($a2)
    /* DAF0 8001D2F0 1500C2A0 */  sb         $v0, 0x15($a2)
    /* DAF4 8001D2F4 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* DAF8 8001D2F8 21082300 */  addu       $at, $at, $v1
    /* DAFC 8001D2FC F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* DB00 8001D300 B00B8497 */  lhu        $a0, %gp_rel(D_800552C0)($gp)
    /* DB04 8001D304 00000000 */  nop
    /* DB08 8001D308 07008530 */  andi       $a1, $a0, 0x7
    /* DB0C 8001D30C C0110500 */  sll        $v0, $a1, 7
    /* DB10 8001D310 00104224 */  addiu      $v0, $v0, 0x1000
    /* DB14 8001D314 1380013C */  lui        $at, %hi(D_8012A0FC)
    /* DB18 8001D318 21082300 */  addu       $at, $at, $v1
    /* DB1C 8001D31C FCA022A4 */  sh         $v0, %lo(D_8012A0FC)($at)
    /* DB20 8001D320 1380013C */  lui        $at, %hi(D_8012A0FE)
    /* DB24 8001D324 21082300 */  addu       $at, $at, $v1
    /* DB28 8001D328 FEA022A4 */  sh         $v0, %lo(D_8012A0FE)($at)
    /* DB2C 8001D32C 0580023C */  lui        $v0, %hi(D_80056550)
    /* DB30 8001D330 5065428C */  lw         $v0, %lo(D_80056550)($v0)
    /* DB34 8001D334 00000000 */  nop
    /* DB38 8001D338 01004230 */  andi       $v0, $v0, 0x1
    /* DB3C 8001D33C 01000324 */  addiu      $v1, $zero, 0x1
    /* DB40 8001D340 16004310 */  beq        $v0, $v1, .L8001D39C
    /* DB44 8001D344 00018230 */   andi      $v0, $a0, 0x100
    /* DB48 8001D348 08004014 */  bnez       $v0, .L8001D36C
    /* DB4C 8001D34C 07000224 */   addiu     $v0, $zero, 0x7
    /* DB50 8001D350 0300A214 */  bne        $a1, $v0, .L8001D360
    /* DB54 8001D354 00000000 */   nop
    /* DB58 8001D358 E6740008 */  j          .L8001D398
    /* DB5C 8001D35C 00018234 */   ori       $v0, $a0, 0x100
  .L8001D360:
    /* DB60 8001D360 B00B8297 */  lhu        $v0, %gp_rel(D_800552C0)($gp)
    /* DB64 8001D364 E6740008 */  j          .L8001D398
    /* DB68 8001D368 01004224 */   addiu     $v0, $v0, 0x1
  .L8001D36C:
    /* DB6C 8001D36C B00B8297 */  lhu        $v0, %gp_rel(D_800552C0)($gp)
    /* DB70 8001D370 00000000 */  nop
    /* DB74 8001D374 07004230 */  andi       $v0, $v0, 0x7
    /* DB78 8001D378 04004014 */  bnez       $v0, .L8001D38C
    /* DB7C 8001D37C 00000000 */   nop
    /* DB80 8001D380 B00B80A7 */  sh         $zero, %gp_rel(D_800552C0)($gp)
    /* DB84 8001D384 E7740008 */  j          .L8001D39C
    /* DB88 8001D388 00000000 */   nop
  .L8001D38C:
    /* DB8C 8001D38C B00B8297 */  lhu        $v0, %gp_rel(D_800552C0)($gp)
    /* DB90 8001D390 00000000 */  nop
    /* DB94 8001D394 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001D398:
    /* DB98 8001D398 B00B82A7 */  sh         $v0, %gp_rel(D_800552C0)($gp)
  .L8001D39C:
    /* DB9C 8001D39C 0800E003 */  jr         $ra
    /* DBA0 8001D3A0 00000000 */   nop
endlabel func_8001D1A4
