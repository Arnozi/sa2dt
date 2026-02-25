# 0 "src/game/bosses/boss_9.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/bosses/boss_9.c"
# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1




# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4






# 1 "/usr/share/mingw-w64/include/crtdefs.h" 1 3 4
# 10 "/usr/share/mingw-w64/include/crtdefs.h" 3 4
# 1 "/usr/share/mingw-w64/include/corecrt.h" 1 3 4
# 10 "/usr/share/mingw-w64/include/corecrt.h" 3 4
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3 4
# 10 "/usr/share/mingw-w64/include/_mingw.h" 3 4
# 1 "/usr/share/mingw-w64/include/_mingw_mac.h" 1 3 4
# 98 "/usr/share/mingw-w64/include/_mingw_mac.h" 3 4
             
# 107 "/usr/share/mingw-w64/include/_mingw_mac.h" 3 4
             
# 306 "/usr/share/mingw-w64/include/_mingw_mac.h" 3 4
       
# 384 "/usr/share/mingw-w64/include/_mingw_mac.h" 3 4
       
# 11 "/usr/share/mingw-w64/include/_mingw.h" 2 3 4
# 1 "/usr/share/mingw-w64/include/_mingw_secapi.h" 1 3 4
# 12 "/usr/share/mingw-w64/include/_mingw.h" 2 3 4
# 282 "/usr/share/mingw-w64/include/_mingw.h" 3 4
# 1 "/usr/share/mingw-w64/include/vadefs.h" 1 3 4
# 9 "/usr/share/mingw-w64/include/vadefs.h" 3 4
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3 4
# 661 "/usr/share/mingw-w64/include/_mingw.h" 3 4
# 1 "/usr/share/mingw-w64/include/sdks/_mingw_ddk.h" 1 3 4
# 662 "/usr/share/mingw-w64/include/_mingw.h" 2 3 4
# 10 "/usr/share/mingw-w64/include/vadefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3 4
  
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3 4
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "/usr/share/mingw-w64/include/vadefs.h" 3 4
#pragma pack(pop)
# 283 "/usr/share/mingw-w64/include/_mingw.h" 2 3 4
# 580 "/usr/share/mingw-w64/include/_mingw.h" 3 4
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}
# 601 "/usr/share/mingw-w64/include/_mingw.h" 3 4
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{

  __asm__ __volatile__("int {$}0x29"::"c"(code));
# 615 "/usr/share/mingw-w64/include/_mingw.h" 3 4
  __builtin_unreachable();
}
# 641 "/usr/share/mingw-w64/include/_mingw.h" 3 4
const char *__mingw_get_crt_info (void);
# 11 "/usr/share/mingw-w64/include/corecrt.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 35 "/usr/share/mingw-w64/include/corecrt.h" 3 4
__extension__ typedef unsigned long long size_t;
# 45 "/usr/share/mingw-w64/include/corecrt.h" 3 4
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "/usr/share/mingw-w64/include/corecrt.h" 3 4
__extension__ typedef long long intptr_t;
# 75 "/usr/share/mingw-w64/include/corecrt.h" 3 4
__extension__ typedef unsigned long long uintptr_t;
# 88 "/usr/share/mingw-w64/include/corecrt.h" 3 4
__extension__ typedef long long ptrdiff_t;
# 98 "/usr/share/mingw-w64/include/corecrt.h" 3 4
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "/usr/share/mingw-w64/include/corecrt.h" 3 4
typedef __time64_t time_t;
# 430 "/usr/share/mingw-w64/include/corecrt.h" 3 4
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "/usr/share/mingw-w64/include/corecrt.h" 3 4
#pragma pack(pop)
# 11 "/usr/share/mingw-w64/include/crtdefs.h" 2 3 4
# 8 "/usr/share/mingw-w64/include/stddef.h" 2 3 4
# 18 "/usr/share/mingw-w64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 424 "/usr/share/mingw-w64/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 6 "include/gba/defines.h" 2
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 3 4
# 1 "/usr/share/mingw-w64/include/stdint.h" 1 3 4
# 32 "/usr/share/mingw-w64/include/stdint.h" 3 4
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 33 "/usr/share/mingw-w64/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 10 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 2 3 4
# 7 "include/gba/defines.h" 2
# 56 "include/gba/defines.h"

# 56 "include/gba/defines.h"
extern uint8_t VRAM[(0x18000 + (0x800 * (12)))];
# 65 "include/gba/defines.h"
extern struct SoundMixerState *SOUND_INFO_PTR;
extern uint16_t INTR_CHECK;
extern void (*INTR_VECTOR)(void);

extern uint8_t EWRAM_START[0x40000];
extern uint8_t IWRAM_START[0x7E00];
extern uint16_t PLTT[0x400/sizeof(uint16_t)];


extern uint8_t OAM[(128*0xC)];
# 131 "include/gba/defines.h"
typedef uint32_t winreg_t;
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 13 "include/gba/io_reg.h"
extern unsigned char REG_BASE[0x400];
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
# 47 "include/gba/types.h"
typedef u16 int_vcount;




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
# 183 "include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { s16 x; s16 y; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 matrixNum:5; u32 size:2; u32 padding:17; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; } OamDataShort;
# 201 "include/gba/types.h"
  ;

typedef union {
    struct {
               s16 x;
               s16 y;

               u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

               u32 matrixNum:5;
               u32 size:2;
               u32 padding:17;

               u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;

               u16 fractional:8;
             u16 integer:7;
             u16 sign:1;
    } split;

    struct {
        s16 x;
        s16 y;
        u16 attr0;
        u16 attr1;
        u16 attr2;
        u16 affineParam;
    } all;

    u16 raw[6];
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
# 16 "include/gba/dma_macros.h"
extern void DmaSet(int dmaNum, const void *src, void *dest, u32 control);
# 78 "include/gba/dma_macros.h"
extern void DmaStop(int dmaNum);
# 172 "include/gba/dma_macros.h"
extern void DmaWait(int dmaNum);
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
# 21 "include/global.h"
void *Platform_malloc(size_t numBytes);
void *Platform_realloc(void *ptr, size_t numBytes);
void Platform_free(void *ptr);
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
# 2 "src/game/bosses/boss_9.c" 2
# 1 "include/flags.h" 1



# 1 "include/global.h" 1
# 5 "include/flags.h" 2
# 23 "include/flags.h"
extern u32 gFlags;
# 3 "src/game/bosses/boss_9.c" 2
# 1 "include/rect.h" 1



typedef struct {
               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Rect8;
# 4 "src/game/bosses/boss_9.c" 2
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
# 5 "src/game/bosses/boss_9.c" 2
# 1 "include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);
# 25 "include/task.h"
typedef struct Task *TaskPtr;
typedef TaskPtr TaskPtr32;




typedef void *IwramData;
# 55 "include/task.h"
typedef struct Task {
               TaskPtr parent;
               TaskPtr prev;
               TaskPtr next;
               IwramData data;

    u32 dataSize;

               TaskMain main;
               TaskDestructor dtor;
               u16 priority;
               u16 flags;



               u8 unk14;
               u8 unk15;
               u16 unk16;
               u16 unk18;





} Task;





struct IwramNode;

typedef struct IwramNode *IwramNodePtr;
typedef IwramNodePtr IwramNodePtr32;




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
# 6 "src/game/bosses/boss_9.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 7 "src/game/bosses/boss_9.c" 2
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



    float sampleRateReciprocal;

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



    float pcmBuffer[4907 * 2];

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
# 8 "src/game/bosses/boss_9.c" 2
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
# 9 "src/game/bosses/boss_9.c" 2
# 1 "include/game/bosses/common.h" 1




# 1 "include/core.h" 1




# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 45 "/usr/share/mingw-w64/include/string.h" 3
  
# 45 "/usr/share/mingw-w64/include/string.h" 3 4
 __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);



  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;

  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "/usr/share/mingw-w64/include/sec_api/string_s.h" 1 3
# 9 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 10 "/usr/share/mingw-w64/include/sec_api/string_s.h" 2 3
# 24 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
 
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  ;
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val, size_t _Count,_locale_t _Locale);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 195 "/usr/share/mingw-w64/include/string.h" 2 3
# 6 "include/core.h" 2



# 1 "include/sprite.h" 1
# 10 "include/core.h" 2
# 1 "include/task.h" 1
# 11 "include/core.h" 2
# 1 "include/flags.h" 1
# 12 "include/core.h" 2
# 1 "include/tilemap.h" 1
# 10 "include/tilemap.h"

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
extern u16 gVramHeapState[((0x18000 + (0x800 * (12))) - 0x10000) / (4 * 32)];

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


extern int_vcount gBgOffsetsBuffer[2][240][4];
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
# 334 "include/core.h"
extern struct GraphicsData gVramGraphicsCopyQueueBuffer[32];
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
# 6 "include/game/bosses/common.h" 2

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
# 10 "src/game/bosses/boss_9.c" 2
# 1 "include/game/bosses/boss_9.h" 1





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
# 7 "include/game/bosses/boss_9.h" 2
# 16 "include/game/bosses/boss_9.h"
extern void CreateTrueArea53Boss(void);
extern bool32 ExtraBossIsDead(void);
extern void TrueArea53BossMove(s32, s32);





