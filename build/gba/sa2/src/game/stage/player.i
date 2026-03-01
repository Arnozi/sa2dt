# 0 "src/game/stage/player.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/stage/player.c"
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
# 2 "src/game/stage/player.c" 2
# 1 "include/core.h" 1




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
# 23 "tools/agbcc/include/string.h"
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
# 6 "include/core.h" 2


# 1 "include/global.h" 1
# 9 "include/core.h" 2
# 1 "include/sprite.h" 1




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
# 10 "include/core.h" 2
# 1 "include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);




typedef u16 TaskPtr;


typedef u32 TaskPtr32;




typedef u16 IwramData;
# 55 "include/task.h"
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
# 93 "include/task.h"
struct IwramNode {
    IwramNodePtr next;
    s16 state;

    u8 __attribute__((aligned(sizeof(void *)))) space[0];
};
# 113 "include/task.h"
extern struct Task gTasks[128];
extern struct Task gEmptyTask;
extern struct Task *gTaskPtrs[128];
extern s32 gNumTasks;



extern struct Task *gNextTask;
extern struct Task *gCurTask;
extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

u32 TasksInit(void);
void TasksExec(void);
# 141 "include/task.h"
struct Task *TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor);


void TaskDestroy(struct Task *);
void *IwramMalloc(u16);
void IwramFree(void *p);
void TasksDestroyInPriorityRange(u16, u16);
# 11 "include/core.h" 2
# 1 "include/flags.h" 1
# 23 "include/flags.h"
extern u32 gFlags;
# 12 "include/core.h" 2
# 1 "include/tilemap.h" 1
# 10 "include/tilemap.h"
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
# 13 "include/core.h" 2
# 1 "include/input_recorder.h" 1
# 12 "include/input_recorder.h"
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
# 14 "include/core.h" 2
# 1 "include/animation_commands.h" 1
# 9 "include/animation_commands.h"
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
# 15 "include/core.h" 2

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
# 197 "include/core.h"
extern u32 gFlags;
extern u32 gFlagsPreVBlank;

extern u32 gFrameCount;
# 215 "include/core.h"
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
# 273 "include/core.h"
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
# 317 "include/core.h"
extern struct GraphicsData *gVramGraphicsCopyQueue[32];
extern u8 gVramGraphicsCopyQueueIndex;
# 357 "include/core.h"
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
# 3 "src/game/stage/player.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 4 "src/game/stage/player.c" 2
# 1 "include/malloc_vram.h" 1
# 5 "src/game/stage/player.c" 2
# 1 "include/lib/m4a/m4a.h" 1



# 1 "include/lib/m4a/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/lib/m4a/m4a_internal.h" 2
# 109 "include/lib/m4a/m4a_internal.h"
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
# 5 "include/lib/m4a/m4a.h" 2

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
# 6 "src/game/stage/player.c" 2

# 1 "include/game/amy_attack_heart_effect.h" 1
# 11 "include/game/amy_attack_heart_effect.h"
extern void CreateAmyAttackHeartEffect(u16);
# 8 "src/game/stage/player.c" 2
# 1 "include/game/boost_effect.h" 1




# 1 "include/sprite.h" 1
# 6 "include/game/boost_effect.h" 2
# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 7 "include/game/boost_effect.h" 2

void sub_801561C(void);
void sub_8015750(void);
void GetPreviousPlayerPos(Vec2_32 *pos, u8 pastFrameDelta);
void CreateBoostEffectTasks(void);
void BoostEffect_StorePlayerPos(void);
void BoostEffect_StorePlayerState(void);

extern const AnimId sCharacterPalettesBoostEffect[NUM_CHARACTERS];
# 9 "src/game/stage/player.c" 2
# 1 "include/game/boost_mode_particles.h" 1





void CreateBoostModeParticles(void);
# 10 "src/game/stage/player.c" 2
# 1 "include/game/bosses/common.h" 1






extern struct Task *gActiveBossTask;
typedef void (*TranslateBossFunction)(s32, s32);

typedef enum {
    BOSS_EGG_HAMMER_TANK_II = 0,
    BOSS_EGG_BOMBER_TANK = 1,
    BOSS_EGG_TOTEM = 2,
    BOSS_AERO_EGG = 3,
    BOSS_EGG_SAUCER = 4,
    BOSS_EGG_GO_ROUND = 5,
    BOSS_EGG_FROG = 6,
    BOSS_SUPER_EGG_ROBO_Z = 7,
    BOSS_TRUE_AREA_53_BOSS = 8
} EBoss;

typedef struct {
               Sprite s;
               s32 posX;
               s32 posY;
               s16 accelX;
               s16 accelY;
               u16 velocityY;
               u8 *numCreatedParts;
} Sprite_ExplosionParts;

typedef struct {
               void *vram;
               u32 unk4;
               AnimId anim;
               u16 variant;
               u16 rotation;
               u16 speed;
               u8 filler10[0x4];
               s32 spawnX;
               s32 spawnY;
               s16 velocity;
} ExplosionPartsInfo;


void CreateZoneBoss(u8 boss);
void CreateBossParticleWithExplosionUpdate(ExplosionPartsInfo *p0, u8 *numCreatedParts);
void CreateBossParticleStatic(ExplosionPartsInfo *info, u8 *numCreatedParts);
void Task_DestroyBossParts(void);
void sub_8039ED4(void);
void sub_8039F14(s32 p0, s32 p1);
void sub_8039F50(s32 p0, u8 p1);

extern const u32 gTileInfoBossScrews[][3];
# 11 "src/game/stage/player.c" 2
# 1 "include/game/cheese.h" 1






# 1 "include/game/multiplayer/mp_player.h" 1






typedef struct {


    Sprite s;
    Hitbox reserved;

    SpriteTransform transform;
    s32 unk44;
    s32 unk48;
    u32 unk4C;
    Vec2_16 pos;
    u16 unk54;
    u8 unk56;
    u8 unk57;
    u8 unk58[4];
    u32 unk5C;
    u8 unk60;
    u8 unk61;
    u16 unk62;
    u8 unk64;
    s16 unk66;
    s16 unk68;
    u16 unk6A;
} MultiplayerPlayer;

void CreateMultiplayerPlayer(u8);

void sub_8018818(void);

extern bool8 gShouldSpawnMPAttack2Effect;
# 8 "include/game/cheese.h" 2
# 1 "include/game/stage/player.h" 1




# 1 "include/game/sa1_sa2_shared/player.h" 1




# 1 "include/constants/move_states.h" 1
# 6 "include/game/sa1_sa2_shared/player.h" 2




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
# 89 "include/game/sa1_sa2_shared/player.h"
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
# 195 "include/game/sa1_sa2_shared/player.h"
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
# 6 "include/game/stage/player.h" 2



# 1 "include/game/parameters/characters.h" 1



# 1 "include/constants/zones.h" 1
# 5 "include/game/parameters/characters.h" 2
# 10 "include/game/stage/player.h" 2






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
# 81 "include/game/stage/player.h"
extern const u16 sCharStateAnimInfo[][2];
extern const AnimId gPlayerCharacterIdleAnims[];
# 9 "include/game/cheese.h" 2

typedef struct {
               s32 unk54;
               s32 unk58;
               s16 unk5C;
               s16 unk5E;
               s32 unk60;
               u8 unk64;
               Sprite *unk68;
} Cheese_UNK54;

typedef struct {
               s32 posX;
               s32 posY;

               u8 unk8;
               u8 unk9;
               u8 unkA;
               u16 unkC;
               s16 unkE;
               u16 unk10;
               s16 unk12;
               u32 unk14;
               struct Task *unk18;


               Sprite s;
               Hitbox reserved;
               Cheese_UNK54 unk54;
               MultiplayerPlayer *mpp;
} Cheese;

extern Cheese *gCheese;

void CreateCheese(Player *);
# 12 "src/game/stage/player.c" 2
# 1 "include/game/heart_particles_effect.h" 1



void CreateHeartParticles(void);
# 13 "src/game/stage/player.c" 2
# 1 "include/game/multiplayer/mp_attack_2_effect.h" 1
# 9 "include/game/multiplayer/mp_attack_2_effect.h"
typedef struct {
    u16 timer;
    u16 sizeChangeDelay;
    u16 sizeChangeTimer;
    u16 size;
} MultiPlayerBgCtrlRegs;
extern MultiPlayerBgCtrlRegs *gMPAttackEffect2Regs;

void CreateMPAttack2Effect(void);
# 14 "src/game/stage/player.c" 2

# 1 "include/game/parameters/bosses.h" 1
# 16 "src/game/stage/player.c" 2
# 1 "include/game/player_callbacks.h" 1






struct Task *CreateSonicAmySkidAttackEffect(s32 x, s32 y, u16 p2);
void Player_SonicAmy_InitSkidAttack(Player *);
void Player_SonicAmy_InitStopNSlam(Player *);
void Player_Sonic_InitHomingAttack(Player *);
bool32 Player_Sonic_TryForwardThrust(Player *);
void Player_Cream_InitFlying(Player *);
void Player_Cream_InitChaoRollingAttack(Player *);
void Player_Cream_InitMidAirChaoAttack(Player *);
void Player_Cream_InitChaoAttack(Player *);
void Player_Cream_InitStepAttack(Player *);
void Player_Tails_InitFlying(Player *);
void Player_Tails_InitTailSwipe(Player *);
void Player_Knuckles_InitPunch(Player *);
void Player_Knuckles_InitSpiralAttack(Player *);
void Player_Knuckles_InitGlide(Player *);
void Player_Knuckles_InitDrillClaw(Player *);
void Player_Amy_InitHammerAttack(Player *);
void Player_InitHomingAttackRecoil(Player *p);
void Player_UpdateHomingPosition(s32 qX, s32 qY);
# 17 "src/game/stage/player.c" 2
# 1 "include/game/sa1_sa2_shared/input_buffer.h" 1





void InputBuffer_NewFrameInput(u16 param0, u16 param1);
void InputBuffer_HandleFrameInput(Player *p);
void InitNewInputCounters(void);

extern const u8 *unk_8C87198[3];
extern const u8 *unk_8C871A4[3];
extern const u8 *unk_8C871B0[3];
extern const u8 *unk_8C871BC[3];
extern const u8 *unk_8C871C8[3];
# 18 "src/game/stage/player.c" 2
# 1 "include/game/sa1_sa2_shared/music_manager.h" 1





void CreateStageMusicManager(void);

extern const u16 gLevelSongs[];
# 19 "src/game/stage/player.c" 2
# 1 "include/game/save.h" 1





# 1 "include/game/sa1_sa2_shared/globals.h" 1



# 1 "include/multi_sio.h" 1
# 83 "include/multi_sio.h"
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
# 155 "include/multi_sio.h"
void MultiSioStart(void);
# 164 "include/multi_sio.h"
void MultiSioStop(void);







extern u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest);
# 224 "include/multi_sio.h"
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
# 257 "include/multi_sio.h"
extern void MultiSioSendDataSet(void *sendp, u32 loadReq);
# 272 "include/multi_sio.h"
extern u32 MultiSioRecvDataCheck(void *recvp);
# 5 "include/game/sa1_sa2_shared/globals.h" 2
# 75 "include/game/sa1_sa2_shared/globals.h"
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
# 7 "include/game/save.h" 2

# 1 "include/game/stage/player_controls.h" 1





struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);
# 9 "include/game/save.h" 2
# 23 "include/game/save.h"
typedef u16 PlayerNameChar;
typedef u16 TimeRecord;
# 67 "include/game/save.h"
struct TimeRecords {
    TimeRecord table[NUM_CHARACTERS][7][3][3];
};



struct MultiplayerScore {
    u32 playerId;
    PlayerNameChar playerName[6];

    bool8 slotFilled;

    u8 wins;
    u8 losses;
    u8 draws;
};

typedef struct SaveGame {
                u32 id;

                u8 difficultyLevel;
                bool8 timeLimitDisabled;
                u8 language;

                u8 unlockedLevels[NUM_CHARACTERS];
                u8 chaosEmeralds[NUM_CHARACTERS];

                bool8 soundTestUnlocked;
                bool8 bossTimeAttackUnlocked;

                u8 unlockedCharacters;
                bool8 chaoGardenUnlocked;

                bool8 completedCharacters[NUM_CHARACTERS];

                u8 extraZoneStatus;
                bool8 extraEndingCreditsPlayed;

                u8 multiplayerWins;
                u8 multiplayerLoses;
                u8 multiplayerDraws;

                u16 playerName[6];

                struct ButtonConfig buttonConfig;
                struct TimeRecords timeRecords;
                struct MultiplayerScore multiplayerScores[10];
                u32 score;
} SaveGame;

extern struct SaveGame *gLoadedSaveGame;
# 130 "include/game/save.h"
void InsertMultiplayerProfile(u32 playerId, u16 *name);
void RecordOwnMultiplayerResult(s16 result);
void RecordMultiplayerResult(u32 id, u16 *name, s16 result);

void SaveInit(void);
bool16 SaveGameExists(void);
s16 NewSaveGame(void);
s16 LoadSaveGame(void);
void LoadCompletedSaveGame(void);
bool32 WriteSaveGame(void);
# 20 "src/game/stage/player.c" 2
# 1 "include/game/stage/camera.h" 1






# 1 "include/game/sa1_sa2_shared/camera.h" 1




# 1 "include/tilemap.h" 1
# 6 "include/game/sa1_sa2_shared/camera.h" 2




typedef s32 CamCoord;
# 22 "include/game/sa1_sa2_shared/camera.h"
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
# 8 "include/game/stage/camera.h" 2

void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 21 "src/game/stage/player.c" 2
# 1 "include/game/stage/terrain_collision.h" 1






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
# 22 "src/game/stage/player.c" 2
# 1 "include/game/stage/dust_effect_braking.h" 1





struct Task *CreateBrakingDustEffect(s32, s32);
void CreateBrakingDustEffectRelatedTask(void);
void DestroyBrakingDustEffectRelatedTask(void);

typedef struct {
               u16 x;
               u16 y;
               u16 unk4;
               u16 unk6;
               Sprite s;
} BrakeDustEffect;

typedef struct {
    s8 unk0;
    struct Task *t;
} DustEffectBraking;

extern DustEffectBraking gDustEffectBrakingTask;
# 23 "src/game/stage/player.c" 2
# 1 "include/game/stage/dust_effect_spindash.h" 1



struct Task *CreateSpindashDustEffect();
# 24 "src/game/stage/player.c" 2
# 1 "include/game/stage/item_tasks.h" 1




# 1 "include/task.h" 1
# 6 "include/game/stage/item_tasks.h" 2

extern struct Task *CreateItemTask_Shield_Normal(s8);
extern struct Task *CreateItemTask_Invincibility(s8);
extern struct Task *CreateItemTask_Shield_Magnetic(s8);
extern struct Task *CreateItemTask_Confusion(s8);
# 25 "src/game/stage/player.c" 2
# 1 "include/game/stage/mp_sprite_task.h" 1






typedef struct {
               s32 x;
               s32 y;
               s16 unk8;
               s16 unkA;
               u8 fillerC[0x4];
               s16 unk10;
               u16 unk12;
               u16 unk14;
               AnimId playerAnim;
               u16 playerVariant;
               u8 mpPlayerID;
               Sprite s;
               SpriteTransform transform;
} MultiplayerSpriteTask;

extern struct Task *CreateMultiplayerSpriteTask(s16, s16, u8, s8, TaskMain, TaskDestructor);
extern void TaskDestructor_MultiplayerSpriteTask(struct Task *);

void CreateGrindEffect2(void);

struct Task *CreateStageGoalBonusPointsAnim(s32, s32, u16);
void Task_UpdateMpSpriteTaskSprite(void);
# 26 "src/game/stage/player.c" 2


# 1 "include/game/stage/player_super_sonic.h" 1





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
# 63 "include/game/stage/player_super_sonic.h"
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
# 29 "src/game/stage/player.c" 2
# 1 "include/game/stage/results.h" 1





# 1 "include/game/stage/screen_fade.h" 1
# 23 "include/game/stage/screen_fade.h"
typedef struct {

               s16 window;
               s16 flags;
# 35 "include/game/stage/screen_fade.h"
               s16 brightness;
               s16 speed;
               s16 bldCnt;
               s16 bldAlpha;
} ScreenFade;


extern u8 UpdateScreenFade(ScreenFade *);
void sub_802D5A0(ScreenFade *fade);
# 7 "include/game/stage/results.h" 2

typedef struct {
                ScreenFade fade;
                Sprite title[3];
                Sprite sprScores[3];
                Sprite separator;
                u32 timeBonusScore;
                u32 ringBonusScore;
                u32 spRingBonusScore;
                s32 counter;
                s32 unk16C;
} StageResultsBase;

u16 CreateStageResults(u32, u16, u8);
void StageResults_AnimateSeparator(void);
void StageResults_AnimateTitle(void);

extern const u16 gAnimsGotThroughZoneAndActNames[][3];
extern const u16 gStageResultsHeadlineTexts[][3];
extern const u16 gAnimsGotThroughCharacterNames[][3];
# 30 "src/game/stage/player.c" 2
# 1 "include/game/stage/rings_scatter.h" 1



extern struct Task *gRingsScatterTask;

void InitPlayerHitRingsScatter(void);
void DestroyRingsScatterTask(void);

void InitScatteringRings(s32 x, s32 y, s32 numRings);
# 31 "src/game/stage/player.c" 2
# 1 "include/game/stage/spawn_positions.h" 1





extern const s16 gSpawnPositions[][2];
extern const Vec2_32 gCheckpointPositions[];

extern const Vec2_32 gUnknown_080D650C[];
extern const Vec2_32 gUnknown_080D661C[];
# 32 "src/game/stage/player.c" 2
# 1 "include/game/stage/stage.h" 1







void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 33 "src/game/stage/player.c" 2
# 1 "include/game/stage/underwater_effects.h" 1






struct Task *SpawnDrowningCountdownNum(Player *p, s32 countdown);
struct Task *SpawnAirBubbles(s32 p0, s32 p1, s32 p2, s32 p3);
struct Task *SpawnBubblesAfterDrowning(Player *p);
bool32 RandomlySpawnAirBubbles(Player *p);

extern u8 gSmallAirBubbleCount;
# 34 "src/game/stage/player.c" 2
# 1 "include/game/time_attack/results.h" 1





u32 CreateTimeAttackResults(u32 finishTime);
# 35 "src/game/stage/player.c" 2
# 1 "include/game/multiplayer/mp_attack_1_effect.h" 1





void CreateMPAttackEffect(void);

extern s32 gUnused_03005B78;
extern bool8 gShouldSpawnMPAttackEffect;
# 36 "src/game/stage/player.c" 2
# 1 "include/game/water_effects.h" 1





typedef struct {

    u16 pal[32][16];
} WaterData;

typedef struct {



               bool8 isActive;
               u8 unk1;
               u8 unk2;
               u8 unk3;

               s16 currentWaterLevel;
               s16 targetWaterLevel;
               u32 unk8;
               u32 mask;


               struct Task *t;
               Sprite s;
} Water;

extern Water gWater;

void InitWaterPalettes(void);
void CreateRunOnWaterEffect(void);
struct Task *CreateWaterfallSurfaceHitEffect(s32 x, s32 y);
# 37 "src/game/stage/player.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 39 "src/game/stage/player.c" 2
# 1 "include/constants/char_states.h" 1
# 40 "src/game/stage/player.c" 2
# 1 "include/constants/player_transitions.h" 1
# 41 "src/game/stage/player.c" 2
# 1 "include/constants/songs.h" 1
# 42 "src/game/stage/player.c" 2
# 252 "src/game/stage/player.c"
typedef struct {
               u8 unk0;
               u32 unk4;
} player_0_Task;

Player __attribute__((aligned(8))) gPlayer = {};



PlayerSpriteInfo __attribute__((aligned(16))) gPlayerLimbsPSI = {};

PlayerSpriteInfo __attribute__((aligned(16))) gPlayerBodyPSI = {};

void sub_8022218(Player *);
void sub_8022284(Player *);
void Task_PlayerMain(void);
void AllocateCharacterStageGfx(Player *, PlayerSpriteInfo *);
void AllocateCharacterMidAirGfx(Player *, PlayerSpriteInfo *);
void TaskDestructor_Player(struct Task *);
void sub_802486C(Player *p, PlayerSpriteInfo *p2);
void sub_8024B10(Player *p, PlayerSpriteInfo *s);
void sub_8024F74(Player *p, PlayerSpriteInfo *s);
void Player_8026BCC(Player *);

s32 sub_8029BB8(Player *p, u8 *rot, s32 *out);

void Player_SpinAttack(Player *p);

void Player_Idle(Player *);
void Player_Rolling(Player *);
void Player_InitJump(Player *p);
void Player_Jumping(Player *);
void Player_8025F84(Player *);
void Player_Spindash(Player *);
void Player_DoGrinding(Player *);
void Player_PropellorSpring(Player *);
void Player_Corkscrew(Player *);
void Player_Hurt(Player *);
void Player_InitReachedGoal(Player *);
void Player_GoalSlowdown(Player *);
void Player_GoalBrake(Player *);
void Player_InitVictoryPoseTransition(Player *);
void Player_VictoryPose(Player *);
void Player_8027B98(Player *);
void Player_WindupDefaultTrick(Player *);
void Player_DefaultTrick(Player *);
void Player_8029074(Player *);
void Player_8029314(Player *);
void Player_8026060(Player *p);
void Player_InitUncurl(Player *p);
void Player_InitGrinding(Player *p);
void Player_InitGrindRailEndGround(Player *p);
void Player_GrindRailEndAir(Player *p);
void Player_InitPipeEntry(Player *p);
void Player_InitPipeExit(Player *p);
void Player_InitPropellorSpring(Player *p);
void Player_InitCorkscrew(Player *p);
void Player_InitHurt(Player *p);
void Player_InitReachedGoal(Player *p);
void Player_8028D74(Player *p);
void Player_TouchNormalSpring(Player *p);
void Player_InitRampOrDashRing(Player *p);
void Player_HandleBoostThreshold(Player *p);
void Player_802A258(Player *p);
void Player_InitDashRing(Player *p);

bool32 Player_TryMidAirAction(Player *);
void Player_HandleGroundMovement(Player *);
bool32 Player_TryTaunt(Player *);
bool32 Player_TryCrouchOrSpinAttack(Player *);
bool32 Player_TryInitSpindash(Player *);
void Player_InitCrouch(Player *);
void Player_InitIceSlide(Player *);
void PlayerFn_Cmd_HandlePhysics(Player *);
void Player_802A3C4(Player *);
void Player_CameraShift(Player *);
void Player_InitSpecialStageTransition(Player *);
void Player_InitKilledBoss(Player *);
void Player_InitReachedGoalMultiplayer(Player *);
void Player_Nop(Player *);
void Player_Skidding(Player *);
void Player_InitTaunt(Player *);
void Player_InitAttack(Player *);
void Player_HandleBoostState(Player *p);
void Player_ApplyBoostPhysics(Player *p);
void Player_HandleWalkAnim(Player *p);
void Player_HandleInputs(Player *p);
void CallPlayerTransition(Player *p);





