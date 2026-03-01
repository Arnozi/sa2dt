# 0 "build/collect_rings/src/sa2/core.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "build/collect_rings/src/sa2/core.c"
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
# 2 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/core.h" 1




# 1 "../../../tools/agbcc/include/string.h" 1
# 14 "../../../tools/agbcc/include/string.h"
# 1 "../../../tools/agbcc/include/_ansi.h" 1
# 15 "../../../tools/agbcc/include/_ansi.h"
# 1 "../../../tools/agbcc/include/sys/config.h" 1
# 103 "../../../tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "../../../tools/agbcc/include/_ansi.h" 2
# 15 "../../../tools/agbcc/include/string.h" 2
# 23 "../../../tools/agbcc/include/string.h"
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
# 6 "../../../include/core.h" 2


# 1 "../../../include/global.h" 1
# 9 "../../../include/core.h" 2
# 1 "../../../include/sprite.h" 1




# 1 "../../../include/malloc_vram.h" 1
# 24 "../../../include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 6 "../../../include/sprite.h" 2

typedef u16 AnimId;

struct GraphicsData {
               const void *src;
               void *dest;
               u16 size;
               AnimId anim;
};
# 66 "../../../include/sprite.h"
typedef struct {
               struct GraphicsData graphics;
# 81 "../../../include/sprite.h"
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
# 195 "../../../include/sprite.h"
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
# 10 "../../../include/core.h" 2
# 1 "../../../include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);




typedef u16 TaskPtr;


typedef u32 TaskPtr32;




typedef u16 IwramData;
# 55 "../../../include/task.h"
typedef struct Task {
               TaskPtr parent;
               TaskPtr prev;
               TaskPtr next;
               IwramData data;



               TaskMain main;
               TaskDestructor dtor;
               u16 priority;
               u16 flags;



               u8 unk14;
               u8 unk15;
               u16 unk16;
               u16 unk18;





} Task;


typedef u16 IwramNodePtr;
typedef u32 IwramNodePtr32;
# 93 "../../../include/task.h"
struct IwramNode {
    IwramNodePtr next;
    s16 state;

    u8 __attribute__((aligned(sizeof(void *)))) space[0];
};
# 113 "../../../include/task.h"
extern struct Task gTasks[128];
extern struct Task gEmptyTask;
extern struct Task *gTaskPtrs[128];
extern s32 gNumTasks;



extern struct Task *gNextTask;
extern struct Task *gCurTask;
extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

u32 TasksInit(void);
void TasksExec(void);
# 141 "../../../include/task.h"
struct Task *TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor);


void TaskDestroy(struct Task *);
void *IwramMalloc(u16);
void IwramFree(void *p);
void TasksDestroyInPriorityRange(u16, u16);
# 11 "../../../include/core.h" 2
# 1 "../../../include/flags.h" 1
# 23 "../../../include/flags.h"
extern u32 gFlags;
# 12 "../../../include/core.h" 2
# 1 "../../../include/tilemap.h" 1
# 10 "../../../include/tilemap.h"
typedef struct {
    u16 index : 10;
    u16 xFlip : 1;
    u16 yFlip : 1;
    u16 pal : 4;
} Tile;

typedef struct {
               u16 xTiles;
               u16 yTiles;
               u16 animTileSize;
               u8 animFrameCount;
               u8 animDelay;
               const u8 *tiles;
               u32 tilesSize;
               const u16 *palette;
               u16 palOffset;
               u16 palLength;



               const u16 *map;
} Tilemap;

struct MapHeader {
               Tilemap tileset;
               const u16 *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
};
# 13 "../../../include/core.h" 2
# 1 "../../../include/input_recorder.h" 1
# 12 "../../../include/input_recorder.h"
struct InputRecorder {
               s32 playbackHead;
               s32 recordHead;
               u8 mode;
};

void InputRecorderResetRecordHead(void);
void InputRecorderResetPlaybackHead(void);
void InputRecorderLoadTape(void);
u16 InputRecorderRead(void);
void InputRecorderWrite(u16);
# 14 "../../../include/core.h" 2
# 1 "../../../include/animation_commands.h" 1
# 9 "../../../include/animation_commands.h"
typedef AnimCmdResult (*AnimationCommandFunc)(void *cursor, Sprite *sprite);

typedef struct {
               s32 cmdId;



               s32 tileIndex;

               u32 numTilesToCopy;
} ACmd_GetTiles;

typedef struct {
               s32 cmdId;

               s32 palId;
               u16 numColors;
               u16 insertOffset;
} ACmd_GetPalette;

typedef struct {
               s32 cmdId;

               s32 offset;
} ACmd_JumpBack;

typedef struct {
               s32 cmdId;
} ACmd_4;

typedef struct {
               s32 cmdId;

               u16 songId;
} ACmd_PlaySoundEffect;


typedef struct {
               s32 cmdId;

               Hitbox hitbox;
} ACmd_Hitbox;

typedef struct {
               s32 cmdId;

               u16 x;
               u16 y;
} ACmd_TranslateSprite;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
} ACmd_8;

typedef struct {
               s32 cmdId;

               AnimId animId;
               u16 variant;
} ACmd_SetIdAndVariant;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
               s32 unkC;
} ACmd_10;

typedef struct {
               s32 cmdId;

               s32 priority;
} ACmd_SetSpritePriority;

typedef struct {
               s32 cmdId;

               s32 orderIndex;
} ACmd_SetOamOrder;

typedef struct {

    s32 delay;


    s32 index;
} ACmd_ShowFrame;