typedef void (*TA53SubFunc)(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804F6AC(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804F768(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804F850(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804F9BC(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804FAA4(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804FC10(u32 qX, u32 qY, s16 param2, u32 sinIndex_);
void sub_804FD58(u32 qX, u32 qY, s16 param2, u32 sinIndex_);

typedef struct TA53_unk1C {
               void (*callback)(struct TA53_unk1C *);
               s16 unk4[4];
               s16 unkC[4];
               u16 unk14;
               u16 unk16;
               u32 unk18;
               s16 **unk1C;


               s16 unk20;
               s16 unk22;

               Vec2_32 qPos;
} TA53_unk1C;

typedef struct TA53_unk48 {
    void (*callback)(struct TA53_unk48 *);
    s16 unk4[4];
    s16 unkC[4];
    u16 unk14[4];
    u16 unk1C[4];
    u16 unk24[4];
    u16 unk2C;
    u16 unk2E;
    u32 unk30;
    s16 **unk34;
    u16 unk38;
    u16 unk3A[4];
    u16 unk42;
    Vec2_32 qPos44;
    u8 unk4C;
} TA53_unk48;

typedef struct {
    void (*callback)(struct TA53_unk48 *);
    void *data;
    u16 unk8;
} TA53_Data0;

typedef struct {
    void (*callback)(struct TA53_unk1C *);
    void *data;
    u16 unk8;
} TA53_Data1;

struct TA53_unkA8;
typedef void (*TA53_Rocket_Callback)(struct TA53_unkA8 *);

typedef struct TA53_RocketExhaust {
               void (*callback)(struct TA53_RocketExhaust *);
               u8 unk4[5];
               s16 unkA[5][2];
               Vec2_32 pos[5];
               Sprite s[5];
} TA53_RocketExhaust;


typedef struct TA53_unkA8 {
               TA53_Rocket_Callback callback;
               u8 unk4;
               u8 unk5;
               u8 unk6;
               u8 unk7;
               u16 unk8;
               u16 unkA;
               u16 unkC;
               s16 unkE;
               s16 unk10;
               u8 filler12[0x2];
               Vec2_32 pos14;
               s32 unk1C;
               Sprite spr20;
               Hitbox reserved;
               TA53_RocketExhaust exhaust;
} TA53_unkA8;

typedef struct TA53_unk98 {
               void (*callback)(struct TA53_unk98 *);
               u16 unk4;
               u16 unk6;
               s32 qUnk8;
               s32 qUnkC;
               TA53_unkA8 unk10[3];
} TA53_unk98;


typedef struct TA53_unk558 {
               void (*callback)(struct TA53_unk558 *);
               u8 unk4;
               u8 unk5;
               u16 unk6;
               s32 unk8;
               Sprite s;
} TA53_unk558;

typedef struct TA53_unk594 {
    void (*callback)(struct TA53_unk594 *);
    u8 unk4[10];
    u8 unkE[10];
    s16 unk18[10][2];
    Vec2_32 unk40[10];
    Sprite spr90;
} TA53_unk594;

typedef struct TA53_unk654 {
               void (*callback)(struct TA53_unk654 *);
               TA53SubFunc func4;
               u16 unk8;
               u16 unkA;
               u16 unkC;
               u8 unkE[16];
               u8 unk1E[16];
               s16 unk2E[16][2];

               Vec2_32 qPos70[16];

               Sprite sprF0;
                Hitbox hbSprF0;

                Sprite spr128;
                Hitbox hbSpr128;
} TA53_unk654;

typedef struct {
               Sprite s;
               Hitbox reserved;
               SpriteTransform transform;
} CapsuleParts;

typedef struct TA53Boss {
                ScreenFade fade;
                u8 lives;
                u8 unkD;
                u8 unkE;
                u8 unkF;
                u16 unk10;
                u16 unk12;
                Vec2_32 qPos;
                TA53_unk1C unk1C;
                TA53_unk48 unk48;
                TA53_unk98 unk98;
                TA53_unk558 unk558;
                TA53_unk594 unk594;
                TA53_unk654 unk654;

                Sprite spr7B4;
                u8 filler7E4[0xC];
                CapsuleParts capsule[4];
                Background bg900;
} TA53Boss;
# 11 "src/game/bosses/boss_9.c" 2
# 1 "include/game/stage/player_super_sonic.h" 1



# 1 "include/constants/zones.h" 1
# 5 "include/game/stage/player_super_sonic.h" 2

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
# 12 "src/game/bosses/boss_9.c" 2
# 1 "include/game/stage/results.h" 1





# 1 "include/game/stage/screen_fade.h" 1
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
# 13 "src/game/bosses/boss_9.c" 2
# 1 "include/game/stage/ui.h" 1
# 11 "include/game/stage/ui.h"
extern const u8 gSecondsTable[60][2];
extern const u8 gMillisUnpackTable[60][2];

extern struct Task *gStageUITask;

struct Task *CreateStageUI(void);
extern void StageUI_PrintIntegerAt(u32 value, s16 x, s16 y, u8 palId);
# 14 "src/game/bosses/boss_9.c" 2
# 1 "include/game/stage/screen_mask.h" 1





void ScreenMask_Right_OriginBottom(s32 qX, u16);
void ScreenMask_Right_OriginTop(s32 qX, u16);
void ScreenMask_Lower_OriginLeft(int_vcount y, u16 angle);
void ScreenMask_Upper_OriginLeft(int_vcount y, u16 angle);
void ScreenMask_Lower_OriginRight(int_vcount y, u16 angle);
void ScreenMask_Upper_OriginRight(int_vcount y, u16 angle);

void ScreenMask_CreateShape(u16, u16 width, u16, s16 x, s16 y, u8);
# 15 "src/game/bosses/boss_9.c" 2
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
# 16 "src/game/bosses/boss_9.c" 2
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
# 17 "src/game/bosses/boss_9.c" 2
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
# 192 "include/game/sa1_sa2_shared/player.h"
               s8 unk99[16];
               u8 unk98;




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
# 18 "src/game/bosses/boss_9.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 20 "src/game/bosses/boss_9.c" 2
# 1 "include/constants/songs.h" 1
# 21 "src/game/bosses/boss_9.c" 2
# 1 "include/constants/tilemaps.h" 1
# 22 "src/game/bosses/boss_9.c" 2

typedef struct {
               s32 unk0;
               u16 anim;
               u8 variant;
               u8 unk7;
               u8 palId;
               u16 unkA;
} TA53_80D89C8;

extern void Task_804D9DC(void);
extern void Task_804DB34(void);
extern void Task_804DC60(void);
extern void CreateTrueArea53Boss(void);
extern void sub_80505B8(struct TA53Boss *);
extern void Task_EggmanKidnapsVanilla(void);
extern void TaskDestructor_TrueArea53BossGfx(struct Task *);
void Task_TrueArea53BossMain(void);
void sub_804F1EC(struct TA53_unk558 *);
void sub_804F47C(struct TA53_unk558 *);
void sub_8050DC8(struct TA53_unk558 *);
void TaskDestructor_TrueArea53BossGfx(struct Task *);
void sub_80508C4(TA53Boss *boss, u16 blend, bool8 param2);

void sub_804DD9C(struct TA53_RocketExhaust *);
void sub_804DFB0(TA53_unk594 *unk594);
void sub_804E66C(struct TA53_unk98 *);
void sub_804E74C(struct TA53_unk98 *);
void sub_804E8E8(struct TA53_unk98 *);
void sub_804FEFC(struct TA53_unk654 *);
void sub_804FF9C(struct TA53_unk654 *);

static void UpdateExplosion(TA53Boss *);
void sub_804E078(struct TA53_unk48 *);
void sub_804E15C(struct TA53_unk48 *);
void sub_804E4CC(struct TA53_unk48 *);
void sub_804ECC4(TA53Boss *);
bool8 sub_8050030(struct TA53_unk48 *);
void sub_80501D4(TA53Boss *);
void sub_8050958(TA53Boss *);
void sub_8050BD8(struct TA53_unk1C *);
void sub_8050BE4(struct TA53_unk1C *);
void sub_8050BF0(struct TA53_unk1C *);
void sub_8050BFC(struct TA53_unk48 *);
void sub_8050C50(struct TA53_unk48 *);
void sub_8050CBC(struct TA53_unk48 *);
void sub_8050D24(struct TA53_unk48 *);
void sub_8050D9C(struct TA53_unk48 *);
void sub_8050DC4(struct TA53_unk98 *);
void sub_8050DF8(struct TA53_unk654 *);

void sub_804E974(struct TA53_unkA8 *rocket);
void sub_804EB6C(struct TA53_unkA8 *rocket);
bool32 sub_804ED98(s32, s32);
void sub_804EC6C(struct TA53_unkA8 *rocket);
bool32 sub_804EE84(Sprite *s, s32 x, s32 y);
bool32 sub_804F010(Sprite *s, s32 x, s32 y, u8 param3);

const TileInfo gUnknown_080D88F0[5] = {
    { 8 * 8, 709, 0 }, { 8 * 8, 710, 0 },
    { 8 * 8, 711, 0 }, { 8 * 8, 712, 0 },
    { 10 * 9, 708, 0 },
};

const TileInfo gUnknown_080D8918[17] = {
    { 8, 716, 12 }, { 8, 716, 11 },
    { 16, 716, 10 }, { 8, 716, 9 },
    { 8, 716, 8 }, { 12, 716, 7 },
    { 16, 716, 6 }, { 8, 716, 5 },
    { 8, 716, 4 }, { 8, 716, 3 },
    { 16, 716, 2 }, { 8, 716, 1 },
    { 8, 716, 0 }, { 12, 716, 15 },
    { 16, 716, 14 }, { 8, 716, 13 },
    { 16, 713, 0 },
};

const s8 gUnknown_080D89A0[5] = { 0, -4, -8, -12, -16 };
const u8 gUnknown_080D89A5[6] = { 0, 20, 24, 20, 18, 30 };

const TA53SubFunc gUnknown_080D89AC[7] = { sub_804F6AC, sub_804F768, sub_804F850, sub_804F9BC, sub_804FAA4, sub_804FC10, sub_804FD58 };

const TA53_80D89C8 gUnknown_080D89C8[7]
    = { { 0, 719, 0, 0, 1, 0 }, { 0, 689, 0, 0, 1, 0 },
        { 0, 719, 0, 0, 1, 0 }, { 0, 689, 0, 0, 1, 0 },
        { 0, 719, 0, 0, 1, 0 }, { 0, 689, 0, 0, 1, 0 },
        { 0, 719, 0, 0, 1, 0 } };

const s16 gUnknown_080D8A1C[3][4] = {
    { 0x7EC, 0x82C, 0x7EC, 0x82C },
    { 0x7EC, 0x82C, 0x7EC, 0x82C },
    { 0x7EC, 0x82C, 0x7EC, 0x82C },
};

const s16 gUnknown_080D8A34[3][4] = {
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
};

const s16 gUnknown_080D8A4C[3][4] = {
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
};

const s16 gUnknown_080D8A64[3][4] = {
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
};

const s16 gUnknown_080D8A7C[3][4] = {
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
};

const s16 gUnknown_080D8A94[3][4] = {
    { 0x7EC, 0x82C, 0x7EC, 0x82C },
    { 0x7EC, 0x82C, 0x7EC, 0x82C },
    { 0x7EC, 0x82C, 0x7EC, 0x82C },
};

const s16 gUnknown_080D8AAC[3][4] = {
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
};

const s16 gUnknown_080D8AC4[3][4] = {
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
};

const s16 gUnknown_080D8ADC[3][4] = {
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
    { 0x000, 0x03C, 0x000, 0x03C },
};

const s16 gUnknown_080D8AF4[3][4] = {
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
    { 0x000, 0x040, 0x000, 0x040 },
};

const s16 gUnknown_080D8B0C[3][4] = {
    { 0x800, 0x800, 0x800, 0x800 },
    { 0x800, 0x800, 0x800, 0x800 },
    { 0x800, 0x800, 0x800, 0x800 },
};

const s16 gUnknown_080D8B24[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const s16 gUnknown_080D8B3C[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const s16 gUnknown_080D8B54[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const s16 gUnknown_080D8B6C[3][4] = {
    { 0x0A2, 0x0A2, 0x0A2, 0x0A2 },
    { 0x0A2, 0x0A2, 0x0A2, 0x0A2 },
    { 0x0A2, 0x0A2, 0x0A2, 0x0A2 },
};

const s16 gUnknown_080D8B84[3][4] = {
    { 0x800, 0x800, 0x800, 0x800 },
    { 0x800, 0x800, 0x800, 0x800 },
    { 0x800, 0x800, 0x800, 0x800 },
};

const s16 gUnknown_080D8B9C[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const s16 gUnknown_080D8BB4[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const s16 gUnknown_080D8BCC[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const s16 gUnknown_080D8BE4[3][4] = {
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
    { 0x066, 0x066, 0x066, 0x066 },
};

const void *const gUnknown_080D8BFC[5] = {
    &gUnknown_080D8A1C, &gUnknown_080D8A34, &gUnknown_080D8A4C, &gUnknown_080D8A64, &gUnknown_080D8A7C,
};

const void *const gUnknown_080D8C10[5] = {
    &gUnknown_080D8A94, &gUnknown_080D8AAC, &gUnknown_080D8AC4, &gUnknown_080D8ADC, &gUnknown_080D8AF4,
};

const void *const gUnknown_080D8C24[5] = {
    &gUnknown_080D8B0C, &gUnknown_080D8B24, &gUnknown_080D8B3C, &gUnknown_080D8B54, &gUnknown_080D8B6C,
};

const void *const gUnknown_080D8C38[5] = {
    &gUnknown_080D8B84, &gUnknown_080D8B9C, &gUnknown_080D8BB4, &gUnknown_080D8BCC, &gUnknown_080D8BE4,
};

const s16 gUnknown_080D8C4C[4] = { +10, -10, +10, -10 };
const s16 gUnknown_080D8C54[4] = { +10, -10, +10, -10 };
const s16 gUnknown_080D8C5C[4] = { +10, -10, +10, -10 };

const s16 gUnknown_080D8C64[4] = { +10, -10, -10, +10 };
const s16 gUnknown_080D8C6C[4] = { +10, -10, -10, +10 };
const s16 gUnknown_080D8C74[4] = { +10, -10, -10, +10 };

const s16 gUnknown_080D8C7C[4] = { +10, -10, +10, -10 };
const s16 gUnknown_080D8C84[4] = { +10, -10, +10, -10 };
const s16 gUnknown_080D8C8C[4] = { +10, -10, +10, -10 };

const s16 gUnknown_080D8C94[4] = { +10, -10, -10, +10 };
const s16 gUnknown_080D8C9C[4] = { +10, -10, -10, +10 };
const s16 gUnknown_080D8CA4[4] = { +10, -10, -10, +10 };

const s16 gUnknown_080D8CAC[4] = { 0, -20, -40, -60 };
const s16 gUnknown_080D8CB4[4] = { -80, -100, -120, -140 };
const s16 gUnknown_080D8CBC[4] = { -160, -180, -200, -220 };

const s16 gUnknown_080D8CC4[4] = { 10, 30, 30, -90 };
const s16 gUnknown_080D8CCC[4] = { -120, -150, -180, -210 };
const s16 gUnknown_080D8CD4[4] = { -240, -270, -300, -330 };

const s16 gUnknown_080D8CDC[4] = { 10, -40, -90, -140 };
const s16 gUnknown_080D8CE4[4] = { -190, -190, -140, -90 };
const s16 gUnknown_080D8CEC[4] = { -40, 10, 10, -10 };

const s16 gUnknown_080D8CF4[4] = { +10, -10, +10, -10 };
const s16 gUnknown_080D8CFC[4] = { -20, -30, -20, -10 };
const s16 gUnknown_080D8D04[4] = { +10, -10, -10, +10 };

const s16 gUnknown_080D8D0C[4] = { +10, 40, 60, 80 };
const s16 gUnknown_080D8D14[4] = { 100, 100, 80, 60 };
const s16 gUnknown_080D8D1C[4] = { 40, 20, 10, 10 };

const s16 gUnknown_080D8D24[4] = { 10, 20, 30, 40 };
const s16 gUnknown_080D8D2C[4] = { 50, 50, 40, 30 };
const s16 gUnknown_080D8D34[4] = { 20, 10, -10, 10 };

const void *const gUnknown_080D8D3C[] = {
    &gUnknown_080D8C4C,
    &gUnknown_080D8C64,
};
const void *const gUnknown_080D8D44[] = {
    &gUnknown_080D8C7C,
    &gUnknown_080D8C94,
};
const void *const gUnknown_080D8D4C[] = {
    &gUnknown_080D8CAC,
    &gUnknown_080D8CC4,
};
const void *const gUnknown_080D8D54[] = {
    &gUnknown_080D8CDC,
    &gUnknown_080D8CF4,
};
const void *const gUnknown_080D8D5C[] = {
    &gUnknown_080D8CDC,
    &gUnknown_080D8D0C,
};
const void *const gUnknown_080D8D64[] = {
    &gUnknown_080D8CDC,
    &gUnknown_080D8D24,
};

const TA53_Data0 gUnknown_080D8D6C[8] = {
    { sub_804E078, (void *)&gUnknown_080D8BFC, 40 }, { sub_804E4CC, (void *)&gUnknown_080D8BFC, 40 },
    { sub_8050BFC, (void *)&gUnknown_080D8C24, 126 }, { sub_8050C50, (void *)&gUnknown_080D8C24, 512 },
    { sub_804E15C, (void *)&gUnknown_080D8C38, 160 }, { sub_8050CBC, (void *)&gUnknown_080D8C10, 80 },
    { sub_8050D24, (void *)&gUnknown_080D8C10, 80 }, { sub_8050D9C, (void *)&gUnknown_080D8C10, 80 },
};

const TA53_Data1 gUnknown_080D8DCC[6] = {
    { sub_8050BD8, (void *)&gUnknown_080D8D3C, 40 }, { sub_8050BE4, (void *)&gUnknown_080D8D54, 100 },
    { sub_8050BE4, (void *)&gUnknown_080D8D5C, 100 }, { sub_8050BE4, (void *)&gUnknown_080D8D5C, 100 },
    { sub_8050BF0, (void *)&gUnknown_080D8D44, 20 }, { sub_8050BF0, (void *)&gUnknown_080D8D4C, 100 },
};

const TA53_Rocket_Callback gUnknown_080D8E14[3] = { sub_804E974, sub_804EB6C, sub_804EC6C };
const u8 sRGB_080D8E20[4][16u][3] = {
    {
        { 0, 0, 0 },
        { 2, 2, 28 },
        { 6, 3, 30 },
        { 13, 6, 31 },
        { 13, 9, 31 },
        { 14, 13, 31 },
        { 17, 14, 31 },
        { 12, 19, 31 },
        { 12, 22, 31 },
        { 14, 25, 31 },
        { 16, 27, 31 },
        { 19, 28, 31 },
        { 23, 28, 31 },
        { 26, 28, 31 },
        { 27, 29, 31 },
        { 29, 30, 31 },
    },
    {
        { 0, 0, 0 },
        { 2, 2, 28 },
        { 9, 3, 29 },
        { 12, 6, 31 },
        { 17, 6, 31 },
        { 18, 10, 31 },
        { 18, 13, 31 },
        { 14, 24, 31 },
        { 18, 25, 31 },
        { 22, 26, 31 },
        { 25, 27, 31 },
        { 26, 28, 31 },
        { 27, 28, 31 },
        { 28, 29, 31 },
        { 28, 30, 31 },
        { 29, 30, 31 },
    },
    {
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 5, 4, 12 },
        { 6, 1, 21 },
        { 9, 3, 29 },
        { 13, 9, 31 },
        { 12, 19, 31 },
        { 12, 23, 31 },
        { 13, 26, 31 },
        { 16, 28, 31 },
        { 19, 28, 31 },
        { 24, 28, 31 },
        { 26, 28, 31 },
        { 27, 29, 31 },
        { 29, 30, 31 },
        { 30, 30, 31 },
    },
    {
        { 0, 12, 14 },
        { 31, 31, 31 },
        { 31, 22, 7 },
        { 15, 7, 31 },
        { 11, 2, 22 },
        { 4, 2, 2 },
        { 25, 29, 31 },
        { 20, 23, 25 },
        { 12, 14, 19 },
        { 6, 9, 12 },
        { 8, 0, 15 },
        { 31, 14, 4 },
        { 27, 8, 0 },
        { 23, 4, 0 },
        { 16, 4, 0 },
        { 10, 4, 0 },
    },
};

const u8 gUnknown_080D8EE0[16] = { 0, 1, 2, 3, 2, 1, 0, 1, 2, 3, 2, 1, 0, 1, 2, 3 };

const u16 gUnknown_080D8EF0[2][16] = {
    INCBIN_U16("graphics/boss_9_a.gbapal"),
    INCBIN_U16("graphics/boss_9_b.gbapal"),
};


void SetupEggmanKidnapsVanillaTask(void)
{
    TA53Boss *boss;
    TA53_unk1C *unk1C;
    TA53_unk48 *unk48;
    u8 i;

    gActiveBossTask = TaskCreate(Task_EggmanKidnapsVanilla, sizeof(TA53Boss), 0x4000, 0, TaskDestructor_TrueArea53BossGfx);

    CreateTrueArea53Boss();

    boss = (void *)((gActiveBossTask)->data);
    unk1C = &boss->unk1C;
    unk48 = &boss->unk48;
    boss->unk12 = 0x230;

    unk48->unk30 &= 0xFFF;
    unk48->callback = gUnknown_080D8D6C[4].callback;
    unk48->unk34 = gUnknown_080D8D6C[4].data;
    unk48->unk2E = gUnknown_080D8D6C[4].unk8;

    unk1C->qPos.x = ((s32)((330)*256));
    unk1C->qPos.y = ((s32)((90)*256));
    unk1C->unk14 = gUnknown_080D8DCC[4].unk8;

    for (i = 0; i < 4; i++) {
        unk1C->unk4[i] = gUnknown_080D8C7C[i];
        unk1C->unkC[i] = gUnknown_080D8C94[i];
    }


    unk48->unk30 &= 0xFFF;
    unk48->callback = gUnknown_080D8D6C[5].callback;
    unk48->unk34 = gUnknown_080D8D6C[5].data;
    unk48->unk2E = gUnknown_080D8D6C[5].unk8;
    unk48->unk2C = unk48->unk2E;


    for (i = 0; i < 4; i++) {
        unk48->unk4[i] = gUnknown_080D8A94[0][i];
        unk48->unkC[i] = gUnknown_080D8AAC[0][i];
        unk48->unk14[i] = gUnknown_080D8AC4[0][i];
        unk48->unk1C[i] = gUnknown_080D8ADC[0][i];
        unk48->unk24[i] = gUnknown_080D8AF4[0][i];
    }

    gDispCnt = (0x0100 | 0x0200 | 0x1000 | 0x0040 | 0x0001);
}

void CreateTrueArea53Boss(void)
{
    TA53Boss *boss;
    TA53_unk1C *unk1C;
    TA53_unk48 *unk48;
    TA53_unk98 *unk98;

    s32 unused;
    TA53_unk558 *unk558;
    TA53_unk594 *unk594;
    TA53_unk654 *unk654;
    ScreenFade *fade;
    void *vram;
    Sprite *s;
    u32 i, j;

    gStageFlags |= 0x0020;

    if (gActiveBossTask == 
# 474 "src/game/bosses/boss_9.c" 3 4
                          ((void *)0)
# 474 "src/game/bosses/boss_9.c"
                              ) {
        gActiveBossTask = TaskCreate(Task_TrueArea53BossMain, sizeof(TA53Boss), 0x4000, 0, TaskDestructor_TrueArea53BossGfx);
    }

    boss = (void *)((gActiveBossTask)->data);
    unk1C = &boss->unk1C;
    unk48 = &boss->unk48;
    unk98 = &boss->unk98;
    unk558 = &boss->unk558;
    unk594 = &boss->unk594;
    unk654 = &boss->unk654;

    boss->lives = 12;
    boss->unkD = 0;

    boss->unk10 = 1;
    boss->unk12 = 80;
    boss->unkE = 0;
    boss->unkF = 0;
    boss->qPos.x = 0;
    boss->qPos.y = 0;

    fade = &boss->fade;
    fade->window = 0;
    fade->brightness = ((s32)((0)*256));
    fade->flags = (1 << 0);
    fade->speed = 20;
    fade->bldCnt = ((2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)));
    fade->bldAlpha = 0;

    unk558 = &boss->unk558;
    unk558->callback = sub_8050DC8;
    unk558->unk6 = 200;
    unk558->unk4 = 0;

    unk1C->unk18 &= 0xFFF;
    unk1C->callback = gUnknown_080D8DCC->callback;
    unk1C->unk1C = gUnknown_080D8DCC->data;
    unk1C->unk16 = gUnknown_080D8DCC->unk8;

    unk1C->qPos.x = ((s32)((1267)*256));
    unk1C->qPos.y = ((s32)((112)*256));
    unk1C->unk20 = 0;
    unk1C->unk22 = 0;
    unk1C->unk14 = unk1C->unk16;
    unk1C->unk18 = 0;

    for (j = 0; j < 4; j++) {
        unk1C->unk4[j] = gUnknown_080D8C4C[j];
        unk1C->unkC[j] = gUnknown_080D8C64[j];
    }

    unk48->unk30 &= 0xFFF;
    unk48->callback = gUnknown_080D8D6C[1].callback;
    unk48->unk34 = gUnknown_080D8D6C[1].data;
    unk48->unk2E = gUnknown_080D8D6C[1].unk8;
    unk48->unk4C = 1;
    unk48->unk38 = 0;
    unk48->qPos44.x = 0;
    unk48->qPos44.y = 0;
    unk48->unk2C = gUnknown_080D8D6C[0].unk8;
    unk48->unk30 = 0;
    unk48->unk4;

    for (j = 0; j < 4; j++) {
        unk48->unk4[j] = gUnknown_080D8A1C[0][j];
        unk48->unkC[j] = gUnknown_080D8A34[0][j];
        unk48->unk14[j] = gUnknown_080D8A4C[0][j];
        unk48->unk1C[j] = gUnknown_080D8A64[0][j];
        unk48->unk24[j] = gUnknown_080D8A7C[0][j];
    }

    unk594->callback = sub_804DFB0;

    for (i = 0; i < 10; i++) {

        unk594->unk4[i] = 0;
        unk594->unkE[i] = 0;
        unk594->unk18[i][0] = 0;
        unk594->unk18[i][1] = 0;
        unk594->unk40[i].x = 0;
        unk594->unk40[i].y = 0;
    }

    unk654->callback = sub_804FF9C;
    unk654->func4 = sub_804F768;
    unk654->unk8 = 300;
    unk654->unkA = 512;

    for (i = 0; i < 16; i++) {
        unk654->unkE[i] = 0;
        unk654->unk1E[i] = 0;
        unk654->unk2E[i][0] = 0;
        unk654->unk2E[i][1] = 0;
        unk654->qPos70[i].x = 0;
        unk654->qPos70[i].y = 0;
    }


    unk98->callback = sub_804E66C;
    unk98->unk4 = 300;
    unk98->unk6 = 512;
    unk98->qUnk8 = 0;
    unk98->qUnkC = 0;


    vram = VramMalloc(32);


    for (i = 0; i < 3; i++) {

        TA53_unkA8 *unk10 = &unk98->unk10[i];
        TA53_RocketExhaust *exhaust;
        s = &unk10->spr20;

        unk10->unk4 = 0;
        unk10->unkA = 0;
        unk10->unkE = 0;
        unk10->unk10 = 0;
        unk10->pos14.x = 0;
        unk10->pos14.y = 0;

        s->x = 0;
        s->y = 0;
        s->graphics.dest = VramMalloc(16);
        s->graphics.anim = gUnknown_080D8918[0].anim;
        s->variant = gUnknown_080D8918[0].variant;
        s->prevVariant = -1;
        s->oamFlags = ((17) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;

        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 6;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((2) << (12));

        exhaust = &unk10->exhaust;
        exhaust->callback = sub_804DD9C;


        for (j = 0; j < 5; j++) {

            s = &exhaust->s[j];

            exhaust->unk4[j] = 0;
            exhaust->unkA[j][0] = 0;
            exhaust->unkA[j][1] = 0;
            exhaust->pos[j].x = 0;
            exhaust->pos[j].y = 0;

            s->x = 0;
            s->y = 0;
            s->graphics.dest = vram;
            s->graphics.anim = 714;
            s->variant = 0;
            s->prevVariant = -1;
            s->oamFlags = ((16) << 6);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = ((int)((float)(1.0)*0x10));
            s->palId = 6;
            s->hitboxes[0].index = -1;
            s->frameFlags = ((2) << (12));
        }
    }



    s = &boss->spr7B4;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(gUnknown_080D88F0[4].numTiles);
    s->graphics.anim = gUnknown_080D88F0[4].anim;
    s->variant = gUnknown_080D88F0[4].variant;
    s->prevVariant = -1;
    s->oamFlags = ((19) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((2) << (12));


    for (i = 0; i < 4; i++) {
        s = &boss->capsule[i].s;
        s->x = 0;
        s->y = 0;
        s->graphics.dest = VramMalloc(gUnknown_080D88F0[i].numTiles);
        s->graphics.anim = gUnknown_080D88F0[i].anim;
        s->variant = gUnknown_080D88F0[i].variant;
        s->prevVariant = -1;
        s->oamFlags = ((i + 20) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((2) << (12)) | ((2) << (7));
    }

    s = &unk558->s;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(16);
    s->graphics.anim = 718;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = ((21) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((2) << (12));


    s = &unk594->spr90;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(4);
    s->graphics.anim = 1127;
    s->variant = 8;
    s->prevVariant = -1;
    s->oamFlags = ((6) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((1) << (12));


    s = &unk654->sprF0;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(9);
    s->graphics.anim = 717;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = ((7) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((1) << (12));


    s = &unk654->spr128;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(4);
    s->graphics.anim = 719;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = ((7) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((1) << (12));
}

void TrueArea53BossMove(s32 dX, s32 dY)
{
    u8 i, j;
    TA53Boss *boss;



    TA53_unk594 *unk594;
    TA53_unk1C *unk1C;
    TA53_unk98 *unk98;
    TA53_unkA8 *unkA8;
    TA53_unk654 *unk654;

    if (gActiveBossTask == 
# 761 "src/game/bosses/boss_9.c" 3 4
                          ((void *)0)
# 761 "src/game/bosses/boss_9.c"
                              )
        return;

    boss = (void *)((gActiveBossTask)->data);
    unk1C = &boss->unk1C;





    unk98 = &boss->unk98;

    unk1C->qPos.x += dX;
    unk1C->qPos.y += dY;
    boss->qPos.x += dX;
    boss->qPos.y += dY;

    for (i = 0; i < 3; i++) {
        unkA8 = &unk98->unk10[i];
        unkA8->pos14.x += dX;
        unkA8->pos14.y += dY;

        for (j = 0; j < (sizeof(unkA8->exhaust.pos) / sizeof((unkA8->exhaust.pos)[0])); j++) {


            unkA8->exhaust.pos[i].x += ((int)((dX) >> 8));
            unkA8->exhaust.pos[i].y += ((int)((dY) >> 8));
        }
    }


    for (i = 0; i < 10; i++) {
        unk594 = &boss->unk594;



        unk594->unk40[i].x += dX;
        unk594->unk40[i].y += dY;
    }


    for (i = 0; i < 16; i++) {
        unk654 = &boss->unk654;
        unk654->qPos70[i].x += dX;
        unk654->qPos70[i].y += dY;
    }

}

void Task_EggmanKidnapsVanilla(void)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    TA53_unk558 *unk558 = &boss->unk558;
    u16 *offset;
    int_vcount y;

    gDispCnt &= ~(0x2000 | 0x4000);

    if (--boss->unk12 == 0) {
        gFlags &= ~0x4;
        TaskDestroy(gCurTask);
        return;
    }

    unk558->callback(unk558);
    unk1C->callback(unk1C);
    unk48->callback(unk48);
    sub_80505B8(boss);

    gWinRegs[5] = ((1 << 13) | (1 << 8) | (1 << 9) | (1 << 10) | (1 << 5)
                               | (1 << 4) | (1 << 0) | (1 << 2));

    gFlags |= 0x4;
    gHBlankCopyTarget = (void *)&(*(vu16 *)(REG_BASE + 0x16));
    gHBlankCopySize = 2;

    offset = gBgOffsetsHBlankPrimary;
    for (y = 0; y < 240 - 1; y++) {
        s16 val = ((gSineTable[(((y + gStageTime) * 40) & (1024 - 1))]) >> 12) + 0x2C;
        *offset++ = val;
    }
}

void Task_TrueArea53BossMain(void)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    TA53_unk98 *unk98 = &boss->unk98;

    gStageFlags |= 0x0020;

    gDispCnt &= ~(0x2000 | 0x4000);
    unk1C->qPos.x += ((s32)((5)*256));
    unk98->unk6 = unk48->unk3A[0];
    unk98->unk6 = ((unk98->unk6 + ((int)((unk48->qPos44.x) >> 8)) + 860) & (1024 - 1));

    unk98->qUnk8 = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    unk98->qUnkC = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

    unk98->callback(unk98);
    unk1C->callback(unk1C);
    unk48->callback(unk48);
    sub_80501D4(boss);
    sub_8050958(boss);

    unk1C->qPos.x += ((s32)((1)*256));

    if (--boss->unk12 == 0) {
        gCurTask->main = Task_804D9DC;
    } else if (boss->unk12 == (80 - 1)) {
        Background *cockpit = &boss->bg900;

        cockpit->graphics.dest = (void *)&VRAM[0];
        cockpit->graphics.anim = 0;
        cockpit->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (28)));
        cockpit->unk18 = 0;
        cockpit->unk1A = 0;
        cockpit->tilemapId = 376;
        cockpit->unk1E = 0;
        cockpit->unk20 = 0;
        cockpit->unk22 = 0;
        cockpit->unk24 = 0;
        cockpit->targetTilesX = 32;
        cockpit->targetTilesY = 20;
        cockpit->paletteOffset = 0;
        cockpit->flags = (1);
        DrawBackground(cockpit);

        gBgCntRegs[1] = (((28) << 8) | (2));
    }
}

void sub_804D8E0(TA53Boss *boss)
{
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    TA53_unk98 *unk98 = &boss->unk98;
    TA53_unk558 *unk558 = &boss->unk558;
    TA53_unk654 *unk654 = &boss->unk654;
    Sprite *s;
    u8 i;

    if (SuperSonicGetFlags() & 0x200) {
        sub_802BA8C();
    }

    for (i = 0; i < (sizeof(unk98->unk10) / sizeof((unk98->unk10)[0])); i++) {
        TA53_unkA8 *unkA8 = &unk98->unk10[i];
        s = &unkA8->spr20;

        unkA8->unk4 |= 0x4;

        if (unkA8->callback != gUnknown_080D8E14[2]) {
            s->graphics.anim = gUnknown_080D8918[16].anim;
            s->variant = gUnknown_080D8918[16].variant;
            s->prevVariant = -1;
            s->frameFlags = ((1) << (12));
            unkA8->unk8 = 16;
        }
    }

    unk98->callback = sub_804E66C;

    unk654->callback = sub_804FF9C;
    unk654->unk8 = 300;

    unk558->callback = sub_8050DC8;

    unk48->unk2C = 0;
    unk1C->unk14 = 0;

    boss->qPos.x = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    boss->qPos.y = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));
}

void Task_804D9DC(void)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    TA53_unk98 *unk98 = &boss->unk98;
    TA53_unk558 *unk558 = &boss->unk558;
    TA53_unk594 *unk594 = &boss->unk594;
    TA53_unk654 *unk654 = &boss->unk654;

    gDispCnt &= ~(0x2000 | 0x4000);
    unk1C->qPos.x += ((s32)((5)*256));
    unk98->unk6 = unk48->unk3A[0];
    unk98->unk6 = ((unk98->unk6 + ((int)((unk48->qPos44.x) >> 8)) + 860) & (1024 - 1));

    unk98->qUnk8 = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    unk98->qUnkC = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

    if (boss->lives == 0) {
        MPlayStop(&gMPlayInfo_SE1);
        MPlayStop(&gMPlayInfo_SE2);
        MPlayStop(&gMPlayInfo_SE3);

        gStageFlags |= (0x0020 | 0x0002 | 0x0001);
        sub_802B81C();
        sub_804D8E0(boss);
        sub_80501D4(boss);
        sub_8050958(boss);

        unk98->callback = sub_8050DC4;
        unk654->callback = sub_8050DF8;

        boss->unk12 = 120;
        gCurTask->main = Task_804DB34;
    } else {
        unk98->callback(unk98);
        unk558->callback(unk558);
        unk594->callback(unk594);
        unk654->callback(unk654);
        unk1C->callback(unk1C);
        unk48->callback(unk48);

        sub_804ECC4(boss);
        sub_80501D4(boss);
        sub_8050958(boss);
    }
}

void Task_804DB34(void)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk98 *unk98 = &boss->unk98;
    TA53_unk594 *unk594 = &boss->unk594;
    TA53_unk654 *unk654 = &boss->unk654;
    Sprite *s;
    s32 x, y;

    gDispCnt &= ~(0x2000 | 0x4000);

    unk1C->qPos.x += ((s32)((4.75)*256));
    unk1C->qPos.y += ((s32)((0.25)*256));

    unk98->callback(unk98);
    unk594->callback(unk594);
    unk654->callback(unk654);

    sub_80501D4(boss);
    sub_8050958(boss);
    UpdateExplosion(boss);

    s = &boss->spr7B4;

    x = ((s32)((gCamera.x + 536)*256));
    y = ((s32)((gCamera.y + 60)*256));
    boss->qPos.x += ({((100) != 0) ? ((s32)((x - boss->qPos.x) * 2) / (s32)(100)) : 0;});
    boss->qPos.y += ({((100) != 0) ? ((s32)((y - boss->qPos.y) * 2) / (s32)(100)) : 0;});

    s->x = ((int)((boss->qPos.x) >> 8)) - gCamera.x;
    s->y = ((int)((boss->qPos.y) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (boss->unk12 > 0) {
        boss->unk12--;
    } else {
        if (UpdateScreenFade(&boss->fade) == 1) {
            boss->unk12 = 2;
            gBldRegs.bldY = 16;
            gCurTask->main = Task_804DC60;
        }
    }
}

void Task_804DC60(void)
{
    TA53Boss *boss = (void *)((gCurTask)->data);

    if (--boss->unk12 == 0) {
        TasksDestroyInPriorityRange(0, 0xFFFF);

        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
        gBgSpritesCount = 0;

        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;

        gStageFlags |= 0x0400;

        CreateStageUI();
        CreateStageResults(gCourseTime, gRingCount, gSpecialRingCount);

        gBldRegs.bldCnt = (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) | (2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)));
    }
}

static void UpdateExplosion(TA53Boss *boss)
{
    ExplosionPartsInfo info;

    if (({((13) != 0) ? ((s32)(gStageTime) % (s32)(13)) : 0;}) == 0) {
        m4aSongNumStart(144);
    }

    if ((gStageTime % 4u) == 0) {
        info.spawnX = ((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((-64) + ((64 + 128) - 1))) + (64));
        info.spawnY = ((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((-16) + ((16 + 128) - 1))) + (16));
        info.velocity = 0;
        info.rotation = ((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((-0) + (1024 - 1))) + (0));
        info.speed = ((s32)((2)*256));
        info.vram = (&VRAM[0x10000] + 0x2980);
        info.anim = 619;
        info.variant = 0;
        info.unk4 = 1;
        CreateBossParticleWithExplosionUpdate(&info, &boss->unkE);
    }
}

void sub_804DD9C(struct TA53_RocketExhaust *exhaust)
{
    u8 i;

    for (i = 0; i < (sizeof(exhaust->pos) / sizeof((exhaust->pos)[0])); i++) {
        if (exhaust->unk4[i] != 0) {
            Sprite *s = &exhaust->s[i];

            exhaust->unk4[i]--;

            exhaust->pos[i].x += ((s32)((5)*256));

            exhaust->pos[i].x += exhaust->unkA[i][0];
            exhaust->pos[i].y += exhaust->unkA[i][1];

            exhaust->unkA[i][0] -= (exhaust->unkA[i][0] >> 4);
            exhaust->unkA[i][1] -= (exhaust->unkA[i][1] >> 4);

            s->x = ((int)((exhaust->pos[i].x) >> 8)) - gCamera.x;
            s->y = ((int)((exhaust->pos[i].y) >> 8)) - gCamera.y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

void sub_804DE5C(s32 qX, s32 qY, TA53_RocketExhaust *exhaust, u16 param3)
{
    u8 i;

    for (i = 0; i < (sizeof(exhaust->pos) / sizeof((exhaust->pos)[0])); i++) {
        if (exhaust->unk4[i] == 0) {
            exhaust->unkA[i][0] = -((gSineTable[(param3) + 256]) >> 5);
            exhaust->unkA[i][1] = -((gSineTable[(param3)]) >> 5);

            exhaust->pos[i].x = qX;
            exhaust->pos[i].y = qY;

            exhaust->unk4[i] = 16;

            exhaust->s[i].prevVariant = -1;
            break;
        }
    }
}

void sub_804DEEC(s32 qX, s32 qY)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk594 *unk594 = &boss->unk594;
    u8 i;

    for (i = 0; i < (sizeof(unk594->unk4) / sizeof((unk594->unk4)[0])); i++) {
        if (unk594->unk4[i] == 0) {
            unk594->unk4[i] = 1;
            unk594->unkE[i] = 60;
            unk594->unk18[i][0] = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xFF) - ((s32)((2)*256));
            unk594->unk18[i][1] = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xFF) - ((s32)((2)*256));

            unk594->unk40[i].x = qX;
            unk594->unk40[i].y = qY;

            break;
        }
    }
}

void sub_804DFB0(TA53_unk594 *unk594)
{
    Sprite *s = &unk594->spr90;
    u8 i = 0;
    bool32 animUpdated = 0;

    for (; i < (sizeof(unk594->unk4) / sizeof((unk594->unk4)[0])); i++) {
        if (unk594->unk4[i] != 0) {
            if (--unk594->unkE[i] == 0) {
                unk594->unk4[i] = 0;
            }

            unk594->unk18[i][1] += ((s32)((0.125)*256));

            unk594->unk40[i].x += ((s32)((5)*256)) + unk594->unk18[i][0];
            unk594->unk40[i].y += ((s32)((0)*256)) + unk594->unk18[i][1];

            s->x = ((int)((unk594->unk40[i].x) >> 8)) - gCamera.x;
            s->y = ((int)((unk594->unk40[i].y) >> 8)) - gCamera.y;

            if (!animUpdated) {
                UpdateSpriteAnimation(s);
                animUpdated = 1;
            }

            DisplaySprite(s);
        }
    }
}

void sub_804E078(struct TA53_unk48 *unk48)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;

    if (sub_8050030(unk48) != 0) {
        if (boss->lives > 4) {
            unk48->unk30 &= 0xFFF;
            unk48->callback = gUnknown_080D8D6C[4].callback;
            unk48->unk34 = gUnknown_080D8D6C[4].data;
            unk48->unk2E = gUnknown_080D8D6C[4].unk8;
        } else {
            u8 index = ({((3) != 0) ? ((s32)(gStageTime) % (s32)(3)) : 0;}) + 1;
            unk48->unk30 &= 0xFFF;
            unk48->callback = gUnknown_080D8D6C[2].callback;
            unk48->unk34 = gUnknown_080D8D6C[2].data;
            unk48->unk2E = gUnknown_080D8D6C[2].unk8;
            unk1C->unk18 &= 0xFFF;

            unk1C->callback = gUnknown_080D8DCC[index].callback;
            unk1C->unk1C = gUnknown_080D8DCC[index].data;
            unk1C->unk16 = gUnknown_080D8DCC[index].unk8;
            unk48->unk2C = gUnknown_080D8D6C[0].unk8;
            unk1C->unk14 = gUnknown_080D8DCC[0].unk8;
        }
    }

    unk48->qPos44.x = 0;
    unk48->qPos44.y = 0;

    if (unk48->unk38 != 0) {
        if (sub_808558C(unk48->unk38, 0, 10) < 0) {
            unk48->unk38--;
        } else {
            unk48->unk38++;
        }
    }
    unk48->unk38 &= (1024 - 1);
}

void sub_804E15C(struct TA53_unk48 *unk48)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk558 *unk558 = &boss->unk558;
    TA53_unk1C *unk1C = &boss->unk1C;
    s32 qSonicX, qSonicY;
    u8 sp14, i;

    if (sub_8050030(unk48) != 0) {
        unk48->unk30 &= 0xFFF;
        unk48->callback = gUnknown_080D8D6C[0].callback;
        unk48->unk34 = gUnknown_080D8D6C[0].data;
        unk48->unk2E = gUnknown_080D8D6C[0].unk8;

        gDispCnt &= ~(0x2000);
        gWinRegs[4] = 0;
        gWinRegs[5] = 0;

        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        return;
    }

    sp14 = (unk48->unk30 >> 12);
    if (sp14 > 2) {

        s32 sb = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        s32 r8 = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        s32 r4, r5 = ({ s16 clamped = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0]) & (1024 - 1); clamped; });
        u16 r6;

        sb += (((gSineTable[(r5) + 256]) * gUnknown_080D89A5[0]) >> 6);
        r8 += (((gSineTable[(r5)]) * gUnknown_080D89A5[0]) >> 6);

        r5 += 0x8C;

        sb += ({
            s32 val = (gSineTable[((r5 - ((s32)((1)*256))) & (1024 - 1)) + 256]);
            val >> 2;
        });
        r8 += ({
            s32 val = (gSineTable[((r5 - ((s32)((1)*256))) & (1024 - 1))]);
            val >> 2;
        });

        for (i = 0; i < 3; i++) {

            r5 += unk48->unk3A[i + 1];
            r5 &= (1024 - 1);

            sb += (((gSineTable[(r5) + 256]) * gUnknown_080D89A5[i + 1]) >> 6);
            r8 += (((gSineTable[(r5)]) * gUnknown_080D89A5[i + 1]) >> 6);
        }

        sb += (((gSineTable[(r5) + 256]) * gUnknown_080D89A5[4]) >> 6);
        r8 += (((gSineTable[(r5)]) * gUnknown_080D89A5[4]) >> 6);

        r5 += unk48->unk42;
        r5 &= (1024 - 1);

        if (sp14 > 5) {


            if ((gMPlayTable[2].info->songHeader != gSongTable[269].header) && (sp14 == 6)) {
                m4aSongNumStart(269);
            }


            SuperSonicGetPos(&qSonicX, &qSonicY);

            r5 += unk48->unk38;
            r6 = ({ s16 clamped = (r5) & (1024 - 1); clamped; });

            r5 = (u16)sub_8004418(((int)((qSonicY - r8) >> 8)), ((int)((qSonicX - sb) >> 8)));

            if ((r6 < (r5 + 0x10)) && (r6 > (r5 - 0x10))) {
                sub_802BB54();
                unk558->callback = sub_804F1EC;
            }


            gDispCnt |= 0x2000;
            gWinRegs[0] = (((0) << 16) | (240));
            gWinRegs[2] = (((0) << 16) | (426));
            gWinRegs[4] = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
            gWinRegs[5] = ((1 << 0) | (1 << 2) | (1 << 4));
            gBldRegs.bldCnt = (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) | (2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)));

            r5 = 8;
            gBldRegs.bldAlpha = (((0) << 8) | (r5));
            gBldRegs.bldY = r5;


            r4 = (s8)({((8) != 0) ? ((s32)(({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; })) % (s32)(8)) : 0;});
            if (r4 < 0) {
                r4 = -r4;
            }


            sb += (((gSineTable[(r6) + 256]) * gUnknown_080D89A5[5]) >> 6);
            r8 += (((gSineTable[(r6)]) * gUnknown_080D89A5[5]) >> 6);

            ScreenMask_CreateShape(r6, (26 - (s8)r4), 16, (((int)((sb) >> 8)) - gCamera.x), (((int)((r8) >> 8)) - gCamera.y), r5);
        } else {
            u32 p0;

            sub_802C704(8, &qSonicX, &qSonicY);

            r6 = sub_8004418(((int)((qSonicY - r8) >> 8)), ((int)((qSonicX - sb) >> 8)));
            p0 = r5;
            p0 += unk48->unk38;
            if (sub_808558C(p0 & (1024 - 1), r6, 10) < 0) {
                if (unk48->unk38 > 512) {
                    if (unk48->unk38 > 0x380)
                        unk48->unk38 -= 4;
                } else {
                    unk48->unk38 -= 4;
                }
            } else {
                if (unk48->unk38 < 512) {
                    if (unk48->unk38 < 128)
                        unk48->unk38 += 4;
                } else {
                    unk48->unk38 += 4;
                }
            }

            unk48->unk38 &= (1024 - 1);
        }
    }
}

void sub_804E4CC(struct TA53_unk48 *unk48)
{



    s32 r1;

    s32 r3;
    u32 r5;
    u16 r6, r2;
    u8 i, c;
    u8 r, g, b;

    sub_8050030(unk48);

    r1 = unk48->unk30 & 0xFFF;
    r3 = r1;
    r5 = r3;

    r2 = unk48->unk30 >> 12;
    if (r2 == 4) {
        unk48->unk30 &= 0xFFF;
        unk48->callback = gUnknown_080D8D6C[0].callback;
        unk48->unk34 = gUnknown_080D8D6C[0].data;
        unk48->unk2E = gUnknown_080D8D6C[0].unk8;
        return;
    }

    if (r2 == 3) {

        gDispCnt &= ~0x0200;

        r6 = r3;
        for (c = 0; c < 16; c++) {
            r = sRGB_080D8E20[3][c][0];
            r = ((r * r6) >> 12) & 0x1F;
            g = sRGB_080D8E20[3][c][1];
            g = ((g * r6) >> 12) & 0x1F;
            b = sRGB_080D8E20[3][c][2];
            b = ((b * r6) >> 12) & 0x1F;

            gObjPalette[(8)*16u + (c)] = ((((b) << 10) | ((g) << 5) | (r)));;
            gBgPalette[(0)*16u + (c)] = ((((b) << 10) | ((g) << 5) | (r)));;
        }

        gFlags |= 0x2;

        gFlags |= 0x1;
        unk48->unk4C = 0;
        return;
    }

    if ((r2 == 2) && (r5 > 0xE00)) {
        gDispCnt |= 0x0200;
        r6 = 0xFFF - r5;
        for (i = 0; i < (sizeof(sRGB_080D8E20) / sizeof((sRGB_080D8E20)[0])) - 1; i++) {
            for (c = 0; c < (sizeof(sRGB_080D8E20[0]) / sizeof((sRGB_080D8E20[0])[0])); c++) {
                r = sRGB_080D8E20[i][c][0];
                r = ((r * r6) >> 9) & 0x1F;
                g = sRGB_080D8E20[i][c][1];
                g = ((g * r6) >> 9) & 0x1F;
                b = sRGB_080D8E20[i][c][2];
                b = ((b * r6) >> 9) & 0x1F;




                gBgPalette[(7)*16u + (c + (i * 16u))] = ((((b) << 10) | ((g) << 5) | (r)));;

            }
        }

        gFlags |= 0x1;
    }
}

void sub_804E66C(struct TA53_unk98 *unk98)
{
    bool32 sb;
    u8 i;

    if (--unk98->unk4 == 0) {
        unk98->callback = sub_804E74C;
        unk98->unk4 = 300;
    }


    sb = (({((4) != 0) ? ((s32)(gStageTime) % (s32)(4)) : 0;}) == 0) ? 1 : 0;

    for (i = 0; i < 3; i++) {
        TA53_unkA8 *unkA8 = &unk98->unk10[i];
        TA53_RocketExhaust *exhaust = &unkA8->exhaust;

        exhaust->callback(exhaust);

        if (unkA8->unk4 & 0x1) {
            if (sb && unkA8->callback != sub_804EC6C) {
                u16 index = (unkA8->unkC + ((s32)((0.125)*256))) & (1024 - 1);
                s32 qX = (unkA8->pos14.x - (((gSineTable[(index) + 256]) * 5) >> 5));
                s32 qY = (unkA8->pos14.y - (((gSineTable[(index)]) * 5) >> 5));
                sub_804DE5C(qX, qY, exhaust, index);
            }

            unkA8->callback(unkA8);
        }
    }

    sub_804E8E8(unk98);
}

void sub_804E74C(struct TA53_unk98 *unk98)
{
    bool32 sb;
    TA53_unkA8 *unkA8;
    TA53_RocketExhaust *exhaust;
    u16 unk4 = --unk98->unk4;
    u8 i = 3;

    if (unk4 == 0) {
        unk98->callback = sub_804E66C;
        unk98->unk4 = 600;
    } else if (unk4 == 270) {
        i = 0;
    } else if (unk4 == 210) {
        i = 1;
    } else if (unk4 == 150) {
        i = 2;
    }

    if (i < 3) {
        Sprite *s;
        s32 unk8, unkC;
        unkA8 = &unk98->unk10[i];
        unkA8->callback = gUnknown_080D8E14[0];
        unkA8->unk4 = 3;
        i = 0;

        unkA8->unk8 = 600;
        unkA8->unkA = (unk98->unk6 & (1024 - 1));

        unkA8->unkE = (gSineTable[(unk98->unk6) + 256]) >> 5;
        unkA8->unk10 = (gSineTable[(unk98->unk6)]) >> 5;

        unk8 = unk98->qUnk8;
        unkA8->pos14.x = unk98->qUnk8;

        unkC = unk98->qUnkC;
        unkA8->pos14.x = unk8 + unkA8->unkE * 13;
        unkA8->pos14.y = unkC + unkA8->unk10 * 13;

        unkA8->unk1C = 0x80;
        unkA8->unk6 = i;
        unkA8->unk5 = 5;

        s = &unkA8->spr20;
        s->graphics.anim = gUnknown_080D8918[0].anim;
        s->variant = gUnknown_080D8918[0].variant;
        s->prevVariant = -1;
        s->frameFlags = ((2) << (12));
        s->palId = 6;
        m4aSongNumStart(266);
    }

    sb = (({((4) != 0) ? ((s32)(gStageTime) % (s32)(4)) : 0;}) == 0) ? 1 : 0;

    for (i = 0; i < 3; i++) {
        unkA8 = &unk98->unk10[i];
        exhaust = &unkA8->exhaust;

        exhaust->callback(exhaust);

        if (unkA8->unk4 & 0x1) {
            if (sb) {
                s32 qX = (unkA8->pos14.x - (((gSineTable[(unkA8->unkA) + 256]) * 5) >> 5));
                s32 qY = (unkA8->pos14.y - (((gSineTable[(unkA8->unkA)]) * 5) >> 5));
                sub_804DE5C(qX, qY, exhaust, unkA8->unkA);
            }

            unkA8->callback(unkA8);
        }
    }

    sub_804E8E8(unk98);
}

void sub_804E8E8(TA53_unk98 *unk98)
{
    TA53_unkA8 *unkA8;
    Sprite *s;
    u16 index;
    u8 i;

    for (i = 0; i < 3; i++) {
        unkA8 = &unk98->unk10[i];

        if (unkA8->unk4 & 0x1) {
            s = &unkA8->spr20;

            index = ((unkA8->unkC + ((s32)((0.125)*256))) & (1024 - 1)) >> 6;

            if (s->graphics.anim == gUnknown_080D8918[0].anim) {
                s->variant = gUnknown_080D8918[index].variant;
            }

            s->x = ((int)((unkA8->pos14.x) >> 8)) - gCamera.x;
            s->y = ((int)((unkA8->pos14.y) >> 8)) - gCamera.y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

void sub_804E974(struct TA53_unkA8 *unkA8)
{
    Vec2_32 qSonicPos;
    Sprite *s = &unkA8->spr20;
    bool32 r8 = 0;
    u16 sinVal;

    SuperSonicGetPos(&qSonicPos.x, &qSonicPos.y);

    qSonicPos.x += ((s32)((16)*256));
    qSonicPos.y += ((s32)((0)*256));

    if (--unkA8->unk8 == 0) {
        r8 = 1;
    } else if (unkA8->unk8 < 170) {
        unkA8->unk4 &= ~0x2;
    }

    sinVal = sub_8004418(((int)((qSonicPos.y - unkA8->pos14.y) >> 8)), ((int)((qSonicPos.x - unkA8->pos14.x) >> 8)));
    ;
    unkA8->unkC = sinVal;

    if (unkA8->unk5 > 0) {
        --unkA8->unk5;
    } else {
        if (sub_808558C(unkA8->unkA, sinVal, 10) < 0) {
            unkA8->unkA -= 5;
        } else {
            unkA8->unkA += 5;
        }
    }

    unkA8->unkA &= (1024 - 1);
    unkA8->unkE -= ({((40) != 0) ? ((s32)(unkA8->unkE) / (s32)(40)) : 0;});
    unkA8->unk10 -= ({((40) != 0) ? ((s32)(unkA8->unk10) / (s32)(40)) : 0;});

    unkA8->unkE += ({((850) != 0) ? ((s32)((gSineTable[(unkA8->unkA) + 256])) / (s32)(850)) : 0;});
    unkA8->unk10 += ({((850) != 0) ? ((s32)((gSineTable[(unkA8->unkA)])) / (s32)(850)) : 0;});
    unkA8->pos14.x += ((s32)((5)*256)) + unkA8->unkE;
    unkA8->pos14.y += ((s32)((0)*256)) + unkA8->unk10;

    if (!(SuperSonicGetFlags() & (0x200 | 0x8))) {
        if (sub_804EE84(s, ((int)((unkA8->pos14.x) >> 8)), ((int)((unkA8->pos14.y) >> 8))) == 1) {
            u16 rot;

            unkA8->callback = gUnknown_080D8E14[1];
            rot = SuperSonicGetRotation();

            unkA8->unkE = (gSineTable[(rot) + 256]) >> 4;
            unkA8->unk10 = (gSineTable[(rot)]) >> 4;

            s->frameFlags = ((1) << (12));

            r8 = 0;
            m4aSongNumStart(268);
        } else if (sub_804F010(s, ((int)((unkA8->pos14.x) >> 8)), ((int)((unkA8->pos14.y) >> 8)), 1) == 1) {
            if (sub_802BA8C() == 1) {
                r8 = 1;
            }
        }

        if (r8) {
            unkA8->unk4 |= 0x4;
            unkA8->callback = gUnknown_080D8E14[2];
            unkA8->unk8 = 16;

            s->graphics.anim = gUnknown_080D8918[16].anim;
            s->variant = gUnknown_080D8918[16].variant;
            s->prevVariant = -1;
            s->frameFlags = ((1) << (12));
            s->palId = 0;
            m4aSongNumStart(267);
        }
    }
}

void sub_804EB6C(struct TA53_unkA8 *unkA8)
{
    Sprite *s = &unkA8->spr20;

    TA53Boss *boss = (void *)((gCurTask)->data);

    if (--unkA8->unk8 == 0) {
        s->graphics.anim = gUnknown_080D8918[16].anim;
        s->variant = gUnknown_080D8918[16].variant;
        s->prevVariant = -1;
        s->palId = 0;
        unkA8->callback = gUnknown_080D8E14[2];
        unkA8->unk8 = 16;
    } else {
        u32 index = (unkA8->unkA + 0x8C) & (1024 - 1);
        unkA8->unkA = index;
        unkA8->unkC = index;

        unkA8->pos14.x += ((s32)((5)*256)) + unkA8->unkE;
        unkA8->pos14.y += ((s32)((0)*256)) + unkA8->unk10;

        if (boss->unkD == 0) {
            if ((unkA8->unk6 == 0) && sub_804ED98(((int)((unkA8->pos14.x) >> 8)), ((int)((unkA8->pos14.y) >> 8)))) {
                if (boss->lives & 0x1) {
                    m4aSongNumStart(143);
                } else {
                    m4aSongNumStart(235);
                }

                s->graphics.anim = gUnknown_080D8918[16].anim;
                s->variant = gUnknown_080D8918[16].variant;
                s->prevVariant = -1;
                s->palId = 0;
                unkA8->callback = gUnknown_080D8E14[2];
                unkA8->unk8 = 16;

                boss->unkD = 48;

                if (boss->lives > 0) {
                    boss->lives--;
                }
            }
        }
    }
}

void sub_804EC6C(struct TA53_unkA8 *unkA8)
{
    if (--unkA8->unk8 == 0) {
        unkA8->unk4 = 0;
    } else {
        unkA8->unkE -= ({((40) != 0) ? ((s32)(unkA8->unkE) / (s32)(40)) : 0;});
        unkA8->unk10 -= ({((40) != 0) ? ((s32)(unkA8->unk10) / (s32)(40)) : 0;});

        unkA8->pos14.x += unkA8->unkE;
        unkA8->pos14.y += unkA8->unk10;

        unkA8->pos14.x += ((s32)((5)*256));
        unkA8->pos14.y += ((s32)((0)*256));
    }
}

void sub_804ECC4(TA53Boss *boss)
{
    Vec2_32 qSonicPos;
    s32 x, y, xSq, ySq;
    u16 r1;
    s32 distSonicSq;
    TA53_unk1C *unk1C;
    TA53_unk48 *unk48;

    SuperSonicGetPos(&qSonicPos.x, &qSonicPos.y);

    unk1C = &boss->unk1C;
    unk48 = &boss->unk48;

    x = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    y = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

    r1 = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0] + ((s32)((3)*256))) & (1024 - 1);

    x += (((gSineTable[(r1) + 256]) * 5) >> 4);
    y += (((gSineTable[(r1)]) * 5) >> 4);

    r1 = (r1 + ((s32)((3)*256))) & (1024 - 1);
    x += (((gSineTable[(r1) + 256]) * 5) >> 5);
    y += (((gSineTable[(r1)]) * 5) >> 5);

    x -= qSonicPos.x;
    y -= qSonicPos.y;

    xSq = ((int)((x) >> 8));
    ySq = ((int)((y) >> 8));
    xSq = xSq * xSq;
    ySq = ySq * ySq;
    distSonicSq = xSq + ySq;

    if (distSonicSq < ((40) * (40))) {
        sub_802BA8C();
    }
}

bool32 sub_804ED98(s32 _x, s32 _y)
{
    bool32 result = 0;
    TA53Boss *boss = (void *)((gCurTask)->data);
    s32 x, y, xSq, ySq;
    u16 r1;
    s32 distSonicSq;
    TA53_unk1C *unk1C;
    TA53_unk48 *unk48;

    unk1C = &boss->unk1C;
    unk48 = &boss->unk48;

    x = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    y = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

    r1 = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0] + ((s32)((3)*256))) & (1024 - 1);

    x += (((gSineTable[(r1) + 256]) * 5) >> 4);
    y += (((gSineTable[(r1)]) * 5) >> 4);

    r1 = (r1 + ((s32)((3)*256))) & (1024 - 1);
    x += (((gSineTable[(r1) + 256]) * 5) >> 5);
    y += (((gSineTable[(r1)]) * 5) >> 5);

    xSq = ((int)((x) >> 8));
    ySq = ((int)((y) >> 8));
    xSq -= _x;
    ySq -= _y;

    xSq = xSq * xSq;
    ySq = ySq * ySq;
    distSonicSq = xSq + ySq;

    if (distSonicSq < ((40) * (40))) {
        result = 1;
    }

    return result;
}

bool32 sub_804EE84(Sprite *sprIn, s32 x, s32 y)
{
    s32 qSonicX = 0, qSonicY = 0;
    Sprite *sprSonic = SuperSonicGetSprite();

    SuperSonicGetPos(&qSonicX, &qSonicY);

    if (SuperSonicGetFlags() & (0x200 | 0x8)) {
        return 0;
    }

    if (!(!(gPlayer.moveState & 0x00000080)) || !((sprIn->hitboxes[1]).index != -1) || !((sprSonic->hitboxes[1]).index != -1)) {
        return 0;
    }

    if ((((((x) + (&sprIn->hitboxes[1])->left) <= ((((int)((qSonicX) >> 8))) + (&sprSonic->hitboxes[1])->left) && (((x) + (&sprIn->hitboxes[1])->left) + ((&sprIn->hitboxes[1])->right - (&sprIn->hitboxes[1])->left)) >= ((((int)((qSonicX) >> 8))) + (&sprSonic->hitboxes[1])->left)) || (((x) + (&sprIn->hitboxes[1])->left) >= ((((int)((qSonicX) >> 8))) + (&sprSonic->hitboxes[1])->left) && (((((int)((qSonicX) >> 8))) + (&sprSonic->hitboxes[1])->left) + ((&sprSonic->hitboxes[1])->right - (&sprSonic->hitboxes[1])->left)) >= ((x) + (&sprIn->hitboxes[1])->left))) && (((((y)) + (&sprIn->hitboxes[1])->top) <= (((((int)((qSonicY) >> 8)))) + (&sprSonic->hitboxes[1])->top) && ((((y)) + (&sprIn->hitboxes[1])->top) + ((&sprIn->hitboxes[1])->bottom - (&sprIn->hitboxes[1])->top)) >= (((((int)((qSonicY) >> 8)))) + (&sprSonic->hitboxes[1])->top)) || ((((y)) + (&sprIn->hitboxes[1])->top) >= (((((int)((qSonicY) >> 8)))) + (&sprSonic->hitboxes[1])->top) && ((((((int)((qSonicY) >> 8)))) + (&sprSonic->hitboxes[1])->top) + ((&sprSonic->hitboxes[1])->bottom - (&sprSonic->hitboxes[1])->top)) >= (((y)) + (&sprIn->hitboxes[1])->top))))) {
        return 1;
    }

    return 0;
}

bool32 sub_804EF68(Sprite *sprRocket, s32 rocketX, s32 rocketY, Sprite *sprMouth, s32 mouthX, s32 mouthY)
{
    if ((!((sprRocket->hitboxes[1]).index != -1)) || (!((sprMouth->hitboxes[0]).index != -1))) {
        return 0;
    }

    if ((((((rocketX) + (&sprRocket->hitboxes[1])->left) <= ((mouthX) + (&sprMouth->hitboxes[0])->left) && (((rocketX) + (&sprRocket->hitboxes[1])->left) + ((&sprRocket->hitboxes[1])->right - (&sprRocket->hitboxes[1])->left)) >= ((mouthX) + (&sprMouth->hitboxes[0])->left)) || (((rocketX) + (&sprRocket->hitboxes[1])->left) >= ((mouthX) + (&sprMouth->hitboxes[0])->left) && (((mouthX) + (&sprMouth->hitboxes[0])->left) + ((&sprMouth->hitboxes[0])->right - (&sprMouth->hitboxes[0])->left)) >= ((rocketX) + (&sprRocket->hitboxes[1])->left))) && (((((rocketY)) + (&sprRocket->hitboxes[1])->top) <= (((mouthY)) + (&sprMouth->hitboxes[0])->top) && ((((rocketY)) + (&sprRocket->hitboxes[1])->top) + ((&sprRocket->hitboxes[1])->bottom - (&sprRocket->hitboxes[1])->top)) >= (((mouthY)) + (&sprMouth->hitboxes[0])->top)) || ((((rocketY)) + (&sprRocket->hitboxes[1])->top) >= (((mouthY)) + (&sprMouth->hitboxes[0])->top) && ((((mouthY)) + (&sprMouth->hitboxes[0])->top) + ((&sprMouth->hitboxes[0])->bottom - (&sprMouth->hitboxes[0])->top)) >= (((rocketY)) + (&sprRocket->hitboxes[1])->top))))) {
        return 1;
    } else {
        return 0;
    }
}

bool32 sub_804F010(Sprite *s, s32 x, s32 y, u8 hbIndex)
{
    s32 qSonicX = 0, qSonicY = 0;
    Sprite *sprSonic = SuperSonicGetSprite();

    SuperSonicGetPos(&qSonicX, &qSonicY);





    if (!(!(gPlayer.moveState & 0x00000080)) || !((s->hitboxes[hbIndex]).index != -1) || !((sprSonic->hitboxes[0]).index != -1)) {
        return 0;
    }

    if ((((((x) + s->hitboxes[hbIndex].left) <= ((((int)((qSonicX) >> 8))) + sprSonic->hitboxes[0].left) && ((((x)) + (s->hitboxes[hbIndex]).left) + ((s->hitboxes[hbIndex]).right - (s->hitboxes[hbIndex]).left)) >= ((((int)((qSonicX) >> 8))) + sprSonic->hitboxes[0].left)) || (((x) + s->hitboxes[hbIndex].left) >= ((((int)((qSonicX) >> 8))) + sprSonic->hitboxes[0].left) && ((((((int)((qSonicX) >> 8)))) + (sprSonic->hitboxes[0]).left) + ((sprSonic->hitboxes[0]).right - (sprSonic->hitboxes[0]).left)) >= ((x) + s->hitboxes[hbIndex].left))) && (((((y)) + s->hitboxes[hbIndex].top) <= (((((int)((qSonicY) >> 8)))) + sprSonic->hitboxes[0].top) && ((((y)) + s->hitboxes[hbIndex].top) + ((s->hitboxes[hbIndex]).bottom - (s->hitboxes[hbIndex]).top)) >= (((((int)((qSonicY) >> 8)))) + sprSonic->hitboxes[0].top)) || ((((y)) + s->hitboxes[hbIndex].top) >= (((((int)((qSonicY) >> 8)))) + sprSonic->hitboxes[0].top) && ((((((int)((qSonicY) >> 8)))) + sprSonic->hitboxes[0].top) + ((sprSonic->hitboxes[0]).bottom - (sprSonic->hitboxes[0]).top)) >= (((y)) + s->hitboxes[hbIndex].top))))) {
        return 1;
    } else {
        return 0;
    }
}


void sub_804F108(TA53_unk558 *unk558)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    Sprite *s = &unk558->s;
    s32 qX, qY;
    s32 qSonicX, qSonicY;
    u16 index;

    if (boss->lives > 0) {
        qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        index = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0] + ((s32)((3)*256))) & (1024 - 1);
        qX += (((gSineTable[(index) + 256]) * 9) >> 6);
        qY += (((gSineTable[(index)]) * 9) >> 6);

        index = (index + ((s32)((3)*256))) & (1024 - 1);
        qX += (((gSineTable[(index) + 256]) * 38) >> 6);
        qY += (((gSineTable[(index)]) * 38) >> 6);

        s->x = ((int)((qX) >> 8)) - gCamera.x - 6;
        s->y = ((int)((qY) >> 8)) - gCamera.y + 5;

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_804F1EC(struct TA53_unk558 *unk558)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    TA53_unk98 *unk98 = &boss->unk98;
    Sprite *s = &unk558->s;

    if (boss->lives > 0) {
        s32 qX, qY;
        s32 qSonicX, qSonicY;
        s32 r7;
        u16 index;

        if (--unk558->unk6 == 0) {
            unk558->callback = sub_8050DC8;
            m4aSongNumStop(270);
        }

        r7 = unk558->unk8 + 2;
        if (r7 > 464) {
            r7 = 464;
        }
        unk558->unk8 = r7;

        qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        index = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0] + ((s32)((3)*256))) & (1024 - 1);
        qX += (((gSineTable[(index) + 256]) * 9) >> 6);
        qY += (((gSineTable[(index)]) * 9) >> 6);

        index = (index + ((s32)((3)*256))) & (1024 - 1);
        qX += (((gSineTable[(index) + 256]) * 38) >> 6);
        qY += (((gSineTable[(index)]) * 38) >> 6);

        SuperSonicGetPos(&qSonicX, &qSonicY);

        qSonicX = sub_8085698(qSonicX, qX + ((s32)((10)*256)), r7, 10, 2);
        qSonicY = sub_8085698(qSonicY, qY, r7 + ((s32)((1)*256)), 10, 2);

        SuperSonicSetPos(qSonicX, qSonicY);

        if (sub_804F010(s, ((int)((qX) >> 8)), ((int)((qY) >> 8)), 0) == 1) {
            sub_802C798();

            unk558->callback = sub_804F47C;
            unk558->unk6 = 120;
            unk558->unk4 = 10;

            s->graphics.anim = 715;
            s->variant = 0;
            s->prevVariant = -1;
            s->frameFlags = ((2) << (12));
        } else {
            u8 i;
            m4aSongNumStartOrContinue(270);

            s->x = ((int)((qX) >> 8)) - gCamera.x;
            s->y = ((int)((qY) >> 8)) - gCamera.y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            for (i = 0; i < 3; i++) {
                TA53_unkA8 *unkA8 = &unk98->unk10[i];

                if (unkA8->unk4 & 1) {
                    s16 res = (sub_8004418(((int)((unkA8->pos14.y - qY) >> 8)), ((int)((unkA8->pos14.x - qX) >> 8))));
                    if ((res >= 301 && res <= 723) || (unkA8->unk6 > 0)) {
                        r7 = unkA8->unk1C + 0xA;
                        unkA8->unk6 = 1;
                        unkA8->unk1C = r7;

                        unkA8->pos14.x = sub_8085698(unkA8->pos14.x, +((s32)((22)*256)) + qX, (r7), 10, 2);

                        unkA8->pos14.y = sub_8085698(unkA8->pos14.y, qY, (r7 + 160), 10, 2);

                        unkA8->unkE = ({((100) != 0) ? ((s32)(unkA8->unkE * 90) / (s32)(100)) : 0;});
                        unkA8->unk10 = ({((100) != 0) ? ((s32)(unkA8->unk10 * 90) / (s32)(100)) : 0;});
                    }

                    if (sub_804EF68(&unkA8->spr20, ((int)((unkA8->pos14.x) >> 8)), ((int)((unkA8->pos14.y) >> 8)), s, ((int)((qX) >> 8)) + 16, ((int)((qY) >> 8))) == 1) {
                        unkA8->unk4 = 0;
                    }
                }
            }
        }
    }
}

