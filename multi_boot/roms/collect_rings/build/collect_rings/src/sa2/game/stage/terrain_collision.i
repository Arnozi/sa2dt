# 0 "build/collect_rings/src/sa2/game/stage/terrain_collision.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "build/collect_rings/src/sa2/game/stage/terrain_collision.c"
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
# 2 "build/collect_rings/src/sa2/game/stage/terrain_collision.c" 2
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
# 3 "build/collect_rings/src/sa2/game/stage/terrain_collision.c" 2
# 1 "../../../include/game/stage/terrain_collision.h" 1




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
# 6 "../../../include/game/stage/terrain_collision.h" 2

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
# 4 "build/collect_rings/src/sa2/game/stage/terrain_collision.c" 2
# 1 "../../../include/game/stage/camera.h" 1






# 1 "../../../include/game/sa1_sa2_shared/camera.h" 1
# 10 "../../../include/game/sa1_sa2_shared/camera.h"
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
# 5 "build/collect_rings/src/sa2/game/stage/terrain_collision.c" 2
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



# 1 "../../../include/constants/zones.h" 1
# 5 "../../../include/game/parameters/characters.h" 2
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
# 6 "build/collect_rings/src/sa2/game/stage/terrain_collision.c" 2



const Collision *gRefCollision = ((void *)0);

static __attribute__((aligned(8))) u32 gUnknown_3000410[3];
static __attribute__((aligned(8))) u32 gUnknown_3000420[3];

s32 sub_801EF94(s32 p0, s32 p1, s32 layer);
# 102 "build/collect_rings/src/sa2/game/stage/terrain_collision.c"
extern const Collision CollHeader_zone_1_act_1_fg;
extern const Collision CollHeader_zone_1_act_2_fg;
extern const Collision CollHeader_zone_1_act_boss_fg;
extern const Collision CollHeader_zone_1_act_dummy_fg;
extern const Collision CollHeader_zone_2_act_1_fg;
extern const Collision CollHeader_zone_2_act_2_fg;
extern const Collision CollHeader_zone_2_act_boss_fg;
extern const Collision CollHeader_zone_3_act_1_fg;
extern const Collision CollHeader_zone_3_act_2_fg;
extern const Collision CollHeader_zone_3_act_boss_fg;
extern const Collision CollHeader_zone_4_act_1_fg;
extern const Collision CollHeader_zone_4_act_2_fg;
extern const Collision CollHeader_zone_4_act_boss_fg;
extern const Collision CollHeader_zone_5_act_1_fg;
extern const Collision CollHeader_zone_5_act_2_fg;
extern const Collision CollHeader_zone_5_act_boss_fg;
extern const Collision CollHeader_zone_6_act_1_fg;
extern const Collision CollHeader_zone_6_act_2_fg;
extern const Collision CollHeader_zone_6_act_boss_fg;
extern const Collision CollHeader_zone_7_act_1_fg;
extern const Collision CollHeader_zone_7_act_2_fg;
extern const Collision CollHeader_zone_7_act_boss_fg;
extern const Collision CollHeader_zone_final_act_xx_fg;
extern const Collision CollHeader_zone_final_act_ta53_fg;
extern const Collision CollHeader_zone_final_act_unused_fg;
# 145 "build/collect_rings/src/sa2/game/stage/terrain_collision.c"
s32 sub_801E4E4(s32 p0, s32 p1, s32 p2, s32 p3, u8 *data, Func801F07C func)
{
    u8 dummy[4];
    u8 *dummy_p;
    u8 *data1;
    s32 res;
    s32 it;

    if (data == ((void *)0))
        data = dummy;

    dummy_p = &dummy[0];
    dummy_p++;
    data1 = dummy_p;

    res = func(p0 + p3 * 0, p1, p2, data1);

    if (res == 0) {
        res = func(p0 + p3 * 1, p1, p2, data1);

        if (res == 0) {
            it = p3 * 2;
            res = func(p0 + it, p1, p2, data1);

            if (res == 0) {
                if (p3 > 0) { s32 v = (p0 % 8u); res = (((2) + 1) * 8); return res - v; } else { return (p0 % 8u) + ((2)*8 + 1); };
            } else if (res == 8) {
                *data = *data1;

                if (p3 > 0) { return ~(p0 % 8u) + ((2)*8); } else { return (p0 % 8u) + ((2 - 1) * 8); };
            } else {
                *data = *data1;

                if (res > 0) { res--; res -= (p0 % 8u); return res + ((2)*8); } else { return res + (p0 % 8u) + ((2)*8); };
            }

        } else if (res == 8) {
            *data = *data1;

            if (p3 > 0) { return ~(p0 % 8u) + ((1)*8); } else { return (p0 % 8u) + ((1 - 1) * 8); };
        } else {
            *data = *data1;

            if (res > 0) { res--; res -= (p0 % 8u); return res + ((1)*8); } else { return res + (p0 % 8u) + ((1)*8); };
        }
    } else if (res == 8) {
        *data = *data1;

        it = -p3;

        res = func(p0 + it, p1, p2, data1);

        if (res == 8) {
            *data = *data1;

            it -= p3;

            res = func(p0 + it, p1, p2, data1);

            if (res == 8) {
                *data = *data1;

                if (p3 > 0) { return ~(p0 % 8u) - ((2)*8); } else { return (p0 % 8u) - ((2 + 1) * 8); };
            } else if (res == 0) {
                if (p3 > 0) { s32 v = (p0 % 8u); res = -(((2)-1) * 8 + 1); return res - v; } else { return (p0 % 8u) - ((2)*8); };
            } else {
                *data = *data1;

                if (res > 0) { res--; res -= (p0 % 8u); return res + ((-2)*8); } else { return res + (p0 % 8u) + ((-2)*8); };
            }
        } else if (res == 0) {
            if (p3 > 0) { return ~(p0 % 8u) + ((-0)*8); } else { return (p0 % 8u) + ((-0 - 1) * 8); };
        } else {
            *data = *data1;

            if (res > 0) { res--; res -= (p0 % 8u); return res + ((-1)*8); } else { return res + (p0 % 8u) + ((-1)*8); };
        }
    } else {
        *data = *data1;

        if (res <= 0) {
            return res + (p0 % 8u) - 0 * 8;
        } else {
            return ((--res) - (p0 % 8u)) - 0 * 8;
        }
    }
}







