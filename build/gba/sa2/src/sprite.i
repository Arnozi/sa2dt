# 0 "src/sprite.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/sprite.c"
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
# 2 "src/sprite.c" 2
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
# 3 "src/sprite.c" 2
# 1 "include/core.h" 1







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
# 4 "src/sprite.c" 2
# 1 "include/flags.h" 1
# 5 "src/sprite.c" 2
# 1 "include/sprite.h" 1
# 6 "src/sprite.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 7 "src/sprite.c" 2
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
# 8 "src/sprite.c" 2
# 1 "include/data/sprite_data.h" 1




# 1 "include/animation_commands.h" 1
# 6 "include/data/sprite_data.h" 2
# 16 "include/data/sprite_data.h"
extern const ACmd **const gAnimations[1133];
extern const SpriteOffset *const gSpriteDimensions[1133];
extern const OamDataShort *const gSpriteOamData[1133];
extern const u16 gSpritePalettes[][16];
# 9 "src/sprite.c" 2

# 1 "include/platform/platform.h" 1
# 17 "include/platform/platform.h"
extern unsigned char *Platform_LZDecompress(unsigned char *src, int srcSize);
extern unsigned char *Platform_RLDecompress(unsigned char *src, int srcSize);
extern void Platform_LZFree(unsigned char *dest);
extern void Platform_RLFree(unsigned char *dest);
extern void Platform_LZDecompressUnsafe(unsigned char *src, unsigned char *dest);
extern void Platform_RLDecompressUnsafe(unsigned char *src, unsigned char *dest);

extern void Platform_QueueAudio(const void *data, u32 numBytes);
extern void Platform_ProcessBackgroundsCopyQueue(void);
# 11 "src/sprite.c" 2
# 19 "src/sprite.c"
static AnimCmdResult animCmd_GetTiles(void *cursor, Sprite *s);
static AnimCmdResult animCmd_GetPalette(void *cursor, Sprite *s);
static AnimCmdResult animCmd_JumpBack(void *cursor, Sprite *s);
static AnimCmdResult animCmd_End(void *cursor, Sprite *s);
static AnimCmdResult animCmd_PlaySoundEffect(void *cursor, Sprite *s);
static AnimCmdResult animCmd_AddHitbox(void *cursor, Sprite *s);
static AnimCmdResult animCmd_TranslateSprite(void *cursor, Sprite *s);
static AnimCmdResult animCmd_8(void *cursor, Sprite *s);
static AnimCmdResult animCmd_SetIdAndVariant(void *cursor, Sprite *s);
static AnimCmdResult animCmd_10(void *cursor, Sprite *s);
static AnimCmdResult animCmd_SetSpritePriority(void *cursor, Sprite *s);
static AnimCmdResult animCmd_SetOamOrder(void *cursor, Sprite *s);





s16 sub_8004418(s16 x, s16 y)
{
    s16 fraction;
    s32 result;
    u8 index = 0;
    u8 array[] = {
                   ((int)((((s32)((0.5 * 2)*256))) >> 8)),
                   ((int)((((s32)((0.0 * 2)*256))) >> 8)),
                   ((int)((((s32)((1.0 * 2)*256))) >> 8)),
                   ((int)((((s32)((1.5 * 2)*256))) >> 8)),
                   ((int)((((s32)((3.0 * 2)*256))) >> 8)),
                   ((int)((((s32)((3.5 * 2)*256))) >> 8)),
                   ((int)((((s32)((2.5 * 2)*256))) >> 8)),
                   ((int)((((s32)((2.0 * 2)*256))) >> 8)),
    };

    if ((x | y) == 0) {
        result = -1;
    } else {
        if (x <= 0) {
            x = -x;
            index = 4;
        }
        if (y <= 0) {
            y = -y;
            index += 2;
        }
        if (x >= y) {

            y *= ((s32)((0.5)*256));

            if (x == 0) {
                fraction = y;
            } else {
                fraction = y / x;
            }
        } else {
            index += 1;

            x *= ((s32)((0.5)*256));

            if (y == 0) {
                fraction = x;
            } else {
                fraction = x / y;
            }
        }

        if (array[index] & 0x01) {
            fraction = ((s32)((0.5)*256)) - fraction;
        }

        {
            s32 val = array[index] * ((s32)((0.5)*256));
            fraction += val;
            result = ((u32)(fraction << 22) >> 22);
        }
    }

    return result;
}


void numToASCII(u8 digits[5], u16 number)
{
    u8 i;

    for (i = 0; i < 4; number <<= 4, i++) {
        u16 value = ((number & 0xF000) >> 12);
        if (value > 9) {
            digits[i] = value + 87;
        } else {
            digits[i] = value + '0';
        }
    }

    digits[i] = 0;
}






