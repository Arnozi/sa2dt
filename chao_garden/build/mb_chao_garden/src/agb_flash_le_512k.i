# 0 "src/agb_flash_le_512k.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/agb_flash_le_512k.c"
# 1 "include/global.h" 1



# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1



# 1 "../tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 5 "include/gba/defines.h" 2
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "../tools/agbcc/include/stdint.h" 1
# 31 "../tools/agbcc/include/stdint.h"
# 1 "../tools/agbcc/include/limits.h" 1
# 32 "../tools/agbcc/include/stdint.h" 2



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
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

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
} OamData;
# 128 "include/gba/types.h"
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
# 182 "include/gba/types.h"
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
# 207 "include/gba/types.h"
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
# 235 "include/gba/types.h"
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
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
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
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);
void SoftResetRom(u32 resetFlags);
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

s32 Mod(s32 num, s32 denom);

void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 13 "include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "include/gba/gba.h" 2
# 5 "include/global.h" 2





# 1 "include/functions.h" 1



void IntrMain(void);
void IntrDummy(void);
# 11 "include/global.h" 2
# 91 "include/global.h"
typedef void (*HBlankFunc)(u8 vcount);
typedef void (*IntrFunc)(void);
typedef u32 (*SpriteUpdateFunc)(void);

extern u8 IntrMain_RAM[0x80];
extern IntrFunc gIntrTable[4];

extern u16 gUnknown_03003B70;

struct GameConfig {
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

extern struct GameConfig gUnknown_02000008;

struct UNK_03003330 {

    void (*unk0)(void);

    void (*unk4)(void);

    u32 unk8;

    s16 unkC;
    u8 unkE;
    u8 unkF;
    u8 unk10;
};

extern struct UNK_03003330 gUnknown_03003330;

extern u8 gSaveSectorNum;
extern u32 gSaveVersion;

extern u32 gUnknown_03005274;



extern void sub_02001528(u32);
extern void InitGarden(void);
extern void sub_0200be24(void);
extern void sub_0200d27c(void);
extern void sub_020018a0(void);
extern void GetInput(void);
# 2 "src/agb_flash_le_512k.c" 2
# 1 "include/gba/flash_internal.h" 1
# 12 "include/gba/flash_internal.h"
struct FlashSector
{
    u32 size;
    u8 shift;
    u16 count;
    u16 top;
};

struct FlashType {
    u32 romSize;
    struct FlashSector sector;
    u16 wait[2];


    union {
        struct {
        u8 makerId;
        u8 deviceId;
        } separate;
        u16 joined;
    } ids;
};

struct FlashSetupInfo
{
    u16 (*programFlashSector)(u16, void *);
    u16 (*eraseFlashChip)(void);
    u16 (*eraseFlashSector)(u16);
    u16 (*WaitForFlashWrite)(u8, u8 *, u8);
    const u16 *maxTime;
    struct FlashType type;
};

extern u16 gFlashNumRemainingBytes;

extern u16 (*ProgramFlashSector)(u16, void *);
extern u16 (*EraseFlashChip)(void);
extern u16 (*EraseFlashSector)(u16);
extern const u16 *gFlashMaxTime;
extern const struct FlashType *gFlash;


extern u8 gFlashTimeoutFlag;
extern u8 (*PollFlashStatus)(u8 *);

extern u16 (*WaitForFlashWrite)(u8, u8 *, u8);

extern const struct FlashSetupInfo LE39FW512;

extern const struct FlashSetupInfo MN63F805MNP;
extern const struct FlashSetupInfo MX29L512;
extern const struct FlashSetupInfo DefaultFlash512K;





void SwitchFlashBank(u8 bankNum);
u16 ReadFlashId(void);
void StartFlashTimer(u8 phase);
void SetReadFlash1(u16 *dest);
void StopFlashTimer(void);
u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
u32 ProgramFlashSectorAndVerify(u16 sectorNum, u8 *src);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
u32 ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n);

u16 WaitForFlashWrite512K_Common(u8 phase, u8 *addr, u8 lastData);
u16 WaitForFlashWrite_Common(u8 phase, u8 *addr, u8 lastData);

u16 ProgramByte(u8 *src, u8 *dest);

u16 EraseFlashChip_LE(void);
u16 EraseFlashSector_LE(u16 sectorNum);
u16 ProgramFlashSector_LE(u16 sectorNum, void *src);
u16 ProgramFlashSector_MX(u16 sectorNum, void *src);


u16 IdentifyFlash(void);
# 3 "src/agb_flash_le_512k.c" 2

const u16 le512kMaxTime[] = {
    10, 65469, 0x80 | 0x40 | 0x02,
    10, 65469, 0x80 | 0x40 | 0x02,
    40, 65469, 0x80 | 0x40 | 0x02,
    200, 65469, 0x80 | 0x40 | 0x02,
};

const struct FlashSetupInfo DefaultFlash512K = {
    ProgramFlashSector_LE,
    EraseFlashChip_LE,
    EraseFlashSector_LE,
    WaitForFlashWrite512K_Common,
    le512kMaxTime,
    {
        65536,
        {
            4096,
            12,
            16,
            0
        },
        { 3, 3 },
        { { 0, 0 } }
    },
};