s32 sub_801E6D4(s32 p0, s32 p1, s32 p2, s32 p3, u8 *data, Func801F07C func)
{
    u8 dummy[4];
    u8 *dummy_p;
    u8 *data1;
    s32 res;
    s32 r4;

    if (data == ((void *)0))
        data = dummy;

    dummy_p = &dummy[0];
    dummy_p++;
    data1 = dummy_p;

    res = func(p0 + p3 * 0, p1, p2, data1);

    if (res == 0) {

        res = func(p0 + p3 * 1, p1, p2, data1);

        if (res == 0) {

            r4 = p3 * 2;
            res = func(p0 + r4, p1, p2, data1);

            if (res == 0) {

                r4 += p3;
                res = func(p0 + r4, p1, p2, data1);

                if (res == 0) {

                    r4 += p3;
                    res = func(p0 + r4, p1, p2, data1);

                    if (res == 0) {

                        r4 += p3;
                        res = func(p0 + r4, p1, p2, data1);

                        if (res == 0) {

                            if (p3 > 0) { s32 v = (p0 % 8u); res = (((5) + 1) * 8); return res - v; } else { return (p0 % 8u) + ((5)*8 + 1); };
                        } else if (res == 8) {

                            *data = *data1;

                            if (p3 > 0) { return ~(p0 % 8u) + ((5)*8); } else { return (p0 % 8u) + ((5 - 1) * 8); };
                        } else {

                            *data = *data1;

                            if (res > 0) { res--; res -= (p0 % 8u); return res + ((5)*8); } else { return res + (p0 % 8u) + ((5)*8); };
                        }
                    } else if (res == 8) {

                        *data = *data1;

                        if (p3 > 0) { return ~(p0 % 8u) + ((4)*8); } else { return (p0 % 8u) + ((4 - 1) * 8); };
                    } else {

                        *data = *data1;

                        if (res > 0) { res--; res -= (p0 % 8u); return res + ((4)*8); } else { return res + (p0 % 8u) + ((4)*8); };
                    }
                } else if (res == 8) {

                    *data = *data1;

                    if (p3 > 0) { return ~(p0 % 8u) + ((3)*8); } else { return (p0 % 8u) + ((3 - 1) * 8); };
                } else {

                    *data = *data1;

                    if (res > 0) { res--; res -= (p0 % 8u); return res + ((3)*8); } else { return res + (p0 % 8u) + ((3)*8); };
                }
            } else if (res == 8) {

                *data = *data1;

                if (p3 > 0) { return ~(p0 % 8u) + ((2)*8); } else { return (p0 % 8u) + ((2 - 1) * 8); };
            } else {

                *data = *data1;

                if (res > 0) { res--; res -= (p0 % 8u); return res + ((2)*8); } else { return res + (p0 % 8u) + ((2)*8); };
            }
        } else if (res == 8) {

            *data = *data1;

            if (p3 > 0) { return ~(p0 % 8u) + ((1)*8); } else { return (p0 % 8u) + ((1 - 1) * 8); };
        } else {

            *data = *data1;

            if (res > 0) { res--; res -= (p0 % 8u); return res + ((1)*8); } else { return res + (p0 % 8u) + ((1)*8); };
        }
    } else if (res == 8) {

        *data = *data1;

        r4 = -p3;

        res = func(p0 + r4, p1, p2, data1);
        if (res == 8) {

            *data = *data1;
            r4 -= p3;

            res = func(p0 + r4, p1, p2, data1);
            if (res == 8) {

                *data = *data1;
                r4 -= p3;

                res = func(p0 + r4, p1, p2, data1);
                if (res == 8) {

                    *data = *data1;
                    r4 -= p3;

                    res = func(p0 + r4, p1, p2, data1);
                    if (res == 8) {
                        *data = *data1;
                        r4 -= p3;

                        res = func(p0 + r4, p1, p2, data1);
                        if (res == 8) {
                            *data = *data1;
                            r4 -= p3;

                            res = func(p0 + r4, p1, p2, data1);
                            if (res == 8) {
                                *data = *data1;

                                if (p3 > 0) { return ~(p0 % 8u) + ((-5)*8); } else { return (p0 % 8u) + ((-5 - 1) * 8); };
                            } else if (res == 0) {


                                if (p3 > 0) { s32 v = (p0 % 8u); res = -(((5)-1) * 8 + 1); return res - v; } else { return (p0 % 8u) - ((5)*8); };
                            } else {

                                *data = *data1;

                                if (res > 0) { res--; res -= (p0 % 8u); return res + ((-5)*8); } else { return res + (p0 % 8u) + ((-5)*8); };
                            }
                        } else if (res == 0) {

                            if (p3 > 0) { s32 v = (p0 % 8u); res = -(((4)-1) * 8 + 1); return res - v; } else { return (p0 % 8u) - ((4)*8); };
                        } else {

                            *data = *data1;

                            if (res > 0) { res--; res -= (p0 % 8u); return res + ((-4)*8); } else { return res + (p0 % 8u) + ((-4)*8); };
                        }
                    } else if (res == 0) {

                        if (p3 > 0) { s32 v = (p0 % 8u); res = -(((3)-1) * 8 + 1); return res - v; } else { return (p0 % 8u) - ((3)*8); };
                    } else {

                        *data = *data1;

                        if (res > 0) { res--; res -= (p0 % 8u); return res + ((-3)*8); } else { return res + (p0 % 8u) + ((-3)*8); };
                    }
                } else {

                    if (res == 0) {
                    _0801EA82:
                        if (p3 > 0) { s32 v = (p0 % 8u); res = -(((2)-1) * 8 + 1); return res - v; } else { return (p0 % 8u) - ((2)*8); };
                    } else {

                        *data = *data1;

                    _0801EAA0:
                        if (res > 0) { res--; res -= (p0 % 8u); return res + ((-2)*8); } else { return res + (p0 % 8u) + ((-2)*8); };
                    }
                }
            } else if (res == 0) {


                if (p3 > 0) {

                    goto _0801EA82;



                } else {
                    return (p0 % 8u) - 2 * 8;
                }
            } else {
                *data = *data1;

                if (res > 0) {

                    goto _0801EAA0;




                } else {
                    return (res + (p0 % 8u)) - 2 * 8;
                }
            }
        } else if (res == 0) {


            if (p3 > 0) {
                return ~(p0 % 8u);
            } else {
                return (-8 | p0);
            }
        } else {

            *data = *data1;

            if (res > 0) { res--; res -= (p0 % 8u); return res + ((-1)*8); } else { return res + (p0 % 8u) + ((-1)*8); };
        }
    } else {

        *data = *data1;

        if (res <= 0) {
            return res + (p0 % (unsigned)8);
        } else {

            return (--res) - (p0 % 8u);
        }
    }
}