u32 Base10DigitsToHexNibbles(u16 num)
{
    u8 i;
    u16 result;
    u8 lowDigit;
    u16 remainder = num;

    result = 0;
    for (i = 0; i < 4; i++) {
        s32 divisor = Div(remainder, 10);
        lowDigit = remainder - (divisor * 10);
        remainder = divisor;

        result |= lowDigit << (i * 4);
    }

    return result;
}

AnimCmdResult UpdateSpriteAnimation(Sprite *s)
{
    static const AnimationCommandFunc animCmdTable[] = {

        animCmd_GetTiles, animCmd_GetPalette, animCmd_JumpBack, animCmd_End, animCmd_PlaySoundEffect, animCmd_AddHitbox,
        animCmd_TranslateSprite, animCmd_8, animCmd_SetIdAndVariant, animCmd_10, animCmd_SetSpritePriority, animCmd_SetOamOrder,
    };
    if ((((s)->prevVariant != (s)->variant) || ((s)->prevAnim != (s)->graphics.anim))) { (s)->graphics.size = 0; (s)->prevVariant = (s)->variant; (s)->prevAnim = (s)->graphics.anim; (s)->animCursor = 0; (s)->qAnimDelay = 0; (s)->frameFlags &= ~(((1) << (14))); };

    if (s->frameFlags & ((1) << (14)))
        return 0;

    if (s->qAnimDelay > 0)
        s->qAnimDelay -= s->animSpeed * 16;
    else {

        s32 ret;
        const ACmd *cmd;
        const ACmd *script;
        const ACmd **variants;


        variants = gRefSpriteTables->animations[((s)->graphics.anim)];
        script = variants[s->variant];
        cmd = ((void *)(script) + (s->animCursor * sizeof(s32)));
        while (cmd->id < 0) {

            ret = animCmdTable[~cmd->id]((void *)cmd, s);
            if (ret != ACMD_RESULT__RUNNING) {

                register const ACmd *newScript asm("r2");



                if (ret != ACMD_RESULT__ANIM_CHANGED) {
                    return ret;
                }


                variants = gRefSpriteTables->animations[((s)->graphics.anim)];
                newScript = variants[s->variant];


                s->animCursor = 0;


                script = newScript;
            }
            cmd = ((void *)(script) + (s->animCursor * sizeof(s32)));
        }


        s->qAnimDelay += ((s16)((((ACmd_ShowFrame *)cmd)->delay)*256));
        s->qAnimDelay -= s->animSpeed * 0x10;
        {
            s32 frame = ((ACmd_ShowFrame *)cmd)->index;


            if (frame != -1) {
                const struct SpriteTables *sprTables = gRefSpriteTables;

                s->dimensions = &sprTables->dimensions[((s)->graphics.anim)][frame];
            } else {
                s->dimensions = (void *)-1;
            }




        }

        s->animCursor += 2;
    }
    return 1;
}
# 290 "src/sprite.c"
static AnimCmdResult animCmd_GetTiles(void *cursor, Sprite *s)
{
    ACmd_GetTiles *cmd = (ACmd_GetTiles *)cursor;
    s->animCursor += ((sizeof(ACmd_GetTiles)) / sizeof(s32));

    if ((s->frameFlags & ((1) << (19))) == 0) {
        s32 tileIndex = cmd->tileIndex;

        if (tileIndex < 0) {





            s->graphics.src = &gRefSpriteTables->tiles_8bpp[tileIndex * 64];
            s->graphics.size = cmd->numTilesToCopy * 64;
        } else {
            s->graphics.src = &gRefSpriteTables->tiles_4bpp[tileIndex * 32];
            s->graphics.size = cmd->numTilesToCopy * 32;
        }

        gVramGraphicsCopyQueue[gVramGraphicsCopyQueueIndex] = &s->graphics; gVramGraphicsCopyQueueIndex = (gVramGraphicsCopyQueueIndex + 1) % (sizeof(gVramGraphicsCopyQueue) / sizeof((gVramGraphicsCopyQueue)[0]));;
    }

    return 1;
}
# 345 "src/sprite.c"
static AnimCmdResult animCmd_AddHitbox(void *cursor, Sprite *s)
{
    ACmd_Hitbox *cmd = (ACmd_Hitbox *)cursor;
    s32 hitboxId = cmd->hitbox.index % 16u;
    s->animCursor += ((sizeof(ACmd_Hitbox)) / sizeof(s32));

    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&cmd->hitbox); dmaRegs[1] = (vu32)(&s->hitboxes[hitboxId].index); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(Hitbox))/(32/8)))); dmaRegs[2]; };



    if ((cmd->hitbox.left == 0) && (cmd->hitbox.top == 0) && (cmd->hitbox.right == 0) && (cmd->hitbox.bottom == 0))

    {
        s->hitboxes[hitboxId].index = -1;
    } else {
        if (s->frameFlags & ((1) << (11))) {
            s->hitboxes[hitboxId].top ^= (u8)s->hitboxes[hitboxId].bottom; s->hitboxes[hitboxId].bottom ^= (u8)s->hitboxes[hitboxId].top; s->hitboxes[hitboxId].top = ((u8)s->hitboxes[hitboxId].bottom ^ (u8)s->hitboxes[hitboxId].top) * -1; s->hitboxes[hitboxId].bottom = (u8)s->hitboxes[hitboxId].bottom * -1;;
        }

        if (s->frameFlags & ((1) << (10))) {
            s->hitboxes[hitboxId].left ^= (u8)s->hitboxes[hitboxId].right; s->hitboxes[hitboxId].right ^= (u8)s->hitboxes[hitboxId].left; s->hitboxes[hitboxId].left = ((u8)s->hitboxes[hitboxId].right ^ (u8)s->hitboxes[hitboxId].left) * -1; s->hitboxes[hitboxId].right = (u8)s->hitboxes[hitboxId].right * -1;;
        }
    }

    return 1;
}