typedef union {
    s32 id;

    ACmd_GetTiles tiles;
    ACmd_GetPalette pal;
    ACmd_JumpBack jump;
    ACmd_4 end;
    ACmd_PlaySoundEffect sfx;
    ACmd_Hitbox _6;
    ACmd_TranslateSprite translate;
    ACmd_8 _8;
    ACmd_SetIdAndVariant setAnimId;
    ACmd_10 _10;
    ACmd_SetSpritePriority _11;
    ACmd_SetOamOrder setOamOrder;

    ACmd_ShowFrame show;
} ACmd;

u32 Base10DigitsToHexNibbles(u16 num);
# 15 "../../../include/core.h" 2

struct MultiSioData_0_0 {

    u16 unk0;

    u8 unk2;

    u8 unk3;
    u32 unk4;
    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_1 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};
struct MultiSioData_0_2 {

    u8 unk0;
    u8 filler1;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_3 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u32 unk8;
    u16 unkC;



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_4 {

    u16 unk0;

    s16 x;
    s16 y;
    u16 unk6;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;



    u8 unkE;
    u8 numRings;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

union MultiSioData {
    struct MultiSioData_0_0 pat0;
    struct MultiSioData_0_1 pat1;
    struct MultiSioData_0_2 pat2;
    struct MultiSioData_0_3 pat3;
    struct MultiSioData_0_4 pat4;
};







typedef u32 collPxDim_t;



typedef struct {
               const s8 *height_map;
               const u8 *tile_rotation;
               const u16 *metatiles;
               const MetatileIndexType *map[2];
               const u16 *flags;
               u16 levelX, levelY;
               collPxDim_t pxWidth, pxHeight;


} Collision;

struct Unk_03003674_1_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

struct Unk_03003674_1_Full {
    struct Unk_03003674_1_Sub sub;
    u32 unkC;
};

union Unk_03003674_1 {
    const struct Unk_03003674_1_Sub *sub;
    const struct Unk_03003674_1_Full *full;
};

struct Unk_03003674 {
    const union Unk_03003674_0 *const *unk0;
    const union Unk_03003674_1 *unk4;
    const u16 *const *unk8;
    const void *unkC;
    const void *unk10;
    const void *unk14;
    const s32 *unk18;
};

struct SpriteTables {
               const ACmd **const *animations;
               const SpriteOffset *const *dimensions;
               const u16 **const oamData;
               const u16 *const palettes;
               const u8 *const tiles_4bpp;
               const u8 *const tiles_8bpp;
};
# 197 "../../../include/core.h"
extern u32 gFlags;
extern u32 gFlagsPreVBlank;

extern u32 gFrameCount;
# 215 "../../../include/core.h"
extern IntrFunc gIntrTable[16];
extern IntrFunc const gIntrTableTemplate[14];
extern u32 gIntrMainBuf[0x80];

extern struct Task *gCurTask;
extern struct Task gTasks[128];
extern struct Task *gTaskPtrs[128];
extern struct Task *gNextTask;
extern struct Task gEmptyTask;
extern s32 gNumTasks;

extern u16 gInput;
extern u16 gPrevInput;
extern u16 gPhysicalInput;
extern u16 gReleasedKeys;
extern u16 gRepeatedKeys;
extern u16 gPressedKeys;
extern u8 gKeysFirstRepeatIntervals[10];
extern u8 gRepeatedKeysTestCounter[10];
extern u8 gKeysContinuedRepeatIntervals[10];

extern const u8 *gInputPlaybackData;
extern struct InputRecorder gInputRecorder;
extern u16 *gInputRecorderTapeBuffer;

extern union MultiSioData gMultiSioSend;
extern union MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern bool8 gMultiSioEnabled;

extern HBlankIntrFunc gHBlankIntrs[4];
extern HBlankIntrFunc gHBlankCallbacks[4];
extern u8 gNumHBlankCallbacks;
extern u8 gNumHBlankIntrs;

extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

extern void *gVramHeapStartAddr;
extern u16 gVramHeapMaxTileSlots;
extern u16 gVramHeapState[(0x18000 - 0x10000) / (4 * 32)];

extern bool8 gExecSoundMain;

extern u16 gDispCnt;
# 273 "../../../include/core.h"
extern winreg_t gWinRegs[6];
extern struct BlendRegs gBldRegs;
extern BgAffineReg gBgAffineRegs[2];
extern u16 gObjPalette[16 * 16u];
extern u16 gBgPalette[16 * 16u];

extern u16 gBgCntRegs[4];



extern s16 gBgScrollRegs[4][2];

extern OamData gOamMallocBuffer[128];
extern OamData gOamBuffer[128];


extern int_vcount gBgOffsetsBuffer[2][160][4];
extern Background *gBackgroundsCopyQueue[16];


extern void *gBgOffsetsHBlankPrimary;

extern u16 gUnknown_030017F0;
extern Vec2_16 gSpriteOffset;
extern u8 gOamMallocOrders_StartIndex[32];
extern IntrFunc gVBlankCallbacks[4];

extern u8 gOamFreeIndex;
extern u16 gUnknown_03001944;
extern u8 gNumVBlankIntrs;
extern s16 gUnknown_0300194C;

extern Tilemap **gTilemapsRef;
extern u8 gBgSprites_Unknown2[4][4];
extern u8 gBgSprites_Unknown1[4];
# 317 "../../../include/core.h"
extern struct GraphicsData *gVramGraphicsCopyQueue[32];
extern u8 gVramGraphicsCopyQueueIndex;
# 357 "../../../include/core.h"
extern void *gBgOffsetsHBlankSecondary;
extern void *gBgOffsetsSecondary;

extern s16 gMosaicReg;
extern u8 gUnknown_030026F4;

extern s16 gUnknown_03002820;
extern u8 gVCountSetting;
extern void *gHBlankCopyTarget;
extern u8 gBackgroundsCopyQueueIndex;
extern u8 gHBlankCopySize;
extern u16 gUnknown_03002A8C;


extern u8 gOamFirstPausedIndex;
extern u8 gBackgroundsCopyQueueCursor;
extern Sprite *gBgSprites[16];
extern u8 gNumVBlankCallbacks;
extern void *gBgOffsetsPrimary;
extern u16 gUnknown_03004D58;
extern u8 gVramGraphicsCopyCursor;
extern u8 gOamMallocOrders_EndIndex[0x20];
extern u8 gBgSpritesCount;
extern u16 gUnknown_03005394;
extern u16 gUnknown_03005398;
extern IntrFunc gVBlankIntrs[4];
extern s32 gPseudoRandom;
extern u8 gOamMallocCopiedOrder[128];
extern struct MultiBootParam gMultiBootParam;

extern const struct SpriteTables *gRefSpriteTables;

void EngineInit(void);
void EngineMainLoop(void);
# 3 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/malloc_ewram.h" 1





struct EwramNode {
              struct EwramNode *next;
              s32 state;


              u8 space[0];
};

void EwramInitHeap(void);
void *EwramMalloc(u32);
void EwramFree(void *);
# 4 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/malloc_vram.h" 1
# 5 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/multi_sio.h" 1
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
# 6 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/sprite.h" 1
# 7 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/task.h" 1
# 8 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/flags.h" 1
# 9 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/input_recorder.h" 1
# 10 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/lib/m4a/m4a.h" 1



# 1 "../../../include/lib/m4a/m4a_internal.h" 1



# 1 "../../../include/gba/gba.h" 1
# 5 "../../../include/lib/m4a/m4a_internal.h" 2
# 109 "../../../include/lib/m4a/m4a_internal.h"
struct MP2KTrack;
struct MP2KPlayerState;

typedef void (*MP2KEventNoteFunc)(u8, struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*MP2KEventFunc)(struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MP2KPlayerState *);

struct MixerSource {
    u8 status;
    u8 type;
    u8 rightVol;
    u8 leftVol;

    union {
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeGoal;
            u8 envelopeCtr;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u8 padding6;
            u8 sustainGoal;
            u8 nrx4;
            u8 pan;

            u8 panMask;
            u8 cgbStatus;
            u8 length;
            u8 sweep;

            u32 freq;
        } cgb;
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeVolR;
            u8 envelopeVolL;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u32 ct;
            float fw;

            u32 freq;
        } sound;
    } data;

