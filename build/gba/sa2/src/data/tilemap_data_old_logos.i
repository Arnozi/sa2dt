# 0 "src/data/tilemap_data_old_logos.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/data/tilemap_data_old_logos.c"

# 1 "include/../data/tilemaps/sa1_title_logo_jp/header.c" 1
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
# 2 "include/../data/tilemaps/sa1_title_logo_jp/header.c" 2
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
# 3 "include/../data/tilemaps/sa1_title_logo_jp/header.c" 2

const u16 Palette_sa1_title_logo_jp[] = {
    0x8340u, 0u, 0x9000u, 0x2000u, 0x421u, 0x8c20u, 0x2800u, 0x1c20u, 0x3000u, 0xb000u, 0xac20u, 0x9c40u, 0x8842u, 0x3802u, 0x3022u,
    0xac40u, 0xb820u, 0xb802u, 0xb440u, 0x65u, 0x3423u, 0x3860u, 0x2082u, 0xb061u, 0x1084u, 0x3c60u, 0x3844u, 0xe1u, 0x4460u, 0x3046u,
    0xaca0u, 0x4860u, 0xca6u, 0xac83u, 0x9ca3u, 0xd060u, 0x94a5u, 0xbc81u, 0xd460u, 0xb865u, 0x14u, 0xd860u, 0x2c88u, 0xc0c0u, 0xc8a1u,
    0x98c6u, 0x5c80u, 0x15u, 0xe060u, 0x28e4u, 0xb8c4u, 0x17u, 0x80acu, 0x18u, 0x60a0u, 0x4900u, 0xd4a2u, 0x19u, 0x48e3u, 0xe0a1u,
    0x182u, 0x28cau, 0x1au, 0x1d08u, 0x38e8u, 0xdcc2u, 0x2d26u, 0x5140u, 0x64e1u, 0x3d25u, 0xa0cdu, 0xe502u, 0x941cu, 0x4d25u, 0xa529u,
    0x5980u, 0xe502u, 0x910eu, 0x145au, 0x201u, 0xe104u, 0x5da0u, 0xb548u, 0x4929u, 0x1d4cu, 0x2d6bu, 0xcd48u, 0x9130u, 0xe1c0u, 0xd185u,
    0xe06u, 0xe945u, 0xc16bu, 0x318cu, 0x71c0u, 0xe5e0u, 0x155u, 0x20bcu, 0x5189u, 0x1173u, 0x19ebu, 0xa18fu, 0x6a20u, 0x6587u, 0xfdc0u,
    0xd1a9u, 0x35adu, 0x7e00u, 0x6e40u, 0xd9e6u, 0x8995u, 0xeda7u, 0xa1b1u, 0xfe01u, 0xe624u, 0x39ceu, 0x7260u, 0x82a6u, 0xad39u, 0xe1c9u,
    0xc9cdu, 0xe227u, 0x7e42u, 0x5d6u, 0x3179u, 0xc1efu, 0xa5f2u, 0xf1e9u, 0xee64u, 0x620bu, 0x7e64u, 0xea48u, 0x85f8u, 0xda0eu, 0x1616u,
    0x4231u, 0xf2a4u, 0x7e85u, 0xf22bu, 0xae34u, 0xee88u, 0xd230u, 0x3d9du, 0x7ae3u, 0x639u, 0x7ea6u, 0x4a52u, 0x666du, 0x7ec6u, 0x7ec7u,
    0x726du, 0x5271u, 0xf2a9u, 0xae56u, 0xc1dbu, 0x4e73u, 0xfec7u, 0x9f0du, 0x728du, 0x7ee8u, 0xd672u, 0x1e3du, 0x7ee8u, 0xfee9u, 0x3297u,
    0xee90u, 0x1e98u, 0xfee9u, 0xd694u, 0x76aeu, 0xfeeau, 0x2bcu, 0x7f0au, 0x267du, 0x56b5u, 0xb2b8u, 0x4e5du, 0x1adau, 0xf6d0u, 0x82bfu,
    0x2a9eu, 0x5ed5u, 0x7f2du, 0x32fau, 0x82dfu, 0xdad6u, 0xaebeu, 0x7b12u, 0x82ffu, 0xe2f7u, 0x7f4fu, 0x31fu, 0x5abeu, 0xb2deu, 0x7b33u,
    0x831fu, 0x3f1bu, 0xe317u, 0xa73cu, 0x133eu, 0xb6ffu, 0x833fu, 0xe718u, 0xff52u, 0x6339u, 0x35fu, 0x7f72u, 0x7f72u, 0x3b1fu, 0x37fu,
    0x433du, 0xff55u, 0xe739u, 0x535au, 0xff73u, 0x3f3fu, 0x837fu, 0x39fu, 0xa77du, 0xc33fu, 0xe71eu, 0x7f95u, 0xeb5au, 0x3bfu, 0x435fu,
    0x13bfu, 0xff96u, 0x3dfu, 0x6f7bu, 0x477fu, 0x83dfu, 0x7fb7u, 0x579cu, 0x3ffu, 0x6f5fu, 0x479fu, 0x97dfu, 0x83ffu, 0xffb8u, 0x739cu,
    0xcf9fu, 0xffb9u, 0x77bdu, 0x7fdau, 0x779fu, 0x63dfu, 0xffdcu, 0x7bdeu, 0xfbbfu, 0x7ffdu, 0xfbdeu, 0x7ffdu, 0xebffu, 0x7fffu, 0xfffeu,
    0xffffu,
};

