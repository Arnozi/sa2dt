# 0 "src/data/tilemap_data.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/data/tilemap_data.c"

# 1 "include/../data/maps/zone_1/act_1/tilemaps/fg/header.c" 1
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
# 2 "include/../data/maps/zone_1/act_1/tilemaps/fg/header.c" 2
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
# 3 "include/../data/maps/zone_1/act_1/tilemaps/fg/header.c" 2

const u16 Palette_zone_1_act_1_fg[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_1_act_1_fg[] = INCBIN_U8("data/maps/zone_1/act_1/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_1_act_1_fg[] = INCBIN_U8("data/maps/zone_1/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_1_act_1_fg[] = INCBIN_U8("data/maps/zone_1/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_1_act_1_fg[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_1_act_1_fg[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_1_fg0[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_1_act_1_fg1[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_1_fg),
        .palette = Palette_zone_1_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_1_fg,
    },
    .metatileMap = Map_zone_1_act_1_fg0,
    .mapWidth = 206,
    .mapHeight = 32,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_1_fg),
        .palette = Palette_zone_1_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_1_fg,
    },
    .metatileMap = Map_zone_1_act_1_fg1,
    .mapWidth = 206,
    .mapHeight = 32,
};

const Collision CollHeader_zone_1_act_1_fg = { CollHeightMap_zone_1_act_1_fg,
                                               CollTileRot_zone_1_act_1_fg,
                                               Metatiles_zone_1_act_1_fg,
                                               Map_zone_1_act_1_fg0,
                                               Map_zone_1_act_1_fg1,
                                               CollFlags_zone_1_act_1_fg,
                                               206,
                                               32,
                                               19776,
                                               3072 };
# 3 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_1/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_1_act_2_fg[] = INCBIN_U16("data/maps/zone_1/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_1_act_2_fg[] = INCBIN_U8("data/maps/zone_1/act_2/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_1_act_2_fg[] = INCBIN_U8("data/maps/zone_1/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_1_act_2_fg[] = INCBIN_U8("data/maps/zone_1/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_1_act_2_fg[] = INCBIN_U16("data/maps/zone_1/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_1_act_2_fg[] = INCBIN_U16("data/maps/zone_1/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_2_fg0[] = INCBIN_U16("data/maps/zone_1/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_1_act_2_fg1[] = INCBIN_U16("data/maps/zone_1/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_2_fg),
        .palette = Palette_zone_1_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_2_fg,
    },
    .metatileMap = Map_zone_1_act_2_fg0,
    .mapWidth = 199,
    .mapHeight = 26,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_2_fg),
        .palette = Palette_zone_1_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_2_fg,
    },
    .metatileMap = Map_zone_1_act_2_fg1,
    .mapWidth = 199,
    .mapHeight = 26,
};

const Collision CollHeader_zone_1_act_2_fg = { CollHeightMap_zone_1_act_2_fg,
                                               CollTileRot_zone_1_act_2_fg,
                                               Metatiles_zone_1_act_2_fg,
                                               Map_zone_1_act_2_fg0,
                                               Map_zone_1_act_2_fg1,
                                               CollFlags_zone_1_act_2_fg,
                                               199,
                                               26,
                                               0x4AA0,
                                               0x000009C0 };
# 4 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_1/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_1_act_boss_fg[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_1_act_boss_fg[] = INCBIN_U8("data/maps/zone_1/act_boss/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_1_act_boss_fg[] = INCBIN_U8("data/maps/zone_1/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_1_act_boss_fg[] = INCBIN_U8("data/maps/zone_1/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_1_act_boss_fg[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_1_act_boss_fg[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_boss_fg0[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_1_act_boss_fg1[] = INCBIN_U16("data/maps/zone_1/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_boss_fg),
        .palette = Palette_zone_1_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_boss_fg,
    },
    .metatileMap = Map_zone_1_act_boss_fg0,
    .mapWidth = 60,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_boss_fg),
        .palette = Palette_zone_1_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_boss_fg,
    },
    .metatileMap = Map_zone_1_act_boss_fg1,
    .mapWidth = 60,
    .mapHeight = 3,
};

const Collision CollHeader_zone_1_act_boss_fg = { CollHeightMap_zone_1_act_boss_fg,
                                                  CollTileRot_zone_1_act_boss_fg,
                                                  Metatiles_zone_1_act_boss_fg,
                                                  Map_zone_1_act_boss_fg0,
                                                  Map_zone_1_act_boss_fg1,
                                                  CollFlags_zone_1_act_boss_fg,
                                                  60,
                                                  3,
                                                  0x1680,
                                                  0x0120 };
# 5 "src/data/tilemap_data.c" 2






# 1 "include/../data/maps/zone_1/act_dummy/tilemaps/fg/header.c" 1



const u16 Palette_zone_1_act_dummy_fg[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_1_act_dummy_fg[] = INCBIN_U8("data/maps/zone_1/act_dummy/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_1_act_dummy_fg[] = INCBIN_U8("data/maps/zone_1/act_dummy/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_1_act_dummy_fg[] = INCBIN_U8("data/maps/zone_1/act_dummy/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_1_act_dummy_fg[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_1_act_dummy_fg[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_1_act_dummy_fg0[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/fg/map_front.bin");

const u16 Map_zone_1_act_dummy_fg1[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_dummy_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_dummy_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_dummy_fg),
        .palette = Palette_zone_1_act_dummy_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_dummy_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_dummy_fg,
    },
    .metatileMap = Map_zone_1_act_dummy_fg0,
    .mapWidth = 6,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_1_act_dummy_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_1_act_dummy_fg,
        .tilesSize = sizeof(Tileset_zone_1_act_dummy_fg),
        .palette = Palette_zone_1_act_dummy_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_1_act_dummy_fg) / sizeof(u16),
        .map = Metatiles_zone_1_act_dummy_fg,
    },
    .metatileMap = Map_zone_1_act_dummy_fg1,
    .mapWidth = 6,
    .mapHeight = 3,
};

const Collision CollHeader_zone_1_act_dummy_fg = { CollHeightMap_zone_1_act_dummy_fg,
                                                   CollTileRot_zone_1_act_dummy_fg,
                                                   Metatiles_zone_1_act_dummy_fg,
                                                   Map_zone_1_act_dummy_fg0,
                                                   Map_zone_1_act_dummy_fg1,
                                                   CollFlags_zone_1_act_dummy_fg,
                                                   6,
                                                   3,
                                                   576,
                                                   288 };
# 12 "src/data/tilemap_data.c" 2






# 1 "include/../data/maps/zone_2/act_1/tilemaps/fg/header.c" 1



const u16 Palette_zone_2_act_1_fg[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_2_act_1_fg[] = INCBIN_U8("data/maps/zone_2/act_1/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_2_act_1_fg[] = INCBIN_U8("data/maps/zone_2/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_2_act_1_fg[] = INCBIN_U8("data/maps/zone_2/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_2_act_1_fg[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_2_act_1_fg[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_2_act_1_fg0[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_2_act_1_fg1[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_2_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_2_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_2_act_1_fg),
        .palette = Palette_zone_2_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_2_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_2_act_1_fg,
    },
    .metatileMap = Map_zone_2_act_1_fg0,
    .mapWidth = 285,
    .mapHeight = 46,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_2_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_2_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_2_act_1_fg),
        .palette = Palette_zone_2_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_2_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_2_act_1_fg,
    },
    .metatileMap = Map_zone_2_act_1_fg1,
    .mapWidth = 285,
    .mapHeight = 46,
};

const Collision CollHeader_zone_2_act_1_fg = { CollHeightMap_zone_2_act_1_fg,
                                               CollTileRot_zone_2_act_1_fg,
                                               Metatiles_zone_2_act_1_fg,
                                               Map_zone_2_act_1_fg0,
                                               Map_zone_2_act_1_fg1,
                                               CollFlags_zone_2_act_1_fg,
                                               285,
                                               46,
                                               0x6AE0,
                                               0x1140 };
# 19 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_2/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_2_act_2_fg[] = INCBIN_U16("data/maps/zone_2/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_2_act_2_fg[] = INCBIN_U8("data/maps/zone_2/act_2/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_2_act_2_fg[] = INCBIN_U8("data/maps/zone_2/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_2_act_2_fg[] = INCBIN_U8("data/maps/zone_2/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_2_act_2_fg[] = INCBIN_U16("data/maps/zone_2/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_2_act_2_fg[] = INCBIN_U16("data/maps/zone_2/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_2_act_2_fg0[] = INCBIN_U16("data/maps/zone_2/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_2_act_2_fg1[] = INCBIN_U16("data/maps/zone_2/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_2_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_2_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_2_act_2_fg),
        .palette = Palette_zone_2_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_2_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_2_act_2_fg,
    },
    .metatileMap = Map_zone_2_act_2_fg0,
    .mapWidth = 255,
    .mapHeight = 64,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_2_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_2_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_2_act_2_fg),
        .palette = Palette_zone_2_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_2_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_2_act_2_fg,
    },
    .metatileMap = Map_zone_2_act_2_fg1,
    .mapWidth = 255,
    .mapHeight = 64,
};

const Collision CollHeader_zone_2_act_2_fg = { CollHeightMap_zone_2_act_2_fg,
                                               CollTileRot_zone_2_act_2_fg,
                                               Metatiles_zone_2_act_2_fg,
                                               Map_zone_2_act_2_fg0,
                                               Map_zone_2_act_2_fg1,
                                               CollFlags_zone_2_act_2_fg,
                                               255,
                                               64,
                                               0x5FA0,
                                               0x1800 };
# 20 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_2/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_2_act_boss_fg[] = INCBIN_U16("data/maps/zone_2/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_2_act_boss_fg[] = INCBIN_U8("data/maps/zone_2/act_boss/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_2_act_boss_fg[] = INCBIN_U8("data/maps/zone_2/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_2_act_boss_fg[] = INCBIN_U8("data/maps/zone_2/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_2_act_boss_fg[] = INCBIN_U16("data/maps/zone_2/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_2_act_boss_fg[] = INCBIN_U16("data/maps/zone_2/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_2_act_boss_fg0[] = INCBIN_U16("data/maps/zone_2/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_2_act_boss_fg1[] = INCBIN_U16("data/maps/zone_2/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_2_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_2_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_2_act_boss_fg),
        .palette = Palette_zone_2_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_2_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_2_act_boss_fg,
    },
    .metatileMap = Map_zone_2_act_boss_fg0,
    .mapWidth = 75,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_2_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_2_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_2_act_boss_fg),
        .palette = Palette_zone_2_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_2_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_2_act_boss_fg,
    },
    .metatileMap = Map_zone_2_act_boss_fg1,
    .mapWidth = 75,
    .mapHeight = 3,
};

const Collision CollHeader_zone_2_act_boss_fg = { CollHeightMap_zone_2_act_boss_fg,
                                                  CollTileRot_zone_2_act_boss_fg,
                                                  Metatiles_zone_2_act_boss_fg,
                                                  Map_zone_2_act_boss_fg0,
                                                  Map_zone_2_act_boss_fg1,
                                                  CollFlags_zone_2_act_boss_fg,
                                                  75,
                                                  3,
                                                  0x1C20,
                                                  0x0120 };
# 21 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_3/act_1/tilemaps/fg/header.c" 1



const u16 Palette_zone_3_act_1_fg[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_3_act_1_fg[] = INCBIN_U8("data/maps/zone_3/act_1/tilemaps/fg/tileset.4bpp");
const u8 Tileset_AnimTiles_zone_3_act_1_fg[] = INCBIN_U8("data/maps/zone_3/act_1/tilemaps/fg/tileset_anim.4bpp");
const s8 CollHeightMap_zone_3_act_1_fg[] = INCBIN_U8("data/maps/zone_3/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_3_act_1_fg[] = INCBIN_U8("data/maps/zone_3/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_3_act_1_fg[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_3_act_1_fg[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_3_act_1_fg0[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_3_act_1_fg1[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_3_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 256,
        .animFrameCount = 8,
        .animDelay = 5,
        .tiles = Tileset_zone_3_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_1_fg),
        .palette = Palette_zone_3_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_1_fg,
    },
    .metatileMap = Map_zone_3_act_1_fg0,
    .mapWidth = 263,
    .mapHeight = 50,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_3_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 256,
        .animFrameCount = 8,
        .animDelay = 5,
        .tiles = Tileset_zone_3_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_1_fg),
        .palette = Palette_zone_3_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_1_fg,
    },
    .metatileMap = Map_zone_3_act_1_fg1,
    .mapWidth = 263,
    .mapHeight = 50,
};

const Collision CollHeader_zone_3_act_1_fg = { CollHeightMap_zone_3_act_1_fg,
                                               CollTileRot_zone_3_act_1_fg,
                                               Metatiles_zone_3_act_1_fg,
                                               Map_zone_3_act_1_fg0,
                                               Map_zone_3_act_1_fg1,
                                               CollFlags_zone_3_act_1_fg,
                                               263,
                                               50,
                                               0x62A0,
                                               0x12C0 };
# 22 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_3/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_3_act_2_fg[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/tileset.4bpp");
const u8 Tileset_AnimTiles_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/tileset_anim.4bpp");
const s8 CollHeightMap_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_3_act_2_fg[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_3_act_2_fg[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_3_act_2_fg0[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_3_act_2_fg1[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_3_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 256,
        .animFrameCount = 8,
        .animDelay = 5,
        .tiles = Tileset_zone_3_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_2_fg),
        .palette = Palette_zone_3_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_2_fg,
    },
    .metatileMap = Map_zone_3_act_2_fg0,
    .mapWidth = 278,
    .mapHeight = 42,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_3_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 256,
        .animFrameCount = 8,
        .animDelay = 5,
        .tiles = Tileset_zone_3_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_2_fg),
        .palette = Palette_zone_3_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_2_fg,
    },
    .metatileMap = Map_zone_3_act_2_fg1,
    .mapWidth = 278,
    .mapHeight = 42,
};

const Collision CollHeader_zone_3_act_2_fg = { CollHeightMap_zone_3_act_2_fg,
                                               CollTileRot_zone_3_act_2_fg,
                                               Metatiles_zone_3_act_2_fg,
                                               Map_zone_3_act_2_fg0,
                                               Map_zone_3_act_2_fg1,
                                               CollFlags_zone_3_act_2_fg,
                                               278,
                                               42,
                                               0x6840,
                                               0x0FC0 };
# 23 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_3/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_3_act_boss_fg[] = INCBIN_U16("data/maps/zone_3/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_3_act_boss_fg[] = INCBIN_U8("data/maps/zone_3/act_boss/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_3_act_boss_fg[] = INCBIN_U8("data/maps/zone_3/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_3_act_boss_fg[] = INCBIN_U8("data/maps/zone_3/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_3_act_boss_fg[] = INCBIN_U16("data/maps/zone_3/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_3_act_boss_fg[] = INCBIN_U16("data/maps/zone_3/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_3_act_boss_fg0[] = INCBIN_U16("data/maps/zone_3/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_3_act_boss_fg1[] = INCBIN_U16("data/maps/zone_3/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_3_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_3_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_boss_fg),
        .palette = Palette_zone_3_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_boss_fg,
    },
    .metatileMap = Map_zone_3_act_boss_fg0,
    .mapWidth = 40,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_3_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_3_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_boss_fg),
        .palette = Palette_zone_3_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_boss_fg,
    },
    .metatileMap = Map_zone_3_act_boss_fg1,
    .mapWidth = 40,
    .mapHeight = 3,
};

const Collision CollHeader_zone_3_act_boss_fg = { CollHeightMap_zone_3_act_boss_fg,
                                                  CollTileRot_zone_3_act_boss_fg,
                                                  Metatiles_zone_3_act_boss_fg,
                                                  Map_zone_3_act_boss_fg0,
                                                  Map_zone_3_act_boss_fg1,
                                                  CollFlags_zone_3_act_boss_fg,
                                                  40,
                                                  3,
                                                  0x0F00,
                                                  0x0120 };
# 24 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_4/act_1/tilemaps/fg/header.c" 1



const u16 Palette_zone_4_act_1_fg[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_4_act_1_fg[] = INCBIN_U8("data/maps/zone_4/act_1/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_4_act_1_fg[] = INCBIN_U8("data/maps/zone_4/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_4_act_1_fg[] = INCBIN_U8("data/maps/zone_4/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_4_act_1_fg[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_4_act_1_fg[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_4_act_1_fg0[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_4_act_1_fg1[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_4_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_4_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_4_act_1_fg),
        .palette = Palette_zone_4_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_4_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_4_act_1_fg,
    },
    .metatileMap = Map_zone_4_act_1_fg0,
    .mapWidth = 290,
    .mapHeight = 47,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_4_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_4_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_4_act_1_fg),
        .palette = Palette_zone_4_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_4_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_4_act_1_fg,
    },
    .metatileMap = Map_zone_4_act_1_fg1,
    .mapWidth = 290,
    .mapHeight = 47,
};

const Collision CollHeader_zone_4_act_1_fg = { CollHeightMap_zone_4_act_1_fg,
                                               CollTileRot_zone_4_act_1_fg,
                                               Metatiles_zone_4_act_1_fg,
                                               Map_zone_4_act_1_fg0,
                                               Map_zone_4_act_1_fg1,
                                               CollFlags_zone_4_act_1_fg,
                                               290,
                                               47,
                                               0x6CC0,
                                               0x11A0 };
# 25 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_4/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_4_act_2_fg[] = INCBIN_U16("data/maps/zone_4/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_4_act_2_fg[] = INCBIN_U8("data/maps/zone_4/act_2/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_4_act_2_fg[] = INCBIN_U8("data/maps/zone_4/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_4_act_2_fg[] = INCBIN_U8("data/maps/zone_4/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_4_act_2_fg[] = INCBIN_U16("data/maps/zone_4/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_4_act_2_fg[] = INCBIN_U16("data/maps/zone_4/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_4_act_2_fg0[] = INCBIN_U16("data/maps/zone_4/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_4_act_2_fg1[] = INCBIN_U16("data/maps/zone_4/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_4_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_4_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_4_act_2_fg),
        .palette = Palette_zone_4_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_4_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_4_act_2_fg,
    },
    .metatileMap = Map_zone_4_act_2_fg0,
    .mapWidth = 225,
    .mapHeight = 40,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_4_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_4_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_4_act_2_fg),
        .palette = Palette_zone_4_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_4_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_4_act_2_fg,
    },
    .metatileMap = Map_zone_4_act_2_fg1,
    .mapWidth = 225,
    .mapHeight = 40,
};

const Collision CollHeader_zone_4_act_2_fg = { CollHeightMap_zone_4_act_2_fg,
                                               CollTileRot_zone_4_act_2_fg,
                                               Metatiles_zone_4_act_2_fg,
                                               Map_zone_4_act_2_fg0,
                                               Map_zone_4_act_2_fg1,
                                               CollFlags_zone_4_act_2_fg,
                                               225,
                                               40,
                                               0x5460,
                                               0x0F00 };
# 26 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_4/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_4_act_boss_fg[] = INCBIN_U16("data/maps/zone_4/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_4_act_boss_fg[] = INCBIN_U8("data/maps/zone_4/act_boss/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_4_act_boss_fg[] = INCBIN_U8("data/maps/zone_4/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_4_act_boss_fg[] = INCBIN_U8("data/maps/zone_4/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_4_act_boss_fg[] = INCBIN_U16("data/maps/zone_4/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_4_act_boss_fg[] = INCBIN_U16("data/maps/zone_4/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_4_act_boss_fg0[] = INCBIN_U16("data/maps/zone_4/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_4_act_boss_fg1[] = INCBIN_U16("data/maps/zone_4/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_4_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_4_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_4_act_boss_fg),
        .palette = Palette_zone_4_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_4_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_4_act_boss_fg,
    },
    .metatileMap = Map_zone_4_act_boss_fg0,
    .mapWidth = 50,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_4_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_4_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_4_act_boss_fg),
        .palette = Palette_zone_4_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_4_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_4_act_boss_fg,
    },
    .metatileMap = Map_zone_4_act_boss_fg1,
    .mapWidth = 50,
    .mapHeight = 3,
};

const Collision CollHeader_zone_4_act_boss_fg = { CollHeightMap_zone_4_act_boss_fg,
                                                  CollTileRot_zone_4_act_boss_fg,
                                                  Metatiles_zone_4_act_boss_fg,
                                                  Map_zone_4_act_boss_fg0,
                                                  Map_zone_4_act_boss_fg1,
                                                  CollFlags_zone_4_act_boss_fg,
                                                  50,
                                                  3,
                                                  0x12C0,
                                                  0x0120 };
# 27 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_5/act_1/tilemaps/fg/header.c" 1



const u16 Palette_zone_5_act_1_fg[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_5_act_1_fg[] = INCBIN_U8("data/maps/zone_5/act_1/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_5_act_1_fg[] = INCBIN_U8("data/maps/zone_5/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_5_act_1_fg[] = INCBIN_U8("data/maps/zone_5/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_5_act_1_fg[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_5_act_1_fg[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_5_act_1_fg0[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_5_act_1_fg1[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_5_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_5_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_1_fg),
        .palette = Palette_zone_5_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_1_fg,
    },
    .metatileMap = Map_zone_5_act_1_fg0,
    .mapWidth = 172,
    .mapHeight = 53,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_5_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_5_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_1_fg),
        .palette = Palette_zone_5_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_1_fg,
    },
    .metatileMap = Map_zone_5_act_1_fg1,
    .mapWidth = 172,
    .mapHeight = 53,
};

const Collision CollHeader_zone_5_act_1_fg = { CollHeightMap_zone_5_act_1_fg,
                                               CollTileRot_zone_5_act_1_fg,
                                               Metatiles_zone_5_act_1_fg,
                                               Map_zone_5_act_1_fg0,
                                               Map_zone_5_act_1_fg1,
                                               CollFlags_zone_5_act_1_fg,
                                               172,
                                               53,
                                               0x4080,
                                               0x13E0 };
# 28 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_5/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_5_act_2_fg[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_5_act_2_fg[] = INCBIN_U8("data/maps/zone_5/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_5_act_2_fg[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_5_act_2_fg[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_5_act_2_fg0[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_5_act_2_fg1[] = INCBIN_U16("data/maps/zone_5/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_5_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_5_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_2_fg),
        .palette = Palette_zone_5_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_2_fg,
    },
    .metatileMap = Map_zone_5_act_2_fg0,
    .mapWidth = 212,
    .mapHeight = 50,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_5_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_5_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_2_fg),
        .palette = Palette_zone_5_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_2_fg,
    },
    .metatileMap = Map_zone_5_act_2_fg1,
    .mapWidth = 212,
    .mapHeight = 50,
};

const Collision CollHeader_zone_5_act_2_fg = { CollHeightMap_zone_5_act_2_fg,
                                               CollTileRot_zone_5_act_2_fg,
                                               Metatiles_zone_5_act_2_fg,
                                               Map_zone_5_act_2_fg0,
                                               Map_zone_5_act_2_fg1,
                                               CollFlags_zone_5_act_2_fg,
                                               212,
                                               50,
                                               0x4F80,
                                               0x12C0 };
# 29 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_5/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_5_act_boss_fg[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_5_act_boss_fg[] = INCBIN_U8("data/maps/zone_5/act_boss/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_5_act_boss_fg[] = INCBIN_U8("data/maps/zone_5/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_5_act_boss_fg[] = INCBIN_U8("data/maps/zone_5/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_5_act_boss_fg[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_5_act_boss_fg[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_5_act_boss_fg0[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_5_act_boss_fg1[] = INCBIN_U16("data/maps/zone_5/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_5_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_5_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_boss_fg),
        .palette = Palette_zone_5_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_boss_fg,
    },
    .metatileMap = Map_zone_5_act_boss_fg0,
    .mapWidth = 60,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_5_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_5_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_5_act_boss_fg),
        .palette = Palette_zone_5_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_5_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_5_act_boss_fg,
    },
    .metatileMap = Map_zone_5_act_boss_fg1,
    .mapWidth = 60,
    .mapHeight = 3,
};

const Collision CollHeader_zone_5_act_boss_fg = { CollHeightMap_zone_5_act_boss_fg,
                                                  CollTileRot_zone_5_act_boss_fg,
                                                  Metatiles_zone_5_act_boss_fg,
                                                  Map_zone_5_act_boss_fg0,
                                                  Map_zone_5_act_boss_fg1,
                                                  CollFlags_zone_5_act_boss_fg,
                                                  60,
                                                  3,
                                                  0x1680,
                                                  0x0120 };
# 30 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_6/act_1/tilemaps/fg/header.c" 1



