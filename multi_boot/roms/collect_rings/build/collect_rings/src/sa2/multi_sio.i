# 0 "build/collect_rings/src/sa2/multi_sio.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "build/collect_rings/src/sa2/multi_sio.c"
# 1 "../../../include/global.h" 1



# 1 "../../../include/config.h" 1
# 5 "../../../include/global.h" 2
# 1 "../../../include/gba/gba.h" 1



# 1 "../../../include/gba/defines.h" 1




# 1 "../../../tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 6 "../../../include/gba/defines.h" 2
# 1 "../../../tools/agbcc/include/stdint.h" 1
# 31 "../../../tools/agbcc/include/stdint.h"
# 1 "../../../tools/agbcc/include/limits.h" 1
# 32 "../../../tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 7 "../../../include/gba/defines.h" 2
# 137 "../../../include/gba/defines.h"
typedef uint16_t winreg_t;
# 5 "../../../include/gba/gba.h" 2
# 1 "../../../include/gba/io_reg.h" 1
# 6 "../../../include/gba/gba.h" 2
# 1 "../../../include/gba/types.h" 1
# 23 "../../../include/gba/types.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;




typedef u16 MetatileIndexType;
# 49 "../../../include/gba/types.h"
typedef u8 int_vcount;


typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};
# 98 "../../../include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { u32 y : 8; u32 affineMode : 2; u32 objMode : 2; u32 mosaic : 1; u32 bpp : 1; u32 shape : 2; u32 x : 9; u32 matrixNum : 5; u32 size : 2; u16 tileNum : 10; u16 priority : 2; u16 paletteNum : 4; } OamDataShort;
# 118 "../../../include/gba/types.h"
  ;