s32 sub_801EB44(s32 p0, s32 p1, s32 layer)
{
    u32 r0;
    s32 yPixel;
    s32 mtTileIndex;
    u32 tile;
    s32 hv;
    const Collision *coll;
    s32 hIndex;

    p0 = ({ s32 clamped; if ((p0) >= (0)) { clamped = (p0) > (gRefCollision->pxWidth - 1) ? (gRefCollision->pxWidth - 1) : (p0); } else { clamped = (0); } clamped; });
    p1 = ({ s32 clamped; if ((p1) >= (0)) { clamped = (p1) > (gRefCollision->pxHeight - 1) ? (gRefCollision->pxHeight - 1) : (p1); } else { clamped = (0); } clamped; });

    tile = sub_801EF94(p0, p1, layer & 0x01);
    mtTileIndex = tile & 0x03FF;

    yPixel = p1 % (unsigned)8;

    if (tile & 0x0800) {
        yPixel = (8 - 1) - yPixel;
    }

    coll = gRefCollision;
    hIndex = (mtTileIndex * 8);
    hv = coll->height_map[hIndex + yPixel];
    hv &= 0xF;

    if ((hv & 0x8) == +8) {
        hv |= ~0xF;
    }

    if (hv == -8) {
        hv = 8;
    }

    if (layer & 0x80) {
        s32 flags = gRefCollision->flags[mtTileIndex / (unsigned)8];


        flags >>= ((mtTileIndex % (unsigned)8) * 2);

        if (flags & 0x1) {
            hv = 0;
        }
    }

    if (tile & 0x0400) {
        if ((hv != 8) && (hv != 0)) {
            r0 = hv + 8;
            r0 = (hv > 0) ? hv - 8 : r0;

        } else {
            r0 = hv;
        }
        hv = r0;
    }

    return hv;
}