void sub_804F47C(struct TA53_unk558 *unk558)
{
    TA53Boss *boss;
    TA53_unk1C *unk1C;
    TA53_unk48 *unk48;
    Sprite *s;
    s32 qX, qY;
    u16 index;

    if (--unk558->unk6 == 0) {
        unk558->callback = sub_8050DC8;
    }

    boss = (void *)((gCurTask)->data);
    unk1C = &boss->unk1C;
    unk48 = &boss->unk48;
    s = &unk558->s;

    if (boss->lives != 0) {
        qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        index = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0] + ((s32)((3)*256))) & (1024 - 1);
        qX += (((gSineTable[(index) + 256]) * 9) >> 6);
        qY += (((gSineTable[(index)]) * 9) >> 6);

        index = (index + ((s32)((3)*256))) & (1024 - 1);
        qX += (((gSineTable[(index) + 256]) * 38) >> 6);
        qY += (((gSineTable[(index)]) * 38) >> 6);

        s->x = ((int)((qX) >> 8)) - gCamera.x;
        s->y = ((int)((qY) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (({((10) != 0) ? ((s32)(unk558->unk6) % (s32)(10)) : 0;}) == 0) {
            if (unk558->unk6 <= 100) {
                if (unk558->unk4 > 0) {
                    unk558->unk4--;

                    m4aSongNumStart(271);

                    if (gRingCount > 0) {
                        gRingCount--;

                        sub_804DEEC(qX - ((s32)((8)*256)), qY);
                    }
                }
            }
        }
    }
}

