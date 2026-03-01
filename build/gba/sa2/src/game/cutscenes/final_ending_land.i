# 0 "src/game/cutscenes/final_ending_land.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/cutscenes/final_ending_land.c"
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
# 2 "src/game/cutscenes/final_ending_land.c" 2
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
# 3 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/sprite.h" 1
# 4 "src/game/cutscenes/final_ending_land.c" 2
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
# 5 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/task.h" 1
# 6 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/game/cutscenes/credits.h" 1
# 10 "include/game/cutscenes/credits.h"
void CreateCreditsCutScene(u8 endingVariant, u8 b, u8 c);
# 7 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/game/cutscenes/missing_emeralds.h" 1





void CreateMissingChaosEmaraldsCutScene(void);
# 8 "src/game/cutscenes/final_ending_land.c" 2
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
# 9 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 10 "src/game/cutscenes/final_ending_land.c" 2
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
# 1 "include/constants/zones.h" 1
# 10 "include/game/save.h" 2
# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 11 "include/game/save.h" 2
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
# 11 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/game/title_screen.h" 1
# 9 "include/game/title_screen.h"
extern const TileInfo gPressStartTiles[];

void CreateTitleScreen(void);
void CreateTitleScreenAndSkipIntro(void);

void CreateTitleScreenAtPlayModeMenu(void);

void CreateTitleScreenAtSinglePlayerMenu(void);
# 12 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/game/math.h" 1






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
# 13 "src/game/cutscenes/final_ending_land.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 15 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/constants/songs.h" 1
# 16 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/constants/text.h" 1
# 17 "src/game/cutscenes/final_ending_land.c" 2
# 1 "include/constants/tilemaps.h" 1
# 18 "src/game/cutscenes/final_ending_land.c" 2

struct FinalEndingLandCutScene {
    Background unk0;
    Background unk40;
    Sprite unk80;
    Sprite unkB0;
    Sprite unkE0;
    Sprite unk110;
    Sprite unk140;
    Sprite unk170;
    Sprite unk1A0;
    Sprite unk1D0;
    Sprite unk200;
    Sprite unk230;
    Sprite unk260[2];
    Sprite unk2C0[2];

    SpriteTransform transform;
    ScreenFade unk32C;

    u8 unk338;
    u8 unk339;
    u8 unk33A;
    u8 unk33B;
    u8 unk33C;
    u8 unk33D;
    u8 unk33E;
    u8 unk33F;
    u16 unk340;
    u16 unk342;
    u16 unk344;
    u16 unk346;
    u16 unk348;
    s16 unk34A;

    s32 unk34C[20][5];
    s32 unk4DC[13][5];
    s32 unk5E0[7][2];


    void *unk618;
};

void sub_8093EDC(void);
void sub_8093F9C(struct Task *);

static const u16 gUnknown_080E179C[4] = {
    205,
    206,
    207,
    208,
};

static const TileInfo gUnknown_080E17A4[52] = {
    { 42, 765, 0 }, { 24, 766, 0 }, { 28, 767, 0 }, { 35, 768, 0 }, { 24, 769, 0 }, { 16, 765, 1 }, { 16, 766, 1 }, { 24, 767, 1 },
    { 16, 768, 1 }, { 16, 769, 1 }, { 20, 0, 0 }, { 16, 91, 0 }, { 30, 182, 0 }, { 20, 273, 0 }, { 20, 364, 0 }, { 30, 771, 0 },
    { 20, 772, 0 }, { 30, 773, 0 }, { 24, 774, 0 }, { 24, 775, 0 }, { 64, 776, 0 }, { 64, 777, 0 }, { 64, 778, 0 }, { 64, 779, 0 },
    { 64, 780, 0 }, { 168, 804, 0 }, { 140, 808, 0 }, { 210, 806, 0 }, { 192, 805, 0 }, { 176, 807, 0 }, { 20, 782, 0 }, { 20, 782, 1 },
    { 20, 783, 0 }, { 24, 784, 0 }, { 24, 784, 1 }, { 16, 770, 0 }, { 4, 526, 0 }, { 4, 517, 0 }, { 4, 516, 0 }, { 4, 524, 0 },
    { 48, 781, 0 }, { 26, 781, 1 }, { 32, 781, 2 }, { 9, 457, 0 }, { 9, 455, 0 }, { 9, 460, 0 }, { 9, 465, 0 }, { 9, 462, 0 },
    { 9, 459, 0 }, { 30, 809, 0 }, { 24, 783, 1 }, { 24, 784, 2 },
};

