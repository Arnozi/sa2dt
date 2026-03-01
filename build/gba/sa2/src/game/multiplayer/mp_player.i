# 0 "src/game/multiplayer/mp_player.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/multiplayer/mp_player.c"
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
# 2 "src/game/multiplayer/mp_player.c" 2
# 1 "include/task.h" 1
# 3 "src/game/multiplayer/mp_player.c" 2
# 1 "include/malloc_vram.h" 1
# 4 "src/game/multiplayer/mp_player.c" 2

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
# 6 "src/game/multiplayer/mp_player.c" 2

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
# 8 "src/game/multiplayer/mp_player.c" 2
# 1 "include/game/sa1_sa2_shared/collision.h" 1




# 1 "include/rect.h" 1



typedef struct {
               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Rect8;
# 6 "include/game/sa1_sa2_shared/collision.h" 2
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
# 7 "include/game/sa1_sa2_shared/collision.h" 2
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
# 8 "include/game/sa1_sa2_shared/collision.h" 2
# 20 "include/game/sa1_sa2_shared/collision.h"
u32 Coll_Player_Entity_RectIntersection(Sprite *s, s32 sx, s32 sy, Player *p, Rect8 *rectPlayer);


u32 Coll_Player_ItemBox(Sprite *, s32, s32);

bool32 Coll_Player_Entity_HitboxN(Sprite *, s32, s32, s16, Player *, s16);
bool32 Coll_Player_Boss_Attack(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 Coll_Player_Enemy(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 Coll_Cheese_Enemy_Attack(Sprite *sprTarget, s32 sx, s32 sy, s16 hbIndex, Player *p);
u32 sub_800DA4C(Sprite *opponent, s16 oppX, s16 oppY, __attribute__((unused)) s32 param3, __attribute__((unused)) s32 param4, u8 layer);
u32 sub_800CDBC(Sprite *, s32, s32, Player *);
u32 Coll_Player_Entity_Intersection(Sprite *, s32, s32, Player *);
u32 Coll_Player_Interactable(Sprite *s, s32 sx, s32 sy, Player *p);

bool32 Coll_DamagePlayer(Player *);
void Coll_Player_Enemy_AdjustSpeed(Player *);

u32 Coll_Player_Platform(Sprite *, s32 x, s32 y, Player *);

u32 sub_800CE94(Sprite *s, s32 sx, s32 sy, Rect8 *param3, Player *p);
bool32 sub_800DD54(Player *p);
bool32 sub_800DE44(Player *p);
u32 sub_800D0A0(Sprite *s, s16 worldX, s16 worldY, s16 qSpeedX, s16 qSpeedY, u8 layer, u32 arg6);

bool32 Coll_Player_Enemy_Attack(Sprite *, s32, s32, u8);

u32 Coll_Player_Projectile(Sprite *, s32, s32);
# 9 "src/game/multiplayer/mp_player.c" 2

# 1 "include/game/stage/spawn_positions.h" 1



# 1 "include/global.h" 1
# 5 "include/game/stage/spawn_positions.h" 2

extern const s16 gSpawnPositions[][2];
extern const Vec2_32 gCheckpointPositions[];

extern const Vec2_32 gUnknown_080D650C[];
extern const Vec2_32 gUnknown_080D661C[];
# 11 "src/game/multiplayer/mp_player.c" 2
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
# 12 "src/game/multiplayer/mp_player.c" 2
# 1 "include/game/stage/stage.h" 1





# 1 "include/constants/zones.h" 1
# 7 "include/game/stage/stage.h" 2

void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 13 "src/game/multiplayer/mp_player.c" 2
# 1 "include/game/stage/player.h" 1







# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 9 "include/game/stage/player.h" 2
# 1 "include/game/parameters/characters.h" 1
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
# 14 "src/game/multiplayer/mp_player.c" 2
# 1 "include/game/stage/camera.h" 1
# 9 "include/game/stage/camera.h"
void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 15 "src/game/multiplayer/mp_player.c" 2

# 1 "include/game/multiplayer/mp_player.h" 1




# 1 "include/sprite.h" 1
# 6 "include/game/multiplayer/mp_player.h" 2

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
# 17 "src/game/multiplayer/mp_player.c" 2

# 1 "include/game/stage/item_tasks.h" 1






extern struct Task *CreateItemTask_Shield_Normal(s8);
extern struct Task *CreateItemTask_Invincibility(s8);
extern struct Task *CreateItemTask_Shield_Magnetic(s8);
extern struct Task *CreateItemTask_Confusion(s8);
# 19 "src/game/multiplayer/mp_player.c" 2

# 1 "include/game/multiplayer/multiplayer_event_mgr.h" 1
# 24 "include/game/multiplayer/multiplayer_event_mgr.h"
typedef struct {
    u8 type;

    u8 x;
    u8 y;
    u8 id;
    u8 action;
} RoomEvent_PlatformChange;

typedef struct {
    u8 type;

    u8 x;
    u8 y;
    u8 id;
} RoomEvent_ItemBoxBreak;

typedef struct {
    u8 type;

    u8 x;
    u8 y;
    u8 id;
} RoomEvent_EnemyDestroy;

typedef struct {
    u8 type;

    u8 ringCount;
} RoomEvent_RingLoss;

typedef struct {
    u8 type;

    u8 x;
    u8 y;
    u8 id;
    u8 unk4;
} RoomEvent_MysteryItemBoxBreak;

typedef struct {
    u8 type;
    u8 x;
    u8 y;
} RoomEvent_GoalReached;

typedef struct {
    u8 type;
    u8 effect;
    u8 targetPlayer;
} RoomEvent_ItemEffect;

typedef struct {
    u8 type;
    u8 unk1;
    u8 unk2;
} RoomEvent_Unknown;

struct Task *CreateMultiplayerReceiveEventMgr(void);
struct Task *CreateMultiplayerSendEventMgr(void);

void ReceiveRoomEvent_PlatformChange(union MultiSioData *, u8);
void ReceiveRoomEvent_ItemBoxBreak(union MultiSioData *, u8);
void ReceiveRoomEvent_EnemyDestroyed(union MultiSioData *, u8);
void ReceiveRoomEvent_PlayerRingLoss(union MultiSioData *, u8);
void ReceiveRoomEvent_MysteryItemBoxBreak(union MultiSioData *, u8);
void ReceiveRoomEvent_Unknown(union MultiSioData *, u8);


void *CreateRoomEvent(void);
# 21 "src/game/multiplayer/mp_player.c" 2
# 1 "include/game/multiplayer/mp_attack_1_effect.h" 1





void CreateMPAttackEffect(void);

extern s32 gUnused_03005B78;
extern bool8 gShouldSpawnMPAttackEffect;
# 22 "src/game/multiplayer/mp_player.c" 2




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
# 27 "src/game/multiplayer/mp_player.c" 2

# 1 "include/game/multiplayer/multipak_connection.h" 1







extern u8 gMultiplayerUnlockedCharacters;
extern u8 gMultiplayerConnections;
extern u8 gMultiplayerUnlockedLevels;

void StartMultiPakConnect(void);
void LinkCommunicationError(void);
# 29 "src/game/multiplayer/mp_player.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 31 "src/game/multiplayer/mp_player.c" 2
# 1 "include/constants/char_states.h" 1
# 32 "src/game/multiplayer/mp_player.c" 2

# 1 "include/constants/songs.h" 1
# 34 "src/game/multiplayer/mp_player.c" 2
# 54 "src/game/multiplayer/mp_player.c"
u32 unused_3005838 = 0;
bool8 gShouldSpawnMPAttack2Effect = 0;

void Task_CreateMultiplayerPlayer(void);
void TaskDestructor_MultiplayerPlayer(struct Task *);

void sub_8016D20(void);
void sub_801707C(void);
void sub_8017670(void);
void sub_8017C28(void);
void sub_8017F34(void);
void sub_8018120(void);
u32 sub_80181E0(void);
bool32 sub_8018300(void);
void LaunchPlayer(s16);







void CreateMultiplayerPlayer(u8 id)
{
    struct Task *t = TaskCreate(Task_CreateMultiplayerPlayer, sizeof(MultiplayerPlayer), 0x2000, 0, TaskDestructor_MultiplayerPlayer);
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((t)->data));
    Sprite *s;
    SpriteTransform *tf;
    u16 *p;
    u32 pid;
    mpp->unk56 = id;



    mpp->unk54 = 0x40;

    mpp->unk44 = 0;
    mpp->unk48 = 0;
    mpp->unk66 = 0;
    mpp->unk68 = 0;
    mpp->unk6A = 0;

    if (id != ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id) {
        mpp->unk60 = 30;
    } else {
        mpp->unk60 = 0;
    }

    mpp->unk57 = 128;
    mpp->unk61 = 0;
    mpp->unk5C = 0;
    mpp->unk64 = mpp->unk56;

    if (gGameMode != 5) {
        mpp->unk5C |= 2;
    }

    mpp->pos.x = 0;
    mpp->pos.y = 0;
# 176 "src/game/multiplayer/mp_player.c"
    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)) || gGameMode == 3 || gGameMode == 4) {
        mpp->pos.x = gSpawnPositions[gCurrentLevel][0];
        mpp->pos.y = gSpawnPositions[gCurrentLevel][1];
    } else

    {
        switch (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id) {
            case 0: {
                mpp->pos.x = 232;
                mpp->pos.y = 829;
                break;
            }
            case 1: {
                mpp->pos.x = 1585;
                mpp->pos.y = 279;
                break;
            }
            case 2: {
                mpp->pos.x = 1585;
                mpp->pos.y = 926;
                break;
            }
            case 3: {
                mpp->pos.x = 232;
                mpp->pos.y = 348;
                break;
            }
        }
    }


    s = &mpp->s;
    tf = &mpp->transform;







    s->oamFlags = ((16) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));



    s->palId = mpp->unk56;

    s->hitboxes[0].index = -1;
    s->frameFlags = ((2) << (12));

    s->graphics.anim = 0;
    s->variant = 0;
    s->x = 0;
    s->y = 0;

    tf->qScaleY = 256;



    s->graphics.anim = gPlayerCharacterIdleAnims[gMultiplayerCharacters[mpp->unk56]];


    if (mpp->unk56 != ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id) {
        s->graphics.dest = VramMalloc(64);
        s->frameFlags |= ((1) << (9));
    } else {
        s->graphics.dest = (void *)(u8*)(0x6000000 + 0x10000);
    }

    UpdateSpriteAnimation(s);


    gMultiplayerPlayerTasks[mpp->unk56] = t;
}
# 589 "src/game/multiplayer/mp_player.c"
__attribute__((naked)) void Task_CreateMultiplayerPlayer(void) { asm(".include " "\"asm/non_matching/game/multiplayer/mp_player__Task_CreateMultiplayerPlayer.inc\""); if (0)




{
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &mpp->s;
    SpriteTransform *transform = &mpp->transform;
    s32 id = mpp->unk56;
    union MultiSioData *recv = &gMultiSioRecv[id];

    u32 i;

    if ((gMultiSioStatusFlags & (0x0001 << (id)))) {
        mpp->unk61 = 0;
        if (gMultiSioStatusFlags & (0x0001 << (id)) && recv->pat0.unk0 == 0x5000) {
            s32 x;
            mpp->unk61 = 0;
            if (gGameMode != 5) {
                mpp->unk44 = recv->pat4.x - mpp->pos.x;
                mpp->unk48 = recv->pat4.y - mpp->pos.y;
                mpp->pos.x = recv->pat4.x;
                mpp->pos.y = recv->pat4.y;

            } else {
                mpp->unk44 = recv->pat4.x - mpp->pos.x;
                mpp->unk48 = recv->pat4.y - mpp->pos.y;
                x = ((mpp->unk44) >= 0 ? (mpp->unk44) : -(mpp->unk44));

                if (x > 15) {
                    x = ((mpp->unk48) >= 0 ? (mpp->unk48) : -(mpp->unk48));
                    if (mpp->unk44 > 0 && mpp->unk48 > 0) {
                        mpp->unk44 = recv->pat4.x - mpp->pos.x - 1440;
                        mpp->unk48 = recv->pat4.y - mpp->pos.y - 864;
                    } else {
                        if (mpp->unk44 < 0 && mpp->unk48 < 0) {
                            mpp->unk44 = recv->pat4.x - mpp->pos.x - 1440;
                            mpp->unk48 = recv->pat4.y - mpp->pos.y - 864;
                        }
                    }
                }
                mpp->pos.x = recv->pat4.x;
                mpp->pos.y = recv->pat4.y;
            }
            if (((mpp->unk44) >= 0 ? (mpp->unk44) : -(mpp->unk44)) < 0x41) {
                if (((mpp->unk48) >= 0 ? (mpp->unk48) : -(mpp->unk48)) >= 0x40) {
                    mpp->unk66 = ((s32)((mpp->unk44)*256));
                    mpp->unk68 = ((s32)((mpp->unk48)*256));
                } else {
                    mpp->unk66 = 0;
                    mpp->unk68 = 0;
                }
            } else {
                mpp->unk66 = 0;
                mpp->unk68 = 0;
            }
            {
                u8 val = recv->pat4.unk10 & ~mpp->unk57;
                if (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id == mpp->unk56) {
                    if (val & 2 && !(mpp->unk57 & 2)) {
                        CreateItemTask_Invincibility(mpp->unk56);
                    }
                    if (val & 0x50 && !(mpp->unk57 & 2)) {
                        CreateItemTask_Confusion(mpp->unk56);
                    }
                }
            }
            mpp->unk57 = recv->pat4.unk10;

            mpp->unk54 = recv->pat4.unk8;

            if (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id != mpp->unk56) {
                mpp->unk64 = ((recv->pat4.unk8) & 0x600) >> 9;
            } else {
                if (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id != mpp->unk64) {
                    MultiplayerPlayer *mpp2 = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[mpp->unk64])->data));
                    if (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id == mpp2->unk64) {
                        mpp2->unk64 = ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id;
                        gPlayer.moveState &= ~0x00000008;
                        gPlayer.moveState &= ~0x00000020;
                        gPlayer.moveState &= ~0x00000004;
                        gPlayer.moveState &= ~0x00000010;
                        gPlayer.moveState |= 0x00000002;
                        gPlayer.moveState &= ~0x00000400;
                        gPlayer.moveState &= ~0x00000100;
                        { Player_HandleSpriteYOffsetChange(&gPlayer, 14); { (&gPlayer)->spriteOffsetX = 6; (&gPlayer)->spriteOffsetY = 14; } };
                        gPlayer.unk61 = 0;
                        gPlayer.unk62 = 0;

                        gPlayer.charState = 9;
                        gPlayer.moveState |= 0x00800000;
                        gPlayer.callback = Player_TouchGround;
                        gPlayer.moveState &= ~0x00400000;
                        mpp->unk5C &= ~4;
                        if (mpp2->unk5C & 4) {
                            gPlayer.moveState &= ~0x00400000;
                            mpp2->unk5C &= ~4;
                        }
                    }
                }
            }

            {
                u32 anim;
                if (gGameMode == 5) {
                    gMultiplayerCharRings[mpp->unk56] = ((int)((recv->pat4.unk6) >> 8));
                    mpp->unk6A = recv->pat4.unk6;
                    anim = gPlayerCharacterIdleAnims[mpp->unk6A];
                } else {
                    anim = recv->pat4.unk6;
                }

                if (s->graphics.anim != anim || s->variant != (recv->pat4.unkB % 16)) {
                    s->hitboxes[0].index = -1;
                    s->hitboxes[1].index = -1;
                }

                if (mpp->unk54 & 4) {
                    if (mpp->unk5C & 4) {
                        gPlayer.moveState &= ~0x00400000;
                        mpp->unk5C &= ~4;
                    }

                    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
                        gPlayer.moveState &= ~0x00000008;
                        gPlayer.moveState |= 0x00000002;
                    }
                }

                s->graphics.anim = anim;
                s->variant = recv->pat4.unk6;
                mpp->unk58[0] = recv->pat4.unkB >> 4;
                s->animSpeed = recv->pat4.unkC;
                transform->rotation = recv->pat4.unkD << 2;
            }
        } else {
            goto thing;
# 739 "src/game/multiplayer/mp_player.c"
        }
    } else {
    thing:
        mpp->pos.x += ((int)((mpp->unk66) >> 8));
        mpp->pos.y += ((int)((mpp->unk68) >> 8));

        if (mpp->unk61++ > 30) {

            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;
            LinkCommunicationError();
            return;
        }
    }

    {
        s8 i;
        for (i = 3; i >= 0; i--) {
            if (s->graphics.anim >= gPlayerCharacterIdleAnims[i]) {
                break;
            }
        }

        s->x = mpp->pos.x - gCamera.x;
        s->y = mpp->pos.y - gCamera.y;
        transform->x = mpp->pos.x - gCamera.x;
        transform->y = mpp->pos.y - gCamera.y;

        if (mpp->unk54 & 0x800) {
            s->prevVariant = -1;
            s->hitboxes[0].index = -1;
            s->hitboxes[1].index = -1;
        }
        UpdateSpriteAnimation(s);
    }

    if (gGameMode == 4 && gMultiplayerRanks[((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id] == -1) {
        u32 someBool = 1;
        for (i = 0; i < 4; i++) {
            if (gMultiplayerPlayerTasks[i] == ((void *)0)) {
                break;
            }

            {
                MultiplayerPlayer *mpp2 = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[i])->data));
                if ((gMultiplayerConnections & (0x10 << (i))) >> ((i + 4))
                        != (gMultiplayerConnections & (0x10 << (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id))) >> (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id + 4)
                    && !(mpp2->unk54 & 0x100)) {

                    someBool = 0;
                    break;
                }
            }
        }

        if (someBool) {
            ((RoomEvent *)CreateRoomEvent())->type = 7;
        }
    }

    if (!(gStageFlags & 1) && !(mpp->unk54 & 0x80000004)) {
        if (!(gPlayer.itemEffect & 0x80)) {
            if (!(mpp->unk5C & 1) && (gPlayer.timerInvulnerability == 0)
                && !(gPlayer.moveState & (0x00400000 | 0x00000080))) {
                if (gGameMode != 5) {
                    if (mpp->unk56 != ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id) {
                        switch (gMultiplayerCharacters[mpp->unk56]) {

                            case CHARACTER_SONIC:
                            case CHARACTER_CREAM:
                                sub_8016D20();
                                break;
                            case CHARACTER_TAILS:
                                sub_801707C();
                                break;
                            case CHARACTER_KNUCKLES:
                                sub_8017670();
                                break;
                            case CHARACTER_AMY:
                                sub_8017C28();
                                break;
                        }
                    }
                } else {
                    if (mpp->unk56 != ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id) {
                        sub_8018120();
                    }
                }
            }
        }
    } else {
        if ((gPlayer.itemEffect & 0x80) || (mpp->unk57 & 0x80) || gPlayer.timerInvincibility == 0
            || !(!(gPlayer.moveState & 0x00000080)) || gMultiplayerRanks[mpp->unk56] != -1) {
            if (gGameMode != 5) {
                if (mpp->unk56 == ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id && gMultiplayerCharacters[mpp->unk56] == CHARACTER_TAILS
                    && gMultiplayerCharacters[mpp->unk56] == CHARACTER_KNUCKLES && mpp->unk5C & 4) {
                    mpp->unk5C &= ~0x6;
                    if (!(gPlayer.itemEffect & 0x80)) {
                        gPlayer.moveState &= ~0x00400000;
                    }
                    {
                        RoomEvent_Unknown *roomEvent = CreateRoomEvent();
                        roomEvent->type = 8;
                        roomEvent->unk1 = mpp->unk56;
                        roomEvent->unk2 = 0;
                    }
                }
                if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
                    gPlayer.moveState &= ~(0x00000008 | 0x00000001);
                    gPlayer.moveState |= 0x00000002;
                    mpp->unk60 = 30;
                }
            } else {
                if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
                    gPlayer.moveState &= ~(0x00000010 | 0x00000002);
                    gPlayer.moveState |= 0x00000002;
                    mpp->unk60 = 30;
                }
            }
        }
    }

    if (mpp->unk54 & 1) {
        s->frameFlags &= ~((0x1F) << (0));
        s->frameFlags = gOamMatrixIndex++ | ((0x1F) << (0));
        if (mpp->unk54 & 2) {
            transform->qScaleX = -256;
        } else {
            transform->qScaleX = +256;
        }

        if (mpp->unk54 & 8) {
            transform->qScaleX = -transform->qScaleX;
        }
        TransformSprite(s, transform);
    } else {
        s->frameFlags &= ~0x30;
        if (mpp->unk54 & 2) {
            s->frameFlags |= ((1) << (10));
        } else {
            s->frameFlags &= ~((1) << (10));
        }
        if (mpp->unk54 & 8) {
            s->frameFlags |= ((1) << (11));
        } else {
            s->frameFlags &= ~((1) << (11));
        }
    }

    s->frameFlags &= ~((3) << (12));
    s->frameFlags |= (mpp->unk54 & 0x30) << 8;

    if (!(mpp->unk54 & 0x40)
        && ((gStageTime & 2 || mpp->unk57 & 0x20 || mpp->unk5C & 1 || gMultiplayerRanks[mpp->unk56] != -1)
            || (mpp->unk60 == 0 && !(mpp->unk54 & 4) && !(mpp->unk5C & 2)))) {
        s->oamFlags = ((16) << 6);
        if (mpp->unk54 & 0x80) {
            s->oamFlags |= 0x40;
        }

        s->frameFlags &= ~((3) << (7));
        if (mpp->unk57 & 0x20
            && (gGameMode != 4
                || ((gMultiplayerConnections & (0x10 << (mpp->unk56))) >> ((mpp->unk56 + 4))
                    != (gMultiplayerConnections & (0x10 << (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id))) >> (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id + 4)))
            && mpp->unk60 == 0 && mpp->unk56 != ((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id) {
            s->frameFlags |= ((2) << (7));
            gDispCnt |= 0x8000;
            gWinRegs[5] = ((1 << 11) | (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)));
        }

        if ((u16)(s->x + 63) < (240 + 127) && (s->y > -64 && s->y < 160 + 64)) {
            DisplaySprite(s);
        } else if (gGameMode == 5) {
            if ((gCamera.x + s->x) < 0x3C1) {
                s->x += 0x5A0;
                transform->x += 0x5A0;
                s->y += 0x360;
                transform->y += 0x360;
            } else {
                s->x -= 0x5A0;
                transform->x -= 0x5A0;
                s->y -= 0x360;
                transform->y -= 0x360;
            }

            if ((u16)(s->x + 63) < (240 + 127) && (s->y > -64 && s->y < 160 + 64)) {
                if (mpp->unk54 & 1) {
                    TransformSprite(s, transform);
                }
                DisplaySprite(s);
            }
        }
    }

    if (gShouldSpawnMPAttackEffect != 0) {
        CreateMPAttackEffect();
        gShouldSpawnMPAttackEffect = 0;
    }

    if (gShouldSpawnMPAttack2Effect != 0) {
        CreateMPAttack2Effect();
        gShouldSpawnMPAttack2Effect = 0;
    }
}
}