s32 sub_801EC3C(s32 p0, s32 p1, s32 layer)
{
    u32 r0;
    s32 xPixel;
    s32 mtTileIndex;
    u32 tile;
    s32 hv;
    const Collision *coll;
    s32 hIndex;

    p1 = ({ s32 clamped; if ((p1) >= (0)) { clamped = (p1) > (gRefCollision->pxWidth - 1) ? (gRefCollision->pxWidth - 1) : (p1); } else { clamped = (0); } clamped; });
    p0 = ({ s32 clamped; if ((p0) >= (0)) { clamped = (p0) > (gRefCollision->pxHeight - 1) ? (gRefCollision->pxHeight - 1) : (p0); } else { clamped = (0); } clamped; });

    tile = sub_801EF94(p1, p0, layer & 0x01);
    mtTileIndex = tile & 0x03FF;

    xPixel = p1 % (unsigned)8;

    if (tile & 0x0400) {
        xPixel = (8 - 1) - xPixel;
    }

    coll = gRefCollision;
    hIndex = (mtTileIndex * 8);
    hv = coll->height_map[hIndex + xPixel];
    hv >>= 4;

    if (hv == -8) {
        hv = 8;
    }

    if (layer & 0x80) {
        s32 flags = gRefCollision->flags[mtTileIndex / (unsigned)8];


        flags >>= ((mtTileIndex % (unsigned)8) * 2);

        if (flags & 0x1) {
            hv = 0;
        }
    }

    if (tile & 0x0800) {
        if ((hv != 8) && (hv != 0)) {
            r0 = hv + 8;
            r0 = (hv > 0) ? hv - 8 : r0;

        } else {
            r0 = hv;
        }
        hv = r0;
    }

    return hv;
}