static const u16 gUnknown_080E1944[][8] = {
    { 171, 177, 177, 177, 180, 140, 140, 0 },
    { 171, 177, 177, 177, 177, 180, 140, 140 },
};

static const u32 gUnknown_080E1964[20][5] = {
    { 298, 96, 1, 50, 170 }, { 384, 32, 2, 180, 130 }, { 480, 64, 0, 60, 115 }, { 608, 32, 3, 130, 140 }, { 576, 64, 1, 190, 120 },
    { 224, 64, 0, 50, 155 }, { 256, 128, 0, 180, 140 }, { 416, 96, 1, 80, 120 }, { 224, 32, 2, 70, 150 }, { 544, 96, 1, 70, 140 },
    { 352, 32, 2, 50, 160 }, { 320, 96, 1, 170, 128 }, { 224, 32, 2, 100, 130 }, { 416, 96, 1, 160, 170 }, { 256, 32, 2, 180, 150 },
    { 416, 96, 1, 70, 140 }, { 352, 32, 2, 50, 160 }, { 256, 96, 1, 170, 128 }, { 224, 32, 2, 100, 130 }, { 544, 96, 1, 160, 170 },
};

static const u16 gUnknown_080E1AF4[0x10] = {
    992, 32400, 1022, 32494, 9081, 14133, 17136, 21128, 23104, 0, 0, 20478, 17328, 22327, 25329, 28298,
};

static const u16 gUnknown_080E1B14[][7] = {
    { 18, 80, 150, 70, 300, 0, 0 },
    { 18, 30, 112, 88, 70, 300, 0 },
};

static const s32 gUnknown_080E1B30[35][2] = {
    { -2086, -3844 }, { -2086, -5244 }, { -4298, -6129 }, { -5976, -9111 }, { -5976, -10536 }, { -7056, -12505 }, { -7524, -13461 },
    { -7524, -14975 }, { -7415, -16825 }, { -7415, -18194 }, { -6806, -19801 }, { -6806, -20929 }, { -5806, -22206 }, { -5806, -23029 },
    { -4548, -23921 }, { -4548, -24399 }, { -3171, -24898 }, { -3171, -25025 }, { -1815, -25159 }, { -1183, -25045 }, { -600, -24788 },
    { -77, -24406 }, { 375, -23921 }, { 752, -23355 }, { 1048, -22731 }, { 1260, -22073 }, { 1260, -21817 }, { 1389, -21087 },
    { 1389, -20767 }, { 1409, -19499 }, { 1409, -18859 }, { 1152, -17816 }, { 1152, -16536 }, { 693, -14573 }, { 0, -12013 },
};

static const u8 gUnknown_080E1C48[6] = {
    0, 5, 10, 15, 20, 25,
};
static const u8 gUnknown_080E1C4E[7] = {
    0, 5, 15, 30, 31, 20, 25,
};
static const u8 gUnknown_080E1C55[] = {
    32, 50, 33, 34, 51, 0, 0,
};