typedef union {
    struct {
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;

             u16 fractional:8;
             u16 integer:7;
             u16 sign:1;
    } split;

    struct {
        u16 attr0;
        u16 attr1;
        u16 attr2;
        u16 affineParam;
    } all;

    u16 raw[4];
} OamData;
# 308 "../../../include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioNormalCnt
{
    u16 sck_I_O:1;
    u16 sck:1;
    u16 ackRecv:1;
    u16 ackSend:1;
    u16 unused_6_4:3;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 362 "../../../include/gba/types.h"
struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 387 "../../../include/gba/types.h"
struct SioUartCnt
{
    u16 baudRate:2;
    u16 ctsEnable:1;
    u16 paritySelect:1;
    u16 transDataFull:1;
    u16 recvDataEmpty:1;
    u16 error:1;
    u16 length:1;
    u16 fifoEnable:1;
    u16 parityEnable:1;
    u16 transEnable:1;
    u16 recvEnable:1;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 415 "../../../include/gba/types.h"
struct JoyCnt
{
    u8 ifReset:1;
    u8 ifRecv:1;
    u8 ifSend:1;
    u8 unused_5_3:3;
    u8 ifEnable:1;
    u8 unused_7:1;
};


struct JoyStat
{
    u8 unused_0:1;
    u8 recv:1;
    u8 unused_2:1;
    u8 send:1;
    u8 flags:2;
    u8 unused_7_6:2;
};


struct RCnt
{
    u8 sc:1;
    u8 sd:1;
    u8 si:1;
    u8 so:1;
    u8 sc_i_o:1;
    u8 sd_i_o:1;
    u8 si_i_o:1;
    u8 so_i_o:1;
    u8 ifEnable:1;
    u8 unused_13_9:5;
    u8 sioModeMaster:2;
};
# 7 "../../../include/gba/gba.h" 2
# 1 "../../../include/gba/multiboot.h" 1
# 9 "../../../include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    u8 *boot_srcp;
    u8 *boot_endp;
    u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "../../../include/gba/gba.h" 2
# 1 "../../../include/gba/syscall.h" 1
# 14 "../../../include/gba/syscall.h"
typedef struct {
    u32 srcLength : 16;
    u32 srcWidth : 8;
    u32 dstWidth : 8;
} BitUnPackData;

void SoftReset(u32 resetFlags);
void SoftResetExram(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);



s32 Div(s32 num, s32 denom);
s32 DivArm(s32 denom, s32 num);
s32 Mod(s32 num, s32 denom);
s32 ModArm(s32 denom, s32 num);
# 72 "../../../include/gba/syscall.h"
void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "../../../include/gba/gba.h" 2
# 1 "../../../include/gba/macro.h" 1



# 1 "../../../include/gba/cpuset_macros.h" 1
# 5 "../../../include/gba/macro.h" 2
# 1 "../../../include/gba/dma_macros.h" 1



# 1 "../../../include/config.h" 1
# 5 "../../../include/gba/dma_macros.h" 2
# 6 "../../../include/gba/macro.h" 2
# 10 "../../../include/gba/gba.h" 2
# 1 "../../../include/gba/isagbprint.h" 1
# 13 "../../../include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "../../../include/gba/gba.h" 2
# 6 "../../../include/global.h" 2
# 33 "../../../include/global.h"
typedef void (*VoidFn)(void);
# 301 "../../../include/global.h"
typedef struct {
    s16 x;
    s16 y;
} Vec2_16;

typedef struct {
    s32 x;
    s32 y;
} Vec2_32;

typedef struct {
    u8 reserved : 4;
    u8 compressedType : 4;
    u32 size : 24;
    void *data;
} RLCompressed;

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};







typedef struct {
               u16 pa, pb, pc, pd;
               u32 x, y;
} BgAffineReg;


typedef void (*HBlankIntrFunc)(int_vcount vcount);
typedef void (*IntrFunc)(void);

extern void *iwram_end;
extern void *ewram_end;

extern void *rom_footer;
# 2 "build/collect_rings/src/sa2/multi_sio.c" 2
# 1 "../../../include/multi_sio.h" 1



# 1 "../../../include/global.h" 1
# 5 "../../../include/multi_sio.h" 2
# 83 "../../../include/multi_sio.h"
struct MultiSioPacket {
    u8 frameCounter;
    u8 recvErrorFlags : 4;
    u8 loadRequest : 1;
    u8 downloadSuccessFlag : 1;
    u8 loadSuccessFlag : 1;
    u8 reserved_0 : 1;
    u16 checkSum;
    u16 data[20 / 2];
    u16 overrunCatch[2];
};


struct MultiSioArea {
    u8 type;
    u8 state;
    u8 connectedFlags;
    u8 recvSuccessFlags;

    u8 syncRecvFlag[4];

    u8 downloadSuccessFlags : 4;
    u8 loadEnable : 1;
    u8 loadRequest : 1;
    u8 loadSuccessFlag : 1;
    u8 startFlag : 1;

    u8 hardError;
    u8 recvFlagsAvailableCounter;


    u8 sendFrameCounter;
    u8 recvFrameCounter[4][2];

    s32 sendBufCounter;
    s32 recvBufCounter[4];

    u16 *nextSendBufp;
    u16 *currentSendBufp;
    u16 *currentRecvBufp[4];
    u16 *lastRecvBufp[4];
    u16 *recvCheckBufp[4];

    struct MultiSioPacket sendBuf[2];
    struct MultiSioPacket recvBuf[4][3];

};


extern u32 gMultiSioRecvFuncBuf[0x40 / 4];

extern u32 gMultiSioIntrFuncBuf[0x120 / 4];


extern struct MultiSioArea gMultiSioArea;





extern void MultiSioInit(u32 connectedFlags);
# 155 "../../../include/multi_sio.h"
void MultiSioStart(void);
# 164 "../../../include/multi_sio.h"
void MultiSioStop(void);







extern u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest);
# 224 "../../../include/multi_sio.h"
struct MultiSioReturn {
    u32 recvSuccessFlags : 4;
    u32 loadEnable : 1;
    u32 loadRequest : 1;
    u32 loadSuccessFlag : 1;
    u32 type : 1;
    u32 connectedFlags : 4;
    u32 hardError : 1;
    u32 idOverError : 1;
    u32 reserved : 1;
    u32 recvFlagsAvailable : 1;
};





extern void MultiSioIntr(void);
# 257 "../../../include/multi_sio.h"
extern void MultiSioSendDataSet(void *sendp, u32 loadReq);
# 272 "../../../include/multi_sio.h"
extern u32 MultiSioRecvDataCheck(void *recvp);
# 3 "build/collect_rings/src/sa2/multi_sio.c" 2
# 1 "../../../include/sio32_multi_load.h" 1



# 1 "../../../include/multi_sio.h" 1
# 5 "../../../include/sio32_multi_load.h" 2
# 59 "../../../include/sio32_multi_load.h"
struct Sio32MultiLoadArea {
    u8 type;
    u8 state;
    u8 frameCounter;
    u8 downloadSuccessFlag;

    u32 *datap;
    s32 dataCounter;

    u32 checkSum;
    u32 checkSumTmp;
    s32 checkSumCounter;
};

extern struct Sio32MultiLoadArea gSio32MultiLoadArea;