void sub_80047A0(u16 angle, s16 p1, s16 p2, u16 affineIndex)
{
    u16 *affine = &gOamBuffer[affineIndex * 4].all.affineParam;
    s16 res;

    res = Div(0x10000, p1);
    affine[0 * (8 / sizeof(short))] = ((int)((((int)(((gSineTable[(angle) + 256])) >> 6)) * res) >> 8));

    res = Div(0x10000, p1);
    affine[1 * (8 / sizeof(short))] = ((int)((((int)(((gSineTable[(angle)])) >> 6)) * res) >> 8));

    res = Div(0x10000, p2);
    affine[2 * (8 / sizeof(short))] = ((int)(((-((gSineTable[(angle)])) >> 6) * res) >> 8));

    res = Div(0x10000, p2);
    affine[3 * (8 / sizeof(short))] = ((int)((((int)(((gSineTable[(angle) + 256])) >> 6)) * res) >> 8));
}




__attribute__((naked)) void TransformSprite(Sprite *s, SpriteTransform *transform) { asm(".include " "\"asm/non_matching/engine/TransformSprite.inc\""); if (0)
{

    UnkSpriteStruct big;
    const SpriteOffset *dimensions = s->dimensions;




    if (dimensions != (SpriteOffset *)-1) {
        s16 res;
        s16 x16, y16;
        s16 *affine;
        big.affineIndex = s->frameFlags & ((0x1F) << (0));

        affine = (void *)&gOamBuffer[big.affineIndex * 4].all.affineParam;



        big.qDirX = ((int)(((gSineTable[(transform->rotation & (1024 - 1)) + 256])) >> 6));
        big.qDirY = ((int)(((gSineTable[(transform->rotation & (1024 - 1))])) >> 6));

        big.unkC[0] = transform->qScaleX;
        big.unkC[1] = transform->qScaleY;


        res = Div(0x10000, big.unkC[0]);
        x16 = big.qDirX;
        affine[0 * (8 / sizeof(short))] = (x16 * res) >> 8;

        res = Div(0x10000, big.unkC[0]);
        y16 = big.qDirY;
        affine[1 * (8 / sizeof(short))] = (y16 * res) >> 8;

        res = Div(0x10000, big.unkC[1]);
        y16 = big.qDirY;
        affine[2 * (8 / sizeof(short))] = (-y16 * res) >> 8;

        res = Div(0x10000, big.unkC[1]);
        x16 = big.qDirX;
        affine[3 * (8 / sizeof(short))] = (x16 * res) >> 8;



        if (transform->qScaleX < 0)
            big.unkC[0] = -transform->qScaleX;

        if (transform->qScaleY < 0)
            big.unkC[1] = -transform->qScaleY;


        x16 = big.qDirX;
        big.unk0[0] = (x16 * big.unkC[0]) >> 8;

        y16 = big.qDirY;
        big.unk0[1] = (-y16 * big.unkC[0]) >> 8;

        y16 = big.qDirY;
        big.unk0[2] = (y16 * big.unkC[1]) >> 8;

        x16 = big.qDirX;
        big.unk0[3] = (x16 * big.unkC[1]) >> 8;

        big.unk18[0][0] = 0x100;
        big.unk18[0][1] = 0;
        big.unk18[1][0] = 0;
        big.unk18[1][1] = 0x100;

        big.posX = transform->x;
        big.posY = transform->y;


        {
            s32 r0;
            s32 r1;
            s32 r2;
            s32 r3;
            s32 r4;


            if (transform->qScaleX > 0) {

                r4 = dimensions->offsetX;
            } else {

                r4 = dimensions->width - dimensions->offsetX;
            }


            if (transform->qScaleY > 0) {
                r3 = dimensions->offsetY;
            } else {

                r3 = dimensions->height - dimensions->offsetY;
            }


            r1 = big.unk0[0] * (r4 - (dimensions->width / 2));
            r0 = big.unk0[1] * (r3 - (dimensions->height / 2));
            r1 += r0;
            r1 = r1 + ((dimensions->width / 2) << 8);
            big.posX -= (r1 >> 8);


            r1 = big.unk0[2] * (r4 - (dimensions->width / 2));
            r0 = big.unk0[3] * (r3 - (dimensions->height / 2));
            r1 += r0;
            r1 += ((dimensions->height / 2) << 8);
            big.posY -= r1 >> 8;

            s->x = big.posX;
            s->y = big.posY;
        }
    }
}
}