    void *wav;
    void *current;

    struct MP2KTrack *track;
    struct MixerSource *prev;
    struct MixerSource *next;
    u32 padding7;
    u32 blockCount;
};

struct SoundMixerState {


    u32 lockStatus;

    vu8 dmaCounter;


    u8 reverb;
    u8 numChans;
    u8 masterVol;
    u8 freqOption;

    u8 extensionFlags;
    u8 cgbCounter15;
    u8 framesPerDmaCycle;
    u8 maxScanlines;
    u8 gap[3];
    s32 samplesPerFrame;
    s32 sampleRate;

    s32 sampleRateReciprocal;



    struct MixerSource *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MP2KPlayerState *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    void **MPlayJumpTable;
    MP2KEventNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    void *reserved2;
    void *reserved3;
    void *reversed4;
    void *reserved5;
    struct MixerSource chans[12];

    s8 pcmBuffer[1584 * 2];



};

struct MP2KVoiceGroup {
    u8 type;
    u8 drumKey;
    u8 cgbLength;
    u8 pan_sweep;
    union {
        struct {
            struct WaveData *wav;
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
        } sound;
        struct {
            struct MP2KVoiceGroup *group;
            u8 *keySplitTable;
        } keySplit;
    } data;
};

struct WaveData {
    u16 type;
    u16 status;

    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};

struct MP2KSongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct MP2KVoiceGroup *voicegroup;
    u8 *part[1];
};

struct MP2KTrack {
    u8 status;
    u8 wait;
    u8 patternLevel;
    u8 repeatCount;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    s8 keyShiftCalculated;
    u8 pitchCalculated;
    s8 keyShift;
    s8 keyShiftPublic;
    s8 tune;
    u8 pitchPublic;
    s8 bend;
    u8 bendRange;
    u8 volRightCalculated;
    u8 volLeftCalculated;
    u8 vol;
    u8 volPublic;
    s8 pan;
    s8 panPublic;
    s8 modCalculated;
    u8 modDepth;
    u8 modType;
    u8 lfoSpeed;
    u8 lfoSpeedCounter;
    u8 lfoDelay;
    u8 lfoDelayCounter;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;

    struct MixerSource *chan;
    struct MP2KVoiceGroup voicegroup;

    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};

struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    bool8 checkSongPriority;
    u32 clock;
    u8 padding[8];
    u8 *memAccArea;
    u16 tempoRawBPM;
    u16 tempoScale;
    u16 tempoInterval;
    u16 tempoCounter;
    u16 fadeInterval;
    u16 fadeCounter;
    u16 fadeOV;
    struct MP2KTrack *tracks;
    struct MP2KVoiceGroup *voicegroup;
    u32 lockStatus;
    MPlayMainFunc nextPlayerFunc;
    struct MP2KPlayerState *nextPlayer;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

typedef void (*XcmdFunc)(struct MP2KPlayerState *, struct MP2KTrack *);

extern char SoundMainRAM[];
extern u8 gMPlayMemAccArea[];
extern void *gMPlayJumpTable[];
extern struct MixerSource gCgbChans[];

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];
extern const XcmdFunc gXcmdTable[];

