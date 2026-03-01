# 0 "build/collect_rings/src/sa2/game/stage/camera.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "build/collect_rings/src/sa2/game/stage/camera.c"
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
# 2 "build/collect_rings/src/sa2/game/stage/camera.c" 2
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
# 3 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/sprite.h" 1
# 4 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/animation_commands_bg.h" 1



# 1 "../../../include/gba/types.h" 1
# 5 "../../../include/animation_commands_bg.h" 2


void UpdateBgAnimationTiles(Background *);

s32 RenderText(void *dest, const void *font, u16 x, u16 y, u8 bg, const char *text, u8 palette);
# 5 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/trig.h" 1





extern const s16 gSineTable[1280];
# 6 "build/collect_rings/src/sa2/game/stage/camera.c" 2

# 1 "../../../include/game/sa1_sa2_shared/globals.h" 1



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
# 5 "../../../include/game/sa1_sa2_shared/globals.h" 2
# 75 "../../../include/game/sa1_sa2_shared/globals.h"
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState;

typedef struct {
    s32 squarePlayerDistance;
    u16 angle;
} HomingTarget;






typedef struct {
    u8 type;

    u8 opaque[7];
} RoomEvent;


typedef struct {
               s32 squarePlayerDistance;
               struct Task *task;
} CheeseTarget;


extern u8 gDemoPlayCounter;
extern u8 gGameMode;

extern s8 gCurrentLevel;
extern s8 gSelectedCharacter;





extern u8 gMultiplayerLanguage;



extern u16 gRingCount;

extern MusicManagerState gMusicManagerState;


extern u32 gCourseTime;


extern u8 gSpecialRingCount;


extern s32 gWorldSpeedY;
extern s32 gWorldSpeedX;

extern u16 gBossCameraClampYLower;
extern u16 gBossCameraClampYUpper;
extern u8 gRandomItemBox;
extern u8 gSpikesUnknownTimer;

extern s8 gUnknown_0300543C;
extern struct Task *gEntitiesManagerTask;

extern u8 gDestroySpotlights;

extern u8 gRoomEventQueueSendPos;



extern u16 gStageFlags;
extern u16 gPrevStageFlags;

extern u8 gDifficultyLevel;

extern s8 gTrappedAnimalVariant;

extern u8 gBossIndex;
extern u8 gNumSingleplayerCharacters;



extern u32 gStageTime;
extern u32 gMPStageStartFrameCount;

extern u32 gCheckpointTime;

extern u8 gRoomEventQueueWritePos;

extern u8 gBossRingsRespawnCount;
extern bool8 gBossRingsShallRespawn;
extern bool8 gBoostEffectTasksCreated;

extern struct Task *gMultiplayerPlayerTasks[4];
extern s8 gMultiplayerCharacters[4];
extern s8 gMultiplayerRanks[4];
extern u8 gOamMatrixIndex;

extern u8 gMultiplayerMissingHeartbeats[4];
extern u8 gActiveCollectRingEffectCount;

extern u8 gMultiplayerUnlockedCharacters;
extern u8 gMultiplayerUnlockedLevels;
extern u32 gMultiplayerIds[4];
extern u16 gMultiplayerNames[4][6];

extern u32 gMultiplayerPseudoRandom;

extern s32 gLevelScore;
extern u8 gNumLives;
extern bool8 gFinalBossActive;

extern HomingTarget gHomingTarget;

extern u8 gMultiplayerConnections;


extern s32 gStageGoalX;

extern u8 gMPRingCollectWins[4];
extern u8 gMultiplayerCharRings[4];

extern RoomEvent gRoomEventQueue[16];

extern CheeseTarget gCheeseTarget;

extern u8 gFrameInputsBuf[4];






struct InputCounters {
    u8 unk0, unk1, unk2, unk3;
};

extern u8 gNewInputCountersIndex;
extern struct InputCounters gNewInputCounters[32];