__attribute__((naked)) void UnusedTransform(Sprite *sprite, SpriteTransform *transform) { asm(".include " "\"asm/non_matching/engine/UnusedTransform.inc\""); if (0)
{

    TransformSprite(sprite, transform);
}
}



__attribute__((naked)) void sub_8004E14(Sprite *sprite, SpriteTransform *transform) { asm(".include " "\"asm/non_matching/engine/sa2__sub_8004E14.inc\""); if (0)
{
    UnkSpriteStruct us;
    if (sprite->dimensions != (void *)-1) {
        const SpriteOffset *sprDims = sprite->dimensions;
        u16 *affine;

        us.affineIndex = sprite->frameFlags & ((0x1F) << (0));
        affine = (u16 *)&gOamBuffer[us.affineIndex * 4].all.affineParam;

        us.qDirX = ((int)(((gSineTable[((transform->rotation + gUnknown_03001944) & (1024 - 1)) + 256])) >> 6));
        us.qDirY = ((int)(((gSineTable[((transform->rotation + gUnknown_03001944) & (1024 - 1))])) >> 6));
        us.unkC[0] = ((int)((transform->qScaleX * gUnknown_030017F0) >> 8));
        us.unkC[1] = ((int)((transform->qScaleY * gUnknown_03005394) >> 8));

        affine[0 * (8 / sizeof(short))] = ((int)((Div(((s32)((256)*256)), us.unkC[0]) * us.qDirX) >> 8));
        affine[1 * (8 / sizeof(short))] = ((int)((Div(((s32)((256)*256)), us.unkC[0]) * us.qDirY) >> 8));
        affine[2 * (8 / sizeof(short))] = ((int)((Div(((s32)((256)*256)), us.unkC[1]) * -us.qDirY) >> 8));
        affine[3 * (8 / sizeof(short))] = ((int)((Div(((s32)((256)*256)), us.unkC[1]) * us.qDirX) >> 8));

        if (transform->qScaleX < 0) {
            us.unkC[0] = ((int)((-transform->qScaleX * gUnknown_030017F0) >> 8));
        }


        if (transform->qScaleY < 0) {
            us.unkC[1] = ((int)((-transform->qScaleY * gUnknown_03005394) >> 8));
        }


        us.unk0[0] = ((int)((+us.qDirX * us.unkC[0]) >> 8));
        us.unk0[1] = ((int)((-us.qDirY * us.unkC[0]) >> 8));
        us.unk0[2] = ((int)((+us.qDirY * us.unkC[1]) >> 8));
        us.unk0[3] = ((int)((+us.qDirX * us.unkC[1]) >> 8));




        us.unk18[0][0] = ((int)(((((s32)((+((int)(((gSineTable[(gUnknown_03001944) + 256])) >> 6)))*256)) * gUnknown_030017F0) >> 16) >> 8))
            * (((s32)((us.unkC[0] * gUnknown_03005398 >> 16)*256)));
        us.unk18[0][1] = ((int)(((((s32)((-((int)(((gSineTable[(gUnknown_03001944)])) >> 6)))*256)) * gUnknown_030017F0) >> 16) >> 8))
            * (((s32)((us.unkC[0] * gUnknown_03005398 >> 16)*256)));
        us.unk18[1][0] = ((int)(((((s32)((+((int)(((gSineTable[(gUnknown_03001944)])) >> 6)))*256)) * gUnknown_03005394) >> 16) >> 8))
            * (((s32)((us.unkC[1] * gUnknown_03005398 >> 16)*256)));
        us.unk18[1][1] = ((int)(((((s32)((+((int)(((gSineTable[(gUnknown_03001944) + 256])) >> 6)))*256)) * gUnknown_03005394) >> 16) >> 8))
            * (((s32)((us.unkC[1] * gUnknown_03005398 >> 16)*256)));

        us.posX = ((int)((transform->x * us.unk18[0][0] + transform->y * us.unk18[0][1] + ((s32)((gUnknown_0300194C)*256))) >> 8));
        us.posY = ((int)((transform->x * us.unk18[1][0] + transform->y * us.unk18[1][1] + ((s32)((gUnknown_03002820)*256))) >> 8));

        {
            u16 width, height;
            u16 halfWidth, halfHeight;
            s16 offsetX, offsetY;
            s32 x, y;
# 584 "src/sprite.c"
            {
                if (transform->qScaleX > 0) {
                    offsetX = sprDims->offsetX;
                    width = sprDims->width;
                } else {
                    offsetX = sprDims->width - sprDims->offsetX;
                    width = sprDims->width;
                }


                if (transform->qScaleY > 0) {
                    offsetY = sprDims->offsetY;
                    height = sprDims->height;
                } else {
                    offsetY = sprDims->height - sprDims->offsetY;
                    height = sprDims->height;
                }
            }


            halfWidth = width / 2;
            offsetX -= halfWidth;
            x = offsetX * us.unk0[0];

            halfHeight = height / 2;
            offsetY -= halfHeight;
            x += offsetY * us.unk0[1];
            x = (x + ((s32)((halfWidth)*256)));
            us.posX -= ((int)((x) >> 8));

            y = offsetX * us.unk0[2];
            y += offsetY * us.unk0[3];
            y = (y + ((s32)((halfHeight)*256)));
            us.posY -= ((int)((y) >> 8));

            sprite->x = us.posX;
            sprite->y = us.posY;
        }
    }
}
}