extern const u8 gClockTable[];
extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];
extern void *const gMPlayJumpTableTemplate[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];
extern const u8 gCgb3Vol[];


extern char gNumMusicPlayers[];
extern char gMaxLines[];


u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust);
u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void *ptr);
void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track);
void MP2KPlayerMain(struct MP2KPlayerState *);

void ClearChain(struct MixerSource *chan);
void MP2KClearChain(struct MixerSource *chan);

void MPlayContinue(struct MP2KPlayerState *mplayInfo);
void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
void MPlayStop(struct MP2KPlayerState *mplayInfo);
void FadeOutBody(struct MP2KPlayerState *mplayInfo);
void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track);
void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundMixerState *soundInfo);
void MPlayExtender(struct MixerSource *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct MixerSource *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MP2KTrack *track);
void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed);


void MP2K_event_fine(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_goto(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_patt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_rept(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_memacc(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_prio(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tempo(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_keysh(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_voice(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_vol(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pan(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bendr(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfos(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfodl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_mod(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_modt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tune(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_port(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_endtie(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *, struct MP2KTrack *);


void MP2K_event_xxx(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xwave(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xtype(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xatta(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xdeca(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xsust(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xrele(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecv(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xleng(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xswee(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0C(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0D(struct MP2KPlayerState *, struct MP2KTrack *);
# 5 "../../../include/lib/m4a/m4a.h" 2

extern struct SoundMixerState gSoundInfo;

extern struct MP2KPlayerState gMPlayInfo_BGM;
extern struct MP2KPlayerState gMPlayInfo_SE1;
extern struct MP2KPlayerState gMPlayInfo_SE2;
extern struct MP2KPlayerState gMPlayInfo_SE3;

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayAllContinue(void);
void m4aMPlayContinue(struct MP2KPlayerState *mplayInfo);
void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MP2KPlayerState *mplayInfo);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
# 11 "build/collect_rings/src/sa2/core.c" 2
# 1 "../../../include/lib/agb_flash/agb_flash.h" 1






u16 IdentifyFlash(void);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
u32 ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n);
u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
extern u16 (*EraseFlashSector)(u16);
# 12 "build/collect_rings/src/sa2/core.c" 2




typedef bool32 (*VBlankProcessFunc)(void);

IntrFunc gIntrTable[] = {};
u32 gIntrMainBuf[] = {};
struct Task gTasks[] = {};
u16 gUnknown_030017F0 __attribute__((aligned(4))) = 0;
Vec2_16 gSpriteOffset __attribute__((aligned(4))) = {};
Background *gBackgroundsCopyQueue[] __attribute__((aligned(16))) = {};
u32 gFlags = 0;
u8 gOamMallocOrders_StartIndex[] __attribute__((aligned(16))) = {};
IntrFunc gVBlankCallbacks[] = {};
u16 gPhysicalInput = 0;

void *gBgOffsetsHBlankPrimary = ((void *)0);

u16 gVramHeapMaxTileSlots = 0;
u8 gNumHBlankCallbacks __attribute__((aligned(4))) = 0;
union MultiSioData gMultiSioRecv[4] = {};



u8 gNumHBlankIntrs = 0;
struct BlendRegs gBldRegs __attribute__((aligned(8))) = {};
u8 gOamFreeIndex = 0;
struct Task gEmptyTask __attribute__((aligned(16))) = {};





BgAffineReg gBgAffineRegs[2] __attribute__((aligned(16))) = {};
void *gVramHeapStartAddr = ((void *)0);
u16 gUnknown_03001944 __attribute__((aligned(4))) = 0;
u8 gNumVBlankIntrs __attribute__((aligned(4))) = 0;
s16 gUnknown_0300194C __attribute__((aligned(4))) = 0;




u32 gMultiSioStatusFlags = 0;
bool8 gMultiSioEnabled = 0;

struct Task *gTaskPtrs[] __attribute__((aligned(16))) = {};
int_vcount gBgOffsetsBuffer[2][160][4] = {};
u16 gObjPalette[] = {};
Tilemap **gTilemapsRef = ((void *)0);
u32 gFrameCount = 0;
winreg_t gWinRegs[6] __attribute__((aligned(16))) = {};
s32 gNumTasks = 0;
u8 gBgSprites_Unknown2[4][4] = {};
u16 gInput = 0;




u8 gRepeatedKeysTestCounter[] __attribute__((aligned(16))) = {};
void *gBgOffsetsHBlankSecondary = ((void *)0);
u16 gBgCntRegs[] = {};
u16 gRepeatedKeys __attribute__((aligned(4))) = 0;
struct Task *gNextTask = ((void *)0);







void *gBgOffsetsSecondary = ((void *)0);


OamData gOamMallocBuffer[128] __attribute__((aligned(16))) = {};


s16 gMosaicReg = 0;


HBlankIntrFunc gHBlankCallbacks[4] __attribute__((aligned(16))) = {};
struct Task *gCurTask = ((void *)0);
u8 sLastCalledVblankFuncId = 0;
u8 gKeysFirstRepeatIntervals[10] __attribute__((aligned(16))) = {};

u16 gReleasedKeys __attribute__((aligned(4))) = 0;
u8 gOamMallocCopiedOrder[] __attribute__((aligned(16))) = {};
u32 gFlagsPreVBlank = 0;
                 const struct SpriteTables *gRefSpriteTables = ((void *)0);







struct GraphicsData *gVramGraphicsCopyQueue[] __attribute__((aligned(16))) = {};
# 117 "build/collect_rings/src/sa2/core.c"
s16 gUnknown_03002820 = 0;
s16 gBgScrollRegs[][2] __attribute__((aligned(16))) = {};
u16 gDispCnt = 0;
u8 gKeysContinuedRepeatIntervals[10] __attribute__((aligned(16))) = {};
union MultiSioData gMultiSioSend __attribute__((aligned(8))) = {};
u8 gVCountSetting = 0;

void *gHBlankCopyTarget __attribute__((aligned(4))) = ((void *)0);






u8 gBackgroundsCopyQueueIndex = 0;
u16 gBgPalette[] __attribute__((aligned(16))) = {};

u8 gHBlankCopySize __attribute__((aligned(4))) = 0;

u8 gVramGraphicsCopyQueueIndex __attribute__((aligned(4))) = 0;
u16 gPrevInput __attribute__((aligned(4))) = 0;
u16 gUnknown_03002A8C __attribute__((aligned(4))) = 0;

struct MultiBootParam gMultiBootParam __attribute__((aligned(8))) = {};

u16 gPressedKeys __attribute__((aligned(4))) = 0;
u8 gOamFirstPausedIndex __attribute__((aligned(4))) = 0;
u8 gBackgroundsCopyQueueCursor __attribute__((aligned(4))) = 0;
HBlankIntrFunc gHBlankIntrs[4] __attribute__((aligned(16))) = {};

u8 gIwramHeap[((0x881) * sizeof(uintptr_t))] = {};

Sprite *gBgSprites[] __attribute__((aligned(16))) = {};
u8 gNumVBlankCallbacks __attribute__((aligned(4))) = 0;

void *gBgOffsetsPrimary = ((void *)0);

u16 gUnknown_03004D58 __attribute__((aligned(4))) = 0;
u8 gVramGraphicsCopyCursor __attribute__((aligned(4))) = 0;



u8 gOamMallocOrders_EndIndex[] __attribute__((aligned(16))) = {};
u8 gBgSprites_Unknown1[] = {};
OamData gOamBuffer[] __attribute__((aligned(16))) = {};
u16 gVramHeapState[] = {};
u8 gBgSpritesCount __attribute__((aligned(4))) = 0;
u16 gUnknown_03005394 __attribute__((aligned(4))) = 0;
u16 gUnknown_03005398 __attribute__((aligned(4))) = 0;
IntrFunc gVBlankIntrs[] __attribute__((aligned(16))) = {};
const u8 *gInputPlaybackData = ((void *)0);
bool8 gExecSoundMain __attribute__((aligned(4))) = 0;
s32 gPseudoRandom = 0;

static void UpdateScreenDma(void);
static void UpdateScreenCpuSet(void);
static void ClearOamBufferCpuSet(void);
static void ClearOamBufferDma(void);
void GetInput(void);
bool32 ProcessVramGraphicsCopyQueue(void);

static void VBlankIntr(void);
static void HBlankIntr(void);
static void VCountIntr(void);
static void Timer0Intr(void);
static void Timer1Intr(void);
static void Timer2Intr(void);
static void Dma0Intr(void);
static void Dma1Intr(void);
static void Dma2Intr(void);



static void Dma3Intr(void);
static void KeypadIntr(void);
static void GamepakIntr(void);

extern void IntrMain(void);



IntrFunc const gIntrTableTemplate[] = {

    (void *)gMultiSioIntrFuncBuf,



    VBlankIntr,
    HBlankIntr,
    VCountIntr,
    Timer0Intr,
    Timer1Intr,
    Timer2Intr,



    Dma0Intr,
    Dma1Intr,
    Dma2Intr,
    Dma3Intr,
    KeypadIntr,
    GamepakIntr,

    ((void *)0),

};




VBlankProcessFunc const sVblankFuncs[] = {
    ProcessVramGraphicsCopyQueue,
    sub_8004010,



    sub_8002B20,
};
# 247 "build/collect_rings/src/sa2/core.c"
void EngineInit(void)

{
    s16 i;
    u16 errorIdentifying;




    (*(vu16 *)(0x4000000 + 0x204)) = (1 << 14) | (1 << 4) | (1 << 2);
    gFlags = 0;
    gFlagsPreVBlank = 0;
# 278 "build/collect_rings/src/sa2/core.c"
    if (gInput == (0x0008 | 0x0004 | 0x0002 | 0x0001)) {
        gFlags |= 0x1000;
    } else {

        gFlags &= ~0x1000;



    }


    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)((void *)(u8*)(0x6000000 + 0x10000)); dmaRegs[1] = (vu32)((void *)(0x02000000 + 0x3b000)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((0x5000)/(16/8)))); dmaRegs[2]; };






    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)((void *)0x7000000); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | (((128*sizeof(OamData)))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)((void *)0x5000000); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((0x400)/(32/8)))); dmaRegs[2]; }; };





    sLastCalledVblankFuncId = 0xFF;
    gBackgroundsCopyQueueCursor = 0;
    gBackgroundsCopyQueueIndex = 0;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = 0;
    gVramGraphicsCopyQueueIndex = 0;
# 320 "build/collect_rings/src/sa2/core.c"
    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gBgSprites_Unknown2); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gBgSprites_Unknown2))/(32/8)))); dmaRegs[2]; }; };





    *(u32 *)gBgSprites_Unknown1 = 0;

    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gBgScrollRegs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gBgScrollRegs))/(32/8)))); dmaRegs[2]; }; };




    gSpriteOffset.x = 0;
    gSpriteOffset.y = 0;

    gDispCnt = 0x0080;

    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gVramGraphicsCopyQueue); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gVramGraphicsCopyQueue))/(32/8)))); dmaRegs[2]; }; };




    gOamFreeIndex = 0;
    gOamFirstPausedIndex = 0;

    { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamBuffer); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((sizeof(gOamBuffer))/(16/8)))); dmaRegs[2]; }; };



    { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamMallocBuffer); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((sizeof(gOamMallocBuffer))/(16/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(~0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamMallocOrders_StartIndex); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gOamMallocOrders_StartIndex))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(~0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamMallocOrders_EndIndex); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gOamMallocOrders_EndIndex))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gObjPalette); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gObjPalette))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gBgPalette); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gBgPalette))/(32/8)))); dmaRegs[2]; }; };






    gBgAffineRegs[0].pa = 0x100;
    gBgAffineRegs[0].pb = 0;
    gBgAffineRegs[0].pc = 0;
    gBgAffineRegs[0].pd = 0x100;
    gBgAffineRegs[0].x = 0;
    gBgAffineRegs[0].y = 0;


    gBgAffineRegs[1].pa = 0x100;
    gBgAffineRegs[1].pb = 0;
    gBgAffineRegs[1].pc = 0;
    gBgAffineRegs[1].pd = 0x100;
    gBgAffineRegs[1].x = 0;
    gBgAffineRegs[1].y = 0;




    gUnknown_03001944 = 0;
    gUnknown_030017F0 = 0x100;
    gUnknown_03005394 = 0x100;
    gUnknown_03002A8C = 0;
    gUnknown_03004D58 = 0;
    gUnknown_0300194C = 0;
    gUnknown_03002820 = 0;
    gUnknown_03005398 = 0x100;

    gWinRegs[0] = 0;
    gWinRegs[1] = 0;
    gWinRegs[2] = 0;
    gWinRegs[3] = 0;
    gWinRegs[4] = 0;
    gWinRegs[5] = 0;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;


    gMosaicReg = 0;


    gPseudoRandom = 0;

    for (i = 0; i < 10; i++) {
        gKeysFirstRepeatIntervals[i] = 20;
        gKeysContinuedRepeatIntervals[i] = 8;
    }






    gFrameCount = 0;




    for (i = 0; i < 15; i++)

    {
        gIntrTable[i] = (IntrFunc)gIntrTableTemplate[i];
    }

    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(&gBgOffsetsBuffer); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gBgOffsetsBuffer))/(32/8)))); dmaRegs[2]; }; };




    gBgOffsetsHBlankPrimary = gBgOffsetsBuffer[0];
    gBgOffsetsHBlankSecondary = gBgOffsetsBuffer[1];
    gHBlankCopyTarget = ((void *)0);
    gHBlankCopySize = 0;
    gNumHBlankCallbacks = 0;
    gNumHBlankIntrs = 0;

    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gHBlankCallbacks); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gHBlankCallbacks))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gHBlankIntrs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gHBlankCallbacks))/(32/8)))); dmaRegs[2]; }; };




    gNumVBlankCallbacks = 0;
    gNumVBlankIntrs = 0;

    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gVBlankCallbacks); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gVBlankCallbacks))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gVBlankIntrs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gVBlankIntrs))/(32/8)))); dmaRegs[2]; }; };




    m4aSoundInit();
    m4aSoundMode((0x00900000 | 0x00020000 | (15 << 12) | (4 << 8)));

    gExecSoundMain = 1;

    TasksInit();





    gVramHeapMaxTileSlots = 128 * ((4 * 32) / 32);
    gVramHeapStartAddr = (u8*)(0x6000000 + 0x14000) - (0 * 32);

    VramResetHeapState();


    gFlags |= 0x100;