void sub_8016D20(void)
{
    Sprite *sprPlayer = &gPlayer.spriteInfoBody->s;
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &mpp->s;
    SpriteTransform *transform = &mpp->transform;
    u32 val;
    u8 *modePtr;
    u8 *vModePtr;

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        sub_8017F34();
    }
# 972 "src/game/multiplayer/mp_player.c"
    if (gGameMode != 4
        || ((gMultiplayerConnections & (0x10 << (mpp->unk56))) >> ((mpp->unk56 + 4))
            != (gMultiplayerConnections & (0x10 << (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id))) >> (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id + 4)))

    {
        if (!sub_8018300()) {
            return;
        }

        if (!(mpp->unk4C & 0x00000020)) {
            return;
        }

        gPlayer.moveState &= ~0x00000020;
        mpp->unk4C = 0;
        return;
    }

    if (mpp->unk60 == 0) {
        if (sub_80181E0() != 0) {
            if (mpp->unk4C & 0x00000020) {
                gPlayer.moveState &= ~0x00000020;
                mpp->unk4C = 0;
            }




            if (s->graphics.anim != ((3) + CHARACTER_SONIC * (91)))

            {
                return;
            }

            gPlayer.charState = 9;

            gPlayer.callback = Player_TouchGround;

            gPlayer.unk61 = 0;
            gPlayer.unk62 = 0;

            if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
                gPlayer.moveState &= ~0x00000008;
                gPlayer.moveState |= 0x00000002;
            }

            if (!(gStageFlags & 0x0080) && ((int)((gPlayer.qWorldY) >> 8)) > mpp->pos.y) {
                mpp->unk60 = 30;
                return;
            } else if ((gStageFlags & 0x0080) && ((int)((gPlayer.qWorldY) >> 8)) < mpp->pos.y) {
                mpp->unk60 = 30;
                return;
            } else if (s->frameFlags & ((1) << (10))) {
                gPlayer.moveState &= ~0x00000001;
                gPlayer.moveState &= ~0x00000020;
                gPlayer.qSpeedGround = ((s16)((12)*256));
                gPlayer.qSpeedAirX = ((s16)((12)*256));
            } else {
                gPlayer.moveState |= 0x00000001;
                gPlayer.moveState &= ~0x00000020;
                gPlayer.qSpeedGround = -((s16)((12)*256));
                gPlayer.qSpeedAirX = -((s16)((12)*256));
            }
            mpp->unk60 = 30;
        } else {
            if (((sprPlayer->hitboxes[1]).index != -1) && ((s->hitboxes[1]).index != -1)) {
                return;
            }

            if (gPlayer.unk61 != 0 && (gPlayer.character == CHARACTER_TAILS || gPlayer.character == CHARACTER_KNUCKLES)) {
                return;
            }

            val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 1);

            if (mpp->unk4C & 0x00000020 && !(val & 0x00000020)) {
                gPlayer.moveState &= ~0x00000020;
            }

            mpp->unk4C = val;

            if (val & 0x00200000) {
                mpp->unk60 = 30;
            }

            if (!(val & (0x00010000 | 0x00000020 | 0x00000008))) {
                return;
            }




            if (s->graphics.anim != ((3) + CHARACTER_SONIC * (91)))

            {
                return;
            }
            gPlayer.charState = 9;

            gPlayer.callback = Player_TouchGround;

            gPlayer.unk61 = 0;
            gPlayer.unk62 = 0;

            if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
                gPlayer.moveState &= ~0x00000008;
                gPlayer.moveState |= 0x00000002;
            }

            if (!(gStageFlags & 0x0080) && ((int)((gPlayer.qWorldY) >> 8)) > mpp->pos.y) {
                mpp->unk60 = 30;
                return;
            } else if ((gStageFlags & 0x0080) && ((int)((gPlayer.qWorldY) >> 8)) < mpp->pos.y) {
                mpp->unk60 = 30;
                return;
            } else if (s->frameFlags & ((1) << (10))) {
                gPlayer.moveState &= ~0x00000001;
                gPlayer.moveState &= ~0x00000020;
                gPlayer.qSpeedGround = ((s32)((12)*256));
                gPlayer.qSpeedAirX = ((s32)((12)*256));
            } else {
                gPlayer.moveState |= 0x00000001;
                gPlayer.moveState &= ~0x00000020;
                gPlayer.qSpeedGround = -((s32)((12)*256));
                gPlayer.qSpeedAirX = -((s32)((12)*256));
            }
            mpp->unk60 = 30;
        }
    } else {
        mpp->unk60--;

        if (!(gPlayer.moveState & 0x00000008)) {
            return;
        }

        if (gPlayer.stoodObj != s) {
            return;
        }

        val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 0);

        if ((mpp->unk4C & 0x00000020) && !(val & 0x00000020)) {
            gPlayer.moveState &= ~0x00000020;
        }

        mpp->unk4C = val;
        return;
    }
}