s32 sub_801ED24(s32 p0, s32 p1, s32 p2, u8 *p3)
{
    u32 r0;
    s32 r3;
    s32 mtTileIndex;
    u32 res;
    const Collision *coll;
    s32 hIndex;
    u8 rotation;

    p0 = ({ s32 clamped; if ((p0) >= (0)) { clamped = (p0) > (gRefCollision->pxWidth - 1) ? (gRefCollision->pxWidth - 1) : (p0); } else { clamped = (0); } clamped; });
    p1 = ({ s32 clamped; if ((p1) >= (0)) { clamped = (p1) > (gRefCollision->pxHeight - 1) ? (gRefCollision->pxHeight - 1) : (p1); } else { clamped = (0); } clamped; });

    res = sub_801EF94(p0, p1, p2 & 0x1);
    mtTileIndex = res & 0x3FF;

    r3 = p1 % 8u;

    if (res & 0x800) {
        r3 = (8 - 1) - r3;
    }

    coll = gRefCollision;
    hIndex = mtTileIndex * 8;
    r3 = coll->height_map[hIndex + r3] % 16u;

    if ((r3 & 0x8) == +8) {
        r3 |= ~0xF;
    }

    if (r3 == -8) {
        r3 = 8;
    }

    if (p2 & 0x80) {
        s32 flags = gRefCollision->flags[mtTileIndex / 8u];


        flags >>= ((mtTileIndex % 8u) * 2);

        if (flags & 0x1) {
            r3 = 0;
        }
    }

    if (res & 0x400) {
        if ((r3 != 8) && (r3 != 0)) {
            r0 = r3 + 8;
            r0 = (r3 > 0) ? r3 - 8 : r0;

        } else {
            r0 = r3;
        }
        r3 = r0;
    }

    rotation = gRefCollision->tile_rotation[mtTileIndex];

    if (res & 0x800) {
        u32 v2 = -0x80 - rotation;
        rotation = v2;
    }

    if (res & 0x400) {
        u8 v;
        if (r3 != 0) {
            u32 v2 = -rotation;
            v = v2;
        } else {
            v = rotation;
        }
        rotation = v;
    }

    *p3 = rotation;

    return r3;
}



s32 sub_801EE64(s32 p0in, s32 p1in, s32 p2in, u8 *p3in)
{





    typedef u32 r0r1_t;



    register r0r1_t r0 asm("r0");
    register r0r1_t r1 asm("r1");
    register s32 r3 asm("r3");
    register s32 p0 asm("r4") = p0in;
    register s32 p1 asm("r5") = p1in;
    register s32 r6 asm("r6");
    register s32 p2 asm("r8") = p2in;
    u32 r7;
    register s32 sb asm("sb");
    register u8 *p3 asm("sl") = p3in;
    register s32 res asm("r4");
# 704 "build/collect_rings/src/sa2/game/stage/terrain_collision.c"
    u8 rotation;

    if (p1 >= 0) {
        r0 = gRefCollision->pxWidth;
        r1 = r0 - 1;
        r0 = p1;
        if (r0 > r1) {
            r0 = r1;
        }
    } else {
        r0 = 0;
    }
    p1 = r0;


    if (p0 >= 0) {
        r0 = gRefCollision->pxHeight;
        r1 = r0 - 1;
        r0 = p0;
        if (r0 > r1) {
            r0 = r1;
        }
    } else {
        r0 = 0;
    }
    p0 = r0;


    sb = 1;

    p0 = sub_801EF94(p1, p0, p2 & sb);
    r7 = 0x3FF;
    r7 &= p0;

    r6 = 0x7;
    r3 = r6;
    r3 &= p1;

    r0 = 0x400;
    r0 &= p0;
    if (r0) {
        r3 = r6 - r3;
    }



    r3 = gRefCollision->height_map[(r7 << 3) + r3];

    if ((r3 >>= 4) == -8) {
        r3 = 8;
    }


    if (p2 & 0x80) {
        s32 flags = gRefCollision->flags[r7 / 8u];


        flags >>= ((r7 & r6) * 2);

        if (flags & sb) {
            r3 = 0;
        }
    }


    if (p0 & 0x800) {
        if ((r3 != 8) && (r3 != 0)) {
            r0 = r3 + 8;
            r0 = (r3 > 0) ? r3 - 8 : r0;

        } else {
            r0 = r3;
        }
        r3 = r0;
    }


    rotation = gRefCollision->tile_rotation[r7];

    if (p0 & 0x400) {
        rotation = -rotation;
    }

    if (p0 & 0x800) {
        u8 v;
        if (r3 != 0) {
            u32 v2 = (-0x80) - rotation;
            v = v2;
        } else {
            v = rotation;
        }
        rotation = v;
    }


    {

        register u8 *r1p asm("r1") = p3;
        *r1p = rotation;



    }

    return r3;
}