void sub_804F5BC(struct TA53_unk654 *unk654)
{
    Sprite *s = &unk654->spr128;
    s32 qX;
    u8 i = 0;
    bool32 animUpdated = 0;

    for (; i < (sizeof(unk654->unk2E) / sizeof((unk654->unk2E)[0])); i++) {
        if (unk654->unkE[i] > 0) {
            if (--unk654->unk1E[i] == 0) {
                unk654->unkE[i] = 0;
            }

            s->x = ((int)((unk654->qPos70[i].x) >> 8)) - gCamera.x;
            s->y = ((int)((unk654->qPos70[i].y) >> 8)) - gCamera.y;

            if (!animUpdated) {
                animUpdated = 1;
                UpdateSpriteAnimation(s);
            }

            DisplaySprite(s);

            qX = unk654->qPos70[i].x + ((s32)((5)*256));
            unk654->qPos70[i].x = qX;

            unk654->qPos70[i].x = qX + unk654->unk2E[i][0];
            unk654->qPos70[i].y += unk654->unk2E[i][1];

            if (!(SuperSonicGetFlags() & (0x200 | 0x8))) {
                if (sub_804F010(s, ((int)((unk654->qPos70[i].x) >> 8)), ((int)((unk654->qPos70[i].y) >> 8)), 0) == 1) {
                    sub_802BA8C();
                }
            }
        }
    }
}