extern void Sio32MultiLoadInit(u32 type, void *datap);
# 106 "../../../include/sio32_multi_load.h"
extern u32 Sio32MultiLoadMain(u32 *progressCounterp);
# 131 "../../../include/sio32_multi_load.h"
extern void Sio32MultiLoadIntr(void);
# 4 "build/collect_rings/src/sa2/multi_sio.c" 2

static const char sMultiSioLibVer[] = "MultiSio4Sio32Load010528";


u32 gMultiSioIntrFuncBuf[0x120 / 4] = {};


struct MultiSioArea gMultiSioArea = {};


__attribute__((unused)) u32 gUnusedMultiSioSpace[2] = {};



u32 gMultiSioRecvFuncBuf[0x40 / 4] = {};





extern u32 MultiSioRecvBufChange(void);

void MultiSioInit(u32 connectedFlags)
{
    s32 i;

    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    (*(vu16 *)(0x4000000 + 0x200)) &= ~((1 << 7)
                | ((1 << 3) << 3));
    (*(vu16 *)(0x4000000 + 0x208)) = 1;
    (*(vu16 *)(0x4000000 + 0x134)) = 0;
    *(vu32 *)(0x4000000 + 0x128) = 0x2000;
    (*(vu16 *)(0x4000000 + 0x128)) |= 0x4000 | 0x0003;
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &gMultiSioArea, 0x04000000 | 0x01000000 | ((sizeof(struct MultiSioArea))/(32/8) & 0x1FFFFF)); }
                                          ;

    CpuSet(MultiSioRecvBufChange, gMultiSioRecvFuncBuf, 0x04000000 | ((sizeof(gMultiSioRecvFuncBuf))/(32/8) & 0x1FFFFF));
    CpuSet(MultiSioIntr, gMultiSioIntrFuncBuf, 0x04000000 | ((sizeof(gMultiSioIntrFuncBuf))/(32/8) & 0x1FFFFF));

    gMultiSioArea.connectedFlags = connectedFlags;
    gMultiSioArea.sendBufCounter = 13;
    gMultiSioArea.nextSendBufp = (u16 *)&gMultiSioArea.sendBuf[0];
    gMultiSioArea.currentSendBufp = (u16 *)&gMultiSioArea.sendBuf[1];
    for (i = 0; i < 4; ++i) {
        gMultiSioArea.currentRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][0];
        gMultiSioArea.lastRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][1];
        gMultiSioArea.recvCheckBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][2];
    }
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    (*(vu16 *)(0x4000000 + 0x200)) |= (1 << 7);
    (*(vu16 *)(0x4000000 + 0x208)) = 1;
}





u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest)
{
    struct SioMultiCnt sioCntBak;
    __attribute__((unused)) s32 i, ii;

    sioCntBak = *(struct SioMultiCnt *)(0x4000000 + 0x128);
    switch (gMultiSioArea.state) {
        case 0:
            if (!sioCntBak.id) {
                if (!sioCntBak.sd || sioCntBak.enable)
                    break;
                if (!sioCntBak.si && gMultiSioArea.sendBufCounter == 13) {
                    (*(vu16 *)(0x4000000 + 0x208)) = 0;
                    (*(vu16 *)(0x4000000 + 0x200)) &= ~(1 << 7);
                    (*(vu16 *)(0x4000000 + 0x200)) |= ((1 << 3) << 3);
                    (*(vu16 *)(0x4000000 + 0x208)) = 1;
                    ((struct SioMultiCnt *)(0x4000000 + 0x128))->ifEnable = 0;
                    (*(vu16 *)(0x4000000 + 0x202)) = (1 << 7) | ((1 << 3) << 3);
                    (*(vu32 *)((0x4000000 + 0x100) + (3 * 4))) = (0x10000 - ((16 * 1024 * 1024) / 60 / ((2 + 4 + 20 + 6) / (16 / 8))));
                    gMultiSioArea.type = 0x0008;
                    ((struct SioMultiCnt *)(0x4000000 + 0x128))->enable = 1;
                }
            }
            gMultiSioArea.state = 1;

        case 1:
            MultiSioRecvDataCheck(recvp);
            MultiSioSendDataSet(sendp, loadRequest);
            break;
    }
    ++gMultiSioArea.sendFrameCounter;
    return gMultiSioArea.recvSuccessFlags | gMultiSioArea.loadEnable << 4 | gMultiSioArea.loadRequest << 5
        | gMultiSioArea.loadSuccessFlag << 6 | (gMultiSioArea.type == 0x0008) << 7 | gMultiSioArea.connectedFlags << 8
        | (gMultiSioArea.hardError != 0) << 12 | (sioCntBak.id >= 4) << 13;
}





