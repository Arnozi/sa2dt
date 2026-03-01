# 0 "src/game/special_stage/player.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/special_stage/player.c"
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
# 6 "include/core.h" 2


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
# 2 "src/game/special_stage/player.c" 2
# 1 "include/game/special_stage/main.h" 1



# 1 "include/global.h" 1
# 5 "include/game/special_stage/main.h" 2
# 1 "include/sprite.h" 1
# 6 "include/game/special_stage/main.h" 2
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
# 7 "include/game/special_stage/main.h" 2
# 22 "include/game/special_stage/main.h"
struct SpecialStage {
    struct Task *physicsTask;
    struct Task *worldTask;
    struct Task *collectablesTask;
    struct Task *playerTask;
    struct Task *uiTask;
    struct Task *guardRoboTask;

    Sprite introText;
    Background unk48;
    ScreenFade fade;
    s32 unk94[160][2];
    s32 q16CameraX;
    s32 q16CameraY;
    s32 unk59C;

    u16 cameraRotX;
    s16 animFrame;

    s16 rings;
    s16 ringsTarget;

    s32 points;
    s32 bonusPoints;
    s32 finalScore;

    u16 state;

    u8 character;

    bool8 unk5B7;

    u8 zone;

    u8 level;
    bool8 paused;

    s8 timeHundreds;
    s8 timeTens;
    s8 timeUnits;
    s8 timeTicks;

    s8 ringsHundreds;
    s8 ringsTens;
    s8 ringsUnits;

    s8 ringsTargetHundreds;
    s8 ringsTargetTens;
    s8 ringsTargetUnits;

    s8 targetReached;
    u8 pauseMenuCursor;

    s8 unk5C7;
    s8 unk5C8;

    s16 cameraOriginX;
    s16 cameraHeight;
    u16 worldScale;
    u8 cameraPitch;
    u8 horizonHeight;
    u8 viewDistance;
    u8 unk5D3;
    void *screenVram;
};

struct SpecialStageCollectables_UNK874_2 {
    u32 unk0;
    u32 unk4;
    s32 unk8;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
};

struct UNK_806CB84 {
    u8 unk0[2];
    s16 screenX;
    s16 screenY;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
};

void CreateSpecialStage(s16 selectedCharacter, s16 level);
# 3 "src/game/special_stage/player.c" 2
# 1 "include/game/special_stage/player.h" 1





# 1 "include/game/special_stage/data.h" 1





# 1 "include/constants/zones.h" 1
# 7 "include/game/special_stage/data.h" 2






struct UNK_8C878E8 {
    s16 id;
    s16 x;
    s16 y;
    s8 unk6;
    s8 unk7;
};

struct UNK_8C87904 {
    s16 type;
    s16 x;
    s16 y;


    s16 width;
    s16 length;

    s16 unkA;
} ;

struct UNK_80DF670 {
               AnimId anim;
               u16 variant;
    u16 size;
    u8 animSpeed;
    u8 unk7;
} ;

struct UNK_8C87920 {
               AnimId anim;
               u16 variant;
};


struct UNK_8C87920_SWAPPED {
               u16 variant;
               AnimId anim;
};


extern const struct UNK_80DF670 gUnknown_080DF2F8[];


extern const struct UNK_8C878E8 **const gUnknown_08C878E8[7];
extern const struct UNK_8C87904 *const gUnknown_08C87904[7];
extern const struct UNK_8C87920 *const gUnknown_08C87920[7];
# 7 "include/game/special_stage/player.h" 2


struct SpecialStagePlayer {
    struct SpecialStage *unk0;
    void *unk4;
    Sprite unk8;
    Sprite unk38;
    Sprite roboArrow;


    void *unk98;
    void *unk9C;
    void *unkA0;

    s16 animSpeed;
    u8 unkA6;


    s32 q16WorldX;
    s32 q16WorldY;

    s16 unkB0;
    s16 bearing;

    u16 state;
    s16 unkB6;

    s16 unkB8;

    s16 unkBA;

    s16 unkBC;
    s16 unkBE;

    s16 multiplier;
    u16 unkC2;

    const struct UNK_80DF670 *sprites;

    s32 speed;
    u32 rotateSpeed;
    u32 q16SpeedX;
    u32 q16SpeedY;
    u32 acceleration;

    s32 coastResistence;
    s32 deceleration;
    s32 maxSpeed;
    u32 unkE8;

    u16 unkEC;
    u16 unkEE;
    s16 unkF0;
    s16 unkF2;
    s16 unkF4;
    s16 unkF6;
    s16 unkF8;
    s16 unkFA;
    s16 unkFC;
    s16 unkFE;
    s32 unk100;
    s32 unk104;
};