void sub_804F6AC(u32 qX, u32 qY, s16 param2, u32 sinIndex_)
{
    struct TA53Boss *s = (void *)((gCurTask)->data);
    struct TA53_unk654 *unk654 = &s->unk654;
    u8 i;

    u16 sinIndex = ((sinIndex_ << 22) >> 22);
    for (i = 0; i < (sizeof(unk654->unkE) / sizeof((unk654->unkE)[0])); i++) {
        if (unk654->unkE[i] == 0) {
            unk654->unkE[i] = 1;
            unk654->unk1E[i] = 255;
            unk654->unk2E[i][0] = (((gSineTable[(sinIndex) + 256]) * param2) >> 14);
            unk654->unk2E[i][1] = (((gSineTable[(sinIndex)]) * param2) >> 14);
            unk654->qPos70[i].x = qX;
            unk654->qPos70[i].y = qY;

            m4aSongNumStart(297);
            break;
        }
    }
}

void sub_804F768(u32 qX, u32 qY, s16 param2, u32 sinIndex_)
{
    struct TA53Boss *s = (void *)((gCurTask)->data);
    struct TA53_unk654 *unk654 = &s->unk654;
    u8 i;

    u16 sinIndex;
    for (i = 0; i < (sizeof(unk654->unkE) / sizeof((unk654->unkE)[0])); i++) {
        if (unk654->unkE[i] == 0) {
            if (i & 0x1) {
                sinIndex = unk654->unkC + (i * 10);
            } else {
                sinIndex = unk654->unkC - (i * 10);
            }
            sinIndex &= (1024 - 1);

            unk654->unkE[i] = 1;
            unk654->unk1E[i] = 255;
            unk654->unk2E[i][0] = (((gSineTable[(sinIndex) + 256]) * param2) >> 14);
            unk654->unk2E[i][1] = (((gSineTable[(sinIndex)]) * param2) >> 14);
            unk654->qPos70[i].x = qX;
            unk654->qPos70[i].y = qY;

            m4aSongNumStart(243);
            break;
        }
    }
}