const u8 gOamShapesSizes[12][2] = {

    { 8, 8 },
    { 16, 16 },
    { 32, 32 },
    { 64, 64 },


    { 16, 8 },
    { 32, 8 },
    { 32, 16 },
    { 64, 32 },


    { 8, 16 },
    { 8, 32 },
    { 16, 32 },
    { 32, 64 },
};

void DisplaySprite(Sprite *sprite)
{
    OamData *oam;
    s32 x, y, sprWidth, sprHeight;
    u8 i;
    u32 sprX, sprY;
    const u16 *oamData;

    if (sprite->dimensions != (void *)-1) {

        const SpriteOffset *sprDims = sprite->dimensions;

        sprite->numSubFrames = sprDims->numSubframes;
        x = sprite->x;
        y = sprite->y;

        if (sprite->frameFlags & ((1) << (17))) {
            x -= gSpriteOffset.x;
            y -= gSpriteOffset.y;
        }

        sprWidth = sprDims->width;
        sprHeight = sprDims->height;
        if (sprite->frameFlags & ((1) << (5))) {
            if (sprite->frameFlags & ((1) << (6))) {
                x -= sprDims->width / 2;
                y -= sprDims->height / 2;
                sprWidth *= 2;
                sprHeight *= 2;
            }
        } else {
            if (sprite->frameFlags & ((1) << (11))) {
                y -= sprHeight - sprDims->offsetY;
            } else {
                y -= sprDims->offsetY;
            }

            if (sprite->frameFlags & ((1) << (10))) {
                x -= sprWidth - sprDims->offsetX;
            } else {
                x -= sprDims->offsetX;
            }
        }

        if (x + sprWidth >= 0 && x <= 240 &&
            y + sprHeight >= 0 && y <= 160) {

            u8 mosaicHVSizes = gMosaicReg >> 8;


            for (i = 0; i < sprDims->numSubframes; i++) {
                oamData = gRefSpriteTables->oamData[sprite->graphics.anim];


                oam = OamMalloc(((((sprite)->oamFlags) & 0x7C0) >> 6));
                if (iwram_end == oam) {
                    return;
                }

                if (i == 0) {
                    sprite->oamBaseIndex = gOamFreeIndex - 1;
                }


                { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&oamData[((sprDims->oamIndex & 0x3FFF) + i) * (6 / sizeof(short))]); dmaRegs[1] = (vu32)(oam); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8)))); dmaRegs[2]; };

                sprX = oam->all.attr1 & 0x1FF;
                sprY = oam->all.attr0 & 0xFF;
                oam->all.attr1 &= 0xFE00;
                oam->all.attr0 &= 0xFE00;
                oam->all.attr2 += sprite->palId << 12;