const AnimId gPlayerCharacterIdleAnims[] = {
    ((0) + CHARACTER_SONIC * (91)),

    ((0) + CHARACTER_CREAM * (91)),
    ((0) + CHARACTER_TAILS * (91)),
    ((0) + CHARACTER_KNUCKLES * (91)),
    ((0) + CHARACTER_AMY * (91)),

};
# 363 "src/game/stage/player.c"
const u16 sCharStateAnimInfo[][2] = {
    [0] = { ((0) + 0 * (91)), 0 },
    [1] = { ((1) + 0 * (91)), 0 },
    [2] = { ((2) + 0 * (91)), 0 },
    [3] = { ((3) + 0 * (91)), 0 },
    [4] = { ((4) + 0 * (91)), 0 },
    [5] = { ((5) + 0 * (91)), 0 },
    [6] = { ((6) + 0 * (91)), 0 },
    [7] = { ((7) + 0 * (91)), 0 },
    [8] = { ((8) + 0 * (91)), 0 },
    [9] = { ((9) + 0 * (91)), 0 },
    [10] = { ((10) + 0 * (91)), 0 },
    [11] = { ((11) + 0 * (91)), 0 },
    [12] = { ((12) + 0 * (91)), 0 },
    [13] = { ((13) + 0 * (91)), 0 },
    [14] = { ((13) + 0 * (91)), 0 },
    [15] = { ((14) + 0 * (91)), 0 },
    [16] = { ((15) + 0 * (91)), 0 },
    [17] = { ((16) + 0 * (91)), 0 },
    [18] = { ((17) + 0 * (91)), 0 },
    [19] = { ((18) + 0 * (91)), 0 },
    [20] = { ((28) + 0 * (91)), 0 },
    [21] = { ((28) + 0 * (91)), 1 },
    [22] = { ((29) + 0 * (91)), 0 },
    [23] = { ((1) + 0 * (91)), 0 },
    [24] = { ((1) + 0 * (91)), 0 },
    [25] = { ((31) + 0 * (91)), 0 },
    [26] = { ((31) + 0 * (91)), 1 },
    [27] = { ((31) + 0 * (91)), 2 },
    [28] = { ((32) + 0 * (91)), 0 },
    [29] = { ((33) + 0 * (91)), 0 },
    [30] = { ((34) + 0 * (91)), 0 },
    [31] = { ((1) + 0 * (91)), 0 },
    [32] = { ((35) + 0 * (91)), 0 },
    [33] = { ((48) + 0 * (91)), 0 },
    [34] = { ((49) + 0 * (91)), 0 },
    [35] = { ((50) + 0 * (91)), 0 },
    [36] = { ((51) + 0 * (91)), 0 },
    [37] = { ((65) + 0 * (91)), 0 },
    [38] = { ((52) + 0 * (91)), 0 },
    [39] = { ((53) + 0 * (91)), 0 },
    [40] = { ((54) + 0 * (91)), 0 },
    [41] = { ((55) + 0 * (91)), 0 },
    [42] = { ((56) + 0 * (91)), 0 },
    [43] = { ((57) + 0 * (91)), 0 },
    [44] = { ((58) + 0 * (91)), 0 },
    [45] = { ((59) + 0 * (91)), 0 },
    [46] = { ((60) + 0 * (91)), 0 },
    [47] = { ((68) + 0 * (91)), 0 },
    [48] = { ((69) + 0 * (91)), 0 },
    [49] = { ((69) + 0 * (91)), 1 },
    [50] = { ((70) + 0 * (91)), 0 },
    [51] = { ((62) + 0 * (91)), 0 },
    [52] = { ((62) + 0 * (91)), 1 },
    [53] = { ((63) + 0 * (91)), 0 },
    [54] = { ((63) + 0 * (91)), 1 },
    [55] = { ((61) + 0 * (91)), 0 },
    [56] = { ((64) + 0 * (91)), 0 },
    [57] = { ((66) + 0 * (91)), 0 },
    [58] = { ((67) + 0 * (91)), 0 },
    [59] = { ((73) + 0 * (91)), 0 },
    [60] = { ((73) + 0 * (91)), 1 },
    [61] = { ((73) + 0 * (91)), 2 },
    [62] = { ((75) + 0 * (91)), 0 },
    [63] = { ((9) + 0 * (91)), 2 },
    [64] = { ((71) + 0 * (91)), 0 },
    [65] = { ((71) + 0 * (91)), 1 },
    [66] = { ((72) + 0 * (91)), 0 },
    [67] = { ((36) + 0 * (91)), 0 },
    [68] = { ((36) + 0 * (91)), 1 },
    [69] = { ((36) + 0 * (91)), 2 },
    [70] = { ((36) + 0 * (91)), 3 },
    [71] = { ((1) + 0 * (91)), 0 },
    [72] = { ((1) + 0 * (91)), 0 },
    [73] = { ((1) + 0 * (91)), 0 },
    [74] = { ((1) + 0 * (91)), 0 },
    [75] = { ((1) + 0 * (91)), 0 },
    [76] = { ((1) + 0 * (91)), 0 },
    [77] = { ((1) + 0 * (91)), 0 },
    [78] = { ((1) + 0 * (91)), 0 },
    [79] = { ((1) + 0 * (91)), 0 },
    [80] = { ((19) + 0 * (91)), 0 },
    [81] = { ((37) + 0 * (91)), 0 },
    [82] = { ((37) + 0 * (91)), 1 },
    [83] = { ((19) + CHARACTER_CREAM * (91)), 0 },
    [84] = { ((19) + CHARACTER_CREAM * (91)), 1 },
    [85] = { ((21) + CHARACTER_CREAM * (91)), 0 },
    [86] = { ((20) + CHARACTER_CREAM * (91)), 0 },
    [87] = { ((22) + CHARACTER_CREAM * (91)), 0 },
    [88] = { ((20) + CHARACTER_TAILS * (91)), 0 },
    [89] = { ((21) + CHARACTER_TAILS * (91)), 0 },
    [90] = { ((22) + CHARACTER_TAILS * (91)), 0 },
    [91] = { ((19) + CHARACTER_TAILS * (91)), 0 },
    [92] = { ((19) + CHARACTER_KNUCKLES * (91)), 0 },
    [93] = { ((22) + CHARACTER_KNUCKLES * (91)), 0 },
    [94] = { ((22) + CHARACTER_KNUCKLES * (91)), 1 },
    [95] = { ((21) + CHARACTER_KNUCKLES * (91)), 0 },
    [96] = { ((20) + CHARACTER_KNUCKLES * (91)), 0 },
    [97] = { ((20) + CHARACTER_KNUCKLES * (91)), 1 },
    [98] = { ((20) + CHARACTER_KNUCKLES * (91)), 2 },
    [99] = { ((20) + CHARACTER_KNUCKLES * (91)), 3 },
    [100] = { ((23) + CHARACTER_KNUCKLES * (91)), 0 },
    [101] = { ((24) + CHARACTER_KNUCKLES * (91)), 2 },
    [102] = { ((24) + CHARACTER_KNUCKLES * (91)), 0 },
    [103] = { ((24) + CHARACTER_KNUCKLES * (91)), 1 },
    [104] = { ((24) + CHARACTER_KNUCKLES * (91)), 3 },
    [105] = { ((24) + CHARACTER_KNUCKLES * (91)), 4 },
    [106] = { ((51) + CHARACTER_KNUCKLES * (91)), 0 },
    [107] = { ((51) + CHARACTER_KNUCKLES * (91)), 1 },
    [108] = { ((51) + CHARACTER_KNUCKLES * (91)), 2 },
    [109] = { ((52) + CHARACTER_AMY * (91)), 0 },
    [110] = { ((1) + 0 * (91)), 0 },
    [111] = { ((14) + CHARACTER_AMY * (91)), 0 },
    [112] = { ((19) + CHARACTER_AMY * (91)), 0 },
    [113] = { ((1) + 0 * (91)), 0 },
    [114] = { ((18) + CHARACTER_AMY * (91)), 0 },
};
# 496 "src/game/stage/player.c"
static const s16 playerBoostPhysicsTable[5][2] = {
    { 8, 64 }, { 12, 64 }, { 14, 64 }, { 16, 64 }, { 18, 64 },
};

static const s16 playerBoostThresholdTable[5] = { ((s32)((8)*256)), ((s32)((7.96875)*256)), ((s32)((6.5625)*256)), ((s32)((5.625)*256)), ((s32)((4.21875)*256)) };

static const s16 sSpinDashSpeeds[9] = {
    ((s16)((6.000 + 0 * (3. / 8.))*256)),
    ((s16)((6.000 + 1 * (3. / 8.))*256)),
    ((s16)((6.000 + 2 * (3. / 8.))*256)),
    ((s16)((6.000 + 3 * (3. / 8.))*256)),
    ((s16)((6.000 + 4 * (3. / 8.))*256)),
    ((s16)((6.000 + 5 * (3. / 8.))*256)),
    ((s16)((6.000 + 6 * (3. / 8.))*256)),
    ((s16)((6.000 + 7 * (3. / 8.))*256)),
    ((s16)((6.000 + 8 * (3. / 8.))*256)),
};




static const u16 sTrickPoints[4]
    = { [0] = 100, [1] = 100, [2] = 100, [3] = 100 };


static const s16 sTrickAccel[4][NUM_CHARACTERS][2] = {
    [0] = {
        [CHARACTER_SONIC] = {((s16)((0.00)*256)), ((s16)((-6.00)*256))},
        [CHARACTER_CREAM] = {((s16)((0.00)*256)), ((s16)((-6.00)*256))},
        [CHARACTER_TAILS] = {((s16)((0.00)*256)), ((s16)((-6.00)*256))},
        [CHARACTER_KNUCKLES] = {((s16)((0.00)*256)), ((s16)((-6.00)*256))},
        [CHARACTER_AMY] = {((s16)((0.00)*256)), ((s16)((-6.00)*256))},
    },
    [1] = {
        [CHARACTER_SONIC] = {((s16)((0.00)*256)), ((s16)((1.00)*256))},
        [CHARACTER_CREAM] = {((s16)((0.00)*256)), ((s16)((0.50)*256))},
        [CHARACTER_TAILS] = {((s16)((0.00)*256)), ((s16)((0.50)*256))},
        [CHARACTER_KNUCKLES] = {((s16)((0.00)*256)), ((s16)((1.00)*256))},
        [CHARACTER_AMY] = {((s16)((0.00)*256)), ((s16)((1.00)*256))},
    },
    [2] = {
        [CHARACTER_SONIC] = {((s16)((6.00)*256)), ((s16)((0.00)*256))},
        [CHARACTER_CREAM] = {((s16)((4.00)*256)), ((s16)((-2.50)*256))},
        [CHARACTER_TAILS] = {((s16)((4.00)*256)), ((s16)((-2.50)*256))},
        [CHARACTER_KNUCKLES] = {((s16)((6.00)*256)), ((s16)((0.00)*256))},
        [CHARACTER_AMY] = {((s16)((6.00)*256)), ((s16)((0.00)*256))},
    },
    [3] = {
        [CHARACTER_SONIC] = {((s16)((-5.00)*256)), ((s16)((-3.50)*256))},
        [CHARACTER_CREAM] = {((s16)((-3.50)*256)), ((s16)((-3.00)*256))},
        [CHARACTER_TAILS] = {((s16)((-3.50)*256)), ((s16)((-3.00)*256))},
        [CHARACTER_KNUCKLES] = {((s16)((-5.00)*256)), ((s16)((0.00)*256))},
        [CHARACTER_AMY] = {((s16)((-5.00)*256)), ((s16)((-3.50)*256))},
    },
};

static const u16 sTrickDirToCharstate[4]
    = { 33, 36, 34, 35 };

static const u8 sTrickMasks[4][NUM_CHARACTERS] = {
    [0] = {
        [CHARACTER_SONIC] = 0x1,
        [CHARACTER_CREAM] = 0x1,
        [CHARACTER_TAILS] = 0x1,
        [CHARACTER_KNUCKLES] = (0x2 | 0x1),
        [CHARACTER_AMY] = 0x1,
    },
    [1] = {
        [CHARACTER_SONIC] = 0,
        [CHARACTER_CREAM] = 0,
        [CHARACTER_TAILS] = 0,
        [CHARACTER_KNUCKLES] = 0,
        [CHARACTER_AMY] = 0,
    },
    [2] = {
        [CHARACTER_SONIC] = 0x8,
        [CHARACTER_CREAM] = 0x10,
        [CHARACTER_TAILS] = (0x10 | 0x1),
        [CHARACTER_KNUCKLES] = 0x4,
        [CHARACTER_AMY] = 0x8,
    },
    [3] = {
        [CHARACTER_SONIC] = 0,
        [CHARACTER_CREAM] = (0x10 | 0x1),
        [CHARACTER_TAILS] = (0x10 | 0x1),
        [CHARACTER_KNUCKLES] = 0x4,
        [CHARACTER_AMY] = 0,
    },
};

static const u16 gUnknown_080D69A6[2][3] = {
    [0] = { 32, ((49) + CHARACTER_SONIC * (91)), 2 },
    [1] = { 24, ((48) + CHARACTER_KNUCKLES * (91)), 3 },
};


static const s16 sSpringAccelY[4] = {
    ((s16)((7.5)*256)),
    ((s16)((9.0)*256)),
    ((s16)((10.5)*256)),
    ((s16)((12.0)*256)),
};

static const s16 sSpringAccelX[4] = {
    ((s16)((7.5)*256)),
    ((s16)((9.0)*256)),
    ((s16)((10.5)*256)),
    ((s16)((12.0)*256)),
};

static const u8 disableTrickTimerTable[4] = { 4, 3, 2, 2 };



static inline void Player_InitIceSlide_inline(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState &= ~0x00000004;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 62;
    p->moveState &= ~(0x00000001);

    m4aSongNumStart(292);

    { gPlayer.callback = Player_8026BCC;; Player_8026BCC(p);; };
}

static inline void sub_802A500_inline(Player *p)
{

    if (p->qSpeedAirY >= 0) {
        sub_8022218(p);
        sub_8022284(p);
    } else {
        sub_8022284(p);
        sub_8022218(p);
    }



}

static inline void Player_CameraShift_inline(Player *p)
{
    if (gCamera.shiftY > -56)
        gCamera.shiftY--;
}


void CreatePlayer(u32 __attribute__((unused)) characterId, u32 __attribute__((unused)) levelId, Player *player)
{
    struct Task *t;
    player_0_Task *gt;

    Player *p = player;
    s32 playerID = p->playerID;

    p->spriteTask = TaskCreate(Task_PlayerMain, sizeof(player_0_Task), 0x3000, 0, TaskDestructor_Player);
    gt = (void *)(0x03000000 + ((p->spriteTask)->data));
    gt->unk0 = playerID;
    gt->unk4 = 0;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        if (gGameMode != 5) {
            gRingCount = 1;
        } else {
            gRingCount = 0;
        }
    }

    InitializePlayer(p);

    gPlayer.callback = Player_TouchGround;;

    CreateBrakingDustEffectRelatedTask();
    InitPlayerHitRingsScatter();


    if ((gInputRecorder.mode == 1)) {
        InputRecorderLoadTape();
        gInputRecorder.mode = 1;
    } else if (gInputRecorder.mode == 2) {
        InputRecorderLoadTape();
        gInputRecorder.mode = 2;
    }


    gStageGoalX = 0;
    gWorldSpeedX = 0;
    gWorldSpeedY = 0;

    InitNewInputCounters();
    AllocateCharacterStageGfx(p, p->spriteInfoBody);
    AllocateCharacterMidAirGfx(p, p->spriteInfoLimbs);
}


void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *param2)
{
    s32 playerID = p->playerID;
    Sprite *s = &param2->s;

    if (playerID == 0) {
        s->graphics.dest = (void *)(u8*)(0x6000000 + 0x10000);
    } else {
        s->graphics.dest = VramMalloc(64);
    }

    s->graphics.size = 0;
    s->graphics.anim = p->anim;
    s->variant = p->variant;
    s->prevVariant = -1;
    s->x = ((int)((p->qWorldX) >> 8));
    s->y = ((int)((p->qWorldY) >> 8));
    s->oamFlags = ((16 + playerID) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        s->palId = ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id;
    } else {
        s->palId = 0;
    }

    s->frameFlags = ((2) << (12));


    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)))))

    {
        s->frameFlags |= (((1) << (18)) | ((1) << (19)));
    }

    (s)->frameFlags |= (((1) << (5)));
    s->frameFlags |= playerID;

    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;

    param2->transform.rotation = 0;
    param2->transform.qScaleX = +((s32)((1)*256));
    param2->transform.qScaleY = +((s32)((1)*256));
    param2->transform.x = 0;
    param2->transform.y = 0;
}



void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2)
{
    Sprite *s = &param2->s;
    PlayerSpriteInfo *extraSprite = param2;
    u32 character = p->character;

    if (character == CHARACTER_CREAM) {
        s->graphics.dest = VramMalloc(16);
        s->graphics.anim = ((4) + CHARACTER_CREAM * (91));
        extraSprite->s.variant = 1;
    } else if (character == CHARACTER_TAILS) {
        s->graphics.dest = VramMalloc(16);
        s->graphics.anim = ((4) + CHARACTER_TAILS * (91));
        extraSprite->s.variant = 1;
    } else {
        return;
    }

    s->graphics.size = 0;
    s->prevVariant = -1;
    s->x = ((int)((p->qWorldX) >> 8));
    s->y = ((int)((p->qWorldY) >> 8));
    s->oamFlags = ((17) << 6);
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        s->palId = ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id;
    } else {
        s->palId = 0;
    }

    s->frameFlags = (((1) << (18)) | ((2) << (12)) | ((1) << (5)) | ((4) << (0)));

    extraSprite->transform.rotation = 0;
    extraSprite->transform.qScaleX = +((s32)((1)*256));
    extraSprite->transform.qScaleY = +((s32)((1)*256));
    extraSprite->transform.x = 0;
    extraSprite->transform.y = 0;
}

void SetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p)
{
    p->playerID = playerID;
    p->character = character;

    if (gGameMode != 5) {
        p->checkPointX = gSpawnPositions[level][0];
        p->checkPointY = gSpawnPositions[level][1];
    } else {
        p->checkPointX = 360 - (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id * 20);
        p->checkPointY = 177;
        p->qWorldX = -1;
        p->qWorldY = -1;
    }

    p->unk98 = 0;
    p->checkpointTime = 0;
    p->spriteInfoBody = &gPlayerBodyPSI;
    p->spriteInfoLimbs = &gPlayerLimbsPSI;
}


void InitializePlayer(Player *p)
{
    if (

        (gGameMode == 5) &&

        (p->qWorldX & p->qWorldY) + 1 != 0) {
        p->qWorldX = ((s32)((460)*256));
    } else {
        p->qWorldX = ((s32)((p->checkPointX)*256));
    }
    p->qWorldY = ((s32)((p->checkPointY)*256));

    p->callback = Player_TouchGround;

    p->heldInput = gPlayerControls.jump | gPlayerControls.attack | gPlayerControls.trick;
    p->frameInput = gPlayerControls.jump | gPlayerControls.attack | gPlayerControls.trick;

    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->moveState = 0x00200000;
    p->rotation = 0;
    { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; };
    p->unk25 = 120;
    p->spindashAccel = 0;
    p->unk29 = 0;
    p->unk28 = 0;
    p->layer = 0x01;



    p->maxSpeed = ((s32)((9.0)*256));
    p->topSpeed = ((s32)((6.0)*256));






    p->acceleration = ((s32)((8. / 256.)*256));
    p->deceleration = ((s32)((64. / 256.)*256));

    p->charState = 0;



    p->prevCharState = -1;

    p->anim = -1;
    p->variant = -1;
    p->timerInvulnerability = 0;
    p->timerInvincibility = 0;
    p->timerSpeedup = 0;
    p->confusionTimer = 0;
    p->stoodObj = ((void *)0);
    p->itemEffect = 0x00;
    p->unk2A = 0;
    p->unk72 = (int)(((0 * 60.) + 6) * 60);
    p->unk7E = 0;
    p->unk7C = 0;
    p->unk82 = ((s32)((1)*256));
    p->unk80 = ((s32)((1)*256));
    p->defeatScoreIndex = 0;
    p->unk61 = 0;
    p->unk62 = 0;
    p->unk63 = 0;
    p->secondsUntilDrown = 30;
    p->framesUntilDrownCountDecrement = 60;
    p->framesUntilWaterSurfaceEffect = 10;


    p->transition = 0;
    p->unk6E = 0;
    p->prevTransition = 0;
    p->isBoosting = 0;
    p->boostSpeed = 0;
    p->unk6C = 0;
    p->unk71 = 0;
    p->unk70 = 0;
    p->disableTrickTimer = 0;


    sub_8015750();
    sub_801561C();

    Player_HandleBoostThreshold(p);


    {
        u32 *ptr = (u32 *)(&p->unk99[0]);
        s32 i = 3;

        register u8 *u99_r6 asm("r6") = (void *)ptr;

        do {



            *ptr++ = 0;
        } while (i-- != 0);

        *u99_r6 = 0x7F;



    }


    if ((p->playerID == 0) && ((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        if (gCourseTime >= ((int)(((10 * 60.) + 0) * 60))) {
            gCheckpointTime = 0;
            gCourseTime = 0;
            p->checkpointTime = 0;
        } else {
            gCheckpointTime = p->checkpointTime;
            gCourseTime = p->checkpointTime;
        }
    }

    switch (p->character) {
        case CHARACTER_SONIC: {
            p->w.sf.flags = 0;
            p->w.sf.unkAE = 0;
            p->w.sf.unkB0 = 0;
        } break;


        case CHARACTER_CREAM: {
            p->w.cf.unkAE = 0;
            p->w.cf.flyingDuration = 0;
            p->w.cf.unkB0 = 0;
        } break;


        case CHARACTER_TAILS: {
            p->w.tf.flags = 0;
            p->w.tf.flyingDuration = 0;
            p->w.tf.shift = 0;
        } break;

        case CHARACTER_KNUCKLES: {
            p->w.kf.flags = 0;
            p->w.kf.shift = 0;
            p->w.kf.unkAE = 0;
        } break;

        case CHARACTER_AMY: {
            p->w.af.unkAC = 0;
        } break;
    }

    gShouldSpawnMPAttackEffect = 0;


    gMPAttackEffect2Regs = ((void *)0);
    gShouldSpawnMPAttack2Effect = 0;
}





void Player_TransitionCancelFlyingAndBoost(Player *p)
{
    if (p->moveState & 0x00020000) {
        m4aSongNumStop(281);
    }

    p->moveState &= ~(0x20000000 | 0x10000000 | 0x01000000 | 0x00080000 | 0x00040000 | 0x00020000
                      | 0x00008000 | 0x00004000 | 0x00002000 | 0x00000400 | 0x00000200 | 0x00000100 | 0x00000020
                      | 0x00000010);

    p->unk61 = 0;
    p->unk62 = 0;
    p->unk63 = 0;
    p->unk71 = 0;
    p->unk70 = 0;

    if (p->character == CHARACTER_TAILS) {
        m4aSongNumStop(120);
    }

    if (p->character == CHARACTER_CREAM) {
        m4aSongNumStop(227);
    }

    if (p->character == CHARACTER_SONIC) {
        p->moveState &= ~0x02000000;
    }
}
# 1016 "src/game/stage/player.c"
s32 sub_802195C(Player *p, u8 *rot, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rot == ((void *)0))
        rot = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    playerX2 = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r5 = sub_801E4E4(playerX2, playerY2, mask, -8, &anotherByte, sub_801ED24);

    playerX = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8)) + (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r1 = sub_801E4E4(playerX, playerY, mask, -8, &anotherByte2, sub_801ED24);

    if (r5 < r1) {
        result = r5;
        *rot = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rot = anotherByte2;
        *out = r5;
    }

    return result;
}


s32 sub_8021A34(Player *p, u8 *rot, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rot == ((void *)0))
        rot = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    playerX2 = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r5 = sub_801E4E4(playerX2, playerY2, mask, +8, &anotherByte, sub_801ED24);

    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8)) + (p->spriteOffsetY);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r1 = sub_801E4E4(playerX, playerY, mask, +8, &anotherByte2, sub_801ED24);

    if (r5 < r1) {
        result = r5;
        *rot = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rot = anotherByte2;
        *out = r5;
    }

    return result;
}


s32 sub_8021B08(Player *p, u8 *rot, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rot == ((void *)0))
        rot = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    playerY2 = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);
    playerX2 = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r5 = sub_801E4E4(playerY2, playerX2, mask, -8, &anotherByte, sub_801EE64);

    playerY = ((int)((p->qWorldY) >> 8)) - (p->spriteOffsetY);
    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    r1 = sub_801E4E4(playerY, playerX, mask, -8, &anotherByte2, sub_801EE64);

    if (r5 < r1) {
        result = r5;
        *rot = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rot = anotherByte2;
        *out = r5;
    }

    return result;
}

void sub_8021BE0(Player *p)
{
    if (!(p->moveState & 0x00000200)) {
        if (!(p->moveState & 0x00800000)) {
            gPlayer.callback = Player_TouchGround;;
            p->moveState &= ~(0x00000010 | 0x00000002);
        }

        if (p->moveState & 0x00000004) {
            p->moveState &= ~0x00000004;
            Player_HandleSpriteYOffsetChange(p, 14);
        }
        { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; };
    } else {
        p->moveState &= ~(0x00000010 | 0x00000002);
    }

    p->defeatScoreIndex = 0;
}

void sub_8021C4C(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }

    result = sub_801E4E4(playerX, playerY, mask, -8, 0, sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    result = sub_801E4E4(playerX2, playerY2, mask, +8, 0, sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sub_8029AC0(p, &rotation, ptr);
    } else

    {
        result = sub_8029B0C(p, &rotation, ptr);
    }

    if (result < 0) {
        s8 rotCopy;
        s32 r1 = ((int)((p->qSpeedAirY) >> 8));
        r1 += 6;
        r1 = -r1;

        if ((result >= r1) || (fnOut >= r1)) {
            s32 airY;
            p->rotation = rotation;


            if ((gStageFlags & 0x0080)) {
                result = -result;
            }


            p->qWorldY += result << 8;

            sub_8021BE0(p);

            if ((rotation + 32) & 0x40) {
                p->qSpeedAirX = 0;

                if (p->qSpeedAirY > ((s32)((11.8125)*256))) {
                    p->qSpeedAirY = ((s32)((11.8125)*256));
                }
            } else if (!((rotation + 16) & 0x20)) {
                p->qSpeedAirY = 0;
                p->qSpeedGround = p->qSpeedAirX;
                return;
            } else {
                p->qSpeedAirY >>= 1;
            }

            airY = p->qSpeedAirY;
            if (airY < 0) {
                airY = -airY;
            }
            p->qSpeedGround = airY;

            rotCopy = rotation;
            if (rotCopy < 0) {
                p->qSpeedGround = -airY;
            }
        }
    }
}