const u16 Palette_zone_6_act_1_fg[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_6_act_1_fg[] = INCBIN_U8("data/maps/zone_6/act_1/tilemaps/fg/tileset.4bpp");
const u8 Tileset_AnimTiles_zone_6_act_1_fg[] = INCBIN_U8("data/maps/zone_6/act_1/tilemaps/fg/tileset_anim.4bpp");
const s8 CollHeightMap_zone_6_act_1_fg[] = INCBIN_U8("data/maps/zone_6/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_6_act_1_fg[] = INCBIN_U8("data/maps/zone_6/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_6_act_1_fg[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_6_act_1_fg[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_6_act_1_fg0[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_6_act_1_fg1[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_6_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 800,
        .animFrameCount = 4,
        .animDelay = 5,
        .tiles = Tileset_zone_6_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_1_fg),
        .palette = Palette_zone_6_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_1_fg,
    },
    .metatileMap = Map_zone_6_act_1_fg0,
    .mapWidth = 313,
    .mapHeight = 46,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_6_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 800,
        .animFrameCount = 4,
        .animDelay = 5,
        .tiles = Tileset_zone_6_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_1_fg),
        .palette = Palette_zone_6_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_1_fg,
    },
    .metatileMap = Map_zone_6_act_1_fg1,
    .mapWidth = 313,
    .mapHeight = 46,
};

const Collision CollHeader_zone_6_act_1_fg = { CollHeightMap_zone_6_act_1_fg,
                                               CollTileRot_zone_6_act_1_fg,
                                               Metatiles_zone_6_act_1_fg,
                                               Map_zone_6_act_1_fg0,
                                               Map_zone_6_act_1_fg1,
                                               CollFlags_zone_6_act_1_fg,
                                               313,
                                               46,
                                               0x7560,
                                               0x1140 };
# 31 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_6/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_6_act_2_fg[] = INCBIN_U16("data/maps/zone_6/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_6_act_2_fg[] = INCBIN_U8("data/maps/zone_6/act_2/tilemaps/fg/tileset.4bpp");
const u8 Tileset_AnimTiles_zone_6_act_2_fg[] = INCBIN_U8("data/maps/zone_6/act_2/tilemaps/fg/tileset_anim.4bpp");
const s8 CollHeightMap_zone_6_act_2_fg[] = INCBIN_U8("data/maps/zone_6/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_6_act_2_fg[] = INCBIN_U8("data/maps/zone_6/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_6_act_2_fg[] = INCBIN_U16("data/maps/zone_6/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_6_act_2_fg[] = INCBIN_U16("data/maps/zone_6/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_6_act_2_fg0[] = INCBIN_U16("data/maps/zone_6/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_6_act_2_fg1[] = INCBIN_U16("data/maps/zone_6/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_6_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 800,
        .animFrameCount = 4,
        .animDelay = 5,
        .tiles = Tileset_zone_6_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_2_fg),
        .palette = Palette_zone_6_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_2_fg,
    },
    .metatileMap = Map_zone_6_act_2_fg0,
    .mapWidth = 223,
    .mapHeight = 32,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_6_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 800,
        .animFrameCount = 4,
        .animDelay = 5,
        .tiles = Tileset_zone_6_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_2_fg),
        .palette = Palette_zone_6_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_2_fg,
    },
    .metatileMap = Map_zone_6_act_2_fg1,
    .mapWidth = 223,
    .mapHeight = 32,
};

const Collision CollHeader_zone_6_act_2_fg = { CollHeightMap_zone_6_act_2_fg,
                                               CollTileRot_zone_6_act_2_fg,
                                               Metatiles_zone_6_act_2_fg,
                                               Map_zone_6_act_2_fg0,
                                               Map_zone_6_act_2_fg1,
                                               CollFlags_zone_6_act_2_fg,
                                               223,
                                               32,
                                               0x53A0,
                                               0x0C00 };
# 32 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_6/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_6_act_boss_fg[] = INCBIN_U16("data/maps/zone_6/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_6_act_boss_fg[] = INCBIN_U8("data/maps/zone_6/act_boss/tilemaps/fg/tileset.4bpp");
const u8 Tileset_AnimTiles_zone_6_act_boss_fg[] = INCBIN_U8("data/maps/zone_6/act_boss/tilemaps/fg/tileset_anim.4bpp");
const s8 CollHeightMap_zone_6_act_boss_fg[] = INCBIN_U8("data/maps/zone_6/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_6_act_boss_fg[] = INCBIN_U8("data/maps/zone_6/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_6_act_boss_fg[] = INCBIN_U16("data/maps/zone_6/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_6_act_boss_fg[] = INCBIN_U16("data/maps/zone_6/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_6_act_boss_fg0[] = INCBIN_U16("data/maps/zone_6/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_6_act_boss_fg1[] = INCBIN_U16("data/maps/zone_6/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_6_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 800,
        .animFrameCount = 4,
        .animDelay = 5,
        .tiles = Tileset_zone_6_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_boss_fg),
        .palette = Palette_zone_6_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_boss_fg,
    },
    .metatileMap = Map_zone_6_act_boss_fg0,
    .mapWidth = 90,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_6_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 800,
        .animFrameCount = 4,
        .animDelay = 5,
        .tiles = Tileset_zone_6_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_6_act_boss_fg),
        .palette = Palette_zone_6_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_6_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_6_act_boss_fg,
    },
    .metatileMap = Map_zone_6_act_boss_fg1,
    .mapWidth = 90,
    .mapHeight = 3,
};

const Collision CollHeader_zone_6_act_boss_fg = { CollHeightMap_zone_6_act_boss_fg,
                                                  CollTileRot_zone_6_act_boss_fg,
                                                  Metatiles_zone_6_act_boss_fg,
                                                  Map_zone_6_act_boss_fg0,
                                                  Map_zone_6_act_boss_fg1,
                                                  CollFlags_zone_6_act_boss_fg,
                                                  90,
                                                  3,
                                                  0x21C0,
                                                  0x0120 };
# 33 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_7/act_1/tilemaps/fg/header.c" 1



const u16 Palette_zone_7_act_1_fg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_7_act_1_fg[] = INCBIN_U8("data/maps/zone_7/act_1/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_7_act_1_fg[] = INCBIN_U8("data/maps/zone_7/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_7_act_1_fg[] = INCBIN_U8("data/maps/zone_7/act_1/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_7_act_1_fg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_7_act_1_fg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_7_act_1_fg0[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/map_front.bin");

const u16 Map_zone_7_act_1_fg1[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_7_act_1_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_1_fg),
        .palette = Palette_zone_7_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_1_fg,
    },
    .metatileMap = Map_zone_7_act_1_fg0,
    .mapWidth = 352,
    .mapHeight = 50,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_7_act_1_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_1_fg),
        .palette = Palette_zone_7_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_1_fg,
    },
    .metatileMap = Map_zone_7_act_1_fg1,
    .mapWidth = 352,
    .mapHeight = 50,
};

const Collision CollHeader_zone_7_act_1_fg = { CollHeightMap_zone_7_act_1_fg,
                                               CollTileRot_zone_7_act_1_fg,
                                               Metatiles_zone_7_act_1_fg,
                                               Map_zone_7_act_1_fg0,
                                               Map_zone_7_act_1_fg1,
                                               CollFlags_zone_7_act_1_fg,
                                               352,
                                               50,
                                               0x8400,
                                               0x12C0 };
# 34 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_7/act_2/tilemaps/fg/header.c" 1



const u16 Palette_zone_7_act_2_fg[] = INCBIN_U16("data/maps/zone_7/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_7_act_2_fg[] = INCBIN_U8("data/maps/zone_7/act_2/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_7_act_2_fg[] = INCBIN_U8("data/maps/zone_7/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_7_act_2_fg[] = INCBIN_U8("data/maps/zone_7/act_2/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_7_act_2_fg[] = INCBIN_U16("data/maps/zone_7/act_2/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_7_act_2_fg[] = INCBIN_U16("data/maps/zone_7/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_7_act_2_fg0[] = INCBIN_U16("data/maps/zone_7/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_7_act_2_fg1[] = INCBIN_U16("data/maps/zone_7/act_2/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_7_act_2_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_2_fg),
        .palette = Palette_zone_7_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_2_fg,
    },
    .metatileMap = Map_zone_7_act_2_fg0,
    .mapWidth = 341,
    .mapHeight = 53,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_7_act_2_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_2_fg),
        .palette = Palette_zone_7_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_2_fg,
    },
    .metatileMap = Map_zone_7_act_2_fg1,
    .mapWidth = 341,
    .mapHeight = 53,
};

const Collision CollHeader_zone_7_act_2_fg = { CollHeightMap_zone_7_act_2_fg,
                                               CollTileRot_zone_7_act_2_fg,
                                               Metatiles_zone_7_act_2_fg,
                                               Map_zone_7_act_2_fg0,
                                               Map_zone_7_act_2_fg1,
                                               CollFlags_zone_7_act_2_fg,
                                               341,
                                               53,
                                               0x7FE0,
                                               0x13E0 };
# 35 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_7/act_boss/tilemaps/fg/header.c" 1



const u16 Palette_zone_7_act_boss_fg[] = INCBIN_U16("data/maps/zone_7/act_boss/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_7_act_boss_fg[] = INCBIN_U8("data/maps/zone_7/act_boss/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_7_act_boss_fg[] = INCBIN_U8("data/maps/zone_7/act_boss/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_7_act_boss_fg[] = INCBIN_U8("data/maps/zone_7/act_boss/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_7_act_boss_fg[] = INCBIN_U16("data/maps/zone_7/act_boss/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_7_act_boss_fg[] = INCBIN_U16("data/maps/zone_7/act_boss/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_7_act_boss_fg0[] = INCBIN_U16("data/maps/zone_7/act_boss/tilemaps/fg/map_front.bin");

const u16 Map_zone_7_act_boss_fg1[] = INCBIN_U16("data/maps/zone_7/act_boss/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_7_act_boss_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_boss_fg),
        .palette = Palette_zone_7_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_boss_fg,
    },
    .metatileMap = Map_zone_7_act_boss_fg0,
    .mapWidth = 50,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_7_act_boss_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_boss_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_boss_fg),
        .palette = Palette_zone_7_act_boss_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_boss_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_boss_fg,
    },
    .metatileMap = Map_zone_7_act_boss_fg1,
    .mapWidth = 50,
    .mapHeight = 3,
};

const Collision CollHeader_zone_7_act_boss_fg = { CollHeightMap_zone_7_act_boss_fg,
                                                  CollTileRot_zone_7_act_boss_fg,
                                                  Metatiles_zone_7_act_boss_fg,
                                                  Map_zone_7_act_boss_fg0,
                                                  Map_zone_7_act_boss_fg1,
                                                  CollFlags_zone_7_act_boss_fg,
                                                  50,
                                                  3,
                                                  0x12C0,
                                                  0x0120 };
# 36 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_final/act_xx/tilemaps/fg/header.c" 1



const u16 Palette_zone_final_act_xx_fg[] = INCBIN_U16("data/maps/zone_final/act_xx/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_final_act_xx_fg[] = INCBIN_U8("data/maps/zone_final/act_xx/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_final_act_xx_fg[] = INCBIN_U8("data/maps/zone_final/act_xx/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_final_act_xx_fg[] = INCBIN_U8("data/maps/zone_final/act_xx/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_final_act_xx_fg[] = INCBIN_U16("data/maps/zone_final/act_xx/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_final_act_xx_fg[] = INCBIN_U16("data/maps/zone_final/act_xx/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_final_act_xx_fg0[] = INCBIN_U16("data/maps/zone_final/act_xx/tilemaps/fg/map_front.bin");

const u16 Map_zone_final_act_xx_fg1[] = INCBIN_U16("data/maps/zone_final/act_xx/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_final_act_xx_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_xx_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_xx_fg),
        .palette = Palette_zone_final_act_xx_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_xx_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_xx_fg,
    },
    .metatileMap = Map_zone_final_act_xx_fg0,
    .mapWidth = 450,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_final_act_xx_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_xx_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_xx_fg),
        .palette = Palette_zone_final_act_xx_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_xx_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_xx_fg,
    },
    .metatileMap = Map_zone_final_act_xx_fg1,
    .mapWidth = 450,
    .mapHeight = 3,
};

const Collision CollHeader_zone_final_act_xx_fg = { CollHeightMap_zone_final_act_xx_fg,
                                                    CollTileRot_zone_final_act_xx_fg,
                                                    Metatiles_zone_final_act_xx_fg,
                                                    Map_zone_final_act_xx_fg0,
                                                    Map_zone_final_act_xx_fg1,
                                                    CollFlags_zone_final_act_xx_fg,
                                                    450,
                                                    3,
                                                    0xA8C0,
                                                    0x0120 };
# 37 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_final/act_ta53/tilemaps/fg/header.c" 1



const u16 Palette_zone_final_act_ta53_fg[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_final_act_ta53_fg[] = INCBIN_U8("data/maps/zone_final/act_ta53/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_final_act_ta53_fg[] = INCBIN_U8("data/maps/zone_final/act_ta53/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_final_act_ta53_fg[] = INCBIN_U8("data/maps/zone_final/act_ta53/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_final_act_ta53_fg[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_final_act_ta53_fg[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_final_act_ta53_fg0[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/fg/map_front.bin");

const u16 Map_zone_final_act_ta53_fg1[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/fg/map_back.bin");

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_final_act_ta53_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_ta53_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_ta53_fg),
        .palette = Palette_zone_final_act_ta53_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_ta53_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_ta53_fg,
    },
    .metatileMap = Map_zone_final_act_ta53_fg0,
    .mapWidth = 90,
    .mapHeight = 3,
};

__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_final_act_ta53_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_ta53_fg,
        .tilesSize = sizeof(Tileset_zone_final_act_ta53_fg),
        .palette = Palette_zone_final_act_ta53_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_ta53_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_ta53_fg,
    },
    .metatileMap = Map_zone_final_act_ta53_fg1,
    .mapWidth = 90,
    .mapHeight = 3,
};

const Collision CollHeader_zone_final_act_ta53_fg = { CollHeightMap_zone_final_act_ta53_fg,
                                                      CollTileRot_zone_final_act_ta53_fg,
                                                      Metatiles_zone_final_act_ta53_fg,
                                                      Map_zone_final_act_ta53_fg0,
                                                      Map_zone_final_act_ta53_fg1,
                                                      CollFlags_zone_final_act_ta53_fg,
                                                      90,
                                                      3,
                                                      0x21C0,
                                                      0x0120 };
# 38 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_final/act_unused/tilemaps/fg/header.c" 1



const u16 Palette_zone_final_act_unused_fg[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_final_act_unused_fg[] = { 0xFF, 0xFF, 0xFF, 0xFF };
const s8 CollHeightMap_zone_final_act_unused_fg[] = INCBIN_U8("data/maps/zone_final/act_unused/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_final_act_unused_fg[] = INCBIN_U8("data/maps/zone_final/act_unused/tilemaps/fg/tile_rot.coll");
const u16 CollFlags_zone_final_act_unused_fg[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/fg/flags.coll");
const u16 Metatiles_zone_final_act_unused_fg[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_final_act_unused_fg0[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/fg/map_front.bin");

const u16 Map_zone_final_act_unused_fg1[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/fg/map_back.bin");


__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_final_act_unused_fg0 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_unused_fg,
        .tilesSize = 0x2200,
        .palette = Palette_zone_final_act_unused_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_unused_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_unused_fg,
    },
    .metatileMap = Map_zone_final_act_unused_fg0,
    .mapWidth = 20,
    .mapHeight = 12,
};


__attribute__((aligned(4))) const struct MapHeader MapHeader_zone_final_act_unused_fg1 =
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_final_act_unused_fg,
        .tilesSize = 0x2200,
        .palette = Palette_zone_final_act_unused_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_final_act_unused_fg) / sizeof(u16),
        .map = Metatiles_zone_final_act_unused_fg,
    },
    .metatileMap = Map_zone_final_act_unused_fg1,
    .mapWidth = 20,
    .mapHeight = 12,
};

const Collision CollHeader_zone_final_act_unused_fg = { CollHeightMap_zone_final_act_unused_fg,
                                                        CollTileRot_zone_final_act_unused_fg,
                                                        Metatiles_zone_final_act_unused_fg,
                                                        Map_zone_final_act_unused_fg0,
                                                        Map_zone_final_act_unused_fg1,
                                                        CollFlags_zone_final_act_unused_fg,
                                                        20,
                                                        12,
                                                        0x0780,
                                                        0x0480 };
# 39 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_1/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_1_act_1_bg[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_1_act_1_bg[] = INCBIN_U8("data/maps/zone_1/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_1_act_1_bg[] = INCBIN_U16("data/maps/zone_1/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_1_act_1_bg = {
    .xTiles = 32,
    .yTiles = 30,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_1_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_1_act_1_bg),
    .palette = Palette_zone_1_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_1_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_1_act_1_bg,
};
# 40 "src/data/tilemap_data.c" 2



# 1 "include/../data/tilemaps/stage_1_bg_0_copy/header.c" 1



const u16 Palette_stage_1_bg_0_copy[] = INCBIN_U16("data/tilemaps/stage_1_bg_0_copy/palette.gbapal");
const u8 Tiles_stage_1_bg_0_copy[] = INCBIN_U8("data/tilemaps/stage_1_bg_0_copy/tiles.4bpp");
const u16 Tilemap_stage_1_bg_0_copy[] = INCBIN_U16("data/tilemaps/stage_1_bg_0_copy/tilemap.tilemap2");

const Tilemap stage_1_bg_0_copy = {
    .xTiles = 32,
    .yTiles = 30,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_1_bg_0_copy,
    .tilesSize = sizeof(Tiles_stage_1_bg_0_copy),
    .palette = Palette_stage_1_bg_0_copy,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_1_bg_0_copy) / sizeof(u16),
    .map = Tilemap_stage_1_bg_0_copy,
};
# 44 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_3/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_3_act_1_bg[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_3_act_1_bg[] = INCBIN_U8("data/maps/zone_3/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_3_act_1_bg[] = INCBIN_U16("data/maps/zone_3/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_3_act_1_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_3_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_3_act_1_bg),
    .palette = Palette_zone_3_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_3_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_3_act_1_bg,
};
# 45 "src/data/tilemap_data.c" 2



# 1 "include/../data/tilemaps/music_plant_moving_stars/header.c" 1



const u16 Palette_music_plant_moving_stars[] = INCBIN_U16("data/tilemaps/music_plant_moving_stars/palette.gbapal");
const u8 Tiles_music_plant_moving_stars[] = INCBIN_U8("data/tilemaps/music_plant_moving_stars/tiles.4bpp");
const u16 Tilemap_music_plant_moving_stars[] = INCBIN_U16("data/tilemaps/music_plant_moving_stars/tilemap.tilemap2");

const Tilemap music_plant_moving_stars = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_music_plant_moving_stars,
    .tilesSize = sizeof(Tiles_music_plant_moving_stars),
    .palette = Palette_music_plant_moving_stars,
    .palOffset = 0,
    .palLength = sizeof(Palette_music_plant_moving_stars) / sizeof(u16),
    .map = Tilemap_music_plant_moving_stars,
};
# 49 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_4/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_4_act_1_bg[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_4_act_1_bg[] = INCBIN_U8("data/maps/zone_4/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_4_act_1_bg[] = INCBIN_U16("data/maps/zone_4/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_4_act_1_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_4_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_4_act_1_bg),
    .palette = Palette_zone_4_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_4_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_4_act_1_bg,
};
# 50 "src/data/tilemap_data.c" 2



# 1 "include/../data/tilemaps/spotlight_snow/header.c" 1



const u16 Palette_spotlight_snow[] = INCBIN_U16("data/tilemaps/spotlight_snow/palette.gbapal");
const u8 Tiles_spotlight_snow[] = INCBIN_U8("data/tilemaps/spotlight_snow/tiles.4bpp");
const u8 Tiles_AnimTiles_spotlight_snow[] = INCBIN_U8("data/tilemaps/spotlight_snow/tiles_anim.4bpp");
const u16 Tilemap_spotlight_snow[] = INCBIN_U16("data/tilemaps/spotlight_snow/tilemap.tilemap2");



const Tilemap spotlight_snow = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 128,
    .animFrameCount = 4,
    .animDelay = 9,
    .tiles = Tiles_spotlight_snow,
    .tilesSize = sizeof(Tiles_spotlight_snow),
    .palette = Palette_spotlight_snow,
    .palOffset = 0,
    .palLength = sizeof(Palette_spotlight_snow) / sizeof(u16),
    .map = Tilemap_spotlight_snow,
};
# 54 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_2/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_2_act_1_bg[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_2_act_1_bg[] = INCBIN_U8("data/maps/zone_2/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_2_act_1_bg[] = INCBIN_U16("data/maps/zone_2/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_2_act_1_bg = {
    .xTiles = 32,
    .yTiles = 64,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_2_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_2_act_1_bg),
    .palette = Palette_zone_2_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_2_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_2_act_1_bg,
};
# 55 "src/data/tilemap_data.c" 2


# 1 "include/../data/tilemaps/sky_canyon_clouds_foreground/header.c" 1



const u16 Palette_sky_canyon_clouds_foreground[] = INCBIN_U16("data/tilemaps/sky_canyon_clouds_foreground/palette.gbapal");
const u8 Tiles_sky_canyon_clouds_foreground[] = INCBIN_U8("data/tilemaps/sky_canyon_clouds_foreground/tiles.4bpp");
const u16 Tilemap_sky_canyon_clouds_foreground[] = INCBIN_U16("data/tilemaps/sky_canyon_clouds_foreground/tilemap.tilemap2");

const Tilemap sky_canyon_clouds_foreground = {
    .xTiles = 32,
    .yTiles = 23,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sky_canyon_clouds_foreground,
    .tilesSize = sizeof(Tiles_sky_canyon_clouds_foreground),
    .palette = Palette_sky_canyon_clouds_foreground,
    .palOffset = 0,
    .palLength = sizeof(Palette_sky_canyon_clouds_foreground) / sizeof(u16),
    .map = Tilemap_sky_canyon_clouds_foreground,
};
# 58 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_5/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_5_act_1_bg[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_5_act_1_bg[] = INCBIN_U8("data/maps/zone_5/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_5_act_1_bg[] = INCBIN_U16("data/maps/zone_5/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_5_act_1_bg = {
    .xTiles = 32,
    .yTiles = 23,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_5_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_5_act_1_bg),
    .palette = Palette_zone_5_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_5_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_5_act_1_bg,
};
# 59 "src/data/tilemap_data.c" 2



# 1 "include/../data/tilemaps/unk_space_bg/header.c" 1



const u16 Palette_unk_space_bg[] = INCBIN_U16("data/tilemaps/unk_space_bg/palette.gbapal");
const u8 Tiles_unk_space_bg[] = INCBIN_U8("data/tilemaps/unk_space_bg/tiles.4bpp");
const u16 Tilemap_unk_space_bg[] = INCBIN_U16("data/tilemaps/unk_space_bg/tilemap.tilemap2");

const Tilemap unk_space_bg = {
    .xTiles = 32,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unk_space_bg,
    .tilesSize = sizeof(Tiles_unk_space_bg),
    .palette = Palette_unk_space_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_unk_space_bg) / sizeof(u16),
    .map = Tilemap_unk_space_bg,
};
# 63 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_7/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_7_act_1_bg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_7_act_1_bg[] = INCBIN_U8("data/maps/zone_7/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_7_act_1_bg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_7_act_1_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_7_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_7_act_1_bg),
    .palette = Palette_zone_7_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_7_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_7_act_1_bg,
};
# 64 "src/data/tilemap_data.c" 2




# 1 "include/../data/maps/zone_6/act_1/tilemaps/bg/header.c" 1



const u16 Palette_zone_6_act_1_bg[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_6_act_1_bg[] = INCBIN_U8("data/maps/zone_6/act_1/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_6_act_1_bg[] = INCBIN_U16("data/maps/zone_6/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_6_act_1_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_6_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_6_act_1_bg),
    .palette = Palette_zone_6_act_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_6_act_1_bg) / sizeof(u16),
    .map = Tilemap_zone_6_act_1_bg,
};
# 69 "src/data/tilemap_data.c" 2



# 1 "include/../data/tilemaps/techno_base_bg_purple_grid/header.c" 1



const u16 Palette_techno_base_bg_purple_grid[] = INCBIN_U16("data/tilemaps/techno_base_bg_purple_grid/palette.gbapal");
const u8 Tiles_techno_base_bg_purple_grid[] = INCBIN_U8("data/tilemaps/techno_base_bg_purple_grid/tiles.4bpp");
const u16 Tilemap_techno_base_bg_purple_grid[] = INCBIN_U16("data/tilemaps/techno_base_bg_purple_grid/tilemap.tilemap2");

const Tilemap techno_base_bg_purple_grid = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_techno_base_bg_purple_grid,
    .tilesSize = sizeof(Tiles_techno_base_bg_purple_grid),
    .palette = Palette_techno_base_bg_purple_grid,
    .palOffset = 0,
    .palLength = sizeof(Palette_techno_base_bg_purple_grid) / sizeof(u16),
    .map = Tilemap_techno_base_bg_purple_grid,
};
# 73 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/techno_base_bg_circuit_mask/header.c" 1



const u16 Palette_techno_base_bg_circuit_mask[] = INCBIN_U16("data/tilemaps/techno_base_bg_circuit_mask/palette.gbapal");
const u8 Tiles_techno_base_bg_circuit_mask[] = INCBIN_U8("data/tilemaps/techno_base_bg_circuit_mask/tiles.4bpp");
const u16 Tilemap_techno_base_bg_circuit_mask[] = INCBIN_U16("data/tilemaps/techno_base_bg_circuit_mask/tilemap.tilemap2");