# 737 "src/sprite.c"
                if (sprite->frameFlags & ((1) << (5))) {

                    oam->all.attr0 |= 0x100;



                    if (sprite->frameFlags & ((1) << (6))) {

                        oam->all.attr0 |= 0x200;



                    }

                    oam->all.attr1 |= (sprite->frameFlags & ((0x1F) << (0))) << 9;



                } else {
                    u32 flipY, r6, shapeAndSize;

                    shapeAndSize = ((oam->all.attr0 & 0xC000) >> 12);
                    shapeAndSize |= ((oam->all.attr1 & 0xC000) >> 14);
                    flipY = sprite->frameFlags >> 11;





                    r6 = 1;


                    if ((((sprDims->flip >> 1) ^ flipY) & r6) != 0) {

                        oam->all.attr1 ^= 0x2000;



                        sprY = sprHeight - gOamShapesSizes[shapeAndSize][1] - sprY;
                    }


                    if (((sprite->frameFlags >> 10) & r6) != (sprDims->flip & 1)) {

                        oam->all.attr1 ^= 0x1000;



                        sprX = sprWidth - gOamShapesSizes[shapeAndSize][0] - sprX;
                    }
                }


                if (mosaicHVSizes != 0 && (sprite->frameFlags & ((1) << (9))) != 0) {


                    oam->all.attr0 |= 0x1000;



                }



                oam->all.attr0 |= (sprite->frameFlags & ((3) << (7))) * 8;
                oam->all.attr2 |= (sprite->frameFlags & ((3) << (12))) >> 2;
                oam->all.attr0 += ((y + sprY) & 0xFF);
                oam->all.attr1 += ((x + sprX) & 0x1FF);

                if (oam->all.attr0 & (1 << 13)) {
                    oam->all.attr2 += oam->all.attr2 & 0x3FF;
                }
                oam->all.attr2 += (((uintptr_t)((sprite->graphics.dest)) - (uintptr_t)(u8*)(0x6000000 + 0x10000)) / (32));
# 821 "src/sprite.c"
            }
        }
    }
}