# 502 "build/collect_rings/src/sa2/core.c"
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(IntrMain); dmaRegs[1] = (vu32)(gIntrMainBuf); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(gIntrMainBuf))/(32/8)))); dmaRegs[2]; };



    (*(void **)0x3007FFC) = (void *)gIntrMainBuf;






    (*(vu16 *)(0x4000000 + 0x208)) = (1 << 0);
    (*(vu16 *)(0x4000000 + 0x200)) = (1 << 0);
    (*(vu16 *)(0x4000000 + 0x4)) = 0x0010 | 0x0008;







    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(&gMultiSioSend); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gMultiSioSend))/(32/8)))); dmaRegs[2]; }; };



    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gMultiSioRecv); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gMultiSioRecv))/(32/8)))); dmaRegs[2]; }; };



    gMultiSioStatusFlags = 0;
    gMultiSioEnabled = 0;

    MultiSioInit(0);






}




void EngineMainLoop(void)
{

    while (1)

    {
        gExecSoundMain = 0;

        if (!(gFlags & 0x4000)) {
            m4aSoundMain();
        }






        if (sLastCalledVblankFuncId == 0xFF) {
            GetInput();

            if (gMultiSioEnabled) {
                gMultiSioStatusFlags = MultiSioMain(&gMultiSioSend, gMultiSioRecv, 0);
            }






            TasksExec();
        }

        gFlagsPreVBlank = gFlags;
        VBlankIntrWait();
# 593 "build/collect_rings/src/sa2/core.c"
        {
            UpdateScreenDma();

            if (!(gFlags & 0x400)) {
                ClearOamBufferDma();
            }
        }

        if (gFlags & 0x400) {
            gFlags |= 0x800;
        } else {
            gFlags &= ~0x800;
        }







        while ((*(vu16 *)(0x4000000 + 0x4)) & 0x0001)
            ;
    };
}