const Tilemap techno_base_bg_circuit_mask = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_techno_base_bg_circuit_mask,
    .tilesSize = sizeof(Tiles_techno_base_bg_circuit_mask),
    .palette = Palette_techno_base_bg_circuit_mask,
    .palOffset = 0,
    .palLength = sizeof(Palette_techno_base_bg_circuit_mask) / sizeof(u16),
    .map = Tilemap_techno_base_bg_circuit_mask,
};
# 74 "src/data/tilemap_data.c" 2
# 1 "include/../data/maps/zone_1/act_dummy/tilemaps/bg/header.c" 1



const u16 Palette_zone_1_act_dummy_bg[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_1_act_dummy_bg[] = INCBIN_U8("data/maps/zone_1/act_dummy/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_1_act_dummy_bg[] = INCBIN_U16("data/maps/zone_1/act_dummy/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_1_act_dummy_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_1_act_dummy_bg,
    .tilesSize = sizeof(Tiles_zone_1_act_dummy_bg),
    .palette = Palette_zone_1_act_dummy_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_1_act_dummy_bg) / sizeof(u16),
    .map = Tilemap_zone_1_act_dummy_bg,
};
# 75 "src/data/tilemap_data.c" 2

# 1 "include/../data/maps/zone_final/act_ta53/tilemaps/bg/header.c" 1



const u16 Palette_zone_final_act_ta53_bg[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_final_act_ta53_bg[] = INCBIN_U8("data/maps/zone_final/act_ta53/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_final_act_ta53_bg[] = INCBIN_U16("data/maps/zone_final/act_ta53/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_final_act_ta53_bg = {
    .xTiles = 32,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_final_act_ta53_bg,
    .tilesSize = sizeof(Tiles_zone_final_act_ta53_bg),
    .palette = Palette_zone_final_act_ta53_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_final_act_ta53_bg) / sizeof(u16),
    .map = Tilemap_zone_final_act_ta53_bg,
};
# 77 "src/data/tilemap_data.c" 2

# 1 "include/../data/maps/zone_final/act_unused/tilemaps/bg/header.c" 1



const u16 Palette_zone_final_act_unused_bg[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/bg/palette.gbapal");
const u8 Tiles_zone_final_act_unused_bg[] = INCBIN_U8("data/maps/zone_final/act_unused/tilemaps/bg/tiles.4bpp");
const u16 Tilemap_zone_final_act_unused_bg[] = INCBIN_U16("data/maps/zone_final/act_unused/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_final_act_unused_bg = {
    .xTiles = 32,
    .yTiles = 30,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_final_act_unused_bg,
    .tilesSize = sizeof(Tiles_zone_final_act_unused_bg),
    .palette = Palette_zone_final_act_unused_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_final_act_unused_bg) / sizeof(u16),
    .map = Tilemap_zone_final_act_unused_bg,
};
# 79 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/character_select_background/header.c" 1



const u16 Palette_character_select_background[] = INCBIN_U16("data/tilemaps/character_select_background/palette.gbapal");
const u8 Tiles_character_select_background[] = INCBIN_U8("data/tilemaps/character_select_background/tiles.4bpp");
const u16 Tilemap_character_select_background[] = INCBIN_U16("data/tilemaps/character_select_background/tilemap.tilemap2");

const Tilemap character_select_background = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_character_select_background,
    .tilesSize = sizeof(Tiles_character_select_background),
    .palette = Palette_character_select_background,
    .palOffset = 0,
    .palLength = sizeof(Palette_character_select_background) / sizeof(u16),
    .map = Tilemap_character_select_background,
};
# 80 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/character_select_wheel/header.c" 1



const u16 Palette_character_select_wheel[] = INCBIN_U16("data/tilemaps/character_select_wheel/palette.gbapal");
const u8 Tiles_character_select_wheel[] = INCBIN_U8("data/tilemaps/character_select_wheel/tiles.4bpp");
const u16 Tilemap_character_select_wheel[] = INCBIN_U16("data/tilemaps/character_select_wheel/tilemap.tilemap2");

const Tilemap character_select_wheel = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_character_select_wheel,
    .tilesSize = sizeof(Tiles_character_select_wheel),
    .palette = Palette_character_select_wheel,
    .palOffset = 0,
    .palLength = sizeof(Palette_character_select_wheel) / sizeof(u16),
    .map = Tilemap_character_select_wheel,
};
# 81 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/character_select_background_0/header.c" 1



const u16 Palette_character_select_background_0[] = INCBIN_U16("data/tilemaps/character_select_background_0/palette.gbapal");
const u8 Tiles_character_select_background_0[] = INCBIN_U8("data/tilemaps/character_select_background_0/tiles.4bpp");
const u16 Tilemap_character_select_background_0[] = INCBIN_U16("data/tilemaps/character_select_background_0/tilemap.tilemap2");

const Tilemap character_select_background_0 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_character_select_background_0,
    .tilesSize = sizeof(Tiles_character_select_background_0),
    .palette = Palette_character_select_background_0,
    .palOffset = 0,
    .palLength = sizeof(Palette_character_select_background_0) / sizeof(u16),
    .map = Tilemap_character_select_background_0,
};
# 82 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/character_select_background_1/header.c" 1



const u16 Palette_character_select_background_1[] = INCBIN_U16("data/tilemaps/character_select_background_1/palette.gbapal");
const u8 Tiles_character_select_background_1[] = INCBIN_U8("data/tilemaps/character_select_background_1/tiles.4bpp");
const u16 Tilemap_character_select_background_1[] = INCBIN_U16("data/tilemaps/character_select_background_1/tilemap.tilemap2");

const Tilemap character_select_background_1 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_character_select_background_1,
    .tilesSize = sizeof(Tiles_character_select_background_1),
    .palette = Palette_character_select_background_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_character_select_background_1) / sizeof(u16),
    .map = Tilemap_character_select_background_1,
};
# 83 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/stage_select_bg_sonic/header.c" 1



const u16 Palette_stage_select_bg_sonic[] = INCBIN_U16("data/tilemaps/stage_select_bg_sonic/palette.gbapal");
const u8 Tiles_stage_select_bg_sonic[] = INCBIN_U8("data/tilemaps/stage_select_bg_sonic/tiles.4bpp");
const u16 Tilemap_stage_select_bg_sonic[] = INCBIN_U16("data/tilemaps/stage_select_bg_sonic/tilemap.tilemap2");

const Tilemap stage_select_bg_sonic = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_select_bg_sonic,
    .tilesSize = sizeof(Tiles_stage_select_bg_sonic),
    .palette = Palette_stage_select_bg_sonic,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_select_bg_sonic) / sizeof(u16),
    .map = Tilemap_stage_select_bg_sonic,
};
# 84 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/stage_select_bg_cream/header.c" 1



const u16 Palette_stage_select_bg_cream[] = INCBIN_U16("data/tilemaps/stage_select_bg_cream/palette.gbapal");
const u8 Tiles_stage_select_bg_cream[] = INCBIN_U8("data/tilemaps/stage_select_bg_cream/tiles.4bpp");
const u16 Tilemap_stage_select_bg_cream[] = INCBIN_U16("data/tilemaps/stage_select_bg_cream/tilemap.tilemap2");

const Tilemap stage_select_bg_cream = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_select_bg_cream,
    .tilesSize = sizeof(Tiles_stage_select_bg_cream),
    .palette = Palette_stage_select_bg_cream,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_select_bg_cream) / sizeof(u16),
    .map = Tilemap_stage_select_bg_cream,
};
# 85 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/stage_select_bg_tails/header.c" 1



const u16 Palette_stage_select_bg_tails[] = INCBIN_U16("data/tilemaps/stage_select_bg_tails/palette.gbapal");
const u8 Tiles_stage_select_bg_tails[] = INCBIN_U8("data/tilemaps/stage_select_bg_tails/tiles.4bpp");
const u16 Tilemap_stage_select_bg_tails[] = INCBIN_U16("data/tilemaps/stage_select_bg_tails/tilemap.tilemap2");

const Tilemap stage_select_bg_tails = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_select_bg_tails,
    .tilesSize = sizeof(Tiles_stage_select_bg_tails),
    .palette = Palette_stage_select_bg_tails,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_select_bg_tails) / sizeof(u16),
    .map = Tilemap_stage_select_bg_tails,
};
# 86 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/stage_select_bg_knuckles/header.c" 1



const u16 Palette_stage_select_bg_knuckles[] = INCBIN_U16("data/tilemaps/stage_select_bg_knuckles/palette.gbapal");
const u8 Tiles_stage_select_bg_knuckles[] = INCBIN_U8("data/tilemaps/stage_select_bg_knuckles/tiles.4bpp");
const u16 Tilemap_stage_select_bg_knuckles[] = INCBIN_U16("data/tilemaps/stage_select_bg_knuckles/tilemap.tilemap2");

const Tilemap stage_select_bg_knuckles = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_select_bg_knuckles,
    .tilesSize = sizeof(Tiles_stage_select_bg_knuckles),
    .palette = Palette_stage_select_bg_knuckles,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_select_bg_knuckles) / sizeof(u16),
    .map = Tilemap_stage_select_bg_knuckles,
};
# 87 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/stage_select_bg_amy/header.c" 1



const u16 Palette_stage_select_bg_amy[] = INCBIN_U16("data/tilemaps/stage_select_bg_amy/palette.gbapal");
const u8 Tiles_stage_select_bg_amy[] = INCBIN_U8("data/tilemaps/stage_select_bg_amy/tiles.4bpp");
const u16 Tilemap_stage_select_bg_amy[] = INCBIN_U16("data/tilemaps/stage_select_bg_amy/tilemap.tilemap2");

const Tilemap stage_select_bg_amy = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_select_bg_amy,
    .tilesSize = sizeof(Tiles_stage_select_bg_amy),
    .palette = Palette_stage_select_bg_amy,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_select_bg_amy) / sizeof(u16),
    .map = Tilemap_stage_select_bg_amy,
};
# 88 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/stage_select_map/header.c" 1



const u16 Palette_stage_select_map[] = INCBIN_U16("data/tilemaps/stage_select_map/palette.gbapal");
const u8 Tiles_stage_select_map[] = INCBIN_U8("data/tilemaps/stage_select_map/tiles.4bpp");
const u16 Tilemap_stage_select_map[] = INCBIN_U16("data/tilemaps/stage_select_map/tilemap.tilemap2");

const Tilemap stage_select_map = {
    .xTiles = 60,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_stage_select_map,
    .tilesSize = sizeof(Tiles_stage_select_map),
    .palette = Palette_stage_select_map,
    .palOffset = 0,
    .palLength = sizeof(Palette_stage_select_map) / sizeof(u16),
    .map = Tilemap_stage_select_map,
};
# 89 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unknown_options_bg/header.c" 1



const u16 Palette_unknown_options_bg[] = INCBIN_U16("data/tilemaps/unknown_options_bg/palette.gbapal");
const u8 Tiles_unknown_options_bg[] = INCBIN_U8("data/tilemaps/unknown_options_bg/tiles.4bpp");
const u16 Tilemap_unknown_options_bg[] = INCBIN_U16("data/tilemaps/unknown_options_bg/tilemap.tilemap2");

const Tilemap unknown_options_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_options_bg,
    .tilesSize = sizeof(Tiles_unknown_options_bg),
    .palette = Palette_unknown_options_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_options_bg) / sizeof(u16),
    .map = Tilemap_unknown_options_bg,
};
# 90 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/tilemap_108/header.c" 1



const u16 Palette_tilemap_108[] = INCBIN_U16("data/tilemaps/tilemap_108/palette.gbapal");
const u8 Tiles_tilemap_108[] = INCBIN_U8("data/tilemaps/tilemap_108/tiles.4bpp");
const u16 Tilemap_tilemap_108[] = INCBIN_U16("data/tilemaps/tilemap_108/tilemap.tilemap2");

const Tilemap tilemap_108 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_tilemap_108,
    .tilesSize = sizeof(Tiles_tilemap_108),
    .palette = Palette_tilemap_108,
    .palOffset = 0,
    .palLength = sizeof(Palette_tilemap_108) / sizeof(u16),
    .map = Tilemap_tilemap_108,
};
# 91 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/sa2_title_logo_jp/header.c" 1



const u16 Palette_sa2_title_logo_jp[] = INCBIN_U16("data/tilemaps/sa2_title_logo_jp/palette.gbapal");
const u8 Tiles_sa2_title_logo_jp[] = INCBIN_U8("data/tilemaps/sa2_title_logo_jp/tiles.4bpp");
const u8 Tilemap_sa2_title_logo_jp[] = INCBIN_U8("data/tilemaps/sa2_title_logo_jp/tilemap.tilemap2");

const Tilemap sa2_title_logo_jp = {
    .xTiles = 26,
    .yTiles = 10,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sa2_title_logo_jp,
    .tilesSize = sizeof(Tiles_sa2_title_logo_jp),
    .palette = Palette_sa2_title_logo_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_sa2_title_logo_jp) / sizeof(u16),
    .map = (const u16 *)Tilemap_sa2_title_logo_jp,
};
# 92 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/ta_and_mp_white_bg/header.c" 1



const u16 Palette_ta_and_mp_white_bg[] = INCBIN_U16("data/tilemaps/ta_and_mp_white_bg/palette.gbapal");
const u8 Tiles_ta_and_mp_white_bg[] = INCBIN_U8("data/tilemaps/ta_and_mp_white_bg/tiles.4bpp");
const u16 Tilemap_ta_and_mp_white_bg[] = INCBIN_U16("data/tilemaps/ta_and_mp_white_bg/tilemap.tilemap2");

const Tilemap ta_and_mp_white_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_ta_and_mp_white_bg,
    .tilesSize = sizeof(Tiles_ta_and_mp_white_bg),
    .palette = Palette_ta_and_mp_white_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_ta_and_mp_white_bg) / sizeof(u16),
    .map = Tilemap_ta_and_mp_white_bg,
};
# 93 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_orange_bg/header.c" 1



const u16 Palette_mp_orange_bg[] = INCBIN_U16("data/tilemaps/mp_orange_bg/palette.gbapal");
const u8 Tiles_mp_orange_bg[] = INCBIN_U8("data/tilemaps/mp_orange_bg/tiles.4bpp");
const u16 Tilemap_mp_orange_bg[] = INCBIN_U16("data/tilemaps/mp_orange_bg/tilemap.tilemap2");

const Tilemap mp_orange_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_orange_bg,
    .tilesSize = sizeof(Tiles_mp_orange_bg),
    .palette = Palette_mp_orange_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_orange_bg) / sizeof(u16),
    .map = Tilemap_mp_orange_bg,
};
# 94 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_characters_selected_jp/header.c" 1



const u16 Palette_mp_characters_selected_jp[] = INCBIN_U16("data/tilemaps/mp_characters_selected_jp/palette.gbapal");
const u8 Tiles_mp_characters_selected_jp[] = INCBIN_U8("data/tilemaps/mp_characters_selected_jp/tiles.4bpp");
const u16 Tilemap_mp_characters_selected_jp[] = INCBIN_U16("data/tilemaps/mp_characters_selected_jp/tilemap.tilemap2");

const Tilemap mp_characters_selected_jp = {
    .xTiles = 30,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_characters_selected_jp,
    .tilesSize = sizeof(Tiles_mp_characters_selected_jp),
    .palette = Palette_mp_characters_selected_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_characters_selected_jp) / sizeof(u16),
    .map = Tilemap_mp_characters_selected_jp,
};
# 95 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_characters_selected_en/header.c" 1



const u16 Palette_mp_characters_selected_en[] = INCBIN_U16("data/tilemaps/mp_characters_selected_en/palette.gbapal");
const u8 Tiles_mp_characters_selected_en[] = INCBIN_U8("data/tilemaps/mp_characters_selected_en/tiles.4bpp");
const u16 Tilemap_mp_characters_selected_en[] = INCBIN_U16("data/tilemaps/mp_characters_selected_en/tilemap.tilemap2");

const Tilemap mp_characters_selected_en = {
    .xTiles = 30,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_characters_selected_en,
    .tilesSize = sizeof(Tiles_mp_characters_selected_en),
    .palette = Palette_mp_characters_selected_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_characters_selected_en) / sizeof(u16),
    .map = Tilemap_mp_characters_selected_en,
};
# 96 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_characters_selected_de/header.c" 1



const u16 Palette_mp_characters_selected_de[] = INCBIN_U16("data/tilemaps/mp_characters_selected_de/palette.gbapal");
const u8 Tiles_mp_characters_selected_de[] = INCBIN_U8("data/tilemaps/mp_characters_selected_de/tiles.4bpp");
const u16 Tilemap_mp_characters_selected_de[] = INCBIN_U16("data/tilemaps/mp_characters_selected_de/tilemap.tilemap2");

const Tilemap mp_characters_selected_de = {
    .xTiles = 30,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_characters_selected_de,
    .tilesSize = sizeof(Tiles_mp_characters_selected_de),
    .palette = Palette_mp_characters_selected_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_characters_selected_de) / sizeof(u16),
    .map = Tilemap_mp_characters_selected_de,
};
# 97 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_characters_selected_fr/header.c" 1



const u16 Palette_mp_characters_selected_fr[] = INCBIN_U16("data/tilemaps/mp_characters_selected_fr/palette.gbapal");
const u8 Tiles_mp_characters_selected_fr[] = INCBIN_U8("data/tilemaps/mp_characters_selected_fr/tiles.4bpp");
const u16 Tilemap_mp_characters_selected_fr[] = INCBIN_U16("data/tilemaps/mp_characters_selected_fr/tilemap.tilemap2");

const Tilemap mp_characters_selected_fr = {
    .xTiles = 30,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_characters_selected_fr,
    .tilesSize = sizeof(Tiles_mp_characters_selected_fr),
    .palette = Palette_mp_characters_selected_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_characters_selected_fr) / sizeof(u16),
    .map = Tilemap_mp_characters_selected_fr,
};
# 98 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_characters_selected_es/header.c" 1



const u16 Palette_mp_characters_selected_es[] = INCBIN_U16("data/tilemaps/mp_characters_selected_es/palette.gbapal");
const u8 Tiles_mp_characters_selected_es[] = INCBIN_U8("data/tilemaps/mp_characters_selected_es/tiles.4bpp");
const u16 Tilemap_mp_characters_selected_es[] = INCBIN_U16("data/tilemaps/mp_characters_selected_es/tilemap.tilemap2");

const Tilemap mp_characters_selected_es = {
    .xTiles = 30,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_characters_selected_es,
    .tilesSize = sizeof(Tiles_mp_characters_selected_es),
    .palette = Palette_mp_characters_selected_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_characters_selected_es) / sizeof(u16),
    .map = Tilemap_mp_characters_selected_es,
};
# 99 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_characters_selected_it/header.c" 1



const u16 Palette_mp_characters_selected_it[] = INCBIN_U16("data/tilemaps/mp_characters_selected_it/palette.gbapal");
const u8 Tiles_mp_characters_selected_it[] = INCBIN_U8("data/tilemaps/mp_characters_selected_it/tiles.4bpp");
const u16 Tilemap_mp_characters_selected_it[] = INCBIN_U16("data/tilemaps/mp_characters_selected_it/tilemap.tilemap2");

const Tilemap mp_characters_selected_it = {
    .xTiles = 30,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_characters_selected_it,
    .tilesSize = sizeof(Tiles_mp_characters_selected_it),
    .palette = Palette_mp_characters_selected_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_characters_selected_it) / sizeof(u16),
    .map = Tilemap_mp_characters_selected_it,
};
# 100 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_wait_connection/header.c" 1



const u16 Palette_mp_wait_connection[] = INCBIN_U16("data/tilemaps/mp_wait_connection/palette.gbapal");
const u8 Tiles_mp_wait_connection[] = INCBIN_U8("data/tilemaps/mp_wait_connection/tiles.4bpp");
const u16 Tilemap_mp_wait_connection[] = INCBIN_U16("data/tilemaps/mp_wait_connection/tilemap.tilemap2");

const Tilemap mp_wait_connection = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_wait_connection,
    .tilesSize = sizeof(Tiles_mp_wait_connection),
    .palette = Palette_mp_wait_connection,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_wait_connection) / sizeof(u16),
    .map = Tilemap_mp_wait_connection,
};
# 101 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_message_box_unknown/header.c" 1



const u16 Palette_mp_message_box_unknown[] = INCBIN_U16("data/tilemaps/mp_message_box_unknown/palette.gbapal");
const u8 Tiles_mp_message_box_unknown[] = INCBIN_U8("data/tilemaps/mp_message_box_unknown/tiles.4bpp");
const u16 Tilemap_mp_message_box_unknown[] = INCBIN_U16("data/tilemaps/mp_message_box_unknown/tilemap.tilemap2");

const Tilemap mp_message_box_unknown = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_message_box_unknown,
    .tilesSize = sizeof(Tiles_mp_message_box_unknown),
    .palette = Palette_mp_message_box_unknown,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_message_box_unknown) / sizeof(u16),
    .map = Tilemap_mp_message_box_unknown,
};
# 102 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_unknown_orange_zigzag/header.c" 1



const u16 Palette_mp_unknown_orange_zigzag[] = INCBIN_U16("data/tilemaps/mp_unknown_orange_zigzag/palette.gbapal");
const u8 Tiles_mp_unknown_orange_zigzag[] = INCBIN_U8("data/tilemaps/mp_unknown_orange_zigzag/tiles.4bpp");
const u16 Tilemap_mp_unknown_orange_zigzag[] = INCBIN_U16("data/tilemaps/mp_unknown_orange_zigzag/tilemap.tilemap2");

const Tilemap mp_unknown_orange_zigzag = {
    .xTiles = 30,
    .yTiles = 40,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_unknown_orange_zigzag,
    .tilesSize = sizeof(Tiles_mp_unknown_orange_zigzag),
    .palette = Palette_mp_unknown_orange_zigzag,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_unknown_orange_zigzag) / sizeof(u16),
    .map = Tilemap_mp_unknown_orange_zigzag,
};
# 103 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_unknown_green/header.c" 1



const u16 Palette_mp_unknown_green[] = INCBIN_U16("data/tilemaps/mp_unknown_green/palette.gbapal");
const u8 Tiles_mp_unknown_green[] = INCBIN_U8("data/tilemaps/mp_unknown_green/tiles.4bpp");
const u16 Tilemap_mp_unknown_green[] = INCBIN_U16("data/tilemaps/mp_unknown_green/tilemap.tilemap2");

const Tilemap mp_unknown_green = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_unknown_green,
    .tilesSize = sizeof(Tiles_mp_unknown_green),
    .palette = Palette_mp_unknown_green,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_unknown_green) / sizeof(u16),
    .map = Tilemap_mp_unknown_green,
};
# 104 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unknown_message_box_white/header.c" 1



const u16 Palette_unknown_message_box_white[] = INCBIN_U16("data/tilemaps/unknown_message_box_white/palette.gbapal");
const u8 Tiles_unknown_message_box_white[] = INCBIN_U8("data/tilemaps/unknown_message_box_white/tiles.4bpp");
const u16 Tilemap_unknown_message_box_white[] = INCBIN_U16("data/tilemaps/unknown_message_box_white/tilemap.tilemap2");

const Tilemap unknown_message_box_white = {
    .xTiles = 30,
    .yTiles = 10,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_message_box_white,
    .tilesSize = sizeof(Tiles_unknown_message_box_white),
    .palette = Palette_unknown_message_box_white,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_message_box_white) / sizeof(u16),
    .map = Tilemap_unknown_message_box_white,
};
# 105 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unknown_message_box_white_small/header.c" 1



const u16 Palette_unknown_message_box_white_small[] = INCBIN_U16("data/tilemaps/unknown_message_box_white_small/palette.gbapal");
const u8 Tiles_unknown_message_box_white_small[] = INCBIN_U8("data/tilemaps/unknown_message_box_white_small/tiles.4bpp");
const u16 Tilemap_unknown_message_box_white_small[] = INCBIN_U16("data/tilemaps/unknown_message_box_white_small/tilemap.tilemap2");

const Tilemap unknown_message_box_white_small = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_message_box_white_small,
    .tilesSize = sizeof(Tiles_unknown_message_box_white_small),
    .palette = Palette_unknown_message_box_white_small,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_message_box_white_small) / sizeof(u16),
    .map = Tilemap_unknown_message_box_white_small,
};
# 106 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_vs_background_text/header.c" 1



const u16 Palette_mp_vs_background_text[] = INCBIN_U16("data/tilemaps/mp_vs_background_text/palette.gbapal");
const u8 Tiles_mp_vs_background_text[] = INCBIN_U8("data/tilemaps/mp_vs_background_text/tiles.4bpp");
const u16 Tilemap_mp_vs_background_text[] = INCBIN_U16("data/tilemaps/mp_vs_background_text/tilemap.tilemap2");

const Tilemap mp_vs_background_text = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_vs_background_text,
    .tilesSize = sizeof(Tiles_mp_vs_background_text),
    .palette = Palette_mp_vs_background_text,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_vs_background_text) / sizeof(u16),
    .map = Tilemap_mp_vs_background_text,
};
# 107 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/egg_saucer_wheel_copy/header.c" 1



const u16 Palette_egg_saucer_wheel_copy[] = INCBIN_U16("data/tilemaps/egg_saucer_wheel_copy/palette.gbapal");
const u8 Tiles_egg_saucer_wheel_copy[] = INCBIN_U8("data/tilemaps/egg_saucer_wheel_copy/tiles.4bpp");
const u16 Tilemap_egg_saucer_wheel_copy[] = INCBIN_U16("data/tilemaps/egg_saucer_wheel_copy/tilemap.tilemap2");