void sub_8021DB8(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }

    result = sub_801E4E4(playerX, playerY, mask, -8, 0, sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }

    result = sub_801E4E4(playerX2, playerY2, mask, +8, 0, sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sub_8029B0C(p, &rotation, ptr);
    } else

    {
        result = sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {

        if ((gStageFlags & 0x0080)) {
            result = -result;
        }


        p->qWorldY -= result << 8;

        if (((rotation + 32) & 0x40)) {
            s8 *pt = (s8 *)&rotation;
            if ((*pt - 0x40) > 0) {
                s32 speed;
                p->rotation = rotation;

                sub_8021BE0(p);

                speed = p->qSpeedAirY;
                if (speed < 0) {
                    speed = -speed;
                }
                p->qSpeedGround = speed;
                return;
            }
        }
        p->qSpeedAirY = 0;
    }
}

void sub_8021EE4(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u32 mask2 = p->layer;


    gravity = (gStageFlags & 0x0080);
    if (gravity) {
        playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
        playerY = ((int)((p->qWorldY) >> 8));
        result = sub_801E4E4(playerX, playerY, mask2, -8, ((void *)0), sub_801ED24);
    } else

    {
        playerX2 = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
        playerY2 = ((int)((p->qWorldY) >> 8));

        mask = mask2;
        if (p->qSpeedAirY < ((s32)((3.0)*256))) {
            mask |= 0x80;
        }
        result = sub_801E4E4(playerX2, playerY2, mask, -8, ((void *)0), sub_801ED24);
    }

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sub_8029B0C(p, &rotation, ptr);
    } else

    {
        result = sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {

        if ((gStageFlags & 0x0080)) {
            result = -result;
        }


        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sub_8029AC0(p, &rotation, &fnOut);
        } else

        {
            result = sub_8029B0C(p, &rotation, &fnOut);
        }

        if (result <= 0) {

            if ((gStageFlags & 0x0080)) {
                result = -result;
            }


            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            sub_8021BE0(p);

            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}

void sub_802203C(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u32 mask2 = p->layer;

    gravity = (gStageFlags & 0x0080);
    if (gravity) {
        playerX = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
        playerY = ((int)((p->qWorldY) >> 8));
        result = sub_801E4E4(playerX, playerY, mask2, +8, ((void *)0), sub_801ED24);
    } else

    {
        playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
        playerY2 = ((int)((p->qWorldY) >> 8));

        mask = mask2;
        if (p->qSpeedAirY < ((s32)((3.0)*256))) {
            mask |= 0x80;
        }
        result = sub_801E4E4(playerX2, playerY2, mask, +8, ((void *)0), sub_801ED24);
    }

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->qSpeedGround = p->qSpeedAirY;
    }

    ptr = &fnOut;

    if ((gStageFlags & 0x0080)) {
        result = sub_8029B0C(p, &rotation, ptr);
    } else

    {
        result = sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {

        if ((gStageFlags & 0x0080)) {
            result = -result;
        }


        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sub_8029AC0(p, &rotation, &fnOut);
        } else

        {
            result = sub_8029B0C(p, &rotation, &fnOut);
        }

        if (result <= 0) {

            if ((gStageFlags & 0x0080)) {
                result = -result;
            }

            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            sub_8021BE0(p);

            p->qSpeedAirY = 0;
            p->qSpeedGround = p->qSpeedAirX;
        }
    }
}




    void
    sub_8022190(Player *p)
{
    s16 airY = p->qSpeedAirY;

    u8 arcResult = ((gStageFlags & 0x0080)) ? 0x80 : 0;



    s16 airX = p->qSpeedAirX;

    if (airX || airY) {
        arcResult = ((int)((ArcTan2(airX, airY)) >> 8));
    }

    arcResult = (arcResult - 0x20) & 0xC0;

    switch (arcResult >> 6) {
        case 0: {
            sub_8021C4C(p);
        } break;

        case 2: {
            sub_8021DB8(p);
        } break;

        case 1: {
            sub_8021EE4(p);
        } break;

        case 3: {
            sub_802203C(p);
        } break;
    }
}


void sub_8022218(Player *p)
{
    u8 rotation;
    s32 sp04;
    s32 res;


    s32 *pSp04 = &sp04;

    if ((gStageFlags & 0x0080)) {
        res = sub_8029AC0(p, &rotation, pSp04);
    } else {
        res = sub_8029B0C(p, &rotation, pSp04);
    }

    if (res <= 0) {
        if ((gStageFlags & 0x0080)) {
            res = -res;
        }

        p->qWorldY += ((s32)((res)*256));
        p->rotation = rotation;
        sub_8021BE0(p);

        p->qSpeedAirY = 0;
        p->qSpeedGround = p->qSpeedAirX;
    }
}


void sub_8022284(Player *p)
{
    u8 rotation;
    s32 sp04;
    s32 res;
    s32 airY;


    s32 *pSp04 = &sp04;

    if ((gStageFlags & 0x0080)) {
        res = sub_8029B0C(p, &rotation, pSp04);
    } else

    {
        res = sub_8029AC0(p, &rotation, pSp04);
    }

    if (res <= 0) {

        if ((gStageFlags & 0x0080)) {
            res = -res;
        }


        p->qWorldY -= ((s32)((res)*256));
        p->rotation = rotation;
        sub_8021BE0(p);

        airY = p->qSpeedAirY;
        if (airY < 0) {
            airY = -airY;
        }
        p->qSpeedGround = airY;

        if ((s8)rotation >= 0) {
            p->qSpeedGround = -airY;
        }

        if (p->unk6E) {
            p->moveState ^= 0x00000001;
        }
    }
}
# 1689 "src/game/stage/player.c"
void sub_8022318(Player *p)
{
    s32 offsetY;

    if (!(p->moveState & 0x00000004)) {
        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;
    } else {
        p->moveState &= ~0x00000004;
        p->charState = 0;

        offsetY = p->spriteOffsetY - 14;

        if ((gStageFlags & 0x0080)) {
            offsetY = -offsetY;
        }

        if (((p->rotation + 0x40) << 24) <= 0) {
            offsetY = -offsetY;
        }

        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;

        p->qWorldY += ((s32)((offsetY)*256));
    }

    p->moveState &= ~0x00000002;
    p->moveState &= ~0x00000020;
    p->moveState &= ~0x00000010;
    p->moveState &= ~0x00000100;

    p->defeatScoreIndex = 0;
    p->unk25 = 120;
    p->unk61 = 0;

    if (p->charState >= 92) {
        p->charState = 0;
    }
}

void sub_80223BC(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }
    result = sub_801E4E4(playerX, playerY, mask, -8, ((void *)0), sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sub_801E4E4(playerX2, playerY2, mask, +8, ((void *)0), sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->w.sf.flags |= 0x20;
    }

    ptr = &fnOut;
    if ((gStageFlags & 0x0080)) {
        result = sub_8029AC0(p, &rotation, ptr);
    } else {
        result = sub_8029B0C(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }

        p->qWorldY += ((s32)((result)*256));

        p->rotation = rotation;
        p->qSpeedAirY = 0;
        p->w.sf.flags &= ~0x2;
    }
}


void sub_80224DC(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    s32 *ptr;

    u32 mask;
    u32 mask2 = p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (3 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask = 0x80;
        mask |= mask2;
    }
    result = sub_801E4E4(playerX, playerY, mask, -8, ((void *)0), sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    playerX2 = ((int)((p->qWorldX) >> 8)) + (3 + p->spriteOffsetX);
    playerY2 = ((int)((p->qWorldY) >> 8));

    mask = mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sub_801E4E4(playerX2, playerY2, mask, +8, ((void *)0), sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;
        p->w.sf.flags |= 0x20;
    }

    ptr = &fnOut;
    if ((gStageFlags & 0x0080)) {
        result = sub_8029B0C(p, &rotation, ptr);
    } else {
        result = sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }

        p->qWorldY -= ((s32)((result)*256));

        p->qSpeedAirY = 0;
    }
}

void sub_80225E8(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u8 *mask2 = &p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = *mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sub_801E4E4(playerX, playerY, mask, -8, ((void *)0), sub_801ED24);

    if (result <= 0) {
        p->qWorldX -= ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    gravity = (gStageFlags & 0x0080);
    ptr = &fnOut;
    if (gravity) {
        result = sub_8029B0C(p, &rotation, ptr);
    } else {
        result = sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }
        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sub_8029AC0(p, &rotation, ptr);
        } else {
            result = sub_8029B0C(p, &rotation, ptr);
        }

        if (result <= 0) {
            if ((gStageFlags & 0x0080)) {
                result = -result;
            }

            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            p->qSpeedAirY = 0;
            p->w.sf.flags &= ~0x2;
        }
    }
}


void sub_8022710(Player *p)
{
    u8 rotation;
    s32 fnOut;
    s32 result;
    s32 playerX, playerY;
    s32 *ptr;
    u16 gravity;

    u32 mask;
    u8 *mask2 = &p->layer;

    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);
    playerY = ((int)((p->qWorldY) >> 8));

    mask = *mask2;
    if (p->qSpeedAirY < ((s32)((3.0)*256))) {
        mask |= 0x80;
    }
    result = sub_801E4E4(playerX, playerY, mask, +8, ((void *)0), sub_801ED24);

    if (result <= 0) {
        p->qWorldX += ((s32)((result)*256));
        p->qSpeedAirX = 0;

        p->w.sf.flags |= 0x20;
    }

    gravity = (gStageFlags & 0x0080);
    ptr = &fnOut;
    if (gravity) {
        result = sub_8029B0C(p, &rotation, ptr);
    } else {
        result = sub_8029AC0(p, &rotation, ptr);
    }

    if (result <= 0) {
        if ((gStageFlags & 0x0080)) {
            result = -result;
        }
        p->qWorldY -= ((s32)((result)*256));

        if (p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
    } else if (p->qSpeedAirY >= 0) {

        if ((gStageFlags & 0x0080)) {
            result = sub_8029AC0(p, &rotation, ptr);
        } else {
            result = sub_8029B0C(p, &rotation, ptr);
        }

        if (result <= 0) {
            if ((gStageFlags & 0x0080)) {
                result = -result;
            }

            p->qWorldY += ((s32)((result)*256));

            p->rotation = rotation;
            p->qSpeedAirY = 0;
            p->w.sf.flags &= ~0x2;
        }
    }
}

void sub_8022838(Player *p)
{
    s16 airX = p->qSpeedAirX;
    s16 airY = p->qSpeedAirY;
    u8 arcResult = 0;

    if (p->moveState & 0x00000008) {
        p->w.sf.flags &= ~0x2;
        p->unk29 = 0;
        p->unk28 = 0;
    } else {
        arcResult = ((int)((ArcTan2(airX, airY)) >> 8));

        arcResult = (arcResult - 0x20) & 0xC0;

        switch (arcResult >> 6) {
            case 0: {
                sub_80223BC(p);
            } break;

            case 2: {
                sub_80224DC(p);
            } break;

            case 1: {
                sub_80225E8(p);
            } break;

            case 3: {
                sub_8022710(p);
            } break;
        }
    }
}


void sub_80228C0(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;

    register s32 resultA asm("r6");
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerX asm("r4") = p->qWorldX;
    register s32 playerY asm("sl") = p->qWorldY;







    u32 mask = p->layer;
    s32 py = ((int)((playerY) >> 8));

    resultA = sub_801E4E4(py + p->spriteOffsetY, (playerX = ((int)((playerX) >> 8))) - (2 + p->spriteOffsetX), mask, 8, &p->unk28, sub_801EE64);

    py = py + (p->spriteOffsetY);
    playerX += 2;
    playerX += p->spriteOffsetX;
    p29 = &p->unk29;
    resultB = sub_801E4E4(py, playerX, mask, 8, p29, sub_801EE64);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerY += ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->unk28;
            } else {
                r0 = *p29;
            }
        } else {
            s32 airX = p->qSpeedAirX;

            if (airX < 0) {
                airX = -airX;
            }

            airX = ((int)((airX) >> 8));
            airX += 3;

            if (airX > 11)
                airX = 11;

            if (val <= airX) {
                playerY += ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->unk28;
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->unk28;
        } else {
            r0 = p->unk29;
        }
    }

    r1 = r0;
    p->qWorldY = playerY;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {

            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }

    }
}


void sub_80229EC(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
    s32 playerY;
    s32 py;

    register s32 resultA asm("r6");
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerX asm("r4");
    register u32 mask asm("r9");







    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = ((int)((playerY) >> 8));

    resultA = sub_801E4E4(py - p->spriteOffsetY, (playerX = ((int)((playerX) >> 8))) + (2 + p->spriteOffsetX), mask, -8, &p->unk28, sub_801EE64);

    py = py - (p->spriteOffsetY);
    playerX -= 2;
    playerX -= p->spriteOffsetX;
    p29 = &p->unk29;
    resultB = sub_801E4E4(py, playerX, mask, -8, p29, sub_801EE64);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerY -= ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->unk28;
            } else {
                r0 = *p29;
            }
        } else {
            s32 airX = p->qSpeedAirX;

            if (airX < 0) {
                airX = -airX;
            }

            airX = ((int)((airX) >> 8));
            airX += 3;

            if (airX > 11)
                airX = 11;

            if (val <= airX) {
                playerY -= ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->unk28;
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->unk28;
        } else {
            r0 = p->unk29;
        }
    }

    r1 = r0;
    p->qWorldY = playerY;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {

            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }

    }
}


void sub_8022B18(Player *p)
{
    s32 val;
    u8 *p29;
    s32 resultB;
    s32 playerX;
    s32 py;

    register s32 resultA asm("r6");
    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerY asm("r4");
    register u32 mask asm("r9");







    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = ((int)((playerX) >> 8));

    resultA = sub_801E4E4(py - p->spriteOffsetY, (playerY = ((int)((playerY) >> 8))) - (2 + p->spriteOffsetX), mask, -8, &p->unk28, sub_801ED24);

    py = py - (p->spriteOffsetY);
    playerY += 2;
    playerY += p->spriteOffsetX;
    p29 = &p->unk29;
    resultB = sub_801E4E4(py, playerY, mask, -8, p29, sub_801ED24);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerX -= ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->unk28;
            } else {
                r0 = *p29;
            }
        } else {
            s32 airY = p->qSpeedAirY;

            if (airY < 0) {
                airY = -airY;
            }

            airY = ((int)((airY) >> 8));
            airY += 3;

            if (airY > 11)
                airY = 11;

            if (val <= airY) {
                playerX -= ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->unk28;
                } else {
                    r0 = *p29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->unk28;
        } else {
            r0 = p->unk29;
        }
    }

    r1 = r0;
    p->qWorldX = playerX;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {

            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;
        }

    }
}


void sub_8022C44(Player *p)
{
    s32 val;
    s32 resultB;
    s32 playerX;
    s32 py;
    s32 resultA;


    register u32 r1 asm("r1");
    register u32 r0 asm("r0");
    register s32 playerY asm("r4");
    register u32 mask asm("r8");






    playerX = p->qWorldX;
    playerY = (p->qWorldY);
    mask = p->layer;
    py = ((int)((playerX) >> 8));

    resultA = sub_801E4E4(py + p->spriteOffsetY, (playerY = ((int)((playerY) >> 8))) + (2 + p->spriteOffsetX), mask, +8, &p->unk28, sub_801ED24);

    py = py + (p->spriteOffsetY);
    playerY -= 2;
    playerY -= p->spriteOffsetX;
    resultB = sub_801E4E4(py, playerY, mask, +8, &p->unk29, sub_801ED24);

    val = resultB;
    if (resultB > resultA) {
        val = resultA;
    }

    if (val != 0) {
        if (val < 0) {
            if (val < -11) {
                return;
            }

            playerX += ((s32)((val)*256));

            if (resultA < resultB) {
                r0 = p->unk28;
            } else {
                r0 = p->unk29;
            }
        } else {
            s32 airY = p->qSpeedAirY;

            if (airY < 0) {
                airY = -airY;
            }

            airY = ((int)((airY) >> 8));
            airY += 3;

            if (airY > 11)
                airY = 11;

            if (val <= airY) {
                playerX += ((s32)((val)*256));

                if (resultA < resultB) {
                    r0 = p->unk28;
                } else {
                    r0 = p->unk29;
                }
            } else {
                p->moveState |= 0x00000002;
                p->moveState &= ~0x00000020;
                return;
            }
        }
    } else {
        if (resultA < resultB) {
            r0 = p->unk28;
        } else {
            r0 = p->unk29;
        }
    }

    r1 = r0;
    p->qWorldX = playerX;

    if (!(r1 & 0x1)) {
        vu8 *pRot = &p->rotation;
        *pRot = r1;

        if ((gStageFlags & 0x0080)) {

            r1 = *pRot;
            asm("" ::"r"(r1));
            r0 = r1;
            r0 += 0x40;
            r0 <<= 24;
            r0 = -r0;
            r1 = r0 >> 24;
            asm("" ::"r"(r0), "r"(r1));
            r0 = r1;
            r0 -= 0x40;

            *pRot = r0;



        }

    }
}