void CreateFinalEndingLandingCutScene(void)
{
    ScreenFade *fade = ((void *)0);
    SpriteTransform *transform = ((void *)0);
    struct FinalEndingLandCutScene *scene = ((void *)0);

    u8 i, j;
    u16 unk1AF4[0x10];

    u32 value = 0;
    struct Task *t = ((void *)0);

    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x9c03;
    gBgCntRegs[1] = 0x1806;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 32; });;
    ({ gBgSprites_Unknown1[(1)] = 0; gBgSprites_Unknown2[(1)][0] = 0; gBgSprites_Unknown2[(1)][1] = 0; gBgSprites_Unknown2[(1)][2] = 255; gBgSprites_Unknown2[(1)][3] = 32; });;

    t = TaskCreate(sub_8093EDC, sizeof(struct FinalEndingLandCutScene), 0x3100, 0, sub_8093F9C);
    scene = (void *)(0x03000000 + ((t)->data));

    if (gLoadedSaveGame->chaosEmeralds[gSelectedCharacter] & (1 << (7))) {
        value = 2;
        scene->unk33C = 0;
    } else {
        scene->unk33C = 10;
    }

    scene->unk338 = 0;
    scene->unk339 = 1;
    scene->unk33A = 0;
    scene->unk342 = 0;
    scene->unk346 = 0;
    scene->unk348 = 0;
    scene->unk340 = 0x100;
    scene->unk34A = 0x32;
    scene->unk344 = 240;
    scene->unk33D = 0;
    scene->unk33E = 0;

    if (gSelectedCharacter == CHARACTER_CREAM) {
        scene->unk33B = 1;
    } else {
        scene->unk33B = 0;
    }

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 0x14; j++) {
            scene->unk34C[j][i] = 0;
        }

        for (j = 0; j < 0xD; j++) {
            scene->unk4DC[j][i] = 0;
        }
    }

    for (i = 0; i < 2; i++) {
        scene->unk5E0[0][i] = 0;
        scene->unk5E0[1][i] = 0;
        scene->unk5E0[2][i] = 0;
        scene->unk5E0[3][i] = 0xB400;
        scene->unk5E0[4][i] = 0xC800;
        scene->unk5E0[5][i] = 0;
        scene->unk5E0[6][i] = 0;
    }

    for (j = 0; j < 0xD; j++) {
        scene->unk4DC[j][0] = Random() & 0x7F;
    }

    scene->unk618 = (u8*)(0x6000000 + 0x10000);
    fade = &scene->unk32C;
    fade->flags = ((1 << 1) | (0 << 0));
    fade->window = 1;
    fade->brightness = ((s16)((0)*256));
    fade->speed = ((s32)((1.0)*256));
    fade->bldCnt = ((2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)));
    if (gSelectedCharacter == CHARACTER_CREAM) {
        {
            Sprite *s;
            s = &scene->unk110;
            s->graphics.dest = (void *)scene->unk618;
            scene->unk618 += 0x300;
            s->graphics.anim = gUnknown_080E17A4[32].anim;
            s->variant = gUnknown_080E17A4[32].variant;
            s->prevVariant = -1;
            s->x = 200;
            s->y = 100;
            s->oamFlags = ((2) << 6);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = ((int)((float)(1.0)*0x10));
            s->palId = 1;
            s->frameFlags = 0;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation(s);
        }

        {
            Sprite *s;
            s = &scene->unk140;
            s->graphics.dest = (void *)scene->unk618;
            scene->unk618 += 0x120;
            s->prevVariant = -1;
            s->x = (240 / 2) - 10;
            s->y = -20;
            s->oamFlags = ((1) << 6);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = ((int)((float)(1.0)*0x10));
            s->palId = 0;
            s->frameFlags = 0;
            s->hitboxes[0].index = -1;
        }

        {
            Sprite *s;
            s = &scene->unk170;
            s->graphics.dest = (void *)scene->unk618;
            scene->unk618 += gUnknown_080E17A4[49].numTiles * 0x20;
            s->graphics.anim = gUnknown_080E17A4[49].anim;
            s->variant = gUnknown_080E17A4[49].variant;
            s->prevVariant = -1;
            s->x = 0;
            s->y = 0;
            s->oamFlags = ((1) << 6);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = ((int)((float)(1.0)*0x10));
            s->palId = 2;
            s->frameFlags = 0;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation(s);
        }
    }

    {
        Sprite *s;
        s = &scene->unk80;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += 0x800;
        s->graphics.anim = gUnknown_080E17A4[gSelectedCharacter].anim;
        s->variant = gUnknown_080E17A4[gSelectedCharacter].variant;
        s->prevVariant = -1;
        s->x = (240 / 2);
        s->y = -20;
        s->oamFlags = ((1) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s;
        transform = &scene->transform;

        s = &scene->unkB0;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += 0x800;
        s->graphics.anim = gUnknown_080E17A4[gSelectedCharacter + 0x14].anim;
        s->variant = gUnknown_080E17A4[gSelectedCharacter + 0x14].variant;
        s->prevVariant = -1;
        s->x = 0;
        s->y = 0;
        s->oamFlags = ((1) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0x60;
        s->hitboxes[0].index = -1;

        transform->rotation = 0;
        transform->qScaleX = scene->unk340;
        transform->qScaleY = scene->unk340;
        transform->x = s->x;
        transform->y = s->y;

        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 2; i++) {
        Sprite *s;
        s = &scene->unk260[i];
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += gUnknown_080E17A4[0x24 + i].numTiles * 0x20;
        s->graphics.anim = gUnknown_080E17A4[36].anim;
        s->variant = gUnknown_080E17A4[36].variant;
        s->prevVariant = -1;
        s->x = 0;
        s->y = 0;
        s->oamFlags = ((3) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 2; i++) {
        Sprite *s;
        s = &scene->unk2C0[i];
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += gUnknown_080E17A4[0x26 + i].numTiles * 0x20;
        s->graphics.anim = gUnknown_080E17A4[38].anim;
        s->variant = gUnknown_080E17A4[38].variant;
        s->prevVariant = -1;
        s->x = 30;
        s->y = 30;
        s->oamFlags = ((3) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s;
        s = &scene->unk1A0;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += gUnknown_080E17A4[35].numTiles * 0x20;
        s->graphics.anim = gUnknown_080E17A4[35].anim;
        s->variant = gUnknown_080E17A4[35].variant;
        s->prevVariant = -1;
        s->x = 0;
        s->y = 30;
        s->oamFlags = ((0) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s;
        s = &scene->unk1D0;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += gUnknown_080E17A4[40].numTiles * 0x20;
        s->graphics.anim = gUnknown_080E17A4[40].anim;
        s->variant = gUnknown_080E17A4[40].variant;
        s->prevVariant = -1;
        s->x = (240 / 2);
        s->y = -20;
        s->oamFlags = ((0) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s;
        s = &scene->unk200;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += gUnknown_080E17A4[41].numTiles * 0x20;
        s->graphics.anim = gUnknown_080E17A4[41].anim;
        s->variant = gUnknown_080E17A4[41].variant;
        s->prevVariant = -1;
        s->x = (240 / 2);
        s->y = 160 + 96;
        s->oamFlags = ((0) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s;
        s = &scene->unk230;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += gUnknown_080E17A4[42].numTiles * 0x20;
        s->graphics.anim = gUnknown_080E17A4[42].anim;
        s->variant = gUnknown_080E17A4[42].variant;
        s->prevVariant = -1;
        s->x = (240 / 2);
        s->y = 160 + 96;
        s->oamFlags = ((0) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s;
        s = &scene->unkE0;
        s->graphics.dest = (void *)scene->unk618;
        scene->unk618 += 0x1500;
        s->graphics.anim = gUnknown_080E17A4[gSelectedCharacter + 0x19].anim;
        s->variant = gUnknown_080E17A4[gSelectedCharacter + 0x19].variant;
        s->prevVariant = -1;
        s->x = (240 / 2);
        s->y = 0;
        s->oamFlags = ((1) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 1;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Background *background;
        background = &scene->unk40;
        background->graphics.dest = (void *)(0x6000000 + (0x800 * (0)));
        background->graphics.anim = 0;
        background->layoutVram = (void *)(0x6000000 + (0x800 * (28)));
        background->unk18 = 0;
        background->unk1A = 0;
        background->tilemapId = gUnknown_080E179C[value + 1];
        background->unk1E = 0;
        background->unk20 = 0;
        background->unk22 = 0;
        background->unk24 = 0;
        background->targetTilesX = 0x20;
        background->targetTilesY = 0x20;
        background->paletteOffset = 0;
        background->flags = (0);
        DrawBackground(background);
    }

    if (value == 2) {
        gBgScrollRegs[1][0] = 8;
    }

    {
        Background *background;
        background = &scene->unk0;
        background->graphics.dest = (void *)(0x6000000 + (0x800 * (8)));
        background->graphics.anim = 0;
        background->layoutVram = (void *)(0x6000000 + (0x800 * (24)));
        background->unk18 = 0;
        background->unk1A = 0;
        background->tilemapId = gUnknown_080E179C[value];
        background->unk1E = 0;
        background->unk20 = 0;
        background->unk22 = 0;
        background->unk24 = 0;
        background->targetTilesX = 0x20;
        background->targetTilesY = 0x20;
        background->paletteOffset = 0;
        background->flags = (1);
        DrawBackground(background);
    }

    if (!(gLoadedSaveGame->chaosEmeralds[gSelectedCharacter] & (1 << (7)))) {
        memcpy(unk1AF4, gUnknown_080E1AF4, sizeof(unk1AF4));
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(unk1AF4); dmaRegs[1] = (vu32)(&gBgPalette[(2)*16u + (0)]); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(unk1AF4))/(32/8)))); dmaRegs[2]; };
    }
}

void sub_8093FA0(struct FinalEndingLandCutScene *);
void sub_8093FF0(struct FinalEndingLandCutScene *);
void sub_80934B8(struct FinalEndingLandCutScene *);
void sub_8093638(struct FinalEndingLandCutScene *);
void sub_8093740(struct FinalEndingLandCutScene *);
void sub_809401C(struct FinalEndingLandCutScene *);
void sub_8094044(struct FinalEndingLandCutScene *);
void sub_8094060(struct FinalEndingLandCutScene *);
void sub_80940BC(struct FinalEndingLandCutScene *);
void sub_8093868(struct FinalEndingLandCutScene *);
void sub_8093F54(void);

void sub_80932C8(void)
{
    struct FinalEndingLandCutScene *scene = (void *)(0x03000000 + ((gCurTask)->data));
    ScreenFade *fade = &scene->unk32C;

    fade->flags = 1;
    fade->bldCnt = 0x3FFF;
    sub_8093FA0(scene);
    sub_8093FF0(scene);
    sub_80934B8(scene);
    sub_8093638(scene);
    sub_8093740(scene);
    sub_809401C(scene);
    sub_8094044(scene);
    sub_8094060(scene);
    sub_80940BC(scene);
    sub_8093868(scene);

    if (UpdateScreenFade(fade) == 1) {
        fade->brightness = ((s16)((0)*256));
        gCurTask->main = sub_8093F54;
    }
}

void sub_809334C(void)
{
    struct FinalEndingLandCutScene *scene = (void *)(0x03000000 + ((gCurTask)->data));

    sub_8093FA0(scene);
    sub_8093FF0(scene);
    sub_80934B8(scene);
    sub_8093638(scene);
    sub_8093740(scene);
    sub_809401C(scene);
    sub_8094044(scene);
    sub_8094060(scene);
    sub_80940BC(scene);
    sub_8093868(scene);

    if ((scene->unk5E0[0][1] == ((gUnknown_080E1944[scene->unk33B][scene->unk338] - gBgScrollRegs[1][1]) * 0x100)
         || (scene->unk33B == 0 && scene->unk338 > 3))
        || (scene->unk33B == 1 && scene->unk338 > 4)) {
        if ((scene->unk33B == 0 && scene->unk338 < 6) || (scene->unk33B == 1 && scene->unk338 < 7)) {
            if (scene->unk342 != 0) {
                scene->unk342--;
            } else {
                scene->unk342 = gUnknown_080E1B14[scene->unk33B][scene->unk338];
                scene->unk338++;
                if (scene->unk33B != 0) {
                    if (scene->unk338 == 1) {
                        scene->unk33A = 1;
                    } else if ((u8)(scene->unk338 - 3) < 2) {
                        scene->unk33A++;
                    } else if (scene->unk338 > 4) {
                        scene->unk33A = 4;
                    }
                }
            }
        } else {
            gCurTask->main = sub_80932C8;
        }
    }
}

void sub_80934B8(struct FinalEndingLandCutScene *scene)
{
    if (scene->unk5E0[0][1] < ((gUnknown_080E1944[scene->unk33B][scene->unk338] - gBgScrollRegs[1][1]) * 0x100) && scene->unk338 == 0) {
        scene->unk5E0[0][1] += 0x320;
        scene->unk5E0[0][0] = 0x7800;
    } else if (scene->unk338 == 0) {
        scene->unk5E0[0][1] = ((gUnknown_080E1944[scene->unk33B][scene->unk338] - gBgScrollRegs[1][1]) * 0x100);
        scene->unk5E0[0][0] = 0x7800;
    } else if (scene->unk338 == 1) {
        scene->unk5E0[0][1] = (gUnknown_080E1944[scene->unk33B][scene->unk338] - gBgScrollRegs[1][1]) * 0x100;
        scene->unk5E0[0][0] = 0x7800;
    } else {
        if ((gSelectedCharacter == CHARACTER_CREAM && scene->unk338 == 5)
            || (gSelectedCharacter != CHARACTER_CREAM && scene->unk338 == 4)) {
            if (scene->unk342 & 1) {
                if (scene->unk33E < 0x23) {
                    scene->unk33E++;
                }

                scene->unk5E0[0][0] = gUnknown_080E1B30[scene->unk33E][0] + 0x7800;
                scene->unk5E0[0][1] = gUnknown_080E1B30[scene->unk33E][1] + 0x8200;
            }

            if (scene->unk342 < 0x32) {
                scene->unk340 += 4;
                scene->transform.rotation += 3;
            } else {
                scene->unk340 += 8;
                scene->transform.rotation += 0x14;
            }

            if (scene->unk342 == 1) {
                m4aSongNumStart(212);
            }
            return;
        }
        scene->unk5E0[0][1] = (gUnknown_080E1944[scene->unk33B][scene->unk338] - gBgScrollRegs[1][1]) * 0x100;
        scene->unk5E0[0][0] = 0x7800;
    }
}

void sub_8093638(struct FinalEndingLandCutScene *scene)
{
    u8 i;

    for (i = 0; i < (0x14 - scene->unk33C); i++) {
        scene->unk34C[i][2] += gUnknown_080E1964[i][0] * 2;
        if ((u32)scene->unk34C[i][2] <= 0x20000) {
            scene->unk34C[i][4] = 0;
        } else {
            scene->unk34C[i][4] = 1;
        }

        if (scene->unk34C[i][2] > 0x3FFFF) {
            scene->unk34C[i][2] = 0;
        }

        scene->unk34C[i][0] = (gSineTable[(scene->unk34C[i][2] >> 8) + 256]);
        scene->unk34C[i][3] += gUnknown_080E1964[i][1] * 8;

        if (scene->unk34C[i][3] > 0x3FFFF) {
            scene->unk34C[i][3] = 0;
        }

        scene->unk34C[i][1] = ((gSineTable[(((scene->unk34C[i][3] >> 8) & 0xFF) * 4)]) >> 6) * 8;
    }
}

void sub_8093740(struct FinalEndingLandCutScene *scene)
{
    u8 i;
    for (i = 0; i < (0xD - (scene->unk33C >> 1)); i++) {
        s32 sin, temp, unused;
        if (scene->unk4DC[i][1] == ((0xBE - gBgScrollRegs[1][1]) * 0x100)) {
            if (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) < 0) {
                scene->unk4DC[i][4] = -1;
            } else {
                scene->unk4DC[i][4] = 1;
            }
        }

        scene->unk4DC[i][0] += scene->unk4DC[i][4] * 0x80;

        if (scene->unk4DC[i][0] > 0x10000) {
            scene->unk4DC[i][0] = -10;
        } else if (scene->unk4DC[i][0] < -10) {
            scene->unk4DC[i][0] = 0x10000;
        }


        unused = scene->unk4DC[i][1];


        temp = (0xBE - gBgScrollRegs[1][1]) * 0x100;
        sin = (gSineTable[((((scene->unk4DC[i][0] >> 7) * 8) & 0xFF) * 4)]) >> 6;

        if (sin < 0) {
            sin = -sin;
        };

        scene->unk4DC[i][1] = temp - (sin * 8);
    }
}

void sub_8093868(struct FinalEndingLandCutScene *scene)
{
    u8 i;
    SpriteTransform *transform;
    Sprite *s = ((void *)0);

    transform = &scene->transform;

    if ((gSelectedCharacter == CHARACTER_CREAM && scene->unk338 < 5) || (gSelectedCharacter != CHARACTER_CREAM && scene->unk338 < 4)) {
        s = &scene->unk80;

        if (scene->unk338 < 3) {
            s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C48[scene->unk338] + gSelectedCharacter].anim;
            s->variant = gUnknown_080E17A4[gUnknown_080E1C48[scene->unk338] + gSelectedCharacter].variant;
        } else if (gSelectedCharacter == CHARACTER_CREAM && scene->unk338 < 5) {
            s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C4E[scene->unk338]].anim;
            s->variant = gUnknown_080E17A4[gUnknown_080E1C4E[scene->unk338]].variant;

        } else if (gSelectedCharacter == CHARACTER_CREAM) {
            s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C4E[scene->unk338] + gSelectedCharacter].anim;
            s->variant = gUnknown_080E17A4[gUnknown_080E1C4E[scene->unk338] + gSelectedCharacter].variant;
        } else {
            s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C48[scene->unk338] + gSelectedCharacter].anim;
            s->variant = gUnknown_080E17A4[gUnknown_080E1C48[scene->unk338] + gSelectedCharacter].variant;
        }
        s->x = scene->unk5E0[0][0] >> 8;
        s->y = scene->unk5E0[0][1] >> 8;
    }

    if ((gSelectedCharacter != CHARACTER_CREAM && scene->unk338 == 4) || (gSelectedCharacter == CHARACTER_CREAM && scene->unk338 == 5)) {
        s = &scene->unkB0;

        s->x = scene->unk5E0[0][0] >> 8;
        s->y = scene->unk5E0[0][1] >> 8;

        transform->qScaleX = scene->unk340;
        transform->qScaleY = scene->unk340;
        transform->x = s->x;
        transform->y = s->y;
        TransformSprite(s, transform);
    }





    {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if ((gSelectedCharacter != CHARACTER_CREAM && scene->unk338 > 4) || (gSelectedCharacter == CHARACTER_CREAM && scene->unk338 > 5)) {
        s = &scene->unkE0;
        if (gSelectedCharacter != CHARACTER_CREAM) {
            s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C48[5] + gSelectedCharacter].anim;
            s->variant = gUnknown_080E17A4[gUnknown_080E1C48[5] + gSelectedCharacter].variant;
        } else {
            s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C4E[6] + gSelectedCharacter].anim;
            s->variant = gUnknown_080E17A4[gUnknown_080E1C4E[6] + gSelectedCharacter].variant;
        }
        s->x = scene->unk5E0[0][0] >> 8;
        s->y = scene->unk5E0[0][1] >> 8;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (scene->unk338 != 0 && scene->unk33D == 0) {
        s = &scene->unk1A0;
        s->graphics.anim = gUnknown_080E17A4[35].anim;
        s->variant = gUnknown_080E17A4[35].variant;
        s->frameFlags |= 0x400;
        s->x = scene->unk80.x;
        s->y = scene->unk80.y + 0x19;
        DisplaySprite(s);

        s->frameFlags &= ~0x400;
        s->x = scene->unk80.x;
        s->y = scene->unk80.y + 0x19;

        if (UpdateSpriteAnimation(s) != 1) {
            scene->unk33D = 1;
        }

        DisplaySprite(s);
    }

    for (i = 0; i < (0x14 - scene->unk33C); i++) {
        s = &scene->unk260[i & 1];
        s->graphics.anim = gUnknown_080E17A4[(i & 1) + 0x24].anim;
        s->variant = gUnknown_080E17A4[(i & 1) + 0x24].variant;

        if (scene->unk34C[i][4] != 0) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }

        s->x = gUnknown_080E1964[i][3] + (scene->unk34C[i][0] >> 8);
        s->y = (gUnknown_080E1964[i][4] - gBgScrollRegs[1][1]) + (scene->unk34C[i][1] >> 8);

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    for (i = 0; i < (0xD - (scene->unk33C >> 1)); i++) {
        s = &scene->unk2C0[i & 1];
        s->graphics.anim = gUnknown_080E17A4[(i & 1) + 0x26].anim;
        s->variant = gUnknown_080E17A4[(i & 1) + 0x26].variant;

        if (scene->unk4DC[i][4] > 0) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }

        s->x = scene->unk4DC[i][0] >> 8;
        s->y = scene->unk4DC[i][1] >> 8;

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (scene->unk34A >= 1) {
        s = &scene->unk1D0;
        s->graphics.anim = gUnknown_080E17A4[40].anim;
        s->variant = gUnknown_080E17A4[40].variant;
        s->x = scene->unk5E0[2][0];
        s->y = scene->unk5E0[2][1] >> 8;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        scene->unk34A--;
    } else {
        if ((u16)(scene->unk34A + 0x1D) < 0x1E) {
            scene->unk34A--;
        } else if (scene->unk34A <= -0x1E) {
            scene->unk34A = 0x32;
        }
    }

    if ((gSelectedCharacter == CHARACTER_CREAM && scene->unk338 > 5) || (gSelectedCharacter != CHARACTER_CREAM && scene->unk338 > 4)) {
        s = &scene->unk200;
        s->graphics.anim = gUnknown_080E17A4[41].anim;
        s->variant = gUnknown_080E17A4[41].variant;
        s->x = scene->unk5E0[3][0];
        s->y = scene->unk5E0[3][1] >> 8;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s = &scene->unk230;
        s->graphics.anim = gUnknown_080E17A4[42].anim;
        s->variant = gUnknown_080E17A4[42].variant;
        s->x = scene->unk5E0[4][0];
        s->y = scene->unk5E0[4][1] >> 8;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (gSelectedCharacter == CHARACTER_CREAM) {
        s = &scene->unk110;
        s->graphics.anim = gUnknown_080E17A4[gUnknown_080E1C55[scene->unk33A]].anim;
        s->variant = gUnknown_080E17A4[gUnknown_080E1C55[scene->unk33A]].variant;
        s->x = scene->unk5E0[1][0];
        s->y = scene->unk5E0[1][1] >> 8;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (scene->unk338 < 6) {
            s = &scene->unk140;
            s->graphics.anim = gUnknown_080E17A4[0x2B + scene->unk338].anim;
            s->variant = gUnknown_080E17A4[0x2B + scene->unk338].variant;
            s->frameFlags |= 0x400;
            s->x = ((scene->unk5E0[0][0] >> 8) - 0x14);
            s->y = (scene->unk5E0[0][1] >> 8) - 0x14;
        } else {
            s = &scene->unk170;
            s->graphics.anim = gUnknown_080E17A4[49].anim;
            s->variant = gUnknown_080E17A4[49].variant;
            s->frameFlags &= ~0x400;
            s->x = scene->unk5E0[0][0] >> 8;
            s->y = scene->unk5E0[0][1] >> 8;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8093EDC(void)
{
    struct FinalEndingLandCutScene *scene = (void *)(0x03000000 + ((gCurTask)->data));
    ScreenFade *fade = &scene->unk32C;

    sub_8093FA0(scene);
    sub_8093FF0(scene);
    sub_80934B8(scene);
    sub_8093638(scene);
    sub_8093740(scene);
    sub_809401C(scene);
    sub_8094044(scene);
    sub_8094060(scene);
    sub_80940BC(scene);
    sub_8093868(scene);

    if (UpdateScreenFade(&scene->unk32C) == 1) {
        fade->brightness = ((s16)((0)*256));
        gCurTask->main = sub_809334C;
    }
}

void sub_8093F54(void)
{
    struct FinalEndingLandCutScene *scene = (void *)(0x03000000 + ((gCurTask)->data));
    if (scene->unk344 != 0) {
        if (scene->unk344-- == 0x3D) {
            m4aSongNumStart(44);
        }
    } else {
        CreateCreditsCutScene(1, 0, 0);
        TaskDestroy(gCurTask);
    }
}

void sub_8093F9C(__attribute__((unused)) struct Task *t)
{

}

void sub_8093FA0(struct FinalEndingLandCutScene *scene)
{
    if (gBgScrollRegs[0][1] < 0x4C) {
        scene->unk5E0[6][1] += 0x300;
    } else {
        scene->unk5E0[6][1] += 0x180;
    }

    if (gBgScrollRegs[0][1] < 0x60) {
        gBgScrollRegs[0][1] = scene->unk5E0[6][1] >> 8;
    }
}

void sub_8093FF0(struct FinalEndingLandCutScene *scene)
{
    scene->unk5E0[5][1] += 0x180;
    if (gBgScrollRegs[1][1] < 0x42) {
        gBgScrollRegs[1][1] = scene->unk5E0[5][1] >> 8;
    }
}

void sub_809401C(struct FinalEndingLandCutScene *scene)
{
    scene->unk5E0[1][0] = 0x78;
    scene->unk5E0[1][1] = (0xC2 - gBgScrollRegs[1][1]) * 0x100;
}

void sub_8094044(struct FinalEndingLandCutScene *scene)
{
    scene->unk5E0[2][0] = 0x78;
    scene->unk5E0[2][1] = 0xA00;
}

void sub_8094060(struct FinalEndingLandCutScene *scene)
{
    if ((gSelectedCharacter != CHARACTER_CREAM && scene->unk338 == 5) || (gSelectedCharacter == CHARACTER_CREAM && scene->unk338 == 6)) {
        scene->unk5E0[3][0] = 0x78;
        if (scene->unk5E0[3][1] > 0x8200) {
            scene->unk5E0[3][1] -= 0x300;
        }
    }
}

void sub_80940BC(struct FinalEndingLandCutScene *scene)
{
    if ((gSelectedCharacter != CHARACTER_CREAM && scene->unk338 == 5) || (gSelectedCharacter == CHARACTER_CREAM && scene->unk338 == 6)) {
        scene->unk5E0[4][0] = 0x78;
        if (scene->unk5E0[4][1] > 0x9600) {
            scene->unk5E0[4][1] -= 0x300;
        }
    }
}