const Tilemap egg_saucer_wheel_copy = {
    .xTiles = 14,
    .yTiles = 14,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_egg_saucer_wheel_copy,
    .tilesSize = sizeof(Tiles_egg_saucer_wheel_copy),
    .palette = Palette_egg_saucer_wheel_copy,
    .palOffset = 0,
    .palLength = sizeof(Palette_egg_saucer_wheel_copy) / sizeof(u16),
    .map = Tilemap_egg_saucer_wheel_copy,
};
# 108 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/regular_final_boss/header.c" 1



const u16 Palette_regular_final_boss[] = INCBIN_U16("data/tilemaps/regular_final_boss/palette.gbapal");
const u8 Tiles_regular_final_boss[] = INCBIN_U8("data/tilemaps/regular_final_boss/tiles.4bpp");
const u16 Tilemap_regular_final_boss[] = INCBIN_U16("data/tilemaps/regular_final_boss/tilemap.tilemap2");

const Tilemap regular_final_boss = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_regular_final_boss,
    .tilesSize = sizeof(Tiles_regular_final_boss),
    .palette = Palette_regular_final_boss,
    .palOffset = 0,
    .palLength = sizeof(Palette_regular_final_boss) / sizeof(u16),
    .map = Tilemap_regular_final_boss,
};
# 109 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/extra_boss_cockpit/header.c" 1



const u16 Palette_extra_boss_cockpit[] = INCBIN_U16("data/tilemaps/extra_boss_cockpit/palette.gbapal");
const u8 Tiles_extra_boss_cockpit[] = INCBIN_U8("data/tilemaps/extra_boss_cockpit/tiles.4bpp");
const u8 Tilemap_extra_boss_cockpit[] = INCBIN_U8("data/tilemaps/extra_boss_cockpit/tilemap.tilemap2");

const Tilemap extra_boss_cockpit = {
    .xTiles = 10,
    .yTiles = 9,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_extra_boss_cockpit,
    .tilesSize = sizeof(Tiles_extra_boss_cockpit),
    .palette = Palette_extra_boss_cockpit,
    .palOffset = 0,
    .palLength = sizeof(Palette_extra_boss_cockpit) / sizeof(u16),
    .map = (const u16 *)Tilemap_extra_boss_cockpit,
};
# 110 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/extra_boss_background_copy/header.c" 1



const u16 Palette_extra_boss_background_copy[] = INCBIN_U16("data/tilemaps/extra_boss_background_copy/palette.gbapal");
const u8 Tiles_extra_boss_background_copy[] = INCBIN_U8("data/tilemaps/extra_boss_background_copy/tiles.4bpp");
const u16 Tilemap_extra_boss_background_copy[] = INCBIN_U16("data/tilemaps/extra_boss_background_copy/tilemap.tilemap2");

const Tilemap extra_boss_background_copy = {
    .xTiles = 32,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_extra_boss_background_copy,
    .tilesSize = sizeof(Tiles_extra_boss_background_copy),
    .palette = Palette_extra_boss_background_copy,
    .palOffset = 0,
    .palLength = sizeof(Palette_extra_boss_background_copy) / sizeof(u16),
    .map = Tilemap_extra_boss_background_copy,
};
# 111 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_vanilla_kidnapped_full_map/header.c" 1



const u16 Palette_cutscene_vanilla_kidnapped_full_map[] = INCBIN_U16("data/tilemaps/cutscene_vanilla_kidnapped_full_map/palette.gbapal");
const u8 Tiles_cutscene_vanilla_kidnapped_full_map[] = INCBIN_U8("data/tilemaps/cutscene_vanilla_kidnapped_full_map/tiles.4bpp");
const u16 Tilemap_cutscene_vanilla_kidnapped_full_map[] = INCBIN_U16("data/tilemaps/cutscene_vanilla_kidnapped_full_map/tilemap.tilemap2");

const Tilemap cutscene_vanilla_kidnapped_full_map = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_vanilla_kidnapped_full_map,
    .tilesSize = sizeof(Tiles_cutscene_vanilla_kidnapped_full_map),
    .palette = Palette_cutscene_vanilla_kidnapped_full_map,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_vanilla_kidnapped_full_map) / sizeof(u16),
    .map = Tilemap_cutscene_vanilla_kidnapped_full_map,
};
# 112 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_vanilla_kidnapped_full_map_copy/header.c" 1



const u16 Palette_cutscene_vanilla_kidnapped_full_map_copy[]
    = INCBIN_U16("data/tilemaps/cutscene_vanilla_kidnapped_full_map_copy/palette.gbapal");
const u8 Tiles_cutscene_vanilla_kidnapped_full_map_copy[] = INCBIN_U8("data/tilemaps/cutscene_vanilla_kidnapped_full_map_copy/tiles.4bpp");
const u16 Tilemap_cutscene_vanilla_kidnapped_full_map_copy[]
    = INCBIN_U16("data/tilemaps/cutscene_vanilla_kidnapped_full_map_copy/tilemap.tilemap2");

const Tilemap cutscene_vanilla_kidnapped_full_map_copy = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_vanilla_kidnapped_full_map_copy,
    .tilesSize = sizeof(Tiles_cutscene_vanilla_kidnapped_full_map_copy),
    .palette = Palette_cutscene_vanilla_kidnapped_full_map_copy,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_vanilla_kidnapped_full_map_copy) / sizeof(u16),
    .map = Tilemap_cutscene_vanilla_kidnapped_full_map_copy,
};
# 113 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_vanilla_kidnapped_super_sonic_art/header.c" 1



const u16 Palette_cutscene_vanilla_kidnapped_super_sonic_art[]
    = INCBIN_U16("data/tilemaps/cutscene_vanilla_kidnapped_super_sonic_art/palette.gbapal");
const u8 Tiles_cutscene_vanilla_kidnapped_super_sonic_art[]
    = INCBIN_U8("data/tilemaps/cutscene_vanilla_kidnapped_super_sonic_art/tiles.4bpp");
const u16 Tilemap_cutscene_vanilla_kidnapped_super_sonic_art[]
    = INCBIN_U16("data/tilemaps/cutscene_vanilla_kidnapped_super_sonic_art/tilemap.tilemap2");

const Tilemap cutscene_vanilla_kidnapped_super_sonic_art = {
    .xTiles = 13,
    .yTiles = 19,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_vanilla_kidnapped_super_sonic_art,
    .tilesSize = sizeof(Tiles_cutscene_vanilla_kidnapped_super_sonic_art),
    .palette = Palette_cutscene_vanilla_kidnapped_super_sonic_art,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_vanilla_kidnapped_super_sonic_art) / sizeof(u16),
    .map = Tilemap_cutscene_vanilla_kidnapped_super_sonic_art,
};
# 114 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_time_record_bg0/header.c" 1



const u16 Palette_options_time_record_bg0[] = INCBIN_U16("data/tilemaps/options_time_record_bg0/palette.gbapal");
const u8 Tiles_options_time_record_bg0[] = INCBIN_U8("data/tilemaps/options_time_record_bg0/tiles.4bpp");
const u16 Tilemap_options_time_record_bg0[] = INCBIN_U16("data/tilemaps/options_time_record_bg0/tilemap.tilemap2");

const Tilemap options_time_record_bg0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_time_record_bg0,
    .tilesSize = sizeof(Tiles_options_time_record_bg0),
    .palette = Palette_options_time_record_bg0,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_time_record_bg0) / sizeof(u16),
    .map = Tilemap_options_time_record_bg0,
};
# 115 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_enter_name_characters/header.c" 1



const u16 Palette_options_enter_name_characters[] = INCBIN_U16("data/tilemaps/options_enter_name_characters/palette.gbapal");
const u8 Tiles_options_enter_name_characters[] = INCBIN_U8("data/tilemaps/options_enter_name_characters/tiles.4bpp");
const u16 Tilemap_options_enter_name_characters[] = INCBIN_U16("data/tilemaps/options_enter_name_characters/tilemap.tilemap2");

const Tilemap options_enter_name_characters = {
    .xTiles = 22,
    .yTiles = 44,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_enter_name_characters,
    .tilesSize = sizeof(Tiles_options_enter_name_characters),
    .palette = Palette_options_enter_name_characters,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_enter_name_characters) / sizeof(u16),
    .map = Tilemap_options_enter_name_characters,
};
# 116 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_enter_name/header.c" 1



const u16 Palette_options_enter_name[] = INCBIN_U16("data/tilemaps/options_enter_name/palette.gbapal");
const u8 Tiles_options_enter_name[] = INCBIN_U8("data/tilemaps/options_enter_name/tiles.4bpp");
const u16 Tilemap_options_enter_name[] = INCBIN_U16("data/tilemaps/options_enter_name/tilemap.tilemap2");

const Tilemap options_enter_name = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_enter_name,
    .tilesSize = sizeof(Tiles_options_enter_name),
    .palette = Palette_options_enter_name,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_enter_name) / sizeof(u16),
    .map = Tilemap_options_enter_name,
};
# 117 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_bg0/header.c" 1



const u16 Palette_options_bg0[] = INCBIN_U16("data/tilemaps/options_bg0/palette.gbapal");
const u8 Tiles_options_bg0[] = INCBIN_U8("data/tilemaps/options_bg0/tiles.4bpp");
const u16 Tilemap_options_bg0[] = INCBIN_U16("data/tilemaps/options_bg0/tilemap.tilemap2");

const Tilemap options_bg0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_bg0,
    .tilesSize = sizeof(Tiles_options_bg0),
    .palette = Palette_options_bg0,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_bg0) / sizeof(u16),
    .map = Tilemap_options_bg0,
};
# 118 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unused_options_window/header.c" 1



const u16 Palette_unused_options_window[] = INCBIN_U16("data/tilemaps/unused_options_window/palette.gbapal");
const u8 Tiles_unused_options_window[] = INCBIN_U8("data/tilemaps/unused_options_window/tiles.4bpp");
const u16 Tilemap_unused_options_window[] = INCBIN_U16("data/tilemaps/unused_options_window/tilemap.tilemap2");

const Tilemap unused_options_window = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unused_options_window,
    .tilesSize = sizeof(Tiles_unused_options_window),
    .palette = Palette_unused_options_window,
    .palOffset = 0,
    .palLength = sizeof(Palette_unused_options_window) / sizeof(u16),
    .map = Tilemap_unused_options_window,
};
# 119 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_time_record_bg1/header.c" 1



const u16 Palette_options_time_record_bg1[] = INCBIN_U16("data/tilemaps/options_time_record_bg1/palette.gbapal");
const u8 Tiles_options_time_record_bg1[] = INCBIN_U8("data/tilemaps/options_time_record_bg1/tiles.4bpp");
const u16 Tilemap_options_time_record_bg1[] = INCBIN_U16("data/tilemaps/options_time_record_bg1/tilemap.tilemap2");

const Tilemap options_time_record_bg1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_time_record_bg1,
    .tilesSize = sizeof(Tiles_options_time_record_bg1),
    .palette = Palette_options_time_record_bg1,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_time_record_bg1) / sizeof(u16),
    .map = Tilemap_options_time_record_bg1,
};
# 120 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_vs_record_bg1/header.c" 1



const u16 Palette_options_vs_record_bg1[] = INCBIN_U16("data/tilemaps/options_vs_record_bg1/palette.gbapal");
const u8 Tiles_options_vs_record_bg1[] = INCBIN_U8("data/tilemaps/options_vs_record_bg1/tiles.4bpp");
const u16 Tilemap_options_vs_record_bg1[] = INCBIN_U16("data/tilemaps/options_vs_record_bg1/tilemap.tilemap2");

const Tilemap options_vs_record_bg1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_vs_record_bg1,
    .tilesSize = sizeof(Tiles_options_vs_record_bg1),
    .palette = Palette_options_vs_record_bg1,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_vs_record_bg1) / sizeof(u16),
    .map = Tilemap_options_vs_record_bg1,
};
# 121 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/options_language_select/header.c" 1



const u16 Palette_options_language_select[] = INCBIN_U16("data/tilemaps/options_language_select/palette.gbapal");
const u8 Tiles_options_language_select[] = INCBIN_U8("data/tilemaps/options_language_select/tiles.4bpp");
const u16 Tilemap_options_language_select[] = INCBIN_U16("data/tilemaps/options_language_select/tilemap.tilemap2");

const Tilemap options_language_select = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_options_language_select,
    .tilesSize = sizeof(Tiles_options_language_select),
    .palette = Palette_options_language_select,
    .palOffset = 0,
    .palLength = sizeof(Palette_options_language_select) / sizeof(u16),
    .map = Tilemap_options_language_select,
};
# 122 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_sonic_bg/header.c" 1



const u16 Palette_mp_character_selected_sonic_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_sonic_bg/palette.gbapal");
const u8 Tiles_mp_character_selected_sonic_bg[] = INCBIN_U8("data/tilemaps/mp_character_selected_sonic_bg/tiles.4bpp");
const u16 Tilemap_mp_character_selected_sonic_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_sonic_bg/tilemap.tilemap2");

const Tilemap mp_character_selected_sonic_bg = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_sonic_bg,
    .tilesSize = sizeof(Tiles_mp_character_selected_sonic_bg),
    .palette = Palette_mp_character_selected_sonic_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_sonic_bg) / sizeof(u16),
    .map = Tilemap_mp_character_selected_sonic_bg,
};
# 123 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_sonic/header.c" 1



const u16 Palette_mp_character_selected_sonic[] = INCBIN_U16("data/tilemaps/mp_character_selected_sonic/palette.gbapal");
const u8 Tiles_mp_character_selected_sonic[] = INCBIN_U8("data/tilemaps/mp_character_selected_sonic/tiles.4bpp");
const u16 Tilemap_mp_character_selected_sonic[] = INCBIN_U16("data/tilemaps/mp_character_selected_sonic/tilemap.tilemap2");

const Tilemap mp_character_selected_sonic = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_sonic,
    .tilesSize = sizeof(Tiles_mp_character_selected_sonic),
    .palette = Palette_mp_character_selected_sonic,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_sonic) / sizeof(u16),
    .map = Tilemap_mp_character_selected_sonic,
};
# 124 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_tails_bg/header.c" 1



const u16 Palette_mp_character_selected_tails_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_tails_bg/palette.gbapal");
const u8 Tiles_mp_character_selected_tails_bg[] = INCBIN_U8("data/tilemaps/mp_character_selected_tails_bg/tiles.4bpp");
const u16 Tilemap_mp_character_selected_tails_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_tails_bg/tilemap.tilemap2");

const Tilemap mp_character_selected_tails_bg = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_tails_bg,
    .tilesSize = sizeof(Tiles_mp_character_selected_tails_bg),
    .palette = Palette_mp_character_selected_tails_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_tails_bg) / sizeof(u16),
    .map = Tilemap_mp_character_selected_tails_bg,
};
# 125 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_tails/header.c" 1



const u16 Palette_mp_character_selected_tails[] = INCBIN_U16("data/tilemaps/mp_character_selected_tails/palette.gbapal");
const u8 Tiles_mp_character_selected_tails[] = INCBIN_U8("data/tilemaps/mp_character_selected_tails/tiles.4bpp");
const u16 Tilemap_mp_character_selected_tails[] = INCBIN_U16("data/tilemaps/mp_character_selected_tails/tilemap.tilemap2");

const Tilemap mp_character_selected_tails = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_tails,
    .tilesSize = sizeof(Tiles_mp_character_selected_tails),
    .palette = Palette_mp_character_selected_tails,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_tails) / sizeof(u16),
    .map = Tilemap_mp_character_selected_tails,
};
# 126 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_knuckles_bg/header.c" 1



const u16 Palette_mp_character_selected_knuckles_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_knuckles_bg/palette.gbapal");
const u8 Tiles_mp_character_selected_knuckles_bg[] = INCBIN_U8("data/tilemaps/mp_character_selected_knuckles_bg/tiles.4bpp");
const u16 Tilemap_mp_character_selected_knuckles_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_knuckles_bg/tilemap.tilemap2");

const Tilemap mp_character_selected_knuckles_bg = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_knuckles_bg,
    .tilesSize = sizeof(Tiles_mp_character_selected_knuckles_bg),
    .palette = Palette_mp_character_selected_knuckles_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_knuckles_bg) / sizeof(u16),
    .map = Tilemap_mp_character_selected_knuckles_bg,
};
# 127 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_knuckles/header.c" 1



const u16 Palette_mp_character_selected_knuckles[] = INCBIN_U16("data/tilemaps/mp_character_selected_knuckles/palette.gbapal");
const u8 Tiles_mp_character_selected_knuckles[] = INCBIN_U8("data/tilemaps/mp_character_selected_knuckles/tiles.4bpp");
const u16 Tilemap_mp_character_selected_knuckles[] = INCBIN_U16("data/tilemaps/mp_character_selected_knuckles/tilemap.tilemap2");

const Tilemap mp_character_selected_knuckles = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_knuckles,
    .tilesSize = sizeof(Tiles_mp_character_selected_knuckles),
    .palette = Palette_mp_character_selected_knuckles,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_knuckles) / sizeof(u16),
    .map = Tilemap_mp_character_selected_knuckles,
};
# 128 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_amy_bg/header.c" 1



const u16 Palette_mp_character_selected_amy_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_amy_bg/palette.gbapal");
const u8 Tiles_mp_character_selected_amy_bg[] = INCBIN_U8("data/tilemaps/mp_character_selected_amy_bg/tiles.4bpp");
const u16 Tilemap_mp_character_selected_amy_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_amy_bg/tilemap.tilemap2");

const Tilemap mp_character_selected_amy_bg = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_amy_bg,
    .tilesSize = sizeof(Tiles_mp_character_selected_amy_bg),
    .palette = Palette_mp_character_selected_amy_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_amy_bg) / sizeof(u16),
    .map = Tilemap_mp_character_selected_amy_bg,
};
# 129 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_amy/header.c" 1



const u16 Palette_mp_character_selected_amy[] = INCBIN_U16("data/tilemaps/mp_character_selected_amy/palette.gbapal");
const u8 Tiles_mp_character_selected_amy[] = INCBIN_U8("data/tilemaps/mp_character_selected_amy/tiles.4bpp");
const u16 Tilemap_mp_character_selected_amy[] = INCBIN_U16("data/tilemaps/mp_character_selected_amy/tilemap.tilemap2");

const Tilemap mp_character_selected_amy = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_amy,
    .tilesSize = sizeof(Tiles_mp_character_selected_amy),
    .palette = Palette_mp_character_selected_amy,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_amy) / sizeof(u16),
    .map = Tilemap_mp_character_selected_amy,
};
# 130 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_cream_bg/header.c" 1



const u16 Palette_mp_character_selected_cream_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_cream_bg/palette.gbapal");
const u8 Tiles_mp_character_selected_cream_bg[] = INCBIN_U8("data/tilemaps/mp_character_selected_cream_bg/tiles.4bpp");
const u16 Tilemap_mp_character_selected_cream_bg[] = INCBIN_U16("data/tilemaps/mp_character_selected_cream_bg/tilemap.tilemap2");

const Tilemap mp_character_selected_cream_bg = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_cream_bg,
    .tilesSize = sizeof(Tiles_mp_character_selected_cream_bg),
    .palette = Palette_mp_character_selected_cream_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_cream_bg) / sizeof(u16),
    .map = Tilemap_mp_character_selected_cream_bg,
};
# 131 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_character_selected_cream/header.c" 1



const u16 Palette_mp_character_selected_cream[] = INCBIN_U16("data/tilemaps/mp_character_selected_cream/palette.gbapal");
const u8 Tiles_mp_character_selected_cream[] = INCBIN_U8("data/tilemaps/mp_character_selected_cream/tiles.4bpp");
const u16 Tilemap_mp_character_selected_cream[] = INCBIN_U16("data/tilemaps/mp_character_selected_cream/tilemap.tilemap2");

const Tilemap mp_character_selected_cream = {
    .xTiles = 10,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_character_selected_cream,
    .tilesSize = sizeof(Tiles_mp_character_selected_cream),
    .palette = Palette_mp_character_selected_cream,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_character_selected_cream) / sizeof(u16),
    .map = Tilemap_mp_character_selected_cream,
};
# 132 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/tilemap_139/header.c" 1



const u16 Palette_tilemap_139[] = INCBIN_U16("data/tilemaps/tilemap_139/palette.gbapal");
const u8 Tiles_tilemap_139[] = INCBIN_U8("data/tilemaps/tilemap_139/tiles.4bpp");
const u16 Tilemap_tilemap_139[] = INCBIN_U16("data/tilemaps/tilemap_139/tilemap.tilemap2");

const Tilemap tilemap_139 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_tilemap_139,
    .tilesSize = sizeof(Tiles_tilemap_139),
    .palette = Palette_tilemap_139,
    .palOffset = 0,
    .palLength = sizeof(Palette_tilemap_139) / sizeof(u16),
    .map = Tilemap_tilemap_139,
};
# 133 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_1/header.c" 1



const u16 Palette_special_stage_1[] = INCBIN_U16("data/tilemaps/special_stage_1/palette.gbapal");
const u8 Tiles_special_stage_1[] = INCBIN_U8("data/tilemaps/special_stage_1/tiles.4bpp");
const u8 Tilemap_special_stage_1[] = INCBIN_U8("data/tilemaps/special_stage_1/tilemap.tilemap2");

const Tilemap special_stage_1 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_1,
    .tilesSize = sizeof(Tiles_special_stage_1),
    .palette = Palette_special_stage_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_1) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_1,
};
# 134 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_1_bg/header.c" 1



const u16 Palette_special_stage_1_bg[] = INCBIN_U16("data/tilemaps/special_stage_1_bg/palette.gbapal");
const u8 Tiles_special_stage_1_bg[] = INCBIN_U8("data/tilemaps/special_stage_1_bg/tiles.4bpp");
const u16 Tilemap_special_stage_1_bg[] = INCBIN_U16("data/tilemaps/special_stage_1_bg/tilemap.tilemap2");

const Tilemap special_stage_1_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_1_bg,
    .tilesSize = sizeof(Tiles_special_stage_1_bg),
    .palette = Palette_special_stage_1_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_1_bg) / sizeof(u16),
    .map = Tilemap_special_stage_1_bg,
};
# 135 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_2/header.c" 1



const u16 Palette_special_stage_2[] = INCBIN_U16("data/tilemaps/special_stage_2/palette.gbapal");
const u8 Tiles_special_stage_2[] = INCBIN_U8("data/tilemaps/special_stage_2/tiles.4bpp");
const u8 Tilemap_special_stage_2[] = INCBIN_U8("data/tilemaps/special_stage_2/tilemap.tilemap2");

const Tilemap special_stage_2 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_2,
    .tilesSize = sizeof(Tiles_special_stage_2),
    .palette = Palette_special_stage_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_2) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_2,
};
# 136 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_2_bg/header.c" 1



const u16 Palette_special_stage_2_bg[] = INCBIN_U16("data/tilemaps/special_stage_2_bg/palette.gbapal");
const u8 Tiles_special_stage_2_bg[] = INCBIN_U8("data/tilemaps/special_stage_2_bg/tiles.4bpp");
const u16 Tilemap_special_stage_2_bg[] = INCBIN_U16("data/tilemaps/special_stage_2_bg/tilemap.tilemap2");

const Tilemap special_stage_2_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_2_bg,
    .tilesSize = sizeof(Tiles_special_stage_2_bg),
    .palette = Palette_special_stage_2_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_2_bg) / sizeof(u16),
    .map = Tilemap_special_stage_2_bg,
};
# 137 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_3/header.c" 1



const u16 Palette_special_stage_3[] = INCBIN_U16("data/tilemaps/special_stage_3/palette.gbapal");
const u8 Tiles_special_stage_3[] = INCBIN_U8("data/tilemaps/special_stage_3/tiles.4bpp");
const u8 Tilemap_special_stage_3[] = INCBIN_U8("data/tilemaps/special_stage_3/tilemap.tilemap2");

const Tilemap special_stage_3 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_3,
    .tilesSize = sizeof(Tiles_special_stage_3),
    .palette = Palette_special_stage_3,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_3) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_3,
};
# 138 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_3_bg/header.c" 1



const u16 Palette_special_stage_3_bg[] = INCBIN_U16("data/tilemaps/special_stage_3_bg/palette.gbapal");
const u8 Tiles_special_stage_3_bg[] = INCBIN_U8("data/tilemaps/special_stage_3_bg/tiles.4bpp");
const u16 Tilemap_special_stage_3_bg[] = INCBIN_U16("data/tilemaps/special_stage_3_bg/tilemap.tilemap2");

const Tilemap special_stage_3_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_3_bg,
    .tilesSize = sizeof(Tiles_special_stage_3_bg),
    .palette = Palette_special_stage_3_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_3_bg) / sizeof(u16),
    .map = Tilemap_special_stage_3_bg,
};
# 139 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_4/header.c" 1



const u16 Palette_special_stage_4[] = INCBIN_U16("data/tilemaps/special_stage_4/palette.gbapal");
const u8 Tiles_special_stage_4[] = INCBIN_U8("data/tilemaps/special_stage_4/tiles.4bpp");
const u8 Tilemap_special_stage_4[] = INCBIN_U8("data/tilemaps/special_stage_4/tilemap.tilemap2");

