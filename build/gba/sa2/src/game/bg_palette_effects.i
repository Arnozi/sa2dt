# 0 "src/game/bg_palette_effects.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/bg_palette_effects.c"
# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1




# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 6 "include/gba/defines.h" 2
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
# 2 "src/game/bg_palette_effects.c" 2
# 1 "include/game/bg_palette_effects.h" 1




# 1 "include/sprite.h" 1



# 1 "include/global.h" 1
# 5 "include/sprite.h" 2
# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 6 "include/sprite.h" 2

typedef u16 AnimId;

struct GraphicsData {
               const void *src;
               void *dest;
               u16 size;
               AnimId anim;
};
# 66 "include/sprite.h"
typedef struct {
               struct GraphicsData graphics;
# 81 "include/sprite.h"
               u16 *layoutVram;



               const u16 *layout;




               u16 xTiles;
               u16 yTiles;

               u16 unk18;
               u16 unk1A;
               u16 tilemapId;
               u16 unk1E;

               u16 unk20;
               u16 unk22;
               u16 unk24;




               u16 targetTilesX;
               u16 targetTilesY;

               u8 paletteOffset;
               u8 animFrameCounter;
               u8 animDelayCounter;

               u16 flags;


               u16 scrollX;
               u16 scrollY;
               u16 prevScrollX;
               u16 prevScrollY;


               const MetatileIndexType *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
} Background;

typedef struct {






               u8 flip;



               u8 oamIndex;




               u16 numSubframes;


               u16 width;

               u16 height;

               s16 offsetX;
               s16 offsetY;
} SpriteOffset;





typedef struct {

               s32 index;


               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Hitbox;





typedef struct {
               struct GraphicsData graphics;
               const SpriteOffset *dimensions;


               u32 frameFlags;
# 195 "include/sprite.h"
               u16 animCursor;

               s16 x;
               s16 y;

               u16 oamFlags;

               s16 qAnimDelay;
               u16 prevAnim;
               u8 variant;
               u8 prevVariant;


               u8 animSpeed;

               u8 oamBaseIndex;
               u8 numSubFrames;
               u8 palId;
               Hitbox hitboxes[1];
} Sprite ;


typedef struct {
    Sprite s;
    Hitbox hb1;
} Sprite2;


typedef struct {
    Sprite s;
    Hitbox hb1;
    Hitbox hb2;
} Sprite3;

typedef struct {
               u16 rotation;
               s16 qScaleX;
               s16 qScaleY;
               s16 x;
               s16 y;
} SpriteTransform;

typedef struct {
               s16 unk0[4];
               s16 qDirX;
               s16 qDirY;

               s16 unkC[2];

               s32 posX;
               s32 posY;

               s16 unk18[2][2];
               u16 affineIndex;
} UnkSpriteStruct;

typedef struct {
               u32 numTiles;
               AnimId anim;
               u8 variant;
} TileInfo;


typedef struct {
               void *tiles;
               AnimId anim;
               u8 variant;
} TileInfoPtr;

typedef struct __attribute__((packed)) TileInfo16 { u16 numTiles; AnimId anim; u16 variant; } TileInfo16;



  ;

extern const u8 gOamShapesSizes[12][2];

typedef enum {
    ACMD_RESULT__ANIM_CHANGED = -1,
    ACMD_RESULT__ENDED = 0,
    ACMD_RESULT__RUNNING = +1,
} AnimCmdResult;

AnimCmdResult UpdateSpriteAnimation(Sprite *);

void DisplaySprite(Sprite *);
void DrawBackground(Background *);
bool32 sub_8002B20(void);
bool32 sub_80039E4(void);
bool32 sub_8004010(void);
void ProcessOamBuffers(void);
OamData *OamMalloc(u8 order);

void TransformSprite(Sprite *, SpriteTransform *);
void UnusedTransform(Sprite *, SpriteTransform *);
void sub_8004E14(Sprite *, SpriteTransform *);

void sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine);
void sub_8006228(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);
void sub_80064A8(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);

s32 UpdateSpriteAnimation_BG(Sprite *);
void DisplaySprite_BG(Sprite *);
void sub_80047A0(u16, s16, s16, u16);

s16 sub_8004418(s16 x, s16 y);
void numToASCII(u8 digits[5], u16 number);
# 6 "include/game/bg_palette_effects.h" 2

typedef struct {
    u8 unk0;
    u8 bgPalId;
    u8 cursor;

    const u8 *pattern;

    const u16 *palette;

    u8 unkC;
    u8 unkD;
    u8 unkE;

    s8 rShift;
    s8 gShift;
    s8 bShift;
    s8 unk12;

    u8 unk13;

    u16 palBuffer[16];

    s16 offset;
    u8 unk36;
} BgPaletteEffectState;

typedef struct {
    BgPaletteEffectState *state;
    Background *background;
} BackgroundPaletteEffects;

extern BackgroundPaletteEffects gBgPaletteEffects;

void BgPaletteEffectGradient(int_vcount vcount);
# 3 "src/game/bg_palette_effects.c" 2

struct UNK_808DB78 {
    u8 unk0;
    u8 shiftFactor;
    u16 unk2;
    u16 unk4;
    s8 rShift;
    s8 gShift;
    s8 bShift;
    s8 unk12;

    u8 unk13;

    u16 palBuffer[0x200 / sizeof(u16)];
};

BackgroundPaletteEffects gBgPaletteEffects = {};

