# 0 "src/game/math.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/math.c"
# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 2 "src/game/math.c" 2
# 1 "include/game/math.h" 1



# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1





# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



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
# 7 "include/gba/defines.h" 2
# 137 "include/gba/defines.h"
typedef uint16_t winreg_t;
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1
# 23 "include/gba/types.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;




typedef u16 MetatileIndexType;
# 49 "include/gba/types.h"
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
# 98 "include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { u32 y : 8; u32 affineMode : 2; u32 objMode : 2; u32 mosaic : 1; u32 bpp : 1; u32 shape : 2; u32 x : 9; u32 matrixNum : 5; u32 size : 2; u16 tileNum : 10; u16 priority : 2; u16 paletteNum : 4; } OamDataShort;
# 118 "include/gba/types.h"
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
# 308 "include/gba/types.h"
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
# 362 "include/gba/types.h"
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
# 387 "include/gba/types.h"
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
# 415 "include/gba/types.h"
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
# 72 "include/gba/syscall.h"
void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1



# 1 "include/gba/cpuset_macros.h" 1
# 5 "include/gba/macro.h" 2
# 1 "include/gba/dma_macros.h" 1



# 1 "include/config.h" 1
# 5 "include/gba/dma_macros.h" 2
# 6 "include/gba/macro.h" 2
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
# 6 "include/global.h" 2
# 33 "include/global.h"
typedef void (*VoidFn)(void);
# 301 "include/global.h"
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
# 5 "include/game/math.h" 2


struct UNK_8085F1C_1 {
    s16 unk0;
    s16 unk2[9];
    s32 unk14;
    s32 unk18;
    s32 unk1C;
};

struct UNK_8085F1C {
    struct UNK_8085F1C *unk0;
    u8 unk4[8];
    u32 unkC;
    s32 unk10;
    struct UNK_8085F1C_1 unk14;
    struct UNK_8085F1C_1 unk34;

    s16 unk54;
    s16 unk56;
    s16 unk58;
    u8 unk59[2];

    s16 unk5C;
    s16 unk5E;
    s16 unk60;
    u8 unk62[2];

    s32 unk64;
    s32 unk68;
    s32 unk6C;

    u8 unk70[4];
};


u16 Random(void);
# 60 "include/game/math.h"
void SeedRng(u32 a, u32 b);

struct UNK_8085F1C_1 *sub_80853F8(struct UNK_8085F1C *p1);

u32 AbsMax(s32 a, s32 b);

u32 sub_8085530(s32 a, s32 b);
s16 sub_808558C(u16 a, u16 b, u8 c);
u32 sub_80855C0(s32 a, s32 b, s32 c, u8 d);
s32 sub_8085698(s32 a, s32 b, s32 c, u8 d, u8 e);
s32 sub_8085654(s32, s32, s32, u8, u8);
s16 sub_8085968(s16 *unk28, u16 param1);


u16 sub_80859F4(s16 *, u16);
# 3 "src/game/math.c" 2

# 1 "include/trig.h" 1



# 1 "include/global.h" 1
# 5 "include/trig.h" 2

extern const s16 gSineTable[1280];
# 5 "src/game/math.c" 2


typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} UNK_8085D14;


typedef struct {
    u16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} UNK_8085D14_2;

typedef struct {
    void *unk0;
    void *start;
    void *next;
    void *unkC;
} UNK_8085DEC;


u32 gRngPrevValue = 0;
u32 gRngValue = 0;

struct UNK_8085F1C_1 *sub_8085EC4(struct UNK_8085F1C *p1);
static bool8 sub_8085D98(UNK_8085DEC *thing, UNK_8085DEC *target);
void sub_8084B54(struct UNK_8085F1C_1 *, u16, u16, u16);

const u16 gUnknown_080E0290[] = { 0x0AAA, 0x02AA };





__attribute__((naked)) void sub_80832FC() { asm(".include " "\"asm/non_matching/game/math/unused_sub_80832FC.inc\""); if (0) { }
}

__attribute__((naked)) void sub_808343C() { asm(".include " "\"asm/non_matching/game/math/unused_sub_808343C.inc\""); if (0) { }
}