const Tilemap special_stage_4 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_4,
    .tilesSize = sizeof(Tiles_special_stage_4),
    .palette = Palette_special_stage_4,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_4) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_4,
};
# 140 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_4_bg/header.c" 1



const u16 Palette_special_stage_4_bg[] = INCBIN_U16("data/tilemaps/special_stage_4_bg/palette.gbapal");
const u8 Tiles_special_stage_4_bg[] = INCBIN_U8("data/tilemaps/special_stage_4_bg/tiles.4bpp");
const u16 Tilemap_special_stage_4_bg[] = INCBIN_U16("data/tilemaps/special_stage_4_bg/tilemap.tilemap2");

const Tilemap special_stage_4_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_4_bg,
    .tilesSize = sizeof(Tiles_special_stage_4_bg),
    .palette = Palette_special_stage_4_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_4_bg) / sizeof(u16),
    .map = Tilemap_special_stage_4_bg,
};
# 141 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_5/header.c" 1



const u16 Palette_special_stage_5[] = INCBIN_U16("data/tilemaps/special_stage_5/palette.gbapal");
const u8 Tiles_special_stage_5[] = INCBIN_U8("data/tilemaps/special_stage_5/tiles.4bpp");
const u8 Tilemap_special_stage_5[] = INCBIN_U8("data/tilemaps/special_stage_5/tilemap.tilemap2");

const Tilemap special_stage_5 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_5,
    .tilesSize = sizeof(Tiles_special_stage_5),
    .palette = Palette_special_stage_5,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_5) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_5,
};
# 142 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_5_bg/header.c" 1



const u16 Palette_special_stage_5_bg[] = INCBIN_U16("data/tilemaps/special_stage_5_bg/palette.gbapal");
const u8 Tiles_special_stage_5_bg[] = INCBIN_U8("data/tilemaps/special_stage_5_bg/tiles.4bpp");
const u16 Tilemap_special_stage_5_bg[] = INCBIN_U16("data/tilemaps/special_stage_5_bg/tilemap.tilemap2");

const Tilemap special_stage_5_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_5_bg,
    .tilesSize = sizeof(Tiles_special_stage_5_bg),
    .palette = Palette_special_stage_5_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_5_bg) / sizeof(u16),
    .map = Tilemap_special_stage_5_bg,
};
# 143 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_6/header.c" 1



const u16 Palette_special_stage_6[] = INCBIN_U16("data/tilemaps/special_stage_6/palette.gbapal");
const u8 Tiles_special_stage_6[] = INCBIN_U8("data/tilemaps/special_stage_6/tiles.4bpp");
const u8 Tilemap_special_stage_6[] = INCBIN_U8("data/tilemaps/special_stage_6/tilemap.tilemap2");

const Tilemap special_stage_6 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_6,
    .tilesSize = sizeof(Tiles_special_stage_6),
    .palette = Palette_special_stage_6,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_6) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_6,
};
# 144 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_6_bg/header.c" 1



const u16 Palette_special_stage_6_bg[] = INCBIN_U16("data/tilemaps/special_stage_6_bg/palette.gbapal");
const u8 Tiles_special_stage_6_bg[] = INCBIN_U8("data/tilemaps/special_stage_6_bg/tiles.4bpp");
const u16 Tilemap_special_stage_6_bg[] = INCBIN_U16("data/tilemaps/special_stage_6_bg/tilemap.tilemap2");

const Tilemap special_stage_6_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_6_bg,
    .tilesSize = sizeof(Tiles_special_stage_6_bg),
    .palette = Palette_special_stage_6_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_6_bg) / sizeof(u16),
    .map = Tilemap_special_stage_6_bg,
};
# 145 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_7/header.c" 1



const u16 Palette_special_stage_7[] = INCBIN_U16("data/tilemaps/special_stage_7/palette.gbapal");
const u8 Tiles_special_stage_7[] = INCBIN_U8("data/tilemaps/special_stage_7/tiles.4bpp");
const u8 Tilemap_special_stage_7[] = INCBIN_U8("data/tilemaps/special_stage_7/tilemap.tilemap2");

const Tilemap special_stage_7 = {
    .xTiles = 128,
    .yTiles = 128,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_7,
    .tilesSize = sizeof(Tiles_special_stage_7),
    .palette = Palette_special_stage_7,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_7) / sizeof(u16),
    .map = (const u16 *)Tilemap_special_stage_7,
};
# 146 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/special_stage_7_bg/header.c" 1



const u16 Palette_special_stage_7_bg[] = INCBIN_U16("data/tilemaps/special_stage_7_bg/palette.gbapal");
const u8 Tiles_special_stage_7_bg[] = INCBIN_U8("data/tilemaps/special_stage_7_bg/tiles.4bpp");
const u16 Tilemap_special_stage_7_bg[] = INCBIN_U16("data/tilemaps/special_stage_7_bg/tilemap.tilemap2");

const Tilemap special_stage_7_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_special_stage_7_bg,
    .tilesSize = sizeof(Tiles_special_stage_7_bg),
    .palette = Palette_special_stage_7_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_special_stage_7_bg) / sizeof(u16),
    .map = Tilemap_special_stage_7_bg,
};
# 147 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_cheese_please_wait_jp/header.c" 1



const u16 Palette_mp_cheese_please_wait_jp[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_jp/palette.gbapal");
const u8 Tiles_mp_cheese_please_wait_jp[] = INCBIN_U8("data/tilemaps/mp_cheese_please_wait_jp/tiles.4bpp");
const u16 Tilemap_mp_cheese_please_wait_jp[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_jp/tilemap.tilemap2");

const Tilemap mp_cheese_please_wait_jp = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_cheese_please_wait_jp,
    .tilesSize = sizeof(Tiles_mp_cheese_please_wait_jp),
    .palette = Palette_mp_cheese_please_wait_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_cheese_please_wait_jp) / sizeof(u16),
    .map = Tilemap_mp_cheese_please_wait_jp,
};
# 148 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_cheese_please_wait_en/header.c" 1



const u16 Palette_mp_cheese_please_wait_en[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_en/palette.gbapal");
const u8 Tiles_mp_cheese_please_wait_en[] = INCBIN_U8("data/tilemaps/mp_cheese_please_wait_en/tiles.4bpp");
const u16 Tilemap_mp_cheese_please_wait_en[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_en/tilemap.tilemap2");

const Tilemap mp_cheese_please_wait_en = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_cheese_please_wait_en,
    .tilesSize = sizeof(Tiles_mp_cheese_please_wait_en),
    .palette = Palette_mp_cheese_please_wait_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_cheese_please_wait_en) / sizeof(u16),
    .map = Tilemap_mp_cheese_please_wait_en,
};
# 149 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_cheese_please_wait_de/header.c" 1



const u16 Palette_mp_cheese_please_wait_de[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_de/palette.gbapal");
const u8 Tiles_mp_cheese_please_wait_de[] = INCBIN_U8("data/tilemaps/mp_cheese_please_wait_de/tiles.4bpp");
const u16 Tilemap_mp_cheese_please_wait_de[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_de/tilemap.tilemap2");

const Tilemap mp_cheese_please_wait_de = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_cheese_please_wait_de,
    .tilesSize = sizeof(Tiles_mp_cheese_please_wait_de),
    .palette = Palette_mp_cheese_please_wait_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_cheese_please_wait_de) / sizeof(u16),
    .map = Tilemap_mp_cheese_please_wait_de,
};
# 150 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_cheese_please_wait_fr/header.c" 1



const u16 Palette_mp_cheese_please_wait_fr[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_fr/palette.gbapal");
const u8 Tiles_mp_cheese_please_wait_fr[] = INCBIN_U8("data/tilemaps/mp_cheese_please_wait_fr/tiles.4bpp");
const u16 Tilemap_mp_cheese_please_wait_fr[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_fr/tilemap.tilemap2");

const Tilemap mp_cheese_please_wait_fr = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_cheese_please_wait_fr,
    .tilesSize = sizeof(Tiles_mp_cheese_please_wait_fr),
    .palette = Palette_mp_cheese_please_wait_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_cheese_please_wait_fr) / sizeof(u16),
    .map = Tilemap_mp_cheese_please_wait_fr,
};
# 151 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_cheese_please_wait_es/header.c" 1



const u16 Palette_mp_cheese_please_wait_es[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_es/palette.gbapal");
const u8 Tiles_mp_cheese_please_wait_es[] = INCBIN_U8("data/tilemaps/mp_cheese_please_wait_es/tiles.4bpp");
const u16 Tilemap_mp_cheese_please_wait_es[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_es/tilemap.tilemap2");

const Tilemap mp_cheese_please_wait_es = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_cheese_please_wait_es,
    .tilesSize = sizeof(Tiles_mp_cheese_please_wait_es),
    .palette = Palette_mp_cheese_please_wait_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_cheese_please_wait_es) / sizeof(u16),
    .map = Tilemap_mp_cheese_please_wait_es,
};
# 152 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/mp_cheese_please_wait_it/header.c" 1



const u16 Palette_mp_cheese_please_wait_it[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_it/palette.gbapal");
const u8 Tiles_mp_cheese_please_wait_it[] = INCBIN_U8("data/tilemaps/mp_cheese_please_wait_it/tiles.4bpp");
const u16 Tilemap_mp_cheese_please_wait_it[] = INCBIN_U16("data/tilemaps/mp_cheese_please_wait_it/tilemap.tilemap2");

const Tilemap mp_cheese_please_wait_it = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_cheese_please_wait_it,
    .tilesSize = sizeof(Tiles_mp_cheese_please_wait_it),
    .palette = Palette_mp_cheese_please_wait_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_cheese_please_wait_it) / sizeof(u16),
    .map = Tilemap_mp_cheese_please_wait_it,
};
# 153 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/ta_orange_bg/header.c" 1



const u16 Palette_ta_orange_bg[] = INCBIN_U16("data/tilemaps/ta_orange_bg/palette.gbapal");
const u8 Tiles_ta_orange_bg[] = INCBIN_U8("data/tilemaps/ta_orange_bg/tiles.4bpp");
const u16 Tilemap_ta_orange_bg[] = INCBIN_U16("data/tilemaps/ta_orange_bg/tilemap.tilemap2");

const Tilemap ta_orange_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_ta_orange_bg,
    .tilesSize = sizeof(Tiles_ta_orange_bg),
    .palette = Palette_ta_orange_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_ta_orange_bg) / sizeof(u16),
    .map = Tilemap_ta_orange_bg,
};
# 154 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/message_box_black/header.c" 1



const u16 Palette_message_box_black[] = INCBIN_U16("data/tilemaps/message_box_black/palette.gbapal");
const u8 Tiles_message_box_black[] = INCBIN_U8("data/tilemaps/message_box_black/tiles.4bpp");
const u16 Tilemap_message_box_black[] = INCBIN_U16("data/tilemaps/message_box_black/tilemap.tilemap2");

const Tilemap message_box_black = {
    .xTiles = 28,
    .yTiles = 12,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_message_box_black,
    .tilesSize = sizeof(Tiles_message_box_black),
    .palette = Palette_message_box_black,
    .palOffset = 0,
    .palLength = sizeof(Palette_message_box_black) / sizeof(u16),
    .map = Tilemap_message_box_black,
};
# 155 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/green_caret/header.c" 1



const u16 Palette_green_caret[] = INCBIN_U16("data/tilemaps/green_caret/palette.gbapal");
const u8 Tiles_green_caret[] = INCBIN_U8("data/tilemaps/green_caret/tiles.4bpp");
const u16 Tilemap_green_caret[] = INCBIN_U16("data/tilemaps/green_caret/tilemap.tilemap2");

const Tilemap green_caret = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_green_caret,
    .tilesSize = sizeof(Tiles_green_caret),
    .palette = Palette_green_caret,
    .palOffset = 0,
    .palLength = sizeof(Palette_green_caret) / sizeof(u16),
    .map = Tilemap_green_caret,
};
# 156 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/sound_test_bg/header.c" 1



const u16 Palette_sound_test_bg[] = INCBIN_U16("data/tilemaps/sound_test_bg/palette.gbapal");
const u8 Tiles_sound_test_bg[] = INCBIN_U8("data/tilemaps/sound_test_bg/tiles.4bpp");
const u16 Tilemap_sound_test_bg[] = INCBIN_U16("data/tilemaps/sound_test_bg/tilemap.tilemap2");

const Tilemap sound_test_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sound_test_bg,
    .tilesSize = sizeof(Tiles_sound_test_bg),
    .palette = Palette_sound_test_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_sound_test_bg) / sizeof(u16),
    .map = Tilemap_sound_test_bg,
};
# 157 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/title_screen_bg/header.c" 1



const u16 Palette_title_screen_bg[] = INCBIN_U16("data/tilemaps/title_screen_bg/palette.gbapal");
const u8 Tiles_title_screen_bg[] = INCBIN_U8("data/tilemaps/title_screen_bg/tiles.4bpp");
const u16 Tilemap_title_screen_bg[] = INCBIN_U16("data/tilemaps/title_screen_bg/tilemap.tilemap2");

const Tilemap title_screen_bg = {
    .xTiles = 32,
    .yTiles = 64,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_title_screen_bg,
    .tilesSize = sizeof(Tiles_title_screen_bg),
    .palette = Palette_title_screen_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_title_screen_bg) / sizeof(u16),
    .map = Tilemap_title_screen_bg,
};
# 158 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/intro_water/header.c" 1



const u16 Palette_intro_water[] = INCBIN_U16("data/tilemaps/intro_water/palette.gbapal");
const u8 Tiles_intro_water[] = INCBIN_U8("data/tilemaps/intro_water/tiles.4bpp");
const u8 Tilemap_intro_water[] = INCBIN_U8("data/tilemaps/intro_water/tilemap.tilemap2");

const Tilemap intro_water = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_intro_water,
    .tilesSize = sizeof(Tiles_intro_water),
    .palette = Palette_intro_water,
    .palOffset = 0,
    .palLength = sizeof(Palette_intro_water) / sizeof(u16),
    .map = (const u16 *)Tilemap_intro_water,
};
# 159 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/lens_flare_bg/header.c" 1



const u16 Palette_lens_flare_bg[] = INCBIN_U16("data/tilemaps/lens_flare_bg/palette.gbapal");
const u8 Tiles_lens_flare_bg[] = INCBIN_U8("data/tilemaps/lens_flare_bg/tiles.4bpp");
const u16 Tilemap_lens_flare_bg[] = INCBIN_U16("data/tilemaps/lens_flare_bg/tilemap.tilemap2");

const Tilemap lens_flare_bg = {
    .xTiles = 7,
    .yTiles = 16,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_lens_flare_bg,
    .tilesSize = sizeof(Tiles_lens_flare_bg),
    .palette = Palette_lens_flare_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_lens_flare_bg) / sizeof(u16),
    .map = Tilemap_lens_flare_bg,
};
# 160 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/sa2_logo_jp/header.c" 1



const u16 Palette_sa2_logo_jp[] = INCBIN_U16("data/tilemaps/sa2_logo_jp/palette.gbapal");
const u8 Tiles_sa2_logo_jp[] = INCBIN_U8("data/tilemaps/sa2_logo_jp/tiles.4bpp");
const u8 Tilemap_sa2_logo_jp[] = INCBIN_U8("data/tilemaps/sa2_logo_jp/tilemap.tilemap2");

const Tilemap sa2_logo_jp = {
    .xTiles = 26,
    .yTiles = 10,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sa2_logo_jp,
    .tilesSize = sizeof(Tiles_sa2_logo_jp),
    .palette = Palette_sa2_logo_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_sa2_logo_jp) / sizeof(u16),
    .map = (const u16 *)Tilemap_sa2_logo_jp,
};
# 161 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/sa2_logo_en/header.c" 1



const u16 Palette_sa2_logo_en[] = INCBIN_U16("data/tilemaps/sa2_logo_en/palette.gbapal");
const u8 Tiles_sa2_logo_en[] = INCBIN_U8("data/tilemaps/sa2_logo_en/tiles.4bpp");
const u8 Tilemap_sa2_logo_en[] = INCBIN_U8("data/tilemaps/sa2_logo_en/tilemap.tilemap2");

const Tilemap sa2_logo_en = {
    .xTiles = 26,
    .yTiles = 10,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sa2_logo_en,
    .tilesSize = sizeof(Tiles_sa2_logo_en),
    .palette = Palette_sa2_logo_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_sa2_logo_en) / sizeof(u16),
    .map = (const u16 *)Tilemap_sa2_logo_en,
};
# 162 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0/header.c" 1



const u16 Palette_storyframe_cream_unlock_0[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0),
    .palette = Palette_storyframe_cream_unlock_0,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0,
};
# 163 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_dlg_en/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_dlg_en),
    .palette = Palette_storyframe_cream_unlock_0_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_dlg_en,
};
# 164 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_dlg_fr/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_dlg_fr),
    .palette = Palette_storyframe_cream_unlock_0_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_dlg_fr,
};
# 165 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_dlg_de/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_dlg_de),
    .palette = Palette_storyframe_cream_unlock_0_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_dlg_de,
};
# 166 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_dlg_it/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_dlg_it),
    .palette = Palette_storyframe_cream_unlock_0_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_dlg_it,
};
# 167 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_dlg_jp/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_dlg_jp),
    .palette = Palette_storyframe_cream_unlock_0_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_dlg_jp,
};
# 168 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_dlg_es/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_dlg_es),
    .palette = Palette_storyframe_cream_unlock_0_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_dlg_es,
};
# 169 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1/header.c" 1



const u16 Palette_storyframe_cream_unlock_1[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1),
    .palette = Palette_storyframe_cream_unlock_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1,
};
# 170 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_dlg_en/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_dlg_en),
    .palette = Palette_storyframe_cream_unlock_1_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_dlg_en,
};
# 171 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_dlg_fr/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_dlg_fr),
    .palette = Palette_storyframe_cream_unlock_1_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_dlg_fr,
};
# 172 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_dlg_de/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_dlg_de),
    .palette = Palette_storyframe_cream_unlock_1_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_dlg_de,
};
# 173 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_dlg_it/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_dlg_it),
    .palette = Palette_storyframe_cream_unlock_1_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_dlg_it,
};
# 174 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_dlg_jp/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_dlg_jp),
    .palette = Palette_storyframe_cream_unlock_1_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_dlg_jp,
};
# 175 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_dlg_es/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_dlg_es),
    .palette = Palette_storyframe_cream_unlock_1_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_dlg_es,
};
# 176 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2/header.c" 1



const u16 Palette_storyframe_cream_unlock_2[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2),
    .palette = Palette_storyframe_cream_unlock_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2,
};
# 177 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2_dlg_en/header.c" 1



const u16 Palette_storyframe_cream_unlock_2_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2_dlg_en),
    .palette = Palette_storyframe_cream_unlock_2_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2_dlg_en,
};
# 178 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2_dlg_fr/header.c" 1



const u16 Palette_storyframe_cream_unlock_2_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2_dlg_fr),
    .palette = Palette_storyframe_cream_unlock_2_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2_dlg_fr,
};
# 179 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2_dlg_de/header.c" 1



const u16 Palette_storyframe_cream_unlock_2_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2_dlg_de),
    .palette = Palette_storyframe_cream_unlock_2_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2_dlg_de,
};
# 180 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2_dlg_it/header.c" 1



const u16 Palette_storyframe_cream_unlock_2_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2_dlg_it),
    .palette = Palette_storyframe_cream_unlock_2_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2_dlg_it,
};
# 181 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2_dlg_jp/header.c" 1



const u16 Palette_storyframe_cream_unlock_2_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2_dlg_jp),
    .palette = Palette_storyframe_cream_unlock_2_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2_dlg_jp,
};
# 182 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_2_dlg_es/header.c" 1



const u16 Palette_storyframe_cream_unlock_2_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_2_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_2_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_2_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_2_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_2_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_2_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_2_dlg_es),
    .palette = Palette_storyframe_cream_unlock_2_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_2_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_2_dlg_es,
};
# 183 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3/header.c" 1



const u16 Palette_storyframe_cream_unlock_3[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3),
    .palette = Palette_storyframe_cream_unlock_3,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3,
};
# 184 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_dlg_en/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_dlg_en),
    .palette = Palette_storyframe_cream_unlock_3_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_dlg_en,
};
# 185 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_dlg_fr/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_dlg_fr),
    .palette = Palette_storyframe_cream_unlock_3_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_dlg_fr,
};
# 186 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_dlg_de/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_dlg_de),
    .palette = Palette_storyframe_cream_unlock_3_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_dlg_de,
};
# 187 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_dlg_it/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_dlg_it),
    .palette = Palette_storyframe_cream_unlock_3_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_dlg_it,
};
# 188 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_dlg_jp/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_dlg_jp),
    .palette = Palette_storyframe_cream_unlock_3_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_dlg_jp,
};
# 189 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_dlg_es/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_dlg_es),
    .palette = Palette_storyframe_cream_unlock_3_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_dlg_es,
};
# 190 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlocked_en/header.c" 1



const u16 Palette_storyframe_cream_unlocked_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_en/palette.gbapal");
const u8 Tiles_storyframe_cream_unlocked_en[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlocked_en/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlocked_en[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_en/tilemap.tilemap2");

const Tilemap storyframe_cream_unlocked_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlocked_en,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlocked_en),
    .palette = Palette_storyframe_cream_unlocked_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlocked_en) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlocked_en,
};
# 191 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlocked_fr/header.c" 1



const u16 Palette_storyframe_cream_unlocked_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_fr/palette.gbapal");
const u8 Tiles_storyframe_cream_unlocked_fr[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlocked_fr/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlocked_fr[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_fr/tilemap.tilemap2");

const Tilemap storyframe_cream_unlocked_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlocked_fr,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlocked_fr),
    .palette = Palette_storyframe_cream_unlocked_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlocked_fr) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlocked_fr,
};
# 192 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlocked_de/header.c" 1



const u16 Palette_storyframe_cream_unlocked_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_de/palette.gbapal");
const u8 Tiles_storyframe_cream_unlocked_de[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlocked_de/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlocked_de[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_de/tilemap.tilemap2");

const Tilemap storyframe_cream_unlocked_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlocked_de,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlocked_de),
    .palette = Palette_storyframe_cream_unlocked_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlocked_de) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlocked_de,
};
# 193 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlocked_it/header.c" 1



const u16 Palette_storyframe_cream_unlocked_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_it/palette.gbapal");
const u8 Tiles_storyframe_cream_unlocked_it[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlocked_it/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlocked_it[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_it/tilemap.tilemap2");

const Tilemap storyframe_cream_unlocked_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlocked_it,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlocked_it),
    .palette = Palette_storyframe_cream_unlocked_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlocked_it) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlocked_it,
};
# 194 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlocked_jp/header.c" 1



const u16 Palette_storyframe_cream_unlocked_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_jp/palette.gbapal");
const u8 Tiles_storyframe_cream_unlocked_jp[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlocked_jp/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlocked_jp[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_jp/tilemap.tilemap2");

const Tilemap storyframe_cream_unlocked_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlocked_jp,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlocked_jp),
    .palette = Palette_storyframe_cream_unlocked_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlocked_jp) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlocked_jp,
};
# 195 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlocked_es/header.c" 1