void sub_801707C(void)
{

    Sprite *playerSprite, *s;
    MultiplayerPlayer *mpp;

    bool8 someBool;
    u32 moveStateVal, val;
    s32 result;
    u8 unusedByte;

    playerSprite = &gPlayer.spriteInfoBody->s;
    someBool = 0;
    mpp = (void *)(0x03000000 + ((gCurTask)->data));
    s = &mpp->s;
    moveStateVal = (gPlayer.moveState >> 5) & 1;

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        sub_8017F34();
        someBool = 1;
    }
# 1154 "src/game/multiplayer/mp_player.c"
    if (gGameMode != 4
        || ((gMultiplayerConnections & (0x10 << (mpp->unk56))) >> ((mpp->unk56 + 4))
            != (gMultiplayerConnections & (0x10 << (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id))) >> (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id + 4)))

    {
        if (sub_8018300() == 0) {
            return;
        }

        if (!(mpp->unk4C & 0x00000020)) {
            return;
        }

        gPlayer.moveState &= ~0x00000020;
        mpp->unk4C = 0;
        return;
    }

    if (gPlayer.unk61 != 0 && gPlayer.character == CHARACTER_KNUCKLES) {
        return;
    }

    if (mpp->unk60 == 0 || (mpp->unk5C & 4)) {
        u32 someOtherBool;

        mpp->unk60 = 0;

        if ((s->graphics.anim != ((22) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((21) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((20) + CHARACTER_TAILS * (91)))) {
            if (sub_80181E0()) {
                if (!(mpp->unk4C & 0x20)) {
                    return;
                }

                gPlayer.moveState &= ~0x00000020;
                mpp->unk4C = 0;
                return;
            }
        }

        if ((s->graphics.anim != ((22) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((21) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((20) + CHARACTER_TAILS * (91))) && ((playerSprite->hitboxes[1]).index != -1) && ((s->hitboxes[1]).index != -1)) {
            return;
        }

        someOtherBool = (gPlayer.moveState >> 1) & 1;
        val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 1);

        if ((mpp->unk4C & 0x20) && !(val & 0x20)) {
            gPlayer.moveState &= ~0x00000020;
        }

        mpp->unk4C = val;

        if (val & 0x200000) {
            mpp->unk60 = 30;
        }

        if (!(mpp->unk5C & 4)) {
            if ((someOtherBool || someBool) && (val & 0x10028 && !(s->graphics.anim != ((22) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((21) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((20) + CHARACTER_TAILS * (91))) && (!!(gStageFlags & 0x0080) != !(mpp->unk54 & 8)))) {

                s32 y;
                if (!(gStageFlags & 0x0080)) {
                    result = sub_801E4E4((((((int)((gPlayer.qWorldY) >> 8))) > (mpp->pos.y)) ? (((int)((gPlayer.qWorldY) >> 8))) : (mpp->pos.y)) + gPlayer.spriteOffsetY, ((int)((gPlayer.qWorldX) >> 8)),
                                                    gPlayer.layer, 8, &unusedByte, sub_801EE64);
                } else {
                    result = sub_801E4E4((((((int)((gPlayer.qWorldY) >> 8))) < (mpp->pos.y)) ? (((int)((gPlayer.qWorldY) >> 8))) : (mpp->pos.y)) - gPlayer.spriteOffsetY, ((int)((gPlayer.qWorldX) >> 8)),
                                                    gPlayer.layer, -8, &unusedByte, sub_801EE64);
                }

                if (result - gPlayer.spriteOffsetY > 0) {
                    gPlayer.moveState |= 0x00400000;
                    gPlayer.moveState &= ~0x00000008;

                    mpp->unk5C |= 4;
                    { Player_HandleSpriteYOffsetChange(&gPlayer, 14); { (&gPlayer)->spriteOffsetX = 6; (&gPlayer)->spriteOffsetY = 14; } };

                    {
                        RoomEvent_Unknown *roomEvent = CreateRoomEvent();
                        roomEvent->type = 8;
                        roomEvent->unk1 = mpp->unk56;
                        roomEvent->unk2 = 1;
                    }

                    if (!(gStageFlags & 0x0080)) {
                        mpp->unk5C &= ~0x100;
                    } else {
                        mpp->unk5C |= 0x100;
                    }
                }
            }

            if (!(mpp->unk5C & 4)) {
                return;
            }
        }


        gPlayer.charState = 0;
        gPlayer.callback = Player_TouchGround;



        gPlayer.moveState |= 0x00000002;
        gPlayer.unk61 = 0;
        gPlayer.unk62 = 0;

        if (Player_TryJump(&gPlayer)) {
            mpp->unk60 = 30;
            gPlayer.moveState &= ~0x00400000;
            mpp->unk5C &= ~4;

        } else {
            if ((s->graphics.anim != ((22) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((21) + CHARACTER_TAILS * (91)) && s->graphics.anim != ((20) + CHARACTER_TAILS * (91))) || ((int)((gPlayer.qWorldX) >> 8)) <= gCamera.minX || ((int)((gPlayer.qWorldX) >> 8)) >= gCamera.maxX
                || (!(gStageFlags & 0x0080) != !(mpp->unk54 & 8) || !(mpp->unk5C & 0x100) != !(gStageFlags & 0x0080)) || moveStateVal != 0) {
                gPlayer.moveState &= ~0x00400000;
                mpp->unk5C &= ~4;
                gPlayer.charState = 0;

                gPlayer.callback = Player_TouchGround;

                if ((!(gStageFlags & 0x0080) != !(mpp->unk54 & 8) || !(mpp->unk5C & 0x100) != !(gStageFlags & 0x0080))) {
                    gPlayer.timerInvulnerability = 60;
                }
            } else {
                if (gPlayer.moveState & 0x00000008) {
                    gPlayer.moveState &= ~0x00400000;
                    mpp->unk5C &= ~4;
                } else {
                    s32 x, y;
                    bool32 invertedGravity = (gStageFlags & 0x0080);
                    mpp->unk5C |= 4;
                    x = ((s32)((mpp->pos.x)*256));


                    if (!invertedGravity) {



                        y = ((s32)((mpp->pos.y + (s->hitboxes[0].bottom) + 17)*256));

                        result = sub_801E4E4(((int)((gPlayer.qWorldY) >> 8)) + gPlayer.spriteOffsetY, ((int)((gPlayer.qWorldX) >> 8)), gPlayer.layer, 8,
                                                        &unusedByte, sub_801EE64);

                        if (result < 0) {
                            y += ((s32)((result)*256));
                            gPlayer.moveState &= ~0x00400000;
                            gPlayer.moveState |= 0x00000002;
                            mpp->unk5C &= ~4;
                        }

                    } else {



                        y = ((s32)((mpp->pos.y + (s->hitboxes[0].top) - 17)*256));

                        result = sub_801E4E4(((int)((gPlayer.qWorldY) >> 8)) - gPlayer.spriteOffsetY, ((int)((gPlayer.qWorldX) >> 8)), gPlayer.layer, -8,
                                                        &unusedByte, sub_801EE64);

                        if (result < 0) {
                            y -= ((s32)((result)*256));
                            gPlayer.moveState &= ~0x00400000;
                            gPlayer.moveState |= 0x00000002;
                            mpp->unk5C &= ~4;
                        }
                    }
                    gPlayer.qWorldX = x;
                    gPlayer.qWorldY = y;
                    if (mpp->unk5C & 4) {


                        u32 speed = 0;
                        gPlayer.qSpeedAirX = speed;
                        invertedGravity = (gStageFlags & 0x0080);
                        if (!invertedGravity) {
                            invertedGravity = 0;
                        } else {
                            invertedGravity = 0;
                        }
                        gPlayer.qSpeedAirY = speed;
                        asm("" ::: "r2");





                        gPlayer.moveState &= ~0x00000020;
                    }
                }
            }
        }

        if (!(mpp->unk5C & 4)) {
            RoomEvent_Unknown *roomEvent = CreateRoomEvent();
            roomEvent->type = 8;
            roomEvent->unk1 = mpp->unk56;
            roomEvent->unk2 = 0;
        }

        if (!(gStageFlags & 0x0080)) {
            mpp->unk5C &= ~0x100;
        } else {
            mpp->unk5C |= 0x100;
        }
    } else {
        mpp->unk60--;

        if (!(gPlayer.moveState & 0x00000008)) {
            return;
        }

        if (gPlayer.stoodObj != s) {
            return;
        }

        val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 0);

        if ((mpp->unk4C & 0x00000020) && !(val & 0x00000020)) {
            gPlayer.moveState &= ~0x00000020;
        }

        mpp->unk4C = val;
    }
}







void sub_8017670(void)

{
    Sprite *playerSprite, *s;
    MultiplayerPlayer *mpp;

    u32 moveStateVal, val;
    s32 result;
    u8 unusedByte;

    playerSprite = &gPlayer.spriteInfoBody->s;
    mpp = (void *)(0x03000000 + ((gCurTask)->data));
    s = &mpp->s;
    moveStateVal = (gPlayer.moveState >> 5) & 1;

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        sub_8017F34();
    }
# 1410 "src/game/multiplayer/mp_player.c"
    if (gGameMode != 4
        || ((gMultiplayerConnections & (0x10 << (mpp->unk56))) >> ((mpp->unk56 + 4))
            != (gMultiplayerConnections & (0x10 << (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id))) >> (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id + 4)))

    {
        if (!sub_8018300()) {
            return;
        }

        if (!(mpp->unk4C & 0x20)) {
            return;
        }

        gPlayer.moveState &= ~0x00000020;
        mpp->unk4C = 0;
        return;
    }

    if (gPlayer.unk61 != 0 && gPlayer.character == CHARACTER_TAILS) {
        return;
    }

    if (mpp->unk60 == 0 || (mpp->unk5C & 4)) {
        mpp->unk60 = 0;
        if ((s->graphics.anim != ((19) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((20) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((21) + CHARACTER_KNUCKLES * (91)))) {
            if (sub_80181E0()) {
                if (!(mpp->unk4C & 0x20)) {
                    return;
                }
                gPlayer.moveState &= ~0x00000020;
                mpp->unk4C = 0;
                return;
            }

            if ((s->graphics.anim != ((19) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((20) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((21) + CHARACTER_KNUCKLES * (91))) && ((playerSprite->hitboxes[1]).index != -1) && ((s->hitboxes[1]).index != -1)) {
                return;
            }
        }

        {
            s8 rect[4] = { -gPlayer.spriteOffsetX, -gPlayer.spriteOffsetY, gPlayer.spriteOffsetX, gPlayer.spriteOffsetY };
            val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 1);

            if (mpp->unk4C & 0x20 && !(val & 0x20)) {
                gPlayer.moveState &= ~0x00000020;
            }

            mpp->unk4C = val;

            if (val & 0x200000) {
                mpp->unk60 = 30;
            }

            if (Coll_Player_Entity_RectIntersection(s, mpp->pos.x, mpp->pos.y, &gPlayer, (Rect8 *)rect)) {
                u8 temp = ((mpp->unk54 >> 7) & 1);
                if ((temp == gPlayer.layer) && !(s->graphics.anim != ((19) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((20) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((21) + CHARACTER_KNUCKLES * (91))) && !(gStageFlags & 0x0080) == !(mpp->unk54 & 8)) {
                    if ((!(gStageFlags & 0x0080) && ((int)((gPlayer.qWorldY) >> 8)) > mpp->pos.y)
                        || ((gStageFlags & 0x0080) && ((int)((gPlayer.qWorldY) >> 8)) < mpp->pos.y)) {
                        gPlayer.moveState |= 0x00400000;
                        { Player_HandleSpriteYOffsetChange(&gPlayer, 14); { (&gPlayer)->spriteOffsetX = 6; (&gPlayer)->spriteOffsetY = 14; } };
                        gPlayer.qSpeedGround = 0;
                        gPlayer.qSpeedAirX = 0;
                        gPlayer.charState = 0;
                        gPlayer.unk61 = 0;
                        gPlayer.unk62 = 0;
                        if (s->frameFlags & ((1) << (10))) {
                            gPlayer.moveState &= ~0x00000001;
                        } else {
                            gPlayer.moveState |= 0x00000001;
                        }
                        if (!(mpp->unk5C & 4)) {
                            {
                                RoomEvent_Unknown *roomEvent = CreateRoomEvent();
                                roomEvent->type = 8;
                                roomEvent->unk1 = mpp->unk56;
                                roomEvent->unk2 = 1;
                            }
                            if (!(gStageFlags & 0x0080)) {
                                mpp->unk5C &= ~0x100;
                            } else {
                                mpp->unk5C |= 0x100;
                            }
                        }
                        mpp->unk5C |= 4;
                    }
                }
            }

            if (!(mpp->unk5C & 4)) {
                return;
            }

            if (Player_TryJump(&gPlayer) != 0) {
                mpp->unk60 = 30;
                gPlayer.moveState &= ~0x00400000;
                mpp->unk5C &= ~0x4;
                return;
            }

            if ((s->graphics.anim != ((19) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((20) + CHARACTER_KNUCKLES * (91)) && s->graphics.anim != ((21) + CHARACTER_KNUCKLES * (91))) || ((int)((gPlayer.qWorldX) >> 8)) <= gCamera.minX || ((int)((gPlayer.qWorldX) >> 8)) >= gCamera.maxX
                || (!(gStageFlags & 0x0080) != !(mpp->unk54 & 8) || !(mpp->unk5C & 0x100) != !(gStageFlags & 0x0080)) || moveStateVal != 0) {
                gPlayer.moveState &= ~0x00400000;
                mpp->unk5C &= ~4;
                gPlayer.charState = 0;
                if ((!(gStageFlags & 0x0080) != !(mpp->unk54 & 8) || !(mpp->unk5C & 0x100) != !(gStageFlags & 0x0080))) {
                    mpp->unk60 = 30;
                }

                return;
            }
            {
                s32 x, y;
                s32 playerUnk17 = gPlayer.spriteOffsetY;
                bool32 gravityInverted = (gStageFlags & 0x0080);

                x = ((s32)((mpp->pos.x) << 8));


                if (!(gravityInverted)) {





                    y = ((s32)(((mpp->pos.y + (s->hitboxes[0].top)) - rect[3]) << 8));
                    result = sub_801F100((mpp->pos.y + (s->hitboxes[0].top) - rect[3]) - playerUnk17, ((int)((x) >> 8)), gPlayer.layer, -8,
                                                    sub_801EC3C);


                    if (result < 0) {
                        y -= ((s32)((result) << 8));
                        gPlayer.moveState &= ~0x00400000;
                        gPlayer.moveState |= 0x00000002;
                        mpp->unk5C &= ~4;
                    }
                } else {





                    y = ((s32)((mpp->pos.y + (s->hitboxes[0].bottom) + rect[3]) << 8));
                    result = sub_801F100(((mpp->pos.y + (s->hitboxes[0].bottom) + rect[3]) + playerUnk17), ((int)((x) >> 8)), gPlayer.layer,
                                                    8, sub_801EC3C);


                    if (result < 0) {
                        y += ((s32)((result) << 8));
                        gPlayer.moveState &= ~0x00400000;
                        gPlayer.moveState |= 0x00000002;
                        mpp->unk5C &= ~4;
                    }
                }
                gPlayer.qWorldX = x;
                gPlayer.qWorldY = y;
            }

            if ((mpp->unk5C & 4)) {
                gPlayer.moveState |= 0x00000008;
                gPlayer.moveState &= ~0x00000004;
                gPlayer.moveState &= ~0x00000002;

                gPlayer.stoodObj = s;
                gPlayer.qSpeedAirY = 0;

                if ((s->frameFlags & ((1) << (10)))) {
                    gPlayer.moveState &= ~0x00000001;
                } else {
                    gPlayer.moveState |= 0x00000001;
                }
            }

            if (!(mpp->unk5C & 4)) {
                RoomEvent_Unknown *roomEvent = CreateRoomEvent();
                roomEvent->type = 8;
                roomEvent->unk1 = mpp->unk56;
                roomEvent->unk2 = 0;
            }

            if (!(gStageFlags & 0x0080)) {
                mpp->unk5C &= ~0x100;
            } else {
                mpp->unk5C |= 0x100;
            }
        }
    } else {
        mpp->unk60--;

        if (!(gPlayer.moveState & 0x00000008)) {
            return;
        }

        if (gPlayer.stoodObj != s) {
            return;
        }

        val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 0);

        if ((mpp->unk4C & 0x00000020) && !(val & 0x00000020)) {
            gPlayer.moveState &= ~0x00000020;
        }

        mpp->unk4C = val;
    }
}




void sub_8017C28(void)
{
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &mpp->s;
    u32 val;

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        sub_8017F34();
    }
# 1636 "src/game/multiplayer/mp_player.c"
    if (gGameMode != 4
        || ((gMultiplayerConnections & (0x10 << (mpp->unk56))) >> ((mpp->unk56 + 4))
            != (gMultiplayerConnections & (0x10 << (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id))) >> (((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id + 4)))

    {
        if (!sub_8018300()) {
            return;
        }

        if (!(mpp->unk4C & 0x20)) {
            return;
        }

        gPlayer.moveState &= ~0x00000020;
        mpp->unk4C = 0;
        return;
    }

    if (mpp->unk60 == 0) {
        if (!((s->hitboxes[1]).index != -1)) {
            if (gPlayer.unk61 != 0 && (gPlayer.character == CHARACTER_TAILS || gPlayer.character == CHARACTER_KNUCKLES)) {
                return;
            }

            val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 1);

            if (mpp->unk4C & 0x20 && !(val & 0x20)) {
                gPlayer.moveState &= ~0x00000020;
            }
            mpp->unk4C = val;
            return;
        } else {
            if (gPlayer.unk61 != 0 && (gPlayer.character == CHARACTER_TAILS || gPlayer.character == CHARACTER_KNUCKLES)) {
                return;
            }
            val = sub_800DA4C(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1);
            if ((val & 2) && !(gPlayer.moveState & 0x00000002) && gPlayer.rotation == 0) {



                if (s->graphics.anim == ((14) + CHARACTER_AMY * (91)))

                {
                    LaunchPlayer(-((s16)((7.5)*256)));

                    goto lab;




                }




                if (s->graphics.anim == ((19) + CHARACTER_AMY * (91)))

                {
                    LaunchPlayer(-((s16)((10.5)*256)));

                    goto lab;




                }
            }

            if ((val & 1)) {
                if ((val & 0x20000)) {
                    if (gPlayer.qSpeedAirX > 0) {
                        gPlayer.qSpeedAirX = -gPlayer.qSpeedAirX;
                        gPlayer.qSpeedGround = -gPlayer.qSpeedGround;
                    }
                } else if ((val & 0x40000)) {
                    if (gPlayer.qSpeedAirX < 0) {
                        gPlayer.qSpeedAirX = -gPlayer.qSpeedAirX;
                        gPlayer.qSpeedGround = -gPlayer.qSpeedGround;
                    }
                }

                if (val & 0x100000 && gPlayer.qSpeedAirY > 0) {
                    gPlayer.qSpeedAirY = -gPlayer.qSpeedAirY;
                }

            lab:

                mpp->unk60 = 30;
                return;
            } else {
                val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 1);

                if (mpp->unk4C & 0x20 && !(val & 0x20)) {
                    gPlayer.moveState &= ~0x00000020;
                }

                mpp->unk4C = val;
                return;
            }
        }

    } else {
        mpp->unk60--;

        if (!(gPlayer.moveState & 0x00000008)) {
            return;
        }

        if (gPlayer.stoodObj != s) {
            return;
        }

        val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 0);

        if (mpp->unk4C & 0x20 && !(val & 0x20)) {
            gPlayer.moveState &= ~0x00000020;
        }
        mpp->unk4C = val;
    }
}

void sub_8017F34(void)
{
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((gCurTask)->data));
    MultiplayerPlayer *otherMpp;
    s32 result;

    if ((((mpp->unk44) >= 0 ? (mpp->unk44) : -(mpp->unk44)) > 0x80) || (((mpp->unk48) >= 0 ? (mpp->unk48) : -(mpp->unk48)) > 0x80)) {
        gPlayer.moveState &= ~0x8;
        gPlayer.moveState |= 2;
        mpp->unk60 = 30;
        return;
    }


    otherMpp = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id])->data));
    if ((otherMpp->unk54 & 0x80) != (mpp->unk54 & 0x80)) {
        gPlayer.moveState &= ~0x00000008;
        gPlayer.stoodObj = (void *)-1;
        mpp->unk64 = mpp->unk56;
        return;
    }


    gPlayer.qWorldX += ((s32)((mpp->unk44)*256));
    if (!(gStageFlags & 0x0080)) {
        gPlayer.qWorldY += ((s32)((mpp->unk48)*256)) + ((s32)((1)*256));
    } else {
        gPlayer.qWorldY += ((s32)((mpp->unk48)*256)) - ((s32)((2)*256));
    }

    if (mpp->unk48 < 0) {
        result = sub_801F100(((int)((gPlayer.qWorldY) >> 8)) - gPlayer.spriteOffsetY, ((int)((gPlayer.qWorldX) >> 8)), gPlayer.layer, -8,
                                        sub_801EC3C);
        if (result < 0) {
            gPlayer.qWorldY -= ((s32)((result)*256));
            gPlayer.moveState &= ~0x00000008;
            gPlayer.moveState |= 0x00000002;
            mpp->unk60 = 30;
        }
    } else if (mpp->unk48 > 0) {
        result = sub_801F100(((int)((gPlayer.qWorldY) >> 8)) + gPlayer.spriteOffsetY, ((int)((gPlayer.qWorldX) >> 8)), gPlayer.layer, 8,
                                        sub_801EC3C);
        if (result < 0) {
            gPlayer.qWorldY += ((s32)((result)*256));
            gPlayer.moveState &= ~0x00000008;
            gPlayer.moveState |= 0x00000002;
            mpp->unk60 = 30;
        }
    }

    if (mpp->unk44 < 0) {
        result = sub_801F100(((int)((gPlayer.qWorldX) >> 8)) - gPlayer.spriteOffsetX, ((int)((gPlayer.qWorldY) >> 8)), gPlayer.layer, -8,
                                        sub_801EB44);
        if (result < 0) {
            gPlayer.qWorldX -= ((s32)((result)*256));
        }
        return;
    } else if (mpp->unk44 > 0) {
        result = sub_801F100(((int)((gPlayer.qWorldX) >> 8)) + gPlayer.spriteOffsetX, ((int)((gPlayer.qWorldY) >> 8)), gPlayer.layer, 8,
                                        sub_801EB44);
        if (result < 0) {
            gPlayer.qWorldX += ((s32)((result)*256));
        }
        return;
    }
}




void sub_8018120(void)
{
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &mpp->s;
    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        MultiplayerPlayer *otherMpp;
        gPlayer.qWorldX += ((s32)((mpp->unk44)*256));
        gPlayer.qWorldY += ((s32)((mpp->unk48)*256)) + ((s32)((1)*256));


        otherMpp = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[((volatile struct SioMultiCnt *)(0x4000000 + 0x128))->id])->data));

        if ((otherMpp->unk54 & 0x80) != (mpp->unk54 & 0x80)) {
            gPlayer.moveState &= ~0x00000008;
            gPlayer.stoodObj = (void *)-1;
            mpp->unk64 = mpp->unk56;
        }

    }

    if (sub_8018300() && (mpp->unk4C & 0x20)) {
        gPlayer.moveState &= ~0x00000020;
        mpp->unk4C = 0;
    }
}