struct Task *CreateSpecialStagePlayer(struct SpecialStage *);
# 4 "src/game/special_stage/player.c" 2
# 1 "include/game/special_stage/utils.h" 1
# 9 "include/game/special_stage/utils.h"
extern void *gSpecialStageSubMenuVramPointer;
extern void *gSpecialStageVramPointer;






void sub_806CA88(Sprite *obj, s8 target, u32 size, u16 anim, u32 frameFlags, s16 xPos, s16 yPos, u16 g, u8 h, u8 palId);
void SpecialStageDrawBackground(Background *background, u32 a, u32 b, u8 assetId, u16 d, u16 e, u16 f, u8 g, u16 scrollX, u16 scrollY);
bool16 SpecialStageCalcEntityScreenPosition(struct UNK_806CB84 *a, struct SpecialStageCollectables_UNK874_2 *unk874,
                                            struct SpecialStage *stage);
void sub_806CD68(Sprite *element);
void InitSpecialStageScreenVram(void);
s16 MaxSpriteSize(const struct UNK_80DF670 *spriteConfig);
# 5 "src/game/special_stage/player.c" 2
# 1 "include/game/special_stage/tables.h" 1






extern const s16 gUnknown_080DF9D8[][3];

extern const u16 gUnknown_080DF968[][4];
extern const s32 gSpecialStageGuardRoboStartPositions[][2];

extern const s16 gSpecialStageScoreTargets[];
# 6 "src/game/special_stage/player.c" 2


# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 9 "src/game/special_stage/player.c" 2
# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 10 "src/game/special_stage/player.c" 2

void sub_806D788(void);
void sub_806D2C8(void);
void sub_806D548(Sprite *s, void *, s16, u8, const struct UNK_80DF670 *);
void sub_806D7D0(Sprite *s, s16, s16, const struct UNK_80DF670 *);
void sub_806D830(Sprite *s, s16, s16, const struct UNK_80DF670 *);

void sub_806D5CC(void);
void sub_806D388(void);
void sub_806D424(void);
void sub_806D484(void);
void sub_806D4E4(void);
void sub_806D5D0(void);
void sub_806D5D0(void);
void sub_806D634(void);
void sub_806D698(void);
void sub_806D388(void);
void sub_806D5D0(void);
void sub_806D5D0(void);
void sub_806D5D0(void);
void sub_806D4E4(void);
void sub_806D388(void);
void sub_806D6DC(void);
void sub_806D5CC(void);
void sub_806D740(void);

static const struct UNK_80DF670 gUnknown_080DF668 = {
    .anim = 884,
    .variant = 0,
    .size = 2,
    .animSpeed = ((int)((float)(1.0)*0x10)),
    .unk7 = 0,
};


static const struct UNK_80DF670 *const gUnknown_080DF670[5] = {
    [CHARACTER_SONIC] = &gUnknown_080DF2F8[0], [CHARACTER_CREAM] = &gUnknown_080DF2F8[22], [CHARACTER_TAILS] = &gUnknown_080DF2F8[44],
    [CHARACTER_KNUCKLES] = &gUnknown_080DF2F8[66], [CHARACTER_AMY] = &gUnknown_080DF2F8[88],
};

typedef void (*PlayerStateHandler)(void);

static PlayerStateHandler const sPlayerStateHandlers[] = {
    sub_806D5CC, sub_806D388, sub_806D424, sub_806D484, sub_806D4E4, sub_806D5D0, sub_806D5D0, sub_806D634, sub_806D698,
    sub_806D388, sub_806D5D0, sub_806D5D0, sub_806D5D0, sub_806D4E4, sub_806D388, sub_806D6DC, sub_806D5CC, sub_806D740,
};

struct Task *CreateSpecialStagePlayer(struct SpecialStage *stage)
{
    const struct UNK_80DF670 *characterSprites[NUM_CHARACTERS];
    u8 zone;
    s16 result;
    u32 unk5B5C;
    void *ram;
    u32 variant;

    struct Task *t;
    struct SpecialStagePlayer *player;

    memcpy(&characterSprites, &gUnknown_080DF670, sizeof(characterSprites));
    zone = stage->zone;

    t = TaskCreate(sub_806D2C8, sizeof(struct SpecialStagePlayer), 0x9000, 0, ((void *)0));
    player = (void *)(0x03000000 + ((t)->data));
    player->unk0 = stage;
    player->unk4 = ((void *)0);
    player->q16WorldX = ((s32)((gUnknown_080DF9D8[zone][0])*0x10000));
    player->q16WorldY = ((s32)((gUnknown_080DF9D8[zone][1])*0x10000));