__attribute__((unused)) void DisplaySprites(Sprite *sprite, Vec2_16 *positions, u8 numPositions)
{
    vs32 x, y;
    s32 sprWidth, sprHeight;
    u8 subframe, i;
    s32 x1, y1, centerOffsetX, centerOffsetY;

    if (sprite->dimensions != (void *)-1) {
        const SpriteOffset *sprDims = sprite->dimensions;

        sprite->numSubFrames = sprDims->numSubframes;
        x = sprite->x;
        y = sprite->y;

        if (sprite->frameFlags & ((1) << (17))) {
            x -= gSpriteOffset.x;
            y -= gSpriteOffset.y;
        }

        sprWidth = sprDims->width;
        sprHeight = sprDims->height;
        if (sprite->frameFlags & ((1) << (5))) {
            if (sprite->frameFlags & ((1) << (6))) {
                x -= sprDims->width / 2;
                y -= sprDims->height / 2;
                sprWidth *= 2;
                sprHeight *= 2;
            }
        } else {
            if (sprite->frameFlags & ((1) << (11))) {
                y -= sprHeight - sprDims->offsetY;
            } else {
                y -= sprDims->offsetY;
            }

            if (sprite->frameFlags & ((1) << (10))) {
                x -= sprWidth - sprDims->offsetX;
            } else {
                x -= sprDims->offsetX;
            }
        }

        centerOffsetX = x - sprite->x;
        centerOffsetY = y - sprite->y;
        if (x + sprWidth >= 0 && x <= 240 && y + sprHeight >= 0 && y <= 160) {
            for (subframe = 0; subframe < sprDims->numSubframes; ++subframe) {
                const u16 *oamData = gRefSpriteTables->oamData[sprite->graphics.anim];
                OamData *oam = OamMalloc(((((sprite)->oamFlags) & 0x7C0) >> 6));

                if (iwram_end == oam) {
                    return;
                }


                { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&oamData[(sizeof(OamDataShort) / sizeof(u16)) * ((sprDims->oamIndex & 0x3FFF) + subframe)]); dmaRegs[1] = (vu32)(oam); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8)))); dmaRegs[2]; }
                                               ;

                x1 = oam->all.attr1 & 0x1FF;
                y1 = oam->all.attr0 & 0xFF;
                oam->all.attr1 &= 0xFE00;
                oam->all.attr0 &= 0xFE00;
                oam->all.attr2 += sprite->palId << 12;

                if (sprite->frameFlags & ((1) << (5))) {
                    oam->all.attr0 |= 0x100;
                    if (sprite->frameFlags & ((1) << (6))) {
                        oam->all.attr0 |= 0x200;
                    }
                    oam->all.attr1 |= (sprite->frameFlags & ((0x1F) << (0))) << 9;
                } else {
                    u32 shapeAndSize = ((oam->all.attr0 & 0xC000) >> 12);
                    u32 flipY;
                    u32 r6;

                    shapeAndSize |= ((oam->all.attr1 & 0xC000) >> 14);
                    flipY = sprite->frameFlags >> 11;
                    r6 = 1;


                    if ((((sprDims->flip >> 1) ^ flipY) & r6) != 0) {
                        oam->all.attr1 ^= 0x2000;
                        y1 = sprHeight - gOamShapesSizes[shapeAndSize][1] - y1;
                    }


                    if (((sprite->frameFlags >> 10) & r6) != (sprDims->flip & 1)) {
                        oam->all.attr1 ^= 0x1000;
                        x1 = sprWidth - gOamShapesSizes[shapeAndSize][0] - x1;
                    }
                }

                oam->all.attr0 |= (sprite->frameFlags & ((3) << (7))) * 8;
                oam->all.attr2 |= (sprite->frameFlags & ((3) << (12))) >> 2;
                oam->all.attr0 += ((y + y1) & 0xFF);
                oam->all.attr1 += ((x + x1) & 0x1FF);

                if (oam->all.attr0 & (1 << 13)) {
                    oam->all.attr2 += oam->all.attr2 & 0x3FF;
                }
                oam->all.attr2 += (((uintptr_t)((sprite->graphics.dest)) - (uintptr_t)(u8*)(0x6000000 + 0x10000)) / (32));

                for (i = 0; i < numPositions; ++i) {
                    OamData *r5 = OamMalloc(((((sprite)->oamFlags) & 0x7C0) >> 6));

                    if (iwram_end == oam)
                        return;
                    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(oam); dmaRegs[1] = (vu32)(r5); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8)))); dmaRegs[2]; };
                    r5->all.attr1 &= 0xFE00;
                    r5->all.attr0 &= 0xFF00;
                    r5->all.attr0 += (positions[i].y + centerOffsetY + y1) & 0xFF;
                    r5->all.attr1 += (positions[i].x + centerOffsetX + x1) & 0x1FF;
                }
            }
        }
    }
}
# 957 "src/sprite.c"
OamData *OamMalloc(u8 order)
{
    if (order > 31) {
        order = 31;
    }

    if (gOamFreeIndex > 128 - 1) {
        return (OamData *)iwram_end;
    }


    if (gOamMallocOrders_StartIndex[order] == 0xFF) {
        gOamMallocBuffer[gOamFreeIndex].split.fractional = 0xFF;

        gOamMallocOrders_StartIndex[order] = gOamFreeIndex;
        gOamMallocOrders_EndIndex[order] = gOamFreeIndex;
    } else {
        gOamMallocBuffer[gOamFreeIndex].split.fractional = 0xFF;



        gOamMallocBuffer[gOamMallocOrders_EndIndex[order]].split.fractional = gOamFreeIndex;
        gOamMallocOrders_EndIndex[order] = gOamFreeIndex;
    }

    gOamFreeIndex++;
    return &gOamMallocBuffer[gOamFreeIndex - 1];
}