void sub_8083504(UNK_8085D14_2 *arg0, UNK_8085D14_2 *arg1, UNK_8085D14_2 *arg2)
{
    s32 var_r3, var_r4;

    if (arg1->unk2 != 0x400) {
        var_r3 = (arg1->unk2 * arg0->unk8) >> 0xA;
        arg2->unk2 = ((arg1->unk2 * arg0->unk2) >> 0xA);
    } else {
        var_r3 = arg0->unk8;
    }
    if (arg1->unk4 != 0x400) {
        var_r4 = (arg1->unk4 * arg0->unkC) >> 0xA;
        arg2->unk4 = ((arg1->unk4 * arg0->unk4) >> 0xA);
    } else {
        var_r4 = arg0->unkC;
    }

    if (arg1->unk0 != 0) {
        arg2->unk8 = (arg1->unk8 + (((var_r3 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8) - ((var_r4 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8)));
        arg2->unkC = arg1->unkC + (((var_r3 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8) + ((var_r4 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8));
    } else {
        arg2->unk8 = (arg1->unk8 + var_r3);
        arg2->unkC = arg1->unkC + var_r4;
    }
    arg2->unk0 = ((arg0->unk0 + arg1->unk0) & (1024 - 1));
}


void sub_80835E0(UNK_8085D14_2 *arg0, UNK_8085D14_2 *arg1)
{
    s32 var_r3, var_r4;

    if (arg1->unk2 != 0x400) {
        var_r3 = (s32)(arg1->unk2 * arg0->unk8) >> 0xA;
        arg0->unk2 = (s16)((s32)(arg1->unk2 * arg0->unk2) >> 0xA);
    } else {
        var_r3 = arg0->unk8;
    }
    if (arg1->unk4 != 0x400) {
        var_r4 = (s32)(arg1->unk4 * arg0->unkC) >> 0xA;
        arg0->unk4 = (s16)((s32)(arg1->unk4 * arg0->unk4) >> 0xA);
    } else {
        var_r4 = arg0->unkC;
    }
    if (arg1->unk0 != 0) {
        arg0->unk8 = (arg1->unk8 + (((var_r3 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8) - ((var_r4 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8)));
        arg0->unkC = arg1->unkC + (((var_r3 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8) + ((var_r4 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8));
    } else {
        arg0->unk8 = (s32)(arg1->unk8 + var_r3);
        arg0->unkC = arg1->unkC + var_r4;
    }
    arg0->unk0 = ((arg0->unk0 + arg1->unk0) & (1024 - 1));
}

void sub_80836BC(UNK_8085D14_2 *arg0, UNK_8085D14_2 *arg1)
{
    s32 var_r3, var_r4;

    if (arg1->unk2 != 0x400) {
        var_r3 = (s32)(arg1->unk2 * arg0->unk8) >> 0xA;
        arg1->unk2 = (s16)((s32)(arg1->unk2 * arg0->unk2) >> 0xA);
    } else {
        var_r3 = arg0->unk8;
    }
    if (arg1->unk4 != 0x400) {
        var_r4 = (s32)(arg1->unk4 * arg0->unkC) >> 0xA;
        arg1->unk4 = (s16)((s32)(arg1->unk4 * arg0->unk4) >> 0xA);
    } else {
        var_r4 = arg0->unkC;
    }
    if (arg1->unk0 != 0) {
        arg1->unk8 = (arg1->unk8 + (((var_r3 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8) - ((var_r4 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8)));
        arg1->unkC = arg1->unkC + (((var_r3 * ((gSineTable[(arg1->unk0)]) >> 6)) >> 8) + ((var_r4 * ((gSineTable[(arg1->unk0) + 256]) >> 6)) >> 8));
    } else {
        arg1->unk8 = (s32)(arg1->unk8 + var_r3);
        arg1->unkC = arg1->unkC + var_r4;
    }
    arg1->unk0 = ((arg0->unk0 + arg1->unk0) & (1024 - 1));
}

void sub_8083798(UNK_8085D14_2 *arg0)
{
    u16 temp_r0;

    if (arg0->unk2 != 0x400) {
        arg0->unk2 = Div(0x100000, arg0->unk2);
        arg0->unk8 = (arg0->unk2 * arg0->unk8) >> 0xA;
    }
    if (arg0->unk4 != 0x400) {
        arg0->unk4 = Div(0x100000, arg0->unk4);
        arg0->unkC = (arg0->unk4 * arg0->unkC) >> 0xA;
    }
    temp_r0 = (0x400 - arg0->unk0) & 0x3FF;
    arg0->unk0 = temp_r0;
    if (temp_r0 != 0) {
        s32 unk8, unkC;
        unk8 = ((-arg0->unk8 * ((gSineTable[(arg0->unk0) + 256]) >> 6)) >> 8) - ((-arg0->unkC * ((gSineTable[(arg0->unk0)]) >> 6)) >> 8);
        unkC = ((-arg0->unk8 * ((gSineTable[(arg0->unk0)]) >> 6)) >> 8) + ((-arg0->unkC * ((gSineTable[(arg0->unk0) + 256]) >> 6)) >> 8);

        arg0->unkC = unkC;
        arg0->unk8 = unk8;
        return;
    }
    arg0->unk8 = (0 - arg0->unk8);
    arg0->unkC = (0 - arg0->unkC);
}

__attribute__((naked)) void sub_8083858() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8083858.inc\""); if (0) { }
}

void sub_80838CC(UNK_8085D14 *arg0, UNK_8085D14 *arg1, UNK_8085D14 *arg2)
{
    arg2->unk0 = (((arg0->unk6 * arg1->unk0) + (arg0->unk0 * arg1->unk6) + (arg0->unk2 * arg1->unk4)) - (arg0->unk4 * arg1->unk2)) >> 0xA;
    arg2->unk2 = (((arg0->unk6 * arg1->unk2) - (arg0->unk0 * arg1->unk4)) + (arg0->unk2 * arg1->unk6) + (arg0->unk4 * arg1->unk0)) >> 0xA;
    arg2->unk4 = ((((arg0->unk6 * arg1->unk4) + (arg0->unk0 * arg1->unk2)) - (arg0->unk2 * arg1->unk0)) + (arg0->unk4 * arg1->unk6)) >> 0xA;
    arg2->unk6 = ((((arg0->unk6 * arg1->unk6) - (arg0->unk0 * arg1->unk0)) - (arg0->unk2 * arg1->unk2)) - (arg0->unk4 * arg1->unk4)) >> 0xA;
}

void sub_808399C(UNK_8085D14 *arg0, UNK_8085D14 *arg1)
{
    s16 r6 = arg0->unk0;
    s16 r5 = arg0->unk2;
    s16 r4 = arg0->unk4;
    arg0->unk0 = (((arg0->unk6 * arg1->unk0) + (r6 * arg1->unk6) + (r5 * arg1->unk4)) - (r4 * arg1->unk2)) >> 10;
    arg0->unk2 = (((arg0->unk6 * arg1->unk2) - (r6 * arg1->unk4)) + (r5 * arg1->unk6) + (r4 * arg1->unk0)) >> 10;
    arg0->unk4 = ((((arg0->unk6 * arg1->unk4) + (r6 * arg1->unk2)) - (r5 * arg1->unk0)) + (r4 * arg1->unk6)) >> 10;
    arg0->unk6 = ((((arg0->unk6 * arg1->unk6) - (r6 * arg1->unk0)) - (r5 * arg1->unk2)) - (r4 * arg1->unk4)) >> 10;
}

__attribute__((naked)) void sub_8083A48() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8083A48.inc\""); if (0) { }
}

__attribute__((naked)) void sub_8083B10() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8083B10.inc\""); if (0) { }
}


__attribute__((naked)) void sub_8083B88(struct UNK_8085F1C_1 *a, struct UNK_8085F1C_1 *b, struct UNK_8085F1C_1 *c) { asm(".include " "\"asm/non_matching/game/math/unused_sub_8083B88.inc\""); if (0)

{
}
}

__attribute__((naked)) void sub_8083E44() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8083E44.inc\""); if (0) { }
}

__attribute__((naked)) void sub_8084090() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8084090.inc\""); if (0) { }
}