void UpdateScreenDma(void)
{
    u8 i, j = 0;
    (*(vu16 *)(0x4000000 + 0x0)) = gDispCnt;
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gBgCntRegs); dmaRegs[1] = (vu32)((void *)(0x4000000 + 0x8)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(gBgCntRegs))/(32/8)))); dmaRegs[2]; };

    if (gFlags & 0x1) {
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gBgPalette); dmaRegs[1] = (vu32)((void *)((u16 *)(0x5000000))); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(gBgPalette))/(32/8)))); dmaRegs[2]; };
        gFlags ^= 0x1;
    }

    if (gFlags & 0x2) {
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gObjPalette); dmaRegs[1] = (vu32)((void *)((u16 *)(0x5000000 + 0x200))); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(gObjPalette))/(32/8)))); dmaRegs[2]; };
        gFlags ^= 0x2;
    }

    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gWinRegs); dmaRegs[1] = (vu32)((void *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(gWinRegs))/(32/8)))); dmaRegs[2]; };
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&gBldRegs); dmaRegs[1] = (vu32)((void *)(0x4000000 + ((0x40 + sizeof(winreg_t) * 6) + 4))); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((6)/(16/8)))); dmaRegs[2]; };






    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&gMosaicReg); dmaRegs[1] = (vu32)((void *)(0x4000000 + (0x40 + sizeof(winreg_t) * 6))); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((4)/(16/8)))); dmaRegs[2]; };


    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gBgScrollRegs); dmaRegs[1] = (vu32)((void *)(0x4000000 + 0x10)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(gBgScrollRegs))/(16/8)))); dmaRegs[2]; };
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&gBgAffineRegs); dmaRegs[1] = (vu32)((void *)(0x4000000 + 0x20)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(gBgAffineRegs))/(32/8)))); dmaRegs[2]; };

    if (gFlags & 0x8) {
        (*(vu16 *)(0x4000000 + 0x200)) |= (1 << 1);
        { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gHBlankIntrs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gHBlankIntrs))/(32/8)))); dmaRegs[2]; }; };
        if (gNumHBlankCallbacks != 0) {
            { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gHBlankCallbacks); dmaRegs[1] = (vu32)(gHBlankIntrs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((gNumHBlankCallbacks * sizeof(HBlankIntrFunc))/(32/8)))); dmaRegs[2]; };
        }
        gNumHBlankIntrs = gNumHBlankCallbacks;
    } else {
        (*(vu16 *)(0x4000000 + 0x200)) &= ~(1 << 1);
        gNumHBlankIntrs = 0;
    }

    if (gFlags & 0x4) {

        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gBgOffsetsHBlankPrimary); dmaRegs[1] = (vu32)(gHBlankCopyTarget); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((gHBlankCopySize)/(16/8)))); dmaRegs[2]; };
    }

    if (sLastCalledVblankFuncId == 0xFF) {
        ProcessOamBuffers();
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gOamBuffer + (128 / 4) * 0); dmaRegs[1] = (vu32)((void *)0x7000000 + (128 * (8 / 4) * 0)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }
                               ;
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gOamBuffer + (128 / 4) * 1); dmaRegs[1] = (vu32)((void *)0x7000000 + (128 * (8 / 4) * 1)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }
                               ;
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gOamBuffer + (128 / 4) * 2); dmaRegs[1] = (vu32)((void *)0x7000000 + (128 * (8 / 4) * 2)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }
                               ;
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gOamBuffer + (128 / 4) * 3); dmaRegs[1] = (vu32)((void *)0x7000000 + (128 * (8 / 4) * 3)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }
                               ;
    }

    for (i = 0; i < gNumVBlankIntrs; i++) {



        {
            gVBlankIntrs[i]();
        }
    }

    if (gFlags & 0x10) {
        { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gVBlankIntrs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gVBlankIntrs))/(32/8)))); dmaRegs[2]; }; };
        if (gNumVBlankCallbacks != 0) {
            { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gVBlankCallbacks); dmaRegs[1] = (vu32)(gVBlankIntrs); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((gNumVBlankCallbacks * sizeof(IntrFunc))/(32/8)))); dmaRegs[2]; };
        }
        gNumVBlankIntrs = gNumVBlankCallbacks;
    } else {
        gNumVBlankIntrs = 0;
    }

    j = sLastCalledVblankFuncId;
    if (j == 0xFF) {
        j = 0;
    }

    sLastCalledVblankFuncId = 0xFF;







    for (; j < (sizeof(sVblankFuncs) / sizeof((sVblankFuncs)[0])); j++) {




        if (sVblankFuncs[j]() == 0) {
            sLastCalledVblankFuncId = j;
            break;
        }

    }
}