const u8 Tiles_sa1_title_logo_jp[] = INCBIN_U8("data/tilemaps/sa1_title_logo_jp/tiles.8bpp");
const u16 Tilemap_sa1_title_logo_jp[] = INCBIN_U16("data/tilemaps/sa1_title_logo_jp/tilemap.tilemap1");

const Tilemap sa1_title_logo_jp = {
    .xTiles = 24,
    .yTiles = 10,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sa1_title_logo_jp,
    .tilesSize = sizeof(Tiles_sa1_title_logo_jp),
    .palette = Palette_sa1_title_logo_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_sa1_title_logo_jp) / sizeof(u16),
    .map = Tilemap_sa1_title_logo_jp,
};
# 3 "src/data/tilemap_data_old_logos.c" 2
# 1 "include/../data/tilemaps/sa1_title_logo/header.c" 1




const u16 Palette_sa1_title_logo[] = {
    0x8340, 0, 0x9000, 0x2000, 0x421, 0x8c20, 0x2800, 0x1c20, 0x3000, 0xb000, 0xac20, 0x9c40, 0x8842, 0x3802, 0x3022, 0xac40,
    0xb820, 0xb802, 0xb440, 0x65, 0x3423, 0x3860, 0x2082, 0xb061, 0x1084, 0x3c60, 0x3844, 0xe1, 0x4460, 0x3046, 0xaca0, 0x4860,
    0xca6, 0xac83, 0x9ca3, 0xd060, 0x94a5, 0xbc81, 0xd460, 0xb865, 0x14, 0xd860, 0x2c88, 0xc0c0, 0xc8a1, 0x98c6, 0x5c80, 0x15,
    0xe060, 0x28e4, 0xb8c4, 0x17, 0x80ac, 0x18, 0x60a0, 0x4900, 0xd4a2, 0x19, 0x48e3, 0xe0a1, 0x182, 0x28ca, 0x1a, 0x1d08,
    0x38e8, 0xdcc2, 0x2d26, 0x5140, 0x64e1, 0x3d25, 0xa0cd, 0xe502, 0x941c, 0x4d25, 0xa529, 0x5980, 0xe502, 0x910e, 0x145a, 0x201,
    0xe104, 0x5da0, 0xb548, 0x4929, 0x1d4c, 0x2d6b, 0xcd48, 0x9130, 0xe1c0, 0xd185, 0xe06, 0xe945, 0xc16b, 0x318c, 0x71c0, 0xe5e0,
    0x155, 0x20bc, 0x5189, 0x1173, 0x19eb, 0xa18f, 0x6a20, 0x6587, 0xfdc0, 0xd1a9, 0x35ad, 0x7e00, 0x6e40, 0xd9e6, 0x8995, 0xeda7,
    0xa1b1, 0xfe01, 0xe624, 0x39ce, 0x7260, 0x82a6, 0xad39, 0xe1c9, 0xc9cd, 0xe227, 0x7e42, 0x5d6, 0x3179, 0xc1ef, 0xa5f2, 0xf1e9,
    0xee64, 0x620b, 0x7e64, 0xea48, 0x85f8, 0xda0e, 0x1616, 0x4231, 0xf2a4, 0x7e85, 0xf22b, 0xae34, 0xee88, 0xd230, 0x3d9d, 0x7ae3,
    0x639, 0x7ea6, 0x4a52, 0x666d, 0x7ec6, 0x7ec7, 0x726d, 0x5271, 0xf2a9, 0xae56, 0xc1db, 0x4e73, 0xfec7, 0x9f0d, 0x728d, 0x7ee8,
    0xd672, 0x1e3d, 0x7ee8, 0xfee9, 0x3297, 0xee90, 0x1e98, 0xfee9, 0xd694, 0x76ae, 0xfeea, 0x2bc, 0x7f0a, 0x267d, 0x56b5, 0xb2b8,
    0x4e5d, 0x1ada, 0xf6d0, 0x82bf, 0x2a9e, 0x5ed5, 0x7f2d, 0x32fa, 0x82df, 0xdad6, 0xaebe, 0x7b12, 0x82ff, 0xe2f7, 0x7f4f, 0x31f,
    0x5abe, 0xb2de, 0x7b33, 0x831f, 0x3f1b, 0xe317, 0xa73c, 0x133e, 0xb6ff, 0x833f, 0xe718, 0xff52, 0x6339, 0x35f, 0x7f72, 0x7f72,
    0x3b1f, 0x37f, 0x433d, 0xff55, 0xe739, 0x535a, 0xff73, 0x3f3f, 0x837f, 0x39f, 0xa77d, 0xc33f, 0xe71e, 0x7f95, 0xeb5a, 0x3bf,
    0x435f, 0x13bf, 0xff96, 0x3df, 0x6f7b, 0x477f, 0x83df, 0x7fb7, 0x579c, 0x3ff, 0x6f5f, 0x479f, 0x97df, 0x83ff, 0xffb8, 0x739c,
    0xcf9f, 0xffb9, 0x77bd, 0x7fda, 0x779f, 0x63df, 0xffdc, 0x7bde, 0xfbbf, 0x7ffd, 0xfbde, 0x7ffd, 0xebff, 0x7fff, 0xfffe, 0xffff,
};