    player->unkB0 = 0;
    player->bearing = gUnknown_080DF9D8[zone][2];
    player->state = 0;
    player->unkB6 = 0x96;
    player->unkBC = 0;
    player->unkBE = 0;
    player->multiplier = 1;

    player->sprites = characterSprites[stage->character];
    result = MaxSpriteSize(player->sprites);
    player->unk98 = gSpecialStageVramPointer;
    gSpecialStageVramPointer += (result * 32);
    player->unk9C = gSpecialStageVramPointer;
    player->unkA0 = gSpecialStageVramPointer + (32 * 2);


    variant = 2;

    gSpecialStageVramPointer += 0xC0;

    sub_806D548(&player->unk8, player->unk98, stage->cameraHeight, 9, player->sprites);
    sub_806D548(&player->unk38, player->unk9C, stage->cameraHeight, 10, &gUnknown_080DF668);

    {
        Sprite *s = &player->roboArrow;
        u16 *affine = &gOamBuffer[120].all.affineParam;

        s->graphics.dest = player->unkA0;
        s->graphics.size = 0;
        s->graphics.anim = 890;
        s->frameFlags = ((1) << (12)) | ((1) << (6)) | ((1) << (5))
            | ((30) << (0));
        s->x = (240 / 2);
        s->y = (160 / 2);
        s->oamFlags = ((0) << 6);
        s->qAnimDelay = 0;
        s->prevAnim = -1;

        s->variant = variant;
        s->prevVariant = -1;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;

        if (stage->paused == 0) {
            UpdateSpriteAnimation(s);
        }

        *affine = 0x100;
        affine += (8 / sizeof(short));
        *affine = 0;
        affine += (8 / sizeof(short));
        *affine = 0;
        affine += (8 / sizeof(short));
        *affine = 0x100;
    }

    if (stage->unk5B7 == 0) {
        player->speed = 0;
        player->rotateSpeed = 6;
        player->q16SpeedX = 0x10000;
        player->q16SpeedY = 0x10000;
        player->acceleration = 40;
        player->coastResistence = -43;
        player->deceleration = -350;
        player->maxSpeed = 0x2C80;
        player->unkE8 = 0x3F80;
        player->unkEC = 0x502;
        player->unkEE = 0x8C0;
        player->unkF0 = 0x14;
        player->unkF2 = -0x28;
        player->unkF4 = -0x36;
        player->unkF6 = -0x48;
        player->unk100 = -0x10;
        player->unk104 = -8;
        player->unkF8 = 0x800;
        player->unkFA = -0x80;
        player->unkFC = 0x600;
        player->unkFE = -0x40;
    } else {
        player->speed = 0;
        player->rotateSpeed = 0;
        player->q16SpeedX = 0xC00;
        player->q16SpeedY = 0x7FFF;
        player->acceleration = 256;
        player->coastResistence = 0x800;
    }

    return t;
}

void sub_806D2C8(void)
{
    PlayerStateHandler stateHandlers[18];
    Sprite *unk8, *unk38;

    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;

    memcpy(stateHandlers, sPlayerStateHandlers, sizeof(sPlayerStateHandlers));

    if (stage->paused == 0) {
        stateHandlers[player->state + 1]();
        sub_806D788();
    } else {
        stateHandlers[0]();
    }

    unk8 = &player->unk8;
    unk38 = &player->unk38;

    if (player->unkB6 != 0 && stage->paused == 0) {
        if ((--player->unkB6) & 2) {
            DisplaySprite(unk8);
            if (player->state < 14) {
                DisplaySprite(unk38);
            }
        }
    } else {
        DisplaySprite(unk8);
        if (player->state < 14) {
            DisplaySprite(unk38);
        }
    }
}




void sub_806D388(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;
    const struct UNK_80DF670 *unkC4;
    Sprite *unk8;
    u32 index = 0;

    if (stage->state != 8) {
        if (gInput & 0x0020) {
            index = 1;
        } else if (gInput & 0x0010) {
            index = 2;
        }
    }

    unkC4 = &player->sprites[index];
    unk8 = &player->unk8;

    sub_806D7D0(unk8, -1, stage->cameraHeight, unkC4);

    if (stage->state == 8) {
        DisplaySprite(unk8);
        sub_806D830(unk8, -1, stage->cameraHeight, unkC4);
    }
}


void sub_806D424(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;

    const struct UNK_80DF670 *unkC4;
    Sprite *unk8;

    u32 index = 3;
    if (gInput & 0x0020) {
        index = 4;
    } else if (gInput & 0x0010) {
        index = 5;
    }

    unkC4 = &player->sprites[index];
    unk8 = &player->unk8;
    sub_806D7D0(unk8, player->animSpeed, stage->cameraHeight, unkC4);
}