void sub_8022D6C(Player *p)
{
    u8 r1 = 0;
    if (p->moveState & 0x00000008) {
        p->unk29 = 0;
        p->unk28 = 0;
        return;
    }



    if ((gCurrentLevel == 0) && (gWater.isActive == 1)) {
        s32 r5 = ((s32)((p->qWorldY)*256)) >> 16;
        u32 mask = ~0x3;
        s32 offsetY = p->spriteOffsetY;
        s32 unk4 = gWater.currentWaterLevel;
        s16 r0 = (unk4 - offsetY) & mask;
        r5 &= mask;

        if ((r5 == (r0)) && (p->qSpeedAirY >= 0) && ((u8)(p->rotation + 0x18) <= 0x30) && (!(p->moveState & 0x00000002))
            && (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) >= ((s32)((6.0)*256)))) {
            sub_80228C0(p);

            if (p->qWorldY >= ((s32)((r5)*256))) {
                if (!(p->moveState & 0x00020000)) {
                    p->moveState |= 0x00020000;

                    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
                        CreateRunOnWaterEffect();
                    }
                }

                m4aSongNumStartOrContinue(281);
                p->qWorldY = (r0 << 8);
                p->rotation = 0;
                p->moveState &= ~0x00000002;
            } else {
                if (p->moveState & 0x00020000) {
                    m4aSongNumStop(281);
                }
                p->moveState &= ~0x00020000;
            }
            return;
        } else if (p->moveState & 0x00020000) {
            p->moveState &= ~0x00020000;
            m4aSongNumStop(281);
        }
    }



    if ((gStageFlags & 0x0080)) {
        s8 rot = p->rotation;
        rot += 0x40;
        rot = -rot;
        rot -= 0x40;

        if (rot + 0x20 > 0) {
            if (rot <= 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        } else {
            if (rot > 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        }

        switch (r1 >> 6) {
            case 0: {
                sub_80228C0(p);
            } break;

            case 2: {
                sub_80229EC(p);
            } break;

            case 1: {
                sub_8022B18(p);
            } break;

            case 3: {
                sub_8022C44(p);
            } break;
        }
    } else

    {
        s8 rot = p->rotation;

        if (rot + 0x20 > 0) {
            if (rot <= 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        } else {
            if (rot > 0) {
                r1 = rot + 0x20;
            } else {
                r1 = rot + 0x1F;
            }
        }

        switch (r1 >> 6) {
            case 0: {
                sub_80228C0(p);
            } break;

            case 2: {
                sub_80229EC(p);
            } break;

            case 1: {
                sub_8022B18(p);
            } break;

            case 3: {
                sub_8022C44(p);
            } break;
        }
    }
}


s32 sub_8022F58(u8 param0, Player *p)
{
    u32 p0;
    s32 result = 0;
    s32 r4;
    u8 sp0[4];
    s32 sp4[4];

    register s32 fnRes asm("r3");




    p->unk29 = param0;
    p->unk28 = param0;

    p0 = (param0 + ((s32)((0.125)*256))) & 0xC0;


    asm("asr %0, %1, #6\n" : "=r"(r4) : "r"(p0));




    switch (r4) {
        case 0: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sub_8029BB8(p, ptr, &sp4[0]);
            temp = *ptr;

            if (sp0[0] & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 1: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sub_802195C(p, ptr, &sp4[1]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 2: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sub_8021B08(p, ptr, &sp4[2]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;

        case 3: {
            u8 *ptr = sp0;
            u8 temp;
            fnRes = sub_8021A34(p, ptr, &sp4[3]);
            temp = *ptr;

            if (temp & 0x1) {
                *ptr = result;
            } else {
                if ((gStageFlags & 0x0080)) {
                    s32 v = -0x80 - temp;
                    *ptr = v;
                }
            }

            result = fnRes;
        } break;
    }

    return result;
}

s32 sub_802302C(u8 param0, Player *p)
{
    s32 r3;
    u32 r0;
    s32 result;
    u32 temp;

    s32 px = ((int)((p->qWorldX) >> 8));
    s32 py = ((int)((p->qWorldY) >> 8));

    p->unk29 = param0;
    r3 = (s8)param0;

    p->unk28 = ((u32)param0 << 0x18) >> 0x18;




    if (((param0 + ((s32)((0.125)*256))) << 24) > 0) {
        if (r3 <= 0) {

            asm("");

            param0 += ((s32)((0.125)*256));
        } else {
            param0 += ((s32)((0.125)*256)) - 1;
        }
    } else {
        if (r3 <= 0) {
            param0 += ((s32)((0.125)*256)) - 1;
        } else {
            param0 += ((s32)((0.125)*256));
        }
    }

    switch (param0 >> 6) {
        case 0: {
            s32 y = py + 2;
            result = sub_801E4E4(y + p->spriteOffsetX, px, p->layer, +8, ((void *)0), sub_801EE64);
        } break;

        case 2: {
            s32 y = py - 2;
            result = sub_801E4E4(y - p->spriteOffsetX, px, p->layer, -8, ((void *)0), sub_801EE64);
        } break;

        case 1: {
            s32 x = (px - 2);
            result = sub_801E4E4(x - p->spriteOffsetX, py, p->layer, -8, ((void *)0), sub_801ED24);
        } break;

        case 3: {
            s32 x = (px + 2);
            result = sub_801E4E4(x + p->spriteOffsetX, py, p->layer, +8, ((void *)0), sub_801ED24);
        } break;

        default: {
            result = 0;
        }
    }

    return result;
}

void sub_8023128(Player *p)
{
    u8 r1;
    u32 temp;
    u8 r5;
    s32 r2;

    if (p->qSpeedGround == 0) {
        return;
    }

    r1 = ((s32)((0.25)*256));
    if (p->qSpeedGround >= 0) {
        r1 = -((s32)((0.25)*256));
    }


    temp = p->rotation + r1;
    r5 = temp;

    r2 = ((s32)((sub_802302C(r5, p))*256));

    if (r2 <= 0) {
        s32 rot = (r5 + ((s32)((0.125)*256)));

        switch ((rot & 0xC0) >> 6) {

            case 0: {
                p->qWorldY += r2;
                p->qSpeedAirY = 0;
            } break;

            case 1: {
                p->qWorldX -= r2;
                p->qSpeedAirX = 0;
                p->moveState |= 0x00000020;
                p->qSpeedGround = 0;
            } break;

            case 2: {
                p->qWorldY -= r2;
                p->qSpeedAirY = 0;
                p->moveState |= 0x00000002;
            } break;

            case 3: {
                p->qWorldX += r2;
                p->qSpeedAirX = 0;
                p->moveState |= 0x00000020;
                p->qSpeedGround = 0;
            } break;
        }

        p->unk62 = 0;
        p->unk63 = 0;
    }
}

void sub_80231C0(Player *p)
{
    u8 r1;
    u32 temp;
    u8 r5;
    s32 r2;

    if (p->qSpeedGround == 0) {
        return;
    }

    r1 = ((s32)((0.25)*256));
    if (p->qSpeedGround >= 0) {
        r1 = -((s32)((0.25)*256));
    }


    temp = p->rotation + r1;
    r5 = temp;

    r2 = ((s32)((sub_802302C(r5, p))*256));

    if (r2 <= 0) {
        switch (((r5 + ((s32)((0.125)*256))) & 0xC0) >> 6) {

            case 0: {
                p->qWorldY += r2;
                p->qSpeedAirY = 0;
            } break;

            case 1: {
                p->qWorldX -= r2;
                p->qSpeedAirX = 0;
                p->moveState &= ~0x00000004;

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
                p->qSpeedGround = 0;
            } break;

            case 2: {
                p->qWorldY -= r2;
                p->qSpeedAirY = 0;
                p->moveState |= 0x00000002;
            } break;

            case 3: {
                p->qWorldX += r2;
                p->qSpeedAirX = 0;
                p->moveState &= ~0x00000004;

                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
                p->qSpeedGround = 0;
            } break;
        }
    }
}

void sub_8023260(Player *p)
{
    s32 maxSpeed = p->maxSpeed;

    if (p->qSpeedGround > (s16)maxSpeed) {
        p->qSpeedGround = +maxSpeed;
    } else {
        s32 speedX = p->qSpeedGround;
        if (speedX < -(s16)maxSpeed) {
            p->qSpeedGround = -maxSpeed;
        }
    }

    maxSpeed = p->qSpeedGround;

    {
        s16 rot = p->rotation;

        p->qSpeedAirX = ((int)((((int)(((gSineTable[(rot * 4) + 256])) >> 6)) * maxSpeed) >> 8));

        if (!(p->moveState & 0x00000002)) {
            p->qSpeedAirY = 0;
        }

        p->qSpeedAirY += ((int)((((int)(((gSineTable[(rot * 4)])) >> 6)) * maxSpeed) >> 8));
    }
}

void sub_80232D0(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 qPX = p->qWorldX;
    s32 qPY = p->qWorldY;
    s32 ix, iy;
    s32 ox, oy;

    if (p->playerID == 0) {
        if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
            if (gCurrentLevel & 0x2) {
                ox = gUnknown_080D650C[gCurrentLevel].x;
                if ((ox >= 0) && (qPX >= ((s32)((ox)*256)))) {
                    ix = gUnknown_080D661C[gCurrentLevel].x;
                    iy = gUnknown_080D661C[gCurrentLevel].y;

                    qPX += ((s32)((ix)*256));
                    qPY += ((s32)((iy)*256));

                    if (gCheese != ((void *)0)) {
                        gCheese->posX += ((s32)((ix)*256));
                        gCheese->posY += ((s32)((iy)*256));
                    }

                    gWorldSpeedX = ((s32)((ix)*256));
                    gWorldSpeedY = ((s32)((iy)*256));

                    sub_8039F14(((s32)((ix)*256)), ((s32)((iy)*256)));

                    gBossRingsShallRespawn = 1;

                    cam->x += ix;
                    cam->unk20 += ix;
                    cam->unk10 += ix;
                    cam->y += iy;
                    cam->unk24 += iy;
                    cam->unk14 += iy;
                }
            }
        } else if ((gPlayer.moveState & 0x08000000) && (gSpecialRingCount >= 7)) {
            ox = gUnknown_080D650C[gCurrentLevel].x;
            if ((ox >= 0) && (qPX >= ((s32)((ox)*256))) && (cam->unk8 != 0)) {
                if (!(cam->unk50 & 0x1)) {
                    s32 ix;

                    ix = gUnknown_080D661C[gCurrentLevel].x;
                    qPX += ((s32)((ix)*256));
                    cam->x += ix;
                    cam->unk20 += ix;
                    cam->unk10 += ix;

                    if (gCheese != ((void *)0)) {
                        gCheese->posX += ((s32)((ix)*256));
                    }
                }
            }

            oy = gUnknown_080D650C[gCurrentLevel].y;
            if ((oy >= 0) && (qPY >= ((s32)((oy)*256))) && (cam->unkC != 0)) {
                if (!(cam->unk50 & 0x2)) {
                    s32 iy;

                    iy = gUnknown_080D661C[gCurrentLevel].y;
                    qPY += ((s32)((iy << 8)*256));
                    cam->y += ((s32)((iy)*256));
                    cam->unk24 += ((s32)((iy)*256));

                    if (gCheese != ((void *)0)) {
                        gCheese->posY += ((s32)((iy << 8)*256));
                    }
                }
            }
        }
    }

    if ((p->moveState & (0x80000000 | 0x00000080)) != 0x00000080) {
        s32 r2, r3;
        struct Camera *cam2 = &gCamera;
        r3 = p->qWorldY;

        if ((s32)p->moveState >= 0) {
            s32 r1;


            if ((gStageFlags & 0x0080)) {
                if (p->qWorldY > ((s32)((gCamera.minY)*256))) {
                    goto lbl0;
                } else {
                    r1 = 1;
                }
            } else {
                s32 qMaxY = ((s32)((cam2->maxY)*256)) - 1;

                r1 = 1;

                if (p->qWorldY < qMaxY) {
                lbl0:
                    r1 = 0;
                }
            }
# 3025 "src/game/stage/player.c"
            if (r1 != 0) {
                p->moveState |= 0x00000080;


                if (p->moveState & 0x00000040) {
                    p->qSpeedAirY = -((s32)((2.625)*256));
                } else

                {
                    p->qSpeedAirY = -((s32)((4.875)*256));
                }


                qPY = (gStageFlags & 0x0080) ? ((s32)((cam->minY)*256)) : ((s32)((cam->maxY)*256)) - 1;



            }
        }

        if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
            r2 = gBossCameraClampYLower;
            r3 = gBossCameraClampYUpper;
        } else {
            r2 = cam->minY;
            r3 = cam->maxY;
        }

        {
            s32 oldQPX = qPX;
            s32 oldQPY = qPY;
            s32 qMinX = ((s32)((cam->minX)*256));

            qPX = ({ s32 clamped; if ((qPX) >= (qMinX)) { clamped = (qPX) > (((s32)((cam->maxX)*256)) - 1) ? (((s32)((cam->maxX)*256)) - 1) : (qPX); } else { clamped = (qMinX); } clamped; });
            qPY = ({ s32 clamped; if ((qPY) >= (((s32)((r2)*256)))) { clamped = (qPY) > (((s32)((r3)*256)) - 1) ? (((s32)((r3)*256)) - 1) : (qPY); } else { clamped = (((s32)((r2)*256))); } clamped; });

            if (qPX != oldQPX) {
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;
            }

            if (qPY != oldQPY) {
                p->qSpeedAirY = 0;
                p->qSpeedGround = 0;
            }


            if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
                s32 qPXMin = (((s32)((cam->unk10)*256)));
                if (qPX < qPXMin + ((s32)((8.0)*256))) {
                    qPX = qPXMin + ((s32)((8.0)*256));
                    p->qSpeedGround = ((s32)((5.00)*256));
                    p->qSpeedAirX = ((s32)((5.00)*256));

                    p->moveState &= ~0x00000001;
                } else if (qPX > (qPXMin + ((s32)((312.0)*256)))) {
                    qPX = (qPXMin + ((s32)((312.0)*256)));
                    p->qSpeedGround = ((s32)((5.00)*256));
                    p->qSpeedAirX = ((s32)((5.00)*256));
                }
            }


            p->qWorldX = qPX;
            p->qWorldY = qPY;
        }
    }
}

void Player_AirInputControls(Player *p)
{
    s32 r5 = p->acceleration * 2;
    s32 r6 = p->topSpeed;

    if ((p->charState != 20) && !(p->moveState & 0x00000010)) {
        s16 qAirSpeedS;
        u16 qAirSpeedU = p->qSpeedAirX;

        if (p->heldInput & 0x0020) {
            if ((p->charState != 63) && !(p->moveState & 0x00002000)) {
                p->moveState |= 0x00000001;
            }

            qAirSpeedS = qAirSpeedU;
            qAirSpeedU = qAirSpeedS - r5;
            qAirSpeedS = qAirSpeedU;

            if (qAirSpeedS < -r6) {
                qAirSpeedU = qAirSpeedS + r5;
                qAirSpeedS = qAirSpeedU;

                if (qAirSpeedS > -r6) {
                    qAirSpeedU = -r6;
                }
            }
        } else if (p->heldInput & 0x0010) {
            if ((p->charState != 63) && !(p->moveState & 0x00002000)) {
                p->moveState &= ~0x00000001;
            }

            qAirSpeedS = qAirSpeedU;
            qAirSpeedU = qAirSpeedS + r5;
            qAirSpeedS = qAirSpeedU;

            if (qAirSpeedS > r6) {
                qAirSpeedU = qAirSpeedS - r5;
                qAirSpeedS = qAirSpeedU;

                if (qAirSpeedS < r6) {
                    qAirSpeedU = r6;
                }
            }
        }

        p->qSpeedAirX = qAirSpeedU;
    }
}

void sub_80236C8(Player *p)
{
    s16 airX;
    s16 airX2;

    if ((u16)p->qSpeedAirY < (u16)((s32)((189)*256)))
        return;

    airX = p->qSpeedAirX;
    airX2 = (airX >> 5);

    if (airX2 < 0) {
        airX = (airX - airX2);
        if (airX > 0) {
            airX = 0;
        }
        p->qSpeedAirX = airX;
    } else if (airX2 > 0) {
        airX = (airX - airX2);

        if (airX < 0) {
            airX = 0;
        }

        p->qSpeedAirX = airX;
    }
}

void sub_8023708(Player *p)
{
    s16 airX;
    s16 airX2;

    if ((u16)p->qSpeedAirY < (u16)((s32)((189)*256)))
        return;

    airX = p->qSpeedAirX;
    airX2 = (airX >> 6);

    if (airX2 < 0) {
        airX = (airX - airX2);
        if (airX > 0) {
            airX = 0;
        }
        p->qSpeedAirX = airX;
    } else if (airX2 > 0) {
        airX = (airX - airX2);

        if (airX < 0) {
            airX = 0;
        }

        p->qSpeedAirX = airX;
    }
}



void sub_8023748(Player *p)
{
    if (p->itemEffect == 0x00)
        return;

    if ((p->itemEffect & 0x04) && (--p->timerSpeedup == 0)) {
        m4aMPlayTempoControl(&gMPlayInfo_BGM, 0x100);
        p->itemEffect &= ~0x04;
    }

    if ((p->itemEffect & 0x10) && (--p->timerSpeedup == 0)) {
        m4aMPlayTempoControl(&gMPlayInfo_BGM, 0x100);
        p->itemEffect &= ~0x10;
    }

    if ((p->itemEffect & 0x02) && (--p->timerInvincibility == 0)) {
        p->itemEffect &= ~0x02;

        if (p->itemEffect & 0x01) {
            CreateItemTask_Shield_Normal(gPlayer.playerID);
        } else if (p->itemEffect & 0x08) {
            CreateItemTask_Shield_Magnetic(gPlayer.playerID);
        }


        if (gMPlayTable[0].info->songHeader == gSongTable[29].header) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }
    }

    if ((p->itemEffect & 0x20) && (--p->itemEffect20Timer == 0)) {
        p->itemEffect &= ~0x20;
        gDispCnt &= ~0x8000;
        gWinRegs[5] = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    }
}

void Player_HandleWater(Player *p)
{






    p->moveState &= ~0x00001000;
    if (gWater.isActive == 1 && gWater.currentWaterLevel >= 0 && (((int)((p->qWorldY) >> 8)) - 4) >= gWater.currentWaterLevel) {
        if (!(p->moveState & 0x00000040)) {
            p->moveState |= 0x00000040;
            p->moveState |= 0x00001000;

            p->qSpeedAirX = p->qSpeedAirX >> 1;
            p->qSpeedAirY = p->qSpeedAirY >> 2;
            if ((p->character != CHARACTER_KNUCKLES || p->unk61 != 9) && p->framesUntilWaterSurfaceEffect < 1) {
                p->framesUntilWaterSurfaceEffect = 10;
                CreateWaterfallSurfaceHitEffect(((int)((p->qWorldX) >> 8)), gWater.currentWaterLevel);
                m4aSongNumStart(156);
            }
        }
# 3273 "src/game/stage/player.c"
        if (--p->framesUntilDrownCountDecrement < 1) {
            switch (p->secondsUntilDrown--) {
                case 11:
                    if (p->playerID == 0) {
                        gMusicManagerState.unk4 = 16;
                    }
                    break;
                case 12:
                    SpawnDrowningCountdownNum(p, 5);
                    break;
                case 10:
                    SpawnDrowningCountdownNum(p, 4);
                    break;
                case 8:
                    SpawnDrowningCountdownNum(p, 3);
                    break;
                case 6:
                    SpawnDrowningCountdownNum(p, 2);
                    break;
                case 4:
                    SpawnDrowningCountdownNum(p, 1);
                    break;
                case 2:
                    SpawnDrowningCountdownNum(p, 0);
                    break;
            }
            if (p->secondsUntilDrown < 0) {
                p->moveState |= 0x00000080;
                p->qSpeedAirY = 0;
                SpawnAirBubbles(p->qWorldX, p->qWorldY - ((s32)((12)*256)), 0, 1);
                SpawnBubblesAfterDrowning(p);
            }
            p->framesUntilDrownCountDecrement = 60;
        }
        if (!(gStageTime % 16u) && !(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x300)) {
            s32 qDX = ((p->moveState & 0x00000001) ? -((s32)((4)*256)) : +((s32)((4)*256)));
            SpawnAirBubbles(p->qWorldX + qDX, p->qWorldY - ((s32)((4)*256)), 0, 0);
        }
    } else {
        if (p->moveState & 0x00000040) {
            p->moveState &= ~0x00000040;
            p->moveState |= 0x00001000;
            p->qSpeedAirY = p->qSpeedAirY << 1;

            if ((p->character != CHARACTER_KNUCKLES || p->unk61 != 9) && p->framesUntilWaterSurfaceEffect < 1) {
                p->framesUntilWaterSurfaceEffect = 10;
                CreateWaterfallSurfaceHitEffect(((int)((p->qWorldX) >> 8)), gWater.currentWaterLevel);
                m4aSongNumStart(156);
            }
        }
# 3334 "src/game/stage/player.c"
        p->framesUntilDrownCountDecrement = 60;
        p->secondsUntilDrown = 30;






        if (gMPlayTable[0].info->songHeader == gSongTable[31].header && p->playerID == 0) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }

    }

    if (p->itemEffect & 0x04) {





        p->acceleration = p->acceleration * 2;
        p->deceleration = p->deceleration * 2;

    } else if (p->itemEffect & 0x10) {
        p->maxSpeed = p->maxSpeed >> 2;
        p->acceleration = p->acceleration >> 2;
        p->deceleration = p->deceleration >> 2;
    }

    if (p->framesUntilWaterSurfaceEffect != 0) {
        p->framesUntilWaterSurfaceEffect--;
    }
}


void Player_HandleSpriteYOffsetChange(Player *p, s32 spriteOffsetY)
{
    u8 rot;
    if (p->spriteOffsetY == spriteOffsetY) {
        return;
    }

    rot = p->rotation;

    if ((gStageFlags & 0x0080)) {
        rot += ((s32)((1. / 4.)*256));
        rot = -rot;
        rot -= ((s32)((1. / 4.)*256));
    }


    if ((s32)(rot + ((s32)((1. / 8.)*256))) > 0) {
        if (rot != 0) {
            rot = (rot + ((s32)((1. / 8.)*256))) - 1;
            ;
        } else {
            rot = ((s32)((1. / 8.)*256));
        }
    } else {
        if (rot != 0) {
            rot = (rot + ((s32)((1. / 8.)*256)));
        } else {
            rot = ((s32)((1. / 8.)*256)) - 1;
        }
    }

    switch ((rot >> 6)) {
        case 0: {
            p->qWorldY -= ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;

        case 2: {
            p->qWorldY += ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;

        case 1: {
            p->qWorldX += ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;

        case 3: {
            p->qWorldX -= ((s32)((spriteOffsetY - p->spriteOffsetY)*256));
        } break;
    }
}



void Player_Debug_TestRingScatter(Player *p)
{
    if (p->moveState & 0x80000000) {
        s32 qSpeedGround = p->qSpeedGround;
        if (gInput & 0x00F0) {
            qSpeedGround += ((s32)((0.125)*256));
            qSpeedGround = qSpeedGround >= ((s32)((0)*256)) ? ({ s32 clamped; if ((qSpeedGround) < (((s32)((0)*256)))) { clamped = (((s32)((0)*256))); } else { clamped = (qSpeedGround) > (((s32)((16)*256))) ? (((s32)((16)*256))) : (qSpeedGround); } clamped; }) : ((s32)((0)*256));
        } else {
            qSpeedGround = 0;
        }
        p->qSpeedGround = qSpeedGround;

        switch (gInput & (0x0020 | 0x0010)) {
            case 0x0020:
                p->qSpeedAirX = -qSpeedGround;
                break;

            case 0x0010:
                p->qSpeedAirX = +qSpeedGround;
                break;

            default:
                p->qSpeedAirX = 0;
        }

        switch (gInput & (0x0080 | 0x0040)) {
            case 0x0040:
                p->qSpeedAirY = -qSpeedGround;
                break;

            case 0x0080:
                p->qSpeedAirY = +qSpeedGround;
                break;

            default:
                p->qSpeedAirY = 0;
        }

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
        sub_80232D0(p);

        if (gPressedKeys & 0x0002) {
            InitScatteringRings(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 1);
        }
    }
}


void Task_PlayerHandleDeath(void)
{
    player_0_Task *gt = (void *)(0x03000000 + ((gCurTask)->data));
    u32 val = gt->unk4;
    if (val == 0) {

        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
            TaskDestroy(gCurTask);

            if ((!(gLoadedSaveGame)->timeLimitDisabled
                 && (gCourseTime > ((int)(((10 * 60.) + 0) * 60)) || (gStageFlags & 0x0004 && gCourseTime == 0)))
                || ((gGameMode == 1 || gGameMode == 2) && gCourseTime > ((int)(((10 * 60.) + 0) * 60)))) {
                HandleDeath();
            } else {
                gRingCount = 0;
                gSpecialRingCount = 0;
                HandleLifeLost();
            }
        } else

        {

            gRingCount = 0;

            if (gGameMode == 3) {
                gRingCount = 1;
            }


            gSpecialRingCount = 0;
            InitializePlayer(&gPlayer);
            gCamera.x = ((int)((gPlayer.qWorldX) >> 8)) + gCamera.shiftX - (240 / 2);
            gCamera.y = ((int)((gPlayer.qWorldY) >> 8)) + gCamera.shiftY - (160 / 2);
            m4aMPlayTempoControl(&gMPlayInfo_BGM, 256);
            gPlayer.moveState = 0;
            gStageFlags &= ~0x0080;

            gPlayer.spriteInfoBody->s.frameFlags &= ~((3) << (12));
            gPlayer.spriteInfoBody->s.frameFlags |= ((2) << (12));
            gPlayer.spriteInfoLimbs->s.frameFlags &= ~((3) << (12));
            gPlayer.spriteInfoLimbs->s.frameFlags |= ((2) << (12));

            gCamera.unk50 &= ~0x3;

            if (gPlayer.character == CHARACTER_CREAM && gCheese != ((void *)0)) {
                gCheese->posX = gPlayer.qWorldX;
                gCheese->posY = gPlayer.qWorldY;
            }


            gCurTask->main = Task_PlayerMain;
            gPlayer.callback = Player_TouchGround;
        }
    } else {
        val--;
        gt->unk4 = val;
    }
}

static inline bool32 DeadPlayerLeftScreen(Player *p, struct Camera *cam, s32 playerY)
{
    if (p->moveState & 0x80000000) {
        return 0;
    }


    if ((gStageFlags & 0x0080)) {
        if (playerY <= ((s32)((cam->y - 80)*256))) {
            return 1;
        }
    } else

    {
        if (playerY >= ((s32)((cam->y)*256)) + ((s32)((160 + 80)*256)) - 1) {
            return 1;
        }
    }
    return 0;
}

void Task_PlayerDied(void)
{
    Player *p = &gPlayer;

    PlayerSpriteInfo *psi1 = gPlayer.spriteInfoBody;
    PlayerSpriteInfo *psi2 = gPlayer.spriteInfoLimbs;

    if (DeadPlayerLeftScreen(&gPlayer, &gCamera, gPlayer.qWorldY)) {
        player_0_Task *gt = (void *)(0x03000000 + ((gCurTask)->data));
        gt->unk4 = (int)(((0 * 60.) + 1) * 60);
        gPlayer.moveState |= 0x00100000;
        if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
            sub_8024B10(p, psi1);
        }
        gCurTask->main = Task_PlayerHandleDeath;
        return;
    }

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    sub_802486C(p, psi1);
    sub_8024B10(p, psi1);

    sub_8024F74(p, psi2);

}

void Task_PlayerMain(void)
{
    Player *p = &gPlayer;
    Player_HandleBoostThreshold(p);
    Player_HandleBoostState(p);
    Player_ApplyBoostPhysics(p);
    Player_HandleWalkAnim(p);

    gWorldSpeedX = 0;
    gWorldSpeedY = 0;
    Player_HandleInputs(p);

    InputBuffer_HandleFrameInput(p);
    Player_HandleWater(p);

    CallPlayerTransition(p);

    if (!(p->moveState & 0x00400000)) {
        p->callback(p);
    } else if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        sub_80232D0(p);
    }

    sub_802486C(p, p->spriteInfoBody);
    sub_8024B10(p, p->spriteInfoBody);

    sub_8024F74(p, p->spriteInfoLimbs);


    if (p->charState != 20 && p->timerInvulnerability > 0) {
        p->timerInvulnerability--;
    }

    if (p->disableTrickTimer != 0) {
        p->disableTrickTimer--;
    }



    sub_8023748(p);


    BoostEffect_StorePlayerPos();
    BoostEffect_StorePlayerState();

    p->moveState &= ~0x00000800;
    gHomingTarget.squarePlayerDistance = ((128) * (128));
    gHomingTarget.angle = 0;
    gCheeseTarget.squarePlayerDistance = ((200) * (200));
    gCheeseTarget.task = ((void *)0);


    if (p->moveState & 0x00000080) {
        struct Camera *cam = &gCamera;
        gCurTask->main = Task_PlayerDied;
        p->charState = 22;
        p->qSpeedAirX = 0;

        if (p->qSpeedAirY < -((s32)((4)*256))) {
            p->qSpeedAirY = -((s32)((2)*256));
        } else if (p->qSpeedAirY > 0) {
            p->qSpeedAirY = 0;
        }

        p->timerInvulnerability = 2;
        p->itemEffect = 0;
        p->moveState &= ~0x00000020;
        p->moveState &= ~0x00000008;
        p->stoodObj = ((void *)0);
        cam->unk50 |= 3;

        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
            gStageFlags |= 0x0001;
        }


        p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
        p->spriteInfoBody->s.frameFlags |= ((1) << (12));
        p->unk80 = 0x100;
        p->unk82 = 0x100;


        if (gMPlayTable[0].info->songHeader == gSongTable[31].header) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }
        if (gMPlayTable[0].info->songHeader == gSongTable[29].header) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }

        m4aSongNumStop(31);

        if (p->character == CHARACTER_TAILS) {
            m4aSongNumStop(120);
        }

        if (p->character == CHARACTER_CREAM) {
            m4aSongNumStop(227);
        }

        if (p->secondsUntilDrown < 0) {
            m4aSongNumStart(157);
        } else {
            m4aSongNumStart(119);
        }

    }
}