void sub_804F850(u32 qX, u32 qY, s16 param2, u32 sinIndex_)
{
    u8 array[0x8];
    u8 i;

    u16 sinIndex = sinIndex_;
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk654 *unk654 = &boss->unk654;
    u8 *pArray = array;
    bool32 r5 = 0;
    u8 r3 = 0;
    u8 r2;




    u32 r0;


    for (r2 = 0; r2 < 16; r2++) {
        if (unk654->unkE[r2] == 0) {
            *pArray++ = r2;

            r3++;

            if (r3 == (sizeof(array) / sizeof((array)[0]))) {
                break;
            }
        }
    }


    if (r3 == (sizeof(array) / sizeof((array)[0]))) {
        r5 = 1;
    }


    if (!r5) {
        return;
    }

    if (array[(sizeof(array) / sizeof((array)[0])) - 1] < 8) {
        sinIndex += 0x3C;
    } else {
        sinIndex -= 0x3C;
    }
    sinIndex &= (1024 - 1);


    for (i = 0; i < 8; i++) {

        u16 arrIndex = array[i];
        unk654->unkE[arrIndex] = 1;
        unk654->unk1E[arrIndex] = 255;
        unk654->unk2E[arrIndex][0] = ((gSineTable[(sinIndex) + 256]) * 3) >> 6;

        r0 = sinIndex;
        unk654->unk2E[arrIndex][1] = ((gSineTable[(r0)]) * 3) >> 6;

        unk654->unk2E[arrIndex][0] += ((gSineTable[(i * 128) + 256]) * 3) >> 8;
        unk654->unk2E[arrIndex][1] += ((gSineTable[(i * 128)]) * 3) >> 8;

        unk654->qPos70[arrIndex].x = qX;
        unk654->qPos70[arrIndex].y = qY;
    }

    m4aSongNumStart(258);
}