const u16 Palette_storyframe_cream_unlocked_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_es/palette.gbapal");
const u8 Tiles_storyframe_cream_unlocked_es[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlocked_es/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlocked_es[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlocked_es/tilemap.tilemap2");

const Tilemap storyframe_cream_unlocked_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlocked_es,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlocked_es),
    .palette = Palette_storyframe_cream_unlocked_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlocked_es) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlocked_es,
};
# 196 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0),
    .palette = Palette_storyframe_knuckles_unlock_0,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0,
};
# 197 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0_dlg_en/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0_dlg_en),
    .palette = Palette_storyframe_knuckles_unlock_0_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0_dlg_en,
};
# 198 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0_dlg_fr/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0_dlg_fr),
    .palette = Palette_storyframe_knuckles_unlock_0_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0_dlg_fr,
};
# 199 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0_dlg_de/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0_dlg_de),
    .palette = Palette_storyframe_knuckles_unlock_0_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0_dlg_de,
};
# 200 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0_dlg_it/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0_dlg_it),
    .palette = Palette_storyframe_knuckles_unlock_0_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0_dlg_it,
};
# 201 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0_dlg_jp/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0_dlg_jp),
    .palette = Palette_storyframe_knuckles_unlock_0_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0_dlg_jp,
};
# 202 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_0_dlg_es/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_0_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_0_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_0_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_0_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_0_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_0_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_0_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_0_dlg_es),
    .palette = Palette_storyframe_knuckles_unlock_0_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_0_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_0_dlg_es,
};
# 203 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1),
    .palette = Palette_storyframe_knuckles_unlock_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1,
};
# 204 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_dlg_en/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_dlg_en),
    .palette = Palette_storyframe_knuckles_unlock_1_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_dlg_en,
};
# 205 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_dlg_fr/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_dlg_fr),
    .palette = Palette_storyframe_knuckles_unlock_1_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_dlg_fr,
};
# 206 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_dlg_de/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_dlg_de),
    .palette = Palette_storyframe_knuckles_unlock_1_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_dlg_de,
};
# 207 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_dlg_it/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_dlg_it),
    .palette = Palette_storyframe_knuckles_unlock_1_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_dlg_it,
};
# 208 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_dlg_jp/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_dlg_jp),
    .palette = Palette_storyframe_knuckles_unlock_1_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_dlg_jp,
};
# 209 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_dlg_es/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_dlg_es),
    .palette = Palette_storyframe_knuckles_unlock_1_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_dlg_es,
};
# 210 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2),
    .palette = Palette_storyframe_knuckles_unlock_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2,
};
# 211 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2_dlg_en/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2_dlg_en),
    .palette = Palette_storyframe_knuckles_unlock_2_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2_dlg_en,
};
# 212 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2_dlg_fr/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2_dlg_fr),
    .palette = Palette_storyframe_knuckles_unlock_2_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2_dlg_fr,
};
# 213 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2_dlg_de/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2_dlg_de),
    .palette = Palette_storyframe_knuckles_unlock_2_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2_dlg_de,
};
# 214 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2_dlg_it/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2_dlg_it),
    .palette = Palette_storyframe_knuckles_unlock_2_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2_dlg_it,
};
# 215 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2_dlg_jp/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2_dlg_jp),
    .palette = Palette_storyframe_knuckles_unlock_2_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2_dlg_jp,
};
# 216 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_2_dlg_es/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_2_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_2_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_2_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_2_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_2_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_2_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_2_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_2_dlg_es),
    .palette = Palette_storyframe_knuckles_unlock_2_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_2_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_2_dlg_es,
};
# 217 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3),
    .palette = Palette_storyframe_knuckles_unlock_3,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3,
};
# 218 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3_dlg_en/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3_dlg_en),
    .palette = Palette_storyframe_knuckles_unlock_3_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3_dlg_en,
};
# 219 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3_dlg_fr/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3_dlg_fr),
    .palette = Palette_storyframe_knuckles_unlock_3_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3_dlg_fr,
};
# 220 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3_dlg_de/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3_dlg_de),
    .palette = Palette_storyframe_knuckles_unlock_3_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3_dlg_de,
};
# 221 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3_dlg_it/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3_dlg_it),
    .palette = Palette_storyframe_knuckles_unlock_3_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3_dlg_it,
};
# 222 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3_dlg_jp/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3_dlg_jp),
    .palette = Palette_storyframe_knuckles_unlock_3_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3_dlg_jp,
};
# 223 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_3_dlg_es/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_3_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_3_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_3_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_3_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_3_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_3_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_3_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_3_dlg_es),
    .palette = Palette_storyframe_knuckles_unlock_3_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_3_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_3_dlg_es,
};
# 224 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlocked_en/header.c" 1



const u16 Palette_storyframe_knuckles_unlocked_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_en/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlocked_en[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlocked_en/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlocked_en[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_en/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlocked_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlocked_en,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlocked_en),
    .palette = Palette_storyframe_knuckles_unlocked_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlocked_en) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlocked_en,
};
# 225 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlocked_fr/header.c" 1



const u16 Palette_storyframe_knuckles_unlocked_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_fr/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlocked_fr[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlocked_fr/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlocked_fr[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_fr/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlocked_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlocked_fr,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlocked_fr),
    .palette = Palette_storyframe_knuckles_unlocked_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlocked_fr) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlocked_fr,
};
# 226 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlocked_de/header.c" 1



const u16 Palette_storyframe_knuckles_unlocked_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_de/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlocked_de[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlocked_de/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlocked_de[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_de/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlocked_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlocked_de,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlocked_de),
    .palette = Palette_storyframe_knuckles_unlocked_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlocked_de) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlocked_de,
};
# 227 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlocked_it/header.c" 1



const u16 Palette_storyframe_knuckles_unlocked_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_it/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlocked_it[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlocked_it/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlocked_it[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_it/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlocked_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlocked_it,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlocked_it),
    .palette = Palette_storyframe_knuckles_unlocked_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlocked_it) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlocked_it,
};
# 228 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlocked_jp/header.c" 1



const u16 Palette_storyframe_knuckles_unlocked_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_jp/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlocked_jp[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlocked_jp/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlocked_jp[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_jp/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlocked_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlocked_jp,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlocked_jp),
    .palette = Palette_storyframe_knuckles_unlocked_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlocked_jp) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlocked_jp,
};
# 229 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlocked_es/header.c" 1



const u16 Palette_storyframe_knuckles_unlocked_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_es/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlocked_es[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlocked_es/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlocked_es[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlocked_es/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlocked_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlocked_es,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlocked_es),
    .palette = Palette_storyframe_knuckles_unlocked_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlocked_es) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlocked_es,
};
# 230 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0/header.c" 1



const u16 Palette_storyframe_tails_unlock_0[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0),
    .palette = Palette_storyframe_tails_unlock_0,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0,
};
# 231 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0_dlg_en/header.c" 1



const u16 Palette_storyframe_tails_unlock_0_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0_dlg_en),
    .palette = Palette_storyframe_tails_unlock_0_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0_dlg_en,
};
# 232 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0_dlg_fr/header.c" 1



const u16 Palette_storyframe_tails_unlock_0_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0_dlg_fr),
    .palette = Palette_storyframe_tails_unlock_0_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0_dlg_fr,
};
# 233 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0_dlg_de/header.c" 1



const u16 Palette_storyframe_tails_unlock_0_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0_dlg_de),
    .palette = Palette_storyframe_tails_unlock_0_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0_dlg_de,
};
# 234 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0_dlg_it/header.c" 1



const u16 Palette_storyframe_tails_unlock_0_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0_dlg_it),
    .palette = Palette_storyframe_tails_unlock_0_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0_dlg_it,
};
# 235 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0_dlg_jp/header.c" 1



const u16 Palette_storyframe_tails_unlock_0_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0_dlg_jp),
    .palette = Palette_storyframe_tails_unlock_0_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0_dlg_jp,
};
# 236 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_0_dlg_es/header.c" 1



const u16 Palette_storyframe_tails_unlock_0_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_0_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_0_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_0_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_0_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_0_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_0_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_0_dlg_es),
    .palette = Palette_storyframe_tails_unlock_0_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_0_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_0_dlg_es,
};
# 237 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1/header.c" 1



const u16 Palette_storyframe_tails_unlock_1[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1),
    .palette = Palette_storyframe_tails_unlock_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1,
};
# 238 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_dlg_en/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_dlg_en),
    .palette = Palette_storyframe_tails_unlock_1_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_dlg_en,
};
# 239 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_dlg_fr/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_dlg_fr),
    .palette = Palette_storyframe_tails_unlock_1_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_dlg_fr,
};
# 240 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_dlg_de/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_dlg_de),
    .palette = Palette_storyframe_tails_unlock_1_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_dlg_de,
};
# 241 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_dlg_it/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_dlg_it),
    .palette = Palette_storyframe_tails_unlock_1_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_dlg_it,
};
# 242 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_dlg_jp/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_dlg_jp),
    .palette = Palette_storyframe_tails_unlock_1_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_dlg_jp,
};
# 243 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_dlg_es/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_dlg_es),
    .palette = Palette_storyframe_tails_unlock_1_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_dlg_es,
};
# 244 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2/header.c" 1



const u16 Palette_storyframe_tails_unlock_2[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2),
    .palette = Palette_storyframe_tails_unlock_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2,
};
# 245 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2_dlg_en/header.c" 1



const u16 Palette_storyframe_tails_unlock_2_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2_dlg_en),
    .palette = Palette_storyframe_tails_unlock_2_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2_dlg_en,
};
# 246 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2_dlg_fr/header.c" 1



const u16 Palette_storyframe_tails_unlock_2_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2_dlg_fr),
    .palette = Palette_storyframe_tails_unlock_2_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2_dlg_fr,
};
# 247 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2_dlg_de/header.c" 1



const u16 Palette_storyframe_tails_unlock_2_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2_dlg_de),
    .palette = Palette_storyframe_tails_unlock_2_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2_dlg_de,
};
# 248 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2_dlg_it/header.c" 1



const u16 Palette_storyframe_tails_unlock_2_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2_dlg_it),
    .palette = Palette_storyframe_tails_unlock_2_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2_dlg_it,
};
# 249 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2_dlg_jp/header.c" 1



const u16 Palette_storyframe_tails_unlock_2_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2_dlg_jp),
    .palette = Palette_storyframe_tails_unlock_2_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2_dlg_jp,
};
# 250 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_2_dlg_es/header.c" 1



const u16 Palette_storyframe_tails_unlock_2_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_2_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_2_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_2_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_2_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_2_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_2_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_2_dlg_es),
    .palette = Palette_storyframe_tails_unlock_2_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_2_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_2_dlg_es,
};
# 251 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3/header.c" 1



const u16 Palette_storyframe_tails_unlock_3[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3),
    .palette = Palette_storyframe_tails_unlock_3,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3,
};
# 252 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3_dlg_en/header.c" 1



const u16 Palette_storyframe_tails_unlock_3_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_en/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3_dlg_en[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3_dlg_en/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3_dlg_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_en/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3_dlg_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3_dlg_en,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3_dlg_en),
    .palette = Palette_storyframe_tails_unlock_3_dlg_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3_dlg_en) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3_dlg_en,
};
# 253 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3_dlg_fr/header.c" 1



const u16 Palette_storyframe_tails_unlock_3_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_fr/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3_dlg_fr[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3_dlg_fr/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3_dlg_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_fr/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3_dlg_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3_dlg_fr,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3_dlg_fr),
    .palette = Palette_storyframe_tails_unlock_3_dlg_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3_dlg_fr) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3_dlg_fr,
};
# 254 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3_dlg_de/header.c" 1



const u16 Palette_storyframe_tails_unlock_3_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_de/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3_dlg_de[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3_dlg_de/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3_dlg_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_de/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3_dlg_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3_dlg_de,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3_dlg_de),
    .palette = Palette_storyframe_tails_unlock_3_dlg_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3_dlg_de) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3_dlg_de,
};
# 255 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3_dlg_it/header.c" 1



const u16 Palette_storyframe_tails_unlock_3_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_it/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3_dlg_it[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3_dlg_it/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3_dlg_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_it/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3_dlg_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3_dlg_it,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3_dlg_it),
    .palette = Palette_storyframe_tails_unlock_3_dlg_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3_dlg_it) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3_dlg_it,
};
# 256 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3_dlg_jp/header.c" 1



const u16 Palette_storyframe_tails_unlock_3_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_jp/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3_dlg_jp[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3_dlg_jp/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3_dlg_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_jp/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3_dlg_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3_dlg_jp,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3_dlg_jp),
    .palette = Palette_storyframe_tails_unlock_3_dlg_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3_dlg_jp) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3_dlg_jp,
};
# 257 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_3_dlg_es/header.c" 1



const u16 Palette_storyframe_tails_unlock_3_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_es/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_3_dlg_es[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_3_dlg_es/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_3_dlg_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_3_dlg_es/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_3_dlg_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_3_dlg_es,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_3_dlg_es),
    .palette = Palette_storyframe_tails_unlock_3_dlg_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_3_dlg_es) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_3_dlg_es,
};
# 258 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlocked_en/header.c" 1



const u16 Palette_storyframe_tails_unlocked_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_en/palette.gbapal");
const u8 Tiles_storyframe_tails_unlocked_en[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlocked_en/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlocked_en[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_en/tilemap.tilemap2");

const Tilemap storyframe_tails_unlocked_en = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlocked_en,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlocked_en),
    .palette = Palette_storyframe_tails_unlocked_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlocked_en) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlocked_en,
};
# 259 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlocked_fr/header.c" 1



const u16 Palette_storyframe_tails_unlocked_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_fr/palette.gbapal");
const u8 Tiles_storyframe_tails_unlocked_fr[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlocked_fr/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlocked_fr[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_fr/tilemap.tilemap2");

const Tilemap storyframe_tails_unlocked_fr = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlocked_fr,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlocked_fr),
    .palette = Palette_storyframe_tails_unlocked_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlocked_fr) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlocked_fr,
};
# 260 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlocked_de/header.c" 1



const u16 Palette_storyframe_tails_unlocked_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_de/palette.gbapal");
const u8 Tiles_storyframe_tails_unlocked_de[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlocked_de/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlocked_de[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_de/tilemap.tilemap2");

const Tilemap storyframe_tails_unlocked_de = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlocked_de,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlocked_de),
    .palette = Palette_storyframe_tails_unlocked_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlocked_de) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlocked_de,
};
# 261 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlocked_it/header.c" 1



const u16 Palette_storyframe_tails_unlocked_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_it/palette.gbapal");
const u8 Tiles_storyframe_tails_unlocked_it[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlocked_it/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlocked_it[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_it/tilemap.tilemap2");

const Tilemap storyframe_tails_unlocked_it = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlocked_it,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlocked_it),
    .palette = Palette_storyframe_tails_unlocked_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlocked_it) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlocked_it,
};
# 262 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlocked_jp/header.c" 1



const u16 Palette_storyframe_tails_unlocked_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_jp/palette.gbapal");
const u8 Tiles_storyframe_tails_unlocked_jp[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlocked_jp/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlocked_jp[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_jp/tilemap.tilemap2");

const Tilemap storyframe_tails_unlocked_jp = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlocked_jp,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlocked_jp),
    .palette = Palette_storyframe_tails_unlocked_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlocked_jp) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlocked_jp,
};
# 263 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlocked_es/header.c" 1



const u16 Palette_storyframe_tails_unlocked_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_es/palette.gbapal");
const u8 Tiles_storyframe_tails_unlocked_es[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlocked_es/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlocked_es[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlocked_es/tilemap.tilemap2");

const Tilemap storyframe_tails_unlocked_es = {
    .xTiles = 30,
    .yTiles = 5,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlocked_es,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlocked_es),
    .palette = Palette_storyframe_tails_unlocked_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlocked_es) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlocked_es,
};
# 264 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_amy_it/header.c" 1



const u16 Palette_unlocked_amy_it[] = INCBIN_U16("data/tilemaps/unlocked_amy_it/palette.gbapal");
const u8 Tiles_unlocked_amy_it[] = INCBIN_U8("data/tilemaps/unlocked_amy_it/tiles.4bpp");
const u16 Tilemap_unlocked_amy_it[] = INCBIN_U16("data/tilemaps/unlocked_amy_it/tilemap.tilemap2");

const Tilemap unlocked_amy_it = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_amy_it,
    .tilesSize = sizeof(Tiles_unlocked_amy_it),
    .palette = Palette_unlocked_amy_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_amy_it) / sizeof(u16),
    .map = Tilemap_unlocked_amy_it,
};
# 265 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_knuckles_unlock_1_sepia/header.c" 1



const u16 Palette_storyframe_knuckles_unlock_1_sepia[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_sepia/palette.gbapal");
const u8 Tiles_storyframe_knuckles_unlock_1_sepia[] = INCBIN_U8("data/tilemaps/storyframe_knuckles_unlock_1_sepia/tiles.4bpp");
const u16 Tilemap_storyframe_knuckles_unlock_1_sepia[] = INCBIN_U16("data/tilemaps/storyframe_knuckles_unlock_1_sepia/tilemap.tilemap2");

const Tilemap storyframe_knuckles_unlock_1_sepia = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_knuckles_unlock_1_sepia,
    .tilesSize = sizeof(Tiles_storyframe_knuckles_unlock_1_sepia),
    .palette = Palette_storyframe_knuckles_unlock_1_sepia,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_knuckles_unlock_1_sepia) / sizeof(u16),
    .map = Tilemap_storyframe_knuckles_unlock_1_sepia,
};
# 266 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_fall_bg/header.c" 1



const u16 Palette_cutscene_final_ending_fall_bg[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_bg/palette.gbapal");
const u8 Tiles_cutscene_final_ending_fall_bg[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_fall_bg/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_fall_bg[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_bg/tilemap.tilemap2");

const Tilemap cutscene_final_ending_fall_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_fall_bg,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_fall_bg),
    .palette = Palette_cutscene_final_ending_fall_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_fall_bg) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_fall_bg,
};
# 267 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_amy_jp/header.c" 1



const u16 Palette_unlocked_amy_jp[] = INCBIN_U16("data/tilemaps/unlocked_amy_jp/palette.gbapal");
const u8 Tiles_unlocked_amy_jp[] = INCBIN_U8("data/tilemaps/unlocked_amy_jp/tiles.4bpp");
const u16 Tilemap_unlocked_amy_jp[] = INCBIN_U16("data/tilemaps/unlocked_amy_jp/tilemap.tilemap2");

const Tilemap unlocked_amy_jp = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_amy_jp,
    .tilesSize = sizeof(Tiles_unlocked_amy_jp),
    .palette = Palette_unlocked_amy_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_amy_jp) / sizeof(u16),
    .map = Tilemap_unlocked_amy_jp,
};
# 268 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_3_sepia/header.c" 1



const u16 Palette_storyframe_cream_unlock_3_sepia[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_sepia/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_3_sepia[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_3_sepia/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_3_sepia[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_3_sepia/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_3_sepia = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_3_sepia,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_3_sepia),
    .palette = Palette_storyframe_cream_unlock_3_sepia,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_3_sepia) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_3_sepia,
};
# 269 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_fall_clouds/header.c" 1



const u16 Palette_cutscene_final_ending_fall_clouds[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_clouds/palette.gbapal");
const u8 Tiles_cutscene_final_ending_fall_clouds[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_fall_clouds/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_fall_clouds[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_clouds/tilemap.tilemap2");

const Tilemap cutscene_final_ending_fall_clouds = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_fall_clouds,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_fall_clouds),
    .palette = Palette_cutscene_final_ending_fall_clouds,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_fall_clouds) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_fall_clouds,
};
# 270 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_amy_es/header.c" 1



const u16 Palette_unlocked_amy_es[] = INCBIN_U16("data/tilemaps/unlocked_amy_es/palette.gbapal");
const u8 Tiles_unlocked_amy_es[] = INCBIN_U8("data/tilemaps/unlocked_amy_es/tiles.4bpp");
const u16 Tilemap_unlocked_amy_es[] = INCBIN_U16("data/tilemaps/unlocked_amy_es/tilemap.tilemap2");

const Tilemap unlocked_amy_es = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_amy_es,
    .tilesSize = sizeof(Tiles_unlocked_amy_es),
    .palette = Palette_unlocked_amy_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_amy_es) / sizeof(u16),
    .map = Tilemap_unlocked_amy_es,
};
# 271 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_0/header.c" 1



const u16 Palette_credits_0[] = INCBIN_U16("data/tilemaps/credits_0/palette.gbapal");
const u8 Tiles_credits_0[] = INCBIN_U8("data/tilemaps/credits_0/tiles.4bpp");
const u16 Tilemap_credits_0[] = INCBIN_U16("data/tilemaps/credits_0/tilemap.tilemap2");

const Tilemap credits_0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_0,
    .tilesSize = sizeof(Tiles_credits_0),
    .palette = Palette_credits_0,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_0) / sizeof(u16),
    .map = Tilemap_credits_0,
};
# 272 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_fall_bg_dark/header.c" 1



const u16 Palette_cutscene_final_ending_fall_bg_dark[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_bg_dark/palette.gbapal");
const u8 Tiles_cutscene_final_ending_fall_bg_dark[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_fall_bg_dark/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_fall_bg_dark[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_bg_dark/tilemap.tilemap2");

const Tilemap cutscene_final_ending_fall_bg_dark = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_fall_bg_dark,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_fall_bg_dark),
    .palette = Palette_cutscene_final_ending_fall_bg_dark,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_fall_bg_dark) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_fall_bg_dark,
};
# 273 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_sa2_logo_jp/header.c" 1



const u16 Palette_credits_sa2_logo_jp[] = INCBIN_U16("data/tilemaps/credits_sa2_logo_jp/palette.gbapal");
const u8 Tiles_credits_sa2_logo_jp[] = INCBIN_U8("data/tilemaps/credits_sa2_logo_jp/tiles.4bpp");
const u16 Tilemap_credits_sa2_logo_jp[] = INCBIN_U16("data/tilemaps/credits_sa2_logo_jp/tilemap.tilemap2");

const Tilemap credits_sa2_logo_jp = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_sa2_logo_jp,
    .tilesSize = sizeof(Tiles_credits_sa2_logo_jp),
    .palette = Palette_credits_sa2_logo_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_sa2_logo_jp) / sizeof(u16),
    .map = Tilemap_credits_sa2_logo_jp,
};
# 274 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_1/header.c" 1



const u16 Palette_credits_1[] = INCBIN_U16("data/tilemaps/credits_1/palette.gbapal");
const u8 Tiles_credits_1[] = INCBIN_U8("data/tilemaps/credits_1/tiles.4bpp");
const u16 Tilemap_credits_1[] = INCBIN_U16("data/tilemaps/credits_1/tilemap.tilemap2");

const Tilemap credits_1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_1,
    .tilesSize = sizeof(Tiles_credits_1),
    .palette = Palette_credits_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_1) / sizeof(u16),
    .map = Tilemap_credits_1,
};
# 275 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_fall_bg_dark_2/header.c" 1



const u16 Palette_cutscene_final_ending_fall_bg_dark_2[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_bg_dark_2/palette.gbapal");
const u8 Tiles_cutscene_final_ending_fall_bg_dark_2[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_fall_bg_dark_2/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_fall_bg_dark_2[]
    = INCBIN_U16("data/tilemaps/cutscene_final_ending_fall_bg_dark_2/tilemap.tilemap2");

const Tilemap cutscene_final_ending_fall_bg_dark_2 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_fall_bg_dark_2,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_fall_bg_dark_2),
    .palette = Palette_cutscene_final_ending_fall_bg_dark_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_fall_bg_dark_2) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_fall_bg_dark_2,
};
# 276 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_sa2_logo_en/header.c" 1



const u16 Palette_credits_sa2_logo_en[] = INCBIN_U16("data/tilemaps/credits_sa2_logo_en/palette.gbapal");
const u8 Tiles_credits_sa2_logo_en[] = INCBIN_U8("data/tilemaps/credits_sa2_logo_en/tiles.4bpp");
const u16 Tilemap_credits_sa2_logo_en[] = INCBIN_U16("data/tilemaps/credits_sa2_logo_en/tilemap.tilemap2");

const Tilemap credits_sa2_logo_en = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_sa2_logo_en,
    .tilesSize = sizeof(Tiles_credits_sa2_logo_en),
    .palette = Palette_credits_sa2_logo_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_sa2_logo_en) / sizeof(u16),
    .map = Tilemap_credits_sa2_logo_en,
};
# 277 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_2/header.c" 1



const u16 Palette_credits_2[] = INCBIN_U16("data/tilemaps/credits_2/palette.gbapal");
const u8 Tiles_credits_2[] = INCBIN_U8("data/tilemaps/credits_2/tiles.4bpp");
const u16 Tilemap_credits_2[] = INCBIN_U16("data/tilemaps/credits_2/tilemap.tilemap2");

const Tilemap credits_2 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_2,
    .tilesSize = sizeof(Tiles_credits_2),
    .palette = Palette_credits_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_2) / sizeof(u16),
    .map = Tilemap_credits_2,
};
# 278 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/collect_all_chaos_emeralds_jp/header.c" 1



const u16 Palette_collect_all_chaos_emeralds_jp[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_jp/palette.gbapal");
const u8 Tiles_collect_all_chaos_emeralds_jp[] = INCBIN_U8("data/tilemaps/collect_all_chaos_emeralds_jp/tiles.4bpp");
const u16 Tilemap_collect_all_chaos_emeralds_jp[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_jp/tilemap.tilemap2");

const Tilemap collect_all_chaos_emeralds_jp = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_collect_all_chaos_emeralds_jp,
    .tilesSize = sizeof(Tiles_collect_all_chaos_emeralds_jp),
    .palette = Palette_collect_all_chaos_emeralds_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_collect_all_chaos_emeralds_jp) / sizeof(u16),
    .map = Tilemap_collect_all_chaos_emeralds_jp,
};
# 279 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_land_flower_field/header.c" 1



const u16 Palette_cutscene_final_ending_land_flower_field[]
    = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_flower_field/palette.gbapal");
const u8 Tiles_cutscene_final_ending_land_flower_field[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_land_flower_field/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_land_flower_field[]
    = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_flower_field/tilemap.tilemap2");

const Tilemap cutscene_final_ending_land_flower_field = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_land_flower_field,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_land_flower_field),
    .palette = Palette_cutscene_final_ending_land_flower_field,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_land_flower_field) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_land_flower_field,
};
# 280 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_3/header.c" 1



const u16 Palette_credits_3[] = INCBIN_U16("data/tilemaps/credits_3/palette.gbapal");
const u8 Tiles_credits_3[] = INCBIN_U8("data/tilemaps/credits_3/tiles.4bpp");
const u16 Tilemap_credits_3[] = INCBIN_U16("data/tilemaps/credits_3/tilemap.tilemap2");

const Tilemap credits_3 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_3,
    .tilesSize = sizeof(Tiles_credits_3),
    .palette = Palette_credits_3,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_3) / sizeof(u16),
    .map = Tilemap_credits_3,
};
# 281 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/collect_all_chaos_emeralds_en/header.c" 1