void CallPlayerTransition(Player *p)
{
    if (p->transition) {
        switch (p->transition - 1) {
            case 1 - 1: {
                gPlayer.callback = Player_TouchGround;;
            } break;
            case 2 - 1: {
                gPlayer.callback = Player_SpinAttack;;
            } break;
            case 3 - 1: {
                p->moveState &= ~(0x00400000 | 0x00200000);
                gPlayer.callback = Player_InitJump;;
            } break;

            case 4 - 1: {
                p->moveState &= ~(0x00400000 | 0x00200000);
                gPlayer.callback = Player_8025F84;;
            } break;


            case 7
                - 1:

            {
                gPlayer.callback = Player_8028D74;;
            } break;

            case 6
                - 1:

            {
                p->moveState |= 0x00000100;
                gPlayer.callback = Player_8026060;;
            } break;

            case 5 - 1: {
                p->moveState |= 0x00000100;
                gPlayer.callback = Player_InitUncurl;;
            } break;

            case 8 - 1: {
                gPlayer.callback = Player_InitHomingAttackRecoil;;
            } break;

            case 9 - 1: {
                gPlayer.callback = Player_InitHurt;;
            } break;

            case 10 - 1: {
                if (gGameMode == 1) {
                    gStageFlags |= 0x0200;
                }

                if (p->moveState
                    & (0x20000000 | 0x10000000 | 0x00002000 | 0x00000008 | 0x00000002)) {
                    p->moveState |= (0x08000000 | 0x00200000);
                    p->heldInput = 0;
                    p->frameInput = 0;
                } else {
                    p->moveState |= 0x08000000;
                    gPlayer.callback = Player_InitReachedGoal;;
                }
            } break;

            case 14 - 1: {


                if ((gStageFlags & 0x0080)) {
                    p->unk6E |= 0x10;
                }

                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 15 - 1: {

                if (!(gStageFlags & 0x0080))

                {
                    p->unk6E |= 0x10;
                }

                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 16 - 1: {
                p->unk6E |= 0x20;
                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 17 - 1: {
                p->unk6E |= 0x30;
                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 18 - 1: {

                if ((gStageFlags & 0x0080)) {
                    p->unk6E |= 0x60;
                } else

                {
                    p->unk6E |= 0x40;
                }
                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 19 - 1: {

                if ((gStageFlags & 0x0080)) {
                    p->unk6E |= 0x70;
                } else

                {
                    p->unk6E |= 0x50;
                }
                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 20 - 1: {

                if ((gStageFlags & 0x0080)) {
                    p->unk6E |= 0x40;
                } else

                {
                    p->unk6E |= 0x60;
                }
                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 21 - 1: {

                if ((gStageFlags & 0x0080)) {
                    p->unk6E |= 0x50;
                } else

                {
                    p->unk6E |= 0x70;
                }
                gPlayer.callback = Player_TouchNormalSpring;;
            } break;
            case 22 - 1: {
                gPlayer.callback = Player_InitRampOrDashRing;;
            } break;

            case 24 - 1: {
                gPlayer.callback = Player_InitDashRing;;
            } break;

            case 11 - 1: {
                gPlayer.callback = Player_InitGrinding;;
            } break;
            case 12 - 1: {
                gPlayer.callback = Player_InitGrindRailEndGround;;
            } break;
            case 13 - 1: {
                gPlayer.callback = Player_GrindRailEndAir;;
            } break;
            case 23 - 1: {
                gPlayer.callback = Player_802A258;;
            } break;

            case 25 - 1: {
                gPlayer.callback = Player_InitPipeEntry;;
            } break;
            case 28 - 1: {
                gPlayer.callback = Player_InitPipeExit;;
            } break;
            case 26 - 1: {
                gPlayer.callback = Player_InitPropellorSpring;;
            } break;
            case 27 - 1: {
                gPlayer.callback = Player_InitCorkscrew;;
            } break;

        }
    }

    p->prevTransition = p->transition;
    p->transition = 0;
}

void Player_HandleInputs(Player *p)
{
    u32 input;
    u16 input2;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)))) && (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id != gCamera.spectatorTarget)) {
        p->heldInput = 0;
        input = 0;
    } else {
        input = p->heldInput;

        if (!(p->moveState & 0x00200000)) {
            p->heldInput = gInput;

            if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)))) && (p->itemEffect & 0x40)) {
                u8 dpad = (p->heldInput & 0x00F0) >> 4;
                u32 r1 = gStageTime;

                r1 = ((p->confusionTimer + r1) & 0x3);
                if (!r1) {
                    r1 = 1;
                }

                dpad <<= r1;
                dpad = (dpad >> 4) | dpad;
                dpad = (u8)(dpad << 4);

                p->heldInput = (p->heldInput & ~0x00F0) | dpad;

                if (--p->confusionTimer == 0) {
                    p->itemEffect &= ~0x40;
                }
            }
        }
    }

    input2 = p->heldInput;
    input ^= input2;



    asm("and %0, %2" : "=r"(input) : "r"(input), "r"(input2));

    p->frameInput = input;
}

void sub_80246DC(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    u16 charState = p->charState;

    u32 anim = p->anim;



    u32 variant = p->variant;
    u32 sl = variant;


    AnimId baseAnim = gPlayerCharacterIdleAnims[p->character];



    anim = (u16)(anim - baseAnim);

    if ((charState == 10) || (charState == 11)) {
        if (p->variant == 0 && (s->frameFlags & ((1) << (14))) && (((u16)anim - 10) == 0 || ((u16)anim - 10) == 1)) {
            p->variant = 1;
            p->moveState |= 0x00000004;

            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        } else {
            if ((p->qSpeedAirY > 0) && (p->variant == 1) && ((((u16)anim - 10) == 0) || (((u16)anim - 10) == 1))) {
                s32 newY = sub_801E6D4(((int)((p->qWorldY) >> 8)) + p->spriteOffsetY, ((int)((p->qWorldX) >> 8)), p->layer, 8, ((void *)0), sub_801EE64);

                if (gGameMode != 5) {
                    if (newY <= 32) {
                        p->variant = 2;
                    }
                }
            }
        }
    } else {
        if (charState == 38) {
            if (anim == 52) {
                if (variant == 0) {
                    if (p->qSpeedAirY > 0) {
                        p->variant = 1;
                    }
                } else if (p->variant == 1) {
                    if (s->frameFlags & ((1) << (14))) {
                        p->variant = 2;
                    }
                }
            }
        }

        else if (charState == 39) {
            if (anim == 53) {
                if (sl == 0) {
                    if (s->frameFlags & ((1) << (14))) {

                        p->anim = (gPlayerCharacterIdleAnims[p->character] + 52);



                        p->variant = 2;
                    }
                }
            }
        }

        else if (charState == 37) {
            if (anim == 65) {
                if (variant == 0) {
                    if (p->qSpeedAirY > 0) {
                        p->variant = 1;
                    }
                } else if (variant == 1) {
                    if (s->frameFlags & ((1) << (14))) {
                        p->variant = 2;
                    }
                }
            }
        } else if (charState == 57) {
            if (anim == 66) {
                if (variant == 0) {
                    if (p->qSpeedAirY > 0) {
                        p->variant = 1;
                    }
                } else if (sl == 1) {
                    if (s->frameFlags & ((1) << (14))) {
                        p->variant = 2;
                    }
                }
            }
        }

    }
}

void sub_802486C(Player *p, PlayerSpriteInfo *p2)
{

    s32 speed;
    register s32 r0 asm("r0");

    Sprite *s = &p2->s;

    if ((p->charState != -1) && (p->charState != p->prevCharState)) {
        p->anim = sCharStateAnimInfo[p->charState][0];

        if (p->charState < 80) {

            p->anim += gPlayerCharacterIdleAnims[p->character];



        }
        p->variant = sCharStateAnimInfo[p->charState][1];
        p2->s.animSpeed = ((int)((float)(1.0)*0x10));
    }

    switch (((u16)(p->charState - 9) << 16) >> 16) {



        case 9 - 9: {

            p->anim = gPlayerCharacterIdleAnims[p->character] + 9;



            p->variant = p->walkAnim;
        }

        case 59 - 9:
        case 60 - 9:
        case 61
            - 9:

        {
            { s32 speed = p->qSpeedGround; speed = (speed >> 5) + (speed >> 6); speed = ((speed) >= 0 ? (speed) : -(speed)); if (speed >= ((int)((float)(0.5)*0x10))) { if (speed > ((int)((float)(8.0)*0x10))) { speed = ((int)((float)(8.0)*0x10)); } } else { speed = ((int)((float)(0.5)*0x10)); } s->animSpeed = speed; };
        } break;

        case 16 - 9: {
            if (p->character != CHARACTER_CREAM) {
                break;
            }

            speed = p->qSpeedGround;
            speed = (speed >> 5) + (speed >> 6);

            speed = ((speed) >= 0 ? (speed) : -(speed));

            if (speed >= ((int)((float)(0.5)*0x10))) {
                if (speed > ((int)((float)(8.0)*0x10))) {
                    speed = ((int)((float)(8.0)*0x10));
                }
            } else {
                speed = ((int)((float)(0.5)*0x10));
            }
            s->animSpeed = speed;



        } break;

        case 51 - 9:
        case 52 - 9: {

            r0 = p->qSpeedAirY;
            goto lab;



        } break;

        case 53 - 9:
        case 54 - 9: {

            r0 = p->qSpeedGround;
        lab:
            speed = ((int)((((r0) >= 0 ? (r0) : -(r0))) >> 8)) * 3 + 8;
            s->animSpeed = speed;



        } break;

    }

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)))))

    {

        p->unk98 = 0;
    }

    if (p->unk6C || (s->graphics.anim != p->anim) || (s->variant != p->variant)) {
        p->unk6C = 0;
        s->graphics.anim = p->anim;
        s->variant = p->variant;
        s->prevVariant = -1;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;


        if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)))))

        {
            p->unk98 = 1;
        }
    }

    p->prevCharState = p->charState;
}

void sub_8024B10(Player *p, PlayerSpriteInfo *inPsi)
{
    struct MultiSioData_0_4 *send;
    MultiplayerPlayer *mpp;

    Sprite *s = &inPsi->s;
    PlayerSpriteInfo *psi = inPsi;

    struct Camera *cam = &gCamera;
    s16 camX = cam->x;
    s16 camY = cam->y;


    bool32 cond = ({
        bool32 r2 = s->prevVariant == 0xFF || s->prevAnim == 0xFFFF;
        r2;
    });

    s->x = ((int)((p->qWorldX) >> 8)) - camX;
    s->y = ((int)((p->qWorldY) >> 8)) - camY;

    psi->transform.x = ((int)((p->qWorldX) >> 8)) - camX;
    psi->transform.y = ((int)((p->qWorldY) >> 8)) - camY;

    if (p->charState == 9 || p->charState == 41

        || p->charState == 62 || p->charState == 63
        || (p->charState == 87 && p->character == CHARACTER_CREAM)

    ) {

        psi->transform.rotation = p->rotation << 2;
        s->frameFlags &= ~(((1) << (10)) | ((1) << (11)));
        s->frameFlags &= ~((0x1F) << (0));
        s->frameFlags |= p->playerID | ((1) << (5));

        ({ s32 x, y; if (!(p->moveState & 0x00000001)) { psi->transform.qScaleX = -((s32)((1.0)*256)); } else { psi->transform.qScaleX = +((s32)((1.0)*256)); } if ((gStageFlags & 0x0080)) { psi->transform.qScaleX = -psi->transform.qScaleX; } if (psi->transform.qScaleX < 0) { psi->transform.x--; } if ((gStageFlags & 0x0080)) { psi->transform.qScaleY = ((s32)((1.0)*256)); psi->transform.rotation = ({ s16 clamped = (({ s16 clamped = (-((s32)((1.0)*256)) - (psi->transform.rotation + psi->transform.qScaleY)) & (1024 - 1); clamped; })) & (1024 - 1); clamped; }); } else { psi->transform.qScaleY = ((s32)((1.0)*256)); } x = ((int)((psi->transform.qScaleX * p->unk80) >> 8)); y = ((int)((psi->transform.qScaleY * p->unk82) >> 8)); psi->transform.qScaleX = x; psi->transform.qScaleY = y; UpdateSpriteAnimation(s); });

        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
            TransformSprite(s, &psi->transform);
        }

    } else {
        psi->transform.rotation = 0;
        s->frameFlags &= ~(((1) << (5)) | ((0x1F) << (0)));

        if (!(p->moveState & 0x00000001)) {
            s->frameFlags |= ((1) << (10));
        } else {
            s->frameFlags &= ~((1) << (10));
            s->frameFlags &= ~((0x1F) << (0));
            s->frameFlags &= ~((1) << (5));
            s->x++;
        }

        if ((gStageFlags & 0x0080)) {
            s->frameFlags |= ((1) << (11));
        } else

        {
            s->frameFlags &= ~((1) << (11));
        }
        UpdateSpriteAnimation(s);
    }

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {

        if (p->moveState & 0x00000080
            || (!(p->moveState & 0x00100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
            DisplaySprite(s);
        }



        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
            return;
        }
    }

    send = &gMultiSioSend.pat4;
    mpp = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id])->data));
    send->unk0 = 0x5000;
    send->x = ((int)((p->qWorldX) >> 8)) + p->unk7C;
    send->y = ((int)((p->qWorldY) >> 8));
    send->unk6 = s->graphics.anim;
    send->unkA = p->itemEffect;
    if (gGameMode == 5) {

        send->unk6 -= gPlayerCharacterIdleAnims[p->character];

        send->unk6 |= gRingCount << 8;
    }
    send->unkB = s->variant | (p->spriteOffsetY << 4);
    send->unkC = s->animSpeed;
    send->unkD = psi->transform.rotation >> 2;

    if (s->frameFlags & ((1) << (5))) {
        send->unk8 |= 1;
    } else {
        send->unk8 &= ~1;
    }

    if (!(p->moveState & 1)) {
        send->unk8 |= 2;
    } else {
        send->unk8 &= ~2;
    }


    if ((gStageFlags & 0x0080)) {
        send->unk8 |= 8;
    } else

    {
        send->unk8 &= ~8;
    }

    if (p->moveState & 0x00000080 || mpp->unk5C & 1 || p->moveState & 0x40000000 || p->timerInvulnerability != 0) {
        send->unk8 |= 4;
    } else {
        send->unk8 &= ~4;
    }

    if (mpp->unk5C & 1) {
        send->unk8 |= 0x100;
    } else {
        send->unk8 &= ~0x100;
    }

    if (p->moveState & 0x00100000) {
        send->unk8 |= 0x40;
    } else {
        send->unk8 &= ~0x40;
    }

    send->unk8 &= ~0x30;
    send->unk8 |= ((gPlayer.spriteInfoBody->s.frameFlags & 0x3000) >> 8);
    if (p->layer != 0) {
        send->unk8 |= 0x80;
    } else {
        send->unk8 &= ~0x80;
    }

    if (cond) {
        send->unk8 |= 0x800;
    } else {
        send->unk8 &= ~0x800;
    }

    mpp->unk64 = ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id;
    if (gPlayer.moveState & 0x00000008) {
        u8 i;
        for (i = 0; i < 4; i++) {
            s32 id = ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id;
            if (id != i) {
                MultiplayerPlayer *mpp2;
                if (gMultiplayerPlayerTasks[i] == ((void *)0)) {
                    break;
                }

                mpp2 = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[i])->data));
                if (gPlayer.stoodObj == &mpp2->s) {
                    mpp->unk64 = i;
                }
            }
        }
    }

    send->unk8 &= ~0x600;
    send->unk8 |= (mpp->unk64 << 9);
}






void sub_8024F74(Player *p, PlayerSpriteInfo *inPsi)
{
    struct MultiSioData_0_4 *recv;

    Sprite *s = &inPsi->s;
    PlayerSpriteInfo *psi = inPsi;

    struct Camera *cam = &gCamera;
    s16 camX = cam->x;
    s16 camY = cam->y;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        s32 id = ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id;
        recv = &gMultiSioRecv[id].pat4;
        psi->transform.x = recv->x - camX;
        psi->transform.y = recv->y - camY;
    } else {
        psi->transform.x = ((int)((p->qWorldX) >> 8)) - camX;
        psi->transform.y = ((int)((p->qWorldY) >> 8)) - camY;
    }

    s->animSpeed = ((int)((float)(1.0)*0x10));
    if (p->moveState & 0x00000040) {
        s->animSpeed = 8;
    }

    switch (p->character) {
        case CHARACTER_AMY:
        case CHARACTER_KNUCKLES:
        case CHARACTER_SONIC:
            break;

        case CHARACTER_CREAM: {
            u16 anim = p->anim;
            u16 variant = p->variant;
            anim = anim - gPlayerCharacterIdleAnims[p->character];
            if ((((anim == 10 || anim == 11) && variant == 1) || (anim == 4 && variant == 0) || (anim == 70 && variant == 0))) {
                u8 rotation = p->rotation;
                p->w.cf.unkB0 = rotation;
                psi->transform.rotation = rotation << 2;
                s->frameFlags &= ~((0x1F) << (0));
                s->frameFlags |= gOamMatrixIndex++ | ((1) << (5));

                ({ s32 x, y; if (!(p->moveState & 0x00000001)) { psi->transform.qScaleX = -((s32)((1.0)*256)); } else { psi->transform.qScaleX = +((s32)((1.0)*256)); } if ((gStageFlags & 0x0080)) { psi->transform.qScaleX = -psi->transform.qScaleX; } if (psi->transform.qScaleX < 0) { psi->transform.x--; } if ((gStageFlags & 0x0080)) { psi->transform.qScaleY = ((s32)((1.0)*256)); psi->transform.rotation = ({ s16 clamped = (({ s16 clamped = (-((s32)((1.0)*256)) - (psi->transform.rotation + psi->transform.qScaleY)) & (1024 - 1); clamped; })) & (1024 - 1); clamped; }); } else { psi->transform.qScaleY = ((s32)((1.0)*256)); } x = ((int)((psi->transform.qScaleX * p->unk80) >> 8)); y = ((int)((psi->transform.qScaleY * p->unk82) >> 8)); psi->transform.qScaleX = x; psi->transform.qScaleY = y; UpdateSpriteAnimation(s); });
                TransformSprite(s, &psi->transform);

                if (p->moveState & 0x00000080
                    || (!(p->moveState & 0x00100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
                    DisplaySprite(s);
                }
            }
            break;
        }
        case CHARACTER_TAILS: {
            s32 asx = p->qSpeedAirX;
            s32 asy = p->qSpeedAirY;

            u16 anim = p->anim;
            u16 variant = p->variant;
            anim = anim - gPlayerCharacterIdleAnims[p->character];
            if ((((anim == 10 || anim == 11) && variant == 1) || (anim == 4 && variant == 0) || (anim == 70 && variant == 0))) {
                u8 shift;
                if (asx != 0 || asy != 0) {
                    shift = (((int)((ArcTan2(asx, asy)) >> 8)) + 0x40);
                } else {
                    shift = p->moveState & 0x00000001 ? 0xC0 : 0x40;
                }
                p->w.tf.shift = shift;

                psi->transform.rotation = shift << 2;
                s->frameFlags &= ~((0x1F) << (0));
                s->frameFlags |= gOamMatrixIndex++ | ((1) << (5));

                ({ s32 x, y; if (!(p->moveState & 0x00000001)) { psi->transform.qScaleX = -((s32)((1.0)*256)); } else { psi->transform.qScaleX = +((s32)((1.0)*256)); } if ((gStageFlags & 0x0080)) { psi->transform.qScaleX = -psi->transform.qScaleX; } if (psi->transform.qScaleX < 0) { psi->transform.x--; } if ((gStageFlags & 0x0080)) { psi->transform.qScaleY = ((s32)((1.0)*256)); psi->transform.rotation = ({ s16 clamped = (({ s16 clamped = (-((s32)((1.0)*256)) - (psi->transform.rotation + psi->transform.qScaleY)) & (1024 - 1); clamped; })) & (1024 - 1); clamped; }); } else { psi->transform.qScaleY = ((s32)((1.0)*256)); } x = ((int)((psi->transform.qScaleX * p->unk80) >> 8)); y = ((int)((psi->transform.qScaleY * p->unk82) >> 8)); psi->transform.qScaleX = x; psi->transform.qScaleY = y; UpdateSpriteAnimation(s); });
                TransformSprite(s, &psi->transform);

                if (p->moveState & 0x00000080
                    || (!(p->moveState & 0x00100000) && (p->timerInvulnerability == 0 || (gStageTime & 2) == 0))) {
                    DisplaySprite(s);
                }
            }
            break;
        }
    }
}


void Player_TouchGround(Player *p)
{
    u32 mask;

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        if (p->moveState & 0x00000002) {
            Player_8025F84(p);
            return;
        }
    }


    mask = (0x00000800 | 0x00000008 | 0x00000002);
    if ((p->moveState & mask) == 0x00000800) {
        Player_InitIceSlide(p);
    } else

    {

        Player_TransitionCancelFlyingAndBoost(p);
# 4416 "src/game/stage/player.c"
        p->moveState &= ~(0x00000004 | 0x00000002);

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

        if (p->qSpeedGround != 0) {
            p->charState = 9;
        } else {
            p->charState = 0;
        }

        { gPlayer.callback = Player_Idle;; Player_Idle(p);; };
    }
}


void Player_Idle(Player *p)
{

    if ((p->moveState & (0x08000000 | 0x00000008 | 0x00000002)) == 0x08000000) {
        Player_InitReachedGoal(p);
        return;
    }

    if ((p->moveState & (0x00000800 | 0x00000008 | 0x00000002)) == 0x00000800) {
        Player_InitIceSlide(p);
        return;
    }


    if (!Player_TryTaunt(p) && !Player_TryCrouchOrSpinAttack(p) && !Player_TryJump(p)

        && !Player_TryAttack(p)

    ) {

        Player_HandleGroundMovement(p);

        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
            s32 acceleration = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);

            if (p->qSpeedGround != 0) {
                p->qSpeedGround += acceleration;
            }
        }

        sub_80232D0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

        if (p->moveState & 0x00008000) {
            p->moveState &= ~0x00000002;
        } else

            if (p->moveState & 0x00000002) {
            gPlayer.callback = Player_Jumping;;
        }
    }
}

void Player_8025548(Player *p)
{
    if (!Player_TryCrouchOrSpinAttack(p) && !Player_TryJump(p)

        && ((gGameMode == 5) || !Player_TryAttack(p))

    ) {
        if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
            gPlayer.callback = Player_TouchGround;;
        }

        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
            u32 acceleration = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);

            if (p->qSpeedGround != 0)
                p->qSpeedGround += acceleration;
        }

        sub_80232D0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

        if (p->moveState & 0x00000002) {
            gPlayer.callback = Player_Jumping;;
        }
    }
}

void Player_Taunt(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    u16 characterAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

    if (!Player_TryCrouchOrSpinAttack(p) && !Player_TryJump(p)

        && !Player_TryAttack(p)

    ) {
        u16 dpad = (p->heldInput & 0x00F0);
        if (dpad == 0) {
            if ((characterAnim == 1) && (p->variant == 0)) {
                p->variant = 1;
                p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
            }
        } else if (dpad != 0x0040) {
            gPlayer.callback = Player_TouchGround;;
        }

        if ((characterAnim == 1) && (p->variant == 1) && (s->frameFlags & ((1) << (14)))) {
            gPlayer.callback = Player_TouchGround;;
        }

        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
            u32 acceleration = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);

            if (p->qSpeedGround != 0)
                p->qSpeedGround += acceleration;
        }

        sub_80232D0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

        if (p->moveState & 0x00000002) {
            gPlayer.callback = Player_Jumping;;
        }
    }
}

void Player_Crouch(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    u16 characterAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

    if (!Player_TryInitSpindash(p) && !Player_TryJump(p)

        && !Player_TryAttack(p)

    ) {
        u16 dpad = (p->heldInput & 0x00F0);
        if (dpad == 0) {
            if ((characterAnim == 2) && (p->variant == 0)) {
                p->variant = 1;
                p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
            }
        } else if (dpad != 0x0080) {
            gPlayer.callback = Player_TouchGround;;
        }

        if ((characterAnim == 2) && (p->variant == 1) && (s->frameFlags & 0x4000)) {
            gPlayer.callback = Player_TouchGround;;
        }

        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
            u32 acceleration = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);

            if (p->qSpeedGround != 0)
                p->qSpeedGround += acceleration;
        }

        sub_80232D0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

        if (p->moveState & 0x00000002) {
            gPlayer.callback = Player_Jumping;;
        }
    }
}


void Player_SpinAttack(Player *p)
{
    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        if ((p->moveState & 0x00000002)) {
            Player_8025F84(p);
            return;
        }
    }

    if ((p->moveState & (0x00000800 | 0x00000008 | 0x00000002)) == 0x00000800) {
        Player_InitIceSlide(p);
    } else {
        p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
        p->charState = 4;

        { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

        p->moveState |= 0x00000004;
        p->unk99[0] = 0;
        { gPlayer.callback = Player_Rolling;; Player_Rolling(p);; };
    }
}