const struct FlashSetupInfo LE39FW512 = {
    ProgramFlashSector_LE,
    EraseFlashChip_LE,
    EraseFlashSector_LE,
    WaitForFlashWrite512K_Common,
    le512kMaxTime,
    {
        65536,
        {
            4096,
            12,
            16,
            0
        },
        { 1, 2 },
        { { 0xBF, 0xD4 } }
    },
};

u16 EraseFlashChip_LE(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    (*(vu16 *)(0x4000000 + 0x204)) = ((*(vu16 *)(0x4000000 + 0x204)) & ~(3 << 0)) | gFlash->wait[0];

    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0xAA));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x2AAA))) = (0x55));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0x80));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0xAA));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x2AAA))) = (0x55));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0x10));

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(3, ((u8 *)0xE000000), 0xFF);

    (*(vu16 *)(0x4000000 + 0x204)) = ((*(vu16 *)(0x4000000 + 0x204)) & ~(3 << 0)) | (3 << 0);

    return result;
}

u16 EraseFlashSector_LE(u16 sectorNum)
{
    u16 result;
    u8 *addr;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= 0x10)
        return 0x80FF;

    (*(vu16 *)(0x4000000 + 0x204)) = ((*(vu16 *)(0x4000000 + 0x204)) & ~(3 << 0)) | gFlash->wait[0];

    addr = ((u8 *)0xE000000) + (sectorNum << gFlash->sector.shift);

    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0xAA));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x2AAA))) = (0x55));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0x80));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0xAA));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x2AAA))) = (0x55));
    *addr = 0x30;

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(2, addr, 0xFF);

    (*(vu16 *)(0x4000000 + 0x204)) = ((*(vu16 *)(0x4000000 + 0x204)) & ~(3 << 0)) | (3 << 0);

    return result;
}

u16 ProgramByte(u8 *src, u8 *dest)
{
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0xAA));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x2AAA))) = (0x55));
    ((*(vu8 *)(((u8 *)0xE000000) + (0x5555))) = (0xA0));
    *dest = *src;

    return WaitForFlashWrite(1, dest, *src);
}

static u32 VerifyEraseSector_Core(u8 *dest);
static u16 VerifyEraseSector(u8 *dest, u8 *src);

u16 ProgramFlashSector_LE(u16 sectorNum, void *src)
{
    u16 result;
    u8 *dest;
    u16 VerifyEraseSector_Core_Buffer[0x30];
    u16 *funcSrc;
    u16 *funcDest;
    u16 i;
    u8 tryNum;
    u8 erasesToTry;
    u8 j;

    if (sectorNum > 15)
        return 0x80FF;

    if (gFlash->sector.count == 131072) {
        SwitchFlashBank(sectorNum / 16);
        sectorNum %= 16;
    }

    dest = ((u8 *)0xE000000) + (sectorNum << gFlash->sector.shift);
    funcSrc = (u16 *)((s32)VerifyEraseSector_Core ^ 1);
    funcDest = VerifyEraseSector_Core_Buffer;

    i = ((s32)VerifyEraseSector - (s32)VerifyEraseSector_Core);

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i -= 2;
    }

    tryNum = 0;
    while ((result = EraseFlashSector_LE(sectorNum))
           || (result = VerifyEraseSector(dest, (u8 *)((s32)&VerifyEraseSector_Core_Buffer + 1)))) {
        tryNum++;
        if (tryNum == 0x51) {
            return result;
        }
    }

    erasesToTry = 1;
    if (tryNum != 0) {
        erasesToTry = 6;
    }

    for (j = 1; j <= erasesToTry; j++) {
        EraseFlashSector_LE(sectorNum);
    }

    SetReadFlash1(VerifyEraseSector_Core_Buffer);

    (*(vu16 *)(0x4000000 + 0x204)) = ((*(vu16 *)(0x4000000 + 0x204)) & ~(3 << 0)) | gFlash->wait[0];
    gFlashNumRemainingBytes = gFlash->sector.size;
    while (gFlashNumRemainingBytes && (result = ProgramByte(src, dest), result == 0)) {
        gFlashNumRemainingBytes--;
        src++, dest++;
    }
    (*(vu16 *)(0x4000000 + 0x204)) = ((*(vu16 *)(0x4000000 + 0x204)) & ~(3 << 0)) | 3;
    return result;
}

static u32 VerifyEraseSector_Core(u8 *dest)
{
    u32 sectorNum;
    u8 src;

    for (sectorNum = gFlash->sector.size; sectorNum != 0; sectorNum--) {
        src = *dest++;

        if (src != 0xff) {
            break;
        }
    }
    return sectorNum;
}

static u16 VerifyEraseSector(u8 *dest, u8 *src)
{
    u32 result;

    result = ((u32(*)(u8 *))((s32)src))(dest);

    if (result != 0) {
        return 0x8004;
    }

    return 0;
}