extern u8 gFrameInputsBufIndex;
# 8 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/game/sa1_sa2_shared/spot_light.h" 1





bool32 CreateSpotLightBeams(void);
# 9 "build/collect_rings/src/sa2/game/stage/camera.c" 2

# 1 "../../../include/game/stage/player_super_sonic.h" 1



# 1 "../../../include/constants/zones.h" 1
# 5 "../../../include/game/stage/player_super_sonic.h" 2

struct SuperSonic;


typedef void (*SuperSonicFn)(struct SuperSonic *sonic);

struct SuperSonic {
                u32 flags;
                s32 worldX;
                s32 worldY;
                s32 unkC;
                s32 unk10;
                s32 unk14;
                u16 rotation;
                s16 unk1A;
                u16 rawKeys;
                u16 pressedKeys;
                s16 unk20;
                s8 unk22;
                u8 tileInfoId;
                SuperSonicFn func24;
                Vec2_32 unk28[32];
                u8 unk128;
                bool8 shouldDestroy;
                u8 filler12A[0xA];
                Sprite spr;
                Hitbox reserved;
                SpriteTransform transform;
                u8 filler16C[8];
};
# 63 "../../../include/game/stage/player_super_sonic.h"
extern void SuperSonicInit(void);
extern u32 SuperSonicGetFlags(void);
extern void SuperSonicGetPos(s32 *outX, s32 *outY);
extern void SuperSonicSetPos(s32 x, s32 y);
extern Sprite *SuperSonicGetSprite(void);
extern u16 SuperSonicGetRotation(void);
extern void sub_802B81C(void);
extern bool32 sub_802BA8C(void);
extern void sub_802BB54(void);
extern void sub_802C704(u8 index, s32 *outX, s32 *outY);
extern void sub_802C798(void);
# 11 "build/collect_rings/src/sa2/game/stage/camera.c" 2

# 1 "../../../include/game/stage/camera.h" 1






# 1 "../../../include/game/sa1_sa2_shared/camera.h" 1




# 1 "../../../include/tilemap.h" 1
# 6 "../../../include/game/sa1_sa2_shared/camera.h" 2




typedef s32 CamCoord;
# 22 "../../../include/game/sa1_sa2_shared/camera.h"
typedef void (*BgUpdate)(s32, s32);





typedef struct Camera {
                    CamCoord x;
                    CamCoord y;






               s32 unk8;
               s32 unkC;
               s32 unk10;
               s32 unk14;
               s32 shiftX;
               s32 shiftY;
               s32 unk20;
               s32 unk24;




               s32 minY;
               s32 maxY;
               s32 minX;
               s32 maxX;

               s32 dx;
               s32 dy;
               s16 unk40;
               s32 unk44;
               s32 unk48;
               s32 unk4C;



               u16 unk50;

               u16 unk52;
               u16 unk54;
               s16 unk56;
               BgUpdate fnBgUpdate;
               struct Task *movementTask;
               s16 shakeOffsetX;
               s16 shakeOffsetY;
               s16 unk64;
               u8 spectatorTarget;

} Camera;

extern struct Camera gCamera;
# 8 "../../../include/game/stage/camera.h" 2

void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 13 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/game/stage/stage.h" 1







void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 14 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/game/stage/player.h" 1




# 1 "../../../include/game/sa1_sa2_shared/player.h" 1




# 1 "../../../include/constants/move_states.h" 1
# 6 "../../../include/game/sa1_sa2_shared/player.h" 2




typedef struct {
              SpriteTransform transform;
              Sprite s;
              Hitbox reserved;
} PlayerSpriteInfo;

extern PlayerSpriteInfo gPlayerLimbsPSI;
extern PlayerSpriteInfo gPlayerBodyPSI;



typedef struct {
               u8 flags;
               s8 unkAD;
               u16 unkAE;
               u16 unkB0;
} SonicFlags;