void Player_Rolling(Player *p)
{

    if ((p->moveState & (0x08000000 | 0x00000008 | 0x00000002)) == 0x08000000) {
        Player_InitReachedGoal(p);
        return;
    }
    if ((p->moveState & (0x00000800 | 0x00000008 | 0x00000002)) == 0x00000800) {
        Player_InitIceSlide(p);
        return;
    }


    if (p->unk99[0] != 0) {
        p->unk99[0]--;
    } else if (!Player_TryJump(p)) {
        if (p->unk2A == 0) {
            u16 dpadSideways = (p->heldInput & (0x0020 | 0x0010));
            if (dpadSideways != 0x0010) {
                if (dpadSideways == 0x0020) {
                    s32 val = p->qSpeedGround;
                    if (val <= 0) {
                        p->moveState |= 0x00000001;
                    } else if ((val - ((s32)((0.09375)*256))) < 0) {
                        s32 deceleration = -((s32)((0.375)*256));
                        p->qSpeedGround = deceleration;
                    } else {
                        p->qSpeedGround = (val - ((s32)((0.09375)*256)));
                    }
                }
            } else {
                s32 val = p->qSpeedGround;
                if (val >= 0) {
                    p->moveState &= ~0x00000001;
                } else if ((val + ((s32)((0.09375)*256))) > 0) {
                    p->qSpeedGround = ((s32)((0.375)*256));
                } else {
                    p->qSpeedGround = (val + ((s32)((0.09375)*256)));
                }
            }
        }
    } else {
        return;
    }

    if (p->qSpeedGround > 0) {
        p->rollingDeceleration = 8;
    } else if (p->qSpeedGround < 0) {
        p->rollingDeceleration = -8;
    } else {
        p->rollingDeceleration = 0;
    }

    p->qSpeedGround -= p->rollingDeceleration;

    if ((p->qSpeedGround > -((s32)((0.5)*256))) && (p->qSpeedGround < ((s32)((0.5)*256)))) {
        p->rollingDeceleration = 0;
        p->qSpeedGround = 0;
    }

    if (p->qSpeedGround == 0) {
        { gPlayer.callback = Player_TouchGround;; Player_TouchGround(p);; };
    } else {
        s32 speedX = p->qSpeedGround;

        if ((((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) && (speedX != 0)) {
            u32 sinVal = ((int)(((gSineTable[((p->rotation) * 4)])) >> 6)) * 60;
            s32 sinInt = (s32)(((int)(((s32)sinVal) >> 8)));

            if (speedX > 0) {
                if (sinInt <= 0) {
                    sinInt >>= 2;
                }
            } else if (sinInt >= 0) {
                sinInt >>= 2;
            }

            speedX += sinInt;

            p->qSpeedGround = speedX;
        }

        sub_80232D0(p);
        sub_8023260(p);
        sub_8023128(p);

        if (p->moveState & 0x00000002) {
            if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
        }

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

        if (p->moveState & 0x00000002) {
            gPlayer.callback = Player_Jumping;;
        }
    }
}

void Player_InitJump(Player *p)
{
    u8 rot;
    s32 jumpHeight;
    s32 accelX, accelY;



    u32 r3 = 0;



    Player_TransitionCancelFlyingAndBoost(p);
# 4758 "src/game/stage/player.c"
    p->moveState |= (0x00000100 | 0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    if (p->moveState & 0x00000004) {
        p->moveState |= 0x00000010;
    }

    if (((p->qSpeedAirX) >= 0 ? (p->qSpeedAirX) : -(p->qSpeedAirX)) < ((s32)((1.25)*256))) {
        p->charState = 10;
    } else {
        p->charState = 11;
    }


    p->unk70 = 1;
    jumpHeight = (p->moveState & 0x00000040) ? ((s32)((2.625)*256)) : ((s32)((4.875)*256));




    rot = p->rotation - 64;

    accelX = ((int)((((int)(((gSineTable[(rot * 4) + 256])) >> 6)) * jumpHeight) >> 8));
    p->qSpeedAirX += accelX;

    accelY = ((int)((((int)(((gSineTable[(rot * 4)])) >> 6)) * jumpHeight) >> 8));
    p->qSpeedAirY += accelY;

    if (p->moveState & 0x00000008) {
        if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
            p->qSpeedAirX -= ((s32)((gCamera.dx)*256));
        }
    }

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    m4aSongNumStart(116);

    { gPlayer.callback = Player_Jumping;; Player_Jumping(p);; };
}

void Player_Jumping(Player *p)
{

    s16 maxJumpSpeed = -((s32)((3.0)*256));


    if (p->moveState & 0x00000040) {
        maxJumpSpeed = -((s32)((1.5)*256));
    }


    if (p->moveState & 0x00000100) {

        if (gGameMode != 5)
            if (Player_Sonic_TryForwardThrust(p) || Player_TryMidAirAction(p))
                return;



        if (p->qSpeedAirY < maxJumpSpeed && !(p->heldInput & gPlayerControls.jump)) {
            p->qSpeedAirY = maxJumpSpeed;
        }
    }

    sub_80246DC(p);
    Player_AirInputControls(p);

    if (!((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1)))))

    {
        sub_80236C8(p);
    }

    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}


void Player_8025F84(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->moveState |= (0x00000100 | 0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    if ((p->spriteOffsetX < 6) || (p->spriteOffsetY < 9)) {
        u16 chAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

        if ((chAnim == 4) || (chAnim == 10) || (chAnim == 11)
            || (chAnim == 70)) {
            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        } else {
            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
        }
    }

    if (((p->qSpeedAirX) >= 0 ? (p->qSpeedAirX) : -(p->qSpeedAirX)) < ((s32)((1.25)*256))) {
        p->charState = 10;
    } else {
        p->charState = 11;
    }

    p->unk70 = 1;

    p->spriteInfoBody->s.frameFlags &= ~0x00004000;
    m4aSongNumStart(116);

    { gPlayer.callback = Player_Jumping;; Player_Jumping(p);; };
}

void Player_8026060(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->moveState |= (0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    if ((p->spriteOffsetX < 6) || (p->spriteOffsetY < 9)) {
        u16 chAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

        if ((chAnim == 4) || (chAnim == 10) || (chAnim == 11)
            || (chAnim == 70)) {
            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        } else {
            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
        }
    }

    p->unk70 = 1;
    p->unk6E = 1;

    p->spriteInfoBody->s.frameFlags &= ~0x00004000;

    p->rotation = 0;

    { gPlayer.callback = Player_Uncurl;; Player_Uncurl(p);; };
}


void Player_InitUncurl(Player *p)
{

    Player_TransitionCancelFlyingAndBoost(p);
# 4917 "src/game/stage/player.c"
    p->moveState |= (0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    if ((p->spriteOffsetX < 6) || (p->spriteOffsetY < 9)) {

        u16 chAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

        if ((chAnim == 4) || (chAnim == 10) || (chAnim == 11)
            || (chAnim == 70))

        {
            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        }

        else {
            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
        }

    }

    p->unk70 = 1;
    p->unk6E = 0;

    p->spriteInfoBody->s.frameFlags &= ~0x00004000;

    p->rotation = 0;

    { gPlayer.callback = Player_Uncurl;; Player_Uncurl(p);; };
}

void Player_Uncurl(Player *p)
{
    sub_80246DC(p);

    if ((p->unk6E != 1) || (p->qSpeedAirY > 0))

    {

        Player_AirInputControls(p);

        if ((gGameMode != 5) && (p->moveState & 0x00000100)) {
            if (Player_Sonic_TryForwardThrust(p) || Player_TryMidAirAction(p))
                return;
        }

    }

    if (!((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1)))))

    {
        sub_80236C8(p);
    }

    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}


void Player_InitSpindash(Player *p)
{
    p->charState = 3;

    p->moveState |= (0x00000400 | 0x00000004);
    p->moveState &= ~(0x00000020 | 0x00000002);

    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

    p->spindashAccel = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;

    m4aSongNumStart(109);
    CreateSpindashDustEffect();

    { gPlayer.callback = Player_Spindash;; Player_Spindash(p);; };
}


void Player_Spindash(Player *p)
{
    Sprite *s = &p->spriteInfoBody->s;
    u16 cAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

    if (!(p->heldInput & 0x0080)) {
        s16 index;
        s32 speed;
        p->moveState &= ~0x00000400;

        index = ((int)((p->spindashAccel) >> 8));
        if (index > 8)
            index = 8;

        speed = sSpinDashSpeeds[index];
        if (p->moveState & 0x00000001)
            speed = -sSpinDashSpeeds[index];

        p->qSpeedGround = speed;

        gPlayer.callback = Player_SpinAttack;

        m4aSongNumStart(110);
    } else {
        s16 pitch = p->spindashAccel;

        s16 pitch2 = pitch;
        if (pitch2 != 0) {
            pitch = pitch2 - (((int)((pitch << 3) >> 8)));
            if (pitch <= 0)
                pitch = 0;
        }

        if (p->frameInput & gPlayerControls.jump) {
            struct MP2KPlayerState *mPlayerInfo;
            m4aSongNumStart(109);

            mPlayerInfo = gMPlayTable[gSongTable[109].ms].info;
            m4aMPlayImmInit(mPlayerInfo);
            m4aMPlayPitchControl(mPlayerInfo, 0xFFFF, (pitch & ~0x7F));

            pitch += ((s32)((2.0)*256));
            pitch = (((pitch) > (((s32)((8.0)*256)))) ? (pitch) : (((s32)((8.0)*256))));

            p->variant = 1;
            p->unk6C = 1;
        }
        p->spindashAccel = pitch;

        if ((cAnim == 3) && (p->variant == 1) && (s->frameFlags & ((1) << (14)))) {
            p->variant = 0;
        }
    }

    if (p->moveState & 0x00000002) {
        sub_80236C8(p);
        sub_80232D0(p);


        if (p->moveState & 0x00000040) {
            p->qSpeedAirY += ((s32)((12.0 / 256.0)*256));
        } else

        {
            p->qSpeedAirY += ((s32)((42.0 / 256.0)*256));
        }

        p->qWorldX += p->qSpeedAirX;

        if ((gStageFlags ^ gPrevStageFlags) & 0x0080) {
            p->qSpeedAirY = -p->qSpeedAirY;
        }


        p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256))));

        p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY;




        {
            s32 rot = (s8)p->rotation;
            if (rot < 0) {
                rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0));
            } else if (rot > 0) {
                rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0));
            }
            p->rotation = rot;
        }

        sub_8022190(p);

        if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) {
            gPlayer.callback = Player_TouchGround;
            p->qSpeedGround = p->qSpeedAirX;
            p->rotation = 0;
        }
    } else {
        s32 groundSpeed = p->qSpeedGround;

        if ((((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) && (groundSpeed != 0)) {
            u32 sinVal = ((int)(((gSineTable[((p->rotation) * 4)])) >> 6)) * 60;
            s32 sinInt = (s32)(((int)(((s32)sinVal) >> 8)));

            if (groundSpeed > 0) {
                if (sinInt <= 0) {
                    sinInt >>= 2;
                }
            } else if (sinInt >= 0) {
                sinInt >>= 2;
            }

            groundSpeed += sinInt;

            p->qSpeedGround = groundSpeed;
        }

        sub_80232D0(p);
        sub_8023260(p);
        sub_8023128(p);

        p->qWorldX += p->qSpeedAirX;

        if ((gStageFlags ^ gPrevStageFlags) & 0x0080) {
            p->qSpeedAirY = -p->qSpeedAirY;
        }


        p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256))));


        p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY;




        sub_8022D6C(p);

        if (p->unk2A) {
            p->unk2A -= 1;
        } else if ((p->rotation + 32) & 0xC0) {
            s32 absGroundSpeed = ((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround));
            if (absGroundSpeed < ((s32)((1.875)*256))) {
                p->qSpeedGround = 0;

                p->moveState |= 0x00000002;
                p->unk2A = 60 / 2;
            }
        }
    }
}

void InitPlayerGrindGraphics(Player *p)
{
    s32 newY;
    p->layer = 0;
    p->rotation = 0;

    p->spriteInfoBody->s.frameFlags &= ~(0x00002000 | 0x00001000);
    p->spriteInfoBody->s.frameFlags |= 0x00001000;

    p->itemEffect |= 0x80;

    if ((gStageFlags & 0x0080)) {
        newY = sub_801E6D4(((int)((p->qWorldY) >> 8)) - p->spriteOffsetY, ((int)((p->qWorldX) >> 8)), p->layer, -8, ((void *)0), sub_801EE64);

        p->qWorldY = p->qWorldY - ((s32)((newY)*256));
    } else

    {
        newY = sub_801E6D4(((int)((p->qWorldY) >> 8)) + p->spriteOffsetY, ((int)((p->qWorldX) >> 8)), p->layer, 8, ((void *)0), sub_801EE64);

        p->qWorldY = p->qWorldY + ((s32)((newY)*256));
    }
    p->moveState &= ~0x00000002;

    gPlayer.moveState |= 0x40000000;
}

void Player_InitGrinding(Player *p)
{

    Player_TransitionCancelFlyingAndBoost(p);
# 5196 "src/game/stage/player.c"
    p->moveState &= ~0x00000004;
    p->moveState |= 0x01000000;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 41;

    if (p->unk6E != 0) {
        p->moveState |= 0x00000001;

        p->qSpeedAirX = (((p->qSpeedAirX) < (-((s32)((1.0)*256)))) ? (p->qSpeedAirX) : (-((s32)((1.0)*256))));
        p->qSpeedGround = (((p->qSpeedAirX) < (-((s32)((1.0)*256)))) ? (p->qSpeedAirX) : (-((s32)((1.0)*256))));
    } else {
        p->moveState &= ~0x00000001;

        p->qSpeedAirX = (((p->qSpeedAirX) > (((s32)((1.0)*256)))) ? (p->qSpeedAirX) : (((s32)((1.0)*256))));
        p->qSpeedGround = (((p->qSpeedAirX) > (((s32)((1.0)*256)))) ? (p->qSpeedAirX) : (((s32)((1.0)*256))));
    }

    InitPlayerGrindGraphics(p);
    m4aSongNumStart(114);

    { gPlayer.callback = Player_DoGrinding;; Player_DoGrinding(p);; };
}

void Player_DoGrinding(Player *p)
{
    if (Player_TryJump(p)) {
        p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
        p->spriteInfoBody->s.frameFlags |= ((2) << (12));
        p->itemEffect &= ~0x80;
        p->layer = 1;

        gPlayer.moveState &= ~0x40000000;
        m4aSongNumStop(114);
    } else {
        if (p->qSpeedGround >= 0) {
            p->moveState &= ~0x00000001;
        } else {
            p->moveState |= 0x00000001;
        }

        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0)
            p->qSpeedGround += ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 5) >> 5);

        sub_80232D0(p);
        sub_8023260(p);

        if (p->moveState & 0x00000002) {
            if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
        }

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        m4aSongNumStartOrContinue(114);

        if (p->moveState & 0x00000002) {
            p->charState = 14;

            p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
            p->spriteInfoBody->s.frameFlags |= ((2) << (12));
            p->itemEffect &= ~0x80;
            p->layer = 1;

            gPlayer.moveState &= ~0x40000000;
            m4aSongNumStop(114);
            gPlayer.callback = Player_Jumping;;
            return;
        }

        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
            CreateGrindEffect2();
        }

    }
}

void Player_InitGrindRailEndGround(Player *p)
{

    Player_TransitionCancelFlyingAndBoost(p);




    p->moveState &= ~0x00000004;
    p->moveState &= ~(0x00000100 | 0x00000002);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 9;

    p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
    p->spriteInfoBody->s.frameFlags |= ((2) << (12));
    p->itemEffect &= ~0x80;
    p->layer = 1;

    gPlayer.moveState &= ~0x40000000;

    m4aSongNumStop(114);
    { gPlayer.callback = Player_Idle;; Player_Idle(p);; };
}

void Player_GrindRailEndAir(Player *p)
{

    Player_TransitionCancelFlyingAndBoost(p);




    p->moveState &= ~0x00000004;
    p->moveState |= (0x00000100 | 0x00000002);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };


    if ((gGameMode != 5) && (p->heldInput & gPlayerControls.jump)
        && (p->character == CHARACTER_SONIC || p->character == CHARACTER_AMY)) {
        p->charState = 42;
        p->qSpeedAirY = -((s32)((7.5)*256));
    } else

    {
        p->charState = 39;
        p->qSpeedAirY = -((s32)((4.875)*256));
    }


    if (p->moveState & 0x00000040)
        p->qSpeedAirY /= 2;


    p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
    p->spriteInfoBody->s.frameFlags |= ((2) << (12));
    p->itemEffect &= ~0x80;
    p->layer = 1;

    gPlayer.moveState &= ~0x40000000;

    m4aSongNumStop(114);

    if (p->qSpeedAirX > 0) {
        p->moveState &= ~0x00000001;
    }

    if (p->qSpeedAirX < 0) {
        p->moveState |= 0x00000001;
    }

    m4aSongNumStart(116);
    { gPlayer.callback = Player_8029074;; Player_8029074(p);; };
}
void Player_8026D2C(Player *p);
# 5379 "src/game/stage/player.c"
void sub_8026B64(Player *p)
{
    s16 groundSpeed = p->qSpeedGround;

    if ((p->unk2A == 0) && (p->heldInput & (0x0020 | 0x0010))) {
        if ((p->heldInput & 0x0010) && (groundSpeed < p->topSpeed)) {
            groundSpeed += ((s32)((1.0 / 32.0)*256));
        } else if ((p->heldInput & 0x0020) && (groundSpeed > ((s32)((1.0)*256)))) {
            groundSpeed -= ((s32)((1.0 / 32.0)*256));
        }
    }

    if (groundSpeed < ((s32)((1.0)*256))) {
        groundSpeed += ((s32)((1.0 / 32.0)*256));
    }

    p->qSpeedGround = groundSpeed;
}

void Player_8026BCC(Player *p)
{
    if (!Player_TryJump(p)) {
        sub_8026B64(p);
        sub_8023128(p);

        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
            s32 accel = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);
            if (p->qSpeedGround)
                p->qSpeedGround += accel;
        }

        sub_80232D0(p);
        sub_8023260(p);

        if (p->moveState & 0x00000002) {
            if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
        }

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

        if (p->moveState & 0x00000002) {
            p->charState = 14;

            gPlayer.callback = Player_Jumping;;
        } else if ((p->moveState & (0x00000800 | 0x00000008)) != 0x00000800) {
            gPlayer.callback = Player_TouchGround;;
        }
    }
}


void Player_8026D2C(Player *p)
{
    sub_80246DC(p);
    Player_AirInputControls(p);
    sub_80236C8(p);
    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };

    sub_802A500_inline(p);

    if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; };
}


void Player_InitPipeEntry(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->moveState |= (0x00080000 | 0x00000200 | 0x00000004);

    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

    p->rotation = 0;
    p->charState = 4;

    p->moveState &= ~0x00000001;

    switch (p->unk6E & 0x30) {
        case 0x00: {
            p->moveState |= 0x00000002;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = -((s32)((12.0)*256));
            p->qSpeedGround = ((s32)((12.0)*256));
        } break;

        case 0x10: {
            p->moveState |= 0x00000002;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = ((s32)((12.0)*256));
            p->qSpeedGround = ((s32)((12.0)*256));
        } break;

        case 0x20: {
            p->moveState &= ~0x00000002;
            p->moveState |= 0x00000001;
            p->qSpeedAirX = -((s32)((12.0)*256));
            p->qSpeedAirY = 0;
            p->qSpeedGround = -((s32)((12.0)*256));
        } break;

        case 0x30: {
            p->moveState &= ~0x00000002;
            p->qSpeedAirX = ((s32)((12.0)*256));
            p->qSpeedAirY = 0;
            p->qSpeedGround = ((s32)((12.0)*256));
        } break;
    }

    p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
    p->spriteInfoBody->s.frameFlags |= ((1) << (12));
    p->layer = 0;

    m4aSongNumStart(147);

    { gPlayer.callback = PlayerFn_Cmd_HandlePhysics;; PlayerFn_Cmd_HandlePhysics(p);; };
}

void Player_InitPipeExit(Player *p)
{
    if ((p->moveState & (0x00000800 | 0x00000008 | 0x00000002)) == 0x00000800) {
        Player_InitIceSlide_inline(p);
    } else {
        p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
        p->charState = 4;

        { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

        p->moveState |= 0x00000004;

        p->unk99[0] = 30;

        { gPlayer.callback = Player_Rolling;; Player_Rolling(p);; };
    }
}

void Player_InitPropellorSpring(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->moveState &= ~0x00000004;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    if (p->heldInput & 0x0020) {
        p->moveState |= 0x00000001;
    }
    if (p->heldInput & 0x0010) {
        p->moveState &= ~0x00000001;
    }

    p->charState = 63;
    p->rotation = 0;

    { gPlayer.callback = Player_PropellorSpring;; Player_PropellorSpring(p);; };
}

void Player_PropellorSpring(Player *p)
{
    if (p->moveState & 0x00000001) {
        p->rotation -= ((s32)((4.0 / 256.0)*256));
    } else {
        p->rotation += ((s32)((4.0 / 256.0)*256));
    }

    Player_AirInputControls(p);
    sub_80236C8(p);
    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}

void Player_InitCorkscrew(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    if ((!(p->moveState & 0x00000004) || (p->charState != 4))) {
        p->charState = 47;
        p->moveState &= ~0x00000004;

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
    }

    p->rotation = 0;

    if (p->qSpeedAirX > 0) {
        p->moveState &= ~0x00000001;
    } else {
        p->moveState |= 0x00000001;
    }

    { gPlayer.callback = Player_Corkscrew;; Player_Corkscrew(p);; };
}

void Player_Corkscrew(Player *p)
{
    s32 acc = p->acceleration;
    s32 maxSpeed = p->maxSpeed;
    s16 speed = p->qSpeedGround;

    if (p->heldInput & 0x0020) {
        speed -= acc;

        if (speed < -maxSpeed) {
            speed += acc;

            if (speed > -maxSpeed)
                speed = -maxSpeed;
        }
    } else if (p->heldInput & 0x0010) {
        speed += acc;

        if (speed > +maxSpeed) {
            speed -= acc;

            if (speed < +maxSpeed)
                speed = +maxSpeed;
        }
    } else if (speed > 0) {
        speed -= ((s32)((8.0 / 256.0)*256));
    } else {
        speed += ((s32)((8.0 / 256.0)*256));
    }
    p->qSpeedGround = speed;

    sub_80232D0(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
}


void Player_InitHurt(Player *p)
{
    p->timerInvulnerability = 0x78;
    p->isBoosting = 0;

    if (((p->qSpeedAirX) >= 0 ? (p->qSpeedAirX) : -(p->qSpeedAirX)) <= ((s32)((2.5)*256))) {
        if (p->qSpeedAirX <= ((s32)((0.625)*256))) {
            if (p->qSpeedAirX < -((s32)((0.625)*256))) {
                p->qSpeedAirX = +((s32)((1.5)*256));
            } else {
                if ((p->moveState & 0x00000001)) {
                    p->qSpeedAirX = +((s32)((1.5)*256));
                } else {
                    p->qSpeedAirX = -((s32)((1.5)*256));
                }
            }
        } else {
            p->qSpeedAirX = -((s32)((1.5)*256));
        }
        p->charState = 20;
    } else {
        if (p->qSpeedAirX >= 0) {
            p->qSpeedAirX = +((s32)((1.5)*256));
        } else {
            p->qSpeedAirX = -((s32)((1.5)*256));
        }
        p->charState = 21;
    }

    p->qSpeedAirY = -((s32)((3.0)*256));


    if (p->moveState & 0x00000040) {
        p->qSpeedAirY >>= 1;
        p->qSpeedAirX >>= 1;
    }
    Player_TransitionCancelFlyingAndBoost(p);




    p->moveState |= 0x00000002;
    p->moveState &= ~(0x00000200 | 0x00000008 | 0x00000004);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    { gPlayer.callback = Player_Hurt;; Player_Hurt(p);; };
}

void Player_Hurt(Player *p)
{
    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}


void Player_InitReachedGoal(Player *p)
{
    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        Player_InitReachedGoalMultiplayer(p);
    } else if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        Player_InitKilledBoss(p);
    } else {
        if (gGameMode == 1)
            gSpecialRingCount = 7;

        if ((gPlayer.moveState & 0x08000000) && (gSpecialRingCount >= 7)) {
            Player_InitSpecialStageTransition(p);
        } else {
            Player_TransitionCancelFlyingAndBoost(p);

            p->moveState &= ~(0x00000004 | 0x00000001);

            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

            if (p->qSpeedGround <= 0) {
                Player_InitVictoryPoseTransition(p);
            } else {
                p->charState = 9;

                p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

                p->moveState &= ~0x00200000;

                { gPlayer.callback = Player_GoalSlowdown;; Player_GoalSlowdown(p);; };
            }
        }
    }
}