const u16 Palette_collect_all_chaos_emeralds_en[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_en/palette.gbapal");
const u8 Tiles_collect_all_chaos_emeralds_en[] = INCBIN_U8("data/tilemaps/collect_all_chaos_emeralds_en/tiles.4bpp");
const u16 Tilemap_collect_all_chaos_emeralds_en[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_en/tilemap.tilemap2");

const Tilemap collect_all_chaos_emeralds_en = {
    .xTiles = 30,
    .yTiles = 6,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_collect_all_chaos_emeralds_en,
    .tilesSize = sizeof(Tiles_collect_all_chaos_emeralds_en),
    .palette = Palette_collect_all_chaos_emeralds_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_collect_all_chaos_emeralds_en) / sizeof(u16),
    .map = Tilemap_collect_all_chaos_emeralds_en,
};
# 282 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_land_bg_alt/header.c" 1



const u16 Palette_cutscene_final_ending_land_bg_alt[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_bg_alt/palette.gbapal");
const u8 Tiles_cutscene_final_ending_land_bg_alt[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_land_bg_alt/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_land_bg_alt[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_bg_alt/tilemap.tilemap2");

const Tilemap cutscene_final_ending_land_bg_alt = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_land_bg_alt,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_land_bg_alt),
    .palette = Palette_cutscene_final_ending_land_bg_alt,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_land_bg_alt) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_land_bg_alt,
};
# 283 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_4/header.c" 1



const u16 Palette_credits_4[] = INCBIN_U16("data/tilemaps/credits_4/palette.gbapal");
const u8 Tiles_credits_4[] = INCBIN_U8("data/tilemaps/credits_4/tiles.4bpp");
const u16 Tilemap_credits_4[] = INCBIN_U16("data/tilemaps/credits_4/tilemap.tilemap2");

const Tilemap credits_4 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_4,
    .tilesSize = sizeof(Tiles_credits_4),
    .palette = Palette_credits_4,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_4) / sizeof(u16),
    .map = Tilemap_credits_4,
};
# 284 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/collect_all_chaos_emeralds_fr/header.c" 1



const u16 Palette_collect_all_chaos_emeralds_fr[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_fr/palette.gbapal");
const u8 Tiles_collect_all_chaos_emeralds_fr[] = INCBIN_U8("data/tilemaps/collect_all_chaos_emeralds_fr/tiles.4bpp");
const u16 Tilemap_collect_all_chaos_emeralds_fr[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_fr/tilemap.tilemap2");

const Tilemap collect_all_chaos_emeralds_fr = {
    .xTiles = 30,
    .yTiles = 6,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_collect_all_chaos_emeralds_fr,
    .tilesSize = sizeof(Tiles_collect_all_chaos_emeralds_fr),
    .palette = Palette_collect_all_chaos_emeralds_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_collect_all_chaos_emeralds_fr) / sizeof(u16),
    .map = Tilemap_collect_all_chaos_emeralds_fr,
};
# 285 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_land_fg/header.c" 1



const u16 Palette_cutscene_final_ending_land_fg[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_fg/palette.gbapal");
const u8 Tiles_cutscene_final_ending_land_fg[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_land_fg/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_land_fg[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_fg/tilemap.tilemap2");

const Tilemap cutscene_final_ending_land_fg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_land_fg,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_land_fg),
    .palette = Palette_cutscene_final_ending_land_fg,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_land_fg) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_land_fg,
};
# 286 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_5/header.c" 1



const u16 Palette_credits_5[] = INCBIN_U16("data/tilemaps/credits_5/palette.gbapal");
const u8 Tiles_credits_5[] = INCBIN_U8("data/tilemaps/credits_5/tiles.4bpp");
const u16 Tilemap_credits_5[] = INCBIN_U16("data/tilemaps/credits_5/tilemap.tilemap2");

const Tilemap credits_5 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_5,
    .tilesSize = sizeof(Tiles_credits_5),
    .palette = Palette_credits_5,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_5) / sizeof(u16),
    .map = Tilemap_credits_5,
};
# 287 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/collect_all_chaos_emeralds_de/header.c" 1



const u16 Palette_collect_all_chaos_emeralds_de[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_de/palette.gbapal");
const u8 Tiles_collect_all_chaos_emeralds_de[] = INCBIN_U8("data/tilemaps/collect_all_chaos_emeralds_de/tiles.4bpp");
const u16 Tilemap_collect_all_chaos_emeralds_de[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_de/tilemap.tilemap2");

const Tilemap collect_all_chaos_emeralds_de = {
    .xTiles = 30,
    .yTiles = 6,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_collect_all_chaos_emeralds_de,
    .tilesSize = sizeof(Tiles_collect_all_chaos_emeralds_de),
    .palette = Palette_collect_all_chaos_emeralds_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_collect_all_chaos_emeralds_de) / sizeof(u16),
    .map = Tilemap_collect_all_chaos_emeralds_de,
};
# 288 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_final_ending_land_bg/header.c" 1



const u16 Palette_cutscene_final_ending_land_bg[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_bg/palette.gbapal");
const u8 Tiles_cutscene_final_ending_land_bg[] = INCBIN_U8("data/tilemaps/cutscene_final_ending_land_bg/tiles.4bpp");
const u16 Tilemap_cutscene_final_ending_land_bg[] = INCBIN_U16("data/tilemaps/cutscene_final_ending_land_bg/tilemap.tilemap2");

const Tilemap cutscene_final_ending_land_bg = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_final_ending_land_bg,
    .tilesSize = sizeof(Tiles_cutscene_final_ending_land_bg),
    .palette = Palette_cutscene_final_ending_land_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_final_ending_land_bg) / sizeof(u16),
    .map = Tilemap_cutscene_final_ending_land_bg,
};
# 289 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_6/header.c" 1



const u16 Palette_credits_6[] = INCBIN_U16("data/tilemaps/credits_6/palette.gbapal");
const u8 Tiles_credits_6[] = INCBIN_U8("data/tilemaps/credits_6/tiles.4bpp");
const u16 Tilemap_credits_6[] = INCBIN_U16("data/tilemaps/credits_6/tilemap.tilemap2");

const Tilemap credits_6 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_6,
    .tilesSize = sizeof(Tiles_credits_6),
    .palette = Palette_credits_6,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_6) / sizeof(u16),
    .map = Tilemap_credits_6,
};
# 290 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/collect_all_chaos_emeralds_it/header.c" 1



const u16 Palette_collect_all_chaos_emeralds_it[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_it/palette.gbapal");
const u8 Tiles_collect_all_chaos_emeralds_it[] = INCBIN_U8("data/tilemaps/collect_all_chaos_emeralds_it/tiles.4bpp");
const u16 Tilemap_collect_all_chaos_emeralds_it[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_it/tilemap.tilemap2");

const Tilemap collect_all_chaos_emeralds_it = {
    .xTiles = 30,
    .yTiles = 6,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_collect_all_chaos_emeralds_it,
    .tilesSize = sizeof(Tiles_collect_all_chaos_emeralds_it),
    .palette = Palette_collect_all_chaos_emeralds_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_collect_all_chaos_emeralds_it) / sizeof(u16),
    .map = Tilemap_collect_all_chaos_emeralds_it,
};
# 291 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_7/header.c" 1



const u16 Palette_credits_7[] = INCBIN_U16("data/tilemaps/credits_7/palette.gbapal");
const u8 Tiles_credits_7[] = INCBIN_U8("data/tilemaps/credits_7/tiles.4bpp");
const u16 Tilemap_credits_7[] = INCBIN_U16("data/tilemaps/credits_7/tilemap.tilemap2");

const Tilemap credits_7 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_7,
    .tilesSize = sizeof(Tiles_credits_7),
    .palette = Palette_credits_7,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_7) / sizeof(u16),
    .map = Tilemap_credits_7,
};
# 292 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/collect_all_chaos_emeralds_es/header.c" 1



const u16 Palette_collect_all_chaos_emeralds_es[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_es/palette.gbapal");
const u8 Tiles_collect_all_chaos_emeralds_es[] = INCBIN_U8("data/tilemaps/collect_all_chaos_emeralds_es/tiles.4bpp");
const u16 Tilemap_collect_all_chaos_emeralds_es[] = INCBIN_U16("data/tilemaps/collect_all_chaos_emeralds_es/tilemap.tilemap2");

const Tilemap collect_all_chaos_emeralds_es = {
    .xTiles = 30,
    .yTiles = 6,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_collect_all_chaos_emeralds_es,
    .tilesSize = sizeof(Tiles_collect_all_chaos_emeralds_es),
    .palette = Palette_collect_all_chaos_emeralds_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_collect_all_chaos_emeralds_es) / sizeof(u16),
    .map = Tilemap_collect_all_chaos_emeralds_es,
};
# 293 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_8/header.c" 1



const u16 Palette_credits_8[] = INCBIN_U16("data/tilemaps/credits_8/palette.gbapal");
const u8 Tiles_credits_8[] = INCBIN_U8("data/tilemaps/credits_8/tiles.4bpp");
const u16 Tilemap_credits_8[] = INCBIN_U16("data/tilemaps/credits_8/tilemap.tilemap2");

const Tilemap credits_8 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_8,
    .tilesSize = sizeof(Tiles_credits_8),
    .palette = Palette_credits_8,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_8) / sizeof(u16),
    .map = Tilemap_credits_8,
};
# 294 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_tiny_chao_garden_en/header.c" 1



const u16 Palette_unlocked_tiny_chao_garden_en[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_en/palette.gbapal");
const u8 Tiles_unlocked_tiny_chao_garden_en[] = INCBIN_U8("data/tilemaps/unlocked_tiny_chao_garden_en/tiles.4bpp");
const u16 Tilemap_unlocked_tiny_chao_garden_en[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_en/tilemap.tilemap2");

const Tilemap unlocked_tiny_chao_garden_en = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_tiny_chao_garden_en,
    .tilesSize = sizeof(Tiles_unlocked_tiny_chao_garden_en),
    .palette = Palette_unlocked_tiny_chao_garden_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_tiny_chao_garden_en) / sizeof(u16),
    .map = Tilemap_unlocked_tiny_chao_garden_en,
};
# 295 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_catches_vanilla/header.c" 1



const u16 Palette_storyframe_sonic_catches_vanilla[] = INCBIN_U16("data/tilemaps/storyframe_sonic_catches_vanilla/palette.gbapal");
const u8 Tiles_storyframe_sonic_catches_vanilla[] = INCBIN_U8("data/tilemaps/storyframe_sonic_catches_vanilla/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_catches_vanilla[] = INCBIN_U16("data/tilemaps/storyframe_sonic_catches_vanilla/tilemap.tilemap2");

const Tilemap storyframe_sonic_catches_vanilla = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_catches_vanilla,
    .tilesSize = sizeof(Tiles_storyframe_sonic_catches_vanilla),
    .palette = Palette_storyframe_sonic_catches_vanilla,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_catches_vanilla) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_catches_vanilla,
};
# 296 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_9/header.c" 1



const u16 Palette_credits_9[] = INCBIN_U16("data/tilemaps/credits_9/palette.gbapal");
const u8 Tiles_credits_9[] = INCBIN_U8("data/tilemaps/credits_9/tiles.4bpp");
const u16 Tilemap_credits_9[] = INCBIN_U16("data/tilemaps/credits_9/tilemap.tilemap2");

const Tilemap credits_9 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_9,
    .tilesSize = sizeof(Tiles_credits_9),
    .palette = Palette_credits_9,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_9) / sizeof(u16),
    .map = Tilemap_credits_9,
};
# 297 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_tiny_chao_garden_fr/header.c" 1



const u16 Palette_unlocked_tiny_chao_garden_fr[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_fr/palette.gbapal");
const u8 Tiles_unlocked_tiny_chao_garden_fr[] = INCBIN_U8("data/tilemaps/unlocked_tiny_chao_garden_fr/tiles.4bpp");
const u16 Tilemap_unlocked_tiny_chao_garden_fr[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_fr/tilemap.tilemap2");

const Tilemap unlocked_tiny_chao_garden_fr = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_tiny_chao_garden_fr,
    .tilesSize = sizeof(Tiles_unlocked_tiny_chao_garden_fr),
    .palette = Palette_unlocked_tiny_chao_garden_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_tiny_chao_garden_fr) / sizeof(u16),
    .map = Tilemap_unlocked_tiny_chao_garden_fr,
};
# 298 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_finds_friends/header.c" 1



const u16 Palette_storyframe_sonic_finds_friends[] = INCBIN_U16("data/tilemaps/storyframe_sonic_finds_friends/palette.gbapal");
const u8 Tiles_storyframe_sonic_finds_friends[] = INCBIN_U8("data/tilemaps/storyframe_sonic_finds_friends/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_finds_friends[] = INCBIN_U16("data/tilemaps/storyframe_sonic_finds_friends/tilemap.tilemap2");

const Tilemap storyframe_sonic_finds_friends = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_finds_friends,
    .tilesSize = sizeof(Tiles_storyframe_sonic_finds_friends),
    .palette = Palette_storyframe_sonic_finds_friends,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_finds_friends) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_finds_friends,
};
# 299 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_10/header.c" 1



const u16 Palette_credits_10[] = INCBIN_U16("data/tilemaps/credits_10/palette.gbapal");
const u8 Tiles_credits_10[] = INCBIN_U8("data/tilemaps/credits_10/tiles.4bpp");
const u16 Tilemap_credits_10[] = INCBIN_U16("data/tilemaps/credits_10/tilemap.tilemap2");

const Tilemap credits_10 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_10,
    .tilesSize = sizeof(Tiles_credits_10),
    .palette = Palette_credits_10,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_10) / sizeof(u16),
    .map = Tilemap_credits_10,
};
# 300 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_tiny_chao_garden_de/header.c" 1



const u16 Palette_unlocked_tiny_chao_garden_de[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_de/palette.gbapal");
const u8 Tiles_unlocked_tiny_chao_garden_de[] = INCBIN_U8("data/tilemaps/unlocked_tiny_chao_garden_de/tiles.4bpp");
const u16 Tilemap_unlocked_tiny_chao_garden_de[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_de/tilemap.tilemap2");

const Tilemap unlocked_tiny_chao_garden_de = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_tiny_chao_garden_de,
    .tilesSize = sizeof(Tiles_unlocked_tiny_chao_garden_de),
    .palette = Palette_unlocked_tiny_chao_garden_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_tiny_chao_garden_de) / sizeof(u16),
    .map = Tilemap_unlocked_tiny_chao_garden_de,
};
# 301 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_pats_tails/header.c" 1



const u16 Palette_storyframe_sonic_pats_tails[] = INCBIN_U16("data/tilemaps/storyframe_sonic_pats_tails/palette.gbapal");
const u8 Tiles_storyframe_sonic_pats_tails[] = INCBIN_U8("data/tilemaps/storyframe_sonic_pats_tails/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_pats_tails[] = INCBIN_U16("data/tilemaps/storyframe_sonic_pats_tails/tilemap.tilemap2");

const Tilemap storyframe_sonic_pats_tails = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_pats_tails,
    .tilesSize = sizeof(Tiles_storyframe_sonic_pats_tails),
    .palette = Palette_storyframe_sonic_pats_tails,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_pats_tails) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_pats_tails,
};
# 302 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_11/header.c" 1



const u16 Palette_credits_11[] = INCBIN_U16("data/tilemaps/credits_11/palette.gbapal");
const u8 Tiles_credits_11[] = INCBIN_U8("data/tilemaps/credits_11/tiles.4bpp");
const u16 Tilemap_credits_11[] = INCBIN_U16("data/tilemaps/credits_11/tilemap.tilemap2");

const Tilemap credits_11 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_11,
    .tilesSize = sizeof(Tiles_credits_11),
    .palette = Palette_credits_11,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_11) / sizeof(u16),
    .map = Tilemap_credits_11,
};
# 303 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_tiny_chao_garden_it/header.c" 1



const u16 Palette_unlocked_tiny_chao_garden_it[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_it/palette.gbapal");
const u8 Tiles_unlocked_tiny_chao_garden_it[] = INCBIN_U8("data/tilemaps/unlocked_tiny_chao_garden_it/tiles.4bpp");
const u16 Tilemap_unlocked_tiny_chao_garden_it[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_it/tilemap.tilemap2");

const Tilemap unlocked_tiny_chao_garden_it = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_tiny_chao_garden_it,
    .tilesSize = sizeof(Tiles_unlocked_tiny_chao_garden_it),
    .palette = Palette_unlocked_tiny_chao_garden_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_tiny_chao_garden_it) / sizeof(u16),
    .map = Tilemap_unlocked_tiny_chao_garden_it,
};
# 304 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_hugs_vanilla/header.c" 1



const u16 Palette_storyframe_cream_hugs_vanilla[] = INCBIN_U16("data/tilemaps/storyframe_cream_hugs_vanilla/palette.gbapal");
const u8 Tiles_storyframe_cream_hugs_vanilla[] = INCBIN_U8("data/tilemaps/storyframe_cream_hugs_vanilla/tiles.4bpp");
const u16 Tilemap_storyframe_cream_hugs_vanilla[] = INCBIN_U16("data/tilemaps/storyframe_cream_hugs_vanilla/tilemap.tilemap2");

const Tilemap storyframe_cream_hugs_vanilla = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_hugs_vanilla,
    .tilesSize = sizeof(Tiles_storyframe_cream_hugs_vanilla),
    .palette = Palette_storyframe_cream_hugs_vanilla,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_hugs_vanilla) / sizeof(u16),
    .map = Tilemap_storyframe_cream_hugs_vanilla,
};
# 305 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_12/header.c" 1



const u16 Palette_credits_12[] = INCBIN_U16("data/tilemaps/credits_12/palette.gbapal");
const u8 Tiles_credits_12[] = INCBIN_U8("data/tilemaps/credits_12/tiles.4bpp");
const u16 Tilemap_credits_12[] = INCBIN_U16("data/tilemaps/credits_12/tilemap.tilemap2");

const Tilemap credits_12 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_12,
    .tilesSize = sizeof(Tiles_credits_12),
    .palette = Palette_credits_12,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_12) / sizeof(u16),
    .map = Tilemap_credits_12,
};
# 306 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_tiny_chao_garden_jp/header.c" 1



const u16 Palette_unlocked_tiny_chao_garden_jp[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_jp/palette.gbapal");
const u8 Tiles_unlocked_tiny_chao_garden_jp[] = INCBIN_U8("data/tilemaps/unlocked_tiny_chao_garden_jp/tiles.4bpp");
const u16 Tilemap_unlocked_tiny_chao_garden_jp[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_jp/tilemap.tilemap2");

const Tilemap unlocked_tiny_chao_garden_jp = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_tiny_chao_garden_jp,
    .tilesSize = sizeof(Tiles_unlocked_tiny_chao_garden_jp),
    .palette = Palette_unlocked_tiny_chao_garden_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_tiny_chao_garden_jp) / sizeof(u16),
    .map = Tilemap_unlocked_tiny_chao_garden_jp,
};
# 307 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_tails_vanilla_look_around/header.c" 1



const u16 Palette_storyframe_cream_tails_vanilla_look_around[]
    = INCBIN_U16("data/tilemaps/storyframe_cream_tails_vanilla_look_around/palette.gbapal");
const u8 Tiles_storyframe_cream_tails_vanilla_look_around[]
    = INCBIN_U8("data/tilemaps/storyframe_cream_tails_vanilla_look_around/tiles.4bpp");
const u16 Tilemap_storyframe_cream_tails_vanilla_look_around[]
    = INCBIN_U16("data/tilemaps/storyframe_cream_tails_vanilla_look_around/tilemap.tilemap2");

const Tilemap storyframe_cream_tails_vanilla_look_around = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_tails_vanilla_look_around,
    .tilesSize = sizeof(Tiles_storyframe_cream_tails_vanilla_look_around),
    .palette = Palette_storyframe_cream_tails_vanilla_look_around,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_tails_vanilla_look_around) / sizeof(u16),
    .map = Tilemap_storyframe_cream_tails_vanilla_look_around,
};
# 308 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_13/header.c" 1



const u16 Palette_credits_13[] = INCBIN_U16("data/tilemaps/credits_13/palette.gbapal");
const u8 Tiles_credits_13[] = INCBIN_U8("data/tilemaps/credits_13/tiles.4bpp");
const u16 Tilemap_credits_13[] = INCBIN_U16("data/tilemaps/credits_13/tilemap.tilemap2");

const Tilemap credits_13 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_13,
    .tilesSize = sizeof(Tiles_credits_13),
    .palette = Palette_credits_13,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_13) / sizeof(u16),
    .map = Tilemap_credits_13,
};
# 309 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_tiny_chao_garden_es/header.c" 1



const u16 Palette_unlocked_tiny_chao_garden_es[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_es/palette.gbapal");
const u8 Tiles_unlocked_tiny_chao_garden_es[] = INCBIN_U8("data/tilemaps/unlocked_tiny_chao_garden_es/tiles.4bpp");
const u16 Tilemap_unlocked_tiny_chao_garden_es[] = INCBIN_U16("data/tilemaps/unlocked_tiny_chao_garden_es/tilemap.tilemap2");

const Tilemap unlocked_tiny_chao_garden_es = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_tiny_chao_garden_es,
    .tilesSize = sizeof(Tiles_unlocked_tiny_chao_garden_es),
    .palette = Palette_unlocked_tiny_chao_garden_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_tiny_chao_garden_es) / sizeof(u16),
    .map = Tilemap_unlocked_tiny_chao_garden_es,
};
# 310 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_cheese_vanilla_happy/header.c" 1



const u16 Palette_storyframe_cream_cheese_vanilla_happy[]
    = INCBIN_U16("data/tilemaps/storyframe_cream_cheese_vanilla_happy/palette.gbapal");
const u8 Tiles_storyframe_cream_cheese_vanilla_happy[] = INCBIN_U8("data/tilemaps/storyframe_cream_cheese_vanilla_happy/tiles.4bpp");
const u16 Tilemap_storyframe_cream_cheese_vanilla_happy[]
    = INCBIN_U16("data/tilemaps/storyframe_cream_cheese_vanilla_happy/tilemap.tilemap2");

const Tilemap storyframe_cream_cheese_vanilla_happy = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_cheese_vanilla_happy,
    .tilesSize = sizeof(Tiles_storyframe_cream_cheese_vanilla_happy),
    .palette = Palette_storyframe_cream_cheese_vanilla_happy,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_cheese_vanilla_happy) / sizeof(u16),
    .map = Tilemap_storyframe_cream_cheese_vanilla_happy,
};
# 311 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_14/header.c" 1



const u16 Palette_credits_14[] = INCBIN_U16("data/tilemaps/credits_14/palette.gbapal");
const u8 Tiles_credits_14[] = INCBIN_U8("data/tilemaps/credits_14/tiles.4bpp");
const u16 Tilemap_credits_14[] = INCBIN_U16("data/tilemaps/credits_14/tilemap.tilemap2");

const Tilemap credits_14 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_14,
    .tilesSize = sizeof(Tiles_credits_14),
    .palette = Palette_credits_14,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_14) / sizeof(u16),
    .map = Tilemap_credits_14,
};
# 312 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_sound_test_en/header.c" 1



const u16 Palette_unlocked_sound_test_en[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_en/palette.gbapal");
const u8 Tiles_unlocked_sound_test_en[] = INCBIN_U8("data/tilemaps/unlocked_sound_test_en/tiles.4bpp");
const u16 Tilemap_unlocked_sound_test_en[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_en/tilemap.tilemap2");

const Tilemap unlocked_sound_test_en = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_sound_test_en,
    .tilesSize = sizeof(Tiles_unlocked_sound_test_en),
    .palette = Palette_unlocked_sound_test_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_sound_test_en) / sizeof(u16),
    .map = Tilemap_unlocked_sound_test_en,
};
# 313 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unused_credits_frame_sonic_leaves/header.c" 1



const u16 Palette_unused_credits_frame_sonic_leaves[] = INCBIN_U16("data/tilemaps/unused_credits_frame_sonic_leaves/palette.gbapal");
const u8 Tiles_unused_credits_frame_sonic_leaves[] = INCBIN_U8("data/tilemaps/unused_credits_frame_sonic_leaves/tiles.4bpp");
const u16 Tilemap_unused_credits_frame_sonic_leaves[] = INCBIN_U16("data/tilemaps/unused_credits_frame_sonic_leaves/tilemap.tilemap2");

const Tilemap unused_credits_frame_sonic_leaves = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unused_credits_frame_sonic_leaves,
    .tilesSize = sizeof(Tiles_unused_credits_frame_sonic_leaves),
    .palette = Palette_unused_credits_frame_sonic_leaves,
    .palOffset = 0,
    .palLength = sizeof(Palette_unused_credits_frame_sonic_leaves) / sizeof(u16),
    .map = Tilemap_unused_credits_frame_sonic_leaves,
};
# 314 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_15/header.c" 1



const u16 Palette_credits_15[] = INCBIN_U16("data/tilemaps/credits_15/palette.gbapal");
const u8 Tiles_credits_15[] = INCBIN_U8("data/tilemaps/credits_15/tiles.4bpp");
const u16 Tilemap_credits_15[] = INCBIN_U16("data/tilemaps/credits_15/tilemap.tilemap2");

const Tilemap credits_15 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_15,
    .tilesSize = sizeof(Tiles_credits_15),
    .palette = Palette_credits_15,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_15) / sizeof(u16),
    .map = Tilemap_credits_15,
};
# 315 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_sound_test_fr/header.c" 1