bool32 sub_80181E0(void)
{
    Sprite *sprPlayer = &gPlayer.spriteInfoBody->s;
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &mpp->s;

    u32 val;

    if (((sprPlayer->hitboxes[1]).index != -1) && ((s->hitboxes[1]).index != -1)) {
        val = sub_800DA4C(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1);

        if ((val & 1)) {
            if (gPlayer.unk61 == 0 && (val & 0x20000)) {
                if (gPlayer.qSpeedAirX > 0) {
                    gPlayer.qSpeedAirX = -gPlayer.qSpeedAirX;
                    gPlayer.qSpeedGround = -gPlayer.qSpeedGround;
                }
            } else if (gPlayer.unk61 == 0 && (val & 0x40000)) {
                if (gPlayer.qSpeedAirX < 0) {
                    gPlayer.qSpeedAirX = -gPlayer.qSpeedAirX;
                    gPlayer.qSpeedGround = -gPlayer.qSpeedGround;
                }
            }

            if (val & 0x100000 && gPlayer.qSpeedAirY > 0) {
                gPlayer.qSpeedAirY = -gPlayer.qSpeedAirY;
            }
            mpp->unk60 = 30;
            return 1;
        }
    }

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        gPlayer.moveState &= ~0x00000008;
        gPlayer.moveState |= 0x00000002;
    }
    return 0;
}