void ClearOamBufferDma(void)
{
    gNumHBlankCallbacks = 0;

    gFlags &= ~0x8;
    if (!(gFlags & 0x20)) {
# 737 "build/collect_rings/src/sa2/core.c"
        if (gBgOffsetsHBlankPrimary == gBgOffsetsPrimary) {
            gBgOffsetsHBlankPrimary = gBgOffsetsSecondary;
            gBgOffsetsHBlankSecondary = gBgOffsetsPrimary;
        } else {
            gBgOffsetsHBlankPrimary = gBgOffsetsPrimary;
            gBgOffsetsHBlankSecondary = gBgOffsetsSecondary;
        }

    }
    gFlags &= ~0x4;
    { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamBuffer + (128 / 4) * 0); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }; };
    { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamBuffer + (128 / 4) * 1); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }; };
    { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamBuffer + (128 / 4) * 2); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }; };
    { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamBuffer + (128 / 4) * 3); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((128*sizeof(OamData)) / 4)/(16/8)))); dmaRegs[2]; }; };

    gNumVBlankCallbacks = 0;
    gFlags &= ~0x10;
}
# 833 "build/collect_rings/src/sa2/core.c"
void VBlankIntr(void)
{
    u16 keys;
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x50); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    m4aSoundVSync();
    (*(u16 *)0x3007FF8) |= 1;
    gExecSoundMain = 1;

    if (gFlagsPreVBlank & 0x4) {
        (*(vu16 *)(0x4000000 + 0x200)) |= (1 << 1);
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x50); while (dmaRegs[2] & (0x8000 << 16)) ; };

        { vu32 *dmaRegs = (vu32 *)(0x4000000 + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x50); dmaRegs[0] = (vu32)(gBgOffsetsHBlankPrimary); dmaRegs[1] = (vu32)(gHBlankCopyTarget); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((gHBlankCopySize)/(16/8)))); dmaRegs[2]; };
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x50); dmaRegs[0] = (vu32)(gBgOffsetsHBlankPrimary + gHBlankCopySize); dmaRegs[1] = (vu32)(gHBlankCopyTarget); dmaRegs[2] = (vu32)(((0x8000 | 0x2000 | 0x0200 | 0x0060) << 16) | (gHBlankCopySize >> 1)); dmaRegs[2]; }
                                                                                                               ;

    } else if (gHBlankCopyTarget) {
        (*(vu16 *)(0x4000000 + 0x200)) &= ~(1 << 1);
        gHBlankCopyTarget = ((void *)0);
    }

    if (gFlagsPreVBlank & 0x40) {
        (*(vu16 *)(0x4000000 + 0x4)) |= 0x0020;
        (*(vu16 *)(0x4000000 + 0x4)) &= 0xff;
        (*(vu16 *)(0x4000000 + 0x4)) |= gVCountSetting << 8;
        (*(vu16 *)(0x4000000 + 0x4)) &= ~0x0004;
        (*(vu16 *)(0x4000000 + 0x4)) |= 0x0020;
        (*(vu16 *)(0x4000000 + 0x200)) |= (1 << 2);
    } else {
        (*(vu16 *)(0x4000000 + 0x4)) &= ~0x0004;
        (*(vu16 *)(0x4000000 + 0x4)) &= ~0x0020;
        (*(vu16 *)(0x4000000 + 0x200)) &= ~(1 << 2);
    }