__attribute__((naked)) void sub_80842E4() { asm(".include " "\"asm/non_matching/game/math/unused_sub_80842E4.inc\""); if (0) { }
}

__attribute__((naked)) void sub_808442C() { asm(".include " "\"asm/non_matching/game/math/unused_sub_808442C.inc\""); if (0) { }
}

__attribute__((naked)) void sub_808458C() { asm(".include " "\"asm/non_matching/game/math/unused_sub_808458C.inc\""); if (0) { }
}

__attribute__((naked)) void sub_808477C() { asm(".include " "\"asm/non_matching/game/math/unused_sub_808477C.inc\""); if (0) { }
}

void sub_8084904(UNK_8085D14 *arg0, u16 arg1)
{
    u32 *r1;
    s16 temp_r0;
    s16 temp_r1;
    u8 i;

    r1 = (u32 *)arg0;
    for (i = 0; i < sizeof(UNK_8085D14); i += 4) {
        *r1++ = 0;
    };
    ((UNK_8085D14 *)r1)->unk12 = 0x400;
    ((UNK_8085D14 *)r1)->unkA = 0x400;
    ((UNK_8085D14 *)r1)->unk2 = 0x400;
    temp_r1 = (gSineTable[(arg1)]) >> 4;
    temp_r0 = (gSineTable[(arg1) + 256]) >> 4;
    arg0->unkA = temp_r0;
    arg0->unkC = temp_r1;
    arg0->unk10 = -temp_r1;
    arg0->unk12 = temp_r0;
}