void sub_804F9BC(u32 qX, u32 qY, __attribute__((unused)) s16 param2, __attribute__((unused)) u32 sinIndex_)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk654 *unk654 = &boss->unk654;
    u16 sinIndex;
    u8 i;

    for (i = 0; i < (sizeof(unk654->unkE) / sizeof((unk654->unkE)[0])); i++) {
        if (unk654->unkE[i] == 0) {
            if (i & 0x1) {
                sinIndex = unk654->unkC + (i * 6);
            } else {
                sinIndex = unk654->unkC - (i * 6);
            }

            sinIndex &= (1024 - 1);

            unk654->unkE[i] = 1;
            unk654->unk1E[i] = 255;
            unk654->unk2E[i][0] = ((gSineTable[(sinIndex) + 256]) * 9) >> 7;
            unk654->unk2E[i][1] = ((gSineTable[(sinIndex)]) * 9) >> 7;

            unk654->qPos70[i].x = qX;
            unk654->qPos70[i].y = qY;
            m4aSongNumStart(277);
            break;
        }
    }
}

void sub_804FAA4(u32 qX, u32 qY, s16 param2, u32 sinIndex_)
{
    u8 array[8];
    u8 i;

    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk654 *unk654 = &boss->unk654;
    u16 sinIndex = ((sinIndex_ << 22) >> 22);
    u8 *pArray = array;
    bool32 r5 = 0;
    u8 r3 = 0;
    u8 r2;

    for (r2 = 0; r2 < 16; r2++) {
        if (unk654->unkE[r2] == 0) {
            *pArray++ = r2;

            r3++;

            if (r3 == (sizeof(array) / sizeof((array)[0]))) {
                break;
            }
        }
    }


    if (r3 == (sizeof(array) / sizeof((array)[0]))) {
        r5 = 1;
    }


    if (!r5) {
        return;
    }

    if (array[(sizeof(array) / sizeof((array)[0])) - 1] < 8) {
        sinIndex += 0x46;
    } else {
        sinIndex -= 0x46;
    }
    sinIndex = ({ s16 clamped = (sinIndex) & (1024 - 1); clamped; });


    for (i = 0; i < 8; i++) {

        u16 arrIndex = array[i];
        u16 newSinIndex, index2;
        unk654->unkE[arrIndex] = 1;
        unk654->unk1E[arrIndex] = 255;

        if (i < 4) {
            newSinIndex = i * 16 + sinIndex;
            index2 = i * 48;
        } else {
            newSinIndex = sinIndex - (i - 4) * 16;
            index2 = (i - 4) * 48;
        }

        newSinIndex = ({ s16 clamped = (newSinIndex) & (1024 - 1); clamped; });
        unk654->unk2E[arrIndex][0] = (((gSineTable[(newSinIndex) + 256])) * (0x280 - index2)) >> 0xE;
        unk654->unk2E[arrIndex][1] = (((gSineTable[(newSinIndex)])) * (0x280 - index2)) >> 0xE;

        unk654->qPos70[arrIndex].x = qX;
        unk654->qPos70[arrIndex].y = qY;
    }

    m4aSongNumStart(258);
}

void sub_804FC10(u32 qX, u32 qY, s16 param2, u32 sinIndex_)
{
    u8 array[8];
    u16 sinIndex = sinIndex_;

    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk654 *unk654 = &boss->unk654;

    u8 r6;

    for (r6 = 0; r6 < 2; r6++) {
        u16 idx;
        u8 *pArray = array;
        bool32 r5 = 0;
        u8 r3 = 0;
        u8 r2, i;
        for (r2 = 0; r2 < 16; r2++) {
            if (unk654->unkE[r2] == 0) {
                *pArray++ = r2;

                r3++;

                if (r3 == (sizeof(array) / sizeof((array)[0]))) {
                    break;
                }
            }
        }

        if (r3 == (sizeof(array) / sizeof((array)[0]))) {
            r5 = 1;
        }

        if (!r5) {
            return;
        }

        if (array[(sizeof(array) / sizeof((array)[0])) - 1] < 8) {
            idx = sinIndex + 40;
        } else {
            idx = sinIndex - 40;
        }
        idx = ({ s16 clamped = (idx) & (1024 - 1); clamped; });

        for (i = 0; i < 8; i++) {
            s32 val;
            u16 arrIndex = array[i];

            unk654->unkE[arrIndex] = 1;
            unk654->unk1E[arrIndex] = 255;

            val = i * 64;

            unk654->unk2E[arrIndex][0] = (((gSineTable[(idx) + 256]) * (1024 - val))) >> 14;
            unk654->unk2E[arrIndex][1] = (((gSineTable[(idx)]) * (1024 - val))) >> 14;

            unk654->qPos70[arrIndex].x = qX;
            unk654->qPos70[arrIndex].y = qY;
        }
    }

    m4aSongNumStart(156);
}

void sub_804FD58(u32 qX, u32 qY, __attribute__((unused)) s16 param2, __attribute__((unused)) u32 sinIndex_)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk654 *unk654 = &boss->unk654;
    u8 i;

    for (i = 0; i < 16; i++) {
        if (unk654->unkE[i] == 0) {
            u16 index = ((gUnknown_080D8EE0[i] * 32) - 0x40) + unk654->unkC;
            index %= 1024;

            unk654->unkE[i] = 1;
            unk654->unk1E[i] = 255;

            unk654->unk2E[i][0] = (((gSineTable[(index) + 256]) * 3) >> 6);
            unk654->unk2E[i][1] = (((gSineTable[(index)]) * 3) >> 6);

            unk654->qPos70[i].x = qX;
            unk654->qPos70[i].y = qY;

            m4aSongNumStart(287);
            break;
        }
    }
}

void sub_804FE24(struct TA53_unk654 *unk654)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    Sprite *s;
    u8 funcId;

    if (--unk654->unk8 == 0) {
        unk654->callback = sub_804FEFC;
        unk654->unk8 = 101;

        funcId = ({(((sizeof(gUnknown_080D89AC) / sizeof((gUnknown_080D89AC)[0]))) != 0) ? ((s32)((u8)({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; })) % (s32)((sizeof(gUnknown_080D89AC) / sizeof((gUnknown_080D89AC)[0])))) : 0;});
        unk654->func4 = gUnknown_080D89AC[funcId];

        s = &unk654->spr128;
        s->graphics.anim = gUnknown_080D89C8[funcId].anim;
        s->variant = gUnknown_080D89C8[funcId].variant;
        s->palId = gUnknown_080D89C8[funcId].palId;
        s->prevVariant = -1;
    }

    s = &unk654->sprF0;
    s->x = (((int)((unk1C->qPos.x) >> 8)) + unk1C->unk20) - gCamera.x;
    s->y = (((int)((unk1C->qPos.y) >> 8)) + unk1C->unk22) - gCamera.y;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    sub_804F5BC(unk654);
}

void sub_804FEFC(struct TA53_unk654 *unk654)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    s32 qSonicX, qSonicY;
    s32 qX, qY;

    if (--unk654->unk8 == 0) {
        unk654->callback = sub_804FF9C;
        unk654->unk8 = 280;
    }

    if (({((6) != 0) ? ((s32)(unk654->unk8) % (s32)(6)) : 0;}) == 0) {
        SuperSonicGetPos(&qSonicX, &qSonicY);

        qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        unk654->unkA = sub_8004418(((int)((qSonicY - qY) >> 8)), ((int)((qSonicX - qX) >> 8)));

        unk654->func4(qX, qY, ((s32)((5)*256)) - (unk654->unk8 * 10), unk654->unkA);
    }

    sub_804F5BC(unk654);
}

void sub_804FF9C(struct TA53_unk654 *unk654)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    s32 qSonicX, qSonicY;
    s32 qX, qY;
    Sprite *s;

    if (--unk654->unk8 == 0) {
        s = &unk654->sprF0;
        s->graphics.anim = 717;
        s->variant = 0;
        s->prevVariant = -1;

        SuperSonicGetPos(&qSonicX, &qSonicY);

        qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        unk654->unkC = sub_8004418(((int)((qSonicY - qY) >> 8)), ((int)((qSonicX - qX) >> 8)));

        unk654->callback = sub_804FE24;
        unk654->unk8 = 16;
    }

    sub_804F5BC(unk654);
}

bool8 sub_8050030(struct TA53_unk48 *unk48)
{

    s16 **ip = unk48->unk34;
    s16 *r4 = unk48->unk4;
    u16 *unk3A = unk48->unk3A;
    u16 sb = unk48->unk2E;

    bool8 result = 0;

    u32 r7;
    u8 r3, i;



    u32 r2;


    r2 = (unk48->unk30 >> 12);
    r3 = r2 + 1;

    if (r3 > 7) {
        result = 1;
    }
# 2478 "src/game/bosses/boss_9.c"
    r3 &= 7;
    r7 = (unk48->unk30 & 4095);
    r2 &= 7;


    if (r2 != (((unk48->unk30 - unk48->unk2C) >> 12) & 7)) {
        for (i = 0; i < 5; i++) {
            r4[0] = r4[1];
            r4++;
            r4[0] = r4[1];
            r4++;
            r4[0] = r4[1];
            r4++;
            r4[0] = (*ip++)[r3];
            r4++;
        }

        r4 = unk48->unk4;
    }

    for (i = 0; i < 5; i++) {
        *unk3A++ = sub_80859F4(&r4[i * 4], r7);
    }

    unk48->unk2C = ((int)(((unk48->unk2C - sb) * 250) >> 8)) + sb;
    unk48->unk30 = (unk48->unk30 + unk48->unk2C) & 0x7FFF;

    return result;
}

bool8 sub_8050104(struct TA53_unk1C *unk1C)
{
    s16 **ip = unk1C->unk1C;
    s16 *r4 = unk1C->unk4;
    s16 *unk3A = &unk1C->unk20;
    u16 sb = unk1C->unk16;
    bool8 result = 0;

    u16 r7;
    u8 r3, i;




    u32 r2;


    r2 = unk1C->unk18 >> 12;
    r3 = r2 + 1;

    if (r3 > 7) {
        result = 1;
    }
# 2547 "src/game/bosses/boss_9.c"
    r3 &= 7;
    r7 = (unk1C->unk18 & 4095);
    r2 &= 7;


    if (r2 != (((u32)(unk1C->unk18 - unk1C->unk14) >> 12) & 7)) {
        for (i = 0; i < 2; i++) {
            r4[0] = r4[1];
            r4++;
            r4[0] = r4[1];
            r4++;
            r4[0] = r4[1];
            r4++;
            r4[0] = (*ip++)[r3];
            r4++;
        }

        r4 = unk1C->unk4;
    }

    for (i = 0; i < 2; i++) {
        *unk3A++ = sub_8085968(&r4[i * 4], r7);
    }

    unk1C->unk14 = ((int)(((unk1C->unk14 - sb) * 250) >> 8)) + sb;
    unk1C->unk18 = (unk1C->unk18 + unk1C->unk14) & 0x7FFF;

    return result;
}

void sub_80501D4(TA53Boss *boss)
{
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    Sprite *s;
    SpriteTransform *transform;
    CapsuleParts *capsule;
    s32 qX, qY;
    s32 screenX, screenY;
    s16 blend;
    u16 r7;
    u32 sinIndex;
    u8 i;

    if (unk48->unk4C == 0) {
        gStageFlags |= 0x0020;

        if (boss->unkF == 0) {
            s = &boss->spr7B4;
            VramFree(s->graphics.dest);

            s->graphics.dest = VramMalloc(42);
            s->graphics.anim = 791;
            s->variant = 0;
            s->prevVariant = -1;

            gDispCnt &= ~0x8000;

            gWinRegs[5] = 0;

            gBldRegs.bldCnt = 0;
            gBldRegs.bldAlpha = 0;

            boss->unkF = 1;
        } else if (boss->lives != 0) {
            gStageFlags &= ~0x0020;
        }
        boss->unk10 &= ~0x1;
    } else {
        gStageFlags |= 0x0020;
    }

    if (boss->unk10 & 0x1) {
        gDispCnt &= ~0x0400;
    } else {
        gDispCnt |= 0x0400;
    }

    if (gStageFlags & 0x0100) {
        return;
    }

    qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

    r7 = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0]) & (1024 - 1);

    qX += (((gSineTable[(r7) + 256]) * gUnknown_080D89A5[0]) >> 6);
    qY += (((gSineTable[(r7)]) * gUnknown_080D89A5[0]) >> 6);

    screenX = ((int)((qX) >> 8)) - gCamera.x;
    screenY = ((int)((qY) >> 8)) - gCamera.y;

    sub_8003EE4(r7, 0x0100, 0x0100, 0x0030, 0x0033, screenX, screenY, &gBgAffineRegs[0]);

    boss->spr7B4.frameFlags = 0;

    for (i = 0; i < (sizeof(boss->capsule) / sizeof((boss->capsule)[0])); i++) {
        boss->capsule[i].s.frameFlags = 0;
    }

    blend = ((gSineTable[((gStageTime * 2) & 0x1FF)]) >> 6);
    sub_80508C4(boss, blend, unk48->unk4C);

    if (boss->unk10 & 0x1) {
        s = &boss->spr7B4;
        s->x = screenX;
        s->y = screenY;
        s->frameFlags |= ((2) << (12));
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    r7 += 0x8C;
    qX += ({
        s32 val = (gSineTable[((r7 - ((s32)((1)*256))) & (1024 - 1)) + 256]);
        val >> 2;
    });
    qY += ({
        s32 val = (gSineTable[((r7 - ((s32)((1)*256))) & (1024 - 1))]);
        val >> 2;
    });

    for (i = 0; i < 3; i++) {
        capsule = &boss->capsule[i];
        s = &capsule->s;
        transform = &capsule->transform;

        r7 = ({
            s32 val = (r7 + unk48->unk3A[i + 1]);
            val &(1024 - 1);
        });

        qX += ((gSineTable[(r7) + 256]) * gUnknown_080D89A5[i + 1]) >> 6;
        qY += ((gSineTable[(r7)]) * gUnknown_080D89A5[i + 1]) >> 6;

        s->x = ((int)((qX) >> 8)) - gCamera.x;
        s->y = ((int)((qY) >> 8)) - gCamera.y;

        s->frameFlags
            |= (((2) << (12)) | ((1) << (5)) | ((1) << (6)) | gOamMatrixIndex++);

        transform->rotation = r7;
        transform->qScaleX = ((s32)((1)*256));
        transform->qScaleY = ((s32)((1)*256));
        transform->x = s->x;
        transform->y = s->y;
        UpdateSpriteAnimation(s);
        TransformSprite(s, transform);
        DisplaySprite(s);
    }

    qX += ((gSineTable[(r7) + 256]) * gUnknown_080D89A5[4]) >> 6;
    qY += ((gSineTable[(r7)]) * gUnknown_080D89A5[4]) >> 6;

    s = &boss->capsule[3].s;
    transform = &boss->capsule[3].transform;
    sinIndex = ((unk48->unk42 + r7 + unk48->unk38) & (1024 - 1));

    s->x = ((int)((qX) >> 8)) - gCamera.x;
    s->y = ((int)((qY) >> 8)) - gCamera.y;

    s->frameFlags
        |= (((2) << (12)) | ((1) << (5)) | ((1) << (6)) | gOamMatrixIndex++);

    transform->rotation = sinIndex;
    transform->qScaleX = ((s32)((1)*256));
    transform->qScaleY = ((s32)((1)*256));
    transform->x = s->x;
    transform->y = s->y;
    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);
}