void Player_GoalSlowdown(Player *p)
{
    u32 playerX = ((int)((p->qWorldX) >> 8));
    u16 playerX2;

    playerX2 = playerX - gStageGoalX;

    if (((p->qSpeedGround >= ((s32)((2.0)*256))) && (p->frameInput & 0x0020)) || (playerX2 > 0x579)) {
        p->charState = 25;

        p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

        m4aSongNumStart(232);
        { gPlayer.callback = Player_GoalBrake;; Player_GoalBrake(p);; };
    } else {
        s32 grnd = p->qSpeedGround;
        if (grnd > 0) {
            s32 speedOg = p->qSpeedGround - ((s32)((8.0 / 256.0)*256));
            s16 speed = speedOg;
            if (speed <= 0)
                speed = 0;

            p->qSpeedGround = speed;
        } else {
            p->qSpeedGround = 0;
        }

        if (p->qSpeedGround <= 0) {
            Player_InitVictoryPoseTransition(p);
        } else {
            Player_CameraShift_inline(p);

            sub_80232D0(p);
            sub_8023260(p);

            { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

            sub_8022D6C(p);

            { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
        }
    }
}

void Player_GoalBrake(Player *p)
{
    AnimId cAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

    Player_CameraShift_inline(p);

    if (cAnim == 31) {
        if ((p->variant == 0) && (p->spriteInfoBody->s.frameFlags & ((1) << (14)))) {
            p->charState = 26;
        }

        if ((p->variant == 1) && (p->qSpeedGround <= 0)) {
            p->charState = 27;
            p->qSpeedGround = 0;
            m4aSongNumStop(232);

            if (gStageGoalX != 0) {
                u16 playerX = ((int)((p->qWorldX) >> 8)) - gStageGoalX;
                s32 r8 = 0;

                if (playerX <= 730)
                    r8 = 800;
                else if (playerX <= 1114)
                    r8 = 500;
                else if (playerX <= 1401)
                    r8 = 100;

                if (r8 != 0) {
                    { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += r8; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };

                    CreateStageGoalBonusPointsAnim(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), r8);
                }
            }
        }

        if ((p->variant == 2) && (p->spriteInfoBody->s.frameFlags & ((1) << (14)))) {
            Player_InitVictoryPoseTransition(p);
            return;
        }
    }

    p->qSpeedGround -= ((s32)((0.125)*256));
    if (p->qSpeedGround < 0)
        p->qSpeedGround = 0;

    sub_8029FA4(p);
    sub_80232D0(p);
    sub_8023260(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

    sub_8022D6C(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
}

void Player_InitVictoryPoseTransition(Player *p)
{
    Player_CameraShift_inline(p);

    p->unk72 = (int)(((0 * 60.) + 1.5) * 60);

    if (gCurrentLevel < ((7)*(3 + 1)) + (0)) {
        switch (gCurrentLevel & 0x3) {
            case 0: {
                p->charState = 28;
                gPlayer.callback = Player_VictoryPose;;
            } break;

            case 1: {
                p->charState = 29;
                gPlayer.callback = Player_VictoryPose;;
            } break;

            case 2: {
                p->charState = 32;
            } break;
        }
    } else {
        p->charState = 28;
    }
}

void Player_VictoryPose(Player *p)
{
    Player_CameraShift_inline(p);

    if (--p->unk72 == 0) {
        if (gGameMode == 1) {
            CreateTimeAttackResults(gCourseTime);
        } else {
            CreateStageResults(gCourseTime, gRingCount, gSpecialRingCount);
        }
        gPlayer.callback = Player_CameraShift;;
    }

    sub_80232D0(p);
    sub_8023260(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

    sub_8022D6C(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
}

void Player_80279F8(Player *p)
{
    if (p->qSpeedGround > ((s32)((5.5)*256))) {
        p->qSpeedGround -= ((s32)((0.5)*256));
    } else if (p->qSpeedAirX < ((s32)((4.75)*256))) {
        p->qSpeedGround += ((s32)((0.25)*256));
    } else {
        p->qSpeedGround = ((s32)((5.0)*256));
    }

    if (p->unk72 < 32767)
        p->unk72++;

    if (p->unk72 == 120) {
        p->charState = 32;
    }

    if (p->unk72 == 180) {
        if (gGameMode == 1) {
            CreateTimeAttackResults(gCourseTime);
        } else {
            CreateStageResults(gCourseTime, gRingCount, gSpecialRingCount);
        }
    }

    sub_80232D0(p);
    sub_8023260(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

    sub_8022D6C(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

    Player_CameraShift_inline(p);

    if (p->moveState & 0x04000000) {
        p->isBoosting = 1;
        p->heldInput = 0x0010;
        p->qSpeedGround = ((s32)((10.0)*256));
        p->charState = 9;
        CreateBoostEffectTasks();

        gPlayer.callback = Player_8027B98;;

        m4aSongNumStart(273);
    }
}

void Player_8027B98(Player *p)
{
    sub_80232D0(p);
    sub_8023260(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

    sub_8022D6C(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

    gCamera.unk8 -= 56;
}

void Player_8027C5C(Player *p)
{


    s32 playerX = ((int)((p->qWorldX) >> 8)) - gCamera.x;

    if (playerX > (240 / 2)) {
        p->qSpeedGround = ((s32)((4.5)*256));
    } else if (playerX < (240 / 2)) {
        p->qSpeedGround = ((s32)((5.5)*256));
    } else {
        p->qSpeedGround = ((s32)((5.0)*256));
    }

    sub_80232D0(p);
    sub_8023260(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

    sub_8022D6C(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
}

void Player_HandleMultiplayerFinish(Player *p)
{
    u16 rank = gMultiplayerRanks[((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id];
    s32 *pCmpX = &gStageGoalX;
    u32 cmpX;
    s32 finalXPos = ((8 * 8) + (rank * (4 * 8)));

    cmpX = ((s32)((*pCmpX + finalXPos)*256));
    if (p->qWorldX < cmpX) {
        p->heldInput = 0x0010;
    } else if (p->qWorldX > cmpX) {
        p->heldInput = 0x0020;
    } else {
        p->heldInput = 0;
    }

    Player_HandleGroundMovement(p);
    if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
        s32 acceleration = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);

        if (p->qSpeedGround != 0) {
            p->qSpeedGround += acceleration;
        }
    }

    sub_80232D0(p);
    sub_8023260(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

    sub_8022D6C(p);

    { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };

    if (((p->qWorldX > cmpX) && (p->heldInput == 0x0010))
        || ((p->qWorldX < cmpX) && (p->heldInput == 0x0020))
        || (p->qWorldX == cmpX)) {
        p->isBoosting = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->qSpeedGround = 0;
        p->qWorldX = cmpX;


        if (rank < 4) {
            p->charState = 28;
        } else {
            p->charState = 0;
        }

        p->moveState &= ~0x00000001;
        p->unk72 = 0;
        p->heldInput = 0;

        gPlayer.callback = Player_Nop;;
    }
}


void Player_HandlePhysicsWithAirInput(Player *p)
{
    if (p->moveState & 0x00000002) {
        Player_AirInputControls(p);
        sub_80236C8(p);
        sub_80232D0(p);

        if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
        { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
        { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
    } else {
        sub_80232D0(p);
        sub_80231C0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
    }
}


void Player_HandlePhysics(Player *p)
{
    if (p->moveState & 0x00000002) {
        sub_80232D0(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
        { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
        { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
    } else {
        sub_80232D0(p);
        sub_80231C0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
    }
}

void sub_8028204(Player *p)
{
    Player_AirInputControls(p);
    sub_80236C8(p);
    sub_80232D0(p);

    { s16 speed = (p->moveState & 0x00000040) ? ((s16)((12.0 / 256.0)*256)) : ((s16)((42.0 / 256.0)*256)); if (p->qSpeedAirY < 0) { asm("lsl r0, %0, #16\n" "\tasr r0, r0, #17\n" "\tlsl r0, r0, #16\n" "\tlsr %0, r0, #16\n" : "=r"(speed) : "r"(speed) : "r0"); } p->qSpeedAirY += speed; };

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}

void sub_80282EC(Player *p)
{
    p->acceleration >>= 1;

    Player_AirInputControls(p);

    if (p->character == CHARACTER_TAILS) {
        sub_80236C8(p);
    }

    sub_80232D0(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}

void sub_80283C4(Player *p)
{
    sub_80232D0(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}

void sub_8028478(Player *p)
{
    if (p->moveState & 0x00000002) {
        sub_80236C8(p);
        sub_80232D0(p);

        if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
        { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
        { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
    } else {
        if (((p->rotation + ((s32)((0.375)*256))) & 0xFF) < 0xC0) {
            s32 acceleration = ((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 3) >> 5);

            if (p->qSpeedGround != 0) {
                p->qSpeedGround += acceleration;
            }
        }

        sub_80232D0(p);
        sub_80231C0(p);
        sub_8023260(p);

        { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };

        sub_8022D6C(p);

        { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } };
    }
}




struct Task *sub_8028640(s32 x, s32 y, s32 p2)
{
    struct Task *t;
    MultiplayerSpriteTask *taskStrc;
    Sprite *s;

    u16 p2_ = p2;

    t = CreateMultiplayerSpriteTask(x, y, 232, gPlayer.playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);

    taskStrc = (void *)(0x03000000 + ((t)->data));
    taskStrc->playerAnim = gPlayer.anim;
    taskStrc->playerVariant = gPlayer.variant;

    s = &taskStrc->s;
    s->graphics.dest = VramMalloc(gUnknown_080D69A6[p2_][0]);
    s->graphics.anim = gUnknown_080D69A6[p2_][1];
    s->variant = gUnknown_080D69A6[p2_][2];
    s->oamFlags = ((7) << 6);
    s->frameFlags = ((2) << (12));

    return t;
}

void Player_InitDefaultTrick(Player *p)
{
    u32 dir = p->trickDir;
    u16 character = p->character;
    u8 mask = sTrickMasks[dir][character];

    Player_TransitionCancelFlyingAndBoost(p);

    p->moveState |= (0x00002000 | 0x00000100 | 0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    if (mask & 0x4)
        p->unk72 = 10;
    else if (mask & 0x8)
        p->unk72 = 45;


    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;


    p->charState = sTrickDirToCharstate[dir];
    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    m4aSongNumStart(116);
    m4aSongNumStart(230);

    { gPlayer.callback = Player_WindupDefaultTrick;; Player_WindupDefaultTrick(p);; };
}

void Player_WindupDefaultTrick(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        u32 dir = p->trickDir;
        u16 character = p->character;
        p->variant++;

        p->qSpeedAirX = sTrickAccel[dir][character][0];
        p->qSpeedAirY = sTrickAccel[dir][character][1];

        if (p->moveState & 0x00000001)
            p->qSpeedAirX = -p->qSpeedAirX;

        gPlayer.callback = Player_DefaultTrick;;

        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
            if (dir == 2 && character == CHARACTER_SONIC) {
                sub_8028640(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 0);
            }
            if (dir == 0 && character == CHARACTER_KNUCKLES) {
                sub_8028640(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 1);
            }
            if (dir == 2 && character == CHARACTER_AMY) {
                CreateHeartParticles();
            }
        }
    }

    sub_80232D0(p);
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}

void Player_DefaultTrick(Player *p)
{
    u32 dir = p->trickDir;
    u16 character = p->character;
    u8 mask = sTrickMasks[dir][character];

    if ((mask & 0x1) && (p->variant == 1) && (p->qSpeedAirY > 0)) {
        p->variant = 2;
    }

    if (p->unk72 != 0) {
        p->unk72--;
    } else {
        if (mask & 0x4)
            mask &= ~0x4;

        if ((mask & 0x8) && (p->charState != 14))
            p->charState = 14;
    }

    if (!(mask & 0x2) || (p->qSpeedAirY > 0)) {
        Player_AirInputControls(p);
    }

    if (!(mask & 0x4)) {
        sub_80236C8(p);
    }

    sub_80232D0(p);

    if (mask & 0x10) {
        { s16 speed = (p->moveState & 0x00000040) ? ((s16)((12.0 / 256.0)*256)) : ((s16)((42.0 / 256.0)*256)); if (p->qSpeedAirY < 0) { asm("lsl r0, %0, #16\n" "\tasr r0, r0, #17\n" "\tlsl r0, r0, #16\n" "\tlsr %0, r0, #16\n" : "=r"(speed) : "r"(speed) : "r0"); } p->qSpeedAirY += speed; };
    } else {
        if (!(mask & 0x4)) {
            if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
        }
    }

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };

    if (!(p->moveState & 0x00000002) && (p->character == CHARACTER_KNUCKLES) && (p->trickDir == 2)) {
        p->variant++;
        gPlayer.callback = Player_802A3C4;;
    }
}

void DoTrickIfButtonPressed(Player *p)
{
    if ((gGameMode != 5) && (p->disableTrickTimer == 0) && (p->frameInput & gPlayerControls.trick)) {

        if (p->heldInput & 0x0040) {
            { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += sTrickPoints[0]; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };
            p->trickDir = 0;
            gPlayer.callback = Player_InitDefaultTrick;;
        } else if (p->heldInput & 0x0080) {
            { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += sTrickPoints[3]; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };

            switch (p->character) {
                case CHARACTER_SONIC: {
                    p->moveState |= 0x20000000;
                    gPlayer.callback = Player_SonicAmy_InitStopNSlam;;
                } break;

                case CHARACTER_KNUCKLES: {
                    p->moveState |= 0x20000000;
                    gPlayer.callback = Player_Knuckles_InitDrillClaw;;
                } break;

                case CHARACTER_AMY: {
                    p->moveState |= 0x20000000;
                    gPlayer.callback = Player_SonicAmy_InitStopNSlam;;
                } break;

                default: {
                    p->trickDir = 1;
                    gPlayer.callback = Player_InitDefaultTrick;;
                } break;
            }
        } else if ((!(p->moveState & 0x00000001) && (p->heldInput & 0x0010))
                   || ((p->moveState & 0x00000001) && (p->heldInput & 0x0020))) {
            { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += sTrickPoints[2]; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };
            p->trickDir = 2;

            gPlayer.callback = Player_InitDefaultTrick;;
        } else {
            { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += sTrickPoints[1]; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };
            p->trickDir = 3;

            gPlayer.callback = Player_InitDefaultTrick;;
        }
    }
}

void Player_8028D74(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->moveState |= (0x00000100 | 0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    if ((p->spriteOffsetX < 6) || (p->spriteOffsetY < 9)) {
        u16 cAnim = (p->anim - gPlayerCharacterIdleAnims[p->character]);

        if ((cAnim == 4) || (cAnim == 10) || (cAnim == 11)
            || (cAnim == 70)) {
            { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };
        } else {
            { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
        }
    }

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
    p->rotation = 0;

    { gPlayer.callback = Player_8029074;; Player_8029074(p);; };
}


void Player_TouchNormalSpring(Player *p)
{
    u8 u6E = p->unk6E;
    u8 r5 = (u6E >> 4);
    u8 r6 = u6E % (sizeof(sSpringAccelY) / sizeof((sSpringAccelY)[0]));

    Player_TransitionCancelFlyingAndBoost(p);




    if (((r5 == 2) || (r5 == 3)) && !(p->moveState & 0x00000002)) {
        p->moveState &= ~(0x00000100 | 0x00000002);
    } else {
        p->moveState |= (0x00000100 | 0x00000002);
    }

    p->moveState &= ~(0x01000000 | 0x00000020);
    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };


    if ((gCurrentLevel == ((2)*(3 + 1)) + (0)) || (gCurrentLevel == ((2)*(3 + 1)) + (1))) {
        p->charState = 37;
    } else

        if (((p->qSpeedAirX) >= 0 ? (p->qSpeedAirX) : -(p->qSpeedAirX)) < ((s32)((2.5)*256))) {
        p->charState = 38;
    } else {
        p->charState = 39;
    }

    p->prevCharState = -1;

    switch (r5) {
        case 0: {
            p->qSpeedAirY = -sSpringAccelY[r6];
        } break;

        case 1: {
            p->qSpeedAirY = +sSpringAccelY[r6];
        } break;

        case 2: {
            p->qSpeedAirX = -sSpringAccelX[r6];

            if (!(p->moveState & 0x00000002) && p->qSpeedAirX < -((s32)((9.0)*256))) {
                p->isBoosting = 1;
            }
        } break;

        case 3: {
            p->qSpeedAirX = +sSpringAccelX[r6];

            if (!(p->moveState & 0x00000002) && p->qSpeedAirX > +((s32)((9.0)*256))) {
                p->isBoosting = 1;
            }
        } break;

        case 4: {
            p->qSpeedAirX = -sSpringAccelX[r6];
            p->qSpeedAirY = -sSpringAccelY[r6];
        } break;

        case 5: {
            p->qSpeedAirX = +sSpringAccelX[r6];
            p->qSpeedAirY = -sSpringAccelY[r6];
        } break;

        case 6: {
            p->qSpeedAirX = -sSpringAccelX[r6];
            p->qSpeedAirY = +sSpringAccelY[r6];
        } break;

        case 7: {
            p->qSpeedAirX = +sSpringAccelX[r6];
            p->qSpeedAirY = +sSpringAccelY[r6];
        } break;
    }


    p->disableTrickTimer = disableTrickTimerTable[r6];

    if ((gCurrentLevel == ((2)*(3 + 1)) + (0)) || (gCurrentLevel == ((2)*(3 + 1)) + (1))) {
        {
            s32 speed = (p->qSpeedAirX * 5);
            if (speed < 0) {
                speed += 3;
            }
            p->qSpeedAirX = speed >> 2;
        }
        {
            s32 speed = (p->qSpeedAirY * 5);
            if (speed < 0) {
                speed += 3;
            }
            p->qSpeedAirY = speed >> 2;
        }
    }

    if (p->moveState & 0x00000040) {
        p->qSpeedAirY /= 2;
    }


    if (p->qSpeedAirX > ((s32)((1.25)*256))) {
        p->moveState &= ~0x00000001;
    }
    if (p->qSpeedAirX < -((s32)((1.25)*256))) {
        p->moveState |= 0x00000001;
    }

    { gPlayer.callback = Player_8029074;; Player_8029074(p);; };
}

void Player_8029074(Player *p)
{
    sub_80246DC(p);

    DoTrickIfButtonPressed(p);

    Player_AirInputControls(p);
    sub_80236C8(p);
    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}

void Player_InitRampOrDashRing(Player *p)
{

    Player_TransitionCancelFlyingAndBoost(p);



    p->moveState |= 0x00000002;
    p->moveState &= ~(0x01000000 | 0x00000020 | 0x00000008);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 40;
    p->prevCharState = -1;

    if (p->qSpeedAirX > +((s32)((1.25)*256))) {
        p->moveState &= ~0x00000001;
    }
    if (p->qSpeedAirX < -((s32)((1.25)*256))) {
        p->moveState |= 0x00000001;
    }

    switch (p->unk6E) {
        case 0: {
            s32 qGroundSpeed = p->qSpeedGround;
            s32 speed = (qGroundSpeed * 3);
            s16 qSpeedX, qSpeedY;

            if (speed < 0) {
                speed += 7;
            }
            qSpeedX = speed / 8u;
            qSpeedY = -((qGroundSpeed) >= 0 ? (qGroundSpeed) : -(qGroundSpeed)) / 6;

            p->qSpeedAirX = qSpeedX + +((s32)((3.75)*256));
            p->qSpeedAirY = qSpeedY + -((s32)((3.75)*256));
        } break;

        case 1:
        case 2: {
            s32 groundSpeed = p->qSpeedGround;
            s32 speed = (groundSpeed * 3);
            s16 qSpeedX, qSpeedY;

            if (speed < 0) {
                speed += 7;
            }
            qSpeedX = speed / 8u;
            qSpeedY = -((groundSpeed) >= 0 ? (groundSpeed) : -(groundSpeed)) / 6;

            p->qSpeedAirX = qSpeedX + +((s32)((3.75)*256));
            p->qSpeedAirY = qSpeedY + -((s32)((7.50)*256));
        } break;

        case 3: {
            s32 groundSpeed = p->qSpeedGround;
            s32 speed = (groundSpeed * 3);
            s16 qSpeedX, qSpeedY;

            if (speed < 0) {
                speed += 7;
            }
            qSpeedX = speed / 8u;
            qSpeedY = -((groundSpeed) >= 0 ? (groundSpeed) : -(groundSpeed)) / 6;

            p->qSpeedAirX = qSpeedX + +((s32)((5.625)*256));
            p->qSpeedAirY = qSpeedY + -((s32)((2.50)*256));
        } break;

        case 4:
        case 5: {
            s32 groundSpeed = p->qSpeedGround;
            s32 speed = (groundSpeed * 3);
            s16 qSpeedX, qSpeedY;

            if (speed < 0) {
                speed += 7;
            }
            qSpeedX = speed / 8u;
            qSpeedY = -((groundSpeed) >= 0 ? (groundSpeed) : -(groundSpeed)) / 6;

            p->qSpeedAirX = qSpeedX + +((s32)((11.25)*256));
            p->qSpeedAirY = qSpeedY + -((s32)((2.50)*256));
        } break;
    }


    if (p->moveState & 0x00000040) {
        p->qSpeedAirY >>= 1;
    }


    if (p->moveState & 0x00000001) {
        p->qSpeedAirX = -p->qSpeedAirX;
    }

    m4aSongNumStart(276);

    { gPlayer.callback = Player_8029314;; Player_8029314(p);; };
}

void Player_8029314(Player *p)
{
    if ((p->charState == 40) && (p->variant == 0) && (p->qSpeedAirY > 0))
        p->variant = 1;

    DoTrickIfButtonPressed(p);

    sub_8023708(p);
    sub_80232D0(p);

    if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); };
    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}


void Player_DashRing(Player *p)
{
    if (--p->unk72 == -1) {
        gPlayer.callback = Player_8029074;;
    }

    sub_80246DC(p);
    DoTrickIfButtonPressed(p);
    sub_80232D0(p);

    { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; };
    { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; };
    { sub_8022190(p); if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; };
}



bool32 Player_TryMidAirAction(Player *p)
{
    u16 song;
    if (!(p->moveState & 0x20000000)) {
        if (p->frameInput & gPlayerControls.attack) {
            switch (p->character) {
                case CHARACTER_SONIC: {
                    Player_SonicAmy_InitStopNSlam(p);
                    return 1;
                } break;

                case CHARACTER_CREAM: {
                    if ((p->heldInput & 0x00F0) == 0x0080) {
                        Player_Cream_InitChaoRollingAttack(p);
                    } else {
                        Player_Cream_InitMidAirChaoAttack(p);
                    }
                    return 1;
                } break;

                case CHARACTER_KNUCKLES: {
                    Player_Knuckles_InitDrillClaw(p);
                    return 1;
                } break;

                case CHARACTER_AMY: {
                    Player_SonicAmy_InitStopNSlam(p);
                    return 1;
                } break;
            }
        }

        if (p->frameInput & gPlayerControls.jump) {
            switch (p->character) {
                case CHARACTER_SONIC: {
                    if (!((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1)))) && gHomingTarget.squarePlayerDistance < ((128) * (128))) {
                        Player_Sonic_InitHomingAttack(p);
                        return 1;
                    } else {
                        p->moveState |= 0x20000000;
                        p->charState = 18;
                        CreateSonicAmySkidAttackEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 1);
                        song = 113;
                        goto Player_TryMidAirAction_PlaySfx;
                    }
                } break;

                case CHARACTER_CREAM: {
                    Player_Cream_InitFlying(p);
                    return 1;
                } break;

                case CHARACTER_TAILS: {
                    if (!(p->moveState & 0x00000040)) {
                        Player_Tails_InitFlying(p);
                        p->moveState |= 0x20000000;
                        return 1;
                    }
                } break;

                case CHARACTER_KNUCKLES: {
                    if (!(p->moveState & 0x00000040)) {
                        Player_Knuckles_InitGlide(p);
                        return 1;
                    }
                } break;

                case CHARACTER_AMY: {
                    p->moveState |= 0x20000000;
                    p->charState = 18;
                    p->qSpeedAirY = 0;
                    CreateAmyAttackHeartEffect(2);

                    song = 129;
                    Player_TryMidAirAction_PlaySfx:
                    m4aSongNumStart(song);


                } break;
            }
        }
    }

    return 0;
}
# 6722 "src/game/stage/player.c"
void Player_HandleGroundMovement(Player *p)
{
    s8 charState = -1;
    s32 acc = p->acceleration;
    s32 dec = p->deceleration;

    if ((p->unk2A == 0) && p->heldInput & (0x0020 | 0x0010)) {
        if (p->qSpeedGround > 0) {
            if (p->heldInput & 0x0010) {
                if (p->qSpeedGround < p->topSpeed) {
                    p->qSpeedGround += acc;

                    if (p->qSpeedGround > p->topSpeed) {
                        p->qSpeedGround = p->topSpeed;
                    }
                } else {
                    p->boostSpeed += acc;
                }
                p->moveState &= ~0x00000001;
            } else if (p->qSpeedGround >= ((s32)((2.0)*256))) {
                if ((p->charState == 7) || (p->charState == 8)) {
                    charState = p->charState;
                } else {
                    u16 walkAnim = p->walkAnim;
                    charState = 7;
                    if (walkAnim > 3) {
                        charState = 8;
                    }
                }
                p->qSpeedGround -= dec;

                sub_8029FA4(p);

                m4aSongNumStart(115);
            } else {
                p->qSpeedGround -= dec;

                if ((p->qSpeedGround > 0) && !(p->moveState & 0x00000001)) {
                    if ((p->charState == 7) || (p->charState == 8)) {
                        charState = 7;
                    }
                    gPlayer.callback = Player_Skidding;
                }
            }
        } else if (p->qSpeedGround < 0) {
            if (p->heldInput & 0x0020) {
                if (p->qSpeedGround > -p->topSpeed) {
                    p->qSpeedGround -= acc;

                    if (p->qSpeedGround < -p->topSpeed) {
                        p->qSpeedGround = -p->topSpeed;
                    }
                } else {
                    p->boostSpeed += acc;
                }
                p->moveState |= 0x00000001;
            } else {
                if (p->qSpeedGround <= -((s32)((2.0)*256))) {
                    if ((p->charState == 7) || (p->charState == 8)) {
                        charState = p->charState;
                    } else {
                        u16 walkAnim = p->walkAnim;
                        charState = 7;
                        if (walkAnim > 3) {
                            charState = 8;
                        }
                    }

                    p->qSpeedGround += dec;

                    sub_8029FA4(p);

                    m4aSongNumStart(115);
                } else {
                    p->qSpeedGround += dec;

                    if ((p->qSpeedGround < 0) && (p->moveState & 0x00000001)) {
                        if ((p->charState == 7) || (p->charState == 8)) {
                            charState = 7;
                        }
                        gPlayer.callback = Player_Skidding;
                    }
                }
            }
        } else {
            if ((p->moveState & 0x00000001) != ((p->heldInput & 0x0010) >> 4)) {
                if (p->moveState & 0x00000001) {
                    p->qSpeedGround -= acc;
                } else {
                    p->qSpeedGround += acc;
                }

                charState = 9;
                { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
            } else {
                gPlayer.callback = Player_Skidding;
            }
        }
    } else {
        s32 grndSpeed = p->qSpeedGround;
        if (grndSpeed > 0) {
            s16 val = grndSpeed - ((s32)((8.0 / 256.0)*256));
            if (val <= 0) {
                val = 0;
                charState = 0;
            } else {
                charState = 9;
            }

            p->qSpeedGround = val;
        } else if (grndSpeed < 0) {
            s16 val = grndSpeed + ((s32)((8.0 / 256.0)*256));
            if (val >= 0) {
                val = 0;
                charState = 0;
            } else {
                charState = 9;
            }

            p->qSpeedGround = val;
        } else {
            charState = 0;
        }
    }


    if (p->moveState & 0x00008000) {
        if ((charState == 7) || (charState == 8)) {
            p->charState = charState;
        }
    } else

        if (charState != -1) {
        if (p->charState != charState)
            p->charState = charState;
    } else if ((p->charState == 7) || (p->charState == 8)) {
        p->charState = 9;
    }

    sub_8023128(p);
}

void Player_HandleBoostThreshold(Player *p)
{
    if (gRingCount >= 150) {
        p->boostThreshold = 4;
    } else if (gRingCount >= 100) {
        p->boostThreshold = 3;
    } else if (gRingCount >= 50) {
        p->boostThreshold = 2;
    } else if (gRingCount > 10) {
        p->boostThreshold = 1;
    } else {
        p->boostThreshold = 0;
    }
}

void Player_HandleBoostState(Player *p)
{
    bool32 isBoostActive = p->isBoosting;
    if (isBoostActive) {
        if (!(p->moveState & 0x00000002)) {
            p->boostSpeed = playerBoostThresholdTable[p->boostThreshold];

            if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((4.5)*256))) {
                p->isBoosting = 0;
                p->boostSpeed = 0;
            }
        }
    } else {
        if ((!(p->moveState & 0x00000002)) && ((((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) >= p->topSpeed))) {
            if (p->boostSpeed >= playerBoostThresholdTable[p->boostThreshold]) {
                p->isBoosting = 1;
                gCamera.unk8 = 0x400;

                CreateBoostModeParticles();
                m4aSongNumStart(221);

            }
        } else {

            p->boostSpeed = isBoostActive;



        }
    }
}

void Player_HandleWalkAnim(Player *p)
{
    s32 absSpeed = ((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround));

    if (absSpeed <= ((s32)((1.25)*256))) {
        p->walkAnim = 0;
    } else if (absSpeed <= ((s32)((2.5)*256))) {
        p->walkAnim = 1;
    } else if (absSpeed <= ((s32)((4.0)*256))) {
        p->walkAnim = 2;
    } else if (absSpeed <= ((s32)((9.0)*256))) {
        p->walkAnim = 3;
    } else if (absSpeed <= ((s32)((10.0)*256))) {
        p->walkAnim = 4;
    } else {
        p->walkAnim = 5;
    }
}

void CallSetStageSpawnPos(u32 character, u32 level, u32 playerID, Player *p) { SetStageSpawnPos(character, level, playerID, p); }
# 6959 "src/game/stage/player.c"
void DestroyPlayerTasks(Player *p)
{
    TaskDestroy(p->spriteTask);
    p->spriteTask = ((void *)0);

    if (p->playerID == 0) {

        DestroyBrakingDustEffectRelatedTask();

        DestroyRingsScatterTask();
    }
}
# 6979 "src/game/stage/player.c"
s32 sub_8029A28(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    u8 dummy;


    s32 dummyInt;
    s32 rotValue;

    if (rot == ((void *)0))
        rot = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    result = sub_802195C(p, rot, out);

    rotValue = *rot;

    if (rotValue & 0x1)
        *rot = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -0x80;
            val -= rotValue;
            *rot = val;
        }
    }

    return result;
}

s32 sub_8029A74(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    u8 dummy;

    s32 dummyInt;
    s32 rotValue;

    if (rot == ((void *)0))
        rot = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    result = sub_8021A34(p, rot, out);

    rotValue = *rot;

    if (rotValue & 0x1)
        *rot = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -0x80;
            val -= rotValue;
            *rot = val;
        }
    }

    return result;
}

s32 sub_8029AC0(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    u8 dummy;


    s32 dummyInt;
    s32 rotValue;

    if (rot == ((void *)0))
        rot = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    result = sub_8021B08(p, rot, out);

    rotValue = *rot;

    if (rotValue & 0x1)
        *rot = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -0x80;
            val -= rotValue;
            *rot = val;
        }
    }

    return result;
}

s32 sub_8029B0C(Player *p, u8 *ret_rotation, s32 *out)
{
    s32 result;

    u8 dummy;


    s32 dummyInt;
    s32 rotValue;

    if (ret_rotation == ((void *)0))
        ret_rotation = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    result = sub_8029BB8(p, ret_rotation, out);

    rotValue = *ret_rotation;

    if (rotValue & 0x1)
        *ret_rotation = 0;
    else {
        if ((gStageFlags & 0x0080)) {
            s32 val = -((((int)((((double)(180)) / 360.0) * 1024))) / 4);
            val -= rotValue;
            *ret_rotation = val;
        }
    }

    return result;
}

s32 sub_8029B58(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    if ((gStageFlags & 0x0080)) {
        result = sub_8029B0C(p, rot, out);
    } else

    {
        result = sub_8029AC0(p, rot, out);
    }

    return result;
}

s32 sub_8029B88(Player *p, u8 *rot, s32 *out)
{
    s32 result;

    if ((gStageFlags & 0x0080)) {
        result = sub_8029AC0(p, rot, out);
    } else

    {
        result = sub_8029B0C(p, rot, out);
    }

    return result;
}


s32 sub_8029BB8(Player *p, u8 *rotation, s32 *out)
{
    u8 dummy;
    s32 dummyInt;
    s32 playerX, playerY;
    s32 playerX2, playerY2;
    u32 mask;
    u8 anotherByte, anotherByte2;
    s32 r5, r1;
    s32 result;

    if (rotation == ((void *)0))
        rotation = &dummy;
    if (out == ((void *)0))
        out = &dummyInt;

    playerY2 = ((int)((p->qWorldY) >> 8)) + p->spriteOffsetY;
    playerX2 = ((int)((p->qWorldX) >> 8)) - (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < 0) {
        mask |= 0x80;
    }

    r5 = sub_801E4E4(playerY2, playerX2, mask, 8, &anotherByte, sub_801EE64);

    playerY = ((int)((p->qWorldY) >> 8)) + p->spriteOffsetY;
    playerX = ((int)((p->qWorldX) >> 8)) + (2 + p->spriteOffsetX);

    mask = p->layer;
    if (p->qSpeedAirY < 0) {
        mask |= 0x80;
    }

    r1 = sub_801E4E4(playerY, playerX, mask, 8, &anotherByte2, sub_801EE64);

    if (r5 < r1) {
        result = r5;
        *rotation = anotherByte;
        *out = r1;
    } else {
        result = r1;
        *rotation = anotherByte2;
        *out = r5;
    }

    return result;
}


void sub_8029C84(Player *p)
{
    s32 rot = p->rotation + ((((int)((((double)(90)) / 360.0) * 1024))) / 4);

    if ((rot & (((((int)((((double)(360)) / 360.0) * 1024))) / 4) - 1)) >= ((((int)((((double)(180)) / 360.0) * 1024))) / 4))
        p->qSpeedGround = 0;
}


void sub_8029CA0(Player *p)
{
    s32 rot = p->rotation;
    if (((rot + ((((int)((((double)(135)) / 360.0) * 1024))) / 4)) & (((((int)((((double)(360)) / 360.0) * 1024))) / 4) - 1)) < ((((int)((((double)(270)) / 360.0) * 1024))) / 4)) {
        rot = ((((int)(((gSineTable[((rot)*4)])) >> 6)) * 3) >> 5);

        if (p->qSpeedGround != 0) {
            p->qSpeedGround += rot;
        }
    }
}

void sub_8029CE0(Player *p)
{
    s32 rot = p->rotation;
    if (((rot + ((((int)((((double)(135)) / 360.0) * 1024))) / 4)) & (((((int)((((double)(360)) / 360.0) * 1024))) / 4) - 1)) < ((((int)((((double)(270)) / 360.0) * 1024))) / 4)) {
        s32 other = ((((int)(((gSineTable[((rot)*4)])) >> 6)) * 5) >> 5);

        p->qSpeedGround += other;
    }
}

void sub_8029D14(Player *p)
{

    register s32 grndSpeed asm("r2") = p->qSpeedGround;




    if (((p->rotation + ((((int)((((double)(135)) / 360.0) * 1024))) / 4)) & (((((int)((((double)(360)) / 360.0) * 1024))) / 4) - 1)) < ((((int)((((double)(270)) / 360.0) * 1024))) / 4) && grndSpeed != 0) {
        s32 accelInt = ((int)((((((int)(((gSineTable[((p->rotation)*4)])) >> 6)) * 60))) >> 8));

        if (grndSpeed > 0) {
            if (accelInt <= 0) {
                accelInt = (accelInt >> 2);
            }
        } else {
            if (accelInt >= 0) {
                accelInt = (accelInt >> 2);
            }
        }

        p->qSpeedGround = grndSpeed + accelInt;
    }
}

void Player_UpdatePosition(Player *p) { { p->qWorldX += p->qSpeedAirX; if ((gStageFlags ^ gPrevStageFlags) & 0x0080) { p->qSpeedAirY = -p->qSpeedAirY; } p->qSpeedAirY = (((p->qSpeedAirY) < (((s32)((15.0)*256)))) ? (p->qSpeedAirY) : (((s32)((15.0)*256)))); p->qWorldY = (gStageFlags & 0x0080) ? p->qWorldY - p->qSpeedAirY : p->qWorldY + p->qSpeedAirY; }; }

void PlayerFn_Cmd_UpdateAirFallSpeed(Player *p) { if (p->moveState & 0x00000040) { p->qSpeedAirY += ((s32)((12.0 / 256.0)*256)); } else { p->qSpeedAirY += ((s32)((42.0 / 256.0)*256)); }; }

bool32 sub_8029DE8(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 playerY = p->qWorldY;

    if (!(p->moveState & 0x80000000)) {
        if ((gStageFlags & 0x0080)) {
            if (playerY <= ((s32)((cam->minY)*256)))
                return 1;
        } else {
            if (playerY >= ((s32)((cam->maxY)*256)) - 1)
                return 1;
        }
    }
    return 0;







}


__attribute__((unused)) bool32 DeadPlayerLeftScreen_UnusedCopy(Player *p)
{
    struct Camera *cam = &gCamera;
    s32 playerY = p->qWorldY;

    if (!(p->moveState & 0x80000000)) {
        if ((gStageFlags & 0x0080)) {
            if (playerY <= ((s32)((cam->y - 80)*256)))
                return 1;
        } else {
            if (playerY >= ((s32)((cam->y)*256)) + ((s32)((160 + 80)*256)) - 1)
                return 1;
        }
    }

    return 0;







}

bool32 Player_TryJump(Player *p)
{
    u8 rot = p->rotation;

    if (p->frameInput & gPlayerControls.jump) {

        if ((gStageFlags & 0x0080)) {
            rot += ((s32)((0.25)*256));
            rot = -rot;
            rot -= ((s32)((0.25)*256));
        }


        if (sub_8022F58(rot + ((s32)((0.5)*256)), p) > 3) {
            gPlayer.callback = Player_InitJump;;
            return 1;
        }
    }

    return 0;
}

void sub_8029ED8(Player *p) { { if (p->unk2A != 0) { p->unk2A -= 1; } else if ((p->rotation + ((s32)((0.125)*256))) & 0xC0) { if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((1.875)*256))) { p->qSpeedGround = 0; p->moveState |= 0x00000002; p->unk2A = 60 / 2; } } }; }

void sub_8029F20(Player *p) { { s32 rot = (s8)p->rotation; if (rot < 0) { rot = ((((rot + 2)) < (0)) ? ((rot + 2)) : (0)); } else if (rot > 0) { rot = ((((rot - 2)) > (0)) ? ((rot - 2)) : (0)); } p->rotation = rot; }; }


void ContinueLevelSongAfterDrowning(Player *p)
{
    p->framesUntilDrownCountDecrement = 60;
    p->secondsUntilDrown = 30;

    if (gMPlayTable[0].info->songHeader == gSongTable[31].header) {
        if (p->playerID == 0) {
            m4aSongNumStartOrContinue(gLevelSongs[gCurrentLevel]);
        }
    }
}

void sub_8029FA4(Player *p)
{
    u8 mask = (p->moveState & 0x08000000) ? 0x7 : 0x3;

    if ((gStageTime & mask) == 0) {
        s32 u17 = p->spriteOffsetY;

        if ((gStageFlags & 0x0080)) {
            u17 = -u17;
        }

        CreateBrakingDustEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)) + u17);
    }
}


void Player_SetMovestate_IsInScriptedSequence(void) { gPlayer.moveState |= 0x40000000; }

void Player_ClearMovestate_IsInScriptedSequence(void) { gPlayer.moveState &= ~0x40000000; }


void Player_DisableInputAndBossTimer(void)
{
    gPlayer.transition = 10;
    gStageFlags |= (0x0020 | 0x0002 | 0x0001);

    if (gGameMode == 2) {
        gStageFlags |= 0x0200;
    }
}

void Player_DisableInputAndBossTimer_FinalBoss(void)
{
    gStageFlags |= (0x0020 | 0x0002 | 0x0001);

    if (gGameMode == 2) {
        gStageFlags |= 0x0200;
    }
}


void TaskDestructor_Player(struct Task *t)
{
    gPlayer.spriteTask = ((void *)0);

    if (gPlayer.playerID) {
        VramFree(gPlayer.spriteInfoBody->s.graphics.dest);
    }


    if (gPlayer.character == CHARACTER_CREAM || gPlayer.character == CHARACTER_TAILS) {
        VramFree(gPlayer.spriteInfoLimbs->s.graphics.dest);
    }

}
# 7410 "src/game/stage/player.c"
bool32 Player_TryTaunt(Player *p)
{
    if (((p->heldInput & 0x00F0) == 0x0040) && p->qSpeedGround == 0) {
        gPlayer.callback = Player_InitTaunt;;
        return 1;
    }

    return 0;
}

bool32 Player_TryCrouchOrSpinAttack(Player *p)
{
    if ((p->heldInput & 0x00F0) == 0x0080) {
        if ((p->qSpeedGround == 0) && (((p->rotation + ((s32)((0.125)*256))) & 0xC0) == 0)
            && !(p->moveState & (0x01000000 | 0x00000004 | 0x00000002))) {
            gPlayer.callback = Player_InitCrouch;;
            return 1;
        } else if (((u16)(p->qSpeedGround + (((s32)((0.5)*256)) - 1)) > ((s32)((1.0)*256)) - 2)
                   && !(p->moveState & (0x01000000 | 0x00000004 | 0x00000002))) {
            gPlayer.callback = Player_SpinAttack;;
            m4aSongNumStart(109);
            return 1;
        }
    }

    return 0;
}


bool32 Player_TryInitSpindash(Player *p)
{
    u32 r6 = 0;
    if (p->charState == 2) {
        if (p->frameInput & gPlayerControls.jump) {
            { gPlayer.callback = Player_InitSpindash;; Player_InitSpindash(p);; };
            return 1;
        }
    }

    return 0;
}


void Player_ApplyBoostPhysics(Player *p)
{
    u32 boostThreshold = p->boostThreshold;
    if (p->isBoosting) {
        p->topSpeed = ((s32)((12.0)*256));
        p->maxSpeed = ((s32)((15.0)*256));
    } else if (p->moveState & 0x00000004) {
        p->topSpeed = ((s32)((6.0)*256));
        p->maxSpeed = ((s32)((15.0)*256));
    } else {
        p->topSpeed = ((s32)((6.0)*256));
        p->maxSpeed = ((s32)((9.0)*256));
    }

    p->acceleration = playerBoostPhysicsTable[boostThreshold][0];
    p->deceleration = playerBoostPhysicsTable[boostThreshold][1];
}
# 7485 "src/game/stage/player.c"
void Player_InitCrouch(Player *p)
{
    p->moveState &= ~0x00000020;

    p->charState = 2;
    p->qSpeedGround = 0;

    { gPlayer.callback = Player_Crouch;; Player_Crouch(p);; };
}
# 7532 "src/game/stage/player.c"
void Player_802A258(Player *p)
{
    if (!(p->moveState & 0x00000002)) {
        if (p->moveState & 0x00000004)
            Player_SpinAttack(p);
        else
            Player_TouchGround(p);
    } else {
        p->moveState |= 0x00040000;
        p->moveState &= ~(0x01000000 | 0x00000020);

        { gPlayer.callback = Player_8026D2C;; Player_8026D2C(p);; };
    }
}

bool32 Player_TryAttack(Player *p)
{
    if ((gGameMode == 5) || (p->moveState & (0x00008000 | 0x00000400))
        || ((s8)(p->rotation + ((s32)((0.25)*256))) <= 0)) {
        return 0;
    } else if (p->frameInput & gPlayerControls.attack) {
        gPlayer.callback = Player_InitAttack;;
        return 1;
    } else {
        return 0;
    }
}

void Player_InitDashRing(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState |= 0x00000002;
    p->moveState &= ~(0x01000000 | 0x00000020 | 0x00000008);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->prevCharState = -1;

    p->rotation = 0;

    m4aSongNumStart(277);

    { gPlayer.callback = Player_DashRing;; Player_DashRing(p);; };
}

void Player_InitIceSlide(Player *p) { Player_InitIceSlide_inline(p); }

void PlayerFn_Cmd_HandlePhysics(Player *p) { Player_HandlePhysics(p); }

void Player_802A3C4(Player *p)
{
    Player_HandlePhysicsWithAirInput(p);

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14)))
        gPlayer.callback = Player_SpinAttack;;
}