void ProcessOamBuffers(void)
{
    OamData *dstOam = &gOamBuffer[0];
    u8 operationNumber = 0;
    s32 layer;

    for (layer = 0; layer < (signed)(sizeof(gOamMallocOrders_StartIndex) / sizeof((gOamMallocOrders_StartIndex)[0])); layer++) {
        s8 oamMallocIndex = gOamMallocOrders_StartIndex[layer];

        while (oamMallocIndex != -1) {
            u8 *debugCopyOrders = gOamMallocCopiedOrder;
            { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&gOamMallocBuffer[oamMallocIndex]); dmaRegs[1] = (vu32)(dstOam); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8)))); dmaRegs[2]; };
            dstOam++;

            debugCopyOrders += oamMallocIndex;
            *debugCopyOrders = operationNumber++;
            oamMallocIndex = gOamMallocBuffer[oamMallocIndex].split.fractional;
        };
    }

    if (gFlags & 0x800) {
        layer = gOamFreeIndex;
        dstOam = &gOamBuffer[layer];

        while (layer < gOamFirstPausedIndex) {
            { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(dstOam); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8)))); dmaRegs[2]; }; };
            dstOam++;
            layer++;
        }
    } else if (gFlags & 0x400) {


        s32 k, l;
        layer = gOamFreeIndex - 1;
        dstOam = &gOamBuffer[layer];

        for (k = l = 0; layer >= 0;) {
            s32 size = sizeof(OamDataShort);
            { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(dstOam - k); dmaRegs[1] = (vu32)(&gOamBuffer[128 - 1 - l]); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((size)/(16/8)))); dmaRegs[2]; };
            k++, layer--, l++;
        }



        gOamFirstPausedIndex = 128 - gOamFreeIndex;

        for (layer = 0; layer < gOamFirstPausedIndex; layer++) {
            { vu16 tmp = (vu16)(0x200); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(&gOamBuffer[layer]); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8)))); dmaRegs[2]; }; };




            asm("" ::"r"(layer));

        }

    } else {
        gOamFirstPausedIndex = 0;
    }

    gOamFreeIndex = 0;
    if (gFlags & 0x4000) {
        { vu32 tmp = (vu32)(-1); CpuSet((void *)&tmp, gOamMallocOrders_StartIndex, 0x04000000 | 0x01000000 | ((sizeof(gOamMallocOrders_StartIndex))/(32/8) & 0x1FFFFF)); };
        { vu32 tmp = (vu32)(-1); CpuSet((void *)&tmp, gOamMallocOrders_EndIndex, 0x04000000 | 0x01000000 | ((sizeof(gOamMallocOrders_EndIndex))/(32/8) & 0x1FFFFF)); };
    } else {
        { vu32 tmp = (vu32)(-1); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamMallocOrders_StartIndex); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gOamMallocOrders_StartIndex))/(32/8)))); dmaRegs[2]; }; };
        { vu32 tmp = (vu32)(-1); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(gOamMallocOrders_EndIndex); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(gOamMallocOrders_EndIndex))/(32/8)))); dmaRegs[2]; }; };
    }
}




static AnimCmdResult animCmd_GetPalette(void *cursor, Sprite *s)
{
    ACmd_GetPalette *cmd = (ACmd_GetPalette *)cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    if (!(s->frameFlags & ((1) << (18)))) {
        s32 paletteIndex = cmd->palId;

        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&gRefSpriteTables->palettes[paletteIndex * 16u]); dmaRegs[1] = (vu32)(&gObjPalette[(s->palId)*16u + (cmd->insertOffset)]); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((cmd->numColors * 2)/(32/8)))); dmaRegs[2]; }
                                     ;

        gFlags |= 0x2;
    }

    return ACMD_RESULT__RUNNING;
}



static AnimCmdResult animCmd_JumpBack(void *cursor, Sprite *s)
{
    ACmd_JumpBack *cmd = cursor;
    s->animCursor -= cmd->offset;

    return ACMD_RESULT__RUNNING;
}


static AnimCmdResult animCmd_End(void *cursor, Sprite *s)
{
    (s)->frameFlags |= (((1) << (14)));

    return ACMD_RESULT__ENDED;
}


static AnimCmdResult animCmd_PlaySoundEffect(void *cursor, Sprite *s)
{
    ACmd_PlaySoundEffect *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    m4aSongNumStart(cmd->songId);

    return ACMD_RESULT__RUNNING;
}


static AnimCmdResult animCmd_TranslateSprite(void *cursor, Sprite *s)
{
    ACmd_TranslateSprite *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    s->x += cmd->x;
    s->y += cmd->y;

    return ACMD_RESULT__RUNNING;
}


static AnimCmdResult animCmd_8(void *cursor, Sprite *s)
{
    ACmd_8 *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    return ACMD_RESULT__RUNNING;
}


static AnimCmdResult animCmd_SetIdAndVariant(void *cursor, Sprite *s)
{
    ACmd_SetIdAndVariant *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    s->graphics.anim = cmd->animId;
    s->prevVariant = -1;
    s->variant = cmd->variant;

    return ACMD_RESULT__ANIM_CHANGED;
}


static AnimCmdResult animCmd_10(void *cursor, Sprite *s)
{
    ACmd_10 *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));




    return (s32)cursor;

}



static AnimCmdResult animCmd_SetSpritePriority(void *cursor, Sprite *s)
{
    ACmd_SetSpritePriority *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    (s)->frameFlags &= ~(((3) << (12)));
    (s)->frameFlags |= ((cmd->priority) << (12));

    return ACMD_RESULT__RUNNING;
}




static AnimCmdResult animCmd_SetOamOrder(void *cursor, Sprite *s)
{
    ACmd_SetOamOrder *cmd = cursor;

    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));
    s->oamFlags = ((cmd->orderIndex) << 6);

    return ACMD_RESULT__RUNNING;
}