__attribute__((unused)) void sub_808D8A0(struct UNK_808DB78 *unk0)
{
    u16 i;
    u16 *colors = unk0->palBuffer;
    u16 palette[(sizeof(unk0->palBuffer) / sizeof((unk0->palBuffer)[0]))];

    u16 newColor;
    s16 component;
    u16 color;

    for (i = 0; i < (sizeof(palette) / sizeof((palette)[0])); i++) {
        if (i & 1)
            color = colors[i];
        else
            color = colors[i];
        component = (color & 31) + unk0->rShift * unk0->shiftFactor;
        if (component > 31) {
            component = 31;
        }

        if (component < 0) {
            component = 0;
        }
        newColor = component;

        component = ((color & 31 << 5) >> 5) + (unk0->gShift * unk0->shiftFactor);
        if (component > 0x1F) {
            component = 0x1F;
        }

        if (component < 0) {
            component = 0;
        }

        newColor |= component << 5;

        component = ((color & 31 << 10) >> 10) + (unk0->bShift * unk0->shiftFactor);
        if (component > 0x1F) {
            component = 0x1F;
        }

        if (component < 0) {
            component = 0;
        }

        newColor |= component << 10;
        palette[i] = newColor;
    }

    CpuFastSet(palette, (void *)((u16 *)(0x5000000)), ((sizeof(palette))/(32/8) & 0x1FFFFF));
    unk0->unk4 += unk0->unk2;
    unk0->shiftFactor = unk0->unk4 >> 8;
}

__attribute__((unused)) void sub_808D988(int_vcount vcount)
{
    u8 i;

    BgPaletteEffectState *unk0 = gBgPaletteEffects.state;
    u16 palette[(sizeof(unk0->palBuffer) / sizeof((unk0->palBuffer)[0]))];

    if (vcount == unk0->unk13 + unk0->offset) {
        if (unk0->unk0 == 0) {
            CpuFastSet((void *)((u16 *)(0x5000000)), unk0->palBuffer, ((sizeof(u16) * 2)/(32/8) & 0x1FFFFF));
            unk0->unk0 = 1;
        }
        if (unk0->cursor == 0) {
            CpuFastSet(unk0->palBuffer, (u16 *)((u16 *)(0x5000000)) + (unk0->bgPalId * 8), ((sizeof(u16) * 2)/(32/8) & 0x1FFFFF));
        } else {
            for (i = 0; i < (sizeof(unk0->palBuffer) / sizeof((unk0->palBuffer)[0])); i++) {
                u16 color = 0;
                s16 component = (unk0->palBuffer[i] & 31) + unk0->rShift;
                if (component > 31) {
                    component = 31;
                }
                color |= component;

                component = ((unk0->palBuffer[i] & (31 << 5)) >> 5) + unk0->gShift;
                if (component > 31) {
                    component = 31;
                }
                color |= component << 5;

                component = ((unk0->palBuffer[i] & 31 << 10) >> 10) + unk0->bShift;
                if (component > 31) {
                    component = 31;
                }
                color |= component << 10;

                palette[i] = color;
            }
            CpuFastSet(palette, (u16 *)((u16 *)(0x5000000)) + unk0->bgPalId * 8, ((sizeof(u16) * 2)/(32/8) & 0x1FFFFF));
        }

        unk0->rShift += unk0->unkC;
        unk0->gShift += unk0->unkD;
        unk0->bShift += unk0->unkE;
        unk0->unk13 += unk0->unk12;

        unk0->cursor++;

        if (unk0->pattern[unk0->cursor] == 0xFF) {
            unk0->cursor = 0;
        }
    }

    if (vcount == (160 - 1)) {
        unk0->cursor = 0;
        unk0->rShift = 0;
        unk0->gShift = 0;
        unk0->bShift = 0;
        unk0->unk13 = 0;
    }
}

__attribute__((unused)) void sub_808DAC8(u8 a, const u8 *b, const void *c, BgPaletteEffectState *d)
{
    d->unk0 = 0;
    d->cursor = 0;
    d->unkC = 0;
    d->unkD = 0;
    d->unkE = 0;

    d->offset = 0;
    d->bgPalId = a;
    d->pattern = b;
    d->palette = c;
    gBgPaletteEffects.state = d;
}

__attribute__((unused)) void sub_808DAEC(u8 a, u8 b, u8 c, u8 d, u32 e, BgPaletteEffectState *f)
{
    f->unk0 = 1;
    f->cursor = 0;
    f->unkC = b;
    f->unkD = c;
    f->unkE = d;

    f->rShift = 0;
    f->gShift = 0;
    f->bShift = 0;
    f->unk13 = 0;

    f->offset = 0;
    f->bgPalId = a;
    f->pattern = ((void *)0);
    f->palette = ((void *)0);

    CpuFastSet((u16 *)((u16 *)(0x5000000)), f->palBuffer, ((sizeof(u16) * 2)/(32/8) & 0x1FFFFF));
    gBgPaletteEffects.state = f;
}

void BgPaletteEffectGradient(int_vcount vcount)
{
    BgPaletteEffectState *state = gBgPaletteEffects.state;

    if (vcount >= (160 - 1)) {
        state->cursor = 0;
        return;
    }

    if (vcount < state->pattern[state->cursor] + state->offset) {
        return;
    }

    CpuFastSet(&state->palette[state->cursor * 16], (u16 *)((u16 *)(0x5000000)) + (state->bgPalId * 16), ((sizeof(u16) * 2)/(32/8) & 0x1FFFFF));

    state->cursor++;
}

__attribute__((unused)) void sub_808DB78(u32 a, u16 b, u8 c, u8 d, u8 e, struct UNK_808DB78 *f)
{
    f->unk0 = 0;
    f->shiftFactor = 0;
    f->unk2 = b;
    f->unk4 = 0;
    f->rShift = c;
    f->gShift = d;
    f->bShift = e;
    CpuFastSet((void *)((u16 *)(0x5000000)), &f->palBuffer, ((0x200)/(32/8) & 0x1FFFFF));
}