void sub_8084964(UNK_8085D14 *arg0, u16 arg1)
{
    u32 *r1;
    s16 temp_r0;
    s16 temp_r1;
    u8 i;

    r1 = (u32 *)arg0;
    for (i = 0; i < sizeof(UNK_8085D14); i += 4) {
        *r1++ = 0;
    };
    ((UNK_8085D14 *)r1)->unk12 = 0x400;
    ((UNK_8085D14 *)r1)->unkA = 0x400;
    ((UNK_8085D14 *)r1)->unk2 = 0x400;
    temp_r1 = (gSineTable[(arg1)]) >> 4;
    temp_r0 = (gSineTable[(arg1) + 256]) >> 4;
    arg0->unk2 = temp_r0;
    arg0->unk6 = -temp_r1;
    arg0->unkE = temp_r1;
    arg0->unk12 = temp_r0;
}

void sub_80849C4(UNK_8085D14 *arg0, u16 arg1)
{
    u32 *r1;
    s16 temp_r0;
    s16 temp_r1;
    u8 i;

    r1 = (u32 *)arg0;
    for (i = 0; i < sizeof(UNK_8085D14); i += 4) {
        *r1++ = 0;
    };
    ((UNK_8085D14 *)r1)->unk12 = 0x400;
    ((UNK_8085D14 *)r1)->unkA = 0x400;
    ((UNK_8085D14 *)r1)->unk2 = 0x400;
    temp_r1 = (gSineTable[(arg1)]) >> 4;
    temp_r0 = (gSineTable[(arg1) + 256]) >> 4;
    arg0->unk2 = temp_r0;
    arg0->unk4 = temp_r1;
    arg0->unk8 = -temp_r1;
    arg0->unkA = temp_r0;
}


__attribute__((naked)) void sub_8084A24() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8084A24.inc\""); if (0) { }
}


void sub_8084B54(struct UNK_8085F1C_1 *matrix, u16 anglez, u16 angley, u16 anglex)
{
    s16 sy = (gSineTable[(angley)]) >> 4;
    s16 cy = (gSineTable[(angley) + 256]) >> 4;
    s16 sz = (gSineTable[(anglez)]) >> 4;
    s16 cz = (gSineTable[(anglez) + 256]) >> 4;
    s16 sx = (gSineTable[(anglex)]) >> 4;
    s16 cx = (gSineTable[(anglex) + 256]) >> 4;

    matrix->unk2[0] = ((cx * cz) >> 10) + ((((sx * sy) >> 10) * sz) >> 10);
    matrix->unk2[1] = ((sx * cy) >> 10);
    matrix->unk2[2] = ((-cx * sz) >> 10) + ((((sx * sy) >> 10) * cz) >> 10);
    matrix->unk2[3] = ((-sx * cz) >> 10) + ((sz * ((sy * cx) >> 10)) >> 10);
    matrix->unk2[4] = ((cx * cy) >> 10);
    matrix->unk2[5] = ((sz * sx) >> 10) + ((cz * ((sy * cx) >> 10)) >> 10);
    matrix->unk2[6] = ((cy * sz) >> 10);
    matrix->unk2[7] = -sy;
    matrix->unk2[8] = ((cy * cz) >> 10);

    matrix->unk1C = 0;
    matrix->unk18 = 0;
    matrix->unk14 = 0;
}


__attribute__((naked)) void sub_8084C70() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8084C70.inc\""); if (0) { }
}


__attribute__((naked)) void sub_8084EAC() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8084EAC.inc\""); if (0) { }
}

__attribute__((naked)) void sub_8084EE0() { asm(".include " "\"asm/non_matching/game/math/unused_sub_8084EE0.inc\""); if (0) { }
}

__attribute__((naked)) void sub_80851E0() { asm(".include " "\"asm/non_matching/game/math/unused_sub_80851E0.inc\""); if (0) { }
}

__attribute__((naked)) void sub_8085314(struct UNK_8085F1C_1 *p1, struct UNK_8085F1C_1 *p2) { asm(".include " "\"asm/non_matching/game/math/unused_sub_8085314.inc\""); if (0)
{

    s32 unk0 = p2->unk0 * 2;
    s32 unk2 = p2->unk2[0] * 2;
    s32 unk4 = p2->unk2[1] * 2;
    s32 temp0 = (p2->unk2[0] * unk2 * 0x40) >> 0x10;
    s32 temp1 = (p2->unk2[1] * unk4 * 0x40) >> 0x10;

    s16 temp2, temp3, temp4, temp5, temp6;

    p1->unk14 = 0;
    p1->unk2[0] = 0x400 - (temp0 + temp1);

    temp2 = (p2->unk2[2] * unk4 * 0x40) >> 0x10;
    temp3 = (p2->unk0 * unk2 * 0x40) >> 0x10;

    p1->unk2[1] = temp3 - temp2;

    temp4 = (p2->unk0 * unk4 * 0x40) >> 0x10;
    temp5 = (p2->unk2[2] * unk2 * 0x40) >> 0x10;

    p1->unk2[2] = temp4 + temp5;
    p1->unk2[3] = temp3 + temp2;

    temp3 = (p2->unk0 * unk0 * 0x40) >> 0x10;
    p1->unk2[4] = 0x400 - (temp1 + temp3);

    temp1 = (p2->unk2[2] * unk0 * 0x40) >> 0x10;
    temp6 = (p2->unk2[0] * unk4 * 0x40) >> 0x10;

    p1->unk2[5] = temp6 - temp1;
    p1->unk2[6] = temp4 - temp5;
    p1->unk2[7] = temp6 + temp1;
    p1->unk2[8] = 0x400 - (temp3 + temp0);
    p1->unk1C = p1->unk14;
    p1->unk18 = p1->unk14;
}
}

