.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001820C, 0x70

glabel func_8001820C
    /* 8A0C 8001820C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8A10 80018210 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8A14 80018214 0580033C */  lui        $v1, %hi(D_80056514)
    /* 8A18 80018218 1465638C */  lw         $v1, %lo(D_80056514)($v1)
    /* 8A1C 8001821C 0580023C */  lui        $v0, %hi(D_8005651C)
    /* 8A20 80018220 1C65428C */  lw         $v0, %lo(D_8005651C)($v0)
    /* 8A24 80018224 00000000 */  nop
    /* 8A28 80018228 140062AC */  sw         $v0, 0x14($v1)
    /* 8A2C 8001822C 5BCE000C */  jal        ResetGraph
    /* 8A30 80018230 03000424 */   addiu     $a0, $zero, 0x3
    /* 8A34 80018234 18B3000C */  jal        PadStop
    /* 8A38 80018238 00000000 */   nop
    /* 8A3C 8001823C E4B3000C */  jal        StopCallback
    /* 8A40 80018240 00000000 */   nop
    /* 8A44 80018244 B9C9000C */  jal        _96_remove
    /* 8A48 80018248 00000000 */   nop
    /* 8A4C 8001824C B3C9000C */  jal        func_800326CC
    /* 8A50 80018250 00000000 */   nop
    /* 8A54 80018254 0180043C */  lui        $a0, %hi(D_80010000)
    /* 8A58 80018258 00008424 */  addiu      $a0, $a0, %lo(D_80010000)
    /* 8A5C 8001825C 1F80053C */  lui        $a1, (0x801FF000 >> 16)
    /* 8A60 80018260 00F0A534 */  ori        $a1, $a1, (0x801FF000 & 0xFFFF)
    /* 8A64 80018264 AFC9000C */  jal        func_800326BC
    /* 8A68 80018268 00100624 */   addiu     $a2, $zero, 0x1000
    /* 8A6C 8001826C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8A70 80018270 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8A74 80018274 0800E003 */  jr         $ra
    /* 8A78 80018278 00000000 */   nop
endlabel func_8001820C