typedef struct {
               s16 flyingDuration;
               u16 unkAE;
               s8 unkB0;
} CreamFlags;

typedef struct {
               u8 flags;
               s8 shift;
               s8 unkAE;
               s8 unkAF;


               s32 flyingDuration;
} TailsFlags;

typedef struct {
               u8 flags;
               s8 shift;
               s8 unkAE;
} KnucklesFlags;

typedef struct {
               u8 unkAC;
} AmyFlags;
# 89 "../../../include/game/sa1_sa2_shared/player.h"
struct Player_;
typedef void (*PlayerCallback)(struct Player_ *);

typedef struct Player_ {
               PlayerCallback callback;
               u16 unk4;

               s32 qWorldX;
               s32 qWorldY;

               s16 qSpeedAirX;
               s16 qSpeedAirY;
               s16 qSpeedGround;



               s8 spriteOffsetX;
               s8 spriteOffsetY;
               u8 filler18[8];


               u32 moveState;

               u8 rotation;
               u8 unk25;
               s16 spindashAccel;
               u8 unk28;
               u8 unk29;
               s16 unk2A;
               s16 timerInvulnerability;
               s16 timerInvincibility;
               u16 timerSpeedup;
               u16 confusionTimer;
               u16 itemEffect20Timer;
               s8 disableTrickTimer;
               u8 itemEffect;
               u8 layer;
               void *stoodObj;
               s32 maxSpeed;
               s32 topSpeed;
               s32 acceleration;
               s32 deceleration;
               u16 rollingDeceleration;
               u16 boostThreshold;
               u16 walkAnim;
               u16 unk56;
               s16 boostSpeed;
               bool8 isBoosting;
               u8 trickDir;
               u16 heldInput;
               u16 frameInput;
               s8 playerID;
               s8 unk61;
               u8 unk62;
               u8 unk63;
               s16 charState;
               s16 prevCharState;
               AnimId anim;
               u16 variant;
               bool8 unk6C;







               u8 transition;
               u8 unk6E;
               u8 prevTransition;
               bool8 unk70;
               u8 unk71;

               s16 unk72;
               s16 checkPointX;
               s16 checkPointY;
               u32 checkpointTime;
               u16 unk7C;
               u16 unk7E;
               s16 unk80;
               s16 unk82;



               s8 defeatScoreIndex;

               s8 character;
               s8 secondsUntilDrown;
               s8 framesUntilDrownCountDecrement;
               s8 framesUntilWaterSurfaceEffect;
               u8 filler88[3];
               struct Task *spriteTask;
               PlayerSpriteInfo *spriteInfoBody;
               PlayerSpriteInfo *spriteInfoLimbs;
# 195 "../../../include/game/sa1_sa2_shared/player.h"
               u8 unk98;
               s8 unk99[16];

               u8 fillerA9[0x3];






    union {
        SonicFlags sf;
        CreamFlags cf;
        TailsFlags tf;
        KnucklesFlags kf;
        AmyFlags af;
    } w;
} Player;

extern Player gPlayer;
# 6 "../../../include/game/stage/player.h" 2


# 1 "../../../include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 9 "../../../include/game/stage/player.h" 2
# 1 "../../../include/game/parameters/characters.h" 1
# 10 "../../../include/game/stage/player.h" 2






typedef s32 type8029A28;

void Player_SetMovestate_IsInScriptedSequence(void);
void Player_ClearMovestate_IsInScriptedSequence(void);

void InitializePlayer(Player *p);
void DestroyPlayerTasks(Player *player);
void Player_TransitionCancelFlyingAndBoost(Player *p);
void Player_HandleSpriteYOffsetChange(Player *, s32);
void sub_8023260(Player *);
void sub_80232D0(Player *);
void Player_AirInputControls(Player *);
void Player_TouchGround(Player *p);
void Player_Uncurl(Player *p);
void Player_HandlePhysicsWithAirInput(Player *p);
void sub_8028204(Player *p);
void sub_80282EC(Player *p);
void sub_80283C4(Player *p);
void sub_8029C84(Player *p);
void sub_8029FA4(Player *p);