struct UNK_8085F1C_1 *sub_80853F8(struct UNK_8085F1C *p1)
{
    if (!(p1->unkC & 1)) {
        if (p1->unk10 == 1) {
            sub_8084B54(&p1->unk34, p1->unk54, p1->unk56, p1->unk58);
            p1->unk34.unk2[0] = (p1->unk5C * p1->unk34.unk2[0]) >> 10;
            p1->unk34.unk2[1] = (p1->unk5C * p1->unk34.unk2[1]) >> 10;
            p1->unk34.unk2[2] = (p1->unk5C * p1->unk34.unk2[2]) >> 10;

            p1->unk34.unk2[3] = (p1->unk5E * p1->unk34.unk2[3]) >> 10;
            p1->unk34.unk2[4] = (p1->unk5E * p1->unk34.unk2[4]) >> 10;
            p1->unk34.unk2[5] = (p1->unk5E * p1->unk34.unk2[5]) >> 10;

            p1->unk34.unk2[6] = (p1->unk60 * p1->unk34.unk2[6]) >> 10;
            p1->unk34.unk2[7] = (p1->unk60 * p1->unk34.unk2[7]) >> 10;
            p1->unk34.unk2[8] = (p1->unk60 * p1->unk34.unk2[8]) >> 10;

            p1->unk34.unk14 = p1->unk64;
            p1->unk34.unk18 = p1->unk68;
            p1->unk34.unk1C = p1->unk6C;
        }
        p1->unkC |= 1;
    }

    return &p1->unk34;
}

u16 Random(void)
{
    u32 new;



    u32 *pPrev = &gRngPrevValue;
    u32 *pCurrent = &gRngValue;

    u32 prev = *pPrev;
    gRngPrevValue = *pCurrent;



    new = prev + 0x37119371;;
    new += *pCurrent;



    gRngValue = new;


    return ((u16 *)&gRngValue)[1];
}

void SeedRng(u32 a, u32 b)
{
    gRngPrevValue = a;
    gRngValue = b;
}

u32 AbsMax(s32 a, s32 b)
{
    if (a < 0) {
        a = -a;
    }

    if (b < 0) {
        b = -b;
    }

    if (b < a) {
        return a;
    }
    return b;
}




u32 sub_8085530(s32 a, s32 b)
{
    if (a < 0) {
        a = -a;
    }

    if (b < 0) {
        b = -b;
    }

    if (a > b) {
        return (((u64)a * ((s32)((0.9609375)*256))) + ((u64)b * ((s32)((0.3984375)*256)))) >> 8;
    } else {
        return (((u64)b * ((s32)((0.9609375)*256))) + ((u64)a * ((s32)((0.3984375)*256)))) >> 8;
    }
}

s16 sub_808558C(u16 angleA, u16 angleB, u8 numDecimalBits)
{
    u32 c1 = (1 << numDecimalBits);
    u16 c2 = c1 - 1;

    angleB -= angleA;
    angleB &= c2;

    if (angleB <= (c1 / 2)) {
        return angleB;
    } else {
        return (angleB - c1);
    }
}

u32 sub_80855C0(s32 a, s32 b, s32 c, u8 d)
{
    s64 e = (s64)c * (a - b);

    return a - (e >> d);
}

__attribute__((unused)) u16 sub_80855F8(u16 r7, u16 r2, u8 r6, s16 r5, u8 r4)
{
    u16 r2_2 = r2;
    u32 r3 = (1 << r6);
    s32 r1 = r3 - 1;
    u32 r0 = r2_2 - r7;
    u16 val;
    s32 r1_2;
    r2_2 = (r0 & r1);
    if (r2_2 > r3 >> 1) {
        r1_2 = (s16)(r2_2 - r3);
    } else {
        r1_2 = (s16)r2_2;
    }
    val = -((r5 * -r1_2) >> r4);
    return (r7 + val) & ((1 << r6) - 1);
}

s32 sub_8085654(s32 a, s32 b, s32 c, u8 d, u8 e)
{
    do {
        a -= (((s64)c * (s64)(a - b))) >> d;
        e -= 1;
    } while (e != 0xFF);

    return a;
}