const u8 Tiles_sa1_title_logo[] = INCBIN_U8("data/tilemaps/sa1_title_logo/tiles.4bpp");
const u8 Tilemap_sa1_title_logo[] = INCBIN_U8("data/tilemaps/sa1_title_logo/tilemap.tilemap2");

const Tilemap sa1_title_logo = {
    .xTiles = 24,
    .yTiles = 10,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sa1_title_logo,
    .tilesSize = sizeof(Tiles_sa1_title_logo),
    .palette = Palette_sa1_title_logo,
    .palOffset = 0,
    .palLength = sizeof(Palette_sa1_title_logo) / sizeof(u16),
    .map = (const u16 *)Tilemap_sa1_title_logo,
};
# 4 "src/data/tilemap_data_old_logos.c" 2
# 1 "include/../data/tilemaps/sa1_title_bg/header.c" 1



const u16 Palette_sa1_title_bg[] = {
    0x8340, 0, 0x9000, 0x2000, 0x421, 0x8c20, 0x2800, 0x1c20, 0x3000, 0xb000, 0xac20, 0x9c40, 0x8842, 0x3802, 0x3022, 0xac40,
    0xb820, 0xb802, 0xb440, 0x65, 0x3423, 0x3860, 0x2082, 0xb061, 0x1084, 0x3c60, 0x3844, 0xe1, 0x4460, 0x3046, 0xaca0, 0x4860,
    0xca6, 0xac83, 0x9ca3, 0xd060, 0x94a5, 0xbc81, 0xd460, 0xb865, 0x14, 0xd860, 0x2c88, 0xc0c0, 0xc8a1, 0x98c6, 0x5c80, 0x15,
    0xe060, 0x28e4, 0xb8c4, 0x17, 0x80ac, 0x18, 0x60a0, 0x4900, 0xd4a2, 0x19, 0x48e3, 0xe0a1, 0x182, 0x28ca, 0x1a, 0x1d08,
    0x38e8, 0xdcc2, 0x2d26, 0x5140, 0x64e1, 0x3d25, 0xa0cd, 0xe502, 0x941c, 0x4d25, 0xa529, 0x5980, 0xe502, 0x910e, 0x145a, 0x201,
    0xe104, 0x5da0, 0xb548, 0x4929, 0x1d4c, 0x2d6b, 0xcd48, 0x9130, 0xe1c0, 0xd185, 0xe06, 0xe945, 0xc16b, 0x318c, 0x71c0, 0xe5e0,
    0x155, 0x20bc, 0x5189, 0x1173, 0x19eb, 0xa18f, 0x6a20, 0x6587, 0xfdc0, 0xd1a9, 0x35ad, 0x7e00, 0x6e40, 0xd9e6, 0x8995, 0xeda7,
    0xa1b1, 0xfe01, 0xe624, 0x39ce, 0x7260, 0x82a6, 0xad39, 0xe1c9, 0xc9cd, 0xe227, 0x7e42, 0x5d6, 0x3179, 0xc1ef, 0xa5f2, 0xf1e9,
    0xee64, 0x620b, 0x7e64, 0xea48, 0x85f8, 0xda0e, 0x1616, 0x4231, 0xf2a4, 0x7e85, 0xf22b, 0xae34, 0xee88, 0xd230, 0x3d9d, 0x7ae3,
    0x639, 0x7ea6, 0x4a52, 0x666d, 0x7ec6, 0x7ec7, 0x726d, 0x5271, 0xf2a9, 0xae56, 0xc1db, 0x4e73, 0xfec7, 0x9f0d, 0x728d, 0x7ee8,
    0xd672, 0x1e3d, 0x7ee8, 0xfee9, 0x3297, 0xee90, 0x1e98, 0xfee9, 0xd694, 0x76ae, 0xfeea, 0x2bc, 0x7f0a, 0x267d, 0x56b5, 0xb2b8,
    0x4e5d, 0x1ada, 0xf6d0, 0x82bf, 0x2a9e, 0x5ed5, 0x7f2d, 0x32fa, 0x82df, 0xdad6, 0xaebe, 0x7b12, 0x82ff, 0xe2f7, 0x7f4f, 0x31f,
    0x5abe, 0xb2de, 0x7b33, 0x831f, 0x3f1b, 0xe317, 0xa73c, 0x133e, 0xb6ff, 0x833f, 0xe718, 0xff52, 0x6339, 0x35f, 0x7f72, 0x7f72,
    0x3b1f, 0x37f, 0x433d, 0xff55, 0xe739, 0x535a, 0xff73, 0x3f3f, 0x837f, 0x39f, 0xa77d, 0xc33f, 0xe71e, 0x7f95, 0xeb5a, 0x3bf,
    0x435f, 0x13bf, 0xff96, 0x3df, 0x6f7b, 0x477f, 0x83df, 0x7fb7, 0x579c, 0x3ff, 0x6f5f, 0x479f, 0x97df, 0x83ff, 0xffb8, 0x739c,
    0xcf9f, 0xffb9, 0x77bd, 0x7fda, 0x779f, 0x63df, 0xffdc, 0x7bde, 0xfbbf, 0x7ffd, 0xfbde, 0x7ffd, 0xebff, 0x7fff, 0xfffe, 0xffff,
};