void Player_CameraShift(Player *p) { Player_CameraShift_inline(p); }

void Player_InitSpecialStageTransition(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState &= ~0x00000004;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->isBoosting = 0;
    p->charState = 9;
    p->moveState &= ~(0x00000001);
    p->unk72 = 0;

    { gPlayer.callback = Player_80279F8;; Player_80279F8(p);; };
}


void Player_InitKilledBoss(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState &= ~0x00000004;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 9;
    p->moveState &= ~(0x00000001);

    { gPlayer.callback = Player_8027C5C;; Player_8027C5C(p);; };
}

void Player_InitReachedGoalMultiplayer(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState &= ~0x00000004;
    p->moveState |= 0x00200000;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    { gPlayer.callback = Player_HandleMultiplayerFinish;; Player_HandleMultiplayerFinish(p);; };
}

void Player_Nop(Player *p) { }

void sub_802A500(Player *p) { sub_802A500_inline(p); }


void sub_802A52C(Player *p) { if ((p->moveState & (0x00000008 | 0x00000002)) == 0x00000008) { gPlayer.callback = Player_TouchGround; p->qSpeedGround = p->qSpeedAirX; p->rotation = 0; }; }

void sub_802A558(Player *p) { { s16 speed = (p->moveState & 0x00000040) ? ((s16)((12.0 / 256.0)*256)) : ((s16)((42.0 / 256.0)*256)); if (p->qSpeedAirY < 0) { asm("lsl r0, %0, #16\n" "\tasr r0, r0, #17\n" "\tlsl r0, r0, #16\n" "\tlsr %0, r0, #16\n" : "=r"(speed) : "r"(speed) : "r0"); } p->qSpeedAirY += speed; }; }

void sub_802A58C(Player *p)
{
    if (p->charState != 20) {
        if (p->timerInvulnerability > 0)
            p->timerInvulnerability--;
    }
}


void sub_802A5AC(Player *p)
{
    if (p->disableTrickTimer != 0)
        p->disableTrickTimer--;
}


void Player_Skidding(Player *p)
{
    p->moveState &= ~0x00000020;

    if (p->charState == 7 || p->charState == 8) {
        p->charState = 6;
    } else {
        p->charState = 5;
    }

    p->spriteInfoBody->s.frameFlags &= ~(0x00004000);

    p->qSpeedGround = 0;
    p->moveState ^= 0x00000001;

    { gPlayer.callback = Player_8025548;; Player_8025548(p);; };
}

void Player_InitTaunt(Player *p)
{
    p->moveState &= ~0x00000020;

    p->spriteInfoBody->s.frameFlags &= ~(0x00004000);

    p->charState = 1;

    p->qSpeedGround = 0;

    { gPlayer.callback = Player_Taunt;; Player_Taunt(p);; };
}

void sub_802A660(Player *p)
{
    if (p->unk2A == 0) {
        if ((p->heldInput & (0x0020 | 0x0010)) != 0x0010) {
            if ((p->heldInput & (0x0020 | 0x0010)) == 0x0020) {
                s32 grnd = p->qSpeedGround;
                if (grnd <= 0) {
                    p->moveState |= 0x00000001;
                } else if ((grnd - ((s32)((0.09375)*256))) < 0) {
                    s32 val = ((s32)((0.375)*256));
                    p->qSpeedGround = -val;
                } else {
                    p->qSpeedGround = (grnd - ((s32)((0.09375)*256)));
                }
            }
        } else {
            s32 grnd = p->qSpeedGround;
            if (grnd >= 0) {
                p->moveState &= ~0x00000001;
            } else if ((grnd + ((s32)((0.09375)*256))) > 0) {
                p->qSpeedGround = +((s32)((0.375)*256));
            } else {
                p->qSpeedGround = (grnd + ((s32)((0.09375)*256)));
            }
        }
    }
}

void sub_802A6C0(Player *p)
{
    p->spriteInfoBody->s.frameFlags &= ~((3) << (12));
    p->spriteInfoBody->s.frameFlags |= ((2) << (12));
    p->itemEffect &= ~0x80;
    p->layer = 0x1;

    gPlayer.moveState &= ~0x40000000;
    m4aSongNumStop(114);
}


void Player_InitAttack(Player *p)
{
    switch (p->character) {
        case CHARACTER_SONIC: {
            Player_SonicAmy_InitSkidAttack(p);
        } break;

        case CHARACTER_CREAM: {
            if (!p->isBoosting) {
                Player_Cream_InitChaoAttack(p);
            } else {
                Player_Cream_InitStepAttack(p);
            }
        } break;

        case CHARACTER_TAILS: {
            Player_Tails_InitTailSwipe(p);
        } break;

        case CHARACTER_KNUCKLES: {
            if (!p->isBoosting) {
                Player_Knuckles_InitPunch(p);
            } else {
                Player_Knuckles_InitSpiralAttack(p);
            }
        } break;

        case CHARACTER_AMY: {
            if (!p->isBoosting) {
                Player_Amy_InitHammerAttack(p);
            } else {

                Player_SonicAmy_InitSkidAttack(p);
            }
        } break;
    }
}