# 891 "build/collect_rings/src/sa2/core.c"
    gFrameCount++;
    (*(vu16 *)(0x4000000 + 0x202)) = (1 << 0);
}


struct GraphicsData_Hack {
    uintptr_t src;
    uintptr_t dest;
    u16 size;
};



bool32 ProcessVramGraphicsCopyQueue(void)
{
    u32 offset;

    struct GraphicsData_Hack *graphics;




    while (gVramGraphicsCopyCursor != gVramGraphicsCopyQueueIndex) {

        graphics = (void *)gVramGraphicsCopyQueue[gVramGraphicsCopyCursor];




        if (graphics->size != 0) {
            for (offset = 0; graphics->size > 0; offset += 1024) {
                if (graphics->size > 1024) {



                    {

                        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)((void *)(graphics->src + offset)); dmaRegs[1] = (vu32)((void *)(graphics->dest + offset)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((1024)/(16/8)))); dmaRegs[2]; };

                        graphics->size -= 1024;
                    }





                } else {



                    {

                        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)((void *)(graphics->src + offset)); dmaRegs[1] = (vu32)((void *)(graphics->dest + offset)); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((graphics->size)/(16/8)))); dmaRegs[2]; };

                    }
                    graphics->size = 0;
                }
            }
        }







        gVramGraphicsCopyCursor = (gVramGraphicsCopyCursor + 1) % (sizeof(gVramGraphicsCopyQueue) / sizeof((gVramGraphicsCopyQueue)[0]));;




        if (!((*(vu16 *)(0x4000000 + 0x4)) & 0x0001)) {
            return 0;
        }

    }

    return 1;
}

void GetInput(void)
{
    s8 i;
    u8 *repeatKeyCounters = gRepeatedKeysTestCounter, *firstIntervals = gKeysFirstRepeatIntervals,
       *continuedHoldIntervals = gKeysContinuedRepeatIntervals;

    gInput = (~(*(vu16 *)(0x4000000 + 0x130)) & 0x03FF);





    gPhysicalInput = gInput;
# 993 "build/collect_rings/src/sa2/core.c"
    gPressedKeys = (gInput ^ gPrevInput) & gInput;
    gReleasedKeys = (gInput ^ gPrevInput) & gPrevInput;
    gPrevInput = gInput;


    gRepeatedKeys = gPressedKeys;


    for (i = 0; i < 10; i++) {
        if (!(((gInput) >> (i)) & 1)) {



            repeatKeyCounters[i] = firstIntervals[i];
        } else if (repeatKeyCounters[i] > 0) {


            repeatKeyCounters[i]--;
        } else {


            gRepeatedKeys |= 1 << i;


            repeatKeyCounters[i] = continuedHoldIntervals[i];
        }
    }
}
# 1059 "build/collect_rings/src/sa2/core.c"
static void HBlankIntr(void)
{
    u8 i;
    int_vcount vcount = *(volatile int_vcount *)&(*(vu16 *)(0x4000000 + 0x6));

    if (vcount < 160) {
        for (i = 0; i < gNumHBlankIntrs; i++) {
            gHBlankIntrs[i](vcount);
        }
    }

    (*(vu16 *)(0x4000000 + 0x202)) = (1 << 1);
}

static void VCountIntr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 2); }
static void Dma0Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 8); }
static void Dma1Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 9); }
static void Dma2Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 10); }
static void Dma3Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 11); }
static void Timer0Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 3); }
static void Timer1Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 4); }
static void Timer2Intr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 5); }



static void KeypadIntr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 12); }
static void GamepakIntr(void) { (*(vu16 *)(0x4000000 + 0x202)) = (1 << 13); }
static void DummyFunc(void) { }