bool32 sub_8018300(void)
{
    MultiplayerPlayer *mpp;
    MultiplayerPlayer *otherMPP;
    Sprite *s;
    Sprite *sprPlayer;
    u32 val;

    sprPlayer = &gPlayer.spriteInfoBody->s;
    mpp = (void *)(0x03000000 + ((gCurTask)->data));
    s = &mpp->s;





    if (mpp->unk60 == 0) {
        u32 val2 = sub_800DA4C(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1);

        if (gGameMode == 5 && !(val2 & 3)) {
            if (mpp->pos.x > 960) {
                val2 = sub_800DA4C(s, mpp->pos.x - 1440, mpp->pos.y - 864, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1);
            } else {
                val2 = sub_800DA4C(s, mpp->pos.x + 1440, mpp->pos.y + 864, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1);
            }
        }


        if (val2 & 1) {
            if (gPlayer.unk61 == 0 && (val2 & 0x20000)) {
                if (gPlayer.qSpeedAirX > 0) {
                    gPlayer.qSpeedAirX = -gPlayer.qSpeedAirX;
                    gPlayer.qSpeedGround = -gPlayer.qSpeedGround;
                }
            } else if (gPlayer.unk61 == 0 && (val2 & 0x40000)) {
                if (gPlayer.qSpeedAirX < 0) {
                    gPlayer.qSpeedAirX = -gPlayer.qSpeedAirX;
                    gPlayer.qSpeedGround = -gPlayer.qSpeedGround;
                }
            }

            if (val2 & 0x100000 && gPlayer.qSpeedAirY > 0) {
                gPlayer.qSpeedAirY = -gPlayer.qSpeedAirY;
            }
            mpp->unk60 = 30;

            if (!(val2 & 2)) {
                return 1;
            }
        }
        if (val2 & 2) {
# 1960 "src/game/multiplayer/mp_player.c"
            if (val2 & 1) {
                if (mpp->pos.x < ((int)((gPlayer.qWorldX) >> 8))) {
                    gPlayer.moveState &= ~0x00000001;
                } else {
                    gPlayer.moveState |= 0x00000001;
                }
                sub_800DE44(&gPlayer);
            } else

            {
                if (mpp->pos.x < ((int)((gPlayer.qWorldX) >> 8))) {
                    gPlayer.moveState |= 0x00000001;
                } else {
                    gPlayer.moveState &= ~0x00000001;
                }
                sub_800DD54(&gPlayer);
            }

            mpp->unk60 = 30;
# 2004 "src/game/multiplayer/mp_player.c"
            return 1;
        }

        if (!((sprPlayer->hitboxes[1]).index != -1) && !((s->hitboxes[1]).index != -1)) {
            u32 existingMoveState = gPlayer.moveState;
            Sprite *existingS = gPlayer.stoodObj;
            s16 x, y;




            val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1, val2 & 2);
            if (gGameMode == 5 && val == 0) {
                gPlayer.moveState = existingMoveState;
                gPlayer.stoodObj = existingS;

                if (mpp->pos.x > 960) {
                    val = sub_800D0A0(s, mpp->pos.x - 1440, mpp->pos.y - 864, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1,
                                                 val);
                } else {
                    val = sub_800D0A0(s, mpp->pos.x + 1440, mpp->pos.y + 864, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1,
                                                 val);
                }
            }


            if (mpp->unk4C & 0x20 && !(val & 0x20)) {
                gPlayer.moveState &= ~0x00000020;
            }
            mpp->unk4C = val;
            if ((val & 0x200000)) {
                mpp->unk60 = 30;
            }
        } else {
            if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
                gPlayer.moveState &= ~0x00000008;
                gPlayer.moveState |= 0x00000002;
            }

            if (mpp->unk4C & 0x20) {
                gPlayer.moveState &= ~0x00000020;
            }
        }
        return 0;
    }

    mpp->unk60--;

    if (!(gPlayer.moveState & 0x00000008)) {
        return 0;
    }

    if (gPlayer.stoodObj != s) {
        return 0;
    }

    val = sub_800D0A0(s, mpp->pos.x, mpp->pos.y, mpp->unk66, mpp->unk68, mpp->unk54 >> 7 & 1, 0);


    if (gGameMode == 5 && val == 0) {
        if (mpp->pos.x > 960) {
            val = sub_800D0A0(s, mpp->pos.x - 1440, mpp->pos.y - 864, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1, val);
        } else {
            val = sub_800D0A0(s, mpp->pos.x + 1440, mpp->pos.y + 864, mpp->unk66, mpp->unk68, (mpp->unk54 >> 7) & 1, val);
        }
    }


    if (mpp->unk4C & 0x20 && !(val & 0x20)) {
        gPlayer.moveState &= ~0x00000020;
    }
    mpp->unk4C = val;

    if ((val & 0x200000)) {
        mpp->unk60 = 30;
    }

    return 0;
}