void MultiSioSendDataSet(void *sendp, u32 loadRequest)
{
    s32 checkSum = 0;
    s32 i;

    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->loadRequest = loadRequest;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->downloadSuccessFlag = gSio32MultiLoadArea.downloadSuccessFlag;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->loadSuccessFlag = gMultiSioArea.loadSuccessFlag;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->frameCounter = (u8)gMultiSioArea.sendFrameCounter;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->recvErrorFlags = gMultiSioArea.connectedFlags ^ gMultiSioArea.recvSuccessFlags;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = 0;
    CpuSet(sendp, &gMultiSioArea.nextSendBufp[2], 0x04000000 | ((20)/(32/8) & 0x1FFFFF))
                                   ;
    for (i = 0; i < sizeof(struct MultiSioPacket) / 2 - 2; ++i)
        checkSum += gMultiSioArea.nextSendBufp[i];
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = ~checkSum;
    if (gMultiSioArea.type)
        (*(vu16 *)((0x4000000 + 0x102) + (3 * 4))) = 0;
    gMultiSioArea.sendBufCounter = -1;
    if (gMultiSioArea.type && gMultiSioArea.startFlag)
        (*(vu16 *)((0x4000000 + 0x102) + (3 * 4))) = 0x00 | 0x40 | 0x80;
}





u32 MultiSioRecvDataCheck(void *recvp)
{

    u32 (*multiSioRecvBufChangeOnRam)(void) = (u32(*)(void))gMultiSioRecvFuncBuf;

    s32 checkSum;
    vu32 __attribute__((unused)) recvCheck = 0;
    u8 syncRecvFlagBak[4];
    s32 i, ii;


    *(u32 *)syncRecvFlagBak = multiSioRecvBufChangeOnRam();
# 149 "build/collect_rings/src/sa2/multi_sio.c"
    gMultiSioArea.recvSuccessFlags = 0;
    for (i = 0; i < 4; ++i) {
        checkSum = 0;
        for (ii = 0; ii < sizeof(struct MultiSioPacket) / 2 - 2; ++ii)
            checkSum += gMultiSioArea.recvCheckBufp[i][ii];
        if (syncRecvFlagBak[i])
            if ((s16)checkSum == -1) {
                gMultiSioArea.recvSuccessFlags |= 1 << i;
                gMultiSioArea.downloadSuccessFlags |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[i])->downloadSuccessFlag << i;
                CpuSet(&((u8 *)gMultiSioArea.recvCheckBufp[i])[4], &((u8 *)recvp)[i * 20], 0x04000000 | ((20)/(32/8) & 0x1FFFFF));
            }
        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &((u8 *)gMultiSioArea.recvCheckBufp[i])[4], 0x04000000 | 0x01000000 | ((20)/(32/8) & 0x1FFFFF)); };
    }
    gMultiSioArea.connectedFlags |= gMultiSioArea.recvSuccessFlags;
    if (gMultiSioArea.recvSuccessFlags & 1) {

        if (gMultiSioArea.type == 0x0008) {
            if (gMultiSioArea.recvSuccessFlags & 0x3)
                if (gMultiSioArea.recvSuccessFlags == gMultiSioArea.connectedFlags)
                    gMultiSioArea.loadEnable = 1;
            if ((gMultiSioArea.downloadSuccessFlags & 0xe) == (gMultiSioArea.connectedFlags & 0xe))
                gMultiSioArea.loadSuccessFlag = 1;
        } else
            gMultiSioArea.loadSuccessFlag |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[0])->loadSuccessFlag;
        gMultiSioArea.loadRequest |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[0])->loadRequest;
    }
    return gMultiSioArea.recvSuccessFlags;
}





void MultiSioStart(void)
{
    if (gMultiSioArea.type)
        gMultiSioArea.startFlag = 1;
}





void MultiSioStop(void)
{
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    (*(vu16 *)(0x4000000 + 0x200)) &= ~((1 << 7) | ((1 << 3) << 3));
    (*(vu16 *)(0x4000000 + 0x208)) = 1;
    (*(vu16 *)(0x4000000 + 0x128)) = 0x2000 | 0x0003;
    (*(vu32 *)((0x4000000 + 0x100) + (3 * 4))) = (0x10000 - ((16 * 1024 * 1024) / 60 / ((2 + 4 + 20 + 6) / (16 / 8))));
    (*(vu16 *)(0x4000000 + 0x202)) = (1 << 7) | ((1 << 3) << 3);
    gMultiSioArea.startFlag = 0;
}
