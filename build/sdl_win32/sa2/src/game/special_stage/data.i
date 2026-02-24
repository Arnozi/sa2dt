# 0 "src/game/special_stage/data.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/special_stage/data.c"
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
# 2 "src/game/special_stage/data.c" 2
# 1 "include/game/special_stage/data.h" 1




# 1 "include/sprite.h" 1



# 1 "include/global.h" 1
# 5 "include/sprite.h" 2
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
# 6 "include/game/special_stage/data.h" 2
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
# 3 "src/game/special_stage/data.c" 2
# 17 "src/game/special_stage/data.c"
const struct UNK_8C878E8 gUnknown_080DA270[] = {

    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 104, 272, 0, 0 },
    { 1, 104, 288, 0, 0 },
    { 2, 104, 304, 0, 0 },
    { 3, 104, 320, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 4, 96, 560, 0, 0 },
    { 5, 96, 592, 0, 0 },
    { 6, 96, 608, 0, 0 },
    { 7, 104, 560, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 8, 96, 672, 0, 0 },
    { 9, 104, 704, 0, 0 },
    { 10, 112, 736, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 11, 224, 96, 0, 1 },
    { 12, 224, 112, 0, 0 },
    { 13, 240, 96, 0, 0 },
    { 14, 240, 112, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 15, 144, 144, 0, 0 },
    { 16, 144, 160, 0, 0 },
    { 17, 160, 144, 0, 0 },
    { 18, 160, 160, 0, 0 },
    { 19, 216, 144, 0, 0 },
    { 20, 216, 160, 0, 0 },
    { 21, 216, 176, 0, 0 },
    { 22, 216, 192, 0, 0 },
    { 23, 220, 232, 0, 0 },
    { 24, 220, 240, 0, 0 },
    { 25, 220, 248, 0, 0 },
    { 26, 224, 144, 0, 0 },
    { 27, 224, 160, 0, 0 },
    { 28, 224, 176, 0, 0 },
    { 29, 224, 192, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 30, 176, 304, 0, 0 },
    { 31, 176, 320, 0, 0 },
    { 32, 184, 296, 0, 0 },
    { 33, 184, 312, 0, 0 },
    { 34, 192, 288, 0, 0 },
    { 35, 192, 304, 0, 0 },
    { 36, 192, 320, 0, 0 },
    { 37, 200, 296, 0, 0 },
    { 38, 200, 312, 0, 0 },
    { 39, 208, 288, 0, 0 },
    { 40, 208, 304, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 41, 160, 448, 0, 0 },
    { 42, 160, 464, 0, 0 },
    { 43, 160, 480, 0, 0 },
    { 44, 160, 496, 0, 0 },
    { 45, 224, 432, 0, 1 },
    { 46, 224, 480, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 47, 208, 592, 0, 0 },
    { 48, 216, 584, 0, 1 },
    { 49, 216, 600, 0, 0 },
    { 50, 224, 544, 0, 0 },
    { 51, 224, 576, 0, 0 },
    { 52, 224, 592, 0, 0 },
    { 53, 224, 608, 0, 0 },
    { 54, 232, 584, 0, 0 },
    { 55, 232, 600, 0, 0 },
    { 56, 240, 592, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 57, 192, 672, 0, 0 },
    { 58, 192, 696, 0, 0 },
    { 59, 192, 712, 0, 0 },
    { 60, 224, 736, 0, 0 },
    { 61, 224, 744, 0, 0 },
    { 62, 232, 736, 0, 0 },
    { 63, 232, 744, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 64, 160, 816, 0, 0 },
    { 65, 160, 832, 0, 0 },
    { 66, 168, 816, 0, 0 },
    { 67, 168, 832, 0, 0 },
    { 68, 192, 856, 0, 1 },
    { 69, 208, 880, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 70, 312, 64, 0, 0 },
    { 71, 312, 72, 0, 0 },
    { 72, 328, 64, 0, 1 },
    { 73, 328, 72, 0, 0 },
    { 74, 344, 64, 0, 0 },
    { 75, 344, 72, 0, 1 },
    { 76, 360, 64, 0, 0 },
    { 77, 360, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 78, 304, 224, 0, 1 },
    { 79, 320, 220, 0, 0 },
    { 80, 320, 224, 0, 0 },
    { 81, 336, 220, 0, 0 },
    { 82, 336, 224, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 83, 304, 448, 0, 0 },
    { 84, 320, 464, 0, 1 },
    { 85, 336, 480, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 86, 336, 680, 0, 0 },
    { 87, 336, 688, 3, 1 },
    { 88, 336, 696, 0, 0 },
    { 89, 352, 680, 0, 0 },
    { 90, 352, 688, 3, 1 },
    { 91, 352, 696, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 92, 288, 832, 0, 0 },
    { 93, 288, 848, 0, 0 },
    { 94, 296, 840, 0, 0 },
    { 95, 296, 856, 0, 0 },
    { 96, 304, 832, 0, 0 },
    { 97, 304, 848, 0, 0 },
    { 98, 304, 864, 0, 0 },
    { 99, 312, 840, 0, 0 },
    { 100, 312, 856, 0, 0 },
    { 101, 320, 848, 0, 0 },
    { 102, 320, 864, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 103, 400, 68, 0, 0 },
    { 104, 416, 68, 0, 0 },
    { 105, 432, 68, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 106, 464, 184, 0, 0 },
    { 107, 468, 192, 0, 0 },
    { 108, 472, 176, 0, 0 },
    { 109, 472, 184, 0, 0 },
    { 110, 472, 192, 0, 0 },
    { 111, 472, 200, 0, 0 },
    { 112, 476, 184, 0, 0 },
    { 113, 480, 192, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 114, 472, 288, 0, 0 },
    { 115, 472, 304, 0, 0 },
    { 116, 472, 320, 0, 0 },
    { 117, 472, 336, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 118, 464, 456, 7, 0 },
    { 119, 472, 440, 7, 1 },
    { 120, 472, 456, 7, 1 },
    { 121, 472, 472, 7, 1 },
    { 122, 480, 456, 7, 0 },
    { -1, 0, 0, 0, -1, },


    { 123, 464, 592, 0, 0 },
    { 124, 464, 608, 0, 0 },
    { 125, 480, 592, 0, 0 },
    { 126, 480, 608, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 127, 456, 720, 0, 0 },
    { 128, 456, 728, 0, 0 },
    { 129, 472, 720, 0, 0 },
    { 130, 472, 728, 0, 0 },
    { 131, 488, 720, 0, 0 },
    { 132, 488, 728, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 133, 440, 872, 7, 1 },
    { 134, 448, 872, 6, 1 },
    { 135, 472, 832, 7, 1 },
    { 136, 472, 840, 6, 1 },
    { -1, 0, 0, 0, -1, },


    { 137, 448, 944, 0, 0 },
    { 138, 448, 960, 0, 0 },
    { 139, 456, 952, 0, 1 },
    { 140, 464, 944, 0, 0 },
    { 141, 464, 960, 0, 0 },
    { 142, 472, 952, 0, 0 },
    { 143, 480, 944, 0, 0 },
    { 144, 480, 960, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 145, 584, 88, 0, 0 },
    { 146, 584, 96, 0, 0 },
    { 147, 584, 104, 0, 0 },
    { 148, 600, 88, 0, 0 },
    { 149, 600, 96, 0, 0 },
    { 150, 600, 104, 0, 0 },
    { 151, 616, 96, 0, 0 },
    { 152, 616, 104, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 153, 576, 192, 0, 0 },
    { 154, 576, 200, 0, 0 },
    { 155, 592, 192, 0, 0 },
    { 156, 592, 200, 0, 0 },
    { 157, 608, 192, 0, 0 },
    { 158, 608, 200, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 159, 552, 296, 0, 0 },
    { 160, 552, 312, 0, 0 },
    { 161, 552, 328, 0, 1 },
    { 162, 552, 344, 0, 0 },
    { 163, 560, 296, 0, 0 },
    { 164, 560, 312, 0, 0 },
    { 165, 560, 328, 0, 0 },
    { 166, 560, 344, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 167, 568, 416, 0, 0 },
    { 168, 576, 416, 0, 0 },
    { 169, 576, 480, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 170, 576, 544, 0, 0 },
    { 171, 576, 608, 0, 0 },
    { 172, 584, 608, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 173, 560, 728, 0, 0 },
    { 174, 576, 688, 0, 0 },
    { 175, 576, 704, 0, 0 },
    { 176, 576, 720, 0, 0 },
    { 177, 576, 736, 0, 0 },
    { 178, 584, 688, 0, 0 },
    { 179, 584, 704, 0, 0 },
    { 180, 584, 720, 0, 0 },
    { 181, 584, 736, 0, 0 },
    { 182, 600, 728, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 183, 552, 880, 0, 0 },
    { 184, 568, 848, 0, 0 },
    { 185, 568, 864, 0, 0 },
    { 186, 568, 880, 0, 0 },
    { 187, 576, 816, 0, 1 },
    { 188, 576, 832, 0, 1 },
    { 189, 576, 848, 0, 0 },
    { 190, 576, 864, 0, 0 },
    { 191, 584, 816, 0, 0 },
    { 192, 584, 832, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 193, 568, 944, 0, 0 },
    { 194, 576, 944, 3, 0 },
    { 195, 584, 944, 3, 1 },
    { 196, 600, 944, 3, 1 },
    { 197, 608, 944, 3, 0 },
    { 198, 616, 944, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 199, 704, 80, 0, 0 },
    { 200, 720, 80, 0, 0 },
    { 201, 736, 80, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 202, 704, 144, 0, 0 },
    { 203, 704, 160, 0, 0 },
    { 204, 720, 144, 0, 0 },
    { 205, 720, 160, 0, 0 },
    { 206, 720, 176, 0, 0 },
    { 207, 720, 224, 0, 0 },
    { 208, 736, 144, 0, 0 },
    { 209, 736, 160, 0, 0 },
    { 210, 736, 176, 0, 0 },
    { 211, 736, 192, 0, 0 },
    { 212, 736, 240, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 213, 672, 728, 0, 1 },
    { 214, 672, 736, 0, 0 },
    { 215, 688, 728, 0, 0 },
    { 216, 688, 736, 0, 0 },
    { 217, 704, 704, 0, 0 },
    { 218, 704, 728, 0, 0 },
    { 219, 704, 736, 0, 0 },
    { 220, 720, 688, 0, 0 },
    { 221, 720, 728, 0, 0 },
    { 222, 720, 736, 0, 0 },
    { 223, 736, 672, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 224, 720, 928, 0, 0 },
    { 225, 736, 928, 0, 0 },
    { 226, 752, 928, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 227, 832, 176, 0, 0 },
    { 228, 832, 176, 0, 0 },
    { 229, 832, 184, 0, 0 },
    { 230, 832, 184, 0, 0 },
    { 231, 832, 192, 0, 0 },
    { 232, 832, 192, 0, 0 },
    { 233, 848, 176, 0, 0 },
    { 234, 848, 176, 0, 0 },
    { 235, 848, 184, 0, 0 },
    { 236, 848, 184, 0, 0 },
    { 237, 848, 192, 0, 0 },
    { 238, 848, 192, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 239, 816, 288, 0, 0 },
    { 240, 816, 304, 0, 0 },
    { 241, 816, 320, 0, 0 },
    { 242, 824, 288, 0, 0 },
    { 243, 824, 304, 0, 0 },
    { 244, 824, 320, 0, 0 },
    { 245, 832, 304, 0, 0 },
    { 246, 832, 320, 0, 0 },
    { 247, 840, 320, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 248, 824, 496, 0, 0 },
    { 249, 832, 400, 0, 1 },
    { 250, 832, 416, 0, 0 },
    { 251, 832, 432, 0, 0 },
    { 252, 832, 480, 0, 0 },
    { 253, 832, 496, 0, 1 },
    { 254, 840, 496, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 255, 800, 576, 0, 0 },
    { 256, 800, 592, 0, 0 },
    { 257, 800, 608, 0, 0 },
    { 258, 808, 584, 3, 1 },
    { 259, 816, 576, 0, 0 },
    { 260, 816, 608, 0, 0 },
    { 261, 824, 600, 3, 1 },
    { 262, 832, 576, 0, 0 },
    { 263, 832, 592, 0, 0 },
    { 264, 832, 608, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 265, 800, 704, 0, 0 },
    { 266, 816, 696, 0, 0 },
    { 267, 832, 688, 0, 1 },
    { 268, 848, 680, 0, 0 },
    { 269, 864, 672, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 270, 816, 832, 0, 0 },
    { 271, 816, 848, 0, 0 },
    { 272, 832, 816, 0, 0 },
    { 273, 832, 832, 0, 0 },
    { 274, 832, 848, 0, 0 },
    { 275, 848, 816, 0, 0 },
    { 276, 848, 832, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 277, 912, 80, 0, 0 },
    { 278, 928, 80, 0, 0 },
    { 279, 928, 96, 0, 1 },
    { 280, 944, 80, 0, 0 },
    { 281, 944, 96, 0, 0 },
    { 282, 944, 112, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 283, 944, 208, 0, 0 },
    { 284, 944, 224, 0, 0 },
    { 285, 944, 240, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 286, 936, 336, 0, 1 },
    { 287, 944, 288, 0, 0 },
    { 288, 944, 320, 0, 0 },
    { 289, 944, 336, 0, 0 },
    { 290, 944, 352, 0, 0 },
    { 291, 952, 336, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 292, 930, 496, 0, 0 },
    { 293, 938, 480, 0, 0 },
    { 294, 944, 464, 0, 0 },
    { 295, 944, 496, 0, 0 },
    { 296, 950, 480, 0, 0 },
    { 297, 958, 496, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 298, 928, 664, 0, 0 },
    { 299, 928, 680, 0, 0 },
    { 300, 928, 696, 0, 0 },
    { 301, 936, 664, 0, 0 },
    { 302, 936, 680, 0, 0 },
    { 303, 936, 696, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 68, 240, 0, 0 },
    { 1, 72, 224, 0, 0 },
    { 2, 80, 208, 0, 0 },
    { 3, 88, 196, 0, 0 },
    { 4, 88, 248, 0, 0 },
    { 5, 96, 236, 0, 0 },
    { 6, 100, 184, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 7, 56, 320, 0, 0 },
    { 8, 60, 304, 0, 0 },
    { 9, 64, 292, 0, 0 },
    { 10, 72, 276, 0, 0 },
    { 11, 76, 292, 0, 1 },
    { 12, 80, 260, 0, 0 },
    { 13, 80, 280, 0, 0 },
    { 14, 84, 268, 0, 0 },
    { 15, 92, 260, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 16, 108, 408, 0, 0 },
    { 17, 108, 424, 0, 0 },
    { 18, 108, 440, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 19, 56, 516, 3, 0 },
    { 20, 56, 528, 3, 0 },
    { 21, 56, 540, 3, 0 },
    { 22, 56, 552, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 23, 60, 644, 0, 0 },
    { 24, 60, 656, 0, 0 },
    { 25, 64, 672, 0, 0 },
    { 26, 72, 692, 0, 0 },
    { 27, 76, 668, 0, 0 },
    { 28, 84, 684, 0, 0 },
    { 29, 84, 712, 0, 0 },
    { 30, 88, 696, 0, 0 },
    { 31, 92, 724, 0, 0 },
    { 32, 96, 712, 0, 0 },
    { 33, 108, 720, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 34, 196, 120, 0, 0 },
    { 35, 204, 112, 0, 0 },
    { 36, 220, 104, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 37, 176, 144, 0, 0 },
    { 38, 184, 132, 0, 0 },
    { 39, 184, 156, 0, 0 },
    { 40, 196, 144, 0, 0 },
    { 41, 204, 136, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 42, 212, 320, 0, 0 },
    { 43, 216, 304, 0, 0 },
    { 44, 220, 288, 0, 0 },
    { 45, 228, 276, 0, 0 },
    { 46, 228, 308, 0, 0 },
    { 47, 232, 288, 0, 0 },
    { 48, 240, 272, 0, 0 },
    { 49, 244, 260, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 50, 192, 424, 0, 0 },
    { 51, 192, 440, 0, 0 },
    { 52, 192, 456, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 53, 228, 572, 3, 0 },
    { 54, 228, 584, 3, 0 },
    { 55, 228, 596, 3, 0 },
    { 56, 228, 608, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 57, 228, 644, 0, 0 },
    { 58, 228, 660, 0, 0 },
    { 59, 232, 672, 0, 0 },
    { 60, 236, 684, 0, 0 },
    { 61, 240, 652, 0, 0 },
    { 62, 244, 668, 0, 0 },
    { 63, 248, 680, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 64, 164, 796, 0, 0 },
    { 65, 176, 804, 0, 0 },
    { 66, 180, 816, 0, 1 },
    { 67, 188, 804, 0, 1 },
    { 68, 192, 816, 0, 0 },
    { 69, 204, 824, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 70, 264, 72, 0, 0 },
    { 71, 276, 68, 0, 0 },
    { 72, 288, 64, 0, 0 },
    { 73, 300, 60, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 74, 268, 172, 0, 0 },
    { 75, 276, 160, 0, 0 },
    { 76, 284, 148, 0, 0 },
    { 77, 292, 140, 0, 0 },
    { 78, 304, 160, 0, 0 },
    { 79, 312, 148, 0, 0 },
    { 80, 320, 140, 0, 0 },
    { 81, 328, 132, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 82, 376, 304, 0, 0 },
    { 83, 376, 328, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 84, 320, 388, 0, 0 },
    { 85, 320, 404, 0, 0 },
    { 86, 320, 420, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 87, 376, 664, 0, 1 },
    { 88, 376, 676, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 89, 272, 884, 0, 0 },
    { 90, 280, 876, 0, 0 },
    { 91, 284, 792, 0, 0 },
    { 92, 284, 888, 0, 0 },
    { 93, 288, 800, 0, 0 },
    { 94, 292, 772, 0, 0 },
    { 95, 292, 880, 0, 0 },
    { 96, 296, 812, 0, 0 },
    { 97, 300, 788, 0, 0 },
    { 98, 308, 800, 0, 0 },
    { 99, 316, 812, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 100, 392, 88, 0, 0 },
    { 101, 404, 76, 0, 0 },
    { 102, 408, 56, 0, 0 },
    { 103, 416, 72, 0, 0 },
    { 104, 420, 56, 0, 0 },
    { 105, 428, 56, 0, 0 },
    { 106, 444, 96, 0, 0 },
    { 107, 452, 84, 0, 0 },
    { 108, 460, 76, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 109, 392, 216, 0, 0 },
    { 110, 396, 196, 0, 0 },
    { 111, 400, 180, 0, 0 },
    { 112, 404, 164, 0, 0 },
    { 113, 408, 204, 0, 0 },
    { 114, 408, 216, 0, 0 },
    { 115, 412, 152, 0, 0 },
    { 116, 412, 194, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 117, 388, 296, 0, 0 },
    { 118, 388, 316, 0, 0 },
    { 119, 388, 340, 0, 0 },
    { 120, 392, 284, 0, 0 },
    { 121, 396, 300, 0, 0 },
    { 122, 396, 320, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 123, 424, 436, 0, 0 },
    { 124, 424, 452, 0, 0 },
    { 125, 424, 468, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 126, 392, 572, 3, 0 },
    { 127, 392, 584, 3, 0 },
    { 128, 392, 596, 3, 0 },
    { 129, 392, 608, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 130, 388, 644, 0, 0 },
    { 131, 388, 656, 0, 0 },
    { 132, 388, 668, 0, 0 },
    { 133, 392, 688, 0, 0 },
    { 134, 396, 652, 0, 0 },
    { 135, 396, 664, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 136, 412, 772, 0, 0 },
    { 137, 412, 812, 0, 0 },
    { 138, 416, 788, 0, 0 },
    { 139, 416, 824, 0, 0 },
    { 140, 420, 800, 0, 0 },
    { 141, 420, 832, 0, 0 },
    { 142, 428, 812, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 143, 392, 940, 0, 0 },
    { 144, 408, 904, 0, 0 },
    { 145, 424, 916, 0, 0 },
    { 146, 428, 940, 0, 0 },
    { 147, 440, 920, 0, 0 },
    { 148, 440, 948, 0, 0 },
    { 149, 460, 900, 0, 0 },
    { 150, 480, 920, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 151, 544, 68, 0, 0 },
    { 152, 556, 80, 0, 0 },
    { 153, 556, 100, 0, 0 },
    { 154, 568, 120, 0, 0 },
    { 155, 576, 104, 0, 0 },
    { 156, 588, 120, 0, 0 },
    { 157, 608, 68, 0, 0 },
    { 158, 624, 80, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 159, 608, 160, 0, 0 },
    { 160, 608, 204, 0, 1 },
    { 161, 616, 176, 0, 0 },
    { 162, 616, 224, 0, 1 },
    { 163, 628, 212, 0, 0 },
    { 164, 632, 228, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 165, 620, 264, 0, 0 },
    { 166, 632, 272, 0, 0 },
    { 167, 632, 324, 0, 0 },
    { 168, 632, 344, 0, 0 },
    { 169, 632, 364, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 170, 556, 412, 0, 0 },
    { 171, 556, 428, 0, 0 },
    { 172, 556, 444, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 173, 632, 572, 3, 0 },
    { 174, 632, 584, 3, 0 },
    { 175, 632, 596, 3, 0 },
    { 176, 632, 608, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 177, 632, 644, 0, 0 },
    { 178, 632, 660, 0, 0 },
    { 179, 632, 676, 0, 0 },
    { 180, 632, 692, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 181, 584, 824, 0, 0 },
    { 182, 588, 852, 0, 0 },
    { 183, 592, 812, 0, 0 },
    { 184, 596, 800, 0, 0 },
    { 185, 596, 836, 0, 0 },
    { 186, 604, 788, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 187, 540, 920, 0, 0 },
    { 188, 548, 912, 0, 0 },
    { 189, 556, 900, 0, 0 },
    { 190, 568, 944, 0, 0 },
    { 191, 580, 940, 0, 0 },
    { 192, 588, 920, 0, 0 },
    { 193, 596, 936, 0, 0 },
    { 194, 600, 916, 0, 0 },
    { 195, 624, 904, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 196, 660, 104, 0, 0 },
    { 197, 680, 120, 0, 0 },
    { 198, 684, 56, 0, 0 },
    { 199, 692, 104, 0, 0 },
    { 200, 704, 112, 0, 0 },
    { 201, 732, 64, 0, 0 },
    { 202, 760, 76, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 203, 724, 192, 0, 0 },
    { 204, 732, 204, 0, 0 },
    { 205, 740, 148, 0, 0 },
    { 206, 740, 220, 0, 0 },
    { 207, 748, 156, 0, 0 },
    { 208, 748, 236, 0, 1 },
    { 209, 756, 164, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 210, 656, 440, 0, 0 },
    { 211, 656, 456, 0, 0 },
    { 212, 656, 472, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 213, 644, 648, 0, 0 },
    { 214, 644, 660, 0, 0 },
    { 215, 644, 672, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 216, 696, 836, 0, 0 },
    { 217, 700, 816, 0, 0 },
    { 218, 704, 828, 0, 0 },
    { 219, 712, 800, 0, 0 },
    { 220, 716, 816, 0, 0 },
    { 221, 720, 788, 0, 0 },
    { 222, 724, 804, 0, 0 },
    { 223, 728, 776, 0, 0 },
    { 224, 740, 880, 0, 0 },
    { 225, 740, 888, 0, 0 },
    { 226, 752, 872, 0, 0 },
    { 227, 756, 880, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 228, 656, 920, 0, 0 },
    { 229, 668, 916, 0, 0 },
    { 230, 680, 908, 0, 0 },
    { 231, 688, 904, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 232, 804, 96, 0, 0 },
    { 233, 816, 104, 0, 0 },
    { 234, 824, 112, 0, 0 },
    { 235, 828, 100, 0, 0 },
    { 236, 832, 120, 0, 0 },
    { 237, 836, 104, 0, 0 },
    { 238, 848, 112, 0, 0 },
    { 239, 856, 120, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 240, 780, 260, 0, 0 },
    { 241, 784, 268, 0, 0 },
    { 242, 792, 296, 0, 0 },
    { 243, 792, 312, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 244, 836, 412, 0, 0 },
    { 245, 836, 428, 0, 0 },
    { 246, 836, 444, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 247, 800, 576, 3, 0 },
    { 248, 800, 588, 3, 0 },
    { 249, 800, 600, 3, 0 },
    { 250, 800, 612, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 251, 780, 708, 0, 0 },
    { 252, 788, 688, 0, 0 },
    { 253, 792, 676, 0, 0 },
    { 254, 796, 644, 0, 0 },
    { 255, 796, 656, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 256, 844, 824, 0, 0 },
    { 257, 856, 812, 0, 0 },
    { 258, 860, 816, 0, 0 },
    { 259, 864, 804, 0, 0 },
    { 260, 872, 796, 0, 0 },
    { 261, 872, 808, 0, 0 },
    { 262, 880, 800, 0, 0 },
    { 263, 888, 788, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 264, 908, 188, 0, 0 },
    { 265, 916, 216, 0, 1 },
    { 266, 920, 200, 0, 0 },
    { 267, 920, 228, 0, 1 },
    { 268, 928, 196, 0, 0 },
    { 269, 928, 212, 0, 0 },
    { 270, 932, 220, 0, 0 },
    { 271, 936, 208, 0, 0 },
    { 272, 940, 236, 0, 0 },
    { 273, 944, 220, 0, 1 },
    { 274, 944, 248, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 275, 944, 324, 0, 0 },
    { 276, 944, 336, 0, 0 },
    { 277, 944, 348, 0, 0 },
    { 278, 960, 308, 0, 0 },
    { 279, 960, 320, 0, 0 },
    { 280, 960, 332, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 281, 908, 436, 0, 0 },
    { 282, 908, 452, 0, 0 },
    { 283, 908, 468, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 284, 960, 520, 3, 0 },
    { 285, 960, 532, 3, 0 },
    { 286, 960, 544, 3, 0 },
    { 287, 960, 556, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 288, 944, 704, 0, 0 },
    { 289, 948, 648, 0, 0 },
    { 290, 948, 660, 0, 0 },
    { 291, 948, 672, 0, 0 },
    { 292, 952, 688, 0, 0 },
    { 293, 956, 672, 0, 0 },
    { 294, 960, 644, 0, 0 },
    { 295, 960, 660, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 84, 184, 0, 0 },
    { 1, 96, 168, 0, 0 },
    { 2, 104, 184, 0, 0 },
    { 3, 112, 172, 0, 0 },
    { 4, 120, 164, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 5, 60, 308, 0, 0 },
    { 6, 64, 288, 0, 0 },
    { 7, 72, 276, 0, 0 },
    { 8, 76, 292, 0, 0 },
    { 9, 76, 308, 0, 0 },
    { 10, 80, 280, 0, 0 },
    { 11, 88, 260, 0, 0 },
    { 12, 92, 272, 0, 0 },
    { 13, 104, 260, 0, 0 },
    { 14, 108, 272, 0, 0 },
    { 15, 116, 260, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 16, 60, 472, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 17, 60, 576, 3, 1 },
    { 18, 72, 564, 0, 0 },
    { 19, 72, 588, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 20, 56, 712, 0, 0 },
    { 21, 60, 692, 0, 0 },
    { 22, 60, 724, 0, 0 },
    { 23, 64, 708, 0, 0 },
    { 24, 72, 720, 0, 0 },
    { 25, 72, 736, 0, 0 },
    { 26, 84, 716, 0, 0 },
    { 27, 84, 740, 0, 0 },
    { 28, 92, 724, 0, 0 },
    { 29, 104, 744, 0, 0 },
    { 30, 116, 744, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 31, 72, 812, 0, 0 },
    { 32, 76, 832, 0, 0 },
    { 33, 88, 848, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 34, 172, 108, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 35, 196, 260, 0, 0 },
    { 36, 196, 268, 0, 0 },
    { 37, 212, 260, 0, 0 },
    { 38, 212, 268, 0, 0 },
    { 39, 228, 264, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 40, 212, 756, 0, 0 },
    { 41, 224, 756, 0, 0 },
    { 42, 236, 752, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 43, 136, 840, 0, 1 },
    { 44, 184, 876, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 45, 160, 928, 0, 0 },
    { 46, 171, 932, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 47, 268, 96, 0, 0 },
    { 48, 276, 80, 0, 0 },
    { 49, 276, 88, 0, 0 },
    { 50, 284, 64, 0, 0 },
    { 51, 292, 72, 0, 0 },
    { 52, 300, 60, 0, 0 },
    { 53, 312, 68, 0, 0 },
    { 54, 324, 56, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 55, 264, 200, 0, 0 },
    { 56, 268, 188, 0, 0 },
    { 57, 268, 220, 0, 0 },
    { 58, 272, 212, 0, 0 },
    { 59, 280, 232, 0, 0 },
    { 60, 280, 244, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 61, 260, 276, 0, 0 },
    { 62, 272, 284, 0, 0 },
    { 63, 280, 292, 0, 0 },
    { 64, 292, 260, 0, 0 },
    { 65, 300, 272, 0, 0 },
    { 66, 308, 280, 0, 0 },
    { 67, 316, 316, 0, 0 },
    { 68, 328, 328, 0, 0 },
    { 69, 340, 340, 0, 0 },
    { 70, 348, 332, 0, 0 },
    { 71, 348, 364, 0, 0 },
    { 72, 360, 344, 0, 0 },
    { 73, 376, 360, 0, 0 },
    { 74, 376, 376, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 75, 284, 404, 0, 1 },
    { 76, 292, 392, 0, 0 },
    { 77, 292, 416, 0, 0 },
    { 78, 296, 404, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 79, 284, 516, 0, 0 },
    { 80, 284, 528, 0, 0 },
    { 81, 292, 608, 0, 1 },
    { 82, 296, 516, 0, 0 },
    { 83, 296, 528, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 84, 264, 740, 0, 0 },
    { 85, 272, 732, 0, 0 },
    { 86, 280, 756, 0, 0 },
    { 87, 288, 764, 0, 0 },
    { 88, 316, 704, 0, 0 },
    { 89, 332, 688, 0, 0 },
    { 90, 336, 668, 0, 0 },
    { 91, 340, 696, 0, 0 },
    { 92, 344, 660, 0, 0 },
    { 93, 372, 664, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 94, 268, 788, 0, 0 },
    { 95, 268, 800, 0, 0 },
    { 96, 272, 772, 0, 0 },
    { 97, 276, 796, 0, 0 },
    { 98, 276, 812, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 99, 272, 900, 0, 0 },
    { 100, 276, 924, 0, 0 },
    { 101, 280, 908, 0, 0 },
    { 102, 284, 936, 0, 0 },
    { 103, 288, 924, 0, 0 },
    { 104, 300, 936, 0, 0 },
    { 105, 300, 948, 0, 0 },
    { 106, 320, 956, 0, 0 },
    { 107, 336, 952, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 108, 488, 56, 0, 0 },
    { 109, 492, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 110, 432, 280, 0, 0 },
    { 111, 432, 288, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 112, 388, 388, 0, 0 },
    { 113, 392, 408, 0, 0 },
    { 114, 416, 400, 0, 0 },
    { 115, 424, 424, 0, 1 },
    { 116, 424, 440, 0, 1 },
    { 117, 460, 460, 7, 1 },
    { -1, 0, 0, 0, -1, },


    { 118, 392, 612, 0, 1 },
    { 119, 400, 620, 0, 0 },
    { 120, 408, 596, 0, 0 },
    { 121, 432, 588, 0, 1 },
    { 122, 452, 584, 0, 0 },
    { 123, 468, 568, 0, 0 },
    { 124, 480, 524, 0, 1 },
    { 125, 488, 516, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 126, 388, 648, 0, 0 },
    { 127, 396, 732, 0, 0 },
    { 128, 412, 732, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 129, 448, 960, 3, 1 },
    { 130, 456, 948, 0, 0 },
    { 131, 468, 948, 0, 0 },
    { 132, 480, 948, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 133, 552, 56, 0, 0 },
    { 134, 556, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 135, 552, 280, 0, 0 },
    { 136, 552, 288, 0, 0 },
    { 137, 568, 284, 0, 0 },
    { 138, 580, 284, 0, 0 },
    { 139, 592, 284, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 140, 516, 504, 0, 0 },
    { 141, 540, 480, 0, 0 },
    { 142, 540, 496, 0, 1 },
    { 143, 556, 480, 0, 0 },
    { 144, 592, 412, 0, 0 },
    { 145, 592, 428, 0, 0 },
    { 146, 600, 404, 0, 0 },
    { 147, 608, 412, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 148, 524, 524, 0, 0 },
    { 149, 532, 548, 0, 0 },
    { 150, 548, 532, 0, 0 },
    { 151, 548, 548, 0, 0 },
    { 152, 584, 600, 0, 0 },
    { 153, 592, 576, 0, 0 },
    { 154, 592, 592, 0, 0 },
    { 155, 600, 584, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 156, 532, 732, 0, 1 },
    { 157, 592, 732, 0, 0 },
    { 158, 600, 732, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 159, 532, 948, 0, 0 },
    { 160, 544, 948, 0, 0 },
    { 161, 556, 948, 0, 0 },
    { 162, 568, 960, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 163, 720, 64, 0, 0 },
    { 164, 724, 76, 0, 0 },
    { 165, 732, 68, 0, 0 },
    { 166, 732, 80, 0, 0 },
    { 167, 740, 88, 0, 0 },
    { 168, 744, 76, 0, 0 },
    { 169, 744, 100, 0, 0 },
    { 170, 752, 88, 0, 0 },
    { 171, 756, 100, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 172, 752, 244, 0, 0 },
    { 173, 756, 192, 0, 0 },
    { 174, 756, 204, 0, 0 },
    { 175, 756, 220, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 176, 648, 356, 0, 0 },
    { 177, 648, 372, 0, 0 },
    { 178, 656, 364, 0, 0 },
    { 179, 660, 344, 0, 0 },
    { 180, 660, 376, 0, 0 },
    { 181, 668, 368, 0, 0 },
    { 182, 676, 360, 0, 1 },
    { 183, 684, 320, 0, 0 },
    { 184, 720, 284, 0, 0 },
    { 185, 732, 272, 0, 0 },
    { 186, 744, 260, 0, 0 },
    { 187, 744, 296, 0, 0 },
    { 188, 752, 288, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 189, 732, 396, 0, 0 },
    { 190, 732, 408, 0, 0 },
    { 191, 732, 460, 3, 0 },
    { 192, 732, 472, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 193, 732, 572, 0, 0 },
    { 194, 732, 604, 0, 0 },
    { 195, 740, 588, 0, 0 },
    { 196, 744, 576, 0, 0 },
    { 197, 744, 600, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 198, 652, 652, 0, 0 },
    { 199, 652, 668, 0, 1 },
    { 200, 664, 664, 0, 0 },
    { 201, 668, 684, 0, 0 },
    { 202, 672, 656, 0, 0 },
    { 203, 676, 676, 0, 0 },
    { 204, 680, 664, 0, 0 },
    { 205, 684, 700, 0, 0 },
    { 206, 688, 672, 0, 0 },
    { 207, 724, 740, 0, 0 },
    { 208, 732, 748, 0, 0 },
    { 209, 740, 756, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 210, 740, 780, 0, 0 },
    { 211, 744, 792, 0, 0 },
    { 212, 744, 808, 0, 0 },
    { 213, 744, 820, 0, 0 },
    { 214, 748, 772, 0, 0 },
    { 215, 752, 784, 0, 0 },
    { 216, 756, 804, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 217, 696, 968, 0, 0 },
    { 218, 708, 956, 0, 0 },
    { 219, 720, 960, 0, 0 },
    { 220, 728, 944, 0, 0 },
    { 221, 736, 936, 0, 0 },
    { 222, 736, 948, 0, 0 },
    { 223, 744, 916, 0, 0 },
    { 224, 744, 936, 0, 0 },
    { 225, 752, 908, 0, 0 },
    { 226, 752, 920, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 227, 772, 276, 0, 0 },
    { 228, 796, 268, 0, 0 },
    { 229, 812, 268, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 230, 772, 732, 0, 0 },
    { 231, 784, 740, 0, 0 },
    { 232, 788, 748, 0, 0 },
    { 233, 796, 744, 0, 0 },
    { 234, 800, 752, 0, 0 },
    { 235, 812, 748, 0, 0 },
    { 236, 828, 748, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 237, 836, 912, 0, 0 },
    { 238, 844, 904, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 239, 900, 96, 0, 0 },
    { 240, 912, 104, 0, 0 },
    { 241, 920, 116, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 242, 900, 136, 0, 0 },
    { 243, 908, 148, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 244, 900, 264, 0, 0 },
    { 245, 908, 276, 0, 0 },
    { 246, 912, 264, 0, 0 },
    { 247, 920, 276, 0, 0 },
    { 248, 928, 268, 0, 0 },
    { 249, 932, 284, 0, 0 },
    { 250, 940, 276, 0, 0 },
    { 251, 940, 296, 0, 0 },
    { 252, 948, 376, 0, 1 },
    { 253, 952, 296, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 254, 944, 532, 0, 0 },
    { 255, 960, 532, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 256, 900, 752, 0, 0 },
    { 257, 908, 740, 0, 0 },
    { 258, 912, 752, 0, 0 },
    { 259, 924, 736, 0, 0 },
    { 260, 924, 748, 0, 0 },
    { 261, 932, 728, 0, 0 },
    { 262, 932, 740, 0, 0 },
    { 263, 940, 708, 0, 0 },
    { 264, 944, 720, 0, 0 },
    { 265, 948, 700, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 266, 924, 808, 0, 0 },
    { 267, 932, 796, 0, 0 },
    { 268, 932, 884, 0, 0 },
    { 269, 936, 872, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 270, 900, 924, 0, 0 },
    { 271, 920, 904, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 76, 144, 0, 0 },
    { 1, 76, 160, 0, 0 },
    { 2, 76, 176, 0, 0 },
    { 3, 76, 192, 0, 0 },
    { 4, 76, 208, 0, 0 },
    { 5, 88, 152, 0, 0 },
    { 6, 88, 168, 0, 1 },
    { 7, 88, 184, 0, 1 },
    { 8, 88, 200, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 9, 80, 428, 0, 0 },
    { 10, 88, 420, 0, 0 },
    { 11, 96, 412, 0, 0 },
    { 12, 104, 404, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 13, 76, 516, 0, 0 },
    { 14, 76, 528, 0, 0 },
    { 15, 76, 540, 0, 0 },
    { 16, 76, 552, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 17, 100, 680, 0, 0 },
    { 18, 100, 696, 0, 0 },
    { 19, 100, 712, 0, 0 },
    { 20, 100, 728, 0, 0 },
    { 21, 112, 680, 0, 0 },
    { 22, 112, 696, 0, 0 },
    { 23, 112, 712, 0, 0 },
    { 24, 112, 728, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 25, 88, 920, 3, 1 },
    { 26, 96, 932, 3, 1 },
    { 27, 104, 944, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 28, 132, 88, 0, 0 },
    { 29, 140, 80, 0, 0 },
    { 30, 148, 72, 0, 0 },
    { 31, 156, 64, 0, 0 },
    { 32, 188, 84, 0, 0 },
    { 33, 188, 96, 0, 0 },
    { 34, 188, 108, 0, 0 },
    { 35, 188, 120, 0, 0 },
    { 36, 212, 64, 0, 0 },
    { 37, 224, 64, 0, 0 },
    { 38, 236, 64, 0, 0 },
    { 39, 248, 64, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 40, 176, 288, 3, 1 },
    { 41, 176, 300, 3, 1 },
    { 42, 176, 312, 3, 1 },
    { 43, 192, 288, 0, 0 },
    { 44, 192, 300, 0, 0 },
    { 45, 192, 312, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 46, 132, 468, 0, 0 },
    { 47, 144, 468, 0, 0 },
    { 48, 156, 468, 0, 0 },
    { 49, 168, 468, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 50, 212, 656, 0, 0 },
    { 51, 224, 652, 0, 0 },
    { 52, 236, 648, 0, 0 },
    { 53, 236, 748, 0, 0 },
    { 54, 248, 644, 0, 0 },
    { 55, 248, 760, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 56, 176, 840, 0, 0 },
    { 57, 176, 860, 0, 0 },
    { 58, 184, 852, 0, 0 },
    { 59, 184, 872, 0, 0 },
    { 60, 192, 844, 0, 0 },
    { 61, 192, 864, 0, 0 },
    { 62, 192, 884, 0, 0 },
    { 63, 200, 856, 0, 0 },
    { 64, 200, 876, 0, 0 },
    { 65, 208, 868, 0, 0 },
    { 66, 208, 888, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 67, 332, 72, 0, 0 },
    { 68, 332, 88, 0, 0 },
    { 69, 344, 72, 0, 0 },
    { 70, 344, 88, 0, 0 },
    { 71, 356, 72, 0, 0 },
    { 72, 356, 88, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 73, 272, 188, 0, 0 },
    { 74, 280, 176, 0, 0 },
    { 75, 288, 164, 0, 0 },
    { 76, 296, 152, 0, 0 },
    { 77, 304, 140, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 78, 344, 312, 3, 0 },
    { 79, 356, 312, 3, 0 },
    { 80, 368, 312, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 81, 276, 432, 0, 0 },
    { 82, 276, 444, 0, 0 },
    { 83, 276, 456, 0, 0 },
    { 84, 276, 468, 0, 0 },
    { 85, 276, 480, 0, 0 },
    { 86, 288, 444, 0, 0 },
    { 87, 288, 456, 0, 0 },
    { 88, 288, 468, 0, 0 },
    { 89, 300, 456, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 90, 276, 572, 0, 0 },
    { 91, 276, 584, 0, 0 },
    { 92, 276, 596, 0, 0 },
    { 93, 276, 608, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 94, 292, 652, 0, 0 },
    { 95, 300, 664, 0, 0 },
    { 96, 308, 676, 0, 0 },
    { 97, 316, 688, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 98, 260, 772, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 99, 340, 912, 0, 0 },
    { 100, 352, 912, 0, 0 },
    { 101, 364, 912, 0, 0 },
    { 102, 376, 912, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 103, 392, 152, 0, 0 },
    { 104, 400, 160, 0, 0 },
    { 105, 408, 168, 0, 0 },
    { 106, 432, 192, 0, 0 },
    { 107, 440, 200, 0, 0 },
    { 108, 448, 208, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 109, 504, 268, 0, 0 },
    { 110, 504, 280, 0, 0 },
    { 111, 504, 292, 0, 0 },
    { 112, 504, 304, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 113, 392, 456, 0, 0 },
    { 114, 404, 456, 0, 0 },
    { 115, 416, 456, 0, 0 },
    { 116, 428, 456, 0, 0 },
    { 117, 452, 392, 0, 0 },
    { 118, 456, 404, 0, 0 },
    { 119, 460, 416, 0, 0 },
    { 120, 464, 428, 0, 0 },
    { 121, 476, 476, 0, 0 },
    { 122, 484, 484, 0, 0 },
    { 123, 492, 492, 0, 0 },
    { 124, 500, 500, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 125, 392, 564, 0, 0 },
    { 126, 392, 576, 0, 0 },
    { 127, 404, 552, 0, 0 },
    { 128, 404, 576, 0, 0 },
    { 129, 416, 552, 0, 0 },
    { 130, 416, 576, 0, 0 },
    { 131, 428, 552, 0, 0 },
    { 132, 428, 564, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 133, 392, 716, 0, 0 },
    { 134, 392, 748, 0, 0 },
    { 135, 408, 700, 0, 0 },
    { 136, 408, 764, 0, 0 },
    { 137, 416, 732, 0, 1 },
    { 138, 424, 732, 0, 1 },
    { 139, 432, 700, 0, 0 },
    { 140, 432, 764, 0, 0 },
    { 141, 448, 716, 0, 0 },
    { 142, 448, 748, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 143, 416, 832, 0, 0 },
    { 144, 416, 844, 0, 0 },
    { 145, 416, 856, 0, 0 },
    { 146, 416, 864, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 147, 448, 928, 0, 0 },
    { 148, 456, 936, 0, 0 },
    { 149, 464, 944, 0, 0 },
    { 150, 472, 952, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 151, 604, 56, 0, 0 },
    { 152, 604, 68, 0, 0 },
    { 153, 604, 80, 0, 0 },
    { 154, 616, 56, 0, 0 },
    { 155, 616, 68, 0, 0 },
    { 156, 616, 80, 0, 0 },
    { 157, 628, 56, 0, 0 },
    { 158, 628, 68, 0, 0 },
    { 159, 628, 80, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 160, 560, 196, 0, 0 },
    { 161, 568, 180, 0, 0 },
    { 162, 576, 164, 0, 0 },
    { 163, 584, 148, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 164, 516, 268, 0, 0 },
    { 165, 516, 304, 0, 0 },
    { 166, 528, 268, 0, 0 },
    { 167, 528, 280, 0, 0 },
    { 168, 528, 292, 0, 0 },
    { 169, 528, 304, 0, 0 },
    { 170, 612, 272, 0, 0 },
    { 171, 628, 272, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 172, 592, 416, 0, 1 },
    { 173, 592, 440, 0, 1 },
    { 174, 592, 464, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 175, 568, 748, 0, 0 },
    { 176, 580, 740, 0, 0 },
    { 177, 592, 732, 0, 0 },
    { 178, 604, 724, 0, 0 },
    { 179, 616, 648, 0, 0 },
    { 180, 616, 660, 0, 0 },
    { 181, 616, 672, 0, 0 },
    { 182, 616, 684, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 183, 524, 868, 0, 0 },
    { 184, 536, 860, 0, 1 },
    { 185, 548, 852, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 186, 556, 968, 3, 0 },
    { 187, 568, 968, 3, 0 },
    { 188, 580, 968, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 189, 724, 92, 0, 0 },
    { 190, 736, 96, 0, 0 },
    { 191, 748, 100, 0, 0 },
    { 192, 760, 104, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 193, 716, 240, 0, 0 },
    { 194, 728, 236, 0, 0 },
    { 195, 740, 232, 0, 0 },
    { 196, 752, 228, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 197, 644, 272, 0, 0 },
    { 198, 660, 272, 0, 0 },
    { 199, 712, 308, 0, 0 },
    { 200, 720, 316, 0, 0 },
    { 201, 728, 324, 0, 0 },
    { 202, 736, 332, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 203, 672, 548, 0, 0 },
    { 204, 684, 544, 0, 0 },
    { 205, 696, 540, 0, 0 },
    { 206, 708, 536, 0, 0 },
    { 207, 720, 532, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 208, 644, 708, 0, 0 },
    { 209, 652, 716, 0, 0 },
    { 210, 660, 724, 0, 0 },
    { 211, 668, 732, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 212, 704, 828, 0, 0 },
    { 213, 716, 816, 0, 0 },
    { 214, 716, 828, 0, 0 },
    { 215, 716, 840, 0, 0 },
    { 216, 728, 828, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 217, 672, 948, 0, 0 },
    { 218, 676, 936, 0, 0 },
    { 219, 680, 924, 0, 0 },
    { 220, 684, 912, 0, 0 },
    { 221, 692, 960, 0, 0 },
    { 222, 704, 960, 0, 0 },
    { 223, 716, 960, 0, 0 },
    { 224, 728, 960, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 225, 796, 60, 3, 1 },
    { 226, 808, 60, 3, 1 },
    { 227, 820, 60, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 228, 840, 160, 0, 0 },
    { 229, 840, 168, 0, 0 },
    { 230, 848, 152, 0, 0 },
    { 231, 848, 176, 0, 0 },
    { 232, 856, 144, 0, 0 },
    { 233, 856, 184, 0, 0 },
    { 234, 864, 152, 0, 0 },
    { 235, 864, 176, 0, 0 },
    { 236, 872, 160, 0, 0 },
    { 237, 872, 168, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 238, 796, 432, 0, 0 },
    { 239, 796, 444, 0, 0 },
    { 240, 812, 420, 0, 0 },
    { 241, 812, 432, 0, 0 },
    { 242, 812, 444, 0, 0 },
    { 243, 812, 456, 0, 0 },
    { 244, 824, 420, 0, 0 },
    { 245, 824, 432, 0, 0 },
    { 246, 824, 444, 0, 0 },
    { 247, 824, 456, 0, 0 },
    { 248, 836, 432, 0, 0 },
    { 249, 836, 444, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 250, 864, 516, 0, 0 },
    { 251, 872, 528, 0, 0 },
    { 252, 880, 540, 0, 0 },
    { 253, 888, 552, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 254, 808, 728, 0, 0 },
    { 255, 820, 720, 0, 0 },
    { 256, 832, 712, 0, 0 },
    { 257, 844, 704, 0, 0 },
    { 258, 856, 696, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 259, 836, 828, 0, 0 },
    { 260, 848, 828, 0, 0 },
    { 261, 860, 828, 0, 0 },
    { 262, 872, 828, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 263, 916, 84, 0, 0 },
    { 264, 924, 92, 0, 0 },
    { 265, 932, 100, 0, 0 },
    { 266, 940, 108, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 267, 912, 304, 0, 0 },
    { 268, 916, 320, 0, 0 },
    { 269, 920, 336, 0, 0 },
    { 270, 924, 352, 0, 0 },
    { 271, 928, 368, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 272, 952, 448, 3, 1 },
    { 273, 952, 460, 3, 1 },
    { 274, 952, 472, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 275, 940, 644, 0, 0 },
    { 276, 940, 656, 0, 0 },
    { 277, 940, 668, 0, 0 },
    { 278, 952, 644, 0, 0 },
    { 279, 952, 656, 0, 0 },
    { 280, 952, 668, 0, 0 },
    { 281, 964, 644, 0, 0 },
    { 282, 964, 656, 0, 0 },
    { 283, 964, 668, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 284, 908, 816, 0, 0 },
    { 285, 908, 848, 0, 0 },
    { 286, 912, 804, 0, 0 },
    { 287, 912, 860, 0, 0 },
    { 288, 916, 792, 0, 0 },
    { 289, 916, 872, 0, 0 },
    { 290, 920, 780, 0, 0 },
    { 291, 920, 884, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 292, 952, 952, 3, 0 },
    { 293, 952, 960, 3, 0 },
    { 294, 960, 952, 3, 0 },
    { 295, 960, 960, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 88, 388, 3, 1 },
    { 1, 88, 400, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 2, 80, 568, 0, 0 },
    { 3, 84, 560, 0, 0 },
    { 4, 92, 552, 0, 0 },
    { 5, 92, 560, 0, 0 },
    { 6, 92, 572, 0, 0 },
    { 7, 92, 584, 0, 0 },
    { 8, 92, 596, 0, 0 },
    { 9, 100, 560, 0, 0 },
    { 10, 104, 568, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 11, 80, 884, 3, 1 },
    { 12, 88, 772, 0, 0 },
    { 13, 92, 792, 0, 0 },
    { 14, 100, 772, 0, 0 },
    { 15, 100, 812, 0, 0 },
    { 16, 104, 792, 0, 0 },
    { 17, 112, 812, 0, 0 },
    { 18, 112, 828, 0, 0 },
    { 19, 124, 828, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 20, 84, 900, 0, 0 },
    { 21, 92, 912, 0, 0 },
    { 22, 104, 924, 0, 0 },
    { 23, 120, 932, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 24, 212, 100, 0, 0 },
    { 25, 220, 88, 0, 0 },
    { 26, 232, 92, 0, 0 },
    { 27, 236, 84, 0, 0 },
    { 28, 248, 88, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 29, 132, 164, 0, 0 },
    { 30, 136, 144, 0, 0 },
    { 31, 140, 156, 0, 0 },
    { 32, 144, 136, 0, 0 },
    { 33, 148, 152, 0, 0 },
    { 34, 156, 132, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 35, 140, 328, 0, 0 },
    { 36, 144, 304, 0, 0 },
    { 37, 152, 288, 0, 0 },
    { 38, 152, 328, 0, 0 },
    { 39, 156, 304, 0, 0 },
    { 40, 164, 276, 0, 0 },
    { 41, 164, 288, 0, 0 },
    { 42, 176, 272, 0, 0 },
    { 43, 176, 280, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 44, 204, 412, 0, 0 },
    { 45, 208, 432, 0, 0 },
    { 46, 216, 452, 0, 0 },
    { 47, 228, 468, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 48, 136, 532, 0, 0 },
    { 49, 140, 576, 0, 0 },
    { 50, 148, 532, 0, 0 },
    { 51, 148, 600, 0, 0 },
    { 52, 156, 616, 0, 0 },
    { 53, 160, 532, 0, 0 },
    { 54, 168, 628, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 55, 140, 668, 0, 0 },
    { 56, 148, 660, 0, 0 },
    { 57, 156, 680, 0, 0 },
    { 58, 164, 676, 0, 0 },
    { 59, 172, 688, 0, 0 },
    { 60, 180, 684, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 61, 220, 836, 0, 0 },
    { 62, 220, 848, 0, 0 },
    { 63, 224, 856, 0, 0 },
    { 64, 232, 836, 0, 0 },
    { 65, 232, 848, 0, 0 },
    { 66, 232, 860, 0, 0 },
    { 67, 240, 840, 0, 0 },
    { 68, 244, 848, 0, 0 },
    { 69, 244, 860, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 70, 144, 936, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 71, 308, 216, 0, 0 },
    { 72, 320, 192, 0, 0 },
    { 73, 320, 220, 0, 0 },
    { 74, 328, 200, 0, 0 },
    { 75, 336, 180, 0, 0 },
    { 76, 344, 220, 0, 0 },
    { 77, 348, 172, 0, 0 },
    { 78, 352, 180, 0, 0 },
    { 79, 352, 208, 0, 1 },
    { 80, 360, 200, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 81, 272, 300, 0, 0 },
    { 82, 272, 316, 0, 0 },
    { 83, 276, 284, 0, 0 },
    { 84, 280, 336, 0, 0 },
    { 85, 284, 272, 0, 0 },
    { 86, 288, 292, 0, 0 },
    { 87, 288, 308, 0, 1 },
    { 88, 296, 328, 0, 0 },
    { 89, 296, 352, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 90, 336, 404, 0, 0 },
    { 91, 344, 432, 0, 1 },
    { 92, 348, 416, 0, 0 },
    { 93, 360, 428, 0, 0 },
    { 94, 364, 412, 0, 1 },
    { 95, 376, 436, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 96, 276, 524, 0, 0 },
    { 97, 292, 536, 0, 0 },
    { 98, 304, 540, 0, 0 },
    { 99, 320, 544, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 100, 276, 724, 3, 1 },
    { 101, 308, 736, 0, 0 },
    { 102, 320, 712, 0, 0 },
    { 103, 340, 712, 0, 0 },
    { 104, 340, 736, 0, 0 },
    { 105, 360, 708, 0, 0 },
    { 106, 360, 732, 0, 0 },
    { 107, 376, 700, 0, 0 },
    { 108, 376, 720, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 109, 372, 864, 0, 1 },
    { 110, 372, 876, 0, 0 },
    { 111, 372, 888, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 112, 300, 904, 0, 0 },
    { 113, 312, 912, 0, 0 },
    { 114, 332, 920, 0, 0 },
    { 115, 356, 928, 0, 0 },
    { 116, 376, 932, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 117, 416, 100, 0, 0 },
    { 118, 432, 84, 0, 0 },
    { 119, 432, 100, 0, 0 },
    { 120, 446, 84, 0, 0 },
    { 121, 448, 100, 0, 0 },
    { 122, 462, 84, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 123, 460, 152, 0, 0 },
    { 124, 472, 152, 0, 0 },
    { 125, 484, 152, 0, 0 },
    { 126, 488, 140, 0, 0 },
    { 127, 488, 164, 0, 0 },
    { 128, 496, 144, 0, 0 },
    { 129, 496, 152, 0, 0 },
    { 130, 496, 160, 0, 0 },
    { 131, 504, 152, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 132, 460, 324, 0, 0 },
    { 133, 464, 300, 0, 0 },
    { 134, 472, 288, 0, 0 },
    { 135, 484, 276, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 136, 400, 448, 0, 0 },
    { 137, 428, 448, 0, 0 },
    { 138, 436, 444, 0, 0 },
    { 139, 436, 452, 0, 0 },
    { 140, 444, 440, 0, 0 },
    { 141, 444, 456, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 142, 460, 576, 0, 0 },
    { 143, 464, 584, 0, 0 },
    { 144, 468, 592, 0, 0 },
    { 145, 468, 608, 0, 0 },
    { 146, 468, 620, 0, 0 },
    { 147, 472, 584, 0, 0 },
    { 148, 476, 576, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 149, 440, 668, 0, 0 },
    { 150, 452, 656, 0, 0 },
    { 151, 460, 644, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 152, 484, 776, 0, 0 },
    { 153, 500, 772, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 154, 452, 928, 0, 0 },
    { 155, 452, 936, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 156, 592, 76, 0, 0 },
    { 157, 592, 88, 0, 0 },
    { 158, 608, 76, 0, 0 },
    { 159, 608, 88, 0, 0 },
    { 160, 624, 76, 0, 0 },
    { 161, 624, 88, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 162, 524, 232, 0, 0 },
    { 163, 524, 244, 0, 0 },
    { 164, 536, 224, 0, 0 },
    { 165, 536, 236, 0, 0 },
    { 166, 536, 248, 0, 0 },
    { 167, 544, 240, 0, 0 },
    { 168, 548, 232, 0, 0 },
    { 169, 608, 140, 0, 0 },
    { 170, 608, 152, 0, 0 },
    { 171, 628, 140, 0, 0 },
    { 172, 628, 152, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 173, 584, 372, 0, 0 },
    { 174, 592, 360, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 175, 564, 444, 0, 0 },
    { 176, 568, 436, 0, 0 },
    { 177, 572, 404, 0, 0 },
    { 178, 572, 428, 0, 0 },
    { 179, 576, 388, 0, 0 },
    { 180, 576, 436, 0, 0 },
    { 181, 580, 444, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 182, 572, 568, 0, 0 },
    { 183, 572, 584, 0, 0 },
    { 184, 580, 572, 0, 0 },
    { 185, 580, 580, 0, 0 },
    { 186, 588, 576, 0, 0 },
    { 187, 608, 572, 0, 0 },
    { 188, 608, 580, 0, 0 },
    { 189, 624, 572, 0, 0 },
    { 190, 624, 580, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 191, 560, 724, 0, 0 },
    { 192, 568, 712, 0, 0 },
    { 193, 576, 696, 0, 0 },
    { 194, 580, 676, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 195, 532, 872, 0, 0 },
    { 196, 536, 880, 0, 0 },
    { 197, 544, 872, 0, 0 },
    { 198, 548, 880, 0, 0 },
    { 199, 556, 872, 0, 0 },
    { 200, 560, 880, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 201, 596, 920, 0, 0 },
    { 202, 596, 932, 0, 0 },
    { 203, 616, 916, 0, 0 },
    { 204, 616, 924, 0, 0 },
    { 205, 632, 908, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 206, 724, 80, 0, 0 },
    { 207, 740, 84, 0, 0 },
    { 208, 752, 92, 0, 0 },
    { 209, 760, 100, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 210, 652, 316, 0, 0 },
    { 211, 660, 304, 0, 0 },
    { 212, 668, 316, 0, 0 },
    { 213, 672, 296, 0, 0 },
    { 214, 672, 304, 0, 0 },
    { 215, 684, 304, 0, 0 },
    { 216, 684, 316, 0, 0 },
    { 217, 688, 292, 0, 0 },
    { 218, 696, 304, 0, 0 },
    { 219, 700, 292, 0, 0 },
    { 220, 700, 316, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 221, 684, 464, 0, 0 },
    { 222, 704, 464, 0, 0 },
    { 223, 720, 472, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 224, 668, 584, 0, 0 },
    { 225, 680, 584, 0, 0 },
    { 226, 680, 592, 0, 0 },
    { 227, 692, 608, 0, 0 },
    { 228, 696, 592, 0, 0 },
    { 229, 700, 628, 0, 0 },
    { 230, 708, 600, 0, 0 },
    { 231, 716, 612, 0, 0 },
    { 232, 724, 628, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 233, 700, 668, 3, 1 },
    { 234, 700, 688, 0, 0 },
    { 235, 728, 668, 3, 1 },
    { 236, 728, 688, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 237, 656, 816, 0, 0 },
    { 238, 656, 868, 0, 0 },
    { 239, 672, 808, 0, 0 },
    { 240, 680, 796, 0, 0 },
    { 241, 680, 860, 0, 0 },
    { 242, 684, 780, 0, 0 },
    { 243, 696, 844, 0, 0 },
    { 244, 708, 824, 0, 0 },
    { 245, 716, 800, 0, 0 },
    { 246, 720, 776, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 247, 872, 68, 0, 0 },
    { 248, 884, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 249, 832, 188, 0, 1 },
    { 250, 840, 168, 0, 0 },
    { 251, 840, 184, 0, 0 },
    { 252, 844, 200, 0, 1 },
    { 253, 848, 176, 0, 0 },
    { 254, 848, 192, 0, 0 },
    { 255, 852, 168, 0, 1 },
    { 256, 856, 184, 0, 0 },
    { 257, 856, 200, 0, 0 },
    { 258, 864, 180, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 259, 812, 308, 0, 0 },
    { 260, 812, 324, 0, 0 },
    { 261, 820, 332, 0, 1 },
    { 262, 824, 312, 0, 0 },
    { 263, 828, 344, 0, 0 },
    { 264, 836, 324, 0, 0 },
    { 265, 840, 332, 0, 0 },
    { 266, 844, 344, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 267, 856, 412, 0, 0 },
    { 268, 864, 412, 0, 0 },
    { 269, 864, 436, 0, 0 },
    { 270, 868, 456, 0, 0 },
    { 271, 872, 436, 0, 0 },
    { 272, 872, 472, 0, 0 },
    { 273, 876, 456, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 274, 772, 520, 0, 0 },
    { 275, 780, 528, 0, 0 },
    { 276, 784, 520, 0, 0 },
    { 277, 784, 540, 0, 0 },
    { 278, 788, 556, 0, 0 },
    { 279, 792, 532, 0, 0 },
    { 280, 800, 548, 0, 0 },
    { 281, 804, 568, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 282, 808, 728, 3, 1 },
    { 283, 832, 716, 0, 0 },
    { 284, 852, 700, 0, 0 },
    { 285, 860, 688, 0, 0 },
    { 286, 868, 668, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 287, 900, 80, 0, 0 },
    { 288, 916, 92, 0, 0 },
    { 289, 924, 120, 0, 1 },
    { 290, 928, 108, 0, 0 },
    { 291, 932, 120, 0, 0 },
    { 292, 940, 120, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 293, 928, 276, 0, 0 },
    { 294, 928, 288, 0, 0 },
    { 295, 928, 300, 0, 0 },
    { 296, 928, 368, 0, 1 },
    { 297, 944, 276, 0, 0 },
    { 298, 944, 288, 0, 0 },
    { 299, 944, 300, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 300, 916, 452, 0, 0 },
    { 301, 920, 460, 0, 0 },
    { 302, 928, 424, 0, 0 },
    { 303, 928, 436, 0, 0 },
    { 304, 928, 448, 0, 0 },
    { 305, 928, 460, 0, 0 },
    { 306, 928, 468, 0, 0 },
    { 307, 936, 460, 0, 0 },
    { 308, 940, 452, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 309, 932, 608, 3, 0 },
    { 310, 932, 620, 3, 1 },
    { 311, 944, 608, 3, 0 },
    { 312, 944, 620, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 313, 944, 748, 0, 0 },
    { 314, 944, 760, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 315, 904, 836, 0, 0 },
    { 316, 912, 808, 0, 0 },
    { 317, 912, 828, 0, 0 },
    { 318, 920, 816, 0, 0 },
    { 319, 924, 792, 0, 0 },
    { 320, 928, 804, 0, 0 },
    { 321, 932, 776, 0, 0 },
    { 322, 936, 784, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 108, 108, 0, 1 },
    { 1, 120, 108, 0, 0 },
    { 2, 120, 120, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 3, 84, 212, 0, 0 },
    { 4, 96, 224, 0, 0 },
    { 5, 108, 236, 0, 0 },
    { 6, 120, 248, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 7, 104, 276, 0, 0 },
    { 8, 120, 260, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 9, 72, 456, 0, 0 },
    { 10, 84, 468, 0, 0 },
    { 11, 96, 480, 0, 0 },
    { 12, 108, 492, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 13, 84, 552, 0, 0 },
    { 14, 96, 540, 0, 0 },
    { 15, 112, 524, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 16, 72, 712, 0, 0 },
    { 17, 84, 724, 0, 0 },
    { 18, 96, 736, 0, 0 },
    { 19, 108, 748, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 20, 92, 800, 0, 0 },
    { 21, 92, 860, 0, 0 },
    { 22, 104, 788, 0, 0 },
    { 23, 104, 872, 0, 0 },
    { 24, 116, 776, 0, 0 },
    { 25, 116, 884, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 26, 132, 108, 0, 0 },
    { 27, 132, 120, 0, 0 },
    { 28, 144, 108, 0, 0 },
    { 29, 144, 120, 0, 0 },
    { 30, 156, 108, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 31, 132, 132, 0, 0 },
    { 32, 144, 144, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 33, 136, 372, 0, 0 },
    { 34, 148, 360, 0, 0 },
    { 35, 160, 336, 0, 0 },
    { 36, 160, 348, 0, 0 },
    { 37, 172, 324, 0, 0 },
    { 38, 172, 348, 0, 0 },
    { 39, 188, 336, 0, 0 },
    { 40, 204, 292, 0, 0 },
    { 41, 216, 304, 0, 0 },
    { 42, 228, 292, 0, 0 },
    { 43, 232, 276, 0, 0 },
    { 44, 244, 264, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 45, 148, 404, 0, 0 },
    { 46, 164, 420, 0, 0 },
    { 47, 188, 444, 0, 0 },
    { 48, 200, 456, 0, 0 },
    { 49, 212, 468, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 50, 152, 588, 0, 0 },
    { 51, 168, 572, 0, 0 },
    { 52, 176, 588, 0, 0 },
    { 53, 188, 576, 0, 0 },
    { 54, 204, 560, 0, 0 },
    { 55, 216, 548, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 56, 136, 648, 0, 0 },
    { 57, 148, 660, 0, 0 },
    { 58, 160, 672, 0, 0 },
    { 59, 216, 728, 0, 0 },
    { 60, 228, 740, 0, 1 },
    { 61, 244, 756, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 62, 132, 900, 0, 0 },
    { 63, 144, 912, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 64, 272, 144, 3, 0 },
    { 65, 284, 156, 3, 1 },
    { 66, 296, 168, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { 67, 264, 264, 0, 0 },
    { 68, 276, 276, 0, 0 },
    { 69, 316, 316, 7, 1 },
    { 70, 324, 324, 7, 1 },
    { 71, 360, 360, 0, 0 },
    { 72, 372, 372, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 73, 264, 504, 0, 0 },
    { 74, 276, 492, 0, 0 },
    { 75, 288, 480, 0, 0 },
    { 76, 292, 456, 0, 0 },
    { 77, 304, 444, 0, 0 },
    { 78, 312, 452, 3, 1 },
    { 79, 320, 460, 0, 0 },
    { 80, 332, 448, 0, 0 },
    { 81, 360, 404, 0, 0 },
    { 82, 372, 392, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 83, 288, 544, 3, 1 },
    { 84, 300, 556, 3, 1 },
    { 85, 328, 588, 0, 0 },
    { 86, 340, 600, 0, 0 },
    { 87, 368, 624, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 88, 264, 756, 0, 0 },
    { 89, 276, 744, 0, 0 },
    { 90, 296, 708, 0, 0 },
    { 91, 308, 696, 0, 0 },
    { 92, 312, 724, 0, 0 },
    { 93, 324, 712, 0, 0 },
    { 94, 328, 692, 0, 0 },
    { 95, 344, 676, 0, 0 },
    { 96, 360, 660, 0, 0 },
    { 97, 372, 648, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 98, 364, 876, 0, 0 },
    { 99, 376, 888, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 100, 360, 912, 0, 0 },
    { 101, 368, 900, 0, 0 },
    { 102, 368, 912, 0, 0 },
    { 103, 376, 900, 0, 0 },
    { 104, 376, 912, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 105, 476, 160, 0, 1 },
    { 106, 488, 148, 0, 0 },
    { 107, 500, 136, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 108, 396, 372, 0, 0 },
    { 109, 408, 360, 0, 0 },
    { 110, 440, 316, 3, 1 },
    { 111, 448, 324, 3, 1 },
    { 112, 472, 292, 0, 0 },
    { 113, 488, 276, 0, 0 },
    { 114, 496, 268, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 115, 392, 392, 0, 0 },
    { 116, 404, 404, 0, 0 },
    { 117, 452, 452, 0, 0 },
    { 118, 464, 464, 0, 0 },
    { 119, 476, 476, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 120, 424, 596, 7, 1 },
    { 121, 432, 588, 7, 1 },
    { 122, 472, 548, 0, 0 },
    { 123, 488, 532, 0, 0 },
    { 124, 504, 516, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 125, 388, 644, 0, 0 },
    { 126, 396, 652, 0, 0 },
    { 127, 436, 712, 0, 0 },
    { 128, 452, 696, 0, 0 },
    { 129, 452, 728, 0, 0 },
    { 130, 468, 712, 0, 0 },
    { 131, 472, 728, 0, 0 },
    { 132, 496, 752, 0, 0 },
    { 133, 504, 760, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 134, 388, 888, 0, 0 },
    { 135, 400, 876, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 136, 388, 900, 0, 0 },
    { 137, 388, 912, 0, 0 },
    { 138, 400, 900, 0, 0 },
    { 139, 400, 912, 0, 0 },
    { 140, 412, 912, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 141, 516, 132, 0, 0 },
    { 142, 532, 148, 0, 0 },
    { 143, 548, 164, 0, 0 },
    { 144, 564, 180, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 145, 516, 260, 0, 0 },
    { 146, 524, 268, 0, 0 },
    { 147, 536, 280, 0, 0 },
    { 148, 596, 340, 0, 1 },
    { 149, 608, 352, 0, 0 },
    { 150, 620, 364, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 151, 564, 456, 0, 0 },
    { 152, 576, 428, 0, 0 },
    { 153, 576, 444, 0, 0 },
    { 154, 584, 420, 0, 0 },
    { 155, 584, 452, 0, 0 },
    { 156, 592, 444, 0, 0 },
    { 157, 600, 436, 0, 0 },
    { 158, 628, 392, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 159, 524, 524, 0, 0 },
    { 160, 536, 536, 0, 0 },
    { 161, 548, 548, 0, 0 },
    { 162, 596, 596, 3, 1 },
    { 163, 604, 604, 3, 1 },
    { 164, 612, 612, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 165, 520, 756, 0, 0 },
    { 166, 532, 744, 0, 0 },
    { 167, 544, 732, 0, 1 },
    { 168, 552, 708, 0, 0 },
    { 169, 564, 696, 0, 0 },
    { 170, 568, 724, 0, 0 },
    { 171, 580, 712, 0, 0 },
    { 172, 628, 648, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 173, 620, 876, 0, 0 },
    { 174, 632, 888, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 175, 608, 912, 0, 0 },
    { 176, 620, 900, 0, 0 },
    { 177, 620, 912, 0, 0 },
    { 178, 632, 900, 0, 0 },
    { 179, 632, 912, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 180, 720, 172, 0, 1 },
    { 181, 732, 160, 0, 0 },
    { 182, 744, 148, 0, 0 },
    { 183, 756, 136, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 184, 644, 376, 0, 0 },
    { 185, 652, 368, 0, 0 },
    { 186, 672, 332, 0, 0 },
    { 187, 680, 324, 0, 0 },
    { 188, 688, 316, 0, 0 },
    { 189, 736, 284, 0, 0 },
    { 190, 744, 276, 0, 0 },
    { 191, 752, 268, 0, 0 },
    { 192, 760, 260, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 193, 644, 388, 0, 0 },
    { 194, 688, 432, 0, 0 },
    { 195, 696, 440, 0, 0 },
    { 196, 712, 456, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 197, 644, 632, 0, 0 },
    { 198, 656, 620, 0, 0 },
    { 199, 668, 608, 0, 0 },
    { 200, 760, 516, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 201, 644, 644, 0, 0 },
    { 202, 656, 656, 0, 0 },
    { 203, 668, 668, 0, 0 },
    { 204, 680, 680, 0, 0 },
    { 205, 732, 732, 0, 0 },
    { 206, 740, 740, 0, 0 },
    { 207, 748, 748, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 208, 644, 888, 0, 0 },
    { 209, 656, 876, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 210, 644, 900, 0, 0 },
    { 211, 644, 912, 0, 0 },
    { 212, 656, 900, 0, 0 },
    { 213, 656, 912, 0, 0 },
    { 214, 668, 912, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 215, 864, 108, 0, 0 },
    { 216, 876, 108, 0, 0 },
    { 217, 876, 120, 0, 0 },
    { 218, 888, 108, 0, 0 },
    { 219, 888, 120, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 220, 876, 144, 0, 0 },
    { 221, 888, 132, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 222, 784, 272, 3, 1 },
    { 223, 792, 280, 3, 1 },
    { 224, 800, 288, 3, 1 },
    { 225, 860, 348, 0, 0 },
    { 226, 872, 360, 0, 0 },
    { 227, 884, 372, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 228, 776, 500, 0, 0 },
    { 229, 780, 488, 0, 0 },
    { 230, 788, 496, 0, 0 },
    { 231, 796, 472, 0, 0 },
    { 232, 804, 480, 0, 0 },
    { 233, 812, 456, 0, 0 },
    { 234, 820, 464, 0, 0 },
    { 235, 824, 452, 0, 0 },
    { 236, 872, 404, 0, 0 },
    { 237, 884, 392, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 238, 792, 536, 0, 0 },
    { 239, 800, 544, 0, 0 },
    { 240, 816, 560, 0, 0 },
    { 241, 824, 568, 0, 0 },
    { 242, 880, 624, 0, 0 },
    { 243, 888, 632, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 244, 780, 748, 0, 0 },
    { 245, 792, 736, 0, 0 },
    { 246, 804, 724, 0, 0 },
    { 247, 828, 724, 0, 0 },
    { 248, 832, 676, 0, 0 },
    { 249, 840, 712, 0, 0 },
    { 250, 844, 664, 0, 0 },
    { 251, 856, 652, 0, 0 },
    { 252, 872, 660, 0, 0 },
    { 253, 884, 648, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 254, 844, 944, 0, 1 },
    { 255, 864, 924, 0, 0 },
    { 256, 884, 904, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 257, 900, 108, 0, 0 },
    { 258, 900, 120, 0, 0 },
    { 259, 912, 108, 0, 1 },
    { -1, 0, 0, 0, -1, },


    { 260, 912, 236, 0, 0 },
    { 261, 924, 224, 0, 0 },
    { 262, 936, 212, 0, 0 },
    { 263, 948, 200, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 264, 900, 260, 0, 0 },
    { 265, 908, 268, 0, 0 },
    { 266, 916, 276, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 267, 904, 392, 0, 0 },
    { 268, 904, 500, 0, 0 },
    { 269, 916, 408, 0, 0 },
    { 270, 916, 488, 0, 0 },
    { 271, 928, 476, 0, 0 },
    { 272, 940, 464, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 273, 900, 516, 0, 0 },
    { 274, 912, 528, 0, 0 },
    { 275, 924, 540, 0, 0 },
    { 276, 936, 552, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 277, 900, 760, 0, 0 },
    { 278, 908, 752, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 279, 904, 776, 0, 0 },
    { 280, 904, 884, 0, 0 },
    { 281, 916, 788, 0, 0 },
    { 282, 924, 864, 0, 0 },
    { 283, 928, 800, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 0, 88, 72, 3, 1 },
    { 1, 108, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 2, 88, 136, 0, 0 },
    { 3, 88, 152, 0, 0 },
    { 4, 88, 184, 0, 0 },
    { 5, 88, 228, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 6, 80, 304, 0, 0 },
    { 7, 80, 320, 0, 0 },
    { 8, 88, 260, 0, 0 },
    { 9, 88, 300, 0, 0 },
    { 10, 88, 312, 3, 1 },
    { 11, 88, 324, 0, 0 },
    { 12, 88, 348, 0, 0 },
    { 13, 96, 304, 0, 0 },
    { 14, 96, 320, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 15, 88, 488, 3, 0 },
    { 16, 88, 500, 3, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 17, 88, 672, 0, 0 },
    { 18, 88, 684, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 19, 88, 788, 0, 0 },
    { 20, 88, 800, 0, 0 },
    { 21, 88, 812, 0, 0 },
    { 22, 88, 820, 0, 0 },
    { 23, 88, 864, 0, 0 },
    { 24, 88, 876, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 25, 88, 900, 0, 0 },
    { 26, 88, 912, 0, 0 },
    { 27, 92, 948, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 28, 148, 72, 0, 0 },
    { 29, 152, 80, 0, 0 },
    { 30, 184, 80, 0, 0 },
    { 31, 188, 72, 0, 0 },
    { 32, 224, 80, 0, 0 },
    { 33, 232, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 34, 148, 188, 0, 0 },
    { 35, 148, 200, 0, 0 },
    { 36, 148, 208, 0, 0 },
    { 37, 160, 160, 0, 0 },
    { 38, 172, 160, 0, 0 },
    { 39, 184, 148, 0, 0 },
    { 40, 184, 160, 0, 0 },
    { 41, 208, 148, 0, 0 },
    { 42, 228, 240, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 43, 148, 276, 0, 0 },
    { 44, 148, 288, 0, 0 },
    { 45, 148, 336, 0, 0 },
    { 46, 148, 348, 0, 0 },
    { 47, 220, 312, 0, 0 },
    { 48, 228, 288, 0, 0 },
    { 49, 228, 300, 0, 0 },
    { 50, 228, 324, 0, 0 },
    { 51, 228, 336, 0, 0 },
    { 52, 228, 348, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 53, 192, 500, 0, 0 },
    { 54, 212, 508, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 55, 232, 516, 0, 0 },
    { 56, 252, 524, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 57, 140, 672, 0, 0 },
    { 58, 148, 672, 0, 0 },
    { 59, 148, 724, 0, 0 },
    { 60, 148, 736, 0, 0 },
    { 61, 148, 748, 0, 0 },
    { 62, 148, 760, 0, 0 },
    { 63, 156, 672, 0, 0 },
    { 64, 220, 684, 3, 1 },
    { 65, 228, 672, 0, 0 },
    { 66, 228, 684, 0, 0 },
    { 67, 228, 696, 0, 0 },
    { 68, 228, 744, 0, 0 },
    { 69, 228, 756, 0, 0 },
    { 70, 228, 764, 0, 0 },
    { 71, 236, 684, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 72, 148, 816, 0, 0 },
    { 73, 148, 832, 0, 0 },
    { 74, 212, 872, 0, 0 },
    { 75, 220, 872, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 76, 128, 948, 0, 0 },
    { 77, 168, 940, 0, 0 },
    { 78, 168, 956, 0, 0 },
    { 79, 172, 948, 0, 0 },
    { 80, 212, 948, 0, 0 },
    { 81, 216, 940, 0, 0 },
    { 82, 216, 956, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 83, 284, 72, 0, 0 },
    { 84, 300, 72, 0, 0 },
    { 85, 316, 72, 0, 0 },
    { 86, 348, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 87, 260, 148, 0, 0 },
    { 88, 260, 228, 0, 0 },
    { 89, 272, 228, 0, 0 },
    { 90, 276, 148, 0, 0 },
    { 91, 276, 228, 0, 0 },
    { 92, 304, 160, 0, 0 },
    { 93, 328, 148, 0, 0 },
    { 94, 332, 228, 0, 0 },
    { 95, 336, 160, 0, 0 },
    { 96, 340, 228, 0, 0 },
    { 97, 348, 148, 0, 0 },
    { 98, 348, 228, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 99, 308, 332, 0, 0 },
    { 100, 308, 348, 0, 0 },
    { 101, 332, 308, 0, 0 },
    { 102, 348, 308, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 103, 308, 672, 0, 0 },
    { 104, 308, 688, 0, 0 },
    { 105, 332, 712, 0, 0 },
    { 106, 348, 712, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 107, 268, 792, 0, 0 },
    { 108, 268, 872, 0, 0 },
    { 109, 276, 872, 0, 0 },
    { 110, 292, 792, 0, 0 },
    { 111, 300, 864, 0, 0 },
    { 112, 304, 792, 0, 0 },
    { 113, 308, 792, 0, 0 },
    { 114, 312, 864, 0, 0 },
    { 115, 320, 872, 0, 0 },
    { 116, 324, 864, 0, 0 },
    { 117, 336, 872, 0, 0 },
    { 118, 348, 792, 0, 0 },
    { 119, 348, 872, 0, 0 },
    { 120, 372, 792, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 121, 268, 948, 0, 0 },
    { 122, 280, 948, 0, 0 },
    { 123, 292, 948, 0, 0 },
    { 124, 340, 948, 0, 0 },
    { 125, 348, 948, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 126, 480, 72, 3, 0 },
    { 127, 480, 108, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 128, 480, 188, 0, 0 },
    { 129, 500, 148, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 130, 448, 448, 3, 1 },
    { 131, 468, 468, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 132, 448, 552, 3, 1 },
    { 133, 468, 572, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 134, 480, 828, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 135, 480, 908, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 136, 540, 108, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 137, 540, 188, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 138, 552, 448, 3, 1 },
    { 139, 572, 468, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 140, 552, 552, 3, 1 },
    { 141, 572, 572, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 142, 520, 868, 0, 0 },
    { 143, 540, 792, 0, 0 },
    { 144, 540, 828, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 145, 540, 908, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 146, 672, 72, 0, 0 },
    { 147, 680, 76, 3, 1 },
    { 148, 736, 72, 0, 0 },
    { 149, 744, 72, 0, 0 },
    { 150, 756, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 151, 672, 148, 0, 0 },
    { 152, 672, 228, 0, 0 },
    { 153, 680, 228, 0, 0 },
    { 154, 688, 148, 0, 0 },
    { 155, 704, 148, 0, 0 },
    { 156, 716, 228, 0, 0 },
    { 157, 740, 228, 0, 0 },
    { 158, 764, 228, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 159, 672, 308, 0, 0 },
    { 160, 688, 308, 0, 0 },
    { 161, 712, 332, 0, 0 },
    { 162, 712, 348, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 163, 672, 712, 0, 0 },
    { 164, 688, 712, 0, 0 },
    { 165, 712, 672, 0, 0 },
    { 166, 712, 688, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 167, 672, 872, 0, 0 },
    { 168, 684, 792, 0, 0 },
    { 169, 692, 872, 0, 0 },
    { 170, 696, 792, 0, 0 },
    { 171, 704, 800, 0, 0 },
    { 172, 712, 872, 0, 0 },
    { 173, 724, 792, 0, 0 },
    { 174, 732, 800, 0, 0 },
    { 175, 732, 872, 0, 0 },
    { 176, 740, 792, 0, 0 },
    { 177, 752, 872, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 178, 672, 940, 0, 0 },
    { 179, 672, 948, 0, 0 },
    { 180, 688, 940, 0, 0 },
    { 181, 688, 948, 0, 0 },
    { 182, 704, 948, 0, 0 },
    { 183, 704, 956, 0, 0 },
    { 184, 748, 948, 0, 0 },
    { 185, 748, 956, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 186, 800, 72, 0, 0 },
    { 187, 812, 72, 0, 0 },
    { 188, 824, 72, 0, 0 },
    { 189, 836, 72, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 190, 776, 148, 0, 0 },
    { 191, 784, 148, 0, 0 },
    { 192, 792, 148, 0, 0 },
    { 193, 840, 148, 0, 0 },
    { 194, 848, 148, 0, 0 },
    { 195, 872, 188, 0, 0 },
    { 196, 872, 200, 0, 0 },
    { 197, 872, 240, 0, 0 },
    { 198, 880, 232, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 199, 792, 272, 0, 0 },
    { 200, 792, 284, 0, 0 },
    { 201, 792, 292, 0, 0 },
    { 202, 792, 336, 3, 1 },
    { 203, 792, 344, 0, 0 },
    { 204, 792, 352, 0, 0 },
    { 205, 872, 288, 0, 0 },
    { 206, 872, 308, 0, 0 },
    { 207, 872, 328, 0, 0 },
    { 208, 872, 348, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 209, 768, 476, 0, 0 },
    { 210, 788, 484, 0, 0 },
    { 211, 808, 492, 0, 0 },
    { 212, 828, 500, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 213, 792, 672, 0, 0 },
    { 214, 792, 680, 0, 0 },
    { 215, 792, 724, 0, 0 },
    { 216, 792, 736, 0, 0 },
    { 217, 792, 744, 0, 0 },
    { 218, 792, 756, 0, 0 },
    { 219, 860, 724, 0, 0 },
    { 220, 860, 744, 0, 1 },
    { 221, 860, 764, 0, 0 },
    { 222, 872, 672, 0, 0 },
    { 223, 872, 680, 0, 0 },
    { 224, 872, 688, 0, 0 },
    { 225, 872, 732, 0, 0 },
    { 226, 872, 756, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 227, 776, 792, 0, 0 },
    { 228, 800, 872, 0, 0 },
    { 229, 812, 872, 0, 0 },
    { 230, 824, 872, 0, 0 },
    { 231, 860, 872, 0, 0 },
    { 232, 872, 792, 0, 0 },
    { 233, 872, 804, 0, 0 },
    { 234, 872, 844, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 235, 792, 948, 0, 0 },
    { 236, 804, 948, 0, 0 },
    { 237, 816, 948, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 238, 900, 72, 0, 0 },
    { 239, 912, 72, 0, 0 },
    { 240, 924, 72, 0, 0 },
    { 241, 952, 72, 3, 1 },
    { -1, 0, 0, 0, -1, },


    { 242, 952, 132, 0, 0 },
    { 243, 952, 152, 0, 0 },
    { 244, 952, 172, 0, 0 },
    { 245, 952, 192, 0, 0 },
    { 246, 952, 244, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 247, 952, 316, 0, 0 },
    { 248, 952, 332, 0, 0 },
    { 249, 952, 348, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 250, 948, 500, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { -1, 0, 0, 0, -1, },


    { 251, 952, 672, 0, 0 },
    { 252, 952, 688, 0, 0 },
    { 253, 952, 704, 0, 0 },
    { 254, 952, 720, 0, 0 },
    { 255, 952, 736, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 256, 952, 836, 0, 0 },
    { 257, 952, 848, 0, 0 },
    { 258, 952, 860, 0, 0 },
    { -1, 0, 0, 0, -1, },


    { 259, 908, 948, 0, 0 },
    { 260, 912, 932, 0, 0 },
    { 261, 920, 948, 0, 0 },
    { 262, 924, 932, 0, 0 },
    { 263, 932, 948, 0, 0 },
    { 264, 952, 904, 0, 0 },
    { 265, 952, 912, 0, 0 },
    { 266, 952, 948, 0, 1 },
    { -1, 0, 0, 0, -1, },
};


const struct UNK_8C87904 gUnknown_080DF040[] = {


    { 0, 464, 96, 32, 32, 0 },
    { 0, 96, 400, 32, 32, 0 },


    { 1, 464, 400, 32, 32, 0 },
    { 1, 464, 864, 32, 32, 0 },

    { 0, 800, 80, 32, 32, 0 },
    { 0, 824, 352, 32, 32, 0 },
    { 0, 928, 624, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },


    { 0, 160, 320, 32, 32, 0 },
    { 0, 208, 528, 32, 32, 0 },
    { 0, 784, 528, 32, 32, 0 },
    { 0, 800, 192, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },


    { 0, 144, 144, 32, 32, 0 },
    { 0, 144, 848, 32, 32, 0 },
    { 1, 560, 560, 32, 32, 0 },
    { 0, 608, 608, 32, 32, 0 },
    { 0, 848, 144, 32, 32, 0 },
    { 0, 848, 848, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },


    { 0, 96, 336, 32, 32, 0 },
    { 0, 272, 784, 32, 32, 0 },
    { 0, 400, 64, 32, 32, 0 },
    { 0, 592, 816, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },


    { 0, 80, 512, 32, 32, 0 },
    { 0, 128, 480, 32, 32, 0 },
    { 1, 304, 864, 32, 32, 0 },
    { 0, 480, 80, 32, 32, 0 },
    { 0, 496, 864, 32, 32, 0 },
    { 0, 528, 128, 32, 32, 0 },
    { 0, 528, 912, 32, 32, 0 },
    { 1, 864, 224, 32, 32, 0 },
    { 0, 864, 512, 32, 32, 0 },
    { 0, 912, 480, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },


    { 0, 160, 160, 32, 32, 0 },
    { 0, 320, 832, 32, 32, 0 },
    { 1, 416, 416, 32, 32, 0 },
    { 0, 416, 656, 32, 32, 0 },
    { 1, 512, 480, 32, 32, 0 },
    { 0, 544, 288, 32, 32, 0 },
    { 0, 560, 544, 32, 32, 0 },
    { 1, 672, 560, 32, 32, 0 },
    { 0, 672, 832, 32, 32, 0 },
    { 0, 688, 288, 32, 32, 0 },
    { 0, 832, 144, 32, 32, 0 },
    { 0, 912, 640, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },


    { 0, 64, 592, 32, 32, 0 },
    { 0, 144, 400, 32, 32, 0 },
    { 0, 400, 208, 32, 32, 0 },
    { 0, 400, 784, 32, 32, 0 },
    { 0, 592, 64, 32, 32, 0 },
    { 0, 592, 848, 32, 32, 0 },
    { 0, 784, 400, 32, 32, 0 },
    { 0, 928, 592, 32, 32, 0 },
    { -1, 0, 0, 0, -1, },
};

const struct UNK_80DF670 gUnknown_080DF2F8[] = {

    { 85, 0, 20, 16, 0 },
    { 85, 1, 20, 16, 0 },
    { 85, 1, 20, 16, 1 },
    { 86, 0, 24, 8, 0 },
    { 86, 1, 20, 8, 0 },
    { 86, 1, 20, 8, 1 },
    { 86, 2, 20, 16, 0 },
    { 86, 3, 20, 16, 0 },
    { 86, 3, 20, 16, 1 },
    { 87, 0, 36, 4, 0 },
    { 87, 2, 30, 4, 0 },
    { 87, 2, 30, 4, 1 },
    { 89, 0, 16, 16, 0 },
    { 89, 0, 16, 16, 0 },
    { 89, 0, 16, 16, 0 },
    { 88, 0, 20, 16, 0 },
    { 88, 1, 30, 16, 0 },
    { 88, 1, 30, 16, 1 },
    { 90, 0, 20, 16, 0 },
    { 29, 0, 25, 16, 0 },
    { 34, 0, 28, 16, 0 },
    { 65535, 65535, 65535, },


    { 176, 0, 16, 16, 0 },
    { 176, 1, 16, 16, 0 },
    { 176, 1, 16, 16, 1 },
    { 177, 1, 20, 8, 0 },
    { 177, 0, 20, 8, 0 },
    { 177, 0, 20, 8, 1 },
    { 177, 3, 20, 16, 0 },
    { 177, 2, 25, 16, 0 },
    { 177, 2, 25, 16, 1 },
    { 178, 0, 30, 4, 0 },
    { 178, 2, 25, 4, 0 },
    { 178, 2, 25, 4, 1 },
    { 180, 0, 16, 16, 0 },
    { 180, 0, 16, 16, 0 },
    { 180, 0, 16, 16, 0 },
    { 179, 0, 24, 16, 0 },
    { 179, 1, 24, 16, 0 },
    { 179, 1, 24, 16, 1 },
    { 181, 0, 16, 16, 0 },
    { 120, 0, 24, 16, 0 },
    { 125, 0, 25, 16, 0 },
    { 65535, 65535, 65535, },


    { 267, 0, 16, 16, 0 },
    { 267, 1, 16, 16, 0 },
    { 267, 1, 16, 16, 1 },
    { 268, 0, 20, 8, 0 },
    { 268, 1, 25, 8, 0 },
    { 268, 1, 25, 8, 1 },
    { 268, 2, 16, 16, 0 },
    { 268, 3, 20, 16, 0 },
    { 268, 3, 20, 16, 1 },
    { 269, 0, 36, 4, 0 },
    { 269, 2, 25, 4, 0 },
    { 269, 2, 25, 4, 1 },
    { 271, 0, 16, 16, 0 },
    { 271, 0, 16, 16, 0 },
    { 271, 0, 16, 16, 0 },
    { 270, 0, 20, 16, 0 },
    { 270, 1, 30, 16, 0 },
    { 270, 1, 30, 16, 1 },
    { 272, 0, 20, 16, 0 },
    { 211, 0, 25, 16, 0 },
    { 216, 0, 30, 16, 0 },
    { 65535, 65535, 65535, },


    { 358, 0, 20, 16, 0 },
    { 358, 1, 20, 16, 0 },
    { 358, 1, 20, 16, 1 },
    { 359, 0, 20, 8, 0 },
    { 359, 1, 20, 8, 0 },
    { 359, 1, 20, 8, 1 },
    { 359, 2, 30, 16, 0 },
    { 359, 3, 25, 16, 0 },
    { 359, 3, 25, 16, 1 },
    { 360, 0, 36, 4, 0 },
    { 360, 2, 30, 4, 0 },
    { 360, 2, 30, 4, 1 },
    { 362, 0, 16, 16, 0 },
    { 362, 0, 16, 16, 0 },
    { 362, 0, 16, 16, 0 },
    { 361, 0, 20, 16, 0 },
    { 361, 1, 30, 16, 0 },
    { 361, 1, 30, 16, 1 },
    { 363, 0, 20, 16, 0 },
    { 302, 0, 36, 16, 0 },
    { 307, 0, 36, 16, 0 },
    { 65535, 65535, 65535, },


    { 449, 0, 20, 16, 0 },
    { 449, 1, 20, 16, 0 },
    { 449, 1, 20, 16, 1 },
    { 450, 0, 25, 8, 0 },
    { 450, 1, 20, 8, 0 },
    { 450, 1, 20, 8, 1 },
    { 450, 2, 16, 16, 0 },
    { 450, 3, 20, 16, 0 },
    { 450, 3, 20, 16, 1 },
    { 451, 0, 36, 4, 0 },
    { 451, 2, 25, 4, 0 },
    { 451, 2, 25, 4, 1 },
    { 453, 0, 16, 16, 0 },
    { 453, 0, 16, 16, 0 },
    { 453, 0, 16, 16, 0 },
    { 452, 0, 24, 16, 0 },
    { 452, 1, 25, 16, 0 },
    { 452, 1, 25, 16, 1 },
    { 454, 0, 20, 16, 0 },
    { 393, 0, 30, 16, 0 },
    { 398, 0, 20, 16, 0 },
    { 65535, 65535, 65535, },
};