const u16 Palette_unlocked_sound_test_fr[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_fr/palette.gbapal");
const u8 Tiles_unlocked_sound_test_fr[] = INCBIN_U8("data/tilemaps/unlocked_sound_test_fr/tiles.4bpp");
const u16 Tilemap_unlocked_sound_test_fr[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_fr/tilemap.tilemap2");

const Tilemap unlocked_sound_test_fr = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_sound_test_fr,
    .tilesSize = sizeof(Tiles_unlocked_sound_test_fr),
    .palette = Palette_unlocked_sound_test_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_sound_test_fr) / sizeof(u16),
    .map = Tilemap_unlocked_sound_test_fr,
};
# 316 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_0/header.c" 1



const u16 Palette_storyframe_sonic_leaves_0[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_0/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_0[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_0/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_0[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_0/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_0 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_0,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_0),
    .palette = Palette_storyframe_sonic_leaves_0,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_0) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_0,
};
# 317 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_16/header.c" 1



const u16 Palette_credits_16[] = INCBIN_U16("data/tilemaps/credits_16/palette.gbapal");
const u8 Tiles_credits_16[] = INCBIN_U8("data/tilemaps/credits_16/tiles.4bpp");
const u16 Tilemap_credits_16[] = INCBIN_U16("data/tilemaps/credits_16/tilemap.tilemap2");

const Tilemap credits_16 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_16,
    .tilesSize = sizeof(Tiles_credits_16),
    .palette = Palette_credits_16,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_16) / sizeof(u16),
    .map = Tilemap_credits_16,
};
# 318 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_sound_test_de/header.c" 1



const u16 Palette_unlocked_sound_test_de[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_de/palette.gbapal");
const u8 Tiles_unlocked_sound_test_de[] = INCBIN_U8("data/tilemaps/unlocked_sound_test_de/tiles.4bpp");
const u16 Tilemap_unlocked_sound_test_de[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_de/tilemap.tilemap2");

const Tilemap unlocked_sound_test_de = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_sound_test_de,
    .tilesSize = sizeof(Tiles_unlocked_sound_test_de),
    .palette = Palette_unlocked_sound_test_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_sound_test_de) / sizeof(u16),
    .map = Tilemap_unlocked_sound_test_de,
};
# 319 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_1/header.c" 1



const u16 Palette_storyframe_sonic_leaves_1[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_1/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_1[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_1/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_1[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_1/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_1 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_1,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_1),
    .palette = Palette_storyframe_sonic_leaves_1,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_1) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_1,
};
# 320 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_17/header.c" 1



const u16 Palette_credits_17[] = INCBIN_U16("data/tilemaps/credits_17/palette.gbapal");
const u8 Tiles_credits_17[] = INCBIN_U8("data/tilemaps/credits_17/tiles.4bpp");
const u16 Tilemap_credits_17[] = INCBIN_U16("data/tilemaps/credits_17/tilemap.tilemap2");

const Tilemap credits_17 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_17,
    .tilesSize = sizeof(Tiles_credits_17),
    .palette = Palette_credits_17,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_17) / sizeof(u16),
    .map = Tilemap_credits_17,
};
# 321 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_sound_test_it/header.c" 1



const u16 Palette_unlocked_sound_test_it[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_it/palette.gbapal");
const u8 Tiles_unlocked_sound_test_it[] = INCBIN_U8("data/tilemaps/unlocked_sound_test_it/tiles.4bpp");
const u16 Tilemap_unlocked_sound_test_it[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_it/tilemap.tilemap2");

const Tilemap unlocked_sound_test_it = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_sound_test_it,
    .tilesSize = sizeof(Tiles_unlocked_sound_test_it),
    .palette = Palette_unlocked_sound_test_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_sound_test_it) / sizeof(u16),
    .map = Tilemap_unlocked_sound_test_it,
};
# 322 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_10/header.c" 1



const u16 Palette_storyframe_sonic_leaves_10[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_10/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_10[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_10/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_10[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_10/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_10 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_10,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_10),
    .palette = Palette_storyframe_sonic_leaves_10,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_10) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_10,
};
# 323 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_18/header.c" 1



const u16 Palette_credits_18[] = INCBIN_U16("data/tilemaps/credits_18/palette.gbapal");
const u8 Tiles_credits_18[] = INCBIN_U8("data/tilemaps/credits_18/tiles.4bpp");
const u16 Tilemap_credits_18[] = INCBIN_U16("data/tilemaps/credits_18/tilemap.tilemap2");

const Tilemap credits_18 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_18,
    .tilesSize = sizeof(Tiles_credits_18),
    .palette = Palette_credits_18,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_18) / sizeof(u16),
    .map = Tilemap_credits_18,
};
# 324 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_sound_test_jp/header.c" 1



const u16 Palette_unlocked_sound_test_jp[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_jp/palette.gbapal");
const u8 Tiles_unlocked_sound_test_jp[] = INCBIN_U8("data/tilemaps/unlocked_sound_test_jp/tiles.4bpp");
const u16 Tilemap_unlocked_sound_test_jp[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_jp/tilemap.tilemap2");

const Tilemap unlocked_sound_test_jp = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_sound_test_jp,
    .tilesSize = sizeof(Tiles_unlocked_sound_test_jp),
    .palette = Palette_unlocked_sound_test_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_sound_test_jp) / sizeof(u16),
    .map = Tilemap_unlocked_sound_test_jp,
};
# 325 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_2/header.c" 1



const u16 Palette_storyframe_sonic_leaves_2[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_2/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_2[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_2/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_2[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_2/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_2 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_2,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_2),
    .palette = Palette_storyframe_sonic_leaves_2,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_2) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_2,
};
# 326 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_19/header.c" 1



const u16 Palette_credits_19[] = INCBIN_U16("data/tilemaps/credits_19/palette.gbapal");
const u8 Tiles_credits_19[] = INCBIN_U8("data/tilemaps/credits_19/tiles.4bpp");
const u16 Tilemap_credits_19[] = INCBIN_U16("data/tilemaps/credits_19/tilemap.tilemap2");

const Tilemap credits_19 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_19,
    .tilesSize = sizeof(Tiles_credits_19),
    .palette = Palette_credits_19,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_19) / sizeof(u16),
    .map = Tilemap_credits_19,
};
# 327 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_sound_test_es/header.c" 1



const u16 Palette_unlocked_sound_test_es[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_es/palette.gbapal");
const u8 Tiles_unlocked_sound_test_es[] = INCBIN_U8("data/tilemaps/unlocked_sound_test_es/tiles.4bpp");
const u16 Tilemap_unlocked_sound_test_es[] = INCBIN_U16("data/tilemaps/unlocked_sound_test_es/tilemap.tilemap2");

const Tilemap unlocked_sound_test_es = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_sound_test_es,
    .tilesSize = sizeof(Tiles_unlocked_sound_test_es),
    .palette = Palette_unlocked_sound_test_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_sound_test_es) / sizeof(u16),
    .map = Tilemap_unlocked_sound_test_es,
};
# 328 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_3/header.c" 1



const u16 Palette_storyframe_sonic_leaves_3[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_3/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_3[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_3/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_3[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_3/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_3 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_3,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_3),
    .palette = Palette_storyframe_sonic_leaves_3,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_3) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_3,
};
# 329 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_20/header.c" 1



const u16 Palette_credits_20[] = INCBIN_U16("data/tilemaps/credits_20/palette.gbapal");
const u8 Tiles_credits_20[] = INCBIN_U8("data/tilemaps/credits_20/tiles.4bpp");
const u16 Tilemap_credits_20[] = INCBIN_U16("data/tilemaps/credits_20/tilemap.tilemap2");

const Tilemap credits_20 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_20,
    .tilesSize = sizeof(Tiles_credits_20),
    .palette = Palette_credits_20,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_20) / sizeof(u16),
    .map = Tilemap_credits_20,
};
# 330 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_bosses_time_attack_en/header.c" 1



const u16 Palette_unlocked_bosses_time_attack_en[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_en/palette.gbapal");
const u8 Tiles_unlocked_bosses_time_attack_en[] = INCBIN_U8("data/tilemaps/unlocked_bosses_time_attack_en/tiles.4bpp");
const u16 Tilemap_unlocked_bosses_time_attack_en[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_en/tilemap.tilemap2");

const Tilemap unlocked_bosses_time_attack_en = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_bosses_time_attack_en,
    .tilesSize = sizeof(Tiles_unlocked_bosses_time_attack_en),
    .palette = Palette_unlocked_bosses_time_attack_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_bosses_time_attack_en) / sizeof(u16),
    .map = Tilemap_unlocked_bosses_time_attack_en,
};
# 331 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_4/header.c" 1



const u16 Palette_storyframe_sonic_leaves_4[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_4/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_4[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_4/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_4[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_4/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_4 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_4,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_4),
    .palette = Palette_storyframe_sonic_leaves_4,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_4) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_4,
};
# 332 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_21/header.c" 1



const u16 Palette_credits_21[] = INCBIN_U16("data/tilemaps/credits_21/palette.gbapal");
const u8 Tiles_credits_21[] = INCBIN_U8("data/tilemaps/credits_21/tiles.4bpp");
const u16 Tilemap_credits_21[] = INCBIN_U16("data/tilemaps/credits_21/tilemap.tilemap2");

const Tilemap credits_21 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_21,
    .tilesSize = sizeof(Tiles_credits_21),
    .palette = Palette_credits_21,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_21) / sizeof(u16),
    .map = Tilemap_credits_21,
};
# 333 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_bosses_time_attack_fr/header.c" 1



const u16 Palette_unlocked_bosses_time_attack_fr[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_fr/palette.gbapal");
const u8 Tiles_unlocked_bosses_time_attack_fr[] = INCBIN_U8("data/tilemaps/unlocked_bosses_time_attack_fr/tiles.4bpp");
const u16 Tilemap_unlocked_bosses_time_attack_fr[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_fr/tilemap.tilemap2");

const Tilemap unlocked_bosses_time_attack_fr = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_bosses_time_attack_fr,
    .tilesSize = sizeof(Tiles_unlocked_bosses_time_attack_fr),
    .palette = Palette_unlocked_bosses_time_attack_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_bosses_time_attack_fr) / sizeof(u16),
    .map = Tilemap_unlocked_bosses_time_attack_fr,
};
# 334 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_5/header.c" 1



const u16 Palette_storyframe_sonic_leaves_5[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_5/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_5[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_5/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_5[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_5/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_5 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_5,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_5),
    .palette = Palette_storyframe_sonic_leaves_5,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_5) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_5,
};
# 335 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_22/header.c" 1



const u16 Palette_credits_22[] = INCBIN_U16("data/tilemaps/credits_22/palette.gbapal");
const u8 Tiles_credits_22[] = INCBIN_U8("data/tilemaps/credits_22/tiles.4bpp");
const u16 Tilemap_credits_22[] = INCBIN_U16("data/tilemaps/credits_22/tilemap.tilemap2");

const Tilemap credits_22 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_22,
    .tilesSize = sizeof(Tiles_credits_22),
    .palette = Palette_credits_22,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_22) / sizeof(u16),
    .map = Tilemap_credits_22,
};
# 336 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_bosses_time_attack_de/header.c" 1



const u16 Palette_unlocked_bosses_time_attack_de[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_de/palette.gbapal");
const u8 Tiles_unlocked_bosses_time_attack_de[] = INCBIN_U8("data/tilemaps/unlocked_bosses_time_attack_de/tiles.4bpp");
const u16 Tilemap_unlocked_bosses_time_attack_de[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_de/tilemap.tilemap2");

const Tilemap unlocked_bosses_time_attack_de = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_bosses_time_attack_de,
    .tilesSize = sizeof(Tiles_unlocked_bosses_time_attack_de),
    .palette = Palette_unlocked_bosses_time_attack_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_bosses_time_attack_de) / sizeof(u16),
    .map = Tilemap_unlocked_bosses_time_attack_de,
};
# 337 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_6/header.c" 1



const u16 Palette_storyframe_sonic_leaves_6[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_6/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_6[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_6/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_6[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_6/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_6 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_6,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_6),
    .palette = Palette_storyframe_sonic_leaves_6,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_6) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_6,
};
# 338 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_23/header.c" 1



const u16 Palette_credits_23[] = INCBIN_U16("data/tilemaps/credits_23/palette.gbapal");
const u8 Tiles_credits_23[] = INCBIN_U8("data/tilemaps/credits_23/tiles.4bpp");
const u16 Tilemap_credits_23[] = INCBIN_U16("data/tilemaps/credits_23/tilemap.tilemap2");

const Tilemap credits_23 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_23,
    .tilesSize = sizeof(Tiles_credits_23),
    .palette = Palette_credits_23,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_23) / sizeof(u16),
    .map = Tilemap_credits_23,
};
# 339 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_bosses_time_attack_it/header.c" 1



const u16 Palette_unlocked_bosses_time_attack_it[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_it/palette.gbapal");
const u8 Tiles_unlocked_bosses_time_attack_it[] = INCBIN_U8("data/tilemaps/unlocked_bosses_time_attack_it/tiles.4bpp");
const u16 Tilemap_unlocked_bosses_time_attack_it[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_it/tilemap.tilemap2");

const Tilemap unlocked_bosses_time_attack_it = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_bosses_time_attack_it,
    .tilesSize = sizeof(Tiles_unlocked_bosses_time_attack_it),
    .palette = Palette_unlocked_bosses_time_attack_it,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_bosses_time_attack_it) / sizeof(u16),
    .map = Tilemap_unlocked_bosses_time_attack_it,
};
# 340 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_7/header.c" 1



const u16 Palette_storyframe_sonic_leaves_7[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_7/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_7[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_7/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_7[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_7/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_7 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_7,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_7),
    .palette = Palette_storyframe_sonic_leaves_7,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_7) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_7,
};
# 341 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_24/header.c" 1



const u16 Palette_credits_24[] = INCBIN_U16("data/tilemaps/credits_24/palette.gbapal");
const u8 Tiles_credits_24[] = INCBIN_U8("data/tilemaps/credits_24/tiles.4bpp");
const u16 Tilemap_credits_24[] = INCBIN_U16("data/tilemaps/credits_24/tilemap.tilemap2");

const Tilemap credits_24 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_24,
    .tilesSize = sizeof(Tiles_credits_24),
    .palette = Palette_credits_24,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_24) / sizeof(u16),
    .map = Tilemap_credits_24,
};
# 342 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_bosses_time_attack_jp/header.c" 1



const u16 Palette_unlocked_bosses_time_attack_jp[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_jp/palette.gbapal");
const u8 Tiles_unlocked_bosses_time_attack_jp[] = INCBIN_U8("data/tilemaps/unlocked_bosses_time_attack_jp/tiles.4bpp");
const u16 Tilemap_unlocked_bosses_time_attack_jp[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_jp/tilemap.tilemap2");

const Tilemap unlocked_bosses_time_attack_jp = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_bosses_time_attack_jp,
    .tilesSize = sizeof(Tiles_unlocked_bosses_time_attack_jp),
    .palette = Palette_unlocked_bosses_time_attack_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_bosses_time_attack_jp) / sizeof(u16),
    .map = Tilemap_unlocked_bosses_time_attack_jp,
};
# 343 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_8/header.c" 1



const u16 Palette_storyframe_sonic_leaves_8[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_8/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_8[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_8/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_8[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_8/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_8 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_8,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_8),
    .palette = Palette_storyframe_sonic_leaves_8,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_8) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_8,
};
# 344 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_copyright/header.c" 1



const u16 Palette_credits_copyright[] = INCBIN_U16("data/tilemaps/credits_copyright/palette.gbapal");
const u8 Tiles_credits_copyright[] = INCBIN_U8("data/tilemaps/credits_copyright/tiles.4bpp");
const u16 Tilemap_credits_copyright[] = INCBIN_U16("data/tilemaps/credits_copyright/tilemap.tilemap2");

const Tilemap credits_copyright = {
    .xTiles = 30,
    .yTiles = 3,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_copyright,
    .tilesSize = sizeof(Tiles_credits_copyright),
    .palette = Palette_credits_copyright,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_copyright) / sizeof(u16),
    .map = Tilemap_credits_copyright,
};
# 345 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_bosses_time_attack_es/header.c" 1



const u16 Palette_unlocked_bosses_time_attack_es[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_es/palette.gbapal");
const u8 Tiles_unlocked_bosses_time_attack_es[] = INCBIN_U8("data/tilemaps/unlocked_bosses_time_attack_es/tiles.4bpp");
const u16 Tilemap_unlocked_bosses_time_attack_es[] = INCBIN_U16("data/tilemaps/unlocked_bosses_time_attack_es/tilemap.tilemap2");

const Tilemap unlocked_bosses_time_attack_es = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_bosses_time_attack_es,
    .tilesSize = sizeof(Tiles_unlocked_bosses_time_attack_es),
    .palette = Palette_unlocked_bosses_time_attack_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_bosses_time_attack_es) / sizeof(u16),
    .map = Tilemap_unlocked_bosses_time_attack_es,
};
# 346 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_sonic_leaves_9/header.c" 1



const u16 Palette_storyframe_sonic_leaves_9[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_9/palette.gbapal");
const u8 Tiles_storyframe_sonic_leaves_9[] = INCBIN_U8("data/tilemaps/storyframe_sonic_leaves_9/tiles.4bpp");
const u16 Tilemap_storyframe_sonic_leaves_9[] = INCBIN_U16("data/tilemaps/storyframe_sonic_leaves_9/tilemap.tilemap2");

const Tilemap storyframe_sonic_leaves_9 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_sonic_leaves_9,
    .tilesSize = sizeof(Tiles_storyframe_sonic_leaves_9),
    .palette = Palette_storyframe_sonic_leaves_9,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_sonic_leaves_9) / sizeof(u16),
    .map = Tilemap_storyframe_sonic_leaves_9,
};
# 347 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/credits_presented_by_sega/header.c" 1



const u16 Palette_credits_presented_by_sega[] = INCBIN_U16("data/tilemaps/credits_presented_by_sega/palette.gbapal");
const u8 Tiles_credits_presented_by_sega[] = INCBIN_U8("data/tilemaps/credits_presented_by_sega/tiles.4bpp");
const u16 Tilemap_credits_presented_by_sega[] = INCBIN_U16("data/tilemaps/credits_presented_by_sega/tilemap.tilemap2");

const Tilemap credits_presented_by_sega = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_credits_presented_by_sega,
    .tilesSize = sizeof(Tiles_credits_presented_by_sega),
    .palette = Palette_credits_presented_by_sega,
    .palOffset = 0,
    .palLength = sizeof(Palette_credits_presented_by_sega) / sizeof(u16),
    .map = Tilemap_credits_presented_by_sega,
};
# 348 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_amy_en/header.c" 1



const u16 Palette_unlocked_amy_en[] = INCBIN_U16("data/tilemaps/unlocked_amy_en/palette.gbapal");
const u8 Tiles_unlocked_amy_en[] = INCBIN_U8("data/tilemaps/unlocked_amy_en/tiles.4bpp");
const u16 Tilemap_unlocked_amy_en[] = INCBIN_U16("data/tilemaps/unlocked_amy_en/tilemap.tilemap2");

const Tilemap unlocked_amy_en = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_amy_en,
    .tilesSize = sizeof(Tiles_unlocked_amy_en),
    .palette = Palette_unlocked_amy_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_amy_en) / sizeof(u16),
    .map = Tilemap_unlocked_amy_en,
};
# 349 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_0_sepia/header.c" 1



const u16 Palette_storyframe_cream_unlock_0_sepia[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_sepia/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_0_sepia[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_0_sepia/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_0_sepia[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_0_sepia/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_0_sepia = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_0_sepia,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_0_sepia),
    .palette = Palette_storyframe_cream_unlock_0_sepia,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_0_sepia) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_0_sepia,
};
# 350 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unused_credits_frame_manual_production_copy/header.c" 1



const u16 Palette_unused_credits_frame_manual_production_copy[]
    = INCBIN_U16("data/tilemaps/unused_credits_frame_manual_production_copy/palette.gbapal");
const u8 Tiles_unused_credits_frame_manual_production_copy[]
    = INCBIN_U8("data/tilemaps/unused_credits_frame_manual_production_copy/tiles.4bpp");
const u16 Tilemap_unused_credits_frame_manual_production_copy[]
    = INCBIN_U16("data/tilemaps/unused_credits_frame_manual_production_copy/tilemap.tilemap2");

const Tilemap unused_credits_frame_manual_production_copy = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unused_credits_frame_manual_production_copy,
    .tilesSize = sizeof(Tiles_unused_credits_frame_manual_production_copy),
    .palette = Palette_unused_credits_frame_manual_production_copy,
    .palOffset = 0,
    .palLength = sizeof(Palette_unused_credits_frame_manual_production_copy) / sizeof(u16),
    .map = Tilemap_unused_credits_frame_manual_production_copy,
};
# 351 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_amy_fr/header.c" 1



const u16 Palette_unlocked_amy_fr[] = INCBIN_U16("data/tilemaps/unlocked_amy_fr/palette.gbapal");
const u8 Tiles_unlocked_amy_fr[] = INCBIN_U8("data/tilemaps/unlocked_amy_fr/tiles.4bpp");
const u16 Tilemap_unlocked_amy_fr[] = INCBIN_U16("data/tilemaps/unlocked_amy_fr/tilemap.tilemap2");

const Tilemap unlocked_amy_fr = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_amy_fr,
    .tilesSize = sizeof(Tiles_unlocked_amy_fr),
    .palette = Palette_unlocked_amy_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_amy_fr) / sizeof(u16),
    .map = Tilemap_unlocked_amy_fr,
};
# 352 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_cream_unlock_1_sepia/header.c" 1



const u16 Palette_storyframe_cream_unlock_1_sepia[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_sepia/palette.gbapal");
const u8 Tiles_storyframe_cream_unlock_1_sepia[] = INCBIN_U8("data/tilemaps/storyframe_cream_unlock_1_sepia/tiles.4bpp");
const u16 Tilemap_storyframe_cream_unlock_1_sepia[] = INCBIN_U16("data/tilemaps/storyframe_cream_unlock_1_sepia/tilemap.tilemap2");

const Tilemap storyframe_cream_unlock_1_sepia = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_cream_unlock_1_sepia,
    .tilesSize = sizeof(Tiles_storyframe_cream_unlock_1_sepia),
    .palette = Palette_storyframe_cream_unlock_1_sepia,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_cream_unlock_1_sepia) / sizeof(u16),
    .map = Tilemap_storyframe_cream_unlock_1_sepia,
};
# 353 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/unlocked_amy_de/header.c" 1



const u16 Palette_unlocked_amy_de[] = INCBIN_U16("data/tilemaps/unlocked_amy_de/palette.gbapal");
const u8 Tiles_unlocked_amy_de[] = INCBIN_U8("data/tilemaps/unlocked_amy_de/tiles.4bpp");
const u16 Tilemap_unlocked_amy_de[] = INCBIN_U16("data/tilemaps/unlocked_amy_de/tilemap.tilemap2");

const Tilemap unlocked_amy_de = {
    .xTiles = 30,
    .yTiles = 7,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unlocked_amy_de,
    .tilesSize = sizeof(Tiles_unlocked_amy_de),
    .palette = Palette_unlocked_amy_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_unlocked_amy_de) / sizeof(u16),
    .map = Tilemap_unlocked_amy_de,
};
# 354 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/storyframe_tails_unlock_1_sepia/header.c" 1



const u16 Palette_storyframe_tails_unlock_1_sepia[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_sepia/palette.gbapal");
const u8 Tiles_storyframe_tails_unlock_1_sepia[] = INCBIN_U8("data/tilemaps/storyframe_tails_unlock_1_sepia/tiles.4bpp");
const u16 Tilemap_storyframe_tails_unlock_1_sepia[] = INCBIN_U16("data/tilemaps/storyframe_tails_unlock_1_sepia/tilemap.tilemap2");

const Tilemap storyframe_tails_unlock_1_sepia = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_storyframe_tails_unlock_1_sepia,
    .tilesSize = sizeof(Tiles_storyframe_tails_unlock_1_sepia),
    .palette = Palette_storyframe_tails_unlock_1_sepia,
    .palOffset = 0,
    .palLength = sizeof(Palette_storyframe_tails_unlock_1_sepia) / sizeof(u16),
    .map = Tilemap_storyframe_tails_unlock_1_sepia,
};
# 355 "src/data/tilemap_data.c" 2
# 1 "include/../data/tilemaps/cutscene_post_extra_boss_bg/header.c" 1



const u16 Palette_cutscene_post_extra_boss_bg[] = INCBIN_U16("data/tilemaps/cutscene_post_extra_boss_bg/palette.gbapal");
const u8 Tiles_cutscene_post_extra_boss_bg[] = INCBIN_U8("data/tilemaps/cutscene_post_extra_boss_bg/tiles.4bpp");
const u16 Tilemap_cutscene_post_extra_boss_bg[] = INCBIN_U16("data/tilemaps/cutscene_post_extra_boss_bg/tilemap.tilemap2");

const Tilemap cutscene_post_extra_boss_bg = {
    .xTiles = 32,
    .yTiles = 64,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_cutscene_post_extra_boss_bg,
    .tilesSize = sizeof(Tiles_cutscene_post_extra_boss_bg),
    .palette = Palette_cutscene_post_extra_boss_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_cutscene_post_extra_boss_bg) / sizeof(u16),
    .map = Tilemap_cutscene_post_extra_boss_bg,
};
# 356 "src/data/tilemap_data.c" 2