void sub_80505B8(TA53Boss *boss)
{
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk48 *unk48 = &boss->unk48;
    Sprite *s;
    SpriteTransform *transform;
    CapsuleParts *capsule;
    s32 qX, qY;
    s32 screenX, screenY;
    s16 blend;
    u16 r7;
    u32 sinIndex;
    u8 i;

    if (unk48->unk4C == 0) {
        if (boss->spr7B4.graphics.dest != 
# 2737 "src/game/bosses/boss_9.c" 3 4
                                         ((void *)0)
# 2737 "src/game/bosses/boss_9.c"
                                             ) {
            VramFree(boss->spr7B4.graphics.dest);
            boss->spr7B4.graphics.dest = 
# 2739 "src/game/bosses/boss_9.c" 3 4
                                        ((void *)0)
# 2739 "src/game/bosses/boss_9.c"
                                            ;

            gDispCnt &= ~0x8000;

            gWinRegs[5] = 0;

            gBldRegs.bldCnt = 0;
            gBldRegs.bldAlpha = 0;
        }

        boss->unk10 &= ~0x1;
    }

    qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
    qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

    r7 = (((int)((unk48->qPos44.x) >> 8)) + unk48->unk3A[0]) & (1024 - 1);

    qX += (((gSineTable[(r7) + 256]) * gUnknown_080D89A5[0]) >> 6);
    qY += (((gSineTable[(r7)]) * gUnknown_080D89A5[0]) >> 6);

    screenX = ((int)((qX) >> 8)) - gCamera.x;
    screenY = ((int)((qY) >> 8)) - gCamera.y;

    sub_8003EE4(r7, 0x0100, 0x0100, 0x0030, 0x0033, screenX, screenY, &gBgAffineRegs[0]);

    boss->spr7B4.frameFlags = 0;

    for (i = 0; i < (sizeof(boss->capsule) / sizeof((boss->capsule)[0])); i++) {
        boss->capsule[i].s.frameFlags = 0;
    }

    sub_80508C4(boss, 255, unk48->unk4C);

    if (boss->unk10 & 0x1) {
        s = &boss->spr7B4;
        s->x = screenX;
        s->y = screenY;
        s->frameFlags |= ((2) << (12));
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    r7 += 0x8C;
    qX += ({
        s32 val = (gSineTable[((r7 - ((s32)((1)*256))) & (1024 - 1)) + 256]);
        val >> 2;
    });
    qY += ({
        s32 val = (gSineTable[((r7 - ((s32)((1)*256))) & (1024 - 1))]);
        val >> 2;
    });

    for (i = 0; i < 3; i++) {
        capsule = &boss->capsule[i];
        s = &capsule->s;
        transform = &capsule->transform;

        r7 = ({
            s32 val = (r7 + unk48->unk3A[i + 1]);
            val &(1024 - 1);
        });

        qX += ((gSineTable[(r7) + 256]) * gUnknown_080D89A5[i + 1]) >> 6;
        qY += ((gSineTable[(r7)]) * gUnknown_080D89A5[i + 1]) >> 6;

        s->x = ((int)((qX) >> 8)) - gCamera.x;
        s->y = ((int)((qY) >> 8)) - gCamera.y;

        s->frameFlags
            |= (((1) << (12)) | ((1) << (5)) | ((1) << (6)) | gOamMatrixIndex++);

        transform->rotation = r7;
        transform->qScaleX = ((s32)((1)*256));
        transform->qScaleY = ((s32)((1)*256));
        transform->x = s->x;
        transform->y = s->y;
        UpdateSpriteAnimation(s);
        TransformSprite(s, transform);
        DisplaySprite(s);
    }

    qX += ((gSineTable[(r7) + 256]) * gUnknown_080D89A5[4]) >> 6;
    qY += ((gSineTable[(r7)]) * gUnknown_080D89A5[4]) >> 6;

    s = &boss->capsule[3].s;
    transform = &boss->capsule[3].transform;
    sinIndex = ((unk48->unk42 + r7 + unk48->unk38) & (1024 - 1));

    s->x = ((int)((qX) >> 8)) - gCamera.x;
    s->y = ((int)((qY) >> 8)) - gCamera.y;

    s->frameFlags
        |= (((1) << (12)) | ((1) << (5)) | ((1) << (6)) | (u8)gOamMatrixIndex++);

    transform->rotation = sinIndex;
    transform->qScaleX = ((s32)((1)*256));
    transform->qScaleY = ((s32)((1)*256));
    transform->x = s->x;
    transform->y = s->y;
    UpdateSpriteAnimation(s);
    TransformSprite(s, transform);
    DisplaySprite(s);
}

void sub_80508C4(TA53Boss *boss, u16 blend, bool8 param2)
{
    u32 bldTarget1, bldTarget2;
    u8 i;
    Sprite *s;

    if (param2) {
        gDispCnt |= 0x8000;
        gWinRegs[5] = (((((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11)) | (1 << 12) | (1 << 13)) & ~(1 << 11)) | ((((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)) & ~((1 << 1) | (1 << 3))));
        gBldRegs.bldCnt
            = (((1 << 8) | (1 << 9) | (1 << 12)) | (1 << 6) | ((1 << 1) | (1 << 2)));

        bldTarget2 = (((blend * 3) >> 8) + 10) % 16u;
        bldTarget1 = (((blend * 5) >> 8) + 8) % 16u;
        gBldRegs.bldAlpha = (((bldTarget2) << 8) | (bldTarget1));
        gBldRegs.bldY = (((bldTarget2) << 8) | (bldTarget1));

        s = &boss->spr7B4;
        s->frameFlags |= 0x100;

        for (i = 0; i < (sizeof(boss->capsule) / sizeof((boss->capsule)[0])); i++) {
            s = &boss->capsule[i].s;
            s->frameFlags |= ((2) << (7));
        }
    }
}

void sub_8050958(TA53Boss *boss)
{
    u8 i;

    if (boss->unkD > 0) {
        if (--boss->unkD == 0) {
            for (i = 0; i < 16; i++) {
                gObjPalette[(8)*16u + (i)] = (gUnknown_080D8EF0[1][i]);;
                gBgPalette[(0)*16u + (i)] = (gUnknown_080D8EF0[1][i]);;
            }
        } else {

            u16 r6 = (gStageTime >> 1) % 16u;

            if (boss->lives < 4) {
                for (i = 0; i < 16u; i++) {
                    gObjPalette[(8)*16u + (((i + r6) % 16u))] = (gUnknown_080D8EF0[0][i] >> 5);;
                    gBgPalette[(0)*16u + (((i + r6) % 16u))] = (gUnknown_080D8EF0[0][i] >> 5);;
                }
            } else {
                for (i = 0; i < 16u; i++) {
                    gObjPalette[(8)*16u + (((i + r6) % 16u))] = (((gUnknown_080D8EF0[0][i] << 5) | (gUnknown_080D8EF0[0][i] >> 5)) | gUnknown_080D8EF0[0][i]);
                                                                                                                                      ;
                    gBgPalette[(0)*16u + (((i + r6) % 16u))] = (((gUnknown_080D8EF0[0][i] << 5) | (gUnknown_080D8EF0[0][i] >> 5)) | gUnknown_080D8EF0[0][i]);
                                                                                                                                     ;
                }
            }
        }


        gFlags |= 0x2;
        gFlags |= 0x1;
    }
}

void TaskDestructor_TrueArea53BossGfx(struct Task *t)
{
    TA53Boss *boss = (void *)((t)->data);
    u8 i;
    Sprite *s;
    void **vram;

    if (boss->spr7B4.graphics.dest) {
        VramFree(boss->spr7B4.graphics.dest);
    }

    for (i = 0; i < (sizeof(boss->capsule) / sizeof((boss->capsule)[0])); i++) {
        CapsuleParts *capsule = &boss->capsule[i];

        if (capsule->s.graphics.dest)

        {
            VramFree(boss->capsule[i].s.graphics.dest);
        }
    }

    for (i = 0; i < (sizeof(boss->unk98.unk10) / sizeof((boss->unk98.unk10)[0])); i++) {
        VramFree(boss->unk98.unk10[i].spr20.graphics.dest);
    }

    vram = &boss->unk98.unk10->exhaust.s[0].graphics.dest;
    VramFree(*vram);

    VramFree(boss->unk558.s.graphics.dest);
    VramFree(boss->unk594.spr90.graphics.dest);
    VramFree(boss->unk654.spr128.graphics.dest);
    VramFree(boss->unk654.sprF0.graphics.dest);

    gActiveBossTask = 
# 2939 "src/game/bosses/boss_9.c" 3 4
                     ((void *)0)
# 2939 "src/game/bosses/boss_9.c"
                         ;
}

void sub_8050B2C(s32 *outX, s32 *outY)
{
    if (gActiveBossTask == 
# 2944 "src/game/bosses/boss_9.c" 3 4
                          ((void *)0)
# 2944 "src/game/bosses/boss_9.c"
                              ) {
        *outX = 0;
        *outY = 0;
    } else {
        TA53Boss *boss = (void *)((gActiveBossTask)->data);
        TA53_unk1C *unk1C = &boss->unk1C;
        s32 qX, qY;

        qX = unk1C->qPos.x + ((s32)((unk1C->unk20)*256));
        qY = unk1C->qPos.y + ((s32)((unk1C->unk22)*256));

        qX += (((gSineTable[(((s32)((3)*256))) + 256]) * 9) >> 6);
        qY += (((gSineTable[(((s32)((3)*256)))]) * 9) >> 6);

        qX += (((gSineTable[(((s32)((2)*256))) + 256]) * 38) >> 6);
        qY += (((gSineTable[(((s32)((2)*256)))]) * 38) >> 6);

        *outX = qX;
        *outY = qY;
    }
}

bool32 ExtraBossIsDead(void)
{
    bool32 bossIsDead = 0;

    if (gActiveBossTask != 
# 2970 "src/game/bosses/boss_9.c" 3 4
                          ((void *)0)
# 2970 "src/game/bosses/boss_9.c"
                              ) {
        TA53Boss *boss = (void *)((gActiveBossTask)->data);

        if (boss->lives == 0) {
            bossIsDead = 1;
        }
    }

    return bossIsDead;
}

void sub_8050BD8(struct TA53_unk1C *unk1C) { sub_8050104(unk1C); }
void sub_8050BE4(struct TA53_unk1C *unk1C) { sub_8050104(unk1C); }
void sub_8050BF0(struct TA53_unk1C *unk1C) { sub_8050104(unk1C); }

void sub_8050BFC(struct TA53_unk48 *unk48)
{
    if (sub_8050030(unk48)) {
        unk48->unk30 &= 0xFFF;
        unk48->callback = gUnknown_080D8D6C[3].callback;
        unk48->unk34 = gUnknown_080D8D6C[3].data;
        unk48->unk2E = gUnknown_080D8D6C[3].unk8;
    }

    if (unk48->unk30 >= 0x2000) {
        m4aSongNumStartOrContinue(272);
        unk48->qPos44.y -= 0x57;
        unk48->qPos44.x += unk48->qPos44.y;
    }
}

void sub_8050C50(struct TA53_unk48 *unk48)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;

    sub_8050030(unk48);

    unk48->qPos44.x += unk48->qPos44.y;
    unk48->qPos44.y += 0x57;

    if (unk48->qPos44.y == 0) {

        unk48->unk30 &= 0xFFF;
        unk48->unk30 = 0;

        unk48->callback = gUnknown_080D8D6C[0].callback;
        unk48->unk34 = gUnknown_080D8D6C[0].data;
        unk48->unk2E = gUnknown_080D8D6C[0].unk8;
        unk1C->unk18 &= 0xFFF;
        unk1C->callback = gUnknown_080D8DCC[0].callback;
        unk1C->unk1C = gUnknown_080D8DCC[0].data;
        unk1C->unk16 = gUnknown_080D8DCC[0].unk8;
        m4aSongNumStop(272);
    }
}

void sub_8050CBC(struct TA53_unk48 *unk48)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk558 *unk558 = &boss->unk558;
    u8 value;

    sub_8050030(unk48);

    value = (unk48->unk30 >> 12);
    if (value < 3) {
        unk1C->qPos.x -= ((s32)((0.75)*256));
    } else if (value == 3) {
        unk48->unk30 &= 0xFFF;
        unk48->callback = gUnknown_080D8D6C[6].callback;
        unk48->unk34 = gUnknown_080D8D6C[6].data;
        unk48->unk2E = gUnknown_080D8D6C[6].unk8;
        unk558->callback = sub_804F108;
    }
}


void sub_8050D24(struct TA53_unk48 *unk48)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;
    TA53_unk558 *unk558 = &boss->unk558;
    u8 value;

    sub_8050030(unk48);

    value = (unk48->unk30 >> 12);
    if (value >= 2) {
        unk48->unk30 &= 0xFFF;

        unk48->callback = gUnknown_080D8D6C[7].callback;
        unk48->unk34 = gUnknown_080D8D6C[7].data;
        unk48->unk2E = gUnknown_080D8D6C[7].unk8;
        unk1C->unk18 &= 0xFFF;
        unk1C->callback = gUnknown_080D8DCC[5].callback;
        unk1C->unk1C = gUnknown_080D8DCC[5].data;
        unk1C->unk16 = gUnknown_080D8DCC[5].unk8;
        unk558->callback = sub_8050DC8;
    }
}


void sub_8050D9C(struct TA53_unk48 *unk48)
{
    TA53Boss *boss = (void *)((gCurTask)->data);
    TA53_unk1C *unk1C = &boss->unk1C;

    unk1C->qPos.x += ((s32)((1)*256));
    sub_8050030(unk48);
}

void sub_8050DC4(struct TA53_unk98 *unk98) { }

void sub_8050DC8(struct TA53_unk558 *unk558)
{
    Sprite *s;

    unk558->unk8 = 60;
    unk558->unk6 = 180;

    s = &unk558->s;
    s->graphics.anim = 718;
    s->variant = 0;
    s->prevVariant = -1;
    s->frameFlags = ((1) << (12));
}

void sub_8050DF8(struct TA53_unk654 *unk654) { sub_804F5BC(unk654); }