void Player_DisableInputAndBossTimer(void);
void Player_DisableInputAndBossTimer_FinalBoss(void);


void SetStageSpawnPos(u32 character, u32 level, u32 p2, Player *player);
void CallSetStageSpawnPos(u32 character, u32 level, u32 p2, Player *p);

s32 sub_8029B88(Player *player, u8 *p1, s32 *out);
s32 sub_8029AC0(Player *player, u8 *p1, s32 *out);
s32 sub_8029B0C(Player *player, u8 *p1, s32 *out);

type8029A28 sub_8029A28(Player *player, u8 *p1, type8029A28 *out);
type8029A28 sub_8029A74(Player *player, u8 *p1, type8029A28 *out);

bool32 Player_TryJump(Player *);
bool32 Player_TryAttack(Player *);
# 81 "../../../include/game/stage/player.h"
extern const u16 sCharStateAnimInfo[][2];
extern const AnimId gPlayerCharacterIdleAnims[];
# 15 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 1 "../../../include/game/stage/terrain_collision.h" 1






typedef s32 (*Func801F100)(s32, s32, s32);
s32 sub_801EB44(s32, s32, s32);
s32 sub_801EC3C(s32, s32, s32);

typedef s32 (*Func801F07C)(s32, s32, s32, u8 *);
s32 sub_801ED24(s32, s32, s32, u8 *);
s32 sub_801EE64(s32, s32, s32, u8 *);
s32 sub_801F07C(s32, s32, s32, s32, u8 *, Func801F07C);


s32 sub_801E4E4(s32, s32, s32, s32, u8 *, Func801F07C);
s32 sub_801E6D4(s32, s32, s32, s32, u8 *, Func801F07C);

void sub_801F044(void);
s32 sub_801F100(s32, s32, s32, s32, Func801F100);

extern const Collision *gRefCollision;
extern const Collision *const gCollisionTable[];
# 16 "build/collect_rings/src/sa2/game/stage/camera.c" 2

# 1 "../../../include/constants/tilemaps.h" 1
# 18 "build/collect_rings/src/sa2/game/stage/camera.c" 2
# 63 "build/collect_rings/src/sa2/game/stage/camera.c"
struct Backgrounds {
    Background unk0;
    Background unk40;
    Background unk80;
    Background unkC0;
};


struct Backgrounds __attribute__((aligned(16))) gStageBackgroundsRam = {};





struct Camera __attribute__((aligned(8))) gCamera = {};

void RenderMetatileLayers(s32, s32);

void Task_CallUpdateCamera(void);
void TaskDestructor_Camera(struct Task *);
void Task_UpdateCamera(void);


void CreateStageBg_Default(void);
void CreateStageBg_Dummy(void);
void StageBgUpdate_Dummy(s32 x, s32 y);


void sub_801E3F0(void);
void HBlankCB_801E434(int_vcount vcount);
void HBlankCB_801E454(int_vcount vcount);
void nullsub_801E494(void);
void HBlankCB_BgUpdateZone5ActBoss(int_vcount vcount);
void HBlankCB_BgUpdateZoneFinalActXX(int_vcount vcount);


void CreateStageBg_Zone1(void);
void StageBgUpdate_Zone1Acts12(s32 a, s32 b);
void StageBgUpdate_Zone1ActBoss(s32 a, s32 b);

void CreateStageBg_Zone2(void);
void StageBgUpdate_Zone2Acts12(s32 a, s32 b);
void StageBgUpdate_Zone2ActBoss(s32 a, s32 b);

void CreateStageBg_Zone3(void);
void StageBgUpdate_Zone3Acts12(s32 a, s32 b);
void StageBgUpdate_Zone3ActBoss(s32 a, s32 b);