void sub_806D484(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;

    const struct UNK_80DF670 *unkC4;
    Sprite *unk8;

    u32 index = 6;
    if (gInput & 0x0020) {
        index = 7;
    } else if (gInput & 0x0010) {
        index = 8;
    }

    unkC4 = &player->sprites[index];
    unk8 = &player->unk8;
    sub_806D7D0(unk8, player->animSpeed, stage->cameraHeight, unkC4);
}


void sub_806D4E4(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;

    const struct UNK_80DF670 *unkC4;
    Sprite *unk8;

    u32 index = 9;
    if (gInput & 0x0020) {
        index = 10;
    } else if (gInput & 0x0010) {
        index = 11;
    }

    unkC4 = &player->sprites[index];
    unk8 = &player->unk8;
    sub_806D7D0(unk8, player->animSpeed >> 1, stage->cameraHeight, unkC4);
}

void sub_806D548(Sprite *s, void *vram, s16 y, u8 b, const struct UNK_80DF670 *c4)
{
    u32 frameFlags = ((1) << (12));
    if (c4->unk7 & 1) {
        frameFlags |= ((1) << (10));
    }

    if (c4->unk7 & 2) {
        frameFlags |= ((1) << (11));
    }

    s->graphics.dest = vram;
    s->graphics.size = 0;
    s->graphics.anim = c4->anim;
    s->frameFlags = frameFlags;
    s->x = (240 / 2);
    s->y = y;
    s->oamFlags = ((b) << 6);
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = c4->variant;
    s->prevVariant = -1;
    s->animSpeed = c4->animSpeed;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

__attribute__((unused)) void sub_806D5CC(void) { }



void sub_806D5D0(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;

    const struct UNK_80DF670 *unkC4 = &player->sprites[12];
    player->unkB0 += player->unkB8 >> 4;

    sub_806D7D0(&player->unk8, -1, stage->cameraHeight - ({ ((player->unkB0) >> 4) + (0xF); }), unkC4);
}

void sub_806D634(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;
    const struct UNK_80DF670 *unkC4 = &player->sprites[15];

    player->unkB0 += player->unkB8 >> 4;

    sub_806D7D0(&player->unk8, -1, stage->cameraHeight - ({ ((player->unkB0) >> 4) + (10); }), unkC4);
}

void sub_806D698(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;
    const struct UNK_80DF670 *unkC4 = &player->sprites[18];

    sub_806D7D0(&player->unk8, -1, stage->cameraHeight, unkC4);
}

void sub_806D6DC(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;
    const struct UNK_80DF670 *unkC4 = &player->sprites[19];

    player->unkB0 += player->unkB8 >> 4;

    sub_806D7D0(&player->unk8, -1, stage->cameraHeight - ({ ((player->unkB0) >> 4) + (10); }), unkC4);
}

void sub_806D740(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    struct SpecialStage *stage = player->unk0;
    const struct UNK_80DF670 *unkC4 = &player->sprites[20];

    sub_806D7D0(&player->unk8, -1, stage->cameraHeight - 0xC, unkC4);
}

void sub_806D788(void)
{
    struct SpecialStagePlayer *player = (void *)(0x03000000 + ((gCurTask)->data));
    if (player->unkBC != 0) {
        s32 temp = --player->unkBC;
        if (temp == 0) {
            player->unkBE = temp;
            player->multiplier = 1;
        }
    }
}

void sub_806D7D0(Sprite *s, s16 animSpeed, s16 spriteY, const struct UNK_80DF670 *anim)
{
    u32 frameFlags = ((1) << (12)) | ((0) << (7));
    if (anim->unk7 & 1) {
        frameFlags |= ((1) << (10));
    }

    if (anim->unk7 & 2) {
        frameFlags |= ((1) << (11));
    }
    s->graphics.anim = anim->anim;
    s->frameFlags = frameFlags;
    s->y = spriteY;
    s->variant = anim->variant;

    s->animSpeed = animSpeed != -1 ? animSpeed : ((int)((float)(1.0)*0x10));
    UpdateSpriteAnimation(s);
}

void sub_806D830(Sprite *s, s16 animSpeed, s16 spriteY, const struct UNK_80DF670 *anim)
{
    u8 unk22;
    u32 frameFlags = ((1) << (12)) | ((2) << (7));
    if (anim->unk7 & 1) {
        frameFlags |= ((1) << (10));
    }

    if (anim->unk7 & 2) {
        frameFlags |= ((1) << (11));
    }
    s->graphics.anim = anim->anim;
    s->frameFlags = frameFlags;
    s->y = spriteY;
    s->variant = anim->variant;

    s->animSpeed = animSpeed != -1 ? animSpeed : ((int)((float)(1.0)*0x10));
    UpdateSpriteAnimation(s);
}