s32 sub_801EF94(s32 p0, s32 p1, s32 layer)
{
    s32 r0;

    register s32 r1 asm("r1");
    register s32 r3 asm("r3");
    register s32 r4 asm("r4");
    register s32 r5 asm("r5");
    s32 r7;
    register s32 r8 asm("r8");
# 833 "build/collect_rings/src/sa2/game/stage/terrain_collision.c"
    const Collision *coll;
    u32 mtIndex;
    s32 i;
    void *pMeta;
    u16 result;

    r4 = p0 >> 3;

    if (gUnknown_3000410[0] == r4) {
        r7 = gUnknown_3000410[2];
        r0 = gUnknown_3000410[1];
    } else {
        s32 divRes = Div(r4, 12);
        r1 = r4 - (divRes * 12);

        gUnknown_3000410[0] = r4;
        gUnknown_3000410[1] = divRes;
        gUnknown_3000410[2] = r1;

        r7 = gUnknown_3000410[2];
        r0 = gUnknown_3000410[1];
    }
    r8 = r0;


    r4 = p1 >> 3;
    if (gUnknown_3000420[0] == r4) {
        r5 = gUnknown_3000420[2];
        r3 = gUnknown_3000420[1];
    } else {
        s32 divRes = Div(r4, 12);
        r1 = r4 - (divRes * 12);

        r3 = divRes;
        gUnknown_3000420[0] = r4;
        gUnknown_3000420[1] = r3;
        gUnknown_3000420[2] = r1;

        r5 = r1;
    }

    coll = gRefCollision;
    mtIndex = (coll->map[layer])[(r3 * coll->levelX) + r8];


    r1 = ((r5 << 3) + (r5 << 2) + r7);


    asm("" ::"r"(r5));


    r3 = mtIndex * 256;
    mtIndex *= 32;
    i = r1 * 2;
    pMeta = (void *)coll->metatiles;
    pMeta += r3;
    pMeta += mtIndex;
    pMeta += i;
    result = *(u16 *)pMeta;

    return result;
}

void sub_801F044(void)
{
    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(&gUnknown_3000410); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gUnknown_3000410))/(32/8)))); dmaRegs[2]; }; };
    { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(&gUnknown_3000420); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gUnknown_3000420))/(32/8)))); dmaRegs[2]; }; };
}

s32 sub_801F07C(s32 p0, s32 p1, s32 p2, s32 p3, u8 *data, Func801F07C func)
{
    u8 dummy[4];
    u8 *dummy_p;

    s32 result;
    s32 funcRes;
    u8 *data1;

    if (data == ((void *)0))
        data = dummy;

    dummy_p = &dummy[0];
    dummy_p++;
    data1 = dummy_p;

    funcRes = func(p0, p1, p2, data1);

    if (funcRes == 0) {
        if (p3 > 0) {
            result = 8 - (p0 % 8u);
        } else {
            result = (p0 % 8u) + 1;
        }
    } else if (funcRes == 8) {
        *data = *data1;

        if (p3 > 0) {
            result = ~(p0 % 8u);
        } else {
            result = (-8) | p0;
        }
    } else {
        *data = *data1;

        if (funcRes > 0) {
            funcRes--;
            result = funcRes - (p0 % 8u);
        } else {
            result = funcRes + (p0 % 8u);
        }
    }

    return result;
}

s32 sub_801F100(s32 p0, s32 p1, s32 p2, s32 p3, Func801F100 func)
{
    s32 result;
    s32 funcRes = func(p0, p1, p2);

    if (funcRes == 0) {
        if (p3 > 0) {
            result = 8 - (p0 % 8u);
        } else {
            result = (p0 % 8u) + 1;
        }
    } else if (funcRes == 8) {
        if (p3 > 0) {
            result = ~(p0 % 8u);
        } else {
            result = (-8) | p0;
        }
    } else if (funcRes > 0) {
        funcRes--;
        result = funcRes - (p0 % 8u);
    } else {
        result = funcRes + (p0 % 8u);
    }

    return result;
}