void CreateStageBg_Zone4(void);
void StageBgUpdate_Zone4Acts12(s32 a, s32 b);
void StageBgUpdate_Zone4ActBoss(s32 a, s32 b);

void CreateStageBg_Zone5(void);
void StageBgUpdate_Zone5Acts12(s32 a, s32 b);
void StageBgUpdate_Zone5ActBoss(s32 a, s32 b);

void CreateStageBg_Zone6_Acts(void);
void CreateStageBg_Zone6_Boss(void);
void StageBgUpdate_Zone6Acts12(s32 a, s32 b);
void StageBgUpdate_Zone6ActBoss(s32 a, s32 b);

void CreateStageBg_Zone7(void);
void StageBgUpdate_Zone7Acts12(s32, s32);
void StageBgUpdate_Zone7ActBoss(s32, s32);
void Zone7BgUpdate_Inside(s32, s32);
void Zone7BgUpdate_Outside(s32, s32);

void CreateStageBg_ZoneFinal_0(void);
void StageBgUpdate_Dummy(s32, s32);
void StageBgUpdate_ZoneFinalActXX(s32, s32);
void StageBgUpdate_ZoneFinalActTA53(s32, s32);

const Background gStageCameraBgTemplates[4] = {
    [0] = {
        .graphics = {
            .src = ((void *)0),
            .dest = (void*)0x6000000,
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(0x6000000 + (0x800 * (30))),
        .layout = ((void *)0),
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (240 / 8) + 1,
        .targetTilesY = (160 / 8) + 1,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x40 | 0x20 | 0x10 | 0x8 | (1),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = ((void *)0),
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [1] = {
        .graphics = {
            .src = ((void *)0),
            .dest = (void*)0x6000000,
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(0x6000000 + (0x800 * (31))),
        .layout = ((void *)0),
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (240 / 8) + 1,
        .targetTilesY = (160 / 8) + 1,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x40 | 0x20 | (2),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = ((void *)0),
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [2] = {
        .graphics = {
            .src = ((void *)0),
            .dest = (void*)(0x6000000 + (0x800 * (16))),
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(0x6000000 + (0x800 * (29))),
        .layout = ((void *)0),
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = 32,
        .targetTilesY = 32,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x10 | (3),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = ((void *)0),
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [3] = {
        .graphics = {
            .src = ((void *)0),
            .dest = (void*)(0x6000000 + ((3) << 14)),
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(0x6000000 + (0x800 * (28))),
        .layout = ((void *)0),
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = 32,
        .targetTilesY = 32,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x10 | (0),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = ((void *)0),
        .mapWidth = 0,
        .mapHeight = 0,
    },
};
# 275 "build/collect_rings/src/sa2/game/stage/camera.c"
static const VoidFn sStageBgInitProcedures[1] = {
    [((0)*(3 + 1)) + (0)] = CreateStageBg_Zone1,
# 312 "build/collect_rings/src/sa2/game/stage/camera.c"
};

static const BgUpdate sStageBgUpdateFuncs[1] = {

    [((0)*(3 + 1)) + (0)] = StageBgUpdate_Dummy,
# 375 "build/collect_rings/src/sa2/game/stage/camera.c"
};

static const s8 sStageBgDimensions[1][4] = {

    [((0)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 29 },
# 415 "build/collect_rings/src/sa2/game/stage/camera.c"
};

void InitCamera(u32 level)
{
    u32 txtSize;

    struct Backgrounds *bgs;
    const Background *bgTemplates;
    Player *player = &gPlayer;
    struct Camera *camera = &gCamera;
    const s8 *bgDim = sStageBgDimensions[level];

    gDispCnt = (0x1000 | 0x2000 | 0x0200 | 0x0400 | 0x0800 | 0x0040);
# 436 "build/collect_rings/src/sa2/game/stage/camera.c"
    gBgCntRegs[1] = 0x0000 | ((1) | ((30) << 8) | 0x0000 | ((0) << 2));
    gBgCntRegs[2] = 0x0000 | ((2) | ((31) << 8) | 0x0000 | ((0) << 2));




    txtSize = ((((bgDim)[0]) + 0x1F) >> 6 | ((((bgDim)[1]) + 0x1F) >> 6) << 1) << 0xE;
    gBgCntRegs[3] = txtSize | (3) | ((((bgDim)[3])) << 8) | ((((bgDim)[2])) << 2);







    bgs = &gStageBackgroundsRam;
    bgTemplates = gStageCameraBgTemplates;

    memcpy(&gStageBackgroundsRam.unk40, &bgTemplates[0], sizeof(Background));
    bgs->unk40.tilemapId = (((level)*3) + 0);

    memcpy(&gStageBackgroundsRam.unk80, &bgTemplates[1], sizeof(Background));
    bgs->unk80.tilemapId = (((level)*3) + 1);

    memcpy(&gStageBackgroundsRam.unkC0, &bgTemplates[2], sizeof(Background));
    bgs->unkC0.tilemapId = (((level)*3) + 2);

    bgs->unkC0.graphics.dest = (void *)(0x6000000 + ((((bgDim)[2])) << 14));
    bgs->unkC0.layoutVram = (void *)(0x6000000 + (0x800 * (((bgDim)[3]))));
    bgs->unkC0.targetTilesX = ((bgDim)[0]);
    bgs->unkC0.targetTilesY = ((bgDim)[1]);

    ({ gBgSprites_Unknown1[(1)] = 0; gBgSprites_Unknown2[(1)][0] = 0; gBgSprites_Unknown2[(1)][1] = 0; gBgSprites_Unknown2[(1)][2] = 255; gBgSprites_Unknown2[(1)][3] = 32; });;
    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;




    {
        bgs->unk40.flags |= 0x200 | 0x8;
        bgs->unk80.flags |= 0x200 | 0x8;
    }
# 492 "build/collect_rings/src/sa2/game/stage/camera.c"
    {
        gRefCollision = *(Collision **)(0x02000000 + 0x33004);
    }

    camera->minY = 0;
    camera->maxY = gRefCollision->pxHeight;
    camera->minX = 0;
    camera->maxX = gRefCollision->pxWidth;
# 523 "build/collect_rings/src/sa2/game/stage/camera.c"
    {
        camera->x = ((int)((player->qWorldX) >> 8)) - (240 / 2);
        camera->y = ((int)((player->qWorldY) >> 8)) - ((160 / 2) + 4);

        if (camera->x < 0) {
            camera->x = 0;
        }

        if (camera->y < 0) {
            camera->y = 0;
        }

        camera->unk10 = camera->x;
        camera->unk14 = camera->y;
        camera->unk64 = player->spriteOffsetY - 4;
    }

    camera->unk8 = 0x1000;
    camera->unkC = 0xc;
    camera->unk56 = 0;
    camera->shiftX = 0;
    camera->shiftY = 0;
    camera->unk20 = 0;
    camera->unk24 = 0;
    camera->unk40 = 0;
    camera->unk44 = 8;
    camera->unk48 = 0;
    camera->unk4C = 0;
    camera->unk50 = 0;
    camera->unk52 = 0;
    camera->unk54 = 0;
    camera->shakeOffsetX = 0;
    camera->shakeOffsetY = 0;

    camera->movementTask = TaskCreate(Task_CallUpdateCamera, 0, 0xF00, 0, TaskDestructor_Camera);

    camera->fnBgUpdate = sStageBgUpdateFuncs[level];

    if (sStageBgInitProcedures[level] != ((void *)0)) {
        sStageBgInitProcedures[level]();
    }
}





void UpdateCamera(void)
{
    Player *player = &gPlayer;
    struct Camera *camera = &gCamera;
    s32 newX, newY;
    newX = camera->x;
    newY = camera->y;
    camera->dx = camera->x;
    camera->dy = camera->y;

    newX = ({ s32 clamped; if ((newX) < (camera->minX)) { clamped = (camera->minX); } else { clamped = (newX) > (camera->maxX - (240 + 1)) ? (camera->maxX - (240 + 1)) : (newX); } clamped; });
    newY = ({ s32 clamped; if ((newY) < (camera->minY)) { clamped = (camera->minY); } else { clamped = (newY) > (camera->maxY - (160 + 1)) ? (camera->maxY - (160 + 1)) : (newY); } clamped; });
# 663 "build/collect_rings/src/sa2/game/stage/camera.c"
    {
        if (camera->unk40 != 0) {
            camera->unk40--;
        } else {
            if (!(camera->unk50 & 1)) {
                s16 airSpeedX = player->qSpeedAirX;
                camera->unk10 = ((int)((player->qWorldX) >> 8)) + camera->shiftX - (240 / 2);
                camera->unk56 = (airSpeedX + (camera->unk56 * 15)) >> 4;
                camera->unk10 += (camera->unk56 >> 5);
            }
            if (!(camera->unk50 & 2)) {
                s32 unk64 = camera->unk64;
                s32 temp8 = player->spriteOffsetY - 4;
                if ((gStageFlags & 0x0080)) {
                    temp8 = -temp8;
                }

                if (unk64 != temp8) {
                    if (unk64 < temp8) {
                        unk64 += 5;
                        if (unk64 > temp8) {
                            unk64 = temp8;
                        }
                    } else {
                        unk64 -= 5;
                        if (unk64 < temp8) {
                            unk64 = temp8;
                        }
                    }
                    camera->unk64 = unk64;
                }

                camera->unk14 = ((int)((player->qWorldY) >> 8)) + camera->shiftY - (160 / 2) + camera->unk4C + unk64;
            }
        }

        if ((camera->unk10 - newX) > camera->unk44) {
            s32 temp = camera->unk10 - newX - camera->unk44;
            s32 temp2 = ((int)((camera->unk8) >> 8));
            if (temp2 > temp) {
                temp2 = temp;
            }
            newX += temp2;
        } else if ((camera->unk10 - newX) < -camera->unk44) {
            s32 temp = (camera->unk10 - newX) + camera->unk44;
            s32 temp2 = -((int)((camera->unk8) >> 8));
            if (temp2 < temp) {
                temp2 = temp;
            }

            newX += temp2;
        }

        newX = ({ s32 clamped; if ((newX) < (camera->minX)) { clamped = (camera->minX); } else { clamped = (newX) > (camera->maxX - 240) ? (camera->maxX - 240) : (newX); } clamped; });

        if (camera->unk8 < ((s32)((16)*256))) {
            camera->unk8 += ((s32)((0.125)*256));
        }

        if ((player->moveState & 0x00000002) && (player->character != CHARACTER_KNUCKLES || player->unk61 != 9)) {
            camera->unk48 += 4;
            camera->unk48 = (((camera->unk48) < (24)) ? (camera->unk48) : (24));
        } else {
            camera->unk48 -= 4;
            camera->unk48 = (((camera->unk48) > (0)) ? (camera->unk48) : (0));
        }

        if ((camera->unk14 - newY) > camera->unk48) {
            newY += (camera->unkC > ((camera->unk14 - newY) - camera->unk48)) ? ((camera->unk14 - newY) - camera->unk48) : camera->unkC;
        } else if ((camera->unk14 - newY) < -(camera->unk48)) {
            newY += (-camera->unkC < (camera->unk14 - newY) + camera->unk48) ? (camera->unk14 - newY) + camera->unk48 : -camera->unkC;
        }

        newY = ({ s32 clamped; if ((newY) < (camera->minY)) { clamped = (camera->minY); } else { clamped = (newY) > (camera->maxY - 160) ? (camera->maxY - 160) : (newY); } clamped; });


        newX = ({ s32 clamped; if ((newX) < (camera->minX)) { clamped = (camera->minX); } else { clamped = (newX) > (camera->maxX - 240) ? (camera->maxX - 240) : (newX); } clamped; });
        newY = ({ s32 clamped; if ((newY) < (camera->minY)) { clamped = (camera->minY); } else { clamped = (newY) > (camera->maxY - 160) ? (camera->maxY - 160) : (newY); } clamped; });
        newX = newX + camera->shakeOffsetX;
        newY = newY + camera->shakeOffsetY;
    }

    camera->x = newX;
    camera->y = newY;

    camera->dx -= newX;
    camera->dy -= newY;

    RenderMetatileLayers(newX, newY);

    if (camera->fnBgUpdate != ((void *)0)) {
        camera->fnBgUpdate(newX, newY);
    }
}

void RenderMetatileLayers(s32 x, s32 y)
{



    {
        Background *layer = &gStageBackgroundsRam.unk40;
        gBgScrollRegs[1][0] = x % 8u;
        gBgScrollRegs[1][1] = y % 8u;
        layer->scrollX = x;
        layer->scrollY = y;
        DrawBackground(layer);
        UpdateBgAnimationTiles(layer);

        layer = &gStageBackgroundsRam.unk80;
        gBgScrollRegs[2][0] = x % 8u;
        gBgScrollRegs[2][1] = y % 8u;
        layer->scrollX = x;
        layer->scrollY = y;
        DrawBackground(layer);
    }
}



void CreateStageBg_Zone1(void)
{
    Background *background = &gStageBackgroundsRam.unk0;
    gDispCnt |= 0x0100;
    gBgCntRegs[0] = ((27) << 8) | ((3) << 2) | (3);
# 802 "build/collect_rings/src/sa2/game/stage/camera.c"
    {
        const Background *templates = gStageCameraBgTemplates;
        memcpy(background, &templates[3], sizeof(Background));
        background->tilemapId = (((((0)*(3 + 1)) + (0))*3) + 2);

        background->graphics.dest = (void *)(0x6000000 + (0x800 * (24)));
        background->layoutVram = (void *)(0x6000000 + (0x800 * (27)));

        background->targetTilesX = 256 / 8;
        background->targetTilesY = 240 / 8;
    }

    DrawBackground(background);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
}
# 2198 "build/collect_rings/src/sa2/game/stage/camera.c"
void DestroyCameraMovementTask(void)
{
    TaskDestroy(gCamera.movementTask);
    gCamera.movementTask = ((void *)0);
}

void TaskDestructor_Camera(struct Task *unused)
{
    s32 i;
    gCamera.movementTask = ((void *)0);

    for (i = 0; i < 4; i++) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
# 2221 "build/collect_rings/src/sa2/game/stage/camera.c"
    gFlags &= ~0x4;
}

void Task_CallUpdateCamera(void)
{
    gDispCnt |= (0x0200 | 0x0400 | 0x0800 | 0x1000);
# 2236 "build/collect_rings/src/sa2/game/stage/camera.c"
    if (gGameMode == 5) {
        gDispCnt &= ~0x2000;
    }

    gCurTask->main = Task_UpdateCamera;
}

void Task_UpdateCamera(void)
{
    UpdateCamera();





    gOamMatrixIndex = 4;
}
# 2266 "build/collect_rings/src/sa2/game/stage/camera.c"
void StageBgUpdate_Dummy(s32 x, s32 y) { }
# 2411 "build/collect_rings/src/sa2/game/stage/camera.c"
void sub_801E3F0(void)
{
    struct Camera *cam = &gCamera;
    if (gStageTime & 0x1) {
        u16 rand = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x70000) >> 16;
        cam->shiftY = rand - 8;
    }
}