const u8 Tiles_sa1_title_bg[] = INCBIN_U8("data/tilemaps/sa1_title_bg/tiles.4bpp");
const u16 Tilemap_sa1_title_bg[] = INCBIN_U16("data/tilemaps/sa1_title_bg/tilemap.tilemap2");

const Tilemap sa1_title_bg = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_sa1_title_bg,
    .tilesSize = sizeof(Tiles_sa1_title_bg),
    .palette = Palette_sa1_title_bg,
    .palOffset = 0,
    .palLength = sizeof(Palette_sa1_title_bg) / sizeof(u16),
    .map = Tilemap_sa1_title_bg,
};
# 5 "src/data/tilemap_data_old_logos.c" 2
# 1 "include/../data/tilemaps/intro_presented_by_sega/header.c" 1



const u16 Palette_intro_presented_by_sega[] = INCBIN_U16("data/tilemaps/intro_presented_by_sega/palette.gbapal");
const u8 Tiles_intro_presented_by_sega[] = INCBIN_U8("data/tilemaps/intro_presented_by_sega/tiles.4bpp");
const u16 Tilemap_intro_presented_by_sega[] = INCBIN_U16("data/tilemaps/intro_presented_by_sega/tilemap.tilemap2");

const Tilemap intro_presented_by_sega = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_intro_presented_by_sega,
    .tilesSize = sizeof(Tiles_intro_presented_by_sega),
    .palette = Palette_intro_presented_by_sega,
    .palOffset = 0,
    .palLength = sizeof(Palette_intro_presented_by_sega) / sizeof(u16),
    .map = Tilemap_intro_presented_by_sega,
};
# 6 "src/data/tilemap_data_old_logos.c" 2
# 1 "include/../data/tilemaps/intro_created_by_sonic_team/header.c" 1



const u16 Palette_intro_created_by_sonic_team[] = INCBIN_U16("data/tilemaps/intro_created_by_sonic_team/palette.gbapal");
const u8 Tiles_intro_created_by_sonic_team[] = INCBIN_U8("data/tilemaps/intro_created_by_sonic_team/tiles.4bpp");
const u16 Tilemap_intro_created_by_sonic_team[] = INCBIN_U16("data/tilemaps/intro_created_by_sonic_team/tilemap.tilemap2");

const Tilemap intro_created_by_sonic_team = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_intro_created_by_sonic_team,
    .tilesSize = sizeof(Tiles_intro_created_by_sonic_team),
    .palette = Palette_intro_created_by_sonic_team,
    .palOffset = 0,
    .palLength = sizeof(Palette_intro_created_by_sonic_team) / sizeof(u16),
    .map = Tilemap_intro_created_by_sonic_team,
};
# 7 "src/data/tilemap_data_old_logos.c" 2