void Task_HandleLaunchPlayer(void)
{
    PlayerSpriteInfo *psi = gPlayer.spriteInfoBody;
    Sprite *sprPlayer = &psi->s;

    if (sprPlayer->frameFlags & ((1) << (14))) {
        s16 *airSpeed = (void *)(0x03000000 + ((gCurTask)->data));
        gPlayer.moveState &= ~0x00200000;
        gPlayer.moveState &= ~0x00800000;
        gPlayer.moveState &= ~0x00000008;
        gPlayer.moveState |= 0x00000002;
        gPlayer.moveState &= ~0x00000100;
        gPlayer.charState = 38;
        sprPlayer->prevVariant = -1;
        { Player_HandleSpriteYOffsetChange(&gPlayer, 14); { (&gPlayer)->spriteOffsetX = 6; (&gPlayer)->spriteOffsetY = 14; } };
        m4aSongNumStart(153);
        gPlayer.qSpeedAirY = *airSpeed;
        TaskDestroy(gCurTask);
        return;
    }

    if (gPlayer.charState != 109) {
        gPlayer.moveState &= ~0x00200000;
        gPlayer.moveState &= ~0x00800000;
        TaskDestroy(gCurTask);
    }
}



void sub_8018818(void)
{
    u32 i;
    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        MultiplayerPlayer *mpp;
        for (i = 0; i < 4; i++) {
            if (gMultiplayerPlayerTasks[i] == ((void *)0)) {
                break;
            }
            mpp = (void *)(0x03000000 + ((gMultiplayerPlayerTasks[i])->data));
            mpp->unk5C &= ~2;
        }

        gPlayer.timerInvulnerability = 120;
        gPlayer.itemEffect &= ~0x80;
    }
}


void TaskDestructor_MultiplayerPlayer(struct Task *t)
{
    MultiplayerPlayer *mpp = (void *)(0x03000000 + ((t)->data));
    gMultiplayerPlayerTasks[mpp->unk56] = ((void *)0);
    VramFree(mpp->s.graphics.dest);
}


void LaunchPlayer(s16 airSpeedY)
{
    struct Task *t = TaskCreate(Task_HandleLaunchPlayer, sizeof(s16), 0x2000, 0, ((void *)0));
    s16 *airSpeed = (void *)(0x03000000 + ((t)->data));
    *airSpeed = airSpeedY;
    gPlayer.moveState |= 0x00200000;
    gPlayer.heldInput = 0;
    gPlayer.charState = 109;
    gPlayer.moveState |= 0x00800000;
}