s32 sub_8085698(s32 a, s32 b, s32 c, u8 d, u8 e)
{
    do {
        b = a - ((((s64)c * (s64)(a - b))) >> d);
        e -= 1;
    } while (e != 0xFF);

    return b;
}

__attribute__((unused)) s32 sub_80856DC(s32 a, s32 b, s32 c) { return (a * 7 + b * 6 - c) / 12; }

__attribute__((unused)) s32 sub_80856F8(s32 a, s32 b, s32 c) { return ((b * 6 - a) + c * 7) / 12; }

__attribute__((unused)) s32 sub_8085714(s32 a, s32 b, s32 c) { return ((a + b * 8) - c) >> 3; }

__attribute__((unused)) s32 sub_8085720(s32 a, s32 b, s32 c) { return ((b * 8 - a) + c) >> 3; }

__attribute__((unused)) s32 sub_808572C(s32 a, s32 b, s32 c, s32 d, u32 e, u8 f) { return ((s64)(b - a) * (s64)((1 << f) - c)) >> f; }

__attribute__((unused)) s32 sub_8085758(s32 a, s32 b) { return b - a; }

__attribute__((unused)) s32 sub_808575C(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    a = c - a;
    a += a >> 1;
    a -= (b >> 1);
    return ((s64)(a) * ((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_8085798(s32 a, s32 b, s32 c) { return ((c - a) + ((c - a) >> 1)) - (b >> 1); }


__attribute__((unused)) s32 sub_80857A4(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    a = c - a;
    a += a >> 1;
    a -= (b >> 1);
    return ((s64)(a) * ((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_80857E0(s32 a, s32 b, s32 c) { return ((c - a) + ((c - a) >> 1)) - (b >> 1); }

__attribute__((unused)) s32 sub_80857EC(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    s32 h = ((s64)(b - a) * (s64)(f + (1 << g))) >> g;
    s64 i = ((s64)(c - b) * (s64)((1 << g) - f)) >> g;
    s64 h64 = h;
    s64 j = ((s32)(i - h) * (s64)((1 << (g - 1)) + (e >> 1))) >> g;
    return ((s64)(j + h64) * (s64)((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_80858A4(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, u8 g)
{
    s32 h = ((s64)(b - a) * (s64)(f + (1 << g))) >> g;
    s64 i = ((s64)(c - b) * (s64)((1 << g) - f)) >> g;
    s64 h64 = h;
    s64 j = ((s32)(i - h) * (s64)((1 << (g - 1)) - (e >> 1))) >> g;
    return ((s64)(j + h64) * (s64)((1 << g) - d)) >> g;
}

__attribute__((unused)) s32 sub_808595C(s32 a, s32 b, s32 c)
{
    s32 e = (b - a);
    s32 f = (c - b);
    f -= e;
    f >>= 1;
    return e + f;
}

s16 sub_8085968(s16 *unk28, u16 param1)
{
    s32 r7, r3, r5;
    u32 r0;
    r7 = (4095 - param1);

    r7 = (r7 * (((r7) * (r7)) >> 12)) >> 12;
    r0 = (r7 * unk28[0] * 171) >> 10;
    unk28++;

    r3 = ((param1) * (param1)) >> 12;
    r7 = (r3 * param1) >> 12;
    r0 += (unk28[0] * (((((r3 * param1) >> 13) - r3) + gUnknown_080E0290[0])));
    unk28++;

    r0 += (unk28[0] * (((((param1 + r3)) - r7) >> 1) + gUnknown_080E0290[1]));
    r0 += ((r7 * unk28[1] * 171) >> 10);

    return r0 / 4096;
}

u16 sub_80859F4(s16 *unk28, u16 unk5C)
{
    s32 r7, r3, r5;
    u32 r0;

    s16 *r4 = &unk28[unk5C / 4096];
    u16 r1 = unk5C % 4096;
    r7 = (4095 - r1);

    r7 = (r7 * (((r7) * (r7)) >> 12)) >> 12;
    r0 = (r7 * r4[0] * 171) >> 10;

    r3 = ((r1) * (r1)) >> 12;
    r7 = (r3 * r1) >> 12;

    r0 += (r4[1] * (((((r3 * r1) >> 13) - r3) + gUnknown_080E0290[0])));

    r4 += 2;

    r0 += (r4[0] * (((((r1 + r3)) - r7) >> 1) + gUnknown_080E0290[1]));
    r0 += ((r7 * r4[1] * 171) >> 10);

    r0 *= 1024;
    r0 /= 1024;
    return r0 / 4096;
}
# 645 "src/game/math.c"
__attribute__((unused)) void sub_8085A88(UNK_8085D14 *p1)
{
    p1->unk0 = 0;
    p1->unk2 = 0x400;
    p1->unk4 = 0x400;

    *(u32 *)&p1->unk8 = 0;
    *(u32 *)&p1->unkC = 0;
}

__attribute__((unused)) void sub_8085A9C(UNK_8085D14 *p1, u8 p2)
{
    u16 dist = Sqrt(((p1->unk0) * (p1->unk0)) + ((p1->unk2) * (p1->unk2)) + ((p1->unk4) * (p1->unk4)));
    u32 thing = (p2 << 1);
    s32 div = (1 << thing) / dist;
    p1->unk0 = (div * p1->unk0) >> p2;
    p1->unk2 = (div * p1->unk2) >> p2;
    p1->unk4 = (div * p1->unk4) >> p2;
}

__attribute__((unused)) s32 sub_8085B00(UNK_8085D14 *p1, UNK_8085D14 *p2, u8 p4)
{
    u32 something = p4;
    return ((p1->unk0 * p2->unk0) + (p1->unk2 * p2->unk2) + (p1->unk4 * p2->unk4)) >> p4;
}

__attribute__((unused)) void sub_8085B34(UNK_8085D14 *p1, UNK_8085D14 *p2, UNK_8085D14 *p3, u8 p4)
{
    u32 something = p4;
    p3->unk0 = ((p1->unk2 * p2->unk4) - (p1->unk4 * p2->unk2)) >> something;
    p3->unk2 = ((p1->unk4 * p2->unk0) - (p1->unk0 * p2->unk4)) >> something;
    p3->unk4 = ((p1->unk0 * p2->unk2) - (p1->unk2 * p2->unk0)) >> something;
}

__attribute__((unused)) void sub_8085B90(UNK_8085D14 *p1)
{
    p1->unk4 = 0;
    p1->unk2 = 0;
    p1->unk0 = 0;

    p1->unk6 = 0x400;
}

__attribute__((unused)) void sub_8085BA0(UNK_8085D14 *p1)
{
    p1->unk0 = -p1->unk0;
    p1->unk2 = -p1->unk2;
    p1->unk4 = -p1->unk4;
}

__attribute__((unused)) void sub_8085BB4(UNK_8085D14 *p1, u16 rad)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = sin;
    p1->unk2 = 0;
    p1->unk4 = 0;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085BEC(UNK_8085D14 *p1, u16 rad)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = 0;
    p1->unk2 = sin;
    p1->unk4 = 0;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085C24(UNK_8085D14 *p1, u16 rad)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = 0;
    p1->unk2 = 0;
    p1->unk4 = sin;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085C5C(UNK_8085D14 *p1, u16 rad, UNK_8085D14 *p3)
{
    s32 sin;
    rad = rad >> 1;
    sin = (gSineTable[(rad)]) >> 4;
    p1->unk0 = (sin * p3->unk0) >> 10;
    p1->unk2 = (sin * p3->unk2) >> 10;
    p1->unk4 = (sin * p3->unk4) >> 10;
    p1->unk6 = (gSineTable[(rad) + 256]) >> 4;
}

__attribute__((unused)) void sub_8085CA8(UNK_8085D14 *p1)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {

        *((u32 *)curr)++ = 0;






    }
}

__attribute__((unused)) void sub_8085CC0(UNK_8085D14 *p1)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {

        *((u32 *)curr)++ = 0;






    }
    curr->unk12 = 0x400;
    curr->unkA = 0x400;
    curr->unk2 = 0x400;
}

__attribute__((unused)) void sub_8085CE4(UNK_8085D14 *p1, u32 p2, u32 p3, u32 p4)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {

        *((u32 *)curr)++ = 0;






    }
    curr->unk12 = 0x400;
    curr->unkA = 0x400;
    curr->unk2 = 0x400;

    p1->unk14 = p2;
    p1->unk18 = p3;
    p1->unk1C = p4;
}

__attribute__((unused)) void sub_8085D14(UNK_8085D14 *p1, u32 p2, u32 p3, u32 p4)
{
    u8 i;
    UNK_8085D14 *curr = p1;

    for (i = 0; i < 32; i += 4) {

        *((u32 *)curr)++ = 0;






    }
    curr->unk12 = 0x400;
    curr->unkA = 0x400;
    curr->unk2 = 0x400;

    p1->unk2 = p2;
    p1->unkA = p3;
    p1->unk12 = p4;
}

__attribute__((unused)) void sub_8085D44(UNK_8085DEC *thing)
{
    thing->unk0 = ((void *)0);
    thing->start = ((void *)0);
    thing->next = ((void *)0);
    thing->unkC = ((void *)0);
}

__attribute__((unused)) UNK_8085DEC *sub_8085D50(UNK_8085DEC *thing)
{
    while (thing->unk0 != ((void *)0)) {
        thing = thing->unk0;
    }

    return thing;
}

__attribute__((unused)) void sub_8085D64(UNK_8085DEC *thing)
{
    if (thing->unk0 != ((void *)0)) {
        sub_8085D98(thing->unk0, thing);
    }
}

__attribute__((unused)) void sub_8085D78(UNK_8085DEC *thing, UNK_8085DEC *target)
{
    if (target->unk0 != ((void *)0)) {
        sub_8085D98(target->unk0, target);
    }
    target->unk0 = thing;
    target->next = thing->start;
    thing->start = target;
}

static bool8 sub_8085D98(UNK_8085DEC *thing, UNK_8085DEC *target)
{
    UNK_8085DEC *curr = thing->start;
    UNK_8085DEC *prev = ((void *)0);

    while (curr != ((void *)0)) {
        if (curr == target) {
            if (prev == ((void *)0)) {
                thing->start = curr->next;
            } else {
                prev->next = curr->next;
            }
            target->unk0 = ((void *)0);
            target->next = ((void *)0);

            return 1;
        }
        prev = curr;
        curr = curr->next;
    }

    return 0;
}

__attribute__((unused)) u16 sub_8085DD0(UNK_8085DEC *thing)
{
    u16 num = 0;
    thing = thing->start;
    while (thing != ((void *)0)) {
        num++;
        thing = thing->next;
    }

    return num;
}

__attribute__((unused)) UNK_8085DEC *sub_8085DEC(UNK_8085DEC *thing, u16 num)
{
    thing = thing->start;
    while (thing != ((void *)0) && num != 0) {
        num--;
        thing = thing->next;
    }

    return thing;
}

__attribute__((unused)) void sub_8085E10(struct UNK_8085F1C *p1, struct UNK_8085F1C *p2) { memcpy(p2, &p1->unk10, 0x10); }

__attribute__((unused)) void sub_8085E24(struct UNK_8085F1C *p1, struct UNK_8085F1C *p2) { memcpy(&p1->unk10, p2, 0x10); }

__attribute__((unused)) void sub_8085E38(struct UNK_8085F1C *p1, struct UNK_8085F1C *p2)
{
    memcpy(p2, &p1->unk10, 0x10);

    while (p1 = p1->unk0, p1 != ((void *)0)) {

        sub_80835E0((UNK_8085D14_2 *)p2, (UNK_8085D14_2 *)&p1->unk10);
    }
}

__attribute__((unused)) void sub_8085E64(struct UNK_8085F1C *p1)
{
    u8 i;
    struct UNK_8085F1C_1 *curr;
    p1->unk10 = 0;


    curr = &p1->unk34;
    for (i = 0; i < 0x20; i += 4) {

        *((u32 *)curr)++ = 0;






    }

    curr->unk2[8] = 0x400;
    curr->unk2[4] = 0x400;
    curr->unk2[0] = 0x400;
    p1->unkC |= 1;
}

__attribute__((unused)) void sub_8085E94(struct UNK_8085F1C *p1)
{
    p1->unk10 = 1;
    p1->unk58 = 0;
    p1->unk56 = 0;
    p1->unk54 = 0;
    p1->unk6C = 0;
    p1->unk68 = 0;
    p1->unk64 = 0;
    p1->unk60 = 0x400;
    p1->unk5E = 0x400;
    p1->unk5C = 0x400;
}

__attribute__((unused)) struct UNK_8085F1C_1 *sub_8085EC4(struct UNK_8085F1C *p1)
{
    struct UNK_8085F1C_1 *sub = ((void *)0);

    if (p1->unk0 != ((void *)0)) {
        sub = sub_8085EC4(p1);
    }

    if ((p1->unkC & 3) == 3) {
        if (sub == ((void *)0)) {
            return ((void *)0);
        }
    } else {
        if (!(p1->unkC & 1)) {
            sub_80853F8(p1);

            p1->unkC |= 0x1;
            p1->unkC &= ~0x2;
        }
    }
    sub_8083B88(&p1->unk34, sub, &p1->unk14);
    return &p1->unk14;
}

__attribute__((unused)) struct UNK_8085F1C_1 *sub_8085F1C(struct UNK_8085F1C *p1)
{
    struct UNK_8085F1C_1 *sub = ((void *)0);

    if (p1->unk0 != ((void *)0)) {
        sub = sub_8085EC4(p1);
    }

    if ((p1->unkC & 3) == 3) {
        if (sub != ((void *)0)) {
            sub_8083B88(&p1->unk34, sub, &p1->unk14);
        }
    } else {
        if (!(p1->unkC & 1)) {
            sub_80853F8(p1);

            p1->unkC |= 0x1;
            p1->unkC &= ~0x2;
        }

        sub_8083B88(&p1->unk34, sub, &p1->unk14);
    }

    return &p1->unk14;
}

__attribute__((unused)) void sub_8085F84(void)
{

}
