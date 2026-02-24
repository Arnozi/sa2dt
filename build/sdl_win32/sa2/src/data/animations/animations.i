# 0 "src/data/animations/animations.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/data/animations/animations.c"
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
# 2 "src/data/animations/animations.c" 2
# 1 "include/constants/anim_commands.h" 1
# 3 "src/data/animations/animations.c" 2

const s32 anim_0000__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x0, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0x14, 16,
    6, 1,

    -1, 0x24, 16,
    6, 2,

    -1, 0x34, 16,
    6, 3,

    -1, 0x44, 20,
    6, 4,

    -1, 0x58, 20,
    6, 5,

    -1, 0x6C, 16,
    6, 6,

    -1, 0x7C, 20,
    6, 7,

    -1, 0x0, 20,
    6, 0,

    -1, 0x14, 16,
    6, 1,

    -1, 0x90, 16,
    6, 8,

    -1, 0xA0, 16,
    6, 9,

    -1, 0x44, 20,
    6, 4,

    -1, 0x58, 20,
    6, 5,

    -1, 0x6C, 16,
    6, 6,

    -1, 0x7C, 20,
    6, 7,

    -1, 0x0, 20,
    6, 0,

    -1, 0x14, 16,
    6, 1,

    -1, 0x24, 16,
    6, 2,

    -1, 0x34, 16,
    6, 3,

    -1, 0x44, 20,
    6, 4,

    -1, 0x58, 20,
    6, 5,

    -1, 0x6C, 16,
    6, 6,

    -1, 0x7C, 20,
    6, 7,

    -1, 0xB0, 20,
    6, 10,

    -1, 0xC4, 20,
    12, 11,

    -1, 0xD8, 20,
    6, 12,

    -1, 0xC4, 20,
    6, 11,

    -1, 0xD8, 20,
    6, 12,

    -1, 0xC4, 20,
    12, 11,

    -1, 0xB0, 20,
    8, 10,

    -1, 0x0, 20,
    6, 0,

    -1, 0x58, 20,
    6, 5,

    -1, 0x6C, 16,
    6, 6,

    -1, 0x7C, 20,
    6, 7,

    -3, 181,
};

const s32 * const anim_0000[1] = {
    anim_0000__v0_l0,
};

const s32 anim_0001__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEC, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 0,

    -1, 0x100, 20,
    12, 1,

    -1, 0x114, 20,
    4, 2,

    -1, 0x128, 20,
    4, 3,

    -1, 0x13C, 25,
    4, 4,

    -1, 0x155, 25,
    4, 5,

    -1, 0x16E, 20,
    6, 6,

    -1, 0x155, 25,
    4, 5,

    -1, 0x13C, 25,
    6, 4,

    -1, 0x155, 25,
    4, 5,

    -1, 0x16E, 20,
    6, 6,

    -1, 0x155, 25,
    4, 5,

    -1, 0x182, 20,
    4, 7,

    -1, 0x128, 20,
    4, 3,

    -1, 0x114, 20,
    4, 2,

    -1, 0x196, 20,
    4, 8,

    -1, 0x1AA, 25,
    4, 9,

    -1, 0x1C3, 25,
    4, 10,

    -1, 0x1DC, 20,
    6, 11,

    -1, 0x1C3, 25,
    4, 10,

    -1, 0x1AA, 25,
    6, 9,

    -1, 0x1C3, 25,
    4, 10,

    -1, 0x1DC, 20,
    4, 11,

    -1, 0x1C3, 25,
    4, 10,

    -1, 0x196, 20,
    4, 8,

    -1, 0x114, 20,
    4, 2,

    -1, 0x100, 20,
    4, 1,

    -1, 0x1F0, 20,
    4, 12,

    -1, 0x204, 20,
    4, 13,

    -1, 0x218, 30,
    4, 14,

    -1, 0x236, 30,
    4, 15,

    -1, 0x254, 30,
    4, 16,

    -1, 0x272, 24,
    4, 17,

    -1, 0x218, 30,
    4, 14,

    -1, 0x236, 30,
    4, 15,

    -1, 0x254, 30,
    4, 16,

    -1, 0x28A, 24,
    4, 18,

    -1, 0x2A2, 30,
    4, 19,

    -1, 0x2C0, 30,
    4, 20,

    -1, 0x2DE, 30,
    4, 21,

    -1, 0x2FC, 24,
    4, 22,

    -1, 0x2A2, 30,
    4, 19,

    -1, 0x2C0, 30,
    4, 20,

    -1, 0x2DE, 30,
    4, 21,

    -1, 0x2FC, 24,
    4, 22,

    -1, 0x314, 30,
    4, 23,

    -1, 0x236, 30,
    4, 15,

    -1, 0x254, 30,
    4, 16,

    -1, 0x272, 24,
    4, 17,
    -1, 0x218, 30,
    4, 14,

    -1, 0x236, 30,
    4, 15,

    -1, 0x254, 30,
    4, 16,

    -1, 0x272, 24,
    4, 17,

    -3, 20,
};

const s32 anim_0001__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x218, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 14,

    -1, 0x236, 30,
    4, 15,

    -1, 0x254, 30,
    4, 16,

    -1, 0x332, 30,
    4, 24,

    -1, 0x350, 30,
    4, 25,

    -1, 0x100, 20,
    16, 1,

    -1, 0xEC, 20,
    4, 0,

    -4,
};

const s32 * const anim_0001[2] = {
    anim_0001__v0_l0,
    anim_0001__v1_l0,
};

const s32 anim_0002__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x36E, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x37E, 16,
    1, 1,

    -1, 0x38E, 16,
    1, 2,
    -1, 0x39E, 16,
    1, 3,

    -3, 5,
};

const s32 anim_0002__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x37E, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -1, 0x36E, 16,
    1, 0,

    -4,
};

const s32 * const anim_0002[2] = {
    anim_0002__v0_l0,
    anim_0002__v1_l0,
};

const s32 anim_0003__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3AE, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x3BE, 16,
    2, 1,

    -1, 0x3CE, 16,
    2, 2,

    -1, 0x3DE, 16,
    2, 3,

    -3, 29,
};

const s32 anim_0003__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3EE, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 4,

    -1, 0x3FE, 16,
    2, 5,

    -1, 0x40E, 16,
    2, 6,

    -1, 0x41E, 16,
    2, 7,

    -4,
};

const s32 * const anim_0003[2] = {
    anim_0003__v0_l0,
    anim_0003__v1_l0,
};

const s32 anim_0004__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x42E, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x43E, 16,
    2, 1,

    -1, 0x44E, 16,
    2, 2,

    -1, 0x45E, 16,
    2, 3,

    -1, 0x42E, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x43E, 16,
    2, 1,

    -1, 0x44E, 16,
    2, 2,

    -1, 0x45E, 16,
    2, 3,

    -1, 0x42E, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x43E, 16,
    2, 1,

    -1, 0x44E, 16,
    2, 2,

    -1, 0x45E, 16,
    2, 3,

    -3, 81,
};

const s32 * const anim_0004[1] = {
    anim_0004__v0_l0,
};

const s32 anim_0005__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x46E, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x482, 20,
    1, 1,

    -4,
};

const s32 * const anim_0005[1] = {
    anim_0005__v0_l0,
};

const s32 anim_0006__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x496, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x4AA, 20,
    2, 1,

    -1, 0x4BE, 25,
    2, 2,

    -1, 0x4D7, 20,
    2, 3,

    -4,
};

const s32 * const anim_0006[1] = {
    anim_0006__v0_l0,
};

const s32 anim_0007__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4EB, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,
    -1, 0x504, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 1,

    -1, 0x51D, 25,
    4, 2,

    -3, 13,
};

const s32 anim_0007__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4EB, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 0,

    -4,
};

const s32 * const anim_0007[2] = {
    anim_0007__v0_l0,
    anim_0007__v1_l0,
};

const s32 anim_0008__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x536, 12,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x542, 16,
    1, 1,
    -1, 0x552, 20,
    3, 2,

    -1, 0x566, 24,
    3, 3,

    -3, 10,
};

const s32 anim_0008__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x57E, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 4,

    -1, 0x592, 20,
    1, 5,

    -1, 0x5A6, 16,
    1, 6,

    -4,
};

const s32 * const anim_0008[2] = {
    anim_0008__v0_l0,
    anim_0008__v1_l0,
};

const s32 anim_0009__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5B6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 0,

    -1, 0x5F6, 64,
    8, 1,

    -1, 0x636, 64,
    8, 2,

    -1, 0x676, 64,
    8, 3,

    -1, 0x6B6, 64,
    8, 4,

    -1, 0x6F6, 64,
    8, 5,

    -1, 0x736, 64,
    8, 6,

    -1, 0x776, 64,
    8, 7,

    -3, 46,
};

const s32 anim_0009__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7B6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 8,

    -1, 0x7F6, 64,
    8, 9,

    -1, 0x836, 64,
    8, 10,

    -1, 0x876, 64,
    8, 11,

    -1, 0x8B6, 64,
    8, 12,

    -1, 0x8F6, 64,
    8, 13,

    -1, 0x936, 64,
    8, 14,

    -1, 0x976, 64,
    8, 15,

    -3, 46,
};

const s32 anim_0009__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9B6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 16,

    -1, 0x9F6, 64,
    8, 17,

    -1, 0xA36, 64,
    8, 18,

    -1, 0xA76, 64,
    8, 19,

    -1, 0xAB6, 64,
    8, 20,

    -1, 0xAF6, 64,
    8, 21,

    -1, 0xB36, 64,
    8, 22,

    -1, 0xB76, 64,
    8, 23,

    -3, 46,
};

const s32 anim_0009__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBB6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 24,

    -1, 0xBF6, 64,
    8, 25,

    -1, 0xC36, 64,
    8, 26,

    -1, 0xC76, 64,
    8, 27,

    -1, 0xCB6, 64,
    8, 28,

    -1, 0xCF6, 64,
    8, 29,

    -1, 0xD36, 64,
    8, 30,

    -1, 0xD76, 64,
    8, 31,

    -3, 46,
};

const s32 anim_0009__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 32,

    -1, 0xDF6, 64,
    8, 33,

    -1, 0xE36, 64,
    8, 34,

    -1, 0xE76, 64,
    8, 35,

    -1, 0xEB6, 64,
    8, 36,

    -1, 0xEF6, 64,
    8, 37,

    -1, 0xF36, 64,
    8, 38,

    -1, 0xF76, 64,
    8, 39,

    -3, 46,
};

const s32 anim_0009__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 32,

    -1, 0xDF6, 64,
    8, 33,

    -1, 0xE36, 64,
    8, 34,

    -1, 0xE76, 64,
    8, 35,

    -1, 0xEB6, 64,
    8, 36,

    -1, 0xEF6, 64,
    8, 37,

    -1, 0xF36, 64,
    8, 38,

    -1, 0xF76, 64,
    8, 39,

    -3, 46,
};

const s32 * const anim_0009[6] = {
    anim_0009__v0_l0,
    anim_0009__v1_l0,
    anim_0009__v2_l0,
    anim_0009__v3_l0,
    anim_0009__v4_l0,
    anim_0009__v5_l0,
};

const s32 anim_0010__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFB6, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0xFC6, 16,
    2, 1,

    -4,
};

const s32 anim_0010__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFD6, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0xFE6, 16,
    2, 3,

    -1, 0xFF6, 16,
    2, 4,

    -1, 0x1006, 16,
    2, 5,

    -1, 0x1016, 16,
    2, 6,

    -1, 0x1026, 16,
    2, 7,

    -1, 0x1036, 16,
    2, 8,

    -1, 0x1046, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0010__v2_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1056, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,
    -1, 0x106F, 20,
    2, 11,

    -1, 0x1083, 25,
    2, 12,

    -1, 0x109C, 30,
    2, 13,

    -3, 15,
};

const s32 * const anim_0010[3] = {
    anim_0010__v0_l0,
    anim_0010__v1_l0,
    anim_0010__v2_l0,
};

const s32 anim_0011__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10BA, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x10CA, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 1,

    -4,
};

const s32 anim_0011__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10DA, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0x10EA, 16,
    2, 3,

    -1, 0x10FA, 16,
    2, 4,

    -1, 0x110A, 16,
    2, 5,

    -1, 0x111A, 16,
    2, 6,

    -1, 0x112A, 16,
    2, 7,

    -1, 0x113A, 16,
    2, 8,

    -1, 0x114A, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0011__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x115A, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,
    -1, 0x1173, 20,
    2, 11,

    -1, 0x1187, 25,
    2, 12,

    -1, 0x11A0, 30,
    2, 13,

    -3, 15,
};

const s32 * const anim_0011[3] = {
    anim_0011__v0_l0,
    anim_0011__v1_l0,
    anim_0011__v2_l0,
};

const s32 anim_0012__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11BE, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x11D2, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -1, 0x11E2, 16,
    1, 2,

    -1, 0x11D2, 16,
    1, 1,

    -4,
};

const s32 * const anim_0012[1] = {
    anim_0012__v0_l0,
};

const s32 anim_0013__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11F2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x1206, 20,
    2, 1,
    -1, 0x121A, 20,
    2, 2,

    -1, 0x122E, 20,
    2, 3,

    -1, 0x1242, 20,
    2, 4,

    -3, 15,
};

const s32 * const anim_0013[1] = {
    anim_0013__v0_l0,
};

const s32 anim_0014__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1256, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x1266, 30,
    -6, 0, (((-10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-23 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -1, 0x1284, 18,
    2, 2,

    -1, 0x1296, 24,
    1, 3,

    -1, 0x12AE, 30,
    1, 4,

    -1, 0x12CC, 30,
    1, 5,

    -1, 0x12EA, 36,
    1, 6,

    -1, 0x130E, 25,
    1, 7,

    -1, 0x1327, 30,
    1, 8,

    -1, 0x1345, 30,
    1, 9,

    -1, 0x1363, 20,
    1, 10,

    -4,
};

const s32 anim_0014__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1377, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-21 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 11,

    -1, 0x138F, 24,
    2, 12,

    -1, 0x13A7, 24,
    2, 13,

    -3, 24,
};

const s32 anim_0014__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13BF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 14,

    -1, 0x13CF, 16,
    1, 15,

    -1, 0x13DF, 16,
    1, 16,

    -4,
};

const s32 * const anim_0014[3] = {
    anim_0014__v0_l0,
    anim_0014__v1_l0,
    anim_0014__v2_l0,
};

const s32 anim_0015__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13EF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x1403, 18,
    3, 1,

    -1, 0x1415, 24,
    6, 2,

    -1, 0x1403, 18,
    2, 1,

    -1, 0x142D, 25,
    2, 3,

    -1, 0x1446, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 4,

    -1, 0x145A, 20,
    2, 5,

    -1, 0x146E, 16,
    2, 6,
    -1, 0x147E, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 7,

    -1, 0x148E, 16,
    2, 8,

    -1, 0x149E, 16,
    2, 9,

    -1, 0x14AE, 16,
    2, 10,

    -3, 26,
};

const s32 anim_0015__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14BE, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 11,

    -1, 0x14D2, 16,
    2, 12,

    -1, 0x14E2, 20,
    1, 13,

    -1, 0x14F6, 20,
    2, 14,
    -1, 0x150A, 20,
    3, 15,

    -1, 0x151E, 20,
    3, 16,

    -1, 0x1532, 20,
    3, 17,

    -3, 15,
};

const s32 anim_0015__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1546, 16,
    2, 18,

    -1, 0x1556, 16,
    2, 19,

    -3, 13,
};

const s32 * const anim_0015[3] = {
    anim_0015__v0_l0,
    anim_0015__v1_l0,
    anim_0015__v2_l0,
};

const s32 anim_0016__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1566, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x1576, 30,
    -6, 0, (((-14 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-23 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -1, 0x1594, 18,
    2, 2,

    -1, 0x15A6, 24,
    1, 3,

    -1, 0x15BE, 30,
    1, 4,

    -1, 0x15DC, 30,
    1, 5,

    -1, 0x15FA, 36,
    1, 6,

    -1, 0x161E, 25,
    1, 7,

    -1, 0x1637, 30,
    1, 8,

    -1, 0x1655, 30,
    1, 9,

    -1, 0x1673, 20,
    1, 10,

    -4,
};

const s32 anim_0016__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1687, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-21 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 11,

    -1, 0x169F, 24,
    2, 12,

    -1, 0x16B7, 24,
    2, 13,

    -3, 24,
};

const s32 anim_0016__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16CF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 14,

    -1, 0x16DF, 16,
    1, 15,

    -1, 0x16EF, 16,
    1, 16,

    -4,
};

const s32 anim_0016__v3_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x16FF, 9,
    1, 17,

    -1, 0x1708, 15,
    1, 18,

    -1, 0x1717, 15,
    1, 19,

    -1, 0x16FF, 9,
    1, 17,

    -1, 0x1708, 15,
    1, 18,

    -1, 0x1717, 15,
    1, 19,

    -3, 33,
};

const s32 * const anim_0016[4] = {
    anim_0016__v0_l0,
    anim_0016__v1_l0,
    anim_0016__v2_l0,
    anim_0016__v3_l0,
};

const s32 anim_0017__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1726, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -1, 0x1736, 12,
    1, 1,

    -1, 0x1742, 16,
    1, 2,

    -1, 0x1752, 16,
    1, 3,

    -1, 0x1762, 16,
    1, 4,

    -1, 0x1772, 12,
    1, 5,

    -1, 0x177E, 16,
    1, 6,

    -1, 0x178E, 20,
    1, 7,
    -1, 0x17A2, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0x17B2, 16,
    2, 9,

    -1, 0x17C2, 16,
    2, 10,

    -1, 0x17D2, 16,
    2, 11,

    -3, 23,
};

const s32 anim_0017__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x17E2, 8,
    2, 12,

    -1, 0x17EA, 16,
    2, 13,

    -1, 0x17FA, 16,
    2, 14,

    -1, 0x180A, 16,
    2, 15,

    -1, 0x181A, 16,
    2, 16,

    -1, 0x182A, 16,
    2, 17,

    -1, 0x183A, 12,
    2, 18,

    -1, 0x1846, 16,
    2, 19,

    -4,
};

const s32 * const anim_0017[2] = {
    anim_0017__v0_l0,
    anim_0017__v1_l0,
};

const s32 anim_0018__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1856, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x1866, 16,
    2, 1,

    -1, 0x1876, 16,
    2, 2,

    -1, 0x1886, 16,
    2, 3,

    -1, 0x1896, 16,
    2, 4,

    -1, 0x18A6, 16,
    2, 5,

    -1, 0x18B6, 16,
    2, 6,

    -1, 0x18C6, 16,
    2, 7,
    -1, 0x18D6, 16,
    2, 8,

    -1, 0x18E6, 16,
    2, 9,

    -1, 0x18F6, 16,
    2, 10,

    -1, 0x1906, 16,
    2, 11,

    -3, 20,
};

const s32 * const anim_0018[1] = {
    anim_0018__v0_l0,
};

const s32 anim_0019__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1916, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 0,

    -1, 0x1926, 16,
    2, 1,

    -1, 0x1936, 16,
    2, 2,

    -1, 0x1946, 16,
    2, 3,
    -1, 0x1956, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 4,

    -1, 0x196A, 24,
    2, 5,

    -1, 0x1982, 20,
    2, 6,

    -3, 18,
};

const s32 anim_0019__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1996, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 7,

    -1, 0x19AF, 25,
    2, 8,

    -3, 16,
};

const s32 anim_0019__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x19C8, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 9,

    -4,
};

const s32 * const anim_0019[3] = {
    anim_0019__v0_l0,
    anim_0019__v1_l0,
    anim_0019__v2_l0,
};

const s32 anim_0028__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x19E1, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x19F5, 25,
    8, 1,

    -1, 0x1A0E, 20,
    8, 2,

    -1, 0x1A22, 25,
    8, 3,
    -1, 0x1A3B, 20,
    8, 4,

    -3, 5,
};

const s32 anim_0028__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1A4F, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 5,

    -1, 0x1A6D, 24,
    5, 6,

    -1, 0x1A85, 24,
    5, 7,

    -1, 0x1A9D, 25,
    5, 8,

    -1, 0x1AB6, 25,
    5, 9,

    -4,
};

const s32 anim_0028__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1ACF, 16,
    5, 10,

    -1, 0x1ADF, 16,
    3, 11,

    -1, 0x1AEF, 20,
    3, 12,

    -1, 0x1B03, 20,
    3, 13,

    -4,
};

const s32 * const anim_0028[3] = {
    anim_0028__v0_l0,
    anim_0028__v1_l0,
    anim_0028__v2_l0,
};

const s32 anim_0029__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1B17, 20,
    3, 0,

    -1, 0x1B2B, 25,
    3, 1,

    -1, 0x1B17, 20,
    12, 0,

    -1, 0x1B44, 16,
    2, 2,
    -1, 0x1B54, 20,
    3, 3,

    -1, 0x1B68, 20,
    3, 4,

    -3, 10,
};

const s32 * const anim_0029[1] = {
    anim_0029__v0_l0,
};

const s32 anim_0030__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1B7C, 20,
    2, 0,

    -1, 0x1B90, 20,
    2, 1,

    -1, 0x1BA4, 20,
    4, 2,

    -1, 0x1BB8, 25,
    4, 3,

    -1, 0x1BD1, 25,
    4, 4,

    -1, 0x1BEA, 20,
    6, 5,

    -1, 0x1BD1, 25,
    4, 4,

    -1, 0x1BB8, 25,
    6, 3,

    -1, 0x1BD1, 25,
    4, 4,

    -1, 0x1BEA, 20,
    6, 5,

    -1, 0x1BD1, 25,
    4, 4,

    -1, 0x1BFE, 20,
    4, 6,

    -1, 0x1BA4, 20,
    4, 2,

    -1, 0x1B90, 20,
    4, 1,

    -1, 0x1C12, 20,
    4, 7,

    -1, 0x1C26, 25,
    4, 8,

    -1, 0x1C3F, 25,
    4, 9,

    -1, 0x1C58, 20,
    6, 10,

    -1, 0x1C3F, 25,
    4, 9,

    -1, 0x1C26, 25,
    6, 8,

    -1, 0x1C3F, 25,
    4, 9,

    -1, 0x1C58, 20,
    4, 10,

    -1, 0x1C3F, 25,
    4, 9,

    -1, 0x1C12, 20,
    4, 7,

    -1, 0x1B90, 20,
    4, 1,

    -1, 0x1B7C, 20,
    4, 0,

    -1, 0x1C6C, 20,
    8, 11,

    -1, 0x1C80, 15,
    4, 12,

    -1, 0x1C8F, 20,
    4, 13,

    -1, 0x1CA3, 15,
    4, 14,

    -1, 0x1CB2, 15,
    4, 15,

    -1, 0x1C80, 15,
    4, 12,

    -1, 0x1C8F, 20,
    4, 13,

    -1, 0x1CA3, 15,
    4, 14,

    -1, 0x1CB2, 15,
    4, 15,

    -1, 0x1C6C, 20,
    4, 11,

    -1, 0x1B7C, 20,
    8, 0,

    -1, 0x1CC1, 20,
    6, 16,

    -1, 0x1CD5, 16,
    6, 17,

    -1, 0x1CE5, 16,
    2, 18,

    -4,
};

const s32 anim_0030__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1CE5, 16,
    1, 18,

    -1, 0x1CF5, 20,
    6, 19,

    -1, 0x1D09, 20,
    60, 20,

    -1, 0x1D1D, 25,
    4, 21,

    -4,
};

const s32 * const anim_0030[2] = {
    anim_0030__v0_l0,
    anim_0030__v1_l0,
};

const s32 anim_0031__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D36, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x1D46, 24,
    3, 1,

    -1, 0x1D5E, 25,
    3, 2,

    -4,
};

const s32 anim_0031__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D77, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -1, 0x1D90, 20,
    2, 4,

    -1, 0x1DA4, 25,
    2, 5,

    -1, 0x1DBD, 25,
    2, 6,

    -3, 26,
};

const s32 anim_0031__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1DD6, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 7,

    -1, 0x1DEA, 20,
    2, 8,

    -1, 0x1DFE, 20,
    4, 9,

    -4,
};

const s32 * const anim_0031[3] = {
    anim_0031__v0_l0,
    anim_0031__v1_l0,
    anim_0031__v2_l0,
};

const s32 anim_0032__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1E12, 20,
    5, 0,

    -1, 0x1E26, 20,
    5, 1,

    -1, 0x1E3A, 20,
    16, 2,

    -1, 0x1E4E, 20,
    3, 3,

    -1, 0x1E62, 20,
    3, 4,

    -1, 0x1E76, 20,
    3, 5,

    -1, 0x1E8A, 20,
    3, 6,

    -1, 0x1E9E, 25,
    3, 7,

    -1, 0x1EB7, 20,
    4, 8,

    -1, 0x1ECB, 20,
    4, 9,

    -1, 0x1EDF, 20,
    12, 10,

    -1, 0x1EF3, 20,
    6, 11,

    -1, 0x1F07, 25,
    5, 12,

    -1, 0x1F20, 25,
    12, 13,

    -4,
};

const s32 * const anim_0032[1] = {
    anim_0032__v0_l0,
};

const s32 anim_0033__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1F39, 20,
    5, 0,

    -1, 0x1F4D, 20,
    5, 1,

    -1, 0x1F61, 20,
    16, 2,

    -1, 0x1F75, 20,
    3, 3,

    -1, 0x1F89, 20,
    3, 4,

    -1, 0x1F9D, 24,
    3, 5,

    -1, 0x1FB5, 24,
    3, 6,

    -1, 0x1FCD, 20,
    3, 7,

    -1, 0x1FE1, 20,
    3, 8,

    -1, 0x1FF5, 20,
    3, 9,

    -1, 0x2009, 20,
    3, 10,

    -1, 0x201D, 20,
    3, 11,

    -1, 0x2031, 20,
    6, 12,

    -1, 0x2045, 20,
    3, 13,

    -1, 0x2059, 20,
    2, 14,

    -1, 0x206D, 25,
    3, 15,

    -1, 0x2086, 25,
    10, 16,

    -1, 0x206D, 25,
    3, 15,

    -1, 0x209F, 20,
    2, 17,

    -1, 0x20B3, 20,
    12, 18,

    -4,
};

const s32 * const anim_0033[1] = {
    anim_0033__v0_l0,
};

const s32 anim_0034__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20C7, 20,
    3, 0,

    -1, 0x20DB, 24,
    3, 1,

    -1, 0x20F3, 24,
    3, 2,

    -1, 0x210B, 24,
    3, 3,

    -1, 0x2123, 24,
    3, 4,

    -1, 0x213B, 28,
    3, 5,

    -1, 0x2157, 24,
    3, 6,

    -1, 0x216F, 20,
    3, 7,

    -1, 0x2183, 20,
    3, 8,

    -1, 0x2197, 20,
    3, 9,

    -1, 0x21AB, 20,
    3, 10,

    -1, 0x21BF, 20,
    3, 11,

    -1, 0x21D3, 24,
    2, 12,

    -1, 0x21EB, 24,
    6, 13,

    -1, 0x2203, 20,
    3, 14,

    -1, 0x2217, 20,
    3, 15,

    -1, 0x222B, 20,
    60, 16,

    -4,
};

const s32 * const anim_0034[1] = {
    anim_0034__v0_l0,
};

const s32 anim_0035__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x223F, 20,
    3, 0,

    -1, 0x2253, 20,
    3, 1,

    -1, 0x2267, 25,
    3, 2,

    -1, 0x2280, 20,
    3, 3,

    -1, 0x2294, 20,
    3, 4,

    -1, 0x22A8, 20,
    3, 5,

    -1, 0x22BC, 25,
    3, 6,

    -1, 0x22D5, 25,
    3, 7,
    -1, 0x22EE, 25,
    3, 8,

    -1, 0x2307, 25,
    3, 9,

    -1, 0x2320, 25,
    3, 10,

    -1, 0x2339, 25,
    3, 11,

    -1, 0x2352, 25,
    3, 12,

    -1, 0x236B, 25,
    3, 13,

    -1, 0x22BC, 25,
    3, 6,

    -1, 0x2384, 25,
    3, 14,

    -3, 40,
};

const s32 * const anim_0035[1] = {
    anim_0035__v0_l0,
};

const s32 anim_0036__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x239D, 15,
    1, 0,

    -4,
};

const s32 anim_0036__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23AC, 15,
    1, 1,

    -4,
};

const s32 anim_0036__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23BB, 25,
    1, 2,

    -4,
};

const s32 anim_0036__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23D4, 25,
    1, 3,

    -4,
};

const s32 * const anim_0036[4] = {
    anim_0036__v0_l0,
    anim_0036__v1_l0,
    anim_0036__v2_l0,
    anim_0036__v3_l0,
};

const s32 anim_0037__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23ED, 15,
    3, 0,

    -1, 0x23FC, 20,
    3, 1,

    -1, 0x2410, 25,
    3, 2,

    -1, 0x2429, 20,
    3, 3,

    -1, 0x243D, 15,
    3, 4,

    -1, 0x244C, 20,
    3, 5,

    -1, 0x2460, 25,
    3, 6,

    -1, 0x2479, 20,
    3, 7,

    -3, 43,
};

const s32 anim_0037__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248D, 20,
    3, 8,

    -1, 0x24A1, 20,
    3, 9,

    -1, 0x24B5, 30,
    3, 10,

    -1, 0x24D3, 25,
    3, 11,

    -1, 0x24EC, 20,
    3, 12,

    -1, 0x2500, 25,
    3, 13,

    -1, 0x2519, 30,
    3, 14,

    -1, 0x2537, 25,
    3, 15,

    -3, 43,
};

const s32 * const anim_0037[2] = {
    anim_0037__v0_l0,
    anim_0037__v1_l0,
};

const s32 anim_0048__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2550, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x2564, 20,
    6, 1,

    -1, 0x2550, 20,
    2, 0,

    -4,
};

const s32 anim_0048__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2578, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 2,

    -1, 0x258C, 20,
    1, 3,
    -1, 0x25A0, 18,
    3, 4,

    -1, 0x25B2, 18,
    3, 5,

    -1, 0x25C4, 18,
    3, 6,

    -3, 15,
};

const s32 anim_0048__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x258C, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 3,

    -1, 0x2578, 20,
    3, 2,

    -1, 0x25D6, 20,
    3, 7,
    -1, 0x25EA, 30,
    2, 8,

    -1, 0x2608, 24,
    2, 9,

    -1, 0x2620, 25,
    2, 10,

    -3, 15,
};

const s32 * const anim_0048[3] = {
    anim_0048__v0_l0,
    anim_0048__v1_l0,
    anim_0048__v2_l0,
};

const s32 anim_0049__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2639, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x264D, 20,
    4, 1,

    -1, 0x2661, 28,
    1, 2,

    -4,
};

const s32 anim_0049__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x267D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 3,

    -1, 0x2691, 20,
    1, 4,

    -1, 0x26A5, 25,
    1, 5,

    -1, 0x26BE, 30,
    1, 6,

    -1, 0x26DC, 20,
    1, 7,

    -1, 0x26F0, 20,
    1, 8,

    -1, 0x2704, 25,
    1, 9,

    -1, 0x271D, 25,
    1, 10,

    -3, 49,
};

const s32 anim_0049__v2_l0[] = {
    -2, 3, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x2736, 32,
    1, 11,

    -1, 0x2756, 32,
    1, 12,

    -1, 0x2776, 32,
    1, 13,

    -1, 0x2796, 32,
    1, 14,

    -1, 0x27B6, 32,
    1, 15,

    -1, 0x27D6, 32,
    1, 16,

    -1, 0x27F6, 32,
    1, 17,

    -1, 0x2816, 32,
    1, 18,

    -3, 43,
};

const s32 * const anim_0049[3] = {
    anim_0049__v0_l0,
    anim_0049__v1_l0,
    anim_0049__v2_l0,
};

const s32 anim_0050__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2836, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0050__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2836, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    5, 0,

    -1, 0x284E, 20,
    4, 1,

    -1, 0x2862, 30,
    3, 2,

    -1, 0x2880, 25,
    2, 3,

    -1, 0x2899, 20,
    2, 4,

    -1, 0x28AD, 20,
    2, 5,

    -1, 0x28C1, 24,
    2, 6,

    -1, 0x28D9, 25,
    2, 7,
    -1, 0x28F2, 20,
    3, 8,

    -1, 0x2906, 20,
    3, 9,

    -1, 0x291A, 20,
    3, 10,

    -3, 15,
};

const s32 * const anim_0050[2] = {
    anim_0050__v0_l0,
    anim_0050__v1_l0,
};

const s32 anim_0051__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x292E, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x2942, 18,
    3, 1,

    -1, 0x2954, 24,
    6, 2,

    -1, 0x2942, 18,
    2, 1,

    -1, 0x296C, 25,
    2, 3,

    -1, 0x2985, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 4,

    -1, 0x2999, 20,
    2, 5,

    -1, 0x29AD, 16,
    2, 6,

    -4,
};

const s32 anim_0051__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29BD, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 7,

    -1, 0x29CD, 16,
    2, 8,

    -1, 0x29DD, 16,
    2, 9,

    -1, 0x29ED, 16,
    2, 10,

    -3, 29,
};

const s32 anim_0051__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29FD, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 11,

    -1, 0x2A11, 16,
    2, 12,

    -1, 0x2A21, 20,
    2, 13,

    -1, 0x2A35, 20,
    2, 14,
    -1, 0x2A49, 20,
    3, 15,

    -1, 0x2A5D, 20,
    3, 16,

    -1, 0x2A71, 20,
    3, 17,

    -3, 15,
};

const s32 anim_0051__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A85, 16,
    1, 18,

    -1, 0x2A95, 16,
    1, 19,

    -3, 13,
};

const s32 * const anim_0051[4] = {
    anim_0051__v0_l0,
    anim_0051__v1_l0,
    anim_0051__v2_l0,
    anim_0051__v3_l0,
};

const s32 anim_0052__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2AA5, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,
    -1, 0x2ABD, 18,
    3, 1,

    -1, 0x2ACF, 18,
    3, 2,

    -1, 0x2AE1, 18,
    3, 3,

    -3, 15,
};

const s32 anim_0052__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2AA5, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x2AF3, 20,
    2, 4,

    -1, 0x2B07, 20,
    2, 5,

    -1, 0x2B1B, 20,
    3, 6,

    -1, 0x2B2F, 20,
    3, 7,

    -1, 0x2B43, 20,
    3, 8,

    -4,
};

const s32 anim_0052__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2B57, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 9,

    -1, 0x2B6B, 20,
    3, 10,

    -1, 0x2B7F, 20,
    3, 11,

    -3, 21,
};

const s32 * const anim_0052[3] = {
    anim_0052__v0_l0,
    anim_0052__v1_l0,
    anim_0052__v2_l0,
};

const s32 anim_0053__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2B93, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    4, 0,

    -1, 0x2BA7, 16,
    4, 1,

    -1, 0x2BB7, 20,
    4, 2,

    -1, 0x2BCB, 20,
    4, 3,

    -1, 0x2BDF, 20,
    4, 4,

    -1, 0x2BF3, 20,
    4, 5,

    -1, 0x2C07, 20,
    4, 6,

    -1, 0x2C1B, 20,
    4, 7,

    -1, 0x2C2F, 20,
    4, 8,

    -1, 0x2C43, 16,
    4, 9,

    -1, 0x2C53, 20,
    4, 10,
    -1, 0x2C67, 20,
    3, 11,

    -1, 0x2C7B, 20,
    3, 12,

    -1, 0x2C8F, 20,
    3, 13,

    -3, 15,
};

const s32 * const anim_0053[1] = {
    anim_0053__v0_l0,
};

const s32 anim_0054__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2CA3, 25,
    -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 0,
    -1, 0x2CBC, 30,
    -6, 0, (((-8 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 1,

    -1, 0x2CDA, 20,
    2, 2,

    -1, 0x2CEE, 25,
    2, 3,

    -3, 18,
};

const s32 anim_0054__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2D07, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 4,

    -1, 0x2D1F, 20,
    2, 5,

    -1, 0x2D33, 20,
    2, 6,

    -1, 0x2D47, 20,
    2, 7,

    -1, 0x2D5B, 20,
    2, 8,
    -1, 0x2D6F, 20,
    2, 9,

    -1, 0x2D83, 20,
    2, 10,

    -1, 0x2D97, 20,
    2, 11,

    -3, 15,
};

const s32 * const anim_0054[2] = {
    anim_0054__v0_l0,
    anim_0054__v1_l0,
};

const s32 anim_0055__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2DAB, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x2DEB, 64,
    2, 1,

    -3, 16,
};

const s32 * const anim_0055[1] = {
    anim_0055__v0_l0,
};

const s32 anim_0056__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2E2B, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    3, 0,

    -1, 0x2E3F, 24,
    3, 1,

    -1, 0x2E57, 20,
    3, 2,

    -1, 0x2E2B, 20,
    3, 0,

    -1, 0x2E3F, 24,
    3, 1,

    -1, 0x2E57, 20,
    3, 2,

    -1, 0x2E6B, 20,
    3, 3,

    -1, 0x2E7F, 20,
    3, 4,

    -1, 0x2E93, 20,
    3, 5,

    -1, 0x2EA7, 30,
    3, 6,

    -1, 0x2EC5, 24,
    3, 7,

    -1, 0x2EDD, 21,
    3, 8,

    -1, 0x2EF2, 30,
    3, 9,

    -1, 0x2F10, 24,
    3, 10,

    -1, 0x2F28, 24,
    3, 11,

    -1, 0x2F40, 36,
    3, 12,

    -1, 0x2F64, 25,
    3, 13,

    -1, 0x2F7D, 18,
    3, 14,

    -1, 0x2F8F, 30,
    3, 15,

    -1, 0x2FAD, 24,
    3, 16,

    -1, 0x2FC5, 24,
    3, 17,

    -1, 0x2FDD, 30,
    3, 18,

    -1, 0x2FFB, 24,
    3, 19,

    -1, 0x3013, 20,
    3, 20,

    -1, 0x3027, 20,
    3, 21,
    -1, 0x303B, 20,
    3, 22,

    -1, 0x304F, 20,
    3, 23,

    -1, 0x3063, 20,
    3, 24,

    -3, 15,
};

const s32 * const anim_0056[1] = {
    anim_0056__v0_l0,
};

const s32 anim_0057__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3077, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0057__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3090, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0057__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x30A0, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0057__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x30B0, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0057__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x30C9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0057__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x30DD, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0057__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x30ED, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0057__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x30FD, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0057[8] = {
    anim_0057__v0_l0,
    anim_0057__v1_l0,
    anim_0057__v2_l0,
    anim_0057__v3_l0,
    anim_0057__v4_l0,
    anim_0057__v5_l0,
    anim_0057__v6_l0,
    anim_0057__v7_l0,
};

const s32 anim_0058__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3111, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    5, 0,

    -1, 0x3151, 64,
    5, 1,

    -1, 0x3191, 64,
    5, 2,

    -1, 0x31D1, 64,
    5, 3,

    -1, 0x3211, 64,
    5, 4,

    -1, 0x3251, 64,
    5, 5,

    -1, 0x3291, 64,
    5, 6,

    -1, 0x32D1, 64,
    5, 7,

    -3, 46,
};

const s32 * const anim_0058[1] = {
    anim_0058__v0_l0,
};

const s32 anim_0059__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3311, 21,
    -6, 0, (((-6 & 0xFF) << 0) | ((12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((42 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0059__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3326, 30,
    -6, 0, (((-28 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0059__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3344, 24,
    -6, 0, (((-40 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0059__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x335C, 25,
    -6, 0, (((-35 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0059__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3375, 24,
    -6, 0, (((-26 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0059__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x338D, 18,
    -6, 0, (((-20 & 0xFF) << 0) | ((-36 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0059__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x339F, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0059__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x33BB, 28,
    -6, 0, (((0 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-10 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0059__v8_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x33D7, 20,
    -6, 0, (((8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0059__v9_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x33EB, 24,
    -6, 0, (((10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((38 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0059__v10_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3403, 24,
    -6, 0, (((8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((36 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0059__v11_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x341B, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((8 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((34 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0059[12] = {
    anim_0059__v0_l0,
    anim_0059__v1_l0,
    anim_0059__v2_l0,
    anim_0059__v3_l0,
    anim_0059__v4_l0,
    anim_0059__v5_l0,
    anim_0059__v6_l0,
    anim_0059__v7_l0,
    anim_0059__v8_l0,
    anim_0059__v9_l0,
    anim_0059__v10_l0,
    anim_0059__v11_l0,
};

const s32 anim_0060__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3439, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0060__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3455, 18,
    -6, 0, (((-20 & 0xFF) << 0) | ((-36 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0060__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3467, 24,
    -6, 0, (((-26 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0060__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x347F, 25,
    -6, 0, (((-35 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0060__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3498, 24,
    -6, 0, (((-40 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0060__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x34B0, 30,
    -6, 0, (((-28 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0060__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x34CE, 21,
    -6, 0, (((-6 & 0xFF) << 0) | ((12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((42 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0060__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x34E3, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((8 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((34 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0060__v8_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3501, 24,
    -6, 0, (((8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((36 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0060__v9_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3519, 24,
    -6, 0, (((10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((38 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0060__v10_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3531, 20,
    -6, 0, (((8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0060__v11_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3545, 28,
    -6, 0, (((0 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-10 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0060[12] = {
    anim_0060__v0_l0,
    anim_0060__v1_l0,
    anim_0060__v2_l0,
    anim_0060__v3_l0,
    anim_0060__v4_l0,
    anim_0060__v5_l0,
    anim_0060__v6_l0,
    anim_0060__v7_l0,
    anim_0060__v8_l0,
    anim_0060__v9_l0,
    anim_0060__v10_l0,
    anim_0060__v11_l0,
};

const s32 anim_0061__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3561, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    8, 0,

    -1, 0x357F, 30,
    8, 1,

    -1, 0x359D, 30,
    8, 2,

    -1, 0x357F, 30,
    8, 1,

    -3, 26,
};

const s32 * const anim_0061[1] = {
    anim_0061__v0_l0,
};

const s32 anim_0062__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x35BB, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    2, 0,

    -1, 0x35D7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 1,

    -1, 0x35EF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x35FF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 3,

    -1, 0x3613, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    4, 4,

    -1, 0x362F, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    3, 5,

    -1, 0x3647, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 6,

    -1, 0x3657, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    2, 7,

    -1, 0x35BB, 28,
    -6, 0, (((-8 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    4, 0,

    -1, 0x35D7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    3, 1,

    -1, 0x35EF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x35FF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 3,

    -1, 0x3613, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 anim_0062__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x366F, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    2, 8,

    -1, 0x368B, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 9,

    -1, 0x36A3, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 10,

    -1, 0x36B3, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 11,

    -1, 0x36C7, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    4, 12,

    -1, 0x36E3, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    3, 13,

    -1, 0x36FB, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 14,

    -1, 0x370B, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 15,

    -1, 0x366F, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    4, 8,

    -1, 0x368B, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    3, 9,

    -1, 0x36A3, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 10,

    -1, 0x36B3, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 11,

    -1, 0x36C7, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    2, 12,

    -4,
};

const s32 * const anim_0062[2] = {
    anim_0062__v0_l0,
    anim_0062__v1_l0,
};

const s32 anim_0063__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3723, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x3733, 25,
    -6, 0, (((-10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x374C, 35,
    -6, 0, (((-10 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    4, 2,

    -1, 0x376F, 25,
    -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -1, 0x3788, 12,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 4,

    -1, 0x3794, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 5,

    -1, 0x37A8, 28,
    -6, 0, (((-10 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    4, 6,

    -1, 0x37C4, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    3, 7,

    -1, 0x3723, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -4,
};

const s32 anim_0063__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x37D8, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0x37E8, 25,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 9,

    -1, 0x3801, 35,
    -6, 0, (((-10 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((34 & 0xFF) << 24)),
    4, 10,

    -1, 0x3824, 25,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    3, 11,

    -1, 0x383D, 12,
    -6, 0, (((-10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 12,

    -1, 0x3849, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 13,

    -1, 0x385D, 28,
    -6, 0, (((-10 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    4, 14,

    -1, 0x3879, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 15,

    -1, 0x37D8, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -4,
};

const s32 * const anim_0063[2] = {
    anim_0063__v0_l0,
    anim_0063__v1_l0,
};

const s32 anim_0064__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x388D, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 0,

    -1, 0x38A1, 30,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 1,

    -1, 0x38BF, 24,
    -6, 0, (((-29 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-17 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 2,

    -1, 0x38D7, 25,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 3,

    -1, 0x38F0, 15,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 4,

    -1, 0x38FF, 24,
    -6, 0, (((11 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 5,

    -1, 0x3917, 28,
    -6, 0, (((19 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 6,

    -1, 0x3933, 20,
    -6, 0, (((11 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 7,

    -1, 0x388D, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 0,

    -1, 0x38A1, 30,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 1,

    -1, 0x38BF, 24,
    -6, 0, (((-29 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-17 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 2,

    -1, 0x38D7, 25,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 3,

    -1, 0x38F0, 15,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 * const anim_0064[1] = {
    anim_0064__v0_l0,
};

const s32 anim_0065__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3947, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x3960, 25,
    2, 1,

    -1, 0x3979, 30,
    2, 2,

    -1, 0x3997, 24,
    2, 3,

    -1, 0x39AF, 30,
    2, 4,

    -1, 0x39CD, 30,
    2, 5,

    -1, 0x39EB, 30,
    2, 6,

    -1, 0x3A09, 24,
    2, 7,

    -3, 46,
};

const s32 anim_0065__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3A21, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 8,

    -1, 0x3A39, 20,
    3, 9,

    -1, 0x3A4D, 20,
    3, 10,

    -1, 0x3A61, 20,
    3, 11,

    -4,
};

const s32 anim_0065__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3A75, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 12,

    -1, 0x3A89, 20,
    3, 13,

    -1, 0x3A9D, 20,
    3, 14,

    -3, 21,
};

const s32 * const anim_0065[3] = {
    anim_0065__v0_l0,
    anim_0065__v1_l0,
    anim_0065__v2_l0,
};

const s32 anim_0066__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3AB1, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x3AD4, 35,
    3, 1,

    -1, 0x3AF7, 35,
    3, 2,

    -3, 21,
};

const s32 anim_0066__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3B1A, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 3,

    -1, 0x3B38, 24,
    3, 4,

    -1, 0x3B50, 18,
    3, 5,

    -1, 0x3B62, 24,
    3, 6,

    -1, 0x3B7A, 30,
    3, 7,

    -4,
};

const s32 anim_0066__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3B98, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 8,

    -1, 0x3BB1, 25,
    3, 9,

    -1, 0x3BCA, 30,
    3, 10,

    -3, 21,
};

const s32 * const anim_0066[3] = {
    anim_0066__v0_l0,
    anim_0066__v1_l0,
    anim_0066__v2_l0,
};

const s32 anim_0067__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3BE8, 36,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    5, 0,

    -1, 0x3C0C, 25,
    5, 1,

    -1, 0x3C25, 16,
    5, 2,

    -1, 0x3C35, 25,
    5, 3,

    -1, 0x3C4E, 36,
    5, 4,

    -1, 0x3C72, 20,
    5, 5,

    -1, 0x3C86, 16,
    5, 6,

    -1, 0x3C96, 20,
    5, 7,

    -3, 46,
};

const s32 * const anim_0067[1] = {
    anim_0067__v0_l0,
};

const s32 anim_0068__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3CAA, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0068__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3CBE, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0068__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3CCE, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0068__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3CE2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0068__v4_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3CF6, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0068__v5_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D0A, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0068__v6_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D1E, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0068__v7_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D32, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0068__v8_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D46, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0068__v9_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D5A, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0068__v10_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D6A, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 * const anim_0068[11] = {
    anim_0068__v0_l0,
    anim_0068__v1_l0,
    anim_0068__v2_l0,
    anim_0068__v3_l0,
    anim_0068__v4_l0,
    anim_0068__v5_l0,
    anim_0068__v6_l0,
    anim_0068__v7_l0,
    anim_0068__v8_l0,
    anim_0068__v9_l0,
    anim_0068__v10_l0,
};

const s32 anim_0069__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3D7E, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x3D92, 20,
    2, 1,

    -1, 0x3DA6, 20,
    2, 2,

    -1, 0x3DBA, 20,
    2, 3,

    -1, 0x3DCE, 20,
    2, 4,

    -1, 0x3DE2, 20,
    2, 5,

    -1, 0x3DF6, 25,
    2, 6,

    -1, 0x3E0F, 20,
    2, 7,

    -3, 46,
};

const s32 anim_0069__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3E23, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 8,

    -1, 0x3E37, 20,
    2, 9,

    -1, 0x3E4B, 20,
    2, 10,

    -1, 0x3E5F, 20,
    2, 11,

    -1, 0x3E73, 20,
    2, 12,

    -1, 0x3E87, 20,
    2, 13,

    -1, 0x3E9B, 25,
    2, 14,

    -1, 0x3EB4, 20,
    2, 15,

    -3, 46,
};

const s32 * const anim_0069[2] = {
    anim_0069__v0_l0,
    anim_0069__v1_l0,
};

const s32 anim_0070__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3EC8, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x3ED8, 16,
    2, 1,

    -1, 0x3EE8, 16,
    2, 2,

    -1, 0x3EF8, 16,
    2, 3,

    -1, 0x3F08, 16,
    2, 4,

    -1, 0x3F18, 16,
    2, 5,

    -1, 0x3F28, 16,
    2, 6,

    -1, 0x3F38, 16,
    2, 7,

    -3, 49,
};

const s32 * const anim_0070[1] = {
    anim_0070__v0_l0,
};

const s32 anim_0071__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x3F48, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x3F61, 25,
    2, 1,

    -1, 0x3F7A, 25,
    2, 2,

    -1, 0x3F93, 25,
    2, 3,

    -1, 0x3FAC, 20,
    2, 4,

    -1, 0x3FC0, 25,
    2, 5,

    -1, 0x3FD9, 25,
    2, 6,

    -1, 0x3FF2, 25,
    2, 7,

    -3, 46,
};

const s32 anim_0071__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x400B, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 8,

    -1, 0x4029, 24,
    2, 9,

    -1, 0x4041, 24,
    2, 10,

    -1, 0x4059, 30,
    2, 11,

    -1, 0x4041, 24,
    2, 10,

    -1, 0x4029, 24,
    2, 9,

    -3, 36,
};

const s32 * const anim_0071[2] = {
    anim_0071__v0_l0,
    anim_0071__v1_l0,
};

const s32 anim_0072__v0_l0[] = {
    -2, 4, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4077, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 0,

    -1, 0x4089, 30,
    -6, 0, (((-18 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-1 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 1,

    -1, 0x40A7, 30,
    -6, 0, (((-24 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 2,

    -1, 0x40C5, 24,
    -6, 0, (((-22 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 3,

    -1, 0x40DD, 24,
    -6, 0, (((-9 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 4,

    -1, 0x40F5, 24,
    -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 5,

    -1, 0x410D, 30,
    -6, 0, (((6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 6,

    -1, 0x412B, 24,
    -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 7,

    -3, 67,
};

const s32 * const anim_0072[1] = {
    anim_0072__v0_l0,
};

const s32 anim_0073__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4143, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x4153, 16,
    3, 1,

    -1, 0x4163, 16,
    3, 2,

    -1, 0x4173, 16,
    3, 3,

    -1, 0x4183, 16,
    3, 4,

    -1, 0x4193, 16,
    3, 5,

    -1, 0x41A3, 16,
    3, 6,

    -1, 0x41B3, 16,
    3, 7,

    -3, 46,
};

const s32 anim_0073__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x41C3, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 8,

    -1, 0x41D7, 20,
    3, 9,

    -1, 0x41EB, 16,
    3, 10,

    -1, 0x41FB, 20,
    3, 11,

    -1, 0x420F, 20,
    3, 12,

    -1, 0x4223, 20,
    3, 13,

    -1, 0x4237, 20,
    3, 14,

    -1, 0x424B, 20,
    3, 15,

    -3, 46,
};

const s32 anim_0073__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x425F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 16,

    -1, 0x4273, 20,
    3, 17,

    -1, 0x4287, 25,
    3, 18,

    -1, 0x42A0, 20,
    3, 19,

    -1, 0x42B4, 20,
    3, 20,

    -1, 0x42C8, 20,
    3, 21,

    -1, 0x42DC, 16,
    3, 22,

    -1, 0x42EC, 20,
    3, 23,

    -3, 46,
};

const s32 * const anim_0073[3] = {
    anim_0073__v0_l0,
    anim_0073__v1_l0,
    anim_0073__v2_l0,
};

const s32 anim_0074__v0_l0[] = {
    -2, 5, (((u16)16 << 0) | ((u16)0x10 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0074[1] = {
    anim_0074__v0_l0,
};

const s32 anim_0075__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4300, 64,
    -6, 0, (((-7 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x4340, 64,
    2, 1,

    -1, 0x4380, 64,
    2, 2,

    -3, 21,
};

const s32 * const anim_0075[1] = {
    anim_0075__v0_l0,
};

const s32 anim_0085__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x43C0, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0085__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x43D4, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0085[2] = {
    anim_0085__v0_l0,
    anim_0085__v1_l0,
};

const s32 anim_0086__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x43E8, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 0,

    -1, 0x4400, 24,
    3, 1,

    -1, 0x4418, 20,
    3, 2,

    -1, 0x442C, 24,
    3, 3,

    -1, 0x4444, 24,
    3, 4,

    -1, 0x445C, 20,
    3, 5,

    -3, 36,
};

const s32 anim_0086__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4470, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 6,

    -1, 0x4484, 20,
    3, 7,

    -1, 0x4498, 20,
    3, 8,

    -1, 0x44AC, 20,
    3, 9,

    -1, 0x44C0, 20,
    3, 10,

    -1, 0x44D4, 20,
    3, 11,

    -3, 36,
};

const s32 anim_0086__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x44E8, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 12,

    -1, 0x44FC, 20,
    3, 13,

    -1, 0x4510, 20,
    3, 14,

    -1, 0x4524, 20,
    3, 15,

    -1, 0x4538, 20,
    3, 16,

    -1, 0x454C, 20,
    3, 17,

    -3, 36,
};

const s32 anim_0086__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4560, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 18,

    -1, 0x4574, 20,
    3, 19,

    -1, 0x4588, 20,
    3, 20,

    -1, 0x459C, 20,
    3, 21,

    -1, 0x45B0, 20,
    3, 22,

    -1, 0x45C4, 20,
    3, 23,

    -3, 36,
};

const s32 * const anim_0086[4] = {
    anim_0086__v0_l0,
    anim_0086__v1_l0,
    anim_0086__v2_l0,
    anim_0086__v3_l0,
};

const s32 anim_0087__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x45D8, 36,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 0,

    -1, 0x45FC, 30,
    2, 1,

    -3, 16,
};

const s32 anim_0087__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x461A, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 2,

    -4,
};

const s32 anim_0087__v2_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x462E, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 3,

    -1, 0x464C, 30,
    2, 4,

    -3, 16,
};

const s32 anim_0087__v3_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x466A, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 5,

    -4,
};

const s32 * const anim_0087[4] = {
    anim_0087__v0_l0,
    anim_0087__v1_l0,
    anim_0087__v2_l0,
    anim_0087__v3_l0,
};

const s32 anim_0088__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4683, 20,
    6, 0,

    -1, 0x4697, 20,
    6, 1,

    -1, 0x46AB, 20,
    6, 2,

    -4,
};

const s32 anim_0088__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x46BF, 20,
    6, 3,

    -1, 0x46D3, 20,
    6, 4,

    -1, 0x46E7, 30,
    6, 5,

    -4,
};

const s32 * const anim_0088[2] = {
    anim_0088__v0_l0,
    anim_0088__v1_l0,
};

const s32 anim_0089__v0_l0[] = {
    -2, 6, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4705, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x4715, 16,
    2, 1,

    -1, 0x4725, 16,
    2, 2,

    -1, 0x4735, 16,
    2, 3,

    -1, 0x4745, 16,
    2, 4,

    -1, 0x4755, 16,
    2, 5,

    -3, 36,
};

const s32 * const anim_0089[1] = {
    anim_0089__v0_l0,
};

const s32 anim_0090__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4765, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    2, 0,

    -1, 0x4779, 20,
    2, 1,

    -1, 0x478D, 20,
    2, 2,

    -1, 0x47A1, 20,
    2, 3,

    -1, 0x47B5, 20,
    3, 4,

    -1, 0x47C9, 20,
    3, 5,

    -1, 0x47DD, 20,
    3, 6,

    -1, 0x47F1, 20,
    3, 7,

    -1, 0x4805, 20,
    3, 8,

    -1, 0x4819, 20,
    3, 9,

    -1, 0x482D, 20,
    3, 10,

    -4,
};

const s32 * const anim_0090[1] = {
    anim_0090__v0_l0,
};

const s32 anim_0091__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4841, 12,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    5, 0,

    -1, 0x484D, 12,
    5, 1,

    -1, 0x4859, 16,
    7, 2,

    -1, 0x4869, 16,
    10, 3,

    -1, 0x4879, 16,
    3, 4,

    -1, 0x4889, 12,
    3, 5,

    -1, 0x4895, 12,
    3, 6,

    -1, 0x48A1, 12,
    7, 7,

    -1, 0x4841, 12,
    5, 0,

    -1, 0x48AD, 12,
    5, 8,

    -1, 0x4859, 16,
    7, 2,

    -1, 0x4869, 16,
    10, 3,

    -1, 0x48B9, 16,
    3, 9,

    -1, 0x48C9, 12,
    3, 10,

    -1, 0x48D5, 12,
    3, 11,

    -1, 0x48E1, 12,
    7, 12,

    -3, 86,
};

const s32 * const anim_0091[1] = {
    anim_0091__v0_l0,
};

const s32 anim_0092__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x48ED, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0x48FC, 15,
    6, 1,

    -1, 0x490B, 15,
    6, 2,

    -1, 0x491A, 20,
    6, 3,

    -1, 0x492E, 15,
    6, 4,

    -1, 0x493D, 12,
    6, 5,

    -1, 0x492E, 15,
    6, 4,

    -1, 0x491A, 20,
    6, 3,

    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x48ED, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0x48FC, 15,
    6, 1,

    -1, 0x490B, 15,
    6, 2,

    -1, 0x491A, 20,
    6, 3,

    -1, 0x492E, 15,
    6, 4,

    -1, 0x493D, 12,
    6, 5,

    -1, 0x492E, 15,
    6, 4,

    -1, 0x491A, 20,
    6, 3,

    -1, 0x48ED, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0x4949, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 6,

    -1, 0x4958, 16,
    6, 7,

    -1, 0x4968, 12,
    5, 8,

    -1, 0x4974, 12,
    5, 9,

    -1, 0x4968, 12,
    5, 8,

    -1, 0x4974, 12,
    5, 9,

    -1, 0x4968, 12,
    5, 8,

    -1, 0x4974, 12,
    5, 9,

    -1, 0x4980, 16,
    4, 10,

    -1, 0x4990, 20,
    4, 11,

    -1, 0x49A4, 25,
    6, 12,

    -1, 0x49BD, 25,
    4, 13,

    -1, 0x49D6, 25,
    4, 14,

    -1, 0x49EF, 25,
    4, 15,

    -1, 0x49A4, 25,
    12, 12,

    -1, 0x4A08, 20,
    8, 16,
    -1, 0x4A1C, 15,
    8, 17,

    -1, 0x4A2B, 15,
    8, 18,

    -1, 0x4A3A, 15,
    8, 19,

    -1, 0x4A49, 15,
    8, 20,

    -1, 0x4A1C, 15,
    8, 17,

    -1, 0x4A2B, 15,
    8, 18,

    -1, 0x4A3A, 15,
    8, 19,

    -1, 0x4A49, 15,
    8, 20,

    -1, 0x4A1C, 15,
    8, 17,

    -1, 0x4A2B, 15,
    8, 18,

    -1, 0x4A3A, 15,
    8, 19,

    -1, 0x4A49, 15,
    8, 20,

    -1, 0x4A58, 15,
    8, 21,

    -1, 0x4A67, 20,
    8, 22,

    -1, 0x4A7B, 20,
    8, 23,

    -1, 0x4A8F, 20,
    8, 24,

    -1, 0x4AA3, 20,
    8, 25,

    -1, 0x4A67, 20,
    8, 22,

    -1, 0x4A7B, 20,
    8, 23,

    -1, 0x4A8F, 20,
    8, 24,

    -1, 0x4AA3, 20,
    8, 25,

    -1, 0x4A67, 20,
    8, 22,

    -1, 0x4A7B, 20,
    8, 23,

    -1, 0x4A8F, 20,
    8, 24,

    -1, 0x4AA3, 20,
    8, 25,

    -1, 0x4A58, 15,
    8, 21,

    -3, 130,
};

const s32 anim_0092__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4AB7, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 26,

    -1, 0x4ACB, 16,
    4, 27,

    -1, 0x4ADB, 16,
    1, 28,

    -4,
};

const s32 * const anim_0092[2] = {
    anim_0092__v0_l0,
    anim_0092__v1_l0,
};

const s32 anim_0093__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4AEB, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x4AFB, 16,
    1, 1,

    -1, 0x4B0B, 16,
    1, 2,

    -1, 0x4B1B, 12,
    1, 3,

    -4,
};

const s32 anim_0093__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4B27, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 4,

    -1, 0x4B37, 16,
    1, 5,

    -4,
};

const s32 * const anim_0093[2] = {
    anim_0093__v0_l0,
    anim_0093__v1_l0,
};

const s32 anim_0094__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4B47, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x4B60, 30,
    2, 1,

    -1, 0x4B7E, 25,
    2, 2,

    -1, 0x4B97, 25,
    2, 3,

    -1, 0x4BB0, 25,
    2, 4,

    -1, 0x4BC9, 30,
    2, 5,

    -1, 0x4BE7, 25,
    2, 6,

    -1, 0x4C00, 25,
    2, 7,

    -3, 49,
};

const s32 anim_0094__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4B47, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x4B60, 30,
    2, 1,

    -1, 0x4B7E, 25,
    2, 2,

    -1, 0x4B97, 25,
    2, 3,

    -1, 0x4BB0, 25,
    2, 4,

    -1, 0x4BC9, 30,
    2, 5,

    -1, 0x4BE7, 25,
    2, 6,

    -1, 0x4C00, 25,
    2, 7,

    -3, 49,
};

const s32 * const anim_0094[2] = {
    anim_0094__v0_l0,
    anim_0094__v1_l0,
};

const s32 anim_0095__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4C19, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x4C29, 16,
    2, 1,

    -1, 0x4C39, 16,
    2, 2,

    -1, 0x4C49, 16,
    2, 3,

    -3, 29,
};

const s32 anim_0095__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4C59, 16,
    2, 4,

    -1, 0x4C69, 16,
    2, 5,

    -1, 0x4C79, 16,
    2, 6,

    -1, 0x4C89, 16,
    2, 7,

    -1, 0x4C99, 16,
    2, 8,

    -1, 0x4CA9, 16,
    2, 9,

    -1, 0x4CB9, 16,
    2, 10,

    -1, 0x4CC9, 16,
    2, 11,

    -3, 43,
};

const s32 * const anim_0095[2] = {
    anim_0095__v0_l0,
    anim_0095__v1_l0,
};

const s32 anim_0096__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4CD9, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x4CE9, 16,
    1, 1,

    -4,
};

const s32 * const anim_0096[1] = {
    anim_0096__v0_l0,
};

const s32 anim_0097__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4CF9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x4D0D, 16,
    2, 1,

    -1, 0x4D1D, 16,
    2, 2,

    -1, 0x4D2D, 16,
    2, 3,

    -1, 0x4D3D, 16,
    2, 4,

    -4,
};

const s32 * const anim_0097[1] = {
    anim_0097__v0_l0,
};

const s32 anim_0098__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4D4D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,
    -1, 0x4D61, 20,
    4, 1,

    -1, 0x4D75, 25,
    4, 2,

    -3, 10,
};

const s32 anim_0098__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4D8E, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -1, 0x4D9E, 16,
    2, 4,

    -4,
};

const s32 * const anim_0098[2] = {
    anim_0098__v0_l0,
    anim_0098__v1_l0,
};

const s32 anim_0099__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4DAE, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,
    -1, 0x4DC2, 16,
    2, 1,

    -1, 0x4DD2, 20,
    2, 2,

    -1, 0x4DE6, 24,
    2, 3,

    -1, 0x4DFE, 24,
    2, 4,

    -1, 0x4E16, 24,
    2, 5,

    -1, 0x4E2E, 20,
    2, 6,

    -1, 0x4E42, 16,
    2, 7,

    -1, 0x4E52, 20,
    2, 8,

    -1, 0x4DC2, 16,
    2, 1,

    -1, 0x4DD2, 20,
    2, 2,

    -1, 0x4DE6, 24,
    2, 3,

    -1, 0x4DFE, 24,
    2, 4,

    -1, 0x4E66, 24,
    2, 9,

    -1, 0x4E7E, 20,
    2, 10,

    -1, 0x4E92, 16,
    2, 11,

    -1, 0x4E52, 20,
    2, 8,

    -3, 80,
};

const s32 anim_0099__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4EA2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 12,

    -1, 0x4EB6, 16,
    2, 13,

    -1, 0x4EC6, 16,
    1, 14,

    -4,
};

const s32 * const anim_0099[2] = {
    anim_0099__v0_l0,
    anim_0099__v1_l0,
};

const s32 anim_0100__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x4ED6, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 0,

    -1, 0x4F16, 64,
    8, 1,

    -1, 0x4F56, 64,
    8, 2,

    -1, 0x4F96, 64,
    8, 3,

    -1, 0x4FD6, 64,
    8, 4,

    -1, 0x5016, 64,
    8, 5,

    -1, 0x5056, 64,
    8, 6,

    -1, 0x5096, 64,
    8, 7,

    -1, 0x4ED6, 64,
    8, 0,

    -1, 0x4F16, 64,
    8, 1,

    -1, 0x4F56, 64,
    8, 2,

    -1, 0x4F96, 64,
    8, 3,

    -1, 0x50D6, 64,
    8, 8,

    -1, 0x5116, 64,
    8, 9,

    -1, 0x5156, 64,
    8, 10,

    -1, 0x5096, 64,
    8, 7,

    -3, 86,
};

const s32 anim_0100__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5196, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 11,

    -1, 0x51D6, 64,
    8, 12,

    -1, 0x5216, 64,
    8, 13,

    -1, 0x5256, 64,
    8, 14,

    -1, 0x5296, 64,
    8, 15,

    -1, 0x52D6, 64,
    8, 16,

    -1, 0x5316, 64,
    8, 17,

    -1, 0x5356, 64,
    8, 18,

    -1, 0x5196, 64,
    8, 11,

    -1, 0x51D6, 64,
    8, 12,

    -1, 0x5216, 64,
    8, 13,

    -1, 0x5256, 64,
    8, 14,

    -1, 0x5396, 64,
    8, 19,

    -1, 0x53D6, 64,
    8, 20,

    -1, 0x5416, 64,
    8, 21,

    -1, 0x5356, 64,
    8, 18,

    -3, 86,
};

const s32 anim_0100__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5456, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 22,

    -1, 0x5496, 64,
    8, 23,

    -1, 0x54D6, 64,
    8, 24,

    -1, 0x5516, 64,
    8, 25,

    -1, 0x5556, 64,
    8, 26,

    -1, 0x5596, 64,
    8, 27,

    -1, 0x55D6, 64,
    8, 28,

    -1, 0x5616, 64,
    8, 29,

    -1, 0x5456, 64,
    8, 22,

    -1, 0x5496, 64,
    8, 23,

    -1, 0x54D6, 64,
    8, 24,

    -1, 0x5516, 64,
    8, 25,

    -1, 0x5656, 64,
    8, 30,

    -1, 0x5696, 64,
    8, 31,

    -1, 0x56D6, 64,
    8, 32,

    -1, 0x5616, 64,
    8, 29,

    -3, 86,
};

const s32 anim_0100__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5716, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 33,

    -1, 0x5756, 64,
    8, 34,

    -1, 0x5796, 64,
    8, 35,

    -1, 0x57D6, 64,
    8, 36,

    -1, 0x5816, 64,
    8, 37,

    -1, 0x5856, 64,
    8, 38,

    -1, 0x5896, 64,
    8, 39,

    -1, 0x58D6, 64,
    8, 40,

    -1, 0x5716, 64,
    8, 33,

    -1, 0x5756, 64,
    8, 34,

    -1, 0x5796, 64,
    8, 35,

    -1, 0x57D6, 64,
    8, 36,

    -1, 0x5916, 64,
    8, 41,

    -1, 0x5956, 64,
    8, 42,

    -1, 0x5996, 64,
    8, 43,

    -1, 0x59D6, 64,
    8, 44,

    -3, 86,
};

const s32 anim_0100__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5A16, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 45,

    -1, 0x5A56, 64,
    8, 46,

    -1, 0x5A96, 64,
    8, 47,

    -1, 0x5AD6, 64,
    8, 48,

    -1, 0x5B16, 64,
    8, 49,

    -1, 0x5B56, 64,
    8, 50,

    -1, 0x5B96, 64,
    8, 51,

    -1, 0x5BD6, 64,
    8, 52,

    -1, 0x5A16, 64,
    8, 45,

    -1, 0x5A56, 64,
    8, 46,

    -1, 0x5A96, 64,
    8, 47,

    -1, 0x5AD6, 64,
    8, 48,

    -1, 0x5C16, 64,
    8, 53,

    -1, 0x5C56, 64,
    8, 54,

    -1, 0x5C96, 64,
    8, 55,

    -1, 0x5BD6, 64,
    8, 52,

    -3, 86,
};

const s32 anim_0100__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5A16, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 45,

    -1, 0x5A56, 64,
    8, 46,

    -1, 0x5A96, 64,
    8, 47,

    -1, 0x5AD6, 64,
    8, 48,

    -1, 0x5B16, 64,
    8, 49,

    -1, 0x5B56, 64,
    8, 50,

    -1, 0x5B96, 64,
    8, 51,

    -1, 0x5BD6, 64,
    8, 52,

    -1, 0x5A16, 64,
    8, 45,

    -1, 0x5A56, 64,
    8, 46,

    -1, 0x5A96, 64,
    8, 47,

    -1, 0x5AD6, 64,
    8, 48,

    -1, 0x5C16, 64,
    8, 53,

    -1, 0x5C56, 64,
    8, 54,

    -1, 0x5C96, 64,
    8, 55,

    -1, 0x5BD6, 64,
    8, 52,

    -3, 86,
};

const s32 * const anim_0100[6] = {
    anim_0100__v0_l0,
    anim_0100__v1_l0,
    anim_0100__v2_l0,
    anim_0100__v3_l0,
    anim_0100__v4_l0,
    anim_0100__v5_l0,
};

const s32 anim_0101__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5CD6, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 0,

    -1, 0x5CE6, 16,
    3, 1,

    -4,
};

const s32 anim_0101__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5CF6, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0x5D06, 16,
    2, 3,

    -1, 0x5D16, 16,
    2, 4,

    -1, 0x5D26, 16,
    2, 5,

    -1, 0x5D36, 16,
    2, 6,

    -1, 0x5D46, 16,
    2, 7,

    -1, 0x5D56, 16,
    2, 8,

    -1, 0x5D66, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0101__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5D76, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    1, 10,
    -1, 0x5D8F, 24,
    2, 11,

    -1, 0x5DA7, 28,
    2, 12,

    -1, 0x5DC3, 20,
    2, 13,

    -3, 15,
};

const s32 * const anim_0101[3] = {
    anim_0101__v0_l0,
    anim_0101__v1_l0,
    anim_0101__v2_l0,
};

const s32 anim_0102__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5DD7, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 0,

    -1, 0x5DE7, 16,
    2, 1,

    -4,
};

const s32 anim_0102__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5DF7, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0x5E07, 16,
    2, 3,

    -1, 0x5E17, 16,
    2, 4,

    -1, 0x5E27, 16,
    2, 5,

    -1, 0x5E37, 16,
    2, 6,

    -1, 0x5E47, 16,
    2, 7,

    -1, 0x5E57, 16,
    2, 8,

    -1, 0x5E67, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0102__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5E77, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    1, 10,
    -1, 0x5E90, 24,
    2, 11,

    -1, 0x5EA8, 28,
    2, 12,

    -1, 0x5EC4, 20,
    2, 13,

    -3, 15,
};

const s32 * const anim_0102[3] = {
    anim_0102__v0_l0,
    anim_0102__v1_l0,
    anim_0102__v2_l0,
};

const s32 anim_0103__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5ED8, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x5EE8, 16,
    1, 1,

    -1, 0x5EF8, 16,
    1, 2,

    -1, 0x5F08, 12,
    1, 3,

    -1, 0x5EE8, 16,
    1, 1,

    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5ED8, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0103[1] = {
    anim_0103__v0_l0,
};

const s32 anim_0104__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5F14, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x5F28, 24,
    2, 1,
    -1, 0x5F40, 28,
    2, 2,

    -1, 0x5F5C, 28,
    2, 3,

    -1, 0x5F78, 28,
    2, 4,

    -3, 15,
};

const s32 * const anim_0104[1] = {
    anim_0104__v0_l0,
};

const s32 anim_0105__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x5F94, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x5FA4, 16,
    1, 1,

    -1, 0x5FB4, 16,
    1, 2,

    -1, 0x5FC4, 16,
    1, 3,

    -1, 0x5FD4, 20,
    1, 4,

    -1, 0x5FE8, 20,
    1, 5,

    -1, 0x5FFC, 20,
    3, 6,

    -1, 0x6010, 25,
    1, 7,

    -1, 0x6029, 25,
    2, 8,

    -1, 0x6042, 20,
    2, 9,

    -1, 0x6056, 25,
    2, 10,

    -1, 0x606F, 20,
    2, 11,

    -1, 0x6083, 20,
    6, 12,

    -1, 0x6097, 16,
    3, 13,

    -1, 0x60A7, 16,
    3, 14,

    -4,
};

const s32 * const anim_0105[1] = {
    anim_0105__v0_l0,
};

const s32 anim_0107__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x60B7, 12,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x60C3, 12,
    1, 1,

    -1, 0x60CF, 16,
    -6, 1, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 2,

    -1, 0x60DF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 3,

    -1, 0x60F3, 20,
    2, 4,

    -1, 0x6107, 20,
    2, 5,

    -1, 0x611B, 20,
    2, 6,

    -1, 0x60F3, 20,
    2, 4,

    -1, 0x6107, 20,
    2, 5,

    -1, 0x611B, 20,
    2, 6,

    -1, 0x60F3, 20,
    2, 4,

    -1, 0x6107, 20,
    2, 5,

    -1, 0x612F, 20,
    2, 7,

    -1, 0x6143, 20,
    2, 8,

    -1, 0x6157, 25,
    2, 9,

    -1, 0x6170, 25,
    2, 10,

    -1, 0x6189, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 11,

    -1, 0x6199, 16,
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 12,

    -1, 0x61A9, 16,
    2, 13,

    -1, 0x61B9, 16,
    2, 14,

    -4,
};

const s32 * const anim_0107[1] = {
    anim_0107__v0_l0,
};

const s32 anim_0108__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x61C9, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x61D9, 16,
    1, 1,

    -1, 0x61E9, 16,
    1, 2,

    -1, 0x61F9, 16,
    1, 3,

    -1, 0x6209, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 4,

    -1, 0x621D, 20,
    2, 5,

    -1, 0x6231, 20,
    2, 6,

    -1, 0x6209, 20,
    2, 4,

    -1, 0x621D, 20,
    2, 5,

    -1, 0x6231, 20,
    2, 6,

    -4,
};

const s32 anim_0108__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6245, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 7,

    -1, 0x6259, 20,
    2, 8,

    -1, 0x626D, 16,
    2, 9,

    -1, 0x627D, 20,
    2, 10,

    -1, 0x6291, 20,
    2, 11,
    -1, 0x62A5, 24,
    2, 12,

    -1, 0x62BD, 24,
    2, 13,

    -1, 0x62D5, 24,
    2, 14,

    -3, 15,
};

const s32 * const anim_0108[2] = {
    anim_0108__v0_l0,
    anim_0108__v1_l0,
};

const s32 anim_0109__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x62ED, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 0,

    -1, 0x6305, 24,
    1, 1,

    -1, 0x631D, 20,
    1, 2,

    -1, 0x6331, 25,
    3, 3,

    -1, 0x634A, 25,
    1, 4,

    -1, 0x6363, 24,
    1, 5,

    -1, 0x637B, 25,
    1, 6,

    -1, 0x6394, 25,
    2, 7,

    -1, 0x63AD, 20,
    2, 8,

    -1, 0x63C1, 25,
    2, 9,

    -1, 0x63DA, 20,
    2, 10,

    -1, 0x63EE, 20,
    4, 11,

    -1, 0x6402, 25,
    3, 12,

    -1, 0x641B, 20,
    3, 13,

    -1, 0x642F, 24,
    3, 14,
    -1, 0x6447, 28,
    3, 15,

    -1, 0x6463, 28,
    3, 16,

    -1, 0x647F, 28,
    3, 17,

    -3, 15,
};

const s32 * const anim_0109[1] = {
    anim_0109__v0_l0,
};

const s32 anim_0110__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x649B, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x64AB, 16,
    4, 1,

    -1, 0x64BB, 25,
    4, 2,

    -1, 0x64D4, 24,
    4, 3,

    -1, 0x64EC, 24,
    4, 4,

    -1, 0x6504, 20,
    2, 5,

    -1, 0x6518, 24,
    1, 6,

    -1, 0x6530, 16,
    1, 7,

    -1, 0x649B, 16,
    2, 0,

    -1, 0x64AB, 16,
    4, 1,

    -1, 0x64BB, 25,
    4, 2,

    -1, 0x64D4, 24,
    4, 3,

    -1, 0x6540, 24,
    4, 8,

    -1, 0x6558, 20,
    2, 9,

    -1, 0x656C, 24,
    1, 10,

    -1, 0x6530, 16,
    1, 7,

    -3, 86,
};

const s32 anim_0110__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6584, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 11,

    -1, 0x6594, 16,
    1, 12,

    -4,
};

const s32 * const anim_0110[2] = {
    anim_0110__v0_l0,
    anim_0110__v1_l0,
};

const s32 anim_0111__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x65A4, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x65BC, 20,
    2, 1,
    -1, 0x65D0, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((7 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((17 & 0xFF) << 24)),
    2, 2,

    -1, 0x65E8, 28,
    2, 3,

    -1, 0x6604, 20,
    2, 4,

    -3, 21,
};

const s32 * const anim_0111[1] = {
    anim_0111__v0_l0,
};

const s32 anim_0112__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6618, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    6, 0,

    -1, 0x6628, 16,
    3, 1,
    -1, 0x6638, 16,
    6, 2,

    -1, 0x6648, 16,
    6, 3,

    -1, 0x6658, 16,
    6, 4,

    -1, 0x6668, 16,
    6, 5,

    -1, 0x6678, 16,
    6, 6,

    -1, 0x6688, 16,
    6, 7,

    -1, 0x6698, 16,
    6, 8,

    -1, 0x66A8, 16,
    6, 9,

    -3, 40,
};

const s32 * const anim_0112[1] = {
    anim_0112__v0_l0,
};

const s32 anim_0113__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x66B8, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x66F8, 64,
    1, 1,

    -1, 0x6738, 64,
    2, 2,

    -1, 0x6778, 64,
    1, 3,

    -1, 0x67B8, 64,
    1, 4,

    -1, 0x67F8, 64,
    1, 5,

    -1, 0x6838, 64,
    1, 6,

    -1, 0x6878, 64,
    2, 7,

    -1, 0x68B8, 64,
    1, 8,

    -1, 0x68F8, 64,
    1, 9,

    -1, 0x6938, 64,
    1, 10,

    -1, 0x6978, 64,
    2, 11,

    -1, 0x69B8, 64,
    2, 12,

    -1, 0x69F8, 64,
    2, 13,

    -1, 0x6A38, 64,
    2, 14,

    -1, 0x6A78, 64,
    2, 15,

    -4,
};

const s32 * const anim_0113[1] = {
    anim_0113__v0_l0,
};

const s32 anim_0119__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6AB8, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    3, 0,

    -1, 0x6AC8, 20,
    3, 1,

    -1, 0x6ADC, 16,
    3, 2,

    -1, 0x6AEC, 12,
    3, 3,

    -1, 0x6AF8, 16,
    3, 4,

    -4,
};

const s32 anim_0119__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6B08, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    5, 5,

    -1, 0x6B1C, 15,
    5, 6,

    -1, 0x6B2B, 20,
    5, 7,

    -1, 0x6B3F, 20,
    5, 8,

    -1, 0x6B53, 20,
    5, 9,

    -4,
};

const s32 anim_0119__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6B67, 16,
    2, 10,

    -1, 0x6B77, 20,
    2, 11,

    -1, 0x6B8B, 20,
    2, 12,

    -1, 0x6B9F, 20,
    2, 13,

    -1, 0x6BB3, 16,
    2, 14,

    -4,
};

const s32 * const anim_0119[3] = {
    anim_0119__v0_l0,
    anim_0119__v1_l0,
    anim_0119__v2_l0,
};

const s32 anim_0120__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6BC3, 20,
    3, 0,

    -1, 0x6BD7, 20,
    3, 1,

    -1, 0x6BEB, 20,
    2, 2,
    -1, 0x6BFF, 24,
    3, 3,

    -1, 0x6C17, 24,
    3, 4,

    -3, 10,
};

const s32 * const anim_0120[1] = {
    anim_0120__v0_l0,
};

const s32 anim_0121__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6C2F, 20,
    6, 0,

    -1, 0x6C43, 20,
    6, 1,

    -1, 0x6C2F, 20,
    6, 0,

    -1, 0x6C57, 20,
    6, 2,

    -1, 0x6C2F, 20,
    6, 0,

    -1, 0x6C43, 20,
    6, 1,

    -1, 0x6C2F, 20,
    26, 0,

    -1, 0x6C6B, 16,
    4, 3,

    -1, 0x6C7B, 20,
    4, 4,

    -1, 0x6C8F, 16,
    4, 5,

    -1, 0x6C9F, 16,
    4, 6,

    -1, 0x6CAF, 16,
    6, 7,

    -1, 0x6CBF, 20,
    3, 8,

    -1, 0x6CD3, 16,
    3, 9,

    -1, 0x6CE3, 20,
    3, 10,

    -1, 0x6CBF, 20,
    3, 8,

    -1, 0x6CD3, 16,
    3, 9,

    -1, 0x6CE3, 20,
    3, 10,

    -1, 0x6CBF, 20,
    3, 8,

    -1, 0x6CD3, 16,
    3, 9,

    -1, 0x6CE3, 20,
    3, 10,

    -1, 0x6CF7, 16,
    6, 11,

    -1, 0x6D07, 16,
    4, 12,

    -1, 0x6D17, 16,
    4, 13,

    -1, 0x6D27, 16,
    8, 14,

    -1, 0x6D37, 16,
    2, 15,

    -1, 0x6D47, 20,
    2, 16,

    -1, 0x6D5B, 20,
    5, 17,

    -1, 0x6D6F, 25,
    3, 18,

    -1, 0x6D88, 16,
    3, 19,

    -1, 0x6D98, 20,
    14, 20,

    -1, 0x6DAC, 20,
    3, 21,

    -1, 0x6DC0, 20,
    3, 22,

    -1, 0x6DD4, 15,
    4, 23,

    -1, 0x6DE3, 12,
    2, 24,

    -1, 0x6DEF, 16,
    2, 25,

    -4,
};

const s32 anim_0121__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6DFF, 16,
    1, 26,

    -1, 0x6E0F, 16,
    6, 27,

    -1, 0x6E1F, 16,
    60, 28,

    -1, 0x6E2F, 20,
    4, 29,

    -4,
};

const s32 * const anim_0121[2] = {
    anim_0121__v0_l0,
    anim_0121__v1_l0,
};

const s32 anim_0122__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6E43, 25,
    3, 0,

    -1, 0x6E5C, 25,
    3, 1,

    -1, 0x6E75, 25,
    3, 2,

    -1, 0x6E8E, 16,
    3, 3,

    -1, 0x6E9E, 25,
    3, 4,

    -1, 0x6EB7, 25,
    3, 5,

    -1, 0x6ED0, 25,
    3, 6,

    -1, 0x6EE9, 20,
    3, 7,

    -1, 0x6E43, 25,
    3, 0,

    -1, 0x6E5C, 25,
    3, 1,

    -1, 0x6E75, 25,
    3, 2,

    -1, 0x6E8E, 16,
    3, 3,

    -1, 0x6E9E, 25,
    3, 4,

    -1, 0x6EB7, 25,
    3, 5,

    -1, 0x6ED0, 25,
    3, 6,

    -1, 0x6EE9, 20,
    3, 7,

    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6EFD, 16,
    2, 8,

    -1, 0x6F0D, 20,
    2, 9,

    -1, 0x6F21, 20,
    2, 10,

    -4,
};

const s32 anim_0122__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6F35, 25,
    3, 11,

    -1, 0x6F4E, 20,
    3, 12,

    -1, 0x6F62, 25,
    3, 13,

    -1, 0x6F7B, 20,
    3, 14,

    -3, 23,
};

const s32 anim_0122__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6F8F, 20,
    2, 15,

    -1, 0x6FA3, 16,
    2, 16,

    -1, 0x6FB3, 16,
    4, 17,

    -1, 0x6FC3, 16,
    2, 18,

    -1, 0x6FD3, 16,
    2, 19,

    -1, 0x6FE3, 16,
    4, 20,

    -4,
};

const s32 * const anim_0122[3] = {
    anim_0122__v0_l0,
    anim_0122__v1_l0,
    anim_0122__v2_l0,
};

const s32 anim_0123__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x6FF3, 12,
    8, 0,

    -1, 0x6FFF, 15,
    8, 1,

    -1, 0x700E, 20,
    8, 2,

    -1, 0x7022, 20,
    8, 3,

    -1, 0x7036, 20,
    4, 4,

    -1, 0x704A, 20,
    4, 5,

    -1, 0x7036, 20,
    4, 4,

    -1, 0x7022, 20,
    8, 3,

    -1, 0x705E, 15,
    4, 6,

    -1, 0x706D, 12,
    4, 7,

    -1, 0x7079, 16,
    4, 8,

    -1, 0x7089, 16,
    6, 9,

    -1, 0x7099, 16,
    4, 10,
    -1, 0x70A9, 24,
    5, 11,

    -1, 0x70C1, 20,
    5, 12,

    -1, 0x70D5, 24,
    5, 13,

    -1, 0x70ED, 16,
    5, 14,

    -1, 0x70FD, 16,
    5, 15,

    -1, 0x710D, 16,
    5, 16,

    -1, 0x711D, 24,
    5, 17,

    -1, 0x7135, 20,
    5, 18,

    -1, 0x7149, 24,
    5, 19,

    -1, 0x70ED, 16,
    5, 14,

    -1, 0x7161, 16,
    5, 20,

    -1, 0x710D, 16,
    5, 16,

    -3, 60,
};

const s32 * const anim_0123[1] = {
    anim_0123__v0_l0,
};

const s32 anim_0124__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7171, 20,
    6, 0,

    -1, 0x7185, 16,
    6, 1,

    -1, 0x7171, 20,
    6, 0,

    -1, 0x7195, 20,
    6, 2,

    -1, 0x71A9, 20,
    6, 3,

    -1, 0x71BD, 16,
    6, 4,

    -1, 0x71A9, 20,
    6, 3,

    -1, 0x71CD, 20,
    6, 5,

    -3, 43,
};

const s32 anim_0124__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x71E1, 16,
    4, 6,

    -1, 0x71F1, 16,
    6, 7,

    -1, 0x7201, 16,
    4, 8,

    -1, 0x7211, 16,
    4, 9,

    -1, 0x7221, 16,
    4, 10,

    -1, 0x7231, 16,
    4, 11,

    -1, 0x7221, 16,
    4, 10,

    -1, 0x7211, 16,
    4, 9,

    -1, 0x7241, 16,
    4, 12,

    -1, 0x7241, 16,
    4, 12,

    -1, 0x7241, 16,
    4, 12,

    -1, 0x7241, 16,
    8, 12,

    -1, 0x7251, 16,
    4, 13,

    -1, 0x7261, 16,
    4, 14,

    -1, 0x7271, 16,
    4, 15,

    -1, 0x7281, 12,
    6, 16,

    -1, 0x728D, 16,
    4, 17,

    -1, 0x729D, 16,
    4, 18,

    -1, 0x72AD, 20,
    4, 19,

    -1, 0x72C1, 20,
    4, 20,

    -1, 0x72C1, 20,
    4, 20,

    -1, 0x72C1, 20,
    16, 20,

    -4,
};

const s32 * const anim_0124[2] = {
    anim_0124__v0_l0,
    anim_0124__v1_l0,
};

const s32 anim_0125__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x72D5, 20,
    3, 0,

    -1, 0x72E9, 12,
    4, 1,

    -1, 0x72F5, 15,
    3, 2,

    -1, 0x7304, 15,
    3, 3,

    -1, 0x7313, 15,
    3, 4,

    -1, 0x7322, 20,
    3, 5,

    -1, 0x7336, 25,
    3, 6,

    -1, 0x734F, 15,
    3, 7,

    -1, 0x735E, 20,
    3, 8,

    -1, 0x7372, 16,
    3, 9,

    -1, 0x7382, 16,
    3, 10,

    -1, 0x7392, 20,
    8, 11,

    -1, 0x73A6, 20,
    4, 12,

    -1, 0x73BA, 20,
    4, 13,

    -1, 0x73CE, 20,
    4, 14,

    -1, 0x73E2, 20,
    4, 15,

    -1, 0x73F6, 20,
    60, 16,

    -4,
};

const s32 * const anim_0125[1] = {
    anim_0125__v0_l0,
};

const s32 anim_0126__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x740A, 20,
    2, 0,

    -1, 0x741E, 16,
    2, 1,

    -1, 0x742E, 16,
    2, 2,

    -1, 0x743E, 16,
    2, 3,

    -1, 0x744E, 16,
    2, 4,

    -1, 0x745E, 20,
    3, 5,
    -1, 0x7472, 16,
    3, 6,

    -1, 0x7482, 20,
    3, 7,

    -1, 0x7496, 25,
    3, 8,

    -1, 0x74AF, 20,
    3, 9,

    -1, 0x74C3, 16,
    3, 10,

    -1, 0x74D3, 16,
    3, 11,

    -1, 0x74E3, 16,
    3, 12,

    -1, 0x74F3, 20,
    3, 13,

    -1, 0x7472, 16,
    3, 6,

    -1, 0x7482, 20,
    3, 7,

    -1, 0x7496, 25,
    3, 8,

    -1, 0x74AF, 20,
    3, 9,

    -1, 0x7507, 16,
    3, 14,

    -1, 0x7517, 16,
    3, 15,

    -1, 0x7527, 16,
    3, 16,

    -1, 0x74F3, 20,
    3, 13,

    -3, 80,
};

const s32 * const anim_0126[1] = {
    anim_0126__v0_l0,
};

const s32 anim_0127__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7537, 12,
    1, 0,

    -4,
};

const s32 anim_0127__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7543, 16,
    1, 1,

    -4,
};

const s32 anim_0127__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7553, 16,
    1, 2,

    -4,
};

const s32 anim_0127__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7563, 12,
    1, 3,

    -4,
};

const s32 anim_0127__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x756F, 15,
    1, 4,

    -4,
};

const s32 anim_0127__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x757E, 15,
    6, 5,

    -1, 0x758D, 15,
    6, 6,

    -1, 0x759C, 15,
    8, 7,

    -1, 0x75AB, 15,
    6, 8,

    -1, 0x757E, 15,
    6, 5,

    -4,
};

const s32 * const anim_0127[6] = {
    anim_0127__v0_l0,
    anim_0127__v1_l0,
    anim_0127__v2_l0,
    anim_0127__v3_l0,
    anim_0127__v4_l0,
    anim_0127__v5_l0,
};

const s32 anim_0129__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x75BA, 12,
    4, 0,

    -1, 0x75C6, 12,
    4, 1,

    -1, 0x75D2, 12,
    4, 2,

    -1, 0x75C6, 12,
    4, 1,

    -3, 23,
};

const s32 * const anim_0129[1] = {
    anim_0129__v0_l0,
};

const s32 anim_0130__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x75DE, 20,
    3, 0,

    -1, 0x75F2, 20,
    3, 1,

    -1, 0x7606, 20,
    3, 2,

    -1, 0x761A, 25,
    3, 3,

    -1, 0x7633, 20,
    3, 4,

    -1, 0x7647, 20,
    3, 5,

    -1, 0x765B, 15,
    3, 6,

    -1, 0x766A, 20,
    3, 7,

    -3, 43,
};

const s32 * const anim_0130[1] = {
    anim_0130__v0_l0,
};

const s32 anim_0135__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x767E, 20,
    4, 0,

    -1, 0x7692, 15,
    4, 1,

    -1, 0x76A1, 15,
    4, 2,

    -1, 0x76B0, 15,
    4, 3,

    -1, 0x76A1, 15,
    4, 2,

    -1, 0x7692, 15,
    4, 1,

    -3, 33,
};

const s32 * const anim_0135[1] = {
    anim_0135__v0_l0,
};

const s32 anim_0139__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x76BF, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -1, 0x76D7, 20,
    4, 1,

    -1, 0x76EB, 16,
    4, 2,

    -1, 0x76FB, 18,
    4, 3,

    -1, 0x770D, 20,
    2, 4,

    -4,
};

const s32 anim_0139__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x770D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0x7721, 24,
    2, 5,

    -1, 0x7739, 20,
    2, 6,
    -1, 0x774D, 24,
    3, 7,

    -1, 0x7765, 24,
    3, 8,

    -1, 0x777D, 24,
    3, 9,

    -3, 15,
};

const s32 anim_0139__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7795, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 10,

    -1, 0x77AD, 20,
    2, 11,

    -1, 0x77C1, 16,
    2, 12,

    -1, 0x77D1, 20,
    2, 13,

    -1, 0x77E5, 24,
    2, 14,
    -1, 0x77FD, 28,
    3, 15,

    -1, 0x7819, 28,
    3, 16,

    -1, 0x7835, 28,
    3, 17,

    -3, 15,
};

const s32 * const anim_0139[3] = {
    anim_0139__v0_l0,
    anim_0139__v1_l0,
    anim_0139__v2_l0,
};

const s32 anim_0140__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7851, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x7869, 24,
    2, 1,

    -1, 0x7881, 20,
    4, 2,

    -1, 0x7895, 24,
    1, 3,

    -4,
};

const s32 anim_0140__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x78AD, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0x78BF, 24,
    2, 5,

    -1, 0x78D7, 30,
    2, 6,

    -1, 0x78F5, 24,
    2, 7,

    -1, 0x790D, 18,
    2, 8,

    -1, 0x791F, 30,
    2, 9,

    -1, 0x793D, 25,
    2, 10,

    -1, 0x7956, 24,
    2, 11,

    -3, 46,
};

const s32 * const anim_0140[2] = {
    anim_0140__v0_l0,
    anim_0140__v1_l0,
};

const s32 anim_0141__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x796E, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x7986, 20,
    2, 1,

    -1, 0x799A, 24,
    4, 2,

    -1, 0x79B2, 12,
    6, 3,

    -1, 0x79BE, 24,
    2, 4,

    -4,
};

const s32 anim_0141__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x79D6, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 5,

    -1, 0x79EA, 20,
    2, 6,
    -1, 0x79FE, 20,
    3, 7,

    -1, 0x7A12, 20,
    3, 8,

    -1, 0x7A26, 16,
    3, 9,

    -3, 15,
};

const s32 anim_0141__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7A36, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 10,

    -1, 0x7A4A, 30,
    2, 11,

    -1, 0x7A68, 28,
    2, 12,
    -1, 0x7A84, 28,
    3, 13,

    -1, 0x7AA0, 28,
    3, 14,

    -1, 0x7ABC, 28,
    3, 15,

    -3, 15,
};

const s32 * const anim_0141[3] = {
    anim_0141__v0_l0,
    anim_0141__v1_l0,
    anim_0141__v2_l0,
};

const s32 anim_0142__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7AD8, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x7AF0, 20,
    2, 1,

    -1, 0x7B04, 24,
    4, 2,

    -1, 0x7B1C, 20,
    6, 3,

    -1, 0x7B30, 24,
    2, 4,

    -4,
};

const s32 anim_0142__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7B48, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 5,

    -1, 0x7B5C, 20,
    2, 6,

    -1, 0x7B70, 20,
    2, 7,
    -1, 0x7B84, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 8,

    -1, 0x7BA2, 30,
    3, 9,

    -1, 0x7BC0, 30,
    3, 10,

    -3, 21,
};

const s32 * const anim_0142[2] = {
    anim_0142__v0_l0,
    anim_0142__v1_l0,
};

const s32 anim_0143__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7BDE, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,
    -1, 0x7BF6, 24,
    3, 1,

    -1, 0x7C0E, 24,
    3, 2,

    -1, 0x7C26, 24,
    3, 3,

    -3, 15,
};

const s32 anim_0143__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7BDE, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x7C3E, 24,
    3, 4,

    -1, 0x7C56, 20,
    3, 5,

    -1, 0x7C6A, 16,
    4, 6,

    -1, 0x7C7A, 20,
    4, 7,

    -1, 0x7C8E, 24,
    4, 8,

    -4,
};

const s32 anim_0143__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7CA6, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 9,

    -1, 0x7CC2, 28,
    3, 10,

    -1, 0x7CDE, 28,
    3, 11,

    -3, 21,
};

const s32 * const anim_0143[3] = {
    anim_0143__v0_l0,
    anim_0143__v1_l0,
    anim_0143__v2_l0,
};

const s32 anim_0144__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7CFA, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    4, 0,

    -1, 0x7D0E, 20,
    4, 1,

    -1, 0x7D22, 15,
    4, 2,

    -1, 0x7D31, 20,
    4, 3,

    -1, 0x7D45, 24,
    4, 4,

    -1, 0x7D5D, 25,
    4, 5,

    -1, 0x7D76, 20,
    4, 6,

    -1, 0x7D8A, 20,
    4, 7,

    -1, 0x7D9E, 16,
    4, 8,

    -1, 0x7DAE, 20,
    4, 9,

    -1, 0x7DC2, 25,
    4, 10,

    -1, 0x7DDB, 24,
    2, 11,
    -1, 0x7DF3, 28,
    3, 12,

    -1, 0x7E0F, 28,
    3, 13,

    -1, 0x7E2B, 28,
    3, 14,

    -3, 15,
};

const s32 * const anim_0144[1] = {
    anim_0144__v0_l0,
};

const s32 anim_0145__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7E47, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,
    -1, 0x7E57, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 1,

    -1, 0x7E6B, 20,
    2, 2,

    -1, 0x7E7F, 20,
    2, 3,

    -3, 18,
};

const s32 anim_0145__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7E93, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0x7EA7, 20,
    2, 5,

    -1, 0x7EBB, 16,
    2, 6,

    -1, 0x7ECB, 20,
    2, 7,

    -1, 0x7EDF, 24,
    2, 8,
    -1, 0x7EF7, 28,
    2, 9,

    -1, 0x7F13, 28,
    2, 10,

    -1, 0x7F2F, 28,
    2, 11,

    -3, 15,
};

const s32 * const anim_0145[2] = {
    anim_0145__v0_l0,
    anim_0145__v1_l0,
};

const s32 anim_0146__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x7F4B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x7F8B, 64,
    2, 1,

    -1, 0x7FCB, 64,
    2, 2,

    -1, 0x800B, 64,
    2, 3,

    -1, 0x804B, 64,
    2, 4,

    -1, 0x808B, 64,
    2, 5,

    -1, 0x7F4B, 64,
    2, 0,

    -1, 0x7F8B, 64,
    2, 1,

    -1, 0x7FCB, 64,
    2, 2,

    -1, 0x80CB, 64,
    2, 6,

    -1, 0x810B, 64,
    2, 7,

    -1, 0x814B, 64,
    2, 8,

    -3, 66,
};

const s32 * const anim_0146[1] = {
    anim_0146__v0_l0,
};

const s32 anim_0148__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x818B, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0148__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x819F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0148__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x81B3, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0148__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x81C7, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0148__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x81DB, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0148__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x81EF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0148__v6_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8203, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0148__v7_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8217, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0148[8] = {
    anim_0148__v0_l0,
    anim_0148__v1_l0,
    anim_0148__v2_l0,
    anim_0148__v3_l0,
    anim_0148__v4_l0,
    anim_0148__v5_l0,
    anim_0148__v6_l0,
    anim_0148__v7_l0,
};

const s32 anim_0149__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8227, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    5, 0,

    -1, 0x823B, 16,
    5, 1,

    -1, 0x824B, 20,
    5, 2,

    -1, 0x825F, 16,
    5, 3,

    -1, 0x826F, 20,
    5, 4,

    -1, 0x8283, 16,
    5, 5,

    -1, 0x8293, 20,
    5, 6,

    -1, 0x82A7, 16,
    5, 7,

    -3, 46,
};

const s32 * const anim_0149[1] = {
    anim_0149__v0_l0,
};

const s32 anim_0150__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x82B7, 18,
    -6, 0, (((-7 & 0xFF) << 0) | ((9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((31 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0150__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x82C9, 20,
    -6, 0, (((-20 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0150__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x82DD, 15,
    -6, 0, (((-26 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0150__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x82EC, 20,
    -6, 0, (((-27 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0150__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8300, 20,
    -6, 0, (((-24 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0150__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8314, 15,
    -6, 0, (((-19 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0150__v6_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8323, 18,
    -6, 0, (((-8 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0150__v7_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8335, 20,
    -6, 0, (((1 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0150__v8_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8349, 16,
    -6, 0, (((3 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0150__v9_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8359, 18,
    -6, 0, (((7 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0150__v10_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x836B, 20,
    -6, 0, (((5 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0150__v11_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x837F, 20,
    -6, 0, (((2 & 0xFF) << 0) | ((7 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((27 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0150[12] = {
    anim_0150__v0_l0,
    anim_0150__v1_l0,
    anim_0150__v2_l0,
    anim_0150__v3_l0,
    anim_0150__v4_l0,
    anim_0150__v5_l0,
    anim_0150__v6_l0,
    anim_0150__v7_l0,
    anim_0150__v8_l0,
    anim_0150__v9_l0,
    anim_0150__v10_l0,
    anim_0150__v11_l0,
};

const s32 anim_0151__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8393, 18,
    -6, 0, (((-8 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0151__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x83A5, 15,
    -6, 0, (((-19 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0151__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x83B4, 20,
    -6, 0, (((-24 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0151__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x83C8, 20,
    -6, 0, (((-27 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0151__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x83DC, 15,
    -6, 0, (((-26 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0151__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x83EB, 20,
    -6, 0, (((-20 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0151__v6_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x83FF, 18,
    -6, 0, (((-7 & 0xFF) << 0) | ((9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((31 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0151__v7_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8411, 20,
    -6, 0, (((2 & 0xFF) << 0) | ((7 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((27 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0151__v8_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8425, 20,
    -6, 0, (((5 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0151__v9_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8439, 18,
    -6, 0, (((7 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0151__v10_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x844B, 16,
    -6, 0, (((3 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0151__v11_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x845B, 20,
    -6, 0, (((1 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0151[12] = {
    anim_0151__v0_l0,
    anim_0151__v1_l0,
    anim_0151__v2_l0,
    anim_0151__v3_l0,
    anim_0151__v4_l0,
    anim_0151__v5_l0,
    anim_0151__v6_l0,
    anim_0151__v7_l0,
    anim_0151__v8_l0,
    anim_0151__v9_l0,
    anim_0151__v10_l0,
    anim_0151__v11_l0,
};

const s32 anim_0152__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x846F, 15,
    -6, 0, (((-7 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    8, 0,

    -1, 0x847E, 15,
    8, 1,

    -1, 0x848D, 15,
    8, 2,

    -1, 0x847E, 15,
    8, 1,

    -3, 26,
};

const s32 * const anim_0152[1] = {
    anim_0152__v0_l0,
};

const s32 anim_0153__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x849C, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 0,

    -1, 0x84B4, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 1,

    -1, 0x84C8, 16,
    -6, 0, (((-14 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x84D8, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 3,

    -1, 0x84F0, 28,
    -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    4, 4,

    -1, 0x850C, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 5,

    -1, 0x8520, 12,
    -6, 0, (((-14 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 6,

    -1, 0x852C, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 7,

    -1, 0x849C, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    4, 0,

    -1, 0x84B4, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    3, 1,

    -1, 0x84C8, 16,
    -6, 0, (((-14 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x84D8, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 3,

    -1, 0x84F0, 28,
    -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 anim_0153__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8544, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 8,

    -1, 0x855C, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    2, 9,

    -1, 0x8570, 16,
    -6, 0, (((-14 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 10,

    -1, 0x8580, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 11,

    -1, 0x8598, 28,
    -6, 0, (((-14 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    4, 12,

    -1, 0x85B4, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    3, 13,

    -1, 0x85C8, 12,
    -6, 0, (((-14 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 14,

    -1, 0x85D4, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 15,

    -1, 0x8544, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    4, 8,

    -1, 0x855C, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    3, 9,

    -1, 0x8570, 16,
    -6, 0, (((-14 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 10,

    -1, 0x8580, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 11,

    -1, 0x8598, 28,
    -6, 0, (((-14 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 12,

    -4,
};

const s32 * const anim_0153[2] = {
    anim_0153__v0_l0,
    anim_0153__v1_l0,
};

const s32 anim_0154__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x85EC, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 0,

    -1, 0x85FC, 24,
    -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x8614, 28,
    -6, 0, (((-2 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    4, 2,

    -1, 0x8630, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    3, 3,

    -1, 0x8640, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 4,

    -1, 0x8650, 28,
    -6, 0, (((-2 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 5,

    -1, 0x866C, 32,
    -6, 0, (((-2 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    4, 6,

    -1, 0x868C, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 7,

    -1, 0x85EC, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 0,

    -4,
};

const s32 anim_0154__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x86A0, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0x86B0, 24,
    -6, 0, (((-2 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 9,

    -1, 0x86C8, 28,
    -6, 0, (((-2 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    4, 10,

    -1, 0x86E4, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 11,

    -1, 0x86F4, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 12,

    -1, 0x8704, 28,
    -6, 0, (((-2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 13,

    -1, 0x8720, 32,
    -6, 0, (((-2 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    4, 14,

    -1, 0x8740, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 15,

    -1, 0x86A0, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -4,
};

const s32 * const anim_0154[2] = {
    anim_0154__v0_l0,
    anim_0154__v1_l0,
};

const s32 anim_0155__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8754, 12,
    -6, 0, (((-7 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 0,

    -1, 0x8760, 28,
    -6, 0, (((-17 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 1,

    -1, 0x877C, 24,
    -6, 0, (((-19 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    4, 2,

    -1, 0x8794, 20,
    -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    3, 3,

    -1, 0x87A8, 20,
    -6, 0, (((-7 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 4,

    -1, 0x87BC, 24,
    -6, 0, (((-1 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 5,

    -1, 0x87D4, 28,
    -6, 0, (((5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    4, 6,

    -1, 0x87F0, 20,
    -6, 0, (((3 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    3, 7,

    -1, 0x8754, 12,
    -6, 0, (((-7 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 0,

    -1, 0x8760, 28,
    -6, 0, (((-17 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 1,

    -1, 0x877C, 24,
    -6, 0, (((-19 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    4, 2,

    -1, 0x8794, 20,
    -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    3, 3,

    -1, 0x87A8, 20,
    -6, 0, (((-7 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 * const anim_0155[1] = {
    anim_0155__v0_l0,
};

const s32 anim_0156__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8804, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x8818, 20,
    2, 1,

    -1, 0x882C, 25,
    2, 2,

    -1, 0x8845, 24,
    2, 3,

    -1, 0x885D, 24,
    2, 4,

    -1, 0x8875, 25,
    2, 5,

    -1, 0x888E, 30,
    2, 6,

    -1, 0x88AC, 20,
    2, 7,

    -3, 46,
};

const s32 anim_0156__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x88C0, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 8,

    -1, 0x88D4, 20,
    2, 9,

    -1, 0x88E8, 16,
    3, 10,

    -1, 0x88F8, 20,
    3, 11,

    -1, 0x890C, 24,
    3, 12,

    -4,
};

const s32 anim_0156__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8924, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 13,

    -1, 0x8940, 28,
    3, 14,

    -1, 0x895C, 28,
    3, 15,

    -3, 21,
};

const s32 * const anim_0156[3] = {
    anim_0156__v0_l0,
    anim_0156__v1_l0,
    anim_0156__v2_l0,
};

const s32 anim_0157__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8978, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    3, 0,

    -1, 0x898C, 25,
    3, 1,

    -1, 0x89A5, 20,
    3, 2,

    -3, 21,
};

const s32 anim_0157__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x89B9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -1, 0x89CD, 20,
    3, 4,

    -1, 0x89E1, 15,
    3, 5,

    -1, 0x89F0, 20,
    3, 6,

    -1, 0x8A04, 25,
    3, 7,

    -4,
};

const s32 anim_0157__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8A1D, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 8,

    -1, 0x8A36, 25,
    3, 9,

    -1, 0x8A4F, 25,
    3, 10,

    -3, 21,
};

const s32 * const anim_0157[3] = {
    anim_0157__v0_l0,
    anim_0157__v1_l0,
    anim_0157__v2_l0,
};

const s32 anim_0158__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8A68, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    5, 0,

    -1, 0x8A7C, 16,
    5, 1,

    -1, 0x8A8C, 20,
    5, 2,

    -1, 0x8AA0, 16,
    5, 3,

    -1, 0x8AB0, 20,
    5, 4,

    -1, 0x8AC4, 16,
    5, 5,

    -1, 0x8AD4, 20,
    5, 6,

    -1, 0x8AE8, 16,
    5, 7,

    -3, 46,
};

const s32 * const anim_0158[1] = {
    anim_0158__v0_l0,
};

const s32 anim_0159__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8AF8, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0159__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B0C, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0159__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B20, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0159__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B2F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0159__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B43, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0159__v5_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B5B, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0159__v6_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B74, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0159__v7_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B88, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0159__v8_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8B9C, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0159__v9_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8BAC, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0159__v10_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8BC0, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 * const anim_0159[11] = {
    anim_0159__v0_l0,
    anim_0159__v1_l0,
    anim_0159__v2_l0,
    anim_0159__v3_l0,
    anim_0159__v4_l0,
    anim_0159__v5_l0,
    anim_0159__v6_l0,
    anim_0159__v7_l0,
    anim_0159__v8_l0,
    anim_0159__v9_l0,
    anim_0159__v10_l0,
};

const s32 anim_0160__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8BD9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 0,

    -1, 0x8BED, 20,
    2, 1,

    -1, 0x8C01, 16,
    2, 2,

    -1, 0x8C11, 20,
    2, 3,

    -1, 0x8C25, 20,
    2, 4,

    -1, 0x8C39, 16,
    2, 5,

    -1, 0x8C49, 20,
    2, 6,

    -1, 0x8C5D, 20,
    2, 7,

    -3, 46,
};

const s32 anim_0160__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8C71, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 8,

    -1, 0x8C85, 20,
    2, 9,

    -1, 0x8C99, 16,
    2, 10,

    -1, 0x8CA9, 20,
    2, 11,

    -1, 0x8CBD, 20,
    2, 12,

    -1, 0x8CD1, 16,
    2, 13,

    -1, 0x8CE1, 20,
    2, 14,

    -1, 0x8CF5, 20,
    2, 15,

    -3, 46,
};

const s32 * const anim_0160[2] = {
    anim_0160__v0_l0,
    anim_0160__v1_l0,
};

const s32 anim_0161__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8D09, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x8D19, 16,
    2, 1,

    -1, 0x8D29, 16,
    2, 2,

    -1, 0x8D39, 16,
    2, 3,

    -1, 0x8D49, 16,
    2, 4,

    -1, 0x8D59, 16,
    2, 5,

    -1, 0x8D69, 16,
    2, 6,

    -1, 0x8D79, 16,
    2, 7,

    -3, 49,
};

const s32 * const anim_0161[1] = {
    anim_0161__v0_l0,
};

const s32 anim_0162__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8D89, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x8DA2, 25,
    2, 1,

    -1, 0x8DBB, 25,
    2, 2,

    -1, 0x8DD4, 16,
    2, 3,

    -1, 0x8DE4, 25,
    2, 4,

    -1, 0x8DFD, 25,
    2, 5,

    -1, 0x8E16, 25,
    2, 6,

    -1, 0x8E2F, 20,
    2, 7,

    -3, 46,
};

const s32 anim_0162__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8E43, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 8,

    -1, 0x8E57, 20,
    2, 9,

    -1, 0x8E6B, 20,
    2, 10,

    -1, 0x8E7F, 20,
    2, 11,

    -1, 0x8E6B, 20,
    2, 10,

    -1, 0x8E57, 20,
    2, 9,

    -3, 36,
};

const s32 * const anim_0162[2] = {
    anim_0162__v0_l0,
    anim_0162__v1_l0,
};

const s32 anim_0163__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8E93, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 0,

    -1, 0x8EAB, 20,
    -6, 0, (((-15 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 1,

    -1, 0x8EBF, 20,
    -6, 0, (((-20 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 2,

    -1, 0x8ED3, 20,
    -6, 0, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 3,

    -1, 0x8EE7, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 4,

    -1, 0x8EF7, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 5,

    -1, 0x8F15, 30,
    -6, 0, (((6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 6,

    -1, 0x8F33, 30,
    -6, 0, (((3 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 7,

    -3, 67,
};

const s32 * const anim_0163[1] = {
    anim_0163__v0_l0,
};

const s32 anim_0164__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8F51, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    4, 0,

    -1, 0x8F65, 20,
    4, 1,

    -1, 0x8F79, 20,
    4, 2,

    -1, 0x8F8D, 20,
    4, 3,

    -1, 0x8FA1, 20,
    4, 4,

    -1, 0x8FB5, 16,
    4, 5,

    -1, 0x8FC5, 16,
    4, 6,

    -1, 0x8FD5, 16,
    4, 7,

    -3, 46,
};

const s32 anim_0164__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x8FE5, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    4, 8,

    -1, 0x8FFE, 25,
    4, 9,

    -1, 0x9017, 20,
    4, 10,

    -1, 0x902B, 20,
    4, 11,

    -1, 0x903F, 25,
    4, 12,

    -1, 0x9058, 20,
    4, 13,

    -1, 0x906C, 20,
    4, 14,

    -1, 0x9080, 25,
    4, 15,

    -3, 46,
};

const s32 anim_0164__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9099, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    4, 16,

    -1, 0x90B2, 25,
    4, 17,

    -1, 0x90CB, 20,
    4, 18,

    -1, 0x90DF, 20,
    4, 19,

    -1, 0x90F3, 25,
    4, 20,

    -1, 0x910C, 20,
    4, 21,

    -1, 0x9120, 20,
    4, 22,

    -1, 0x9134, 25,
    4, 23,

    -3, 46,
};

const s32 * const anim_0164[3] = {
    anim_0164__v0_l0,
    anim_0164__v1_l0,
    anim_0164__v2_l0,
};

const s32 anim_0165__v0_l0[] = {
    -2, 8, (((u16)16 << 0) | ((u16)0x10 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0165[1] = {
    anim_0165__v0_l0,
};

const s32 anim_0166__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x914D, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 0,

    -1, 0x918D, 64,
    2, 1,

    -1, 0x91CD, 64,
    2, 2,

    -3, 21,
};

const s32 * const anim_0166[1] = {
    anim_0166__v0_l0,
};

const s32 anim_0176__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x920D, 16,
    1, 0,

    -4,
};

const s32 anim_0176__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x921D, 16,
    1, 1,

    -4,
};

const s32 * const anim_0176[2] = {
    anim_0176__v0_l0,
    anim_0176__v1_l0,
};

const s32 anim_0177__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x922D, 20,
    3, 0,

    -1, 0x9241, 20,
    3, 1,

    -1, 0x9255, 20,
    3, 2,

    -1, 0x9269, 20,
    3, 3,

    -1, 0x927D, 20,
    3, 4,

    -1, 0x9291, 20,
    3, 5,

    -3, 33,
};

const s32 anim_0177__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x92A5, 20,
    3, 6,

    -1, 0x92B9, 20,
    3, 7,

    -1, 0x92CD, 16,
    3, 8,

    -1, 0x92DD, 20,
    3, 9,

    -1, 0x92F1, 20,
    3, 10,

    -1, 0x9305, 16,
    3, 11,

    -3, 33,
};

const s32 anim_0177__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9315, 20,
    3, 12,

    -1, 0x9329, 25,
    3, 13,

    -1, 0x9342, 20,
    3, 14,

    -1, 0x9356, 20,
    3, 15,

    -1, 0x936A, 20,
    3, 16,

    -1, 0x937E, 20,
    3, 17,

    -3, 33,
};

const s32 anim_0177__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9392, 16,
    3, 18,

    -1, 0x93A2, 20,
    3, 19,

    -1, 0x93B6, 16,
    3, 20,

    -1, 0x93C6, 16,
    3, 21,

    -1, 0x93D6, 16,
    3, 22,

    -1, 0x93E6, 16,
    3, 23,

    -3, 33,
};

const s32 * const anim_0177[4] = {
    anim_0177__v0_l0,
    anim_0177__v1_l0,
    anim_0177__v2_l0,
    anim_0177__v3_l0,
};

const s32 anim_0178__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x93F6, 30,
    1, 0,

    -1, 0x9414, 25,
    1, 1,

    -3, 13,
};

const s32 anim_0178__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x942D, 16,
    1, 2,

    -4,
};

const s32 anim_0178__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x943D, 25,
    2, 3,

    -1, 0x9456, 25,
    2, 4,

    -3, 13,
};

const s32 anim_0178__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x946F, 16,
    3, 5,

    -4,
};

const s32 * const anim_0178[4] = {
    anim_0178__v0_l0,
    anim_0178__v1_l0,
    anim_0178__v2_l0,
    anim_0178__v3_l0,
};

const s32 anim_0179__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x947F, 24,
    6, 0,

    -1, 0x9497, 20,
    6, 1,

    -1, 0x94AB, 16,
    6, 2,

    -4,
};

const s32 anim_0179__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x94BB, 20,
    6, 3,

    -1, 0x94CF, 20,
    6, 4,

    -1, 0x94E3, 24,
    6, 5,

    -4,
};

const s32 * const anim_0179[2] = {
    anim_0179__v0_l0,
    anim_0179__v1_l0,
};

const s32 anim_0180__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x94FB, 16,
    2, 0,

    -1, 0x950B, 16,
    2, 1,

    -1, 0x951B, 16,
    2, 2,

    -1, 0x952B, 16,
    2, 3,

    -1, 0x953B, 16,
    2, 4,

    -1, 0x954B, 16,
    2, 5,

    -3, 33,
};

const s32 * const anim_0180[1] = {
    anim_0180__v0_l0,
};

const s32 anim_0181__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x955B, 16,
    2, 0,

    -1, 0x956B, 16,
    2, 1,

    -1, 0x957B, 12,
    2, 2,

    -1, 0x9587, 12,
    2, 3,

    -1, 0x9593, 12,
    3, 4,

    -1, 0x959F, 16,
    3, 5,

    -1, 0x95AF, 12,
    3, 6,

    -1, 0x95BB, 12,
    3, 7,

    -1, 0x95C7, 12,
    3, 8,

    -1, 0x95D3, 16,
    3, 9,

    -1, 0x95E3, 16,
    3, 10,

    -4,
};

const s32 * const anim_0181[1] = {
    anim_0181__v0_l0,
};

const s32 anim_0182__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x95F3, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 0,

    -1, 0x960B, 24,
    8, 1,

    -1, 0x9623, 30,
    8, 2,

    -1, 0x9641, 24,
    8, 3,

    -1, 0x9659, 24,
    8, 4,

    -1, 0x9671, 24,
    8, 5,

    -1, 0x9689, 30,
    8, 6,

    -1, 0x96A7, 24,
    8, 7,

    -1, 0x95F3, 24,
    8, 0,

    -1, 0x96BF, 24,
    8, 8,

    -1, 0x96D7, 30,
    8, 9,

    -1, 0x96F5, 24,
    8, 10,

    -1, 0x9659, 24,
    8, 4,

    -1, 0x9671, 24,
    8, 5,

    -1, 0x9689, 30,
    8, 6,

    -1, 0x96A7, 24,
    8, 7,

    -3, 86,
};

const s32 * const anim_0182[1] = {
    anim_0182__v0_l0,
};

const s32 anim_0183__v0_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x970D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0x9721, 25,
    8, 1,

    -1, 0x973A, 25,
    6, 2,

    -1, 0x9753, 20,
    6, 3,

    -1, 0x9767, 20,
    8, 4,

    -1, 0x977B, 20,
    6, 5,

    -1, 0x978F, 24,
    6, 6,

    -1, 0x97A7, 24,
    6, 7,

    -1, 0x97BF, 24,
    6, 8,

    -1, 0x97D7, 20,
    18, 9,

    -1, 0x97EB, 20,
    6, 10,

    -1, 0x97FF, 25,
    6, 11,

    -1, 0x9818, 25,
    6, 12,

    -1, 0x9831, 20,
    6, 13,

    -1, 0x9845, 20,
    6, 14,

    -1, 0x9859, 20,
    6, 15,

    -1, 0x986D, 20,
    6, 16,
    -1, 0x9881, 24,
    10, 17,

    -1, 0x9899, 28,
    10, 18,

    -1, 0x98B5, 24,
    10, 19,

    -1, 0x98CD, 28,
    10, 20,

    -1, 0x98E9, 24,
    10, 21,

    -1, 0x9901, 24,
    10, 22,

    -1, 0x9919, 24,
    10, 23,

    -1, 0x9931, 24,
    10, 24,

    -3, 40,
};

const s32 anim_0183__v1_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9949, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 25,

    -1, 0x9961, 24,
    8, 26,

    -1, 0x9979, 20,
    4, 27,

    -1, 0x998D, 20,
    4, 28,

    -1, 0x99A1, 20,
    4, 29,

    -4,
};

const s32 * const anim_0183[2] = {
    anim_0183__v0_l0,
    anim_0183__v1_l0,
};

const s32 anim_0184__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x99B5, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x99C9, 24,
    1, 1,
    -1, 0x99E1, 18,
    6, 2,

    -1, 0x99F3, 18,
    6, 3,

    -1, 0x9A05, 18,
    6, 4,

    -1, 0x9A17, 18,
    6, 5,

    -1, 0x9A29, 18,
    6, 6,

    -1, 0x9A3B, 18,
    6, 7,

    -1, 0x9A4D, 18,
    6, 8,

    -1, 0x9A5F, 18,
    6, 9,

    -1, 0x99E1, 18,
    6, 2,

    -1, 0x99F3, 18,
    6, 3,

    -1, 0x9A05, 18,
    6, 4,

    -1, 0x9A17, 18,
    6, 5,

    -1, 0x9A71, 18,
    6, 10,

    -1, 0x9A83, 18,
    6, 11,

    -1, 0x9A95, 18,
    6, 12,

    -1, 0x9A5F, 18,
    6, 9,

    -3, 80,
};

const s32 anim_0184__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x99C9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -1, 0x99B5, 20,
    1, 0,

    -4,
};

const s32 * const anim_0184[2] = {
    anim_0184__v0_l0,
    anim_0184__v1_l0,
};

const s32 anim_0185__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9AA7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x9ABF, 24,
    2, 1,

    -1, 0x9AD7, 24,
    2, 2,

    -1, 0x9AEF, 24,
    2, 3,

    -1, 0x9B07, 24,
    2, 4,

    -1, 0x9B1F, 24,
    2, 5,

    -1, 0x9B37, 28,
    2, 6,

    -1, 0x9B53, 24,
    2, 7,

    -3, 49,
};

const s32 anim_0185__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9AA7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x9ABF, 24,
    2, 1,

    -1, 0x9AD7, 24,
    2, 2,

    -1, 0x9AEF, 24,
    2, 3,

    -1, 0x9B07, 24,
    2, 4,

    -1, 0x9B1F, 24,
    2, 5,

    -1, 0x9B37, 28,
    2, 6,

    -1, 0x9B53, 24,
    2, 7,

    -3, 49,
};

const s32 * const anim_0185[2] = {
    anim_0185__v0_l0,
    anim_0185__v1_l0,
};

const s32 anim_0186__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9B6B, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x9B7B, 16,
    2, 1,

    -1, 0x9B8B, 16,
    2, 2,

    -1, 0x9B9B, 16,
    2, 3,

    -1, 0x9B6B, 16,
    2, 0,

    -1, 0x9B7B, 16,
    2, 1,

    -1, 0x9B8B, 16,
    2, 2,

    -1, 0x9B9B, 16,
    2, 3,

    -3, 49,
};

const s32 anim_0186__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9BAB, 16,
    2, 4,

    -1, 0x9BBB, 16,
    2, 5,

    -1, 0x9BCB, 16,
    2, 6,

    -1, 0x9BDB, 16,
    2, 7,

    -1, 0x9BEB, 16,
    2, 8,

    -1, 0x9BFB, 16,
    2, 9,

    -1, 0x9C0B, 16,
    2, 10,

    -1, 0x9C1B, 16,
    2, 11,

    -3, 43,
};

const s32 * const anim_0186[2] = {
    anim_0186__v0_l0,
    anim_0186__v1_l0,
};

const s32 anim_0187__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9C2B, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x9C3F, 20,
    1, 1,

    -4,
};

const s32 * const anim_0187[1] = {
    anim_0187__v0_l0,
};

const s32 anim_0188__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9C53, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x9C6B, 20,
    2, 1,

    -1, 0x9C7F, 20,
    2, 2,

    -1, 0x9C93, 16,
    2, 3,

    -4,
};

const s32 * const anim_0188[1] = {
    anim_0188__v0_l0,
};

const s32 anim_0189__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9CA3, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,
    -1, 0x9CB7, 20,
    4, 1,

    -1, 0x9CCB, 20,
    4, 2,

    -3, 10,
};

const s32 anim_0189__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9CDF, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 3,

    -4,
};

const s32 * const anim_0189[2] = {
    anim_0189__v0_l0,
    anim_0189__v1_l0,
};

const s32 anim_0190__v0_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9CF7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,
    -1, 0x9D0F, 28,
    4, 1,

    -1, 0x9D2B, 28,
    4, 2,

    -3, 10,
};

const s32 anim_0190__v1_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9CF7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 0,

    -1, 0x9D47, 24,
    4, 3,

    -4,
};

const s32 * const anim_0190[2] = {
    anim_0190__v0_l0,
    anim_0190__v1_l0,
};

const s32 anim_0191__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x9D5F, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 0,

    -1, 0x9D9F, 64,
    8, 1,

    -1, 0x9DDF, 64,
    8, 2,

    -1, 0x9E1F, 64,
    8, 3,

    -1, 0x9E5F, 64,
    8, 4,

    -1, 0x9E9F, 64,
    8, 5,

    -1, 0x9EDF, 64,
    8, 6,

    -1, 0x9F1F, 64,
    8, 7,

    -1, 0x9D5F, 64,
    8, 0,

    -1, 0x9F5F, 64,
    8, 8,

    -1, 0x9F9F, 64,
    8, 9,

    -1, 0x9FDF, 64,
    8, 10,

    -1, 0x9E5F, 64,
    8, 4,

    -1, 0x9E9F, 64,
    8, 5,

    -1, 0x9EDF, 64,
    8, 6,

    -1, 0x9F1F, 64,
    8, 7,

    -3, 86,
};

const s32 anim_0191__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xA01F, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 11,

    -1, 0xA05F, 64,
    8, 12,

    -1, 0xA09F, 64,
    8, 13,

    -1, 0xA0DF, 64,
    8, 14,

    -1, 0xA11F, 64,
    8, 15,

    -1, 0xA15F, 64,
    8, 16,

    -1, 0xA19F, 64,
    8, 17,

    -1, 0xA1DF, 64,
    8, 18,

    -1, 0xA01F, 64,
    8, 11,

    -1, 0xA21F, 64,
    8, 19,

    -1, 0xA25F, 64,
    8, 20,

    -1, 0xA29F, 64,
    8, 21,

    -1, 0xA11F, 64,
    8, 15,

    -1, 0xA15F, 64,
    8, 16,

    -1, 0xA19F, 64,
    8, 17,

    -1, 0xA1DF, 64,
    8, 18,

    -3, 86,
};

const s32 anim_0191__v2_l0[] = {
    -2, 12, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xA2DF, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 22,

    -1, 0xA31F, 64,
    8, 23,

    -1, 0xA35F, 64,
    8, 24,

    -1, 0xA39F, 64,
    8, 25,

    -1, 0xA3DF, 64,
    8, 26,

    -1, 0xA41F, 64,
    8, 27,

    -1, 0xA45F, 64,
    8, 28,

    -1, 0xA49F, 64,
    8, 29,

    -1, 0xA2DF, 64,
    8, 22,

    -1, 0xA4DF, 64,
    8, 30,

    -1, 0xA51F, 64,
    8, 31,

    -1, 0xA55F, 64,
    8, 32,

    -1, 0xA3DF, 64,
    8, 26,

    -1, 0xA41F, 64,
    8, 27,

    -1, 0xA45F, 64,
    8, 28,

    -1, 0xA49F, 64,
    8, 29,

    -3, 86,
};

const s32 anim_0191__v3_l0[] = {
    -2, 13, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xA59F, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 33,

    -1, 0xA5DF, 64,
    8, 34,

    -1, 0xA61F, 64,
    8, 35,

    -1, 0xA65F, 64,
    8, 36,

    -1, 0xA69F, 64,
    8, 37,

    -1, 0xA6DF, 64,
    8, 38,

    -1, 0xA71F, 64,
    8, 39,

    -1, 0xA75F, 64,
    8, 40,

    -1, 0xA59F, 64,
    8, 33,

    -1, 0xA79F, 64,
    8, 41,

    -1, 0xA7DF, 64,
    8, 42,

    -1, 0xA81F, 64,
    8, 43,

    -1, 0xA69F, 64,
    8, 37,

    -1, 0xA6DF, 64,
    8, 38,

    -1, 0xA71F, 64,
    8, 39,

    -1, 0xA75F, 64,
    8, 40,

    -3, 86,
};

const s32 anim_0191__v4_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xA85F, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 44,

    -1, 0xA89F, 64,
    8, 45,

    -1, 0xA8DF, 64,
    8, 46,

    -1, 0xA91F, 64,
    8, 47,

    -1, 0xA85F, 64,
    8, 44,

    -1, 0xA95F, 64,
    8, 48,

    -1, 0xA8DF, 64,
    8, 46,

    -1, 0xA99F, 64,
    8, 49,

    -1, 0xA9DF, 64,
    8, 50,

    -1, 0xAA1F, 64,
    8, 51,

    -1, 0xAA5F, 64,
    8, 52,

    -1, 0xAA9F, 64,
    8, 53,

    -1, 0xA9DF, 64,
    8, 50,

    -1, 0xA89F, 64,
    8, 45,

    -1, 0xA8DF, 64,
    8, 46,

    -1, 0xAADF, 64,
    8, 54,

    -3, 86,
};

const s32 anim_0191__v5_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xA85F, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 44,

    -1, 0xA89F, 64,
    8, 45,

    -1, 0xA8DF, 64,
    8, 46,

    -1, 0xA91F, 64,
    8, 47,

    -1, 0xA85F, 64,
    8, 44,

    -1, 0xA95F, 64,
    8, 48,

    -1, 0xA8DF, 64,
    8, 46,

    -1, 0xA99F, 64,
    8, 49,

    -1, 0xA9DF, 64,
    8, 50,

    -1, 0xAA1F, 64,
    8, 51,

    -1, 0xAA5F, 64,
    8, 52,

    -1, 0xAA9F, 64,
    8, 53,

    -1, 0xA9DF, 64,
    8, 50,

    -1, 0xA89F, 64,
    8, 45,

    -1, 0xA8DF, 64,
    8, 46,

    -1, 0xAADF, 64,
    8, 54,

    -3, 86,
};

const s32 * const anim_0191[6] = {
    anim_0191__v0_l0,
    anim_0191__v1_l0,
    anim_0191__v2_l0,
    anim_0191__v3_l0,
    anim_0191__v4_l0,
    anim_0191__v5_l0,
};

const s32 anim_0192__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAB1F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 0,

    -1, 0xAB33, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-5 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 1,

    -4,
};

const s32 anim_0192__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAB47, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0xAB57, 16,
    2, 3,

    -1, 0xAB67, 16,
    2, 4,

    -1, 0xAB77, 16,
    2, 5,

    -1, 0xAB87, 16,
    2, 6,

    -1, 0xAB97, 16,
    2, 7,

    -1, 0xABA7, 16,
    2, 8,

    -1, 0xABB7, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0192__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xABC7, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 10,

    -1, 0xABDB, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    2, 11,

    -1, 0xABEF, 25,
    2, 12,
    -1, 0xAC08, 30,
    2, 13,

    -1, 0xAC26, 30,
    2, 14,

    -1, 0xAC44, 30,
    2, 15,

    -3, 15,
};

const s32 * const anim_0192[3] = {
    anim_0192__v0_l0,
    anim_0192__v1_l0,
    anim_0192__v2_l0,
};

const s32 anim_0193__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAC62, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 0,

    -1, 0xAC76, 20,
    3, 1,

    -4,
};

const s32 anim_0193__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAC8A, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0xAC9A, 16,
    2, 3,

    -1, 0xACAA, 16,
    2, 4,

    -1, 0xACBA, 16,
    2, 5,

    -1, 0xACCA, 16,
    2, 6,

    -1, 0xACDA, 16,
    2, 7,

    -1, 0xACEA, 16,
    2, 8,

    -1, 0xACFA, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0193__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAD0A, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 10,

    -1, 0xAD1E, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    2, 11,

    -1, 0xAD32, 25,
    2, 12,
    -1, 0xAD4B, 30,
    2, 13,

    -1, 0xAD69, 30,
    2, 14,

    -1, 0xAD87, 30,
    2, 15,

    -3, 15,
};

const s32 * const anim_0193[3] = {
    anim_0193__v0_l0,
    anim_0193__v1_l0,
    anim_0193__v2_l0,
};

const s32 anim_0194__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xADA5, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0xADB9, 24,
    1, 1,

    -1, 0xADD1, 18,
    1, 2,

    -1, 0xADE3, 24,
    1, 3,

    -4,
};

const s32 * const anim_0194[1] = {
    anim_0194__v0_l0,
};

const s32 anim_0195__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xADFB, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 0,

    -1, 0xAE0F, 25,
    2, 1,
    -1, 0xAE28, 35,
    2, 2,

    -1, 0xAE4B, 35,
    2, 3,

    -1, 0xAE6E, 35,
    2, 4,

    -3, 15,
};

const s32 * const anim_0195[1] = {
    anim_0195__v0_l0,
};

const s32 anim_0196__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAE91, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0xAEA5, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -1, 0xAEB9, 20,
    -6, 0, (((-12 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 121,
    2, 2,

    -1, 0xAECD, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -1, 0xAEE1, 28,
    -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-48 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-12 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 4,

    -1, 0xAEFD, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-40 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 5,

    -1, 0xAF15, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 6,

    -1, 0xAF2D, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 7,

    -1, 0xAF3D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 8,

    -4,
};

const s32 * const anim_0196[1] = {
    anim_0196__v0_l0,
};

const s32 anim_0198__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xAF51, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0xAF65, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -1, 0xAF79, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0xAF8D, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-23 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -1, 0xAFA1, 28,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-35 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 4,

    -1, 0xAFBD, 24,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-32 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    2, 5,

    -1, 0xAFD5, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 6,

    -1, 0xAFE9, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 7,

    -4,
};

const s32 anim_0198__v1_l0[] = {
    -2, 14, (((u16)16 << 0) | ((u16)0x50 << 16)),
    5, -1,

    -1, 0xAFF9, 12,
    2, 8,

    -1, 0xB005, 24,
    3, 9,

    -1, 0xB01D, 16,
    3, 10,

    -1, 0xB02D, 9,
    4, 11,

    -4,
};

const s32 * const anim_0198[2] = {
    anim_0198__v0_l0,
    anim_0198__v1_l0,
};

const s32 anim_0201__v0_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB036, 18,
    -6, 0, (((-7 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    4, 0,

    -1, 0xB048, 25,
    1, 1,

    -1, 0xB061, 20,
    2, 2,

    -1, 0xB075, 20,
    3, 3,

    -1, 0xB089, 20,
    3, 4,

    -1, 0xB09D, 30,
    3, 5,

    -1, 0xB0BB, 25,
    3, 6,

    -1, 0xB0D4, 20,
    3, 7,

    -1, 0xB0E8, 20,
    3, 8,

    -1, 0xB0FC, 30,
    3, 9,

    -1, 0xB11A, 25,
    3, 10,

    -1, 0xB133, 25,
    1, 11,

    -1, 0xB14C, 20,
    1, 12,

    -1, 0xB160, 25,
    1, 13,
    -1, 0xB179, 35,
    2, 14,

    -1, 0xB19C, 35,
    2, 15,

    -1, 0xB1BF, 35,
    2, 16,

    -3, 15,
};

const s32 * const anim_0201[1] = {
    anim_0201__v0_l0,
};

const s32 anim_0202__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB1E2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-21 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 0,

    -1, 0xB1F6, 20,
    2, 1,

    -1, 0xB20A, 30,
    2, 2,

    -1, 0xB228, 25,
    2, 3,

    -1, 0xB241, 20,
    2, 4,

    -1, 0xB255, 20,
    2, 5,

    -1, 0xB269, 30,
    2, 6,

    -1, 0xB287, 25,
    2, 7,

    -1, 0xB1E2, 20,
    2, 0,

    -1, 0xB1F6, 20,
    2, 1,

    -1, 0xB20A, 30,
    2, 2,

    -1, 0xB228, 25,
    2, 3,

    -1, 0xB2A0, 20,
    2, 8,

    -1, 0xB2B4, 20,
    2, 9,

    -1, 0xB2C8, 30,
    2, 10,

    -1, 0xB287, 25,
    2, 7,

    -3, 89,
};

const s32 * const anim_0202[1] = {
    anim_0202__v0_l0,
};

const s32 anim_0203__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB2E6, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-17 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    1, 0,

    -1, 0xB2FF, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-17 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0203[1] = {
    anim_0203__v0_l0,
};

const s32 anim_0204__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB318, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    6, 0,

    -1, 0xB331, 24,
    3, 1,
    -1, 0xB349, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    6, 2,

    -1, 0xB367, 30,
    6, 3,

    -1, 0xB385, 30,
    6, 4,

    -1, 0xB3A3, 30,
    6, 5,

    -1, 0xB349, 30,
    6, 2,

    -1, 0xB367, 30,
    6, 3,

    -1, 0xB385, 30,
    6, 4,

    -1, 0xB3A3, 30,
    6, 5,

    -3, 43,
};

const s32 * const anim_0204[1] = {
    anim_0204__v0_l0,
};

const s32 anim_0210__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB3C1, 24,
    -6, 0, (((-10 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0xB3D9, 20,
    8, 1,

    -1, 0xB3ED, 20,
    8, 2,

    -1, 0xB401, 20,
    8, 3,

    -1, 0xB415, 20,
    8, 4,

    -4,
};

const s32 anim_0210__v1_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB429, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    5, 5,

    -1, 0xB43D, 16,
    5, 6,

    -1, 0xB44D, 15,
    5, 7,

    -1, 0xB45C, 16,
    5, 8,

    -1, 0xB46C, 16,
    5, 9,

    -4,
};

const s32 anim_0210__v2_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB47C, 20,
    2, 10,

    -1, 0xB490, 25,
    2, 11,

    -1, 0xB4A9, 20,
    2, 12,

    -1, 0xB4BD, 20,
    2, 13,

    -1, 0xB4D1, 20,
    2, 14,

    -4,
};

const s32 * const anim_0210[3] = {
    anim_0210__v0_l0,
    anim_0210__v1_l0,
    anim_0210__v2_l0,
};

const s32 anim_0211__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB4E5, 25,
    3, 0,

    -1, 0xB4FE, 20,
    3, 1,

    -1, 0xB4E5, 25,
    3, 0,

    -1, 0xB512, 25,
    3, 2,
    -1, 0xB52B, 20,
    3, 3,

    -1, 0xB53F, 20,
    3, 4,

    -3, 10,
};

const s32 * const anim_0211[1] = {
    anim_0211__v0_l0,
};

const s32 anim_0212__v0_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB553, 16,
    6, 0,

    -1, 0xB563, 20,
    4, 1,

    -1, 0xB577, 20,
    4, 2,

    -1, 0xB58B, 20,
    4, 3,

    -1, 0xB59F, 20,
    6, 4,

    -1, 0xB5B3, 20,
    4, 5,

    -1, 0xB5C7, 20,
    4, 6,

    -1, 0xB563, 20,
    4, 1,

    -1, 0xB553, 16,
    6, 0,

    -1, 0xB563, 20,
    4, 1,

    -1, 0xB577, 20,
    4, 2,

    -1, 0xB58B, 20,
    4, 3,

    -1, 0xB59F, 20,
    6, 4,

    -1, 0xB5B3, 20,
    4, 5,

    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB5DB, 20,
    6, 7,

    -1, 0xB5EF, 20,
    4, 8,

    -1, 0xB603, 25,
    4, 9,

    -1, 0xB61C, 20,
    8, 10,

    -1, 0xB630, 20,
    6, 11,

    -1, 0xB644, 20,
    6, 12,

    -1, 0xB630, 20,
    6, 11,

    -1, 0xB61C, 20,
    8, 10,

    -1, 0xB658, 16,
    4, 13,

    -1, 0xB668, 25,
    4, 14,

    -1, 0xB681, 20,
    4, 15,

    -1, 0xB695, 20,
    6, 16,

    -1, 0xB6A9, 20,
    4, 17,

    -1, 0xB6BD, 20,
    16, 18,

    -1, 0xB6D1, 20,
    2, 19,

    -1, 0xB6E5, 20,
    4, 20,

    -1, 0xB6F9, 20,
    4, 21,

    -1, 0xB70D, 20,
    4, 22,

    -1, 0xB721, 20,
    4, 23,

    -1, 0xB735, 20,
    4, 24,

    -1, 0xB6F9, 20,
    4, 21,

    -1, 0xB749, 20,
    6, 25,

    -1, 0xB75D, 24,
    2, 26,

    -3, 191,
};

const s32 anim_0212__v1_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB775, 20,
    1, 27,

    -1, 0xB789, 20,
    6, 28,

    -1, 0xB79D, 24,
    60, 29,

    -1, 0xB7B5, 24,
    4, 30,

    -4,
};

const s32 * const anim_0212[2] = {
    anim_0212__v0_l0,
    anim_0212__v1_l0,
};

const s32 anim_0213__v0_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB7CD, 20,
    2, 0,

    -4,
};

const s32 anim_0213__v1_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB7E1, 20,
    3, 1,

    -1, 0xB7F5, 25,
    3, 2,

    -1, 0xB80E, 25,
    3, 3,

    -1, 0xB7F5, 25,
    3, 2,

    -3, 23,
};

const s32 anim_0213__v2_l0[] = {
    -2, 11, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB827, 20,
    4, 4,

    -1, 0xB83B, 24,
    2, 5,

    -4,
};

const s32 * const anim_0213[3] = {
    anim_0213__v0_l0,
    anim_0213__v1_l0,
    anim_0213__v2_l0,
};

const s32 anim_0214__v0_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB853, 20,
    2, 0,

    -1, 0xB867, 20,
    6, 1,

    -1, 0xB87B, 20,
    4, 2,

    -1, 0xB88F, 20,
    4, 3,

    -1, 0xB87B, 20,
    4, 2,

    -1, 0xB88F, 20,
    4, 3,

    -1, 0xB87B, 20,
    4, 2,

    -1, 0xB88F, 20,
    4, 3,

    -1, 0xB87B, 20,
    4, 2,

    -1, 0xB88F, 20,
    4, 3,

    -1, 0xB87B, 20,
    4, 2,

    -1, 0xB88F, 20,
    4, 3,

    -1, 0xB87B, 20,
    4, 2,

    -1, 0xB88F, 20,
    4, 3,

    -1, 0xB8A3, 20,
    8, 4,

    -1, 0xB8B7, 20,
    2, 5,

    -1, 0xB8CB, 20,
    3, 6,

    -1, 0xB8DF, 25,
    4, 7,

    -1, 0xB8F8, 20,
    4, 8,

    -1, 0xB90C, 20,
    12, 9,

    -4,
};

const s32 * const anim_0214[1] = {
    anim_0214__v0_l0,
};

const s32 anim_0215__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xB920, 20,
    6, 0,

    -1, 0xB934, 30,
    8, 1,

    -1, 0xB952, 20,
    4, 2,

    -1, 0xB966, 12,
    4, 3,

    -1, 0xB972, 16,
    6, 4,

    -1, 0xB982, 25,
    8, 5,

    -1, 0xB99B, 24,
    4, 6,

    -1, 0xB9B3, 12,
    4, 7,

    -1, 0xB9BF, 16,
    4, 8,

    -1, 0xB9CF, 20,
    4, 9,

    -1, 0xB9E3, 20,
    4, 10,

    -1, 0xB9F7, 16,
    4, 11,

    -1, 0xBA07, 16,
    4, 12,

    -1, 0xBA17, 16,
    4, 13,

    -1, 0xBA27, 16,
    4, 14,

    -1, 0xBA37, 20,
    4, 15,

    -1, 0xBA4B, 20,
    4, 16,

    -1, 0xBA5F, 20,
    8, 17,

    -1, 0xBA73, 20,
    4, 18,

    -1, 0xBA87, 25,
    4, 19,

    -1, 0xBAA0, 20,
    16, 20,

    -1, 0xBAB4, 16,
    4, 21,

    -1, 0xBAC4, 20,
    6, 22,
    -1, 0xBAD8, 25,
    5, 23,

    -1, 0xBAF1, 25,
    5, 24,

    -1, 0xBB0A, 25,
    5, 25,

    -1, 0xBB23, 20,
    5, 26,

    -1, 0xBAB4, 16,
    5, 21,

    -1, 0xBB37, 20,
    5, 27,

    -1, 0xBAD8, 25,
    5, 23,

    -1, 0xBAF1, 25,
    5, 24,

    -1, 0xBB0A, 25,
    5, 25,

    -1, 0xBB23, 20,
    5, 26,

    -1, 0xBAB4, 16,
    5, 21,

    -1, 0xBAC4, 20,
    5, 22,

    -3, 60,
};

const s32 * const anim_0215[1] = {
    anim_0215__v0_l0,
};

const s32 anim_0216__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBB4B, 16,
    4, 0,

    -1, 0xBB5B, 16,
    4, 1,

    -1, 0xBB6B, 20,
    4, 2,

    -1, 0xBB7F, 20,
    4, 3,

    -1, 0xBB93, 20,
    4, 4,

    -1, 0xBBA7, 25,
    4, 5,

    -1, 0xBBC0, 20,
    4, 6,

    -1, 0xBBD4, 25,
    4, 7,

    -1, 0xBBED, 25,
    8, 8,

    -1, 0xBC06, 25,
    6, 9,

    -1, 0xBC1F, 30,
    6, 10,

    -1, 0xBC3D, 25,
    6, 11,
    -1, 0xBC56, 30,
    6, 12,

    -1, 0xBC74, 30,
    6, 13,

    -1, 0xBC92, 30,
    6, 14,

    -1, 0xBCB0, 30,
    6, 15,

    -1, 0xBCCE, 30,
    6, 16,

    -1, 0xBCEC, 30,
    6, 17,

    -1, 0xBD0A, 30,
    6, 18,

    -1, 0xBD28, 30,
    6, 19,

    -3, 40,
};

const s32 * const anim_0216[1] = {
    anim_0216__v0_l0,
};

const s32 anim_0217__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBD46, 20,
    2, 0,

    -1, 0xBD5A, 20,
    2, 1,
    -1, 0xBD6E, 24,
    3, 2,

    -1, 0xBD86, 24,
    3, 3,

    -1, 0xBD9E, 24,
    3, 4,

    -1, 0xBDB6, 24,
    3, 5,

    -1, 0xBDCE, 24,
    3, 6,

    -1, 0xBDE6, 24,
    3, 7,

    -1, 0xBDFE, 20,
    3, 8,

    -1, 0xBE12, 20,
    3, 9,

    -3, 40,
};

const s32 * const anim_0217[1] = {
    anim_0217__v0_l0,
};

const s32 anim_0218__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBE26, 20,
    1, 0,

    -4,
};

const s32 anim_0218__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBE3A, 25,
    1, 1,

    -4,
};

const s32 anim_0218__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBE53, 20,
    1, 2,

    -4,
};

const s32 anim_0218__v3_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xBE67, 20,
    6, 3,

    -1, 0xBE7B, 20,
    6, 4,

    -1, 0xBE8F, 20,
    6, 5,

    -1, 0xBEA3, 20,
    6, 6,

    -1, 0xBEB7, 20,
    6, 7,

    -4,
};

const s32 * const anim_0218[4] = {
    anim_0218__v0_l0,
    anim_0218__v1_l0,
    anim_0218__v2_l0,
    anim_0218__v3_l0,
};

const s32 anim_0222__v0_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0xBECB, 30,
    3, 0,

    -1, 0xBEE9, 30,
    3, 1,

    -1, 0xBF07, 30,
    3, 2,

    -1, 0xBF25, 30,
    3, 3,

    -3, 23,
};

const s32 anim_0222__v1_l0[] = {
    -2, 15, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0xBF43, 25,
    1, 4,

    -4,
};

const s32 * const anim_0222[2] = {
    anim_0222__v0_l0,
    anim_0222__v1_l0,
};

const s32 anim_0223__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0xBF5C, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-21 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    2, 0,

    -1, 0xBF70, 20,
    2, 1,

    -1, 0xBF84, 30,
    2, 2,

    -1, 0xBFA2, 25,
    2, 3,

    -1, 0xBFBB, 20,
    2, 4,

    -1, 0xBFCF, 20,
    2, 5,

    -1, 0xBFE3, 30,
    2, 6,

    -1, 0xC001, 25,
    2, 7,

    -1, 0xBF5C, 20,
    2, 0,

    -1, 0xBF70, 20,
    2, 1,

    -1, 0xBF84, 30,
    2, 2,

    -1, 0xBFA2, 25,
    2, 3,

    -1, 0xC01A, 20,
    2, 8,

    -1, 0xC02E, 20,
    2, 9,

    -1, 0xC042, 30,
    2, 10,

    -1, 0xC001, 25,
    2, 7,

    -3, 89,
};

const s32 anim_0223__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0xC060, 16,
    2, 11,

    -1, 0xC070, 24,
    4, 12,
    -1, 0xC088, 24,
    2, 13,

    -1, 0xC0A0, 24,
    2, 14,

    -1, 0xC0B8, 36,
    2, 15,

    -1, 0xC0DC, 30,
    2, 16,

    -1, 0xC0FA, 24,
    2, 17,

    -1, 0xC112, 20,
    2, 18,

    -1, 0xC126, 30,
    2, 19,

    -1, 0xC144, 30,
    2, 20,

    -1, 0xC162, 36,
    2, 21,

    -1, 0xC186, 25,
    2, 22,

    -1, 0xC19F, 20,
    2, 23,

    -1, 0xC1B3, 20,
    2, 24,

    -1, 0xC1C7, 30,
    2, 25,

    -1, 0xC1E5, 25,
    2, 26,

    -1, 0xC1FE, 20,
    2, 27,

    -1, 0xC212, 24,
    2, 28,

    -3, 80,
};

const s32 * const anim_0223[2] = {
    anim_0223__v0_l0,
    anim_0223__v1_l0,
};

const s32 anim_0230__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC22A, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xC242, 20,
    1, 1,

    -1, 0xC256, 25,
    1, 2,

    -1, 0xC26F, 20,
    8, 3,

    -4,
};

const s32 anim_0230__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC283, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 4,

    -1, 0xC297, 20,
    4, 5,
    -1, 0xC2AB, 28,
    4, 6,

    -1, 0xC2C7, 28,
    4, 7,

    -1, 0xC2E3, 28,
    4, 8,

    -3, 15,
};

const s32 anim_0230__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC2FF, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 9,

    -1, 0xC317, 25,
    4, 10,

    -1, 0xC330, 25,
    4, 11,
    -1, 0xC349, 35,
    3, 12,

    -1, 0xC36C, 35,
    3, 13,

    -1, 0xC38F, 35,
    3, 14,

    -3, 15,
};

const s32 * const anim_0230[3] = {
    anim_0230__v0_l0,
    anim_0230__v1_l0,
    anim_0230__v2_l0,
};

const s32 anim_0231__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC3B2, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xC3CA, 25,
    2, 1,

    -1, 0xC3E3, 20,
    2, 2,

    -1, 0xC3F7, 20,
    2, 3,

    -1, 0xC40B, 24,
    4, 4,

    -4,
};

const s32 anim_0231__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC423, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 5,

    -1, 0xC437, 20,
    1, 6,

    -1, 0xC44B, 25,
    1, 7,

    -1, 0xC464, 20,
    1, 8,
    -1, 0xC478, 25,
    3, 9,

    -1, 0xC491, 20,
    3, 10,

    -1, 0xC4A5, 25,
    3, 11,

    -1, 0xC4BE, 20,
    3, 12,

    -1, 0xC4D2, 20,
    3, 13,

    -1, 0xC4E6, 25,
    3, 14,

    -1, 0xC4FF, 25,
    3, 15,

    -1, 0xC518, 20,
    3, 16,

    -3, 40,
};

const s32 anim_0231__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC52C, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 17,
    -1, 0xC545, 30,
    3, 18,

    -1, 0xC563, 30,
    3, 19,

    -1, 0xC581, 30,
    3, 20,

    -3, 15,
};

const s32 * const anim_0231[3] = {
    anim_0231__v0_l0,
    anim_0231__v1_l0,
    anim_0231__v2_l0,
};

const s32 anim_0232__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC59F, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xC5BB, 30,
    2, 1,

    -1, 0xC5D9, 30,
    2, 2,

    -1, 0xC5F7, 20,
    4, 3,

    -4,
};

const s32 anim_0232__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC60B, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0xC624, 30,
    2, 5,

    -1, 0xC642, 25,
    2, 6,
    -1, 0xC65B, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 7,

    -1, 0xC67E, 25,
    3, 8,

    -1, 0xC697, 25,
    3, 9,

    -1, 0xC6B0, 25,
    3, 10,

    -3, 26,
};

const s32 anim_0232__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC6C9, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    4, 11,

    -1, 0xC6E2, 30,
    4, 12,

    -1, 0xC700, 25,
    4, 13,

    -1, 0xC719, 20,
    4, 14,

    -1, 0xC72D, 24,
    3, 15,

    -1, 0xC745, 25,
    3, 16,

    -1, 0xC75E, 25,
    3, 17,
    -1, 0xC777, 30,
    3, 18,

    -1, 0xC795, 30,
    3, 19,

    -1, 0xC7B3, 30,
    3, 20,

    -3, 15,
};

const s32 * const anim_0232[3] = {
    anim_0232__v0_l0,
    anim_0232__v1_l0,
    anim_0232__v2_l0,
};

const s32 anim_0233__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC7D1, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xC7E9, 24,
    2, 1,

    -1, 0xC801, 20,
    4, 2,

    -4,
};

const s32 anim_0233__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC815, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 3,

    -1, 0xC825, 20,
    2, 4,

    -1, 0xC839, 20,
    2, 5,
    -1, 0xC84D, 30,
    3, 6,

    -1, 0xC86B, 25,
    3, 7,

    -1, 0xC884, 30,
    3, 8,

    -1, 0xC8A2, 25,
    3, 9,

    -1, 0xC84D, 30,
    3, 6,

    -1, 0xC86B, 25,
    3, 7,

    -1, 0xC884, 30,
    3, 8,

    -1, 0xC8A2, 25,
    3, 9,

    -3, 40,
};

const s32 * const anim_0233[2] = {
    anim_0233__v0_l0,
    anim_0233__v1_l0,
};

const s32 anim_0234__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC8BB, 21,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xC8D0, 21,
    2, 1,

    -1, 0xC8E5, 21,
    2, 2,

    -3, 21,
};

const s32 anim_0234__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC8FA, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 3,

    -1, 0xC90C, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 4,

    -1, 0xC924, 20,
    3, 5,

    -1, 0xC938, 20,
    4, 6,

    -1, 0xC94C, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    4, 7,

    -1, 0xC960, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    4, 8,

    -4,
};

const s32 anim_0234__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC979, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    3, 9,

    -1, 0xC99C, 35,
    3, 10,

    -1, 0xC9BF, 35,
    3, 11,

    -3, 21,
};

const s32 * const anim_0234[3] = {
    anim_0234__v0_l0,
    anim_0234__v1_l0,
    anim_0234__v2_l0,
};

const s32 anim_0235__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xC9E2, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    4, 0,

    -1, 0xC9FB, 25,
    4, 1,

    -1, 0xCA14, 24,
    4, 2,

    -1, 0xCA2C, 24,
    4, 3,

    -1, 0xCA44, 20,
    4, 4,

    -1, 0xCA58, 25,
    4, 5,

    -1, 0xCA71, 20,
    4, 6,

    -1, 0xCA85, 24,
    4, 7,

    -1, 0xCA9D, 35,
    4, 8,

    -1, 0xCAC0, 20,
    4, 9,

    -1, 0xCAD4, 25,
    4, 10,
    -1, 0xCAED, 35,
    3, 11,

    -1, 0xCB10, 35,
    3, 12,

    -1, 0xCB33, 35,
    3, 13,

    -3, 15,
};

const s32 * const anim_0235[1] = {
    anim_0235__v0_l0,
};

const s32 anim_0236__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCB56, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,
    -1, 0xCB6A, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 1,

    -1, 0xCB83, 25,
    2, 2,

    -1, 0xCB9C, 25,
    2, 3,

    -3, 18,
};

const s32 anim_0236__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCBB5, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 4,

    -1, 0xCBCE, 30,
    2, 5,

    -1, 0xCBEC, 25,
    2, 6,

    -1, 0xCC05, 25,
    2, 7,

    -1, 0xCC1E, 20,
    2, 8,

    -1, 0xCC32, 25,
    2, 9,
    -1, 0xCC4B, 30,
    2, 10,

    -1, 0xCC69, 30,
    2, 11,

    -1, 0xCC87, 30,
    2, 12,

    -3, 15,
};

const s32 * const anim_0236[2] = {
    anim_0236__v0_l0,
    anim_0236__v1_l0,
};

const s32 anim_0237__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCCA5, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0xCCE5, 64,
    2, 1,

    -1, 0xCD25, 64,
    2, 2,

    -3, 21,
};

const s32 * const anim_0237[1] = {
    anim_0237__v0_l0,
};

const s32 anim_0239__v0_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCD65, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0239__v1_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCD7D, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0239__v2_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCD99, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0239__v3_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCDB1, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0239__v4_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCDCD, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0239__v5_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCDE9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0239__v6_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCE01, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0239__v7_l0[] = {
    -2, 16, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCE19, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0239[8] = {
    anim_0239__v0_l0,
    anim_0239__v1_l0,
    anim_0239__v2_l0,
    anim_0239__v3_l0,
    anim_0239__v4_l0,
    anim_0239__v5_l0,
    anim_0239__v6_l0,
    anim_0239__v7_l0,
};

const s32 anim_0240__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xCE31, 64,
    -6, 0, (((-10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    5, 0,

    -1, 0xCE71, 64,
    5, 1,

    -1, 0xCEB1, 64,
    5, 2,

    -1, 0xCEF1, 64,
    5, 3,

    -1, 0xCF31, 64,
    5, 4,

    -1, 0xCF71, 64,
    5, 5,

    -1, 0xCFB1, 64,
    5, 6,

    -1, 0xCFF1, 64,
    5, 7,

    -3, 46,
};

const s32 * const anim_0240[1] = {
    anim_0240__v0_l0,
};

const s32 anim_0241__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD031, 30,
    -6, 0, (((-7 & 0xFF) << 0) | ((9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((31 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0241__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD04F, 30,
    -6, 0, (((-20 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0241__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD06D, 36,
    -6, 0, (((-26 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0241__v3_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD091, 24,
    -6, 0, (((-27 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0241__v4_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD0A9, 30,
    -6, 0, (((-24 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0241__v5_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD0C7, 30,
    -6, 0, (((-19 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0241__v6_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD0E5, 30,
    -6, 0, (((-8 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0241__v7_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD103, 30,
    -6, 0, (((1 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0241__v8_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD121, 25,
    -6, 0, (((3 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0241__v9_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD13A, 25,
    -6, 0, (((7 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0241__v10_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD153, 25,
    -6, 0, (((5 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0241__v11_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD16C, 36,
    -6, 0, (((2 & 0xFF) << 0) | ((7 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((27 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0241[12] = {
    anim_0241__v0_l0,
    anim_0241__v1_l0,
    anim_0241__v2_l0,
    anim_0241__v3_l0,
    anim_0241__v4_l0,
    anim_0241__v5_l0,
    anim_0241__v6_l0,
    anim_0241__v7_l0,
    anim_0241__v8_l0,
    anim_0241__v9_l0,
    anim_0241__v10_l0,
    anim_0241__v11_l0,
};

const s32 anim_0242__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD190, 28,
    -6, 0, (((-8 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0242__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD1AC, 30,
    -6, 0, (((-19 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0242__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD1CA, 30,
    -6, 0, (((-24 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0242__v3_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD1E8, 30,
    -6, 0, (((-27 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0242__v4_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD206, 24,
    -6, 0, (((-26 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0242__v5_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD21E, 20,
    -6, 0, (((-20 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0242__v6_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD232, 28,
    -6, 0, (((-7 & 0xFF) << 0) | ((9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((31 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0242__v7_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD24E, 36,
    -6, 0, (((2 & 0xFF) << 0) | ((7 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((27 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0242__v8_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD272, 24,
    -6, 0, (((5 & 0xFF) << 0) | ((3 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0242__v9_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD28A, 28,
    -6, 0, (((7 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0242__v10_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD2A6, 30,
    -6, 0, (((3 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0242__v11_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD2C4, 21,
    -6, 0, (((1 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0242[12] = {
    anim_0242__v0_l0,
    anim_0242__v1_l0,
    anim_0242__v2_l0,
    anim_0242__v3_l0,
    anim_0242__v4_l0,
    anim_0242__v5_l0,
    anim_0242__v6_l0,
    anim_0242__v7_l0,
    anim_0242__v8_l0,
    anim_0242__v9_l0,
    anim_0242__v10_l0,
    anim_0242__v11_l0,
};

const s32 anim_0243__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD2D9, 28,
    -6, 0, (((-7 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    8, 0,

    -1, 0xD2F5, 28,
    8, 1,

    -1, 0xD311, 28,
    8, 2,

    -1, 0xD2F5, 28,
    8, 1,

    -3, 26,
};

const s32 * const anim_0243[1] = {
    anim_0243__v0_l0,
};

const s32 anim_0244__v0_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD32D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 0,

    -1, 0xD345, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 1,

    -1, 0xD359, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0xD371, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 3,

    -1, 0xD389, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    4, 4,

    -1, 0xD3A1, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 5,

    -1, 0xD3B1, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 6,

    -1, 0xD3CF, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 7,

    -1, 0xD32D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    4, 0,

    -1, 0xD345, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    3, 1,

    -1, 0xD359, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0xD371, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 3,

    -1, 0xD389, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 anim_0244__v1_l0[] = {
    -2, 17, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD3E7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 8,

    -1, 0xD3FF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    2, 9,

    -1, 0xD413, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 10,

    -1, 0xD42B, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 11,

    -1, 0xD443, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    4, 12,

    -1, 0xD45B, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    3, 13,

    -1, 0xD46B, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 14,

    -1, 0xD489, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 15,

    -1, 0xD3E7, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    4, 8,

    -1, 0xD3FF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    3, 9,

    -1, 0xD413, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 10,

    -1, 0xD42B, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 11,

    -1, 0xD443, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 12,

    -4,
};

const s32 * const anim_0244[2] = {
    anim_0244__v0_l0,
    anim_0244__v1_l0,
};

const s32 anim_0245__v0_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD4A1, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 0,

    -1, 0xD4B5, 18,
    -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0xD4C7, 24,
    -6, 0, (((-2 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    4, 2,

    -1, 0xD4DF, 25,
    -6, 0, (((-2 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    3, 3,

    -1, 0xD4F8, 24,
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 4,

    -1, 0xD510, 24,
    -6, 0, (((0 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 5,

    -1, 0xD528, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    4, 6,

    -1, 0xD53C, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 7,

    -1, 0xD4A1, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 0,

    -4,
};

const s32 anim_0245__v1_l0[] = {
    -2, 18, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD54C, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0xD560, 18,
    -6, 0, (((-2 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 9,

    -1, 0xD572, 24,
    -6, 0, (((-2 & 0xFF) << 0) | ((4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    4, 10,

    -1, 0xD58A, 25,
    -6, 0, (((-2 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 11,

    -1, 0xD5A3, 24,
    -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 12,

    -1, 0xD5BB, 24,
    -6, 0, (((0 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 13,

    -1, 0xD5D3, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    4, 14,

    -1, 0xD5E7, 16,
    -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 15,

    -1, 0xD54C, 20,
    -6, 0, (((-2 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -4,
};

const s32 * const anim_0245[2] = {
    anim_0245__v0_l0,
    anim_0245__v1_l0,
};

const s32 anim_0246__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD5F7, 20,
    -6, 0, (((-7 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 0,

    -1, 0xD60B, 18,
    -6, 0, (((-17 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 1,

    -1, 0xD61D, 24,
    -6, 0, (((-19 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    4, 2,

    -1, 0xD635, 25,
    -6, 0, (((-15 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    3, 3,

    -1, 0xD64E, 25,
    -6, 0, (((-7 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 4,

    -1, 0xD667, 24,
    -6, 0, (((-1 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 5,

    -1, 0xD67F, 24,
    -6, 0, (((5 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    4, 6,

    -1, 0xD697, 20,
    -6, 0, (((3 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    3, 7,

    -1, 0xD5F7, 20,
    -6, 0, (((-7 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 0,

    -1, 0xD60B, 18,
    -6, 0, (((-17 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 1,

    -1, 0xD61D, 24,
    -6, 0, (((-19 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    4, 2,

    -1, 0xD635, 25,
    -6, 0, (((-15 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    3, 3,

    -1, 0xD64E, 25,
    -6, 0, (((-7 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 * const anim_0246[1] = {
    anim_0246__v0_l0,
};

const s32 anim_0247__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD6AB, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0xD6C3, 30,
    2, 1,

    -1, 0xD6E1, 36,
    2, 2,

    -1, 0xD705, 36,
    2, 3,

    -1, 0xD729, 24,
    2, 4,

    -1, 0xD741, 30,
    2, 5,

    -1, 0xD75F, 36,
    2, 6,

    -1, 0xD783, 30,
    2, 7,

    -3, 46,
};

const s32 anim_0247__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD7A1, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0xD7B5, 20,
    2, 9,

    -1, 0xD7C9, 20,
    3, 10,

    -1, 0xD7DD, 20,
    3, 11,

    -1, 0xD7F1, 25,
    3, 12,

    -4,
};

const s32 anim_0247__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD80A, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    3, 13,

    -1, 0xD82D, 35,
    3, 14,

    -1, 0xD850, 35,
    3, 15,

    -3, 21,
};

const s32 * const anim_0247[3] = {
    anim_0247__v0_l0,
    anim_0247__v1_l0,
    anim_0247__v2_l0,
};

const s32 anim_0248__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD873, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    3, 0,

    -1, 0xD896, 35,
    3, 1,

    -1, 0xD8B9, 35,
    3, 2,

    -3, 21,
};

const s32 anim_0248__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD8DC, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -1, 0xD8F5, 20,
    3, 4,

    -1, 0xD909, 25,
    3, 5,

    -1, 0xD922, 20,
    3, 6,

    -1, 0xD936, 30,
    3, 7,

    -4,
};

const s32 anim_0248__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD954, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 8,

    -1, 0xD972, 30,
    3, 9,

    -1, 0xD990, 30,
    3, 10,

    -3, 21,
};

const s32 * const anim_0248[3] = {
    anim_0248__v0_l0,
    anim_0248__v1_l0,
    anim_0248__v2_l0,
};

const s32 anim_0249__v0_l0[] = {
    -2, 19, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xD9AE, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    5, 0,

    -1, 0xD9CC, 24,
    5, 1,

    -1, 0xD9E4, 30,
    5, 2,

    -1, 0xDA02, 24,
    5, 3,

    -1, 0xDA1A, 30,
    5, 4,

    -1, 0xDA38, 30,
    5, 5,

    -1, 0xDA56, 30,
    5, 6,

    -1, 0xDA74, 30,
    5, 7,

    -3, 46,
};

const s32 * const anim_0249[1] = {
    anim_0249__v0_l0,
};

const s32 anim_0250__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDA92, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0250__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDAAB, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0250__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDAC4, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0250__v3_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDADC, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0250__v4_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDAF4, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0250__v5_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB08, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0250__v6_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB21, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0250__v7_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB35, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0250__v8_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB4D, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0250__v9_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB70, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0250__v10_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB84, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 * const anim_0250[11] = {
    anim_0250__v0_l0,
    anim_0250__v1_l0,
    anim_0250__v2_l0,
    anim_0250__v3_l0,
    anim_0250__v4_l0,
    anim_0250__v5_l0,
    anim_0250__v6_l0,
    anim_0250__v7_l0,
    anim_0250__v8_l0,
    anim_0250__v9_l0,
    anim_0250__v10_l0,
};

const s32 anim_0251__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDB9D, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 0,

    -1, 0xDBBB, 30,
    2, 1,

    -1, 0xDBD9, 35,
    2, 2,

    -1, 0xDBFC, 30,
    2, 3,

    -1, 0xDC1A, 30,
    2, 4,

    -1, 0xDC38, 30,
    2, 5,

    -1, 0xDC56, 28,
    2, 6,

    -1, 0xDC72, 30,
    2, 7,

    -3, 46,
};

const s32 anim_0251__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDC90, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 8,

    -1, 0xDCAE, 30,
    2, 9,

    -1, 0xDCCC, 35,
    2, 10,

    -1, 0xDCEF, 30,
    2, 11,

    -1, 0xDD0D, 30,
    2, 12,

    -1, 0xDD2B, 30,
    2, 13,

    -1, 0xDD49, 28,
    2, 14,

    -1, 0xDD65, 30,
    2, 15,

    -3, 46,
};

const s32 * const anim_0251[2] = {
    anim_0251__v0_l0,
    anim_0251__v1_l0,
};

const s32 anim_0252__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDD83, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0xDD93, 16,
    2, 1,

    -1, 0xDDA3, 16,
    2, 2,

    -1, 0xDDB3, 16,
    2, 3,

    -1, 0xDDC3, 16,
    2, 4,

    -1, 0xDDD3, 16,
    2, 5,

    -1, 0xDDE3, 16,
    2, 6,

    -1, 0xDDF3, 16,
    2, 7,

    -3, 49,
};

const s32 * const anim_0252[1] = {
    anim_0252__v0_l0,
};

const s32 anim_0253__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDE03, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0xDE21, 30,
    2, 1,

    -1, 0xDE3F, 30,
    2, 2,

    -1, 0xDE5D, 20,
    2, 3,

    -1, 0xDE71, 30,
    2, 4,

    -1, 0xDE8F, 30,
    2, 5,

    -1, 0xDEAD, 30,
    2, 6,

    -1, 0xDECB, 24,
    2, 7,

    -3, 46,
};

const s32 anim_0253__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDEE3, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 8,

    -1, 0xDEF5, 18,
    3, 9,

    -1, 0xDF07, 18,
    3, 10,

    -1, 0xDF19, 18,
    3, 11,

    -1, 0xDF07, 18,
    3, 10,

    -1, 0xDEF5, 18,
    3, 9,

    -3, 36,
};

const s32 * const anim_0253[2] = {
    anim_0253__v0_l0,
    anim_0253__v1_l0,
};

const s32 anim_0254__v0_l0[] = {
    -2, 20, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDF2B, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 0,

    -1, 0xDF44, 30,
    -6, 0, (((-15 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 1,

    -1, 0xDF62, 25,
    -6, 0, (((-20 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 2,

    -1, 0xDF7B, 20,
    -6, 0, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 3,

    -1, 0xDF8F, 25,
    -6, 0, (((-8 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 4,

    -1, 0xDFA8, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 5,

    -1, 0xDFC6, 30,
    -6, 0, (((6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 6,

    -1, 0xDFE4, 25,
    -6, 0, (((3 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 7,

    -3, 67,
};

const s32 * const anim_0254[1] = {
    anim_0254__v0_l0,
};

const s32 anim_0255__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xDFFD, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0xE01B, 30,
    3, 1,

    -1, 0xE039, 30,
    3, 2,

    -1, 0xE057, 35,
    3, 3,

    -1, 0xE07A, 30,
    3, 4,

    -1, 0xE098, 30,
    3, 5,

    -1, 0xE0B6, 30,
    3, 6,

    -1, 0xE0D4, 35,
    3, 7,

    -3, 46,
};

const s32 anim_0255__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE0F7, 30,
    -6, 0, (((-4 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    3, 8,

    -1, 0xE115, 30,
    3, 9,

    -1, 0xE133, 28,
    3, 10,

    -1, 0xE14F, 30,
    3, 11,

    -1, 0xE16D, 30,
    3, 12,

    -1, 0xE18B, 30,
    3, 13,

    -1, 0xE1A9, 35,
    3, 14,

    -1, 0xE1CC, 30,
    3, 15,

    -3, 46,
};

const s32 anim_0255__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE1EA, 30,
    -6, 0, (((-4 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 16,

    -1, 0xE208, 30,
    3, 17,

    -1, 0xE226, 35,
    3, 18,

    -1, 0xE249, 30,
    3, 19,

    -1, 0xE267, 30,
    3, 20,

    -1, 0xE285, 30,
    3, 21,

    -1, 0xE2A3, 28,
    3, 22,

    -1, 0xE2BF, 30,
    3, 23,

    -3, 46,
};

const s32 * const anim_0255[3] = {
    anim_0255__v0_l0,
    anim_0255__v1_l0,
    anim_0255__v2_l0,
};

const s32 anim_0256__v0_l0[] = {
    -2, 21, (((u16)16 << 0) | ((u16)0x10 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0256[1] = {
    anim_0256__v0_l0,
};

const s32 anim_0257__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE2DD, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    2, 0,

    -1, 0xE31D, 64,
    2, 1,

    -1, 0xE35D, 64,
    2, 2,

    -3, 21,
};

const s32 * const anim_0257[1] = {
    anim_0257__v0_l0,
};

const s32 anim_0267__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE39D, 16,
    1, 0,

    -4,
};

const s32 anim_0267__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE3AD, 16,
    1, 1,

    -4,
};

const s32 * const anim_0267[2] = {
    anim_0267__v0_l0,
    anim_0267__v1_l0,
};

const s32 anim_0268__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE3BD, 16,
    3, 0,

    -1, 0xE3CD, 20,
    3, 1,

    -1, 0xE3E1, 16,
    3, 2,

    -1, 0xE3F1, 20,
    3, 3,

    -1, 0xE405, 20,
    3, 4,

    -1, 0xE419, 16,
    3, 5,

    -3, 33,
};

const s32 anim_0268__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE429, 20,
    3, 6,

    -1, 0xE43D, 25,
    3, 7,

    -1, 0xE456, 20,
    3, 8,

    -1, 0xE46A, 20,
    3, 9,

    -1, 0xE47E, 25,
    3, 10,

    -1, 0xE497, 20,
    3, 11,

    -3, 33,
};

const s32 anim_0268__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE4AB, 16,
    3, 12,

    -1, 0xE4BB, 16,
    3, 13,

    -1, 0xE4CB, 16,
    3, 14,

    -1, 0xE4DB, 16,
    3, 15,

    -1, 0xE4EB, 16,
    3, 16,

    -1, 0xE4FB, 16,
    3, 17,

    -3, 33,
};

const s32 anim_0268__v3_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE50B, 20,
    3, 18,

    -1, 0xE51F, 20,
    3, 19,

    -1, 0xE533, 20,
    3, 20,

    -1, 0xE547, 20,
    3, 21,

    -1, 0xE55B, 20,
    3, 22,

    -1, 0xE56F, 20,
    3, 23,

    -3, 33,
};

const s32 * const anim_0268[4] = {
    anim_0268__v0_l0,
    anim_0268__v1_l0,
    anim_0268__v2_l0,
    anim_0268__v3_l0,
};

const s32 anim_0269__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE583, 36,
    2, 0,

    -1, 0xE5A7, 30,
    2, 1,

    -3, 13,
};

const s32 anim_0269__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE5C5, 16,
    3, 2,

    -4,
};

const s32 anim_0269__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE5D5, 25,
    2, 3,

    -1, 0xE5EE, 25,
    2, 4,

    -3, 13,
};

const s32 anim_0269__v3_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE607, 24,
    3, 5,

    -4,
};

const s32 * const anim_0269[4] = {
    anim_0269__v0_l0,
    anim_0269__v1_l0,
    anim_0269__v2_l0,
    anim_0269__v3_l0,
};

const s32 anim_0270__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE61F, 16,
    6, 0,

    -1, 0xE62F, 20,
    6, 1,

    -1, 0xE643, 20,
    6, 2,

    -4,
};

const s32 anim_0270__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE657, 24,
    6, 3,

    -1, 0xE66F, 30,
    6, 4,

    -1, 0xE68D, 30,
    6, 5,

    -4,
};

const s32 * const anim_0270[2] = {
    anim_0270__v0_l0,
    anim_0270__v1_l0,
};

const s32 anim_0271__v0_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE6AB, 16,
    2, 0,

    -1, 0xE6BB, 16,
    2, 1,

    -1, 0xE6CB, 16,
    2, 2,

    -1, 0xE6DB, 16,
    2, 3,

    -1, 0xE6EB, 16,
    2, 4,

    -1, 0xE6FB, 16,
    2, 5,

    -3, 33,
};

const s32 * const anim_0271[1] = {
    anim_0271__v0_l0,
};

const s32 anim_0272__v0_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE70B, 16,
    2, 0,

    -1, 0xE71B, 16,
    2, 1,

    -1, 0xE72B, 16,
    2, 2,

    -1, 0xE73B, 16,
    2, 3,

    -1, 0xE74B, 20,
    3, 4,

    -1, 0xE75F, 12,
    3, 5,

    -1, 0xE76B, 16,
    3, 6,

    -1, 0xE77B, 16,
    3, 7,

    -1, 0xE78B, 16,
    3, 8,

    -1, 0xE79B, 16,
    3, 9,

    -1, 0xE7AB, 16,
    3, 10,

    -4,
};

const s32 * const anim_0272[1] = {
    anim_0272__v0_l0,
};

const s32 anim_0273__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE7BB, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    5, 0,

    -1, 0xE7CF, 20,
    5, 1,

    -1, 0xE7E3, 20,
    5, 2,

    -1, 0xE7F7, 16,
    5, 3,

    -1, 0xE807, 20,
    5, 4,

    -1, 0xE7BB, 20,
    5, 0,

    -1, 0xE7CF, 20,
    5, 1,

    -1, 0xE7E3, 20,
    5, 2,

    -1, 0xE7F7, 16,
    5, 3,

    -1, 0xE807, 20,
    5, 4,

    -1, 0xE81B, 20,
    5, 5,

    -1, 0xE7BB, 20,
    5, 0,

    -1, 0xE7CF, 20,
    5, 1,

    -1, 0xE82F, 20,
    5, 6,

    -1, 0xE843, 16,
    5, 7,

    -1, 0xE853, 20,
    5, 8,

    -1, 0xE81B, 20,
    5, 5,

    -1, 0xE7BB, 20,
    5, 0,

    -1, 0xE7CF, 20,
    5, 1,

    -1, 0xE7E3, 20,
    5, 2,

    -1, 0xE7F7, 16,
    5, 3,

    -1, 0xE807, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    5, 4,

    -1, 0xE867, 20,
    5, 9,

    -1, 0xE87B, 20,
    10, 10,

    -1, 0xE88F, 20,
    5, 11,

    -1, 0xE8A3, 20,
    5, 12,

    -1, 0xE8B7, 20,
    5, 13,

    -1, 0xE867, 20,
    5, 9,

    -1, 0xE87B, 20,
    5, 10,

    -1, 0xE88F, 20,
    5, 11,

    -1, 0xE8A3, 20,
    5, 12,

    -1, 0xE8B7, 20,
    12, 13,

    -1, 0xE867, 20,
    6, 9,

    -1, 0xE81B, 20,
    5, 5,

    -1, 0xE7BB, 20,
    5, 0,

    -1, 0xE7CF, 20,
    5, 1,

    -1, 0xE7E3, 20,
    5, 2,

    -1, 0xE7F7, 16,
    5, 3,

    -1, 0xE807, 20,
    5, 4,

    -3, 204,
};

const s32 * const anim_0273[1] = {
    anim_0273__v0_l0,
};

const s32 anim_0274__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE8CB, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0xE8DF, 20,
    5, 1,

    -1, 0xE8F3, 20,
    3, 2,

    -1, 0xE907, 20,
    5, 3,

    -1, 0xE8F3, 20,
    3, 2,

    -1, 0xE8DF, 20,
    5, 1,

    -1, 0xE8F3, 20,
    3, 2,

    -1, 0xE907, 20,
    5, 3,

    -1, 0xE8F3, 20,
    3, 2,

    -1, 0xE8DF, 20,
    6, 1,

    -1, 0xE91B, 20,
    4, 4,

    -1, 0xE92F, 20,
    5, 5,

    -1, 0xE943, 20,
    3, 6,

    -1, 0xE957, 20,
    5, 7,

    -1, 0xE943, 20,
    3, 6,

    -1, 0xE92F, 20,
    5, 5,

    -1, 0xE943, 20,
    3, 6,

    -1, 0xE957, 20,
    5, 7,

    -1, 0xE943, 20,
    3, 6,

    -1, 0xE92F, 20,
    6, 5,

    -1, 0xE8CB, 20,
    4, 0,

    -1, 0xE96B, 20,
    3, 8,

    -1, 0xE97F, 20,
    3, 9,

    -1, 0xE993, 20,
    2, 10,

    -1, 0xE9A7, 20,
    2, 11,

    -1, 0xE9BB, 20,
    4, 12,

    -1, 0xE96B, 20,
    3, 8,

    -1, 0xE97F, 20,
    3, 9,

    -1, 0xE993, 20,
    2, 10,

    -1, 0xE9A7, 20,
    2, 11,

    -1, 0xE9BB, 20,
    8, 12,
    -1, 0xE9CF, 20,
    2, 13,

    -1, 0xE9E3, 20,
    2, 14,

    -1, 0xE9F7, 25,
    2, 15,

    -1, 0xEA10, 30,
    -6, 1, (((-23 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 126,
    2, 16,

    -1, 0xEA2E, 25,
    4, 17,

    -1, 0xEA47, 25,
    2, 18,

    -1, 0xEA60, 20,
    2, 19,

    -1, 0xEA10, 30,
    -6, 1, (((-23 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 126,
    2, 16,

    -1, 0xEA2E, 25,
    4, 17,

    -1, 0xEA47, 25,
    2, 18,

    -1, 0xE9E3, 20,
    2, 14,

    -1, 0xEA74, 20,
    2, 20,

    -1, 0xEA88, 20,
    2, 21,

    -1, 0xEA9C, 20,
    2, 22,

    -1, 0xEAB0, 30,
    -6, 1, (((-25 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 126,
    2, 23,

    -1, 0xEACE, 30,
    4, 24,

    -1, 0xEA9C, 20,
    2, 22,

    -1, 0xEA88, 20,
    2, 21,

    -1, 0xE9CF, 20,
    2, 13,

    -3, 110,
};

const s32 anim_0274__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xE9CF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 13,

    -4,
};

const s32 * const anim_0274[2] = {
    anim_0274__v0_l0,
    anim_0274__v1_l0,
};

const s32 anim_0275__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEAEC, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0xEAFC, 16,
    1, 1,

    -1, 0xEB0C, 12,
    1, 2,

    -1, 0xEB18, 16,
    1, 3,

    -4,
};

const s32 anim_0275__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEAFC, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -1, 0xEAEC, 16,
    1, 0,

    -4,
};

const s32 * const anim_0275[2] = {
    anim_0275__v0_l0,
    anim_0275__v1_l0,
};

const s32 anim_0276__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEB28, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0xEB38, 16,
    2, 1,

    -1, 0xEB48, 16,
    2, 2,

    -1, 0xEB58, 16,
    2, 3,

    -3, 29,
};

const s32 anim_0276__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEB68, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 4,

    -1, 0xEB78, 16,
    2, 5,

    -1, 0xEB88, 16,
    2, 6,

    -1, 0xEB98, 16,
    2, 7,

    -4,
};

const s32 * const anim_0276[2] = {
    anim_0276__v0_l0,
    anim_0276__v1_l0,
};

const s32 anim_0277__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEBA8, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0xEBB8, 16,
    2, 1,

    -1, 0xEBC8, 16,
    2, 2,

    -1, 0xEBD8, 16,
    2, 3,

    -3, 29,
};

const s32 * const anim_0277[1] = {
    anim_0277__v0_l0,
};

const s32 anim_0278__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEBE8, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0xEBFC, 20,
    1, 1,

    -4,
};

const s32 * const anim_0278[1] = {
    anim_0278__v0_l0,
};

const s32 anim_0279__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEC10, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0xEC24, 30,
    1, 1,

    -1, 0xEC42, 30,
    1, 2,

    -1, 0xEC60, 25,
    1, 3,

    -4,
};

const s32 * const anim_0279[1] = {
    anim_0279__v0_l0,
};

const s32 anim_0280__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEC79, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0xEC8D, 30,
    2, 1,
    -1, 0xECAB, 30,
    2, 2,

    -3, 5,
};

const s32 anim_0280__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xECC9, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -1, 0xEC79, 20,
    2, 0,

    -4,
};

const s32 * const anim_0280[2] = {
    anim_0280__v0_l0,
    anim_0280__v1_l0,
};

const s32 anim_0281__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xECE7, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0xECFB, 25,
    1, 1,
    -1, 0xED14, 30,
    3, 2,

    -1, 0xED32, 25,
    3, 3,

    -3, 10,
};

const s32 anim_0281__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xECFB, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -1, 0xECE7, 20,
    2, 0,

    -4,
};

const s32 * const anim_0281[2] = {
    anim_0281__v0_l0,
    anim_0281__v1_l0,
};

const s32 anim_0282__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xED4B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 0,

    -1, 0xED8B, 64,
    8, 1,

    -1, 0xEDCB, 64,
    8, 2,

    -1, 0xEE0B, 64,
    8, 3,

    -1, 0xEE4B, 64,
    8, 4,

    -1, 0xEE8B, 64,
    8, 5,

    -1, 0xEECB, 64,
    8, 6,

    -1, 0xEF0B, 64,
    8, 7,

    -3, 46,
};

const s32 anim_0282__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xEF4B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 8,

    -1, 0xEF8B, 64,
    8, 9,

    -1, 0xEFCB, 64,
    8, 10,

    -1, 0xF00B, 64,
    8, 11,

    -1, 0xF04B, 64,
    8, 12,

    -1, 0xF08B, 64,
    8, 13,

    -1, 0xF0CB, 64,
    8, 14,

    -1, 0xF10B, 64,
    8, 15,

    -3, 46,
};

const s32 anim_0282__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF14B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 16,

    -1, 0xF18B, 64,
    8, 17,

    -1, 0xF1CB, 64,
    8, 18,

    -1, 0xF20B, 64,
    8, 19,

    -1, 0xF24B, 64,
    8, 20,

    -1, 0xF28B, 64,
    8, 21,

    -1, 0xF2CB, 64,
    8, 22,

    -1, 0xF30B, 64,
    8, 23,

    -3, 46,
};

const s32 anim_0282__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF34B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 24,

    -1, 0xF38B, 64,
    8, 25,

    -1, 0xF3CB, 64,
    8, 26,

    -1, 0xF40B, 64,
    8, 27,

    -1, 0xF44B, 64,
    8, 28,

    -1, 0xF48B, 64,
    8, 29,

    -1, 0xF4CB, 64,
    8, 30,

    -1, 0xF50B, 64,
    8, 31,

    -3, 46,
};

const s32 anim_0282__v4_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF54B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 32,

    -1, 0xF58B, 64,
    8, 33,

    -1, 0xF5CB, 64,
    8, 34,

    -1, 0xF60B, 64,
    8, 35,

    -1, 0xF64B, 64,
    8, 36,

    -1, 0xF68B, 64,
    8, 37,

    -1, 0xF6CB, 64,
    8, 38,

    -1, 0xF70B, 64,
    8, 39,

    -3, 46,
};

const s32 anim_0282__v5_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF54B, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 32,

    -1, 0xF58B, 64,
    8, 33,

    -1, 0xF5CB, 64,
    8, 34,

    -1, 0xF60B, 64,
    8, 35,

    -1, 0xF64B, 64,
    8, 36,

    -1, 0xF68B, 64,
    8, 37,

    -1, 0xF6CB, 64,
    8, 38,

    -1, 0xF70B, 64,
    8, 39,

    -3, 46,
};

const s32 * const anim_0282[6] = {
    anim_0282__v0_l0,
    anim_0282__v1_l0,
    anim_0282__v2_l0,
    anim_0282__v3_l0,
    anim_0282__v4_l0,
    anim_0282__v5_l0,
};

const s32 anim_0283__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF74B, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 0,

    -1, 0xF75B, 16,
    2, 1,

    -4,
};

const s32 anim_0283__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF76B, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0xF77B, 16,
    2, 3,

    -1, 0xF78B, 16,
    2, 4,

    -1, 0xF79B, 16,
    2, 5,

    -1, 0xF7AB, 16,
    2, 6,

    -1, 0xF7BB, 16,
    2, 7,

    -1, 0xF7CB, 16,
    2, 8,

    -1, 0xF7DB, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0283__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF7EB, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,
    -1, 0xF804, 20,
    2, 11,

    -1, 0xF818, 25,
    2, 12,

    -1, 0xF831, 25,
    2, 13,

    -3, 15,
};

const s32 * const anim_0283[3] = {
    anim_0283__v0_l0,
    anim_0283__v1_l0,
    anim_0283__v2_l0,
};

const s32 anim_0284__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF84A, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0xF85A, 16,
    2, 1,

    -4,
};

const s32 anim_0284__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF86A, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0xF87A, 16,
    2, 3,

    -1, 0xF88A, 16,
    2, 4,

    -1, 0xF89A, 16,
    2, 5,

    -1, 0xF8AA, 16,
    2, 6,

    -1, 0xF8BA, 16,
    2, 7,

    -1, 0xF8CA, 16,
    2, 8,

    -1, 0xF8DA, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0284__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF8EA, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,

    -1, 0xF903, 20,
    2, 11,

    -1, 0xF917, 25,
    2, 12,

    -1, 0xF930, 25,
    2, 13,

    -4,
};

const s32 * const anim_0284[3] = {
    anim_0284__v0_l0,
    anim_0284__v1_l0,
    anim_0284__v2_l0,
};

const s32 anim_0285__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF949, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0xF967, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((28 & 0xFF) << 24)),
    1, 1,

    -1, 0xF977, 16,
    1, 2,

    -1, 0xF967, 16,
    1, 1,

    -4,
};

const s32 * const anim_0285[1] = {
    anim_0285__v0_l0,
};

const s32 anim_0286__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xF987, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0xF9A5, 30,
    2, 1,
    -1, 0xF9C3, 30,
    2, 2,

    -1, 0xF9E1, 30,
    2, 3,

    -1, 0xF9FF, 30,
    2, 4,

    -3, 15,
};

const s32 * const anim_0286[1] = {
    anim_0286__v0_l0,
};

const s32 anim_0287__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFA1D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0xFA1D, 20,
    2, 0,

    -1, 0xFA31, 30,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-35 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 126,
    2, 1,

    -1, 0xFA4F, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 2,

    -1, 0xFA72, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 3,

    -1, 0xFA1D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -4,
};

const s32 anim_0287__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFA90, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 4,

    -1, 0xFAA4, 20,
    2, 5,

    -1, 0xFAB8, 35,
    -6, 0, (((-17 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-35 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((-13 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 126,
    2, 6,

    -1, 0xFADB, 35,
    -6, 0, (((-17 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    8, 7,

    -1, 0xFAA4, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 5,

    -1, 0xFA90, 20,
    2, 4,

    -4,
};

const s32 * const anim_0287[2] = {
    anim_0287__v0_l0,
    anim_0287__v1_l0,
};

const s32 anim_0288__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFAFE, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    2, 0,

    -1, 0xFB1A, 28,
    2, 1,

    -1, 0xFB36, 28,
    2, 2,

    -1, 0xFB52, 28,
    2, 3,

    -1, 0xFAFE, 28,
    2, 0,

    -1, 0xFB1A, 28,
    2, 1,

    -1, 0xFB36, 28,
    2, 2,

    -1, 0xFB52, 28,
    2, 3,

    -3, 49,
};

const s32 anim_0288__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFB6E, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 4,

    -1, 0xFB87, 20,
    1, 5,

    -1, 0xFB9B, 16,
    1, 6,

    -1, 0xFBAB, 16,
    1, 7,

    -1, 0xFBBB, 16,
    4, 8,

    -1, 0xFBAB, 16,
    2, 7,

    -1, 0xFB9B, 16,
    2, 6,

    -4,
};

const s32 anim_0288__v2_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0xFBCB, 6,
    2, 9,

    -1, 0xFBD1, 16,
    2, 10,

    -1, 0xFBE1, 25,
    2, 11,

    -1, 0xFBFA, 25,
    2, 12,

    -1, 0xFC13, 24,
    2, 13,

    -1, 0xFC2B, 18,
    2, 14,

    -1, 0xFC3D, 15,
    2, 15,

    -1, 0xFC4C, 4,
    2, 16,

    -3, 43,
};

const s32 * const anim_0288[3] = {
    anim_0288__v0_l0,
    anim_0288__v1_l0,
    anim_0288__v2_l0,
};

const s32 anim_0289__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFC50, 32,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-25 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    2, 0,

    -1, 0xFC70, 32,
    2, 1,

    -1, 0xFC90, 32,
    2, 2,

    -1, 0xFCB0, 32,
    2, 3,

    -1, 0xFC50, 32,
    2, 0,

    -1, 0xFC70, 32,
    2, 1,

    -1, 0xFC90, 32,
    2, 2,

    -1, 0xFCB0, 32,
    2, 3,

    -3, 49,
};

const s32 anim_0289__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFCD0, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 4,

    -1, 0xFCEE, 36,
    1, 5,

    -1, 0xFD12, 30,
    1, 6,

    -1, 0xFD30, 24,
    1, 7,

    -1, 0xFD48, 20,
    1, 8,

    -4,
};

const s32 anim_0289__v2_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0xFD5C, 4,
    2, 9,

    -1, 0xFD60, 12,
    2, 10,

    -1, 0xFD6C, 25,
    2, 11,

    -1, 0xFD85, 30,
    2, 12,

    -1, 0xFDA3, 20,
    2, 13,

    -1, 0xFDB7, 18,
    2, 14,

    -1, 0xFDC9, 18,
    2, 15,

    -1, 0xFDDB, 6,
    2, 16,

    -3, 43,
};

const s32 * const anim_0289[3] = {
    anim_0289__v0_l0,
    anim_0289__v1_l0,
    anim_0289__v2_l0,
};

const s32 anim_0292__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFDE1, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-15 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    3, 0,

    -1, 0xFDF9, 24,
    3, 1,

    -3, 19,
};

const s32 * const anim_0292[1] = {
    anim_0292__v0_l0,
};

const s32 anim_0293__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFE11, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-12 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0293__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFE29, 24,
    -6, 0, (((-10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-16 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0293__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFE41, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0293__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFE59, 24,
    -6, 0, (((-18 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 * const anim_0293[4] = {
    anim_0293__v0_l0,
    anim_0293__v1_l0,
    anim_0293__v2_l0,
    anim_0293__v3_l0,
};

const s32 anim_0294__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFE71, 15,
    -6, 0, (((-5 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    -6, 1, (((-11 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xFE80, 15,
    2, 1,

    -3, 19,
};

const s32 * const anim_0294[1] = {
    anim_0294__v0_l0,
};

const s32 anim_0295__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFE8F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0xFEA3, 25,
    3, 1,

    -1, 0xFEBC, 30,
    3, 2,

    -1, 0xFEDA, 30,
    3, 3,
    -1, 0xFEF8, 30,
    3, 4,

    -1, 0xFF16, 30,
    3, 5,

    -1, 0xFF34, 30,
    3, 6,

    -3, 15,
};

const s32 anim_0295__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFF52, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 7,

    -1, 0xFF70, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 8,

    -1, 0xFF80, 16,
    1, 9,

    -1, 0xFF90, 16,
    2, 10,

    -1, 0xFF80, 16,
    1, 9,

    -1, 0xFF70, 16,
    1, 8,

    -4,
};

const s32 * const anim_0295[2] = {
    anim_0295__v0_l0,
    anim_0295__v1_l0,
};

const s32 anim_0296__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFFA0, 30,
    -6, 0, (((-2 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0xFFBE, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    2, 1,

    -1, 0xFFD2, 16,
    -6, 0, (((-9 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-9 & 0xFF) << 24)),
    2, 2,

    -4,
};

const s32 * const anim_0296[1] = {
    anim_0296__v0_l0,
};

const s32 anim_0297__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0xFFE2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    4, 0,

    -1, 0xFFF6, 24,
    -5, 125,
    4, 1,

    -1, 0x1000E, 20,
    4, 2,

    -1, 0x10022, 20,
    4, 3,

    -1, 0x10036, 24,
    -5, 125,
    4, 4,

    -1, 0x1004E, 20,
    4, 5,

    -3, 40,
};

const s32 anim_0297__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1004E, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    4, 5,

    -1, 0x10036, 24,
    4, 4,

    -1, 0x10022, 20,
    -5, 125,
    4, 3,

    -1, 0x1000E, 20,
    4, 2,

    -1, 0xFFF6, 24,
    4, 1,

    -1, 0xFFE2, 20,
    -5, 125,
    4, 0,

    -3, 40,
};

const s32 anim_0297__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10062, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0297__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10072, 20,
    -6, 0, (((-9 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    4, 7,

    -1, 0x10086, 18,
    -6, 0, (((-15 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    4, 8,

    -1, 0x10098, 24,
    -6, 0, (((-17 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    4, 9,

    -1, 0x100B0, 24,
    4, 10,

    -1, 0x100C8, 20,
    -6, 0, (((-19 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 11,

    -4,
};

const s32 anim_0297__v4_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x100DC, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 12,

    -1, 0x100EC, 16,
    4, 13,

    -4,
};

const s32 * const anim_0297[5] = {
    anim_0297__v0_l0,
    anim_0297__v1_l0,
    anim_0297__v2_l0,
    anim_0297__v3_l0,
    anim_0297__v4_l0,
};

const s32 anim_0301__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x100FC, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x10115, 20,
    8, 1,

    -1, 0x10129, 20,
    8, 2,

    -1, 0x1013D, 20,
    8, 3,
    -1, 0x10151, 15,
    8, 4,

    -3, 5,
};

const s32 anim_0301__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10160, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 5,

    -1, 0x1017E, 24,
    5, 6,

    -1, 0x10196, 24,
    5, 7,

    -1, 0x101AE, 25,
    5, 8,

    -1, 0x101C7, 25,
    5, 9,

    -4,
};

const s32 anim_0301__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x101E0, 20,
    5, 10,

    -1, 0x101F4, 16,
    3, 11,

    -1, 0x10204, 20,
    3, 12,

    -1, 0x10218, 20,
    3, 13,

    -4,
};

const s32 * const anim_0301[3] = {
    anim_0301__v0_l0,
    anim_0301__v1_l0,
    anim_0301__v2_l0,
};

const s32 anim_0302__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1022C, 30,
    3, 0,

    -1, 0x1024A, 36,
    3, 1,

    -1, 0x1022C, 30,
    3, 0,

    -1, 0x1026E, 25,
    3, 2,
    -1, 0x10287, 20,
    3, 3,

    -1, 0x1029B, 20,
    3, 4,

    -3, 10,
};

const s32 * const anim_0302[1] = {
    anim_0302__v0_l0,
};

const s32 anim_0303__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x102AF, 20,
    37, 0,

    -1, 0x102C3, 20,
    6, 1,

    -1, 0x102D7, 20,
    5, 2,

    -1, 0x102EB, 20,
    3, 3,

    -1, 0x102FF, 20,
    5, 4,

    -1, 0x102EB, 20,
    3, 3,

    -1, 0x102D7, 20,
    5, 2,

    -1, 0x102EB, 20,
    3, 3,

    -1, 0x102FF, 20,
    5, 4,

    -1, 0x102EB, 20,
    3, 3,

    -1, 0x102D7, 20,
    8, 2,

    -1, 0x10313, 20,
    4, 5,

    -1, 0x10327, 20,
    5, 6,

    -1, 0x1033B, 20,
    3, 7,

    -1, 0x1034F, 20,
    5, 8,

    -1, 0x1033B, 20,
    3, 7,

    -1, 0x10327, 20,
    10, 6,

    -1, 0x10363, 20,
    5, 9,

    -1, 0x10377, 25,
    4, 10,

    -1, 0x10390, 20,
    2, 11,

    -1, 0x103A4, 20,
    2, 12,

    -1, 0x103B8, 20,
    2, 13,

    -1, 0x103CC, 20,
    2, 14,

    -1, 0x103E0, 20,
    2, 15,

    -1, 0x103F4, 20,
    2, 16,

    -1, 0x10377, 25,
    2, 10,

    -1, 0x10390, 20,
    2, 11,

    -1, 0x103A4, 20,
    2, 12,

    -1, 0x103B8, 20,
    2, 13,

    -1, 0x103CC, 20,
    2, 14,

    -1, 0x103E0, 20,
    2, 15,

    -1, 0x103F4, 20,
    2, 16,

    -1, 0x10377, 25,
    12, 10,

    -1, 0x10363, 20,
    6, 9,

    -1, 0x10408, 20,
    4, 17,

    -1, 0x1041C, 20,
    4, 18,

    -1, 0x10430, 16,
    2, 19,

    -4,
};

const s32 anim_0303__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10430, 16,
    1, 19,

    -1, 0x10440, 20,
    6, 20,

    -1, 0x10454, 20,
    60, 21,

    -1, 0x10468, 30,
    4, 22,

    -4,
};

const s32 * const anim_0303[2] = {
    anim_0303__v0_l0,
    anim_0303__v1_l0,
};

const s32 anim_0304__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10486, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x1049F, 25,
    3, 1,

    -4,
};

const s32 anim_0304__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x104B8, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x104D1, 25,
    2, 3,

    -1, 0x104EA, 25,
    2, 4,

    -1, 0x10503, 30,
    2, 5,

    -3, 26,
};

const s32 anim_0304__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10521, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 6,

    -1, 0x1053A, 20,
    2, 7,

    -1, 0x1054E, 20,
    4, 8,

    -4,
};

const s32 * const anim_0304[3] = {
    anim_0304__v0_l0,
    anim_0304__v1_l0,
    anim_0304__v2_l0,
};

const s32 anim_0305__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10562, 20,
    5, 0,

    -1, 0x10576, 20,
    5, 1,

    -1, 0x1058A, 20,
    30, 2,

    -1, 0x1059E, 20,
    3, 3,

    -1, 0x105B2, 25,
    3, 4,

    -1, 0x105CB, 20,
    4, 5,

    -1, 0x105DF, 20,
    2, 6,

    -1, 0x105F3, 25,
    2, 7,

    -1, 0x1060C, 25,
    3, 8,

    -1, 0x10625, 25,
    6, 9,

    -1, 0x1063E, 25,
    2, 10,

    -1, 0x10657, 20,
    2, 11,

    -1, 0x1066B, 20,
    2, 12,

    -1, 0x1067F, 24,
    3, 13,

    -1, 0x10697, 24,
    8, 14,

    -1, 0x106AF, 20,
    2, 15,

    -1, 0x106C3, 20,
    2, 16,

    -1, 0x106D7, 20,
    30, 17,

    -4,
};

const s32 * const anim_0305[1] = {
    anim_0305__v0_l0,
};

const s32 anim_0306__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x106EB, 20,
    4, 0,

    -1, 0x106FF, 15,
    3, 1,

    -1, 0x1070E, 20,
    3, 2,

    -1, 0x10722, 20,
    8, 3,

    -1, 0x10736, 20,
    5, 4,

    -1, 0x1074A, 20,
    8, 5,

    -1, 0x1075E, 20,
    3, 6,

    -1, 0x10772, 20,
    3, 7,

    -1, 0x10786, 20,
    3, 8,

    -1, 0x1079A, 20,
    3, 9,

    -1, 0x107AE, 20,
    3, 10,

    -1, 0x107C2, 20,
    3, 11,

    -1, 0x1075E, 20,
    3, 6,

    -1, 0x10772, 20,
    3, 7,

    -1, 0x10786, 20,
    3, 8,

    -1, 0x1079A, 20,
    3, 9,

    -1, 0x107AE, 20,
    3, 10,

    -1, 0x107C2, 20,
    4, 11,

    -1, 0x1074A, 20,
    8, 5,

    -1, 0x107D6, 20,
    6, 12,

    -1, 0x107EA, 20,
    12, 13,

    -1, 0x107FE, 20,
    3, 14,

    -1, 0x10812, 20,
    2, 15,

    -1, 0x10826, 20,
    2, 16,

    -1, 0x1083A, 20,
    3, 17,

    -1, 0x1084E, 20,
    3, 18,

    -1, 0x10862, 20,
    12, 19,

    -1, 0x10876, 20,
    4, 20,

    -1, 0x1088A, 20,
    8, 21,

    -1, 0x1089E, 20,
    3, 22,

    -1, 0x108B2, 20,
    12, 23,

    -4,
};

const s32 * const anim_0306[1] = {
    anim_0306__v0_l0,
};

const s32 anim_0307__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x108C6, 20,
    6, 0,

    -1, 0x108DA, 25,
    3, 1,

    -1, 0x108F3, 24,
    3, 2,

    -1, 0x1090B, 28,
    3, 3,

    -1, 0x10927, 30,
    3, 4,

    -1, 0x10945, 30,
    3, 5,

    -1, 0x10963, 36,
    3, 6,

    -1, 0x10987, 36,
    3, 7,

    -1, 0x109AB, 30,
    3, 8,

    -1, 0x109C9, 20,
    3, 9,

    -1, 0x109DD, 20,
    3, 10,

    -1, 0x109F1, 20,
    3, 11,

    -1, 0x10A05, 20,
    6, 12,

    -1, 0x10A19, 25,
    3, 13,

    -1, 0x10A32, 25,
    3, 14,

    -1, 0x10A4B, 25,
    3, 15,

    -1, 0x10A64, 20,
    60, 16,

    -4,
};

const s32 * const anim_0307[1] = {
    anim_0307__v0_l0,
};

const s32 anim_0308__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10A78, 20,
    3, 0,

    -1, 0x10A8C, 20,
    3, 1,

    -1, 0x10AA0, 25,
    3, 2,

    -1, 0x10AB9, 20,
    3, 3,

    -1, 0x10ACD, 20,
    3, 4,

    -1, 0x10AE1, 25,
    3, 5,

    -1, 0x10AFA, 25,
    3, 6,

    -1, 0x10B13, 25,
    3, 7,
    -1, 0x10B2C, 24,
    3, 8,

    -1, 0x10B44, 24,
    3, 9,

    -1, 0x10B5C, 30,
    3, 10,

    -1, 0x10B7A, 24,
    3, 11,

    -1, 0x10B92, 24,
    3, 12,

    -1, 0x10BAA, 24,
    3, 13,

    -1, 0x10BC2, 30,
    3, 14,

    -1, 0x10BE0, 24,
    3, 15,

    -3, 40,
};

const s32 * const anim_0308[1] = {
    anim_0308__v0_l0,
};

const s32 anim_0309__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10BF8, 20,
    1, 0,

    -4,
};

const s32 anim_0309__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10C0C, 20,
    1, 1,

    -4,
};

const s32 anim_0309__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10C20, 20,
    1, 2,

    -4,
};

const s32 anim_0309__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10C34, 25,
    1, 3,

    -4,
};

const s32 * const anim_0309[4] = {
    anim_0309__v0_l0,
    anim_0309__v1_l0,
    anim_0309__v2_l0,
    anim_0309__v3_l0,
};

const s32 anim_0315__v0_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x10C4D, 9,
    40, 0,

    -1, 0x10C56, 9,
    12, 1,

    -1, 0x10C4D, 9,
    10, 0,

    -1, 0x10C5F, 9,
    12, 2,

    -3, 23,
};

const s32 anim_0315__v1_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x10C5F, 9,
    8, 2,

    -1, 0x10C4D, 9,
    6, 0,

    -1, 0x10C56, 9,
    8, 1,

    -1, 0x10C4D, 9,
    6, 0,

    -1, 0x10C5F, 9,
    8, 2,

    -1, 0x10C4D, 9,
    6, 0,

    -1, 0x10C56, 9,
    12, 1,

    -3, 38,
};

const s32 anim_0315__v2_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x10C4D, 9,
    4, 0,

    -1, 0x10C68, 9,
    8, 3,

    -1, 0x10C4D, 9,
    4, 0,

    -1, 0x10C68, 9,
    8, 3,

    -1, 0x10C4D, 9,
    4, 0,

    -1, 0x10C68, 9,
    8, 3,

    -4,
};

const s32 anim_0315__v3_l0[] = {
    -2, 24, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x10C4D, 9,
    6, 0,

    -1, 0x10C71, 15,
    6, 4,

    -1, 0x10C80, 15,
    6, 5,

    -4,
};

const s32 * const anim_0315[4] = {
    anim_0315__v0_l0,
    anim_0315__v1_l0,
    anim_0315__v2_l0,
    anim_0315__v3_l0,
};

const s32 anim_0316__v0_l0[] = {
    -2, 25, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x10C8F, 35,
    3, 0,

    -1, 0x10CB2, 28,
    3, 1,

    -1, 0x10CCE, 25,
    3, 2,

    -1, 0x10CE7, 25,
    3, 3,

    -1, 0x10D00, 25,
    3, 4,

    -1, 0x10D19, 20,
    3, 5,

    -1, 0x10D2D, 25,
    3, 6,

    -1, 0x10D46, 25,
    3, 7,

    -3, 43,
};

const s32 * const anim_0316[1] = {
    anim_0316__v0_l0,
};

const s32 anim_0321__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10D5F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -1, 0x10D73, 20,
    2, 1,

    -1, 0x10D5F, 20,
    1, 0,

    -4,
};

const s32 anim_0321__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10D87, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    4, 2,

    -1, 0x10DA5, 30,
    4, 3,

    -1, 0x10DC3, 32,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    8, 4,

    -1, 0x10DE3, 28,
    8, 5,

    -1, 0x10DFF, 25,
    8, 6,

    -4,
};

const s32 anim_0321__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10E18, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    7, 7,

    -1, 0x10E36, 30,
    6, 8,
    -1, 0x10E54, 30,
    3, 9,

    -1, 0x10E72, 30,
    3, 10,

    -1, 0x10E90, 30,
    3, 11,

    -3, 15,
};

const s32 anim_0321__v3_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x10EAE, 6,
    2, 12,

    -1, 0x10EB4, 12,
    2, 13,

    -1, 0x10EC0, 20,
    2, 14,

    -1, 0x10ED4, 20,
    2, 15,

    -1, 0x10EE8, 24,
    3, 16,

    -1, 0x10F00, 24,
    3, 17,

    -1, 0x10F18, 24,
    3, 18,

    -1, 0x10F30, 9,
    3, 19,

    -4,
};

const s32 * const anim_0321[4] = {
    anim_0321__v0_l0,
    anim_0321__v1_l0,
    anim_0321__v2_l0,
    anim_0321__v3_l0,
};

const s32 anim_0322__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10F39, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x10F57, 36,
    2, 1,

    -1, 0x10F7B, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 2,

    -1, 0x10F93, 30,
    2, 3,

    -1, 0x10FB1, 30,
    4, 4,

    -4,
};

const s32 anim_0322__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x10FCF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 5,

    -1, 0x10FE3, 25,
    2, 6,

    -1, 0x10FFC, 24,
    2, 7,
    -1, 0x11014, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-19 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 8,

    -1, 0x1102C, 24,
    2, 9,

    -3, 16,
};

const s32 anim_0322__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11044, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 10,

    -1, 0x11062, 36,
    2, 11,

    -1, 0x11086, 20,
    2, 12,

    -1, 0x1109A, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 13,

    -1, 0x110AA, 16,
    2, 14,

    -1, 0x110BA, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -5, 109,
    2, 15,

    -1, 0x110CA, 16,
    2, 16,

    -1, 0x110DA, 16,
    2, 17,

    -1, 0x110EA, 16,
    2, 18,

    -4,
};

const s32 * const anim_0322[3] = {
    anim_0322__v0_l0,
    anim_0322__v1_l0,
    anim_0322__v2_l0,
};

const s32 anim_0323__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x110FA, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x11112, 30,
    2, 1,

    -1, 0x11130, 30,
    4, 2,

    -4,
};

const s32 anim_0323__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1114E, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 3,

    -1, 0x11162, 20,
    2, 4,
    -1, 0x11176, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 5,

    -1, 0x11194, 30,
    3, 6,

    -3, 16,
};

const s32 * const anim_0323[2] = {
    anim_0323__v0_l0,
    anim_0323__v1_l0,
};

const s32 anim_0324__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x111B2, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x111D0, 30,
    3, 1,

    -1, 0x111EE, 30,
    2, 2,

    -1, 0x1120C, 35,
    2, 3,

    -4,
};

const s32 anim_0324__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1122F, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    2, 4,

    -1, 0x1124B, 28,
    2, 5,

    -1, 0x11267, 28,
    2, 6,

    -1, 0x11283, 28,
    2, 7,

    -1, 0x1122F, 28,
    2, 4,

    -1, 0x1124B, 28,
    2, 5,

    -1, 0x11267, 28,
    2, 6,

    -1, 0x11283, 28,
    2, 7,

    -3, 49,
};

const s32 anim_0324__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1129F, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 8,

    -1, 0x112B8, 20,
    1, 9,

    -1, 0x112CC, 16,
    1, 10,

    -1, 0x112DC, 16,
    1, 11,

    -1, 0x112EC, 16,
    4, 12,

    -1, 0x112DC, 16,
    2, 11,

    -1, 0x112CC, 16,
    2, 10,

    -4,
};

const s32 anim_0324__v3_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x112FC, 6,
    2, 13,

    -1, 0x11302, 16,
    2, 14,

    -1, 0x11312, 25,
    2, 15,

    -1, 0x1132B, 25,
    2, 16,

    -1, 0x11344, 24,
    2, 17,

    -1, 0x1135C, 18,
    2, 18,

    -1, 0x1136E, 15,
    2, 19,

    -1, 0x1137D, 4,
    2, 20,

    -3, 43,
};

const s32 * const anim_0324[4] = {
    anim_0324__v0_l0,
    anim_0324__v1_l0,
    anim_0324__v2_l0,
    anim_0324__v3_l0,
};

const s32 anim_0325__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11381, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,
    -1, 0x11395, 20,
    3, 1,

    -1, 0x113A9, 20,
    3, 2,

    -1, 0x113BD, 20,
    3, 3,

    -3, 15,
};

const s32 anim_0325__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x113D1, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 4,

    -1, 0x113E5, 20,
    3, 5,

    -1, 0x113F9, 20,
    3, 6,

    -1, 0x1140D, 25,
    3, 7,

    -1, 0x11426, 30,
    3, 8,

    -1, 0x11444, 30,
    3, 9,

    -4,
};

const s32 anim_0325__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11462, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 10,

    -1, 0x11480, 30,
    3, 11,

    -1, 0x1149E, 30,
    3, 12,

    -3, 21,
};

const s32 * const anim_0325[3] = {
    anim_0325__v0_l0,
    anim_0325__v1_l0,
    anim_0325__v2_l0,
};

const s32 anim_0326__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x114BC, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    4, 0,

    -1, 0x114D0, 20,
    4, 1,

    -1, 0x114E4, 20,
    4, 2,

    -1, 0x114F8, 25,
    4, 3,

    -1, 0x11511, 25,
    4, 4,

    -1, 0x1152A, 25,
    4, 5,

    -1, 0x11543, 20,
    4, 6,

    -1, 0x11557, 20,
    4, 7,

    -1, 0x1156B, 25,
    4, 8,

    -1, 0x11584, 20,
    4, 9,

    -1, 0x11598, 25,
    4, 10,
    -1, 0x115B1, 30,
    3, 11,

    -1, 0x115CF, 30,
    3, 12,

    -1, 0x115ED, 30,
    3, 13,

    -3, 15,
};

const s32 * const anim_0326[1] = {
    anim_0326__v0_l0,
};

const s32 anim_0327__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1160B, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 0,
    -1, 0x1161F, 25,
    -6, 0, (((-8 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 1,

    -1, 0x11638, 20,
    2, 2,

    -1, 0x1164C, 25,
    2, 3,

    -3, 18,
};

const s32 anim_0327__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11665, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 4,

    -1, 0x1167E, 25,
    2, 5,

    -1, 0x11697, 25,
    2, 6,

    -1, 0x116B0, 30,
    2, 7,

    -1, 0x116CE, 30,
    2, 8,
    -1, 0x116EC, 30,
    2, 9,

    -1, 0x1170A, 30,
    2, 10,

    -1, 0x11728, 30,
    2, 11,

    -3, 15,
};

const s32 * const anim_0327[2] = {
    anim_0327__v0_l0,
    anim_0327__v1_l0,
};

const s32 anim_0328__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11746, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x11786, 64,
    2, 1,

    -3, 16,
};

const s32 * const anim_0328[1] = {
    anim_0328__v0_l0,
};

const s32 anim_0330__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x117C6, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0330__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x117DF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0330__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x117EF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0330__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x117FF, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0330__v4_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11818, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0330__v5_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11830, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0330__v6_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11844, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0330__v7_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11854, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0330[8] = {
    anim_0330__v0_l0,
    anim_0330__v1_l0,
    anim_0330__v2_l0,
    anim_0330__v3_l0,
    anim_0330__v4_l0,
    anim_0330__v5_l0,
    anim_0330__v6_l0,
    anim_0330__v7_l0,
};

const s32 anim_0331__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1186D, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    5, 0,

    -1, 0x118AD, 64,
    5, 1,

    -1, 0x118ED, 64,
    5, 2,

    -1, 0x1192D, 64,
    5, 3,

    -1, 0x1196D, 64,
    5, 4,

    -1, 0x119AD, 64,
    5, 5,

    -1, 0x119ED, 64,
    5, 6,

    -1, 0x11A2D, 64,
    5, 7,

    -3, 46,
};

const s32 * const anim_0331[1] = {
    anim_0331__v0_l0,
};

const s32 anim_0332__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11A6D, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((42 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0332__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11A90, 30,
    -6, 0, (((-28 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0332__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11AAE, 30,
    -6, 0, (((-40 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0332__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11ACC, 30,
    -6, 0, (((-35 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0332__v4_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11AEA, 30,
    -6, 0, (((-26 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0332__v5_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B08, 24,
    -6, 0, (((-20 & 0xFF) << 0) | ((-36 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0332__v6_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B20, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0332__v7_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B3C, 28,
    -6, 0, (((0 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-10 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0332__v8_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B58, 20,
    -6, 0, (((8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0332__v9_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B6C, 24,
    -6, 0, (((10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((38 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0332__v10_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B84, 24,
    -6, 0, (((8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((36 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0332__v11_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11B9C, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((8 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((34 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0332[12] = {
    anim_0332__v0_l0,
    anim_0332__v1_l0,
    anim_0332__v2_l0,
    anim_0332__v3_l0,
    anim_0332__v4_l0,
    anim_0332__v5_l0,
    anim_0332__v6_l0,
    anim_0332__v7_l0,
    anim_0332__v8_l0,
    anim_0332__v9_l0,
    anim_0332__v10_l0,
    anim_0332__v11_l0,
};

const s32 anim_0333__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11BBA, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-38 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0333__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11BD6, 24,
    -6, 0, (((-20 & 0xFF) << 0) | ((-36 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0333__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11BEE, 30,
    -6, 0, (((-26 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0333__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11C0C, 30,
    -6, 0, (((-35 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0333__v4_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11C2A, 30,
    -6, 0, (((-40 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((-8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0333__v5_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11C48, 30,
    -6, 0, (((-28 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0333__v6_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11C66, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((42 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0333__v7_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11C89, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((8 & 0xFF) << 8) | ((28 & 0xFF) << 16) | ((34 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0333__v8_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11CA7, 24,
    -6, 0, (((8 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((36 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0333__v9_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11CBF, 24,
    -6, 0, (((10 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((38 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0333__v10_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11CD7, 20,
    -6, 0, (((8 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0333__v11_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11CEB, 28,
    -6, 0, (((0 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-10 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0333[12] = {
    anim_0333__v0_l0,
    anim_0333__v1_l0,
    anim_0333__v2_l0,
    anim_0333__v3_l0,
    anim_0333__v4_l0,
    anim_0333__v5_l0,
    anim_0333__v6_l0,
    anim_0333__v7_l0,
    anim_0333__v8_l0,
    anim_0333__v9_l0,
    anim_0333__v10_l0,
    anim_0333__v11_l0,
};

const s32 anim_0334__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11D07, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    8, 0,

    -1, 0x11D25, 30,
    8, 1,

    -1, 0x11D43, 30,
    8, 2,

    -1, 0x11D25, 30,
    8, 1,

    -3, 26,
};

const s32 * const anim_0334[1] = {
    anim_0334__v0_l0,
};

const s32 anim_0335__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11D61, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    2, 0,

    -1, 0x11D7D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 1,

    -1, 0x11D95, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x11DA5, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 3,

    -1, 0x11DB9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    4, 4,

    -1, 0x11DD1, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    3, 5,

    -1, 0x11DE5, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 6,

    -1, 0x11DF5, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    2, 7,

    -1, 0x11D61, 28,
    -6, 0, (((-8 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    4, 0,

    -1, 0x11D7D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    3, 1,

    -1, 0x11D95, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x11DA5, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 3,

    -1, 0x11DB9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 anim_0335__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11E07, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    2, 8,

    -1, 0x11E23, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 9,

    -1, 0x11E3B, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 10,

    -1, 0x11E4B, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 11,

    -1, 0x11E5F, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    4, 12,

    -1, 0x11E77, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    3, 13,

    -1, 0x11E8B, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 14,

    -1, 0x11E9B, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 15,

    -1, 0x11E07, 28,
    -6, 0, (((-6 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    4, 8,

    -1, 0x11E23, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    3, 9,

    -1, 0x11E3B, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 10,

    -1, 0x11E4B, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 11,

    -1, 0x11E5F, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    2, 12,

    -4,
};

const s32 * const anim_0335[2] = {
    anim_0335__v0_l0,
    anim_0335__v1_l0,
};

const s32 anim_0336__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11EAD, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x11EBD, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x11ED1, 28,
    -6, 0, (((-10 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    4, 2,

    -1, 0x11EED, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -1, 0x11F01, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 4,

    -1, 0x11F15, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    2, 5,

    -1, 0x11F29, 35,
    -6, 0, (((-10 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    4, 6,

    -1, 0x11F4C, 25,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    3, 7,

    -1, 0x11EAD, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -4,
};

const s32 anim_0336__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x11F65, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0x11F75, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 9,

    -1, 0x11F89, 28,
    -6, 0, (((-10 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((34 & 0xFF) << 24)),
    4, 10,

    -1, 0x11FA5, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    3, 11,

    -1, 0x11FB9, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 12,

    -1, 0x11FCD, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 13,

    -1, 0x11FE1, 35,
    -6, 0, (((-10 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    4, 14,

    -1, 0x12004, 25,
    -6, 0, (((-10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 15,

    -1, 0x11F65, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -4,
};

const s32 * const anim_0336[2] = {
    anim_0336__v0_l0,
    anim_0336__v1_l0,
};

const s32 anim_0337__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1201D, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 0,

    -1, 0x12031, 24,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 1,

    -1, 0x12049, 28,
    -6, 0, (((-29 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-17 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 2,

    -1, 0x12065, 20,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 3,

    -1, 0x12079, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 4,

    -1, 0x1208D, 24,
    -6, 0, (((11 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 5,

    -1, 0x120A5, 40,
    -6, 0, (((19 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((31 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 6,

    -1, 0x120CD, 25,
    -6, 0, (((11 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 7,

    -1, 0x1201D, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 0,

    -1, 0x12031, 24,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 1,

    -1, 0x12049, 28,
    -6, 0, (((-29 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-17 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 2,

    -1, 0x12065, 20,
    -6, 0, (((-21 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((-9 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 3,

    -1, 0x12079, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-31 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 * const anim_0337[1] = {
    anim_0337__v0_l0,
};

const s32 anim_0338__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x120E6, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x12104, 30,
    2, 1,

    -1, 0x12122, 36,
    2, 2,

    -1, 0x12146, 30,
    2, 3,

    -1, 0x12164, 36,
    2, 4,

    -1, 0x12188, 36,
    2, 5,

    -1, 0x121AC, 30,
    2, 6,

    -1, 0x121CA, 30,
    2, 7,

    -3, 46,
};

const s32 anim_0338__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x121E8, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 8,

    -1, 0x12206, 25,
    3, 9,

    -1, 0x1221F, 30,
    3, 10,

    -1, 0x1223D, 30,
    3, 11,

    -4,
};

const s32 anim_0338__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1225B, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 12,

    -1, 0x12279, 30,
    3, 13,

    -1, 0x12297, 30,
    3, 14,

    -3, 21,
};

const s32 * const anim_0338[3] = {
    anim_0338__v0_l0,
    anim_0338__v1_l0,
    anim_0338__v2_l0,
};

const s32 anim_0339__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x122B5, 42,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x122DF, 42,
    3, 1,

    -1, 0x12309, 42,
    3, 2,

    -3, 21,
};

const s32 anim_0339__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12333, 36,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 3,

    -1, 0x12357, 24,
    3, 4,

    -1, 0x1236F, 24,
    3, 5,

    -1, 0x12387, 30,
    3, 6,

    -1, 0x123A5, 25,
    3, 7,

    -4,
};

const s32 anim_0339__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x123BE, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 8,

    -1, 0x123D7, 25,
    3, 9,

    -1, 0x123F0, 25,
    3, 10,

    -3, 21,
};

const s32 * const anim_0339[3] = {
    anim_0339__v0_l0,
    anim_0339__v1_l0,
    anim_0339__v2_l0,
};

const s32 anim_0340__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12409, 36,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    5, 0,

    -1, 0x1242D, 30,
    5, 1,

    -1, 0x1244B, 20,
    5, 2,

    -1, 0x1245F, 30,
    5, 3,

    -1, 0x1247D, 36,
    5, 4,

    -1, 0x124A1, 20,
    5, 5,

    -1, 0x124B5, 25,
    5, 6,

    -1, 0x124CE, 20,
    5, 7,

    -3, 46,
};

const s32 * const anim_0340[1] = {
    anim_0340__v0_l0,
};

const s32 anim_0341__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x124E2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0341__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x124F6, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0341__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1250A, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0341__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1251E, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0341__v4_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12537, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0341__v5_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12550, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0341__v6_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12569, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0341__v7_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1257D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0341__v8_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12591, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0341__v9_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x125AA, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0341__v10_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x125BE, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 * const anim_0341[11] = {
    anim_0341__v0_l0,
    anim_0341__v1_l0,
    anim_0341__v2_l0,
    anim_0341__v3_l0,
    anim_0341__v4_l0,
    anim_0341__v5_l0,
    anim_0341__v6_l0,
    anim_0341__v7_l0,
    anim_0341__v8_l0,
    anim_0341__v9_l0,
    anim_0341__v10_l0,
};

const s32 anim_0342__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x125D7, 24,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x125EF, 24,
    2, 1,

    -1, 0x12607, 20,
    2, 2,

    -1, 0x1261B, 24,
    2, 3,

    -1, 0x12633, 24,
    2, 4,

    -1, 0x1264B, 20,
    2, 5,

    -1, 0x1265F, 25,
    2, 6,

    -1, 0x12678, 20,
    2, 7,

    -3, 46,
};

const s32 anim_0342__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1268C, 24,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 8,

    -1, 0x126A4, 24,
    2, 9,

    -1, 0x126BC, 20,
    2, 10,

    -1, 0x126D0, 24,
    2, 11,

    -1, 0x126E8, 24,
    2, 12,

    -1, 0x12700, 20,
    2, 13,

    -1, 0x12714, 25,
    2, 14,

    -1, 0x1272D, 20,
    2, 15,

    -3, 46,
};

const s32 * const anim_0342[2] = {
    anim_0342__v0_l0,
    anim_0342__v1_l0,
};

const s32 anim_0343__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12741, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x12751, 16,
    2, 1,

    -1, 0x12761, 16,
    2, 2,

    -1, 0x12771, 16,
    2, 3,

    -1, 0x12781, 16,
    2, 4,

    -1, 0x12791, 16,
    2, 5,

    -1, 0x127A1, 16,
    2, 6,

    -1, 0x127B1, 16,
    2, 7,

    -3, 49,
};

const s32 * const anim_0343[1] = {
    anim_0343__v0_l0,
};

const s32 anim_0344__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x127C1, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x127DA, 25,
    2, 1,

    -1, 0x127F3, 25,
    2, 2,

    -1, 0x1280C, 30,
    2, 3,

    -1, 0x1282A, 30,
    2, 4,

    -1, 0x12848, 36,
    2, 5,

    -3, 36,
};

const s32 anim_0344__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1286C, 35,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 6,

    -1, 0x1288F, 24,
    2, 7,

    -1, 0x128A7, 24,
    2, 8,

    -1, 0x128BF, 30,
    2, 9,

    -1, 0x128A7, 24,
    2, 8,

    -1, 0x1288F, 24,
    2, 7,

    -3, 36,
};

const s32 * const anim_0344[2] = {
    anim_0344__v0_l0,
    anim_0344__v1_l0,
};

const s32 anim_0345__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x128DD, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 0,

    -1, 0x128F5, 30,
    -6, 0, (((-18 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-11 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 1,

    -1, 0x12913, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 2,

    -1, 0x12937, 30,
    -6, 0, (((-22 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 3,

    -1, 0x12955, 24,
    -6, 0, (((-9 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 4,

    -1, 0x1296D, 24,
    -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 5,

    -1, 0x12985, 36,
    -6, 0, (((6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 6,

    -1, 0x129A9, 30,
    -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 7,

    -3, 67,
};

const s32 * const anim_0345[1] = {
    anim_0345__v0_l0,
};

const s32 anim_0346__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x129C7, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x129D7, 16,
    3, 1,

    -1, 0x129E7, 20,
    3, 2,

    -1, 0x129FB, 16,
    3, 3,

    -1, 0x12A0B, 16,
    3, 4,

    -1, 0x12A1B, 16,
    3, 5,

    -1, 0x12A2B, 16,
    3, 6,

    -1, 0x12A3B, 16,
    3, 7,

    -3, 46,
};

const s32 anim_0346__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12A4B, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 8,

    -1, 0x12A69, 25,
    3, 9,

    -1, 0x12A82, 20,
    3, 10,

    -1, 0x12A96, 25,
    3, 11,

    -1, 0x12AAF, 30,
    3, 12,

    -1, 0x12ACD, 25,
    3, 13,

    -1, 0x12AE6, 30,
    3, 14,

    -1, 0x12B04, 25,
    3, 15,

    -3, 46,
};

const s32 anim_0346__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12B1D, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 16,

    -1, 0x12B3B, 25,
    3, 17,

    -1, 0x12B54, 30,
    3, 18,

    -1, 0x12B72, 25,
    3, 19,

    -1, 0x12B8B, 30,
    3, 20,

    -1, 0x12BA9, 30,
    3, 21,

    -1, 0x12BC7, 25,
    3, 22,

    -1, 0x12BE0, 30,
    3, 23,

    -3, 46,
};

const s32 * const anim_0346[3] = {
    anim_0346__v0_l0,
    anim_0346__v1_l0,
    anim_0346__v2_l0,
};

const s32 anim_0347__v0_l0[] = {
    -2, 26, (((u16)16 << 0) | ((u16)0x10 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0347[1] = {
    anim_0347__v0_l0,
};

const s32 anim_0348__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12BFE, 64,
    -6, 0, (((-7 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x12C3E, 64,
    2, 1,

    -1, 0x12C7E, 64,
    2, 2,

    -3, 21,
};

const s32 * const anim_0348[1] = {
    anim_0348__v0_l0,
};

const s32 anim_0358__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12CBE, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0358__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12CD2, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0358[2] = {
    anim_0358__v0_l0,
    anim_0358__v1_l0,
};

const s32 anim_0359__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12CE6, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 0,

    -1, 0x12CFA, 20,
    3, 1,

    -1, 0x12D0E, 20,
    3, 2,

    -1, 0x12D22, 20,
    3, 3,

    -1, 0x12D36, 20,
    3, 4,

    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12D4A, 20,
    3, 5,

    -3, 39,
};

const s32 anim_0359__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12D5E, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 6,

    -1, 0x12D72, 20,
    3, 7,

    -1, 0x12D86, 20,
    3, 8,

    -1, 0x12D9A, 20,
    3, 9,

    -1, 0x12DAE, 20,
    3, 10,

    -1, 0x12DC2, 20,
    3, 11,

    -3, 36,
};

const s32 anim_0359__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12DD6, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 12,

    -1, 0x12DF4, 30,
    3, 13,

    -1, 0x12E12, 30,
    3, 14,

    -1, 0x12E30, 30,
    3, 15,

    -1, 0x12E4E, 30,
    3, 16,

    -1, 0x12E6C, 30,
    3, 17,

    -3, 36,
};

const s32 anim_0359__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12E8A, 25,
    3, 18,

    -1, 0x12EA3, 25,
    3, 19,

    -1, 0x12EBC, 25,
    3, 20,

    -1, 0x12ED5, 25,
    3, 21,

    -1, 0x12EEE, 25,
    3, 22,

    -1, 0x12F07, 25,
    3, 23,

    -3, 33,
};

const s32 * const anim_0359[4] = {
    anim_0359__v0_l0,
    anim_0359__v1_l0,
    anim_0359__v2_l0,
    anim_0359__v3_l0,
};

const s32 anim_0360__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12F20, 36,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 0,

    -1, 0x12F44, 36,
    2, 1,

    -3, 16,
};

const s32 anim_0360__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12F68, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 2,

    -4,
};

const s32 anim_0360__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12F7C, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 3,

    -1, 0x12F9A, 30,
    2, 4,

    -3, 16,
};

const s32 anim_0360__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12FB8, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 5,

    -4,
};

const s32 * const anim_0360[4] = {
    anim_0360__v0_l0,
    anim_0360__v1_l0,
    anim_0360__v2_l0,
    anim_0360__v3_l0,
};

const s32 anim_0361__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x12FD1, 16,
    6, 0,

    -1, 0x12FE1, 20,
    6, 1,

    -1, 0x12FF5, 20,
    6, 2,

    -4,
};

const s32 anim_0361__v1_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13009, 25,
    6, 3,

    -1, 0x13022, 25,
    6, 4,

    -1, 0x1303B, 30,
    6, 5,

    -4,
};

const s32 * const anim_0361[2] = {
    anim_0361__v0_l0,
    anim_0361__v1_l0,
};

const s32 anim_0362__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13059, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),



    2, 0,

    -1, 0x13069, 16,
    2, 1,

    -1, 0x13079, 16,
    2, 2,

    -1, 0x13089, 16,
    2, 3,

    -1, 0x13099, 16,
    2, 4,

    -1, 0x130A9, 16,
    2, 5,



    -3, 36,

};

const s32 * const anim_0362[1] = {
    anim_0362__v0_l0,
};

const s32 anim_0363__v0_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x130B9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    2, 0,

    -1, 0x130CD, 20,
    2, 1,

    -1, 0x130E1, 20,
    2, 2,

    -1, 0x130F5, 20,
    2, 3,

    -1, 0x13109, 20,
    3, 4,

    -1, 0x1311D, 20,
    3, 5,

    -1, 0x13131, 20,
    3, 6,

    -1, 0x13145, 20,
    3, 7,

    -1, 0x13159, 20,
    3, 8,

    -1, 0x1316D, 20,
    3, 9,

    -1, 0x13181, 20,
    3, 10,

    -4,
};

const s32 * const anim_0363[1] = {
    anim_0363__v0_l0,
};

const s32 anim_0364__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13195, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 0,

    -1, 0x131A9, 20,
    6, 1,

    -1, 0x131BD, 20,
    6, 2,

    -1, 0x131D1, 20,
    6, 3,

    -1, 0x131E5, 20,
    6, 4,

    -1, 0x131F9, 20,
    6, 5,

    -1, 0x1320D, 20,
    6, 6,

    -1, 0x13221, 20,
    6, 7,

    -1, 0x13195, 20,
    6, 0,

    -1, 0x13235, 20,
    6, 8,

    -1, 0x13249, 20,
    6, 9,

    -1, 0x1325D, 20,
    6, 10,

    -1, 0x131E5, 20,
    6, 4,

    -1, 0x131F9, 20,
    6, 5,

    -1, 0x1320D, 20,
    6, 6,

    -1, 0x13221, 20,
    6, 7,

    -3, 86,
};

const s32 * const anim_0364[1] = {
    anim_0364__v0_l0,
};

const s32 anim_0365__v0_l0[] = {
    -2, 28, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13271, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x13281, 16,
    5, 1,

    -1, 0x13291, 16,
    5, 2,

    -1, 0x132A1, 16,
    5, 3,

    -1, 0x132B1, 20,
    5, 4,

    -1, 0x132C5, 20,
    5, 5,

    -1, 0x132D9, 15,
    5, 6,

    -1, 0x132E8, 15,
    5, 7,

    -1, 0x132F7, 25,
    5, 8,

    -1, 0x13310, 25,
    5, 9,

    -1, 0x13329, 25,
    5, 10,

    -1, 0x13342, 25,
    5, 11,

    -1, 0x1335B, 25,
    5, 12,

    -1, 0x13374, 25,
    8, 13,

    -1, 0x1338D, 30,
    5, 14,

    -1, 0x133AB, 30,
    4, 15,

    -1, 0x133C9, 25,
    12, 16,

    -1, 0x133E2, 15,
    4, 17,

    -1, 0x133F1, 20,
    12, 18,

    -1, 0x13405, 15,
    5, 19,

    -1, 0x13414, 15,
    5, 20,

    -1, 0x13423, 15,
    5, 21,

    -1, 0x13432, 15,
    10, 22,

    -1, 0x13441, 15,
    4, 23,

    -1, 0x13450, 20,
    4, 24,

    -1, 0x13464, 15,
    4, 25,

    -1, 0x13473, 16,
    6, 26,
    -1, 0x13483, 20,
    4, 27,

    -1, 0x13497, 20,
    4, 28,

    -1, 0x134AB, 20,
    4, 29,

    -1, 0x134BF, 15,
    4, 30,

    -1, 0x134CE, 12,
    4, 31,

    -1, 0x134DA, 15,
    4, 32,

    -3, 30,
};

const s32 anim_0365__v1_l0[] = {
    -2, 28, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x134E9, 12,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 33,

    -1, 0x134F5, 15,
    4, 34,

    -1, 0x13504, 20,
    12, 35,

    -1, 0x13518, 20,
    4, 36,

    -4,
};

const s32 * const anim_0365[2] = {
    anim_0365__v0_l0,
    anim_0365__v1_l0,
};

const s32 anim_0366__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1352C, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x1353C, 16,
    1, 1,

    -1, 0x1354C, 16,
    1, 2,

    -4,
};

const s32 anim_0366__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1355C, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 3,

    -1, 0x1356C, 16,
    1, 4,

    -4,
};

const s32 * const anim_0366[2] = {
    anim_0366__v0_l0,
    anim_0366__v1_l0,
};

const s32 anim_0367__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1357C, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x1358C, 16,
    3, 1,

    -1, 0x1359C, 16,
    3, 2,

    -3, 24,
};

const s32 anim_0367__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1357C, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x1358C, 16,
    3, 1,

    -1, 0x1359C, 16,
    3, 2,

    -3, 24,
};

const s32 * const anim_0367[2] = {
    anim_0367__v0_l0,
    anim_0367__v1_l0,
};

const s32 anim_0368__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x135AC, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x135BC, 16,
    2, 1,

    -1, 0x135CC, 16,
    2, 2,

    -1, 0x135DC, 16,
    2, 3,

    -1, 0x135AC, 16,
    2, 0,

    -1, 0x135BC, 16,
    2, 1,

    -1, 0x135CC, 16,
    2, 2,

    -1, 0x135DC, 16,
    2, 3,

    -1, 0x135AC, 16,
    2, 0,

    -1, 0x135BC, 16,
    2, 1,

    -1, 0x135CC, 16,
    2, 2,

    -1, 0x135DC, 16,
    2, 3,

    -1, 0x135AC, 16,
    2, 0,

    -1, 0x135BC, 16,
    2, 1,

    -1, 0x135CC, 16,
    2, 2,

    -1, 0x135DC, 16,
    2, 3,

    -3, 89,
};

const s32 * const anim_0368[1] = {
    anim_0368__v0_l0,
};

const s32 anim_0369__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x135EC, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x13600, 20,
    1, 1,

    -4,
};

const s32 * const anim_0369[1] = {
    anim_0369__v0_l0,
};

const s32 anim_0370__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13614, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x13624, 20,
    2, 1,

    -1, 0x13638, 20,
    2, 2,

    -1, 0x1364C, 16,
    2, 3,

    -4,
};

const s32 * const anim_0370[1] = {
    anim_0370__v0_l0,
};

const s32 anim_0371__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1365C, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,
    -1, 0x13670, 25,
    2, 1,

    -1, 0x13689, 25,
    2, 2,

    -3, 10,
};

const s32 anim_0371__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x136A2, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -4,
};

const s32 * const anim_0371[2] = {
    anim_0371__v0_l0,
    anim_0371__v1_l0,
};

const s32 anim_0372__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x136B2, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x136C2, 20,
    1, 1,
    -1, 0x136D6, 25,
    3, 2,

    -1, 0x136EF, 25,
    3, 3,

    -3, 10,
};

const s32 anim_0372__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13708, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 4,

    -1, 0x1371C, 12,
    1, 5,

    -1, 0x13728, 12,
    1, 6,

    -4,
};

const s32 * const anim_0372[2] = {
    anim_0372__v0_l0,
    anim_0372__v1_l0,
};

const s32 anim_0373__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13734, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 0,

    -1, 0x13774, 64,
    8, 1,

    -1, 0x137B4, 64,
    8, 2,

    -1, 0x137F4, 64,
    8, 3,

    -1, 0x13834, 64,
    8, 4,

    -1, 0x13874, 64,
    8, 5,

    -1, 0x138B4, 64,
    8, 6,

    -1, 0x138F4, 64,
    8, 7,

    -1, 0x13734, 64,
    8, 0,

    -1, 0x13934, 64,
    8, 8,

    -1, 0x13974, 64,
    8, 9,

    -1, 0x139B4, 64,
    8, 10,

    -1, 0x13834, 64,
    8, 4,

    -1, 0x13874, 64,
    8, 5,

    -1, 0x138B4, 64,
    8, 6,

    -1, 0x138F4, 64,
    8, 7,

    -3, 86,
};

const s32 anim_0373__v1_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x139F4, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 11,

    -1, 0x13A34, 64,
    8, 12,

    -1, 0x13A74, 64,
    8, 13,

    -1, 0x13AB4, 64,
    8, 14,

    -1, 0x13AF4, 64,
    8, 15,

    -1, 0x13B34, 64,
    8, 16,

    -1, 0x13B74, 64,
    8, 17,

    -1, 0x13BB4, 64,
    8, 18,

    -1, 0x13BF4, 64,
    8, 19,

    -1, 0x13C34, 64,
    8, 20,

    -1, 0x13C74, 64,
    8, 21,

    -1, 0x13CB4, 64,
    8, 22,

    -1, 0x13AF4, 64,
    8, 15,

    -1, 0x13B34, 64,
    8, 16,

    -1, 0x13B74, 64,
    8, 17,

    -1, 0x13CF4, 64,
    8, 23,

    -3, 86,
};

const s32 anim_0373__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13D34, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 24,

    -1, 0x13D74, 64,
    8, 25,

    -1, 0x13DB4, 64,
    8, 26,

    -1, 0x13DF4, 64,
    8, 27,

    -1, 0x13E34, 64,
    8, 28,

    -1, 0x13E74, 64,
    8, 29,

    -1, 0x13EB4, 64,
    8, 30,

    -1, 0x13EF4, 64,
    8, 31,

    -1, 0x13D34, 64,
    8, 24,

    -1, 0x13F34, 64,
    8, 32,

    -1, 0x13F74, 64,
    8, 33,

    -1, 0x13FB4, 64,
    8, 34,

    -1, 0x13E34, 64,
    8, 28,

    -1, 0x13E74, 64,
    8, 29,

    -1, 0x13EB4, 64,
    8, 30,

    -1, 0x13EF4, 64,
    8, 31,

    -3, 86,
};

const s32 anim_0373__v3_l0[] = {
    -2, 30, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x13FF4, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 35,

    -1, 0x14034, 64,
    8, 36,

    -1, 0x14074, 64,
    8, 37,

    -1, 0x140B4, 64,
    8, 38,

    -1, 0x140F4, 64,
    8, 39,

    -1, 0x14134, 64,
    8, 40,

    -1, 0x14174, 64,
    8, 41,

    -1, 0x141B4, 64,
    8, 42,

    -1, 0x13FF4, 64,
    8, 35,

    -1, 0x141F4, 64,
    8, 43,

    -1, 0x14234, 64,
    8, 44,

    -1, 0x14274, 64,
    8, 45,

    -1, 0x140F4, 64,
    8, 39,

    -1, 0x14134, 64,
    8, 40,

    -1, 0x14174, 64,
    8, 41,

    -1, 0x141B4, 64,
    8, 42,

    -3, 86,
};

const s32 anim_0373__v4_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x142B4, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 46,

    -1, 0x142F4, 64,
    8, 47,

    -1, 0x14334, 64,
    8, 48,

    -1, 0x14374, 64,
    8, 49,

    -1, 0x143B4, 64,
    8, 50,

    -1, 0x143F4, 64,
    8, 51,

    -1, 0x14434, 64,
    8, 52,

    -1, 0x14474, 64,
    8, 53,

    -1, 0x142B4, 64,
    8, 46,

    -1, 0x144B4, 64,
    8, 54,

    -1, 0x144F4, 64,
    8, 55,

    -1, 0x14534, 64,
    8, 56,

    -1, 0x143B4, 64,
    8, 50,

    -1, 0x143F4, 64,
    8, 51,

    -1, 0x14434, 64,
    8, 52,

    -1, 0x14474, 64,
    8, 53,

    -3, 86,
};

const s32 anim_0373__v5_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x142B4, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    8, 46,

    -1, 0x142F4, 64,
    8, 47,

    -1, 0x14334, 64,
    8, 48,

    -1, 0x14374, 64,
    8, 49,

    -1, 0x143B4, 64,
    8, 50,

    -1, 0x143F4, 64,
    8, 51,

    -1, 0x14434, 64,
    8, 52,

    -1, 0x14474, 64,
    8, 53,

    -1, 0x142B4, 64,
    8, 46,

    -1, 0x144B4, 64,
    8, 54,

    -1, 0x144F4, 64,
    8, 55,

    -1, 0x14534, 64,
    8, 56,

    -1, 0x143B4, 64,
    8, 50,

    -1, 0x143F4, 64,
    8, 51,

    -1, 0x14434, 64,
    8, 52,

    -1, 0x14474, 64,
    8, 53,

    -3, 86,
};

const s32 * const anim_0373[6] = {
    anim_0373__v0_l0,
    anim_0373__v1_l0,
    anim_0373__v2_l0,
    anim_0373__v3_l0,
    anim_0373__v4_l0,
    anim_0373__v5_l0,
};

const s32 anim_0374__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14574, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x14584, 16,
    2, 1,

    -4,
};

const s32 anim_0374__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14594, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 2,

    -1, 0x145A4, 16,
    2, 3,

    -1, 0x145B4, 16,
    2, 4,

    -1, 0x145C4, 16,
    2, 5,

    -1, 0x145D4, 16,
    2, 6,

    -1, 0x145E4, 16,
    2, 7,

    -1, 0x145F4, 16,
    2, 8,

    -1, 0x14604, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0374__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14614, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 10,

    -1, 0x14624, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    2, 11,
    -1, 0x14638, 25,
    2, 12,

    -1, 0x14651, 25,
    2, 13,

    -1, 0x1466A, 30,
    2, 14,

    -3, 15,
};

const s32 * const anim_0374[3] = {
    anim_0374__v0_l0,
    anim_0374__v1_l0,
    anim_0374__v2_l0,
};

const s32 anim_0375__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14688, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x14698, 16,
    2, 1,

    -4,
};

const s32 anim_0375__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x146A8, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 2,

    -1, 0x146B8, 16,
    2, 3,

    -1, 0x146C8, 16,
    2, 4,

    -1, 0x146D8, 16,
    2, 5,

    -1, 0x146E8, 16,
    2, 6,

    -1, 0x146F8, 16,
    2, 7,

    -1, 0x14708, 16,
    2, 8,

    -1, 0x14718, 16,
    2, 9,

    -3, 49,
};

const s32 anim_0375__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14728, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 10,

    -1, 0x14738, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    2, 11,
    -1, 0x1474C, 25,
    2, 12,

    -1, 0x14765, 25,
    2, 13,

    -1, 0x1477E, 30,
    2, 14,

    -3, 15,
};

const s32 * const anim_0375[3] = {
    anim_0375__v0_l0,
    anim_0375__v1_l0,
    anim_0375__v2_l0,
};

const s32 anim_0376__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1479C, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x147AC, 16,
    1, 1,

    -1, 0x147BC, 16,
    1, 2,

    -4,
};

const s32 * const anim_0376[1] = {
    anim_0376__v0_l0,
};

const s32 anim_0377__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x147CC, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 0,

    -1, 0x147E0, 25,
    2, 1,
    -1, 0x147F9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 2,

    -1, 0x14811, 24,
    2, 3,

    -1, 0x14829, 24,
    2, 4,

    -3, 18,
};

const s32 * const anim_0377[1] = {
    anim_0377__v0_l0,
};

const s32 anim_0378__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14841, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x14855, 24,
    -6, 0, (((0 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -1, 0x1486D, 20,
    -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 2,

    -1, 0x14881, 30,
    -6, 0, (((6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 3,

    -1, 0x1489F, 35,
    2, 4,

    -1, 0x148C2, 35,
    3, 5,

    -1, 0x148E5, 36,
    -6, 0, (((2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 6,

    -1, 0x14909, 24,
    -6, 0, (((0 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-35 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    1, 7,

    -1, 0x14921, 42,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-32 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 128,
    2, 8,

    -1, 0x1494B, 35,
    2, 9,

    -1, 0x1496E, 35,
    2, 10,

    -1, 0x14991, 28,
    2, 11,

    -1, 0x149AD, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 12,

    -1, 0x149C1, 20,
    3, 13,

    -1, 0x149D5, 16,
    3, 14,

    -4,
};

const s32 * const anim_0378[1] = {
    anim_0378__v0_l0,
};

const s32 anim_0380__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x149E5, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x149F9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 1,

    -1, 0x14A0D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    6, 2,

    -1, 0x14A25, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 3,

    -4,
};

const s32 anim_0380__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14A39, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((1 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    -6, 1, (((-18 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((17 & 0xFF) << 24)),
    2, 4,

    -1, 0x14A4B, 24,
    2, 5,

    -1, 0x14A63, 20,
    2, 6,

    -3, 24,
};

const s32 anim_0380__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14A77, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 7,

    -1, 0x14A89, 25,
    2, 8,

    -1, 0x14AA2, 16,
    1, 9,

    -1, 0x14AB2, 15,
    1, 10,

    -1, 0x14AC1, 25,
    1, 11,

    -1, 0x14ADA, 16,
    1, 12,

    -1, 0x14AEA, 20,
    1, 13,

    -1, 0x14AFE, 15,
    1, 14,

    -1, 0x14B0D, 16,
    1, 15,

    -1, 0x14B1D, 16,
    1, 16,

    -4,
};

const s32 anim_0380__v3_l0[] = {
    -2, 14, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x14B2D, 9,
    2, 17,

    -1, 0x14B36, 20,
    2, 18,

    -1, 0x14B4A, 12,
    2, 19,

    -3, 18,
};

const s32 * const anim_0380[4] = {
    anim_0380__v0_l0,
    anim_0380__v1_l0,
    anim_0380__v2_l0,
    anim_0380__v3_l0,
};

const s32 anim_0381__v0_l0[] = {
    -2, 31, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14B56, 24,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x14B6E, 35,
    3, 1,

    -1, 0x14B91, 30,
    2, 2,

    -1, 0x14BAF, 25,
    2, 3,

    -1, 0x14BC8, 20,
    1, 4,

    -1, 0x14BDC, 30,
    1, 5,

    -1, 0x14BFA, 20,
    1, 6,

    -1, 0x14C0E, 30,
    1, 7,

    -1, 0x14C2C, 15,
    1, 8,

    -1, 0x14C3B, 30,
    1, 9,

    -1, 0x14C59, 24,
    1, 10,

    -1, 0x14C71, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 11,

    -1, 0x14C85, 20,
    1, 12,

    -1, 0x14C99, 25,
    1, 13,
    -1, 0x14CB2, 24,
    3, 14,

    -1, 0x14CCA, 24,
    3, 15,

    -1, 0x14CE2, 24,
    3, 16,

    -3, 15,
};

const s32 * const anim_0381[1] = {
    anim_0381__v0_l0,
};

const s32 anim_0382__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14CFA, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 0,

    -1, 0x14D09, 20,
    4, 1,

    -1, 0x14D1D, 20,
    3, 2,
    -1, 0x14D31, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    -6, 1, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 3,

    -1, 0x14D4F, 20,
    2, 4,

    -1, 0x14D63, 30,
    2, 5,

    -1, 0x14D81, 24,
    2, 6,

    -1, 0x14D99, 16,
    2, 7,

    -1, 0x14DA9, 24,
    2, 8,

    -3, 36,
};

const s32 anim_0382__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14DC1, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 9,
    -1, 0x14DDA, 24,
    3, 10,

    -1, 0x14DF2, 24,
    3, 11,

    -1, 0x14E0A, 24,
    3, 12,

    -3, 15,
};

const s32 * const anim_0382[2] = {
    anim_0382__v0_l0,
    anim_0382__v1_l0,
};

const s32 anim_0383__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x14E22, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -1, 0x14E36, 20,
    1, 1,

    -1, 0x14E4A, 25,
    1, 2,

    -1, 0x14E63, 30,
    1, 3,

    -1, 0x14E81, 30,
    3, 4,

    -1, 0x14E9F, 36,
    4, 5,

    -1, 0x14EC3, 36,
    2, 6,

    -1, 0x14EE7, 35,
    1, 7,

    -1, 0x14F0A, 42,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-32 & 0xFF) << 0) | ((-42 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 8,

    -1, 0x14F34, 42,
    -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-40 & 0xFF) << 0) | ((-34 & 0xFF) << 8) | ((-7 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 9,

    -1, 0x14F5E, 42,
    -6, 0, (((-14 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((-44 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((-11 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -5, 128,
    1, 10,

    -1, 0x14F88, 42,
    2, 11,

    -1, 0x14FB2, 42,
    2, 12,

    -1, 0x14FDC, 28,
    2, 13,

    -1, 0x14FF8, 28,
    8, 14,

    -1, 0x15014, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 15,

    -1, 0x15024, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 16,

    -1, 0x15034, 12,
    -6, 0, (((-2 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 17,

    -4,
};

const s32 * const anim_0383[1] = {
    anim_0383__v0_l0,
};

const s32 anim_0392__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15040, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x15054, 25,
    8, 1,

    -1, 0x1506D, 20,
    8, 2,

    -1, 0x15081, 16,
    8, 3,

    -4,
};

const s32 anim_0392__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15091, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    5, 4,

    -1, 0x150AA, 15,
    5, 5,

    -1, 0x150B9, 16,
    5, 6,

    -1, 0x150C9, 16,
    5, 7,

    -1, 0x150D9, 20,
    5, 8,

    -4,
};

const s32 anim_0392__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x150ED, 16,
    2, 9,

    -1, 0x150FD, 16,
    2, 10,

    -1, 0x1510D, 20,
    2, 11,

    -1, 0x15121, 16,
    2, 12,

    -1, 0x15131, 16,
    2, 13,

    -4,
};

const s32 * const anim_0392[3] = {
    anim_0392__v0_l0,
    anim_0392__v1_l0,
    anim_0392__v2_l0,
};

const s32 anim_0393__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15141, 20,
    3, 0,

    -1, 0x15155, 30,
    3, 1,

    -1, 0x15173, 30,
    2, 2,
    -1, 0x15191, 20,
    3, 3,

    -1, 0x151A5, 24,
    3, 4,

    -3, 10,
};

const s32 * const anim_0393[1] = {
    anim_0393__v0_l0,
};

const s32 anim_0394__v0_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x151BD, 15,
    1, 0,

    -1, 0x151CC, 20,
    1, 1,

    -1, 0x151E0, 20,
    2, 2,

    -1, 0x151F4, 20,
    5, 3,

    -1, 0x15208, 20,
    5, 4,

    -1, 0x1521C, 20,
    5, 5,

    -1, 0x15230, 20,
    5, 6,

    -1, 0x151F4, 20,
    5, 3,

    -1, 0x15208, 20,
    5, 4,

    -1, 0x1521C, 20,
    5, 5,

    -1, 0x15230, 20,
    5, 6,

    -1, 0x15244, 20,
    5, 7,

    -1, 0x15258, 20,
    3, 8,

    -1, 0x1526C, 20,
    4, 9,

    -1, 0x15280, 20,
    6, 10,

    -1, 0x15294, 20,
    6, 11,

    -1, 0x152A8, 20,
    6, 12,

    -1, 0x152BC, 20,
    6, 13,

    -1, 0x152D0, 20,
    6, 14,

    -1, 0x15294, 20,
    6, 11,

    -1, 0x152A8, 20,
    6, 12,

    -1, 0x152BC, 20,
    6, 13,

    -1, 0x152D0, 20,
    6, 14,

    -1, 0x152E4, 20,
    4, 15,

    -1, 0x152F8, 20,
    3, 16,

    -1, 0x1530C, 20,
    3, 17,

    -1, 0x15320, 20,
    7, 18,

    -1, 0x15334, 20,
    4, 19,

    -1, 0x15348, 20,
    4, 20,

    -1, 0x1535C, 20,
    6, 21,

    -1, 0x15370, 20,
    3, 22,

    -1, 0x15384, 20,
    3, 23,

    -1, 0x15398, 20,
    3, 24,

    -1, 0x153AC, 15,
    12, 25,

    -1, 0x153BB, 20,
    4, 26,

    -1, 0x153CF, 16,
    6, 27,

    -4,
};

const s32 anim_0394__v1_l0[] = {
    -2, 32, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x153DF, 16,
    1, 28,

    -1, 0x153EF, 16,
    6, 29,

    -1, 0x153FF, 20,
    60, 30,

    -1, 0x15413, 20,
    4, 31,

    -4,
};

const s32 * const anim_0394[2] = {
    anim_0394__v0_l0,
    anim_0394__v1_l0,
};

const s32 anim_0395__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15427, 12,
    -6, 0, (((-8 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x15433, 12,
    3, 1,

    -4,
};

const s32 anim_0395__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1543F, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 2,

    -1, 0x15453, 20,
    2, 3,

    -1, 0x15467, 20,
    2, 4,

    -3, 21,
};

const s32 anim_0395__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15433, 12,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -1, 0x15427, 12,
    2, 0,

    -1, 0x1547B, 15,
    4, 5,

    -4,
};

const s32 * const anim_0395[3] = {
    anim_0395__v0_l0,
    anim_0395__v1_l0,
    anim_0395__v2_l0,
};

const s32 anim_0396__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1548A, 20,
    3, 0,

    -1, 0x1549E, 20,
    3, 1,

    -1, 0x154B2, 16,
    3, 2,

    -1, 0x154C2, 16,
    6, 3,

    -1, 0x154D2, 16,
    3, 4,

    -1, 0x154E2, 30,
    3, 5,

    -1, 0x15500, 42,
    3, 6,

    -1, 0x1552A, 48,
    3, 7,

    -1, 0x1555A, 35,
    3, 8,

    -1, 0x1557D, 35,
    3, 9,

    -1, 0x155A0, 35,
    3, 10,

    -1, 0x155C3, 30,
    3, 11,

    -1, 0x155E1, 30,
    3, 12,

    -1, 0x155FF, 25,
    3, 13,

    -1, 0x15618, 20,
    3, 14,

    -1, 0x1562C, 20,
    3, 15,

    -1, 0x15640, 20,
    3, 16,

    -1, 0x15654, 20,
    12, 17,

    -1, 0x15668, 20,
    3, 18,

    -1, 0x1567C, 20,
    3, 19,

    -1, 0x15690, 20,
    3, 20,

    -1, 0x156A4, 20,
    8, 21,

    -1, 0x156B8, 20,
    3, 22,

    -1, 0x156CC, 20,
    3, 23,

    -1, 0x156E0, 20,
    3, 24,

    -1, 0x156F4, 20,
    12, 25,

    -4,
};

const s32 * const anim_0396[1] = {
    anim_0396__v0_l0,
};

const s32 anim_0397__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15708, 20,
    3, 0,

    -1, 0x1571C, 15,
    3, 1,

    -1, 0x1572B, 20,
    3, 2,

    -1, 0x1573F, 20,
    6, 3,

    -1, 0x15753, 20,
    3, 4,

    -1, 0x15767, 20,
    3, 5,

    -1, 0x1577B, 20,
    3, 6,

    -1, 0x1578F, 15,
    3, 7,

    -1, 0x1579E, 25,
    3, 8,

    -1, 0x157B7, 25,
    3, 9,

    -1, 0x157D0, 15,
    6, 10,

    -1, 0x157DF, 15,
    6, 11,

    -1, 0x157EE, 15,
    3, 12,

    -1, 0x157FD, 15,
    3, 13,

    -1, 0x1580C, 20,
    3, 14,

    -1, 0x15820, 20,
    3, 15,

    -1, 0x15834, 20,
    3, 16,

    -1, 0x15848, 20,
    6, 17,

    -1, 0x1585C, 20,
    6, 18,

    -1, 0x15870, 15,
    3, 19,

    -1, 0x1587F, 20,
    3, 20,

    -1, 0x15893, 15,
    8, 21,

    -1, 0x158A2, 20,
    3, 22,

    -1, 0x158B6, 25,
    4, 23,
    -1, 0x158B6, 25,
    4, 23,

    -1, 0x158CF, 25,
    4, 24,

    -1, 0x158E8, 25,
    4, 25,

    -1, 0x15901, 25,
    4, 26,

    -1, 0x1591A, 25,
    4, 27,

    -1, 0x15933, 25,
    4, 28,

    -1, 0x1594C, 25,
    4, 29,

    -1, 0x15965, 25,
    4, 30,

    -1, 0x1597E, 25,
    4, 31,

    -1, 0x15997, 25,
    4, 32,

    -1, 0x15933, 25,
    4, 28,

    -1, 0x1591A, 25,
    4, 27,

    -3, 60,
};

const s32 * const anim_0397[1] = {
    anim_0397__v0_l0,
};

const s32 anim_0398__v0_l0[] = {
    -2, 33, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x159B0, 20,
    4, 0,

    -1, 0x159C4, 20,
    4, 1,

    -1, 0x159D8, 15,
    4, 2,

    -1, 0x159E7, 20,
    4, 3,

    -1, 0x159FB, 16,
    4, 4,

    -1, 0x15A0B, 16,
    6, 5,

    -1, 0x15A1B, 16,
    4, 6,

    -1, 0x15A2B, 16,
    4, 7,

    -1, 0x15A3B, 15,
    8, 8,
    -1, 0x15A4A, 20,
    6, 9,

    -1, 0x15A5E, 20,
    6, 10,

    -1, 0x15A72, 20,
    6, 11,

    -1, 0x15A5E, 20,
    6, 10,

    -1, 0x15A86, 20,
    6, 12,

    -1, 0x15A9A, 20,
    6, 13,

    -1, 0x15AAE, 20,
    6, 14,

    -1, 0x15AC2, 20,
    6, 15,

    -1, 0x15AD6, 20,
    6, 16,

    -1, 0x15A4A, 20,
    6, 9,

    -1, 0x15A5E, 20,
    6, 10,

    -1, 0x15A72, 20,
    6, 11,

    -1, 0x15A5E, 20,
    6, 10,

    -1, 0x15AEA, 20,
    6, 17,

    -1, 0x15AFE, 20,
    6, 18,

    -1, 0x15B12, 20,
    6, 19,

    -1, 0x15B26, 20,
    6, 20,

    -1, 0x15B12, 20,
    6, 19,

    -3, 90,
};

const s32 * const anim_0398[1] = {
    anim_0398__v0_l0,
};

const s32 anim_0399__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15B3A, 16,
    2, 0,

    -1, 0x15B4A, 16,
    2, 1,
    -1, 0x15B5A, 20,
    3, 2,

    -1, 0x15B6E, 20,
    3, 3,

    -1, 0x15B82, 16,
    3, 4,

    -1, 0x15B92, 16,
    3, 5,

    -1, 0x15BA2, 20,
    3, 6,

    -1, 0x15BB6, 20,
    3, 7,

    -1, 0x15BCA, 16,
    3, 8,

    -1, 0x15BDA, 16,
    3, 9,

    -1, 0x15B5A, 20,
    3, 2,

    -1, 0x15B6E, 20,
    3, 3,

    -1, 0x15B82, 16,
    3, 4,

    -1, 0x15B92, 16,
    3, 5,

    -1, 0x15BEA, 20,
    3, 10,

    -1, 0x15BFE, 20,
    3, 11,

    -1, 0x15C12, 16,
    3, 12,

    -1, 0x15BDA, 16,
    3, 9,

    -3, 80,
};

const s32 * const anim_0399[1] = {
    anim_0399__v0_l0,
};

const s32 anim_0400__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15C22, 20,
    1, 0,

    -4,
};

const s32 anim_0400__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15C36, 20,
    1, 1,

    -4,
};

const s32 anim_0400__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15C4A, 15,
    1, 2,

    -4,
};

const s32 anim_0400__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15C59, 15,
    6, 3,

    -1, 0x15C68, 15,
    6, 4,

    -1, 0x15C77, 15,
    8, 5,

    -1, 0x15C86, 15,
    6, 6,

    -1, 0x15C59, 15,
    6, 3,

    -4,
};

const s32 * const anim_0400[4] = {
    anim_0400__v0_l0,
    anim_0400__v1_l0,
    anim_0400__v2_l0,
    anim_0400__v3_l0,
};

const s32 anim_0412__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15C95, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x15CA9, 20,
    6, 1,

    -4,
};

const s32 anim_0412__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15CBD, 20,
    2, 2,

    -1, 0x15CD1, 25,
    1, 3,

    -1, 0x15CEA, 25,
    1, 4,
    -1, 0x15D03, 18,
    3, 5,

    -1, 0x15D15, 18,
    3, 6,

    -1, 0x15D27, 18,
    3, 7,

    -3, 15,
};

const s32 anim_0412__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15D39, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 8,

    -1, 0x15D52, 20,
    1, 9,

    -1, 0x15D66, 20,
    1, 10,
    -1, 0x15D7A, 20,
    3, 11,

    -1, 0x15D8E, 20,
    3, 12,

    -1, 0x15DA2, 20,
    3, 13,

    -3, 15,
};

const s32 * const anim_0412[3] = {
    anim_0412__v0_l0,
    anim_0412__v1_l0,
    anim_0412__v2_l0,
};

const s32 anim_0413__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15DB6, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -1, 0x15DCA, 25,
    2, 1,

    -1, 0x15DE3, 25,
    3, 2,

    -1, 0x15DFC, 25,
    1, 3,

    -4,
};

const s32 anim_0413__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15E15, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0x15E29, 20,
    2, 5,

    -1, 0x15E3D, 20,
    2, 6,

    -1, 0x15E51, 20,
    2, 7,

    -1, 0x15E65, 20,
    2, 8,

    -1, 0x15E79, 20,
    2, 9,

    -1, 0x15E8D, 20,
    2, 10,

    -1, 0x15EA1, 25,
    2, 11,

    -3, 49,
};

const s32 * const anim_0413[2] = {
    anim_0413__v0_l0,
    anim_0413__v1_l0,
};

const s32 anim_0414__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15EBA, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -1, 0x15ECE, 20,
    2, 1,

    -1, 0x15EE2, 20,
    2, 2,

    -1, 0x15EF6, 16,
    3, 3,

    -4,
};

const s32 anim_0414__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x15F06, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0x15F1A, 20,
    2, 5,

    -1, 0x15F2E, 24,
    3, 6,

    -1, 0x15F46, 15,
    2, 7,

    -1, 0x15F55, 20,
    2, 8,

    -1, 0x15F69, 20,
    2, 9,

    -1, 0x15F7D, 24,
    2, 10,

    -1, 0x15F95, 24,
    2, 11,

    -1, 0x15FAD, 20,
    2, 12,

    -1, 0x15FC1, 25,
    2, 13,

    -1, 0x15FDA, 24,
    2, 14,

    -1, 0x15FF2, 25,
    2, 15,

    -1, 0x1600B, 20,
    2, 16,

    -1, 0x1601F, 20,
    2, 17,
    -1, 0x16033, 20,
    3, 18,

    -1, 0x16047, 20,
    3, 19,

    -1, 0x1605B, 20,
    3, 20,

    -3, 15,
};

const s32 * const anim_0414[2] = {
    anim_0414__v0_l0,
    anim_0414__v1_l0,
};

const s32 anim_0415__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1606F, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x1607E, 20,
    2, 1,

    -1, 0x16092, 20,
    4, 2,

    -1, 0x160A6, 15,
    2, 3,

    -4,
};

const s32 anim_0415__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x160B5, 30,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-26 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 4,

    -1, 0x160D3, 20,
    2, 5,

    -1, 0x160E7, 30,
    2, 6,

    -1, 0x16105, 24,
    2, 7,

    -1, 0x1611D, 16,
    2, 8,

    -1, 0x1612D, 24,
    2, 9,

    -3, 39,
};

const s32 anim_0415__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x160B5, 30,
    -6, 0, (((-8 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 4,

    -1, 0x16145, 25,
    2, 10,

    -1, 0x1615E, 20,
    2, 11,

    -1, 0x16172, 16,
    2, 12,
    -1, 0x16182, 16,
    3, 13,

    -1, 0x16192, 16,
    3, 14,

    -1, 0x161A2, 16,
    3, 15,

    -3, 15,
};

const s32 * const anim_0415[3] = {
    anim_0415__v0_l0,
    anim_0415__v1_l0,
    anim_0415__v2_l0,
};

const s32 anim_0416__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x161B2, 18,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 0,

    -1, 0x161C4, 18,
    3, 1,

    -1, 0x161D6, 18,
    3, 2,

    -3, 21,
};

const s32 anim_0416__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x161E8, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 3,

    -1, 0x161FC, 20,
    3, 4,

    -1, 0x16210, 20,
    3, 5,

    -1, 0x16224, 20,
    4, 6,

    -1, 0x16238, 20,
    4, 7,

    -1, 0x1624C, 25,
    4, 8,

    -4,
};

const s32 anim_0416__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16265, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 9,

    -1, 0x1627D, 24,
    3, 10,

    -1, 0x16295, 24,
    3, 11,

    -3, 21,
};

const s32 * const anim_0416[3] = {
    anim_0416__v0_l0,
    anim_0416__v1_l0,
    anim_0416__v2_l0,
};

const s32 anim_0417__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x162AD, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    4, 0,

    -1, 0x162C1, 15,
    4, 1,

    -1, 0x162D0, 12,
    4, 2,

    -1, 0x162DC, 16,
    4, 3,

    -1, 0x162EC, 20,
    4, 4,

    -1, 0x16300, 20,
    4, 5,

    -1, 0x16314, 16,
    4, 6,

    -1, 0x16324, 16,
    4, 7,

    -1, 0x16334, 20,
    4, 8,

    -1, 0x16348, 25,
    4, 9,

    -1, 0x16361, 20,
    4, 10,
    -1, 0x16375, 24,
    3, 11,

    -1, 0x1638D, 24,
    3, 12,

    -1, 0x163A5, 24,
    3, 13,

    -3, 15,
};

const s32 * const anim_0417[1] = {
    anim_0417__v0_l0,
};

const s32 anim_0418__v0_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x163BD, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 0,
    -1, 0x163CC, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 1,

    -1, 0x163E0, 20,
    2, 2,

    -1, 0x163F4, 20,
    2, 3,

    -3, 18,
};

const s32 anim_0418__v1_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16408, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 4,

    -1, 0x1641C, 20,
    2, 5,

    -1, 0x16430, 20,
    2, 6,

    -1, 0x16444, 25,
    2, 7,

    -1, 0x1645D, 20,
    2, 8,

    -1, 0x16471, 25,
    2, 9,
    -1, 0x1648A, 24,
    2, 10,

    -1, 0x164A2, 24,
    2, 11,

    -1, 0x164BA, 24,
    2, 12,

    -3, 15,
};

const s32 * const anim_0418[2] = {
    anim_0418__v0_l0,
    anim_0418__v1_l0,
};

const s32 anim_0419__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x164D2, 64,
    -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x16512, 64,
    -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 1,

    -3, 19,
};

const s32 * const anim_0419[1] = {
    anim_0419__v0_l0,
};

const s32 anim_0420__v0_l0[] = {
    -2, 29, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16552, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    3, 0,

    -1, 0x16566, 20,
    3, 1,

    -1, 0x1657A, 20,
    3, 2,

    -1, 0x16552, 20,
    3, 0,

    -1, 0x16566, 20,
    3, 1,

    -1, 0x1657A, 20,
    3, 2,

    -1, 0x1658E, 20,
    3, 3,

    -1, 0x165A2, 20,
    2, 4,

    -1, 0x165B6, 20,
    2, 5,

    -1, 0x165CA, 24,
    4, 6,

    -1, 0x165E2, 20,
    2, 7,

    -1, 0x165F6, 24,
    2, 8,

    -1, 0x1660E, 24,
    3, 9,

    -1, 0x16626, 30,
    3, 10,

    -1, 0x16644, 25,
    3, 11,

    -1, 0x1665D, 24,
    3, 12,

    -1, 0x16675, 30,
    3, 13,

    -1, 0x16693, 25,
    3, 14,

    -1, 0x166AC, 24,
    3, 15,

    -1, 0x166C4, 24,
    3, 16,

    -1, 0x166DC, 25,
    3, 17,

    -1, 0x166F5, 18,
    3, 18,

    -1, 0x16707, 25,
    3, 19,

    -1, 0x16720, 20,
    3, 20,

    -1, 0x16734, 18,
    3, 21,

    -1, 0x16746, 24,
    3, 22,

    -1, 0x1675E, 24,
    3, 23,

    -1, 0x16776, 24,
    3, 24,

    -1, 0x1678E, 18,
    3, 25,

    -1, 0x167A0, 20,
    3, 26,

    -1, 0x167B4, 25,
    3, 27,
    -1, 0x167CD, 24,
    3, 28,

    -1, 0x167E5, 24,
    3, 29,

    -1, 0x167FD, 24,
    3, 30,

    -3, 15,
};

const s32 * const anim_0420[1] = {
    anim_0420__v0_l0,
};

const s32 anim_0421__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16815, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0421__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16825, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0421__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16835, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0421__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16845, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0421__v4_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16859, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0421__v5_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1686D, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0421__v6_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1687D, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0421__v7_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1688D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0421[8] = {
    anim_0421__v0_l0,
    anim_0421__v1_l0,
    anim_0421__v2_l0,
    anim_0421__v3_l0,
    anim_0421__v4_l0,
    anim_0421__v5_l0,
    anim_0421__v6_l0,
    anim_0421__v7_l0,
};

const s32 anim_0422__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x168A1, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 0,

    -1, 0x168E1, 64,
    5, 1,

    -1, 0x16921, 64,
    5, 2,

    -1, 0x16961, 64,
    5, 3,

    -1, 0x169A1, 64,
    5, 4,

    -1, 0x169E1, 64,
    5, 5,

    -1, 0x16A21, 64,
    5, 6,

    -1, 0x16A61, 64,
    5, 7,

    -3, 46,
};

const s32 * const anim_0422[1] = {
    anim_0422__v0_l0,
};

const s32 anim_0423__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16AA1, 24,
    -6, 0, (((-8 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((35 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0423__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16AB9, 20,
    -6, 0, (((-22 & 0xFF) << 0) | ((8 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((28 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0423__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16ACD, 20,
    -6, 0, (((-30 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((-10 & 0xFF) << 16) | ((17 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0423__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16AE1, 15,
    -6, 0, (((-31 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-10 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0423__v4_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16AF0, 20,
    -6, 0, (((-25 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0423__v5_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B04, 20,
    -6, 0, (((-19 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0423__v6_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B18, 15,
    -6, 0, (((-8 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0423__v7_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B27, 18,
    -6, 0, (((2 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0423__v8_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B39, 20,
    -6, 0, (((9 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0423__v9_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B4D, 15,
    -6, 0, (((10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((34 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0423__v10_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B5C, 24,
    -6, 0, (((8 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0423__v11_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B74, 25,
    -6, 0, (((0 & 0xFF) << 0) | ((6 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0423[12] = {
    anim_0423__v0_l0,
    anim_0423__v1_l0,
    anim_0423__v2_l0,
    anim_0423__v3_l0,
    anim_0423__v4_l0,
    anim_0423__v5_l0,
    anim_0423__v6_l0,
    anim_0423__v7_l0,
    anim_0423__v8_l0,
    anim_0423__v9_l0,
    anim_0423__v10_l0,
    anim_0423__v11_l0,
};

const s32 anim_0424__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B8D, 15,
    -6, 0, (((-8 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-11 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0424__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16B9C, 20,
    -6, 0, (((-19 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0424__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16BB0, 20,
    -6, 0, (((-25 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0424__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16BC4, 15,
    -6, 0, (((-31 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((-10 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0424__v4_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16BD3, 20,
    -6, 0, (((-30 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((-10 & 0xFF) << 16) | ((17 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0424__v5_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16BE7, 20,
    -6, 0, (((-22 & 0xFF) << 0) | ((8 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((28 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0424__v6_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16BFB, 24,
    -6, 0, (((-8 & 0xFF) << 0) | ((10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((35 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0424__v7_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16C13, 25,
    -6, 0, (((0 & 0xFF) << 0) | ((6 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((30 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0424__v8_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16C2C, 24,
    -6, 0, (((8 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((30 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0424__v9_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16C44, 15,
    -6, 0, (((10 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((34 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0424__v10_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16C53, 20,
    -6, 0, (((9 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0424__v11_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16C67, 18,
    -6, 0, (((2 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    1, 11,

    -4,
};

const s32 * const anim_0424[12] = {
    anim_0424__v0_l0,
    anim_0424__v1_l0,
    anim_0424__v2_l0,
    anim_0424__v3_l0,
    anim_0424__v4_l0,
    anim_0424__v5_l0,
    anim_0424__v6_l0,
    anim_0424__v7_l0,
    anim_0424__v8_l0,
    anim_0424__v9_l0,
    anim_0424__v10_l0,
    anim_0424__v11_l0,
};

const s32 anim_0425__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16C79, 24,
    8, 0,

    -1, 0x16C91, 24,
    8, 1,

    -1, 0x16CA9, 24,
    8, 2,

    -1, 0x16C91, 24,
    8, 1,

    -3, 23,
};

const s32 * const anim_0425[1] = {
    anim_0425__v0_l0,
};

const s32 anim_0426__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16CC1, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    2, 0,

    -1, 0x16CD9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 1,

    -1, 0x16CED, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 2,

    -1, 0x16CFD, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 3,

    -1, 0x16D0D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 4,

    -1, 0x16D25, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    3, 5,

    -1, 0x16D39, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 6,

    -1, 0x16D49, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 7,

    -1, 0x16CC1, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    4, 0,

    -1, 0x16CD9, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    3, 1,

    -1, 0x16CED, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 2,

    -1, 0x16CFD, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 3,

    -1, 0x16D0D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 anim_0426__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16D5D, 24,
    2, 8,

    -1, 0x16D75, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 9,

    -1, 0x16D89, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    2, 10,

    -1, 0x16D99, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 11,

    -1, 0x16DA9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    4, 12,

    -1, 0x16DC1, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 13,

    -1, 0x16DD5, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 14,

    -1, 0x16DE5, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    2, 15,

    -1, 0x16D5D, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 8,

    -1, 0x16D75, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 9,

    -1, 0x16D89, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    2, 10,

    -1, 0x16D99, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 11,

    -1, 0x16DA9, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    2, 12,

    -4,
};

const s32 * const anim_0426[2] = {
    anim_0426__v0_l0,
    anim_0426__v1_l0,
};

const s32 anim_0427__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16DF9, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x16E09, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 1,

    -1, 0x16E19, 24,
    -6, 0, (((-4 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    4, 2,

    -1, 0x16E31, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -1, 0x16E41, 12,
    -6, 0, (((-4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 4,

    -1, 0x16E4D, 20,
    -6, 0, (((-4 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 5,

    -1, 0x16E61, 24,
    -6, 0, (((-4 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    4, 6,

    -1, 0x16E79, 20,
    -6, 0, (((-4 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 7,

    -1, 0x16DF9, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -4,
};

const s32 anim_0427__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16E8D, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 8,

    -1, 0x16E9D, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 9,

    -1, 0x16EAD, 24,
    -6, 0, (((-4 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    4, 10,

    -1, 0x16EC5, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    3, 11,

    -1, 0x16ED5, 12,
    -6, 0, (((-4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 12,

    -1, 0x16EE1, 20,
    -6, 0, (((-4 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 13,

    -1, 0x16EF5, 24,
    -6, 0, (((-4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 14,

    -1, 0x16F0D, 20,
    -6, 0, (((-4 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 15,

    -1, 0x16E8D, 16,
    -6, 0, (((-4 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 8,

    -4,
};

const s32 * const anim_0427[2] = {
    anim_0427__v0_l0,
    anim_0427__v1_l0,
};

const s32 anim_0428__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16F21, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 0,

    -1, 0x16F2D, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 1,

    -1, 0x16F41, 20,
    -6, 0, (((-23 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-11 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    4, 2,

    -1, 0x16F55, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    3, 3,

    -1, 0x16F69, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 4,

    -1, 0x16F75, 20,
    -6, 0, (((7 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 5,

    -1, 0x16F89, 24,
    -6, 0, (((9 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    4, 6,

    -1, 0x16FA1, 20,
    -6, 0, (((3 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    3, 7,

    -1, 0x16F21, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 0,

    -1, 0x16F2D, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 1,

    -1, 0x16F41, 20,
    -6, 0, (((-23 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-11 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    4, 2,

    -1, 0x16F55, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((-5 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    3, 3,

    -1, 0x16F69, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    2, 4,

    -4,
};

const s32 * const anim_0428[1] = {
    anim_0428__v0_l0,
};

const s32 anim_0429__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x16FB5, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x16FCD, 24,
    2, 1,

    -1, 0x16FE5, 30,
    2, 2,

    -1, 0x17003, 24,
    2, 3,

    -1, 0x1701B, 18,
    2, 4,

    -1, 0x1702D, 24,
    2, 5,

    -1, 0x17045, 24,
    2, 6,

    -1, 0x1705D, 24,
    2, 7,

    -3, 46,
};

const s32 anim_0429__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17075, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 8,

    -1, 0x17089, 20,
    3, 9,

    -1, 0x1709D, 20,
    3, 10,

    -1, 0x170B1, 20,
    3, 11,

    -1, 0x170C5, 25,
    3, 12,

    -4,
};

const s32 anim_0429__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x170DE, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 13,

    -1, 0x170F6, 24,
    3, 14,

    -1, 0x1710E, 24,
    3, 15,

    -3, 21,
};

const s32 * const anim_0429[3] = {
    anim_0429__v0_l0,
    anim_0429__v1_l0,
    anim_0429__v2_l0,
};

const s32 anim_0430__v0_l0[] = {
    -2, 34, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17126, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 0,

    -1, 0x1713A, 20,
    3, 1,

    -1, 0x1714E, 20,
    3, 2,

    -3, 21,
};

const s32 anim_0430__v1_l0[] = {
    -2, 34, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17162, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    3, 3,

    -1, 0x17176, 20,
    3, 4,

    -1, 0x1718A, 20,
    3, 5,

    -1, 0x1719E, 24,
    3, 6,

    -1, 0x171B6, 20,
    3, 7,

    -4,
};

const s32 anim_0430__v2_l0[] = {
    -2, 34, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x171CA, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 8,

    -1, 0x171E3, 30,
    3, 9,

    -1, 0x17201, 25,
    3, 10,

    -3, 21,
};

const s32 * const anim_0430[3] = {
    anim_0430__v0_l0,
    anim_0430__v1_l0,
    anim_0430__v2_l0,
};

const s32 anim_0431__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1721A, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    5, 0,

    -1, 0x17233, 20,
    5, 1,

    -1, 0x17247, 20,
    5, 2,

    -1, 0x1725B, 16,
    5, 3,

    -1, 0x1726B, 25,
    5, 4,

    -1, 0x17284, 20,
    5, 5,

    -1, 0x17298, 20,
    5, 6,

    -1, 0x172AC, 20,
    5, 7,

    -3, 46,
};

const s32 * const anim_0431[1] = {
    anim_0431__v0_l0,
};

const s32 anim_0432__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x172C0, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0432__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x172D4, 15,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0432__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x172E3, 12,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0432__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x172EF, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 anim_0432__v4_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x172FF, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0432__v5_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17313, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0432__v6_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17327, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0432__v7_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17337, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0432__v8_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17347, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 8,

    -4,
};

const s32 anim_0432__v9_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1735B, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 9,

    -4,
};

const s32 anim_0432__v10_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17374, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 * const anim_0432[11] = {
    anim_0432__v0_l0,
    anim_0432__v1_l0,
    anim_0432__v2_l0,
    anim_0432__v3_l0,
    anim_0432__v4_l0,
    anim_0432__v5_l0,
    anim_0432__v6_l0,
    anim_0432__v7_l0,
    anim_0432__v8_l0,
    anim_0432__v9_l0,
    anim_0432__v10_l0,
};

const s32 anim_0433__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17388, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 0,

    -1, 0x1739C, 20,
    2, 1,

    -1, 0x173B0, 20,
    2, 2,

    -1, 0x173C4, 20,
    2, 3,

    -1, 0x173D8, 20,
    2, 4,

    -1, 0x173EC, 20,
    2, 5,

    -1, 0x17400, 20,
    2, 6,

    -1, 0x17414, 20,
    2, 7,

    -3, 46,
};

const s32 anim_0433__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17428, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    2, 8,

    -1, 0x1743C, 20,
    2, 9,

    -1, 0x17450, 20,
    2, 10,

    -1, 0x17464, 20,
    2, 11,

    -1, 0x17478, 20,
    2, 12,

    -1, 0x1748C, 20,
    2, 13,

    -1, 0x174A0, 20,
    2, 14,

    -1, 0x174B4, 20,
    2, 15,

    -3, 46,
};

const s32 * const anim_0433[2] = {
    anim_0433__v0_l0,
    anim_0433__v1_l0,
};

const s32 anim_0434__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x174C8, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x174D8, 16,
    2, 1,

    -1, 0x174E8, 16,
    2, 2,

    -1, 0x174F8, 16,
    2, 3,

    -1, 0x17508, 16,
    2, 4,

    -1, 0x17518, 16,
    2, 5,

    -1, 0x17528, 16,
    2, 6,

    -1, 0x17538, 16,
    2, 7,

    -3, 49,
};

const s32 * const anim_0434[1] = {
    anim_0434__v0_l0,
};

const s32 anim_0435__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17548, 25,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    2, 0,

    -1, 0x17561, 25,
    2, 1,

    -1, 0x1757A, 25,
    2, 2,

    -1, 0x17593, 20,
    2, 3,

    -1, 0x175A7, 25,
    2, 4,

    -1, 0x175C0, 25,
    2, 5,

    -1, 0x175D9, 25,
    2, 6,

    -1, 0x175F2, 16,
    2, 7,

    -3, 46,
};

const s32 anim_0435__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17602, 24,
    -6, 0, (((-6 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    3, 8,

    -1, 0x1761A, 18,
    3, 9,

    -1, 0x1762C, 18,
    3, 10,

    -1, 0x1763E, 15,
    3, 11,

    -1, 0x1762C, 18,
    3, 10,

    -1, 0x1761A, 18,
    3, 9,

    -3, 36,
};

const s32 * const anim_0435[2] = {
    anim_0435__v0_l0,
    anim_0435__v1_l0,
};

const s32 anim_0436__v0_l0[] = {
    -2, 35, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1764D, 18,
    -6, 0, (((-2 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x1765F, 24,
    -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 1,

    -1, 0x17677, 30,
    -6, 0, (((-20 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((-6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 2,

    -1, 0x17695, 24,
    -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((-2 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 3,

    -1, 0x176AD, 18,
    -6, 0, (((-8 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 4,

    -1, 0x176BF, 24,
    -6, 0, (((4 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 5,

    -1, 0x176D7, 30,
    -6, 0, (((4 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 6,

    -1, 0x176F5, 24,
    -6, 0, (((2 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 7,

    -3, 67,
};

const s32 * const anim_0436[1] = {
    anim_0436__v0_l0,
};

const s32 anim_0437__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1770D, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    3, 0,

    -1, 0x1771D, 16,
    3, 1,

    -1, 0x1772D, 16,
    3, 2,

    -1, 0x1773D, 16,
    3, 3,

    -1, 0x1774D, 16,
    3, 4,

    -1, 0x1775D, 16,
    3, 5,

    -1, 0x1776D, 16,
    3, 6,

    -1, 0x1777D, 16,
    3, 7,

    -3, 46,
};

const s32 anim_0437__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1778D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 8,

    -1, 0x177A1, 20,
    3, 9,

    -1, 0x177B5, 20,
    3, 10,

    -1, 0x177C9, 20,
    3, 11,

    -1, 0x177DD, 20,
    3, 12,

    -1, 0x177F1, 20,
    3, 13,

    -1, 0x17805, 20,
    3, 14,

    -1, 0x17819, 20,
    3, 15,

    -3, 46,
};

const s32 anim_0437__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1782D, 20,
    -6, 0, (((-6 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 16,

    -1, 0x17841, 20,
    3, 17,

    -1, 0x17855, 20,
    3, 18,

    -1, 0x17869, 20,
    3, 19,

    -1, 0x1787D, 20,
    3, 20,

    -1, 0x17891, 20,
    3, 21,

    -1, 0x178A5, 20,
    3, 22,

    -1, 0x178B9, 20,
    3, 23,

    -3, 46,
};

const s32 * const anim_0437[3] = {
    anim_0437__v0_l0,
    anim_0437__v1_l0,
    anim_0437__v2_l0,
};

const s32 anim_0438__v0_l0[] = {
    -2, 36, (((u16)16 << 0) | ((u16)0x10 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0438[1] = {
    anim_0438__v0_l0,
};

const s32 anim_0439__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x178CD, 64,
    -6, 0, (((-6 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    2, 0,

    -1, 0x1790D, 64,
    2, 1,

    -1, 0x1794D, 64,
    2, 2,

    -3, 21,
};

const s32 * const anim_0439[1] = {
    anim_0439__v0_l0,
};

const s32 anim_0449__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1798D, 20,
    1, 0,

    -4,
};

const s32 anim_0449__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x179A1, 20,
    1, 1,

    -4,
};

const s32 * const anim_0449[2] = {
    anim_0449__v0_l0,
    anim_0449__v1_l0,
};

const s32 anim_0450__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x179B5, 20,
    3, 0,

    -1, 0x179C9, 20,
    3, 1,

    -1, 0x179DD, 16,
    3, 2,

    -1, 0x179ED, 20,
    3, 3,

    -1, 0x17A01, 25,
    3, 4,

    -1, 0x17A1A, 16,
    3, 5,

    -3, 33,
};

const s32 anim_0450__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17A2A, 15,
    3, 6,

    -1, 0x17A39, 20,
    3, 7,

    -1, 0x17A4D, 20,
    3, 8,

    -1, 0x17A61, 20,
    3, 9,

    -1, 0x17A75, 20,
    3, 10,

    -1, 0x17A89, 20,
    3, 11,

    -3, 33,
};

const s32 anim_0450__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17A9D, 16,
    3, 12,

    -1, 0x17AAD, 16,
    3, 13,

    -1, 0x17ABD, 16,
    3, 14,

    -1, 0x17ACD, 16,
    3, 15,

    -1, 0x17ADD, 16,
    3, 16,

    -1, 0x17AED, 16,
    3, 17,

    -3, 33,
};

const s32 anim_0450__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17AFD, 16,
    3, 18,

    -1, 0x17B0D, 20,
    3, 19,

    -1, 0x17B21, 16,
    3, 20,

    -1, 0x17B31, 16,
    3, 21,

    -1, 0x17B41, 20,
    3, 22,

    -1, 0x17B55, 16,
    3, 23,

    -3, 33,
};

const s32 * const anim_0450[4] = {
    anim_0450__v0_l0,
    anim_0450__v1_l0,
    anim_0450__v2_l0,
    anim_0450__v3_l0,
};

const s32 anim_0451__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17B65, 36,
    2, 0,

    -1, 0x17B89, 25,
    2, 1,

    -3, 13,
};

const s32 anim_0451__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17BA2, 16,
    3, 2,

    -4,
};

const s32 anim_0451__v2_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17BB2, 25,
    2, 3,

    -1, 0x17BCB, 25,
    2, 4,

    -3, 13,
};

const s32 anim_0451__v3_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17BE4, 20,
    3, 5,

    -4,
};

const s32 * const anim_0451[4] = {
    anim_0451__v0_l0,
    anim_0451__v1_l0,
    anim_0451__v2_l0,
    anim_0451__v3_l0,
};

const s32 anim_0452__v0_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17BF8, 16,
    6, 0,

    -1, 0x17C08, 24,
    6, 1,

    -1, 0x17C20, 20,
    6, 2,

    -4,
};

const s32 anim_0452__v1_l0[] = {
    -2, 27, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17C34, 16,
    6, 3,

    -1, 0x17C44, 20,
    6, 4,

    -1, 0x17C58, 25,
    6, 5,

    -4,
};

const s32 * const anim_0452[2] = {
    anim_0452__v0_l0,
    anim_0452__v1_l0,
};

const s32 anim_0453__v0_l0[] = {
    -2, 37, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17C71, 16,
    2, 0,

    -1, 0x17C81, 16,
    2, 1,

    -1, 0x17C91, 16,
    2, 2,

    -1, 0x17CA1, 16,
    2, 3,

    -1, 0x17CB1, 16,
    2, 4,

    -1, 0x17CC1, 16,
    2, 5,

    -3, 33,
};

const s32 * const anim_0453[1] = {
    anim_0453__v0_l0,
};

const s32 anim_0454__v0_l0[] = {
    -2, 38, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x17CD1, 20,
    2, 0,

    -1, 0x17CE5, 15,
    2, 1,

    -1, 0x17CF4, 15,
    2, 2,

    -1, 0x17D03, 15,
    2, 3,

    -1, 0x17D12, 15,
    3, 4,

    -1, 0x17D21, 20,
    3, 5,

    -1, 0x17D35, 15,
    3, 6,

    -1, 0x17D44, 15,
    3, 7,

    -1, 0x17D53, 15,
    3, 8,

    -1, 0x17D62, 15,
    3, 9,

    -1, 0x17D71, 20,
    3, 10,

    -4,
};

const s32 * const anim_0454[1] = {
    anim_0454__v0_l0,
};

const s32 anim_0455__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17D85, 9,
    9, 0,

    -1, 0x17D8E, 9,
    9, 1,

    -1, 0x17D97, 9,
    9, 2,

    -1, 0x17DA0, 9,
    9, 3,

    -1, 0x17DA9, 9,
    9, 4,

    -1, 0x17DB2, 9,
    9, 5,

    -1, 0x17D97, 9,
    9, 2,

    -1, 0x17DBB, 9,
    9, 6,

    -3, 43,
};

const s32 * const anim_0455[1] = {
    anim_0455__v0_l0,
};

const s32 anim_0456__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17DC4, 9,
    3, 0,

    -1, 0x17DCD, 9,
    3, 1,

    -3, 13,
};

const s32 * const anim_0456[1] = {
    anim_0456__v0_l0,
};

const s32 anim_0457__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17DD6, 9,
    3, 0,

    -1, 0x17DDF, 9,
    3, 1,

    -1, 0x17DE8, 6,
    3, 2,

    -1, 0x17DEE, 6,
    3, 3,

    -1, 0x17DF4, 6,
    3, 4,

    -1, 0x17DFA, 9,
    3, 5,

    -1, 0x17E03, 6,
    3, 6,

    -1, 0x17E09, 6,
    3, 7,

    -4,
};

const s32 anim_0457__v1_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17E0F, 9,
    -6, 1, (((-13 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    2, 8,

    -1, 0x17E18, 9,
    2, 9,

    -3, 16,
};

const s32 * const anim_0457[2] = {
    anim_0457__v0_l0,
    anim_0457__v1_l0,
};

const s32 anim_0458__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17E21, 9,
    5, 0,

    -1, 0x17E2A, 9,
    5, 1,

    -1, 0x17E33, 9,
    5, 2,

    -1, 0x17E3C, 9,
    5, 3,

    -1, 0x17E45, 9,
    5, 4,

    -1, 0x17E4E, 9,
    5, 5,

    -1, 0x17E57, 9,
    5, 6,

    -1, 0x17E60, 9,
    5, 7,

    -1, 0x17E69, 9,
    5, 8,

    -1, 0x17E72, 9,
    5, 9,

    -1, 0x17E7B, 9,
    5, 10,

    -1, 0x17E84, 9,
    5, 11,

    -1, 0x17E8D, 9,
    5, 12,

    -1, 0x17E96, 9,
    5, 13,

    -3, 73,
};

const s32 * const anim_0458[1] = {
    anim_0458__v0_l0,
};

const s32 anim_0459__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17E9F, 9,
    3, 0,

    -1, 0x17EA8, 9,
    3, 1,

    -1, 0x17EB1, 9,
    3, 2,

    -1, 0x17EBA, 9,
    3, 3,

    -1, 0x17EC3, 9,
    3, 4,

    -1, 0x17ECC, 9,
    3, 5,

    -1, 0x17ED5, 9,
    3, 6,

    -1, 0x17EDE, 9,
    3, 7,

    -3, 43,
};

const s32 * const anim_0459[1] = {
    anim_0459__v0_l0,
};

const s32 anim_0460__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17EE7, 9,
    6, 0,

    -1, 0x17EF0, 9,
    6, 1,

    -1, 0x17EF9, 9,
    6, 2,

    -1, 0x17F02, 9,
    6, 3,

    -1, 0x17F0B, 9,
    6, 4,

    -1, 0x17F14, 9,
    6, 5,

    -1, 0x17F1D, 9,
    6, 6,

    -1, 0x17F26, 9,
    6, 7,
    -1, 0x17F2F, 9,
    6, 8,

    -1, 0x17F38, 9,
    6, 9,

    -1, 0x17F41, 9,
    6, 10,

    -1, 0x17F38, 9,
    6, 9,

    -3, 20,
};

const s32 anim_0460__v1_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17F4A, 9,
    6, 11,

    -1, 0x17F53, 9,
    6, 12,

    -1, 0x17F5C, 9,
    6, 13,

    -1, 0x17F53, 9,
    6, 12,

    -3, 23,
};

const s32 * const anim_0460[2] = {
    anim_0460__v0_l0,
    anim_0460__v1_l0,
};

const s32 anim_0461__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17F65, 9,
    3, 0,

    -1, 0x17F6E, 9,
    3, 1,

    -1, 0x17F77, 9,
    3, 2,

    -1, 0x17F6E, 9,
    3, 1,

    -3, 23,
};

const s32 * const anim_0461[1] = {
    anim_0461__v0_l0,
};

const s32 anim_0462__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x17F80, 9,
    4, 0,

    -1, 0x17F89, 9,
    4, 1,

    -1, 0x17F92, 9,
    4, 2,

    -1, 0x17F9B, 9,
    4, 3,

    -1, 0x17FA4, 9,
    4, 4,

    -1, 0x17FAD, 9,
    4, 5,

    -1, 0x17FB6, 9,
    4, 6,

    -1, 0x17FBF, 9,
    4, 7,

    -1, 0x17FC8, 9,
    4, 8,

    -1, 0x17FD1, 9,
    4, 9,

    -1, 0x17FDA, 9,
    4, 10,

    -1, 0x17FE3, 9,
    4, 11,

    -1, 0x17FEC, 9,
    4, 12,

    -1, 0x17FF5, 9,
    4, 13,

    -1, 0x17FFE, 9,
    4, 14,

    -1, 0x18007, 9,
    4, 15,

    -1, 0x18010, 9,
    4, 16,

    -1, 0x18019, 9,
    4, 17,

    -3, 93,
};

const s32 * const anim_0462[1] = {
    anim_0462__v0_l0,
};

const s32 anim_0463__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x18022, 6,
    1, 0,

    -1, 0x18028, 6,
    1, 1,

    -1, 0x1802E, 6,
    1, 2,

    -1, 0x18034, 6,
    1, 3,

    -1, 0x1803A, 6,
    1, 4,

    -1, 0x18040, 6,
    1, 5,

    -1, 0x18046, 9,
    1, 6,

    -1, 0x1804F, 9,
    1, 7,

    -1, 0x18058, 9,
    1, 8,

    -1, 0x18061, 9,
    1, 9,

    -4,
};

const s32 anim_0463__v1_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x1806A, 9,
    4, 10,

    -1, 0x18073, 9,
    6, 11,

    -1, 0x1807C, 9,
    4, 12,

    -1, 0x18085, 6,
    4, 13,

    -1, 0x1808B, 6,
    4, 14,

    -1, 0x18091, 6,
    4, 15,

    -1, 0x18091, 6,
    4, 15,

    -1, 0x18091, 6,
    4, 15,

    -1, 0x18097, 6,
    4, 16,

    -1, 0x1809D, 6,
    4, 17,

    -1, 0x180A3, 6,
    4, 18,

    -1, 0x180A9, 6,
    8, 19,

    -1, 0x180AF, 9,
    4, 20,

    -1, 0x180B8, 9,
    4, 21,

    -1, 0x180C1, 9,
    4, 22,

    -1, 0x180CA, 9,
    6, 23,

    -1, 0x180D3, 9,
    4, 24,

    -1, 0x180DC, 9,
    4, 25,

    -1, 0x180E5, 9,
    4, 26,

    -1, 0x180EE, 9,
    4, 27,

    -1, 0x180F7, 9,
    4, 28,

    -1, 0x18100, 9,
    16, 29,

    -4,
};

const s32 * const anim_0463[2] = {
    anim_0463__v0_l0,
    anim_0463__v1_l0,
};

const s32 anim_0464__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x18109, 9,
    6, 0,

    -1, 0x18112, 9,
    6, 1,

    -1, 0x1811B, 9,
    6, 2,

    -1, 0x18124, 9,
    6, 3,

    -1, 0x1812D, 9,
    6, 4,

    -1, 0x18136, 9,
    6, 5,

    -1, 0x1813F, 9,
    26, 6,

    -1, 0x18148, 6,
    4, 7,

    -1, 0x1814E, 6,
    4, 8,

    -1, 0x18154, 9,
    4, 9,

    -1, 0x1815D, 9,
    4, 10,

    -1, 0x18166, 6,
    6, 11,

    -1, 0x1816C, 6,
    3, 12,

    -1, 0x18172, 6,
    3, 13,

    -1, 0x18178, 6,
    3, 14,

    -1, 0x1817E, 6,
    3, 15,

    -1, 0x1816C, 6,
    3, 12,

    -1, 0x18172, 6,
    3, 13,

    -1, 0x18184, 6,
    3, 16,

    -1, 0x1818A, 6,
    3, 17,

    -1, 0x18190, 6,
    3, 18,

    -1, 0x18196, 6,
    6, 19,

    -1, 0x1819C, 6,
    4, 20,

    -1, 0x181A2, 6,
    4, 21,

    -1, 0x181A8, 6,
    8, 22,

    -1, 0x181AE, 9,
    2, 23,

    -1, 0x181B7, 9,
    2, 24,

    -1, 0x181C0, 9,
    5, 25,

    -1, 0x181C9, 9,
    3, 26,

    -1, 0x181D2, 9,
    3, 27,

    -1, 0x181DB, 6,
    14, 28,

    -1, 0x181E1, 6,
    3, 29,

    -1, 0x181E7, 6,
    3, 30,

    -1, 0x181ED, 6,
    4, 31,

    -1, 0x181F3, 6,
    2, 32,

    -1, 0x181F9, 6,
    2, 33,

    -1, 0x181FF, 6,
    2, 34,

    -4,
};

const s32 * const anim_0464[1] = {
    anim_0464__v0_l0,
};

const s32 anim_0465__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x18205, 9,
    3, 0,

    -1, 0x1820E, 9,
    3, 1,

    -1, 0x18217, 9,
    3, 2,

    -1, 0x1820E, 9,
    3, 1,

    -3, 23,
};

const s32 * const anim_0465[1] = {
    anim_0465__v0_l0,
};

const s32 anim_0466__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x18220, 9,
    4, 0,

    -1, 0x18229, 9,
    4, 1,

    -1, 0x18232, 9,
    4, 2,

    -1, 0x1823B, 9,
    4, 3,

    -3, 23,
};

const s32 * const anim_0466[1] = {
    anim_0466__v0_l0,
};

const s32 anim_0467__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x18244, 6,
    3, 0,

    -1, 0x1824A, 6,
    3, 1,

    -1, 0x18250, 6,
    3, 2,

    -1, 0x18256, 6,
    3, 3,

    -1, 0x1825C, 6,
    3, 4,

    -1, 0x18262, 6,
    3, 5,

    -1, 0x18268, 6,
    3, 6,

    -1, 0x1826E, 6,
    3, 7,

    -3, 43,
};

const s32 * const anim_0467[1] = {
    anim_0467__v0_l0,
};

const s32 anim_0468__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x18274, 6,
    4, 0,

    -1, 0x1827A, 6,
    4, 1,

    -1, 0x18280, 6,
    4, 2,

    -1, 0x18286, 6,
    4, 3,

    -1, 0x18280, 6,
    4, 2,

    -1, 0x1827A, 6,
    4, 1,

    -3, 33,
};

const s32 * const anim_0468[1] = {
    anim_0468__v0_l0,
};

const s32 anim_0469__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x1828C, 4,
    4, 0,

    -1, 0x18290, 4,
    5, 1,

    -1, 0x18294, 4,
    5, 2,
    -1, 0x18298, 4,
    8, 3,

    -1, 0x1829C, 4,
    8, 4,

    -1, 0x182A0, 4,
    8, 5,

    -1, 0x182A4, 4,
    8, 6,

    -1, 0x182A8, 4,
    8, 7,

    -1, 0x182AC, 4,
    8, 8,

    -3, 30,
};

const s32 * const anim_0469[1] = {
    anim_0469__v0_l0,
};

const s32 anim_0470__v0_l0[] = {
    -2, 39, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x182B0, 9,
    5, 0,

    -1, 0x182B9, 9,
    5, 1,
    -1, 0x182C2, 9,
    5, 2,

    -1, 0x182CB, 9,
    5, 3,

    -1, 0x182D4, 9,
    5, 4,

    -1, 0x182DD, 9,
    5, 5,

    -1, 0x182E6, 9,
    5, 6,

    -1, 0x182CB, 9,
    5, 3,

    -1, 0x182EF, 9,
    5, 7,

    -1, 0x182F8, 9,
    5, 8,

    -3, 40,
};

const s32 * const anim_0470[1] = {
    anim_0470__v0_l0,
};

const s32 anim_0471__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18301, 20,
    4, 0,

    -1, 0x18315, 20,
    4, 1,

    -1, 0x18329, 20,
    4, 2,

    -4,
};

const s32 * const anim_0471[1] = {
    anim_0471__v0_l0,
};

const s32 anim_0472__v0_l0[] = {
    -2, 1, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1833D, 16,
    4, 0,

    -1, 0x1834D, 16,
    10, 1,

    -1, 0x1835D, 16,
    2, 2,

    -1, 0x1833D, 16,
    4, 0,

    -1, 0x1836D, 20,
    3, 3,

    -1, 0x18381, 20,
    3, 4,

    -1, 0x18395, 24,
    3, 5,

    -1, 0x183AD, 24,
    3, 6,

    -2, 40, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x183C5, 24,
    3, 7,

    -2, 41, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x183DD, 24,
    3, 8,
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x183F5, 24,
    1, 9,

    -2, 43, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x1840D, 24,
    1, 10,

    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18425, 24,
    1, 11,

    -2, 43, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x1843D, 24,
    1, 12,

    -3, 32,
};

const s32 anim_0472__v1_l0[] = {
    -2, 44, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x18455, 36,
    3, 13,

    -1, 0x18479, 56,
    3, 14,

    -3, 13,
};

const s32 * const anim_0472[2] = {
    anim_0472__v0_l0,
    anim_0472__v1_l0,
};

const s32 anim_0473__v0_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x184B1, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 0,

    -2, 43, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x184C9, 24,
    2, 1,

    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x184E1, 24,
    2, 2,

    -2, 43, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x184F9, 24,
    2, 3,

    -3, 38,
};

const s32 anim_0473__v1_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18511, 24,
    -6, 0, (((-14 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    2, 4,

    -2, 43, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x18529, 24,
    2, 5,

    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18541, 24,
    2, 6,

    -2, 43, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x18559, 24,
    2, 7,

    -3, 38,
};

const s32 anim_0473__v2_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18571, 64,
    1, 8,

    -4,
};

const s32 * const anim_0473[3] = {
    anim_0473__v0_l0,
    anim_0473__v1_l0,
    anim_0473__v2_l0,
};

const s32 anim_0474__v0_l0[] = {
    -2, 45, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x185B1, 40,
    2, 0,

    -1, 0x185D9, 40,
    2, 1,

    -1, 0x18601, 40,
    2, 2,

    -1, 0x18629, 40,
    2, 3,

    -3, 23,
};

const s32 anim_0474__v1_l0[] = {
    -2, 45, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18651, 40,
    3, 4,

    -1, 0x18679, 40,
    3, 5,

    -1, 0x186A1, 40,
    3, 6,

    -4,
};

const s32 * const anim_0474[2] = {
    anim_0474__v0_l0,
    anim_0474__v1_l0,
};

const s32 anim_0475__v0_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x186C9, 64,
    1, 0,

    -4,
};

const s32 anim_0475__v1_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18709, 24,
    -6, 0, (((-17 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 1,

    -2, 43, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18721, 24,
    2, 2,

    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18739, 24,
    2, 3,

    -2, 43, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18751, 24,
    2, 4,

    -3, 35,
};

const s32 anim_0475__v2_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18769, 24,
    -6, 0, (((-17 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 5,

    -2, 43, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18781, 24,
    2, 6,

    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18799, 24,
    2, 7,

    -2, 43, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x187B1, 24,
    2, 8,

    -3, 35,
};

const s32 anim_0475__v3_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x187C9, 24,
    -6, 0, (((-17 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 9,

    -2, 43, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x187E1, 24,
    2, 10,

    -2, 42, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x187F9, 24,
    2, 11,

    -2, 43, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x18811, 24,
    2, 12,

    -3, 35,
};

const s32 anim_0475__v4_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18829, 48,
    -6, 0, (((-17 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-25 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    2, 13,

    -1, 0x18859, 48,
    2, 14,

    -1, 0x18889, 48,
    2, 15,

    -1, 0x188B9, 48,
    2, 16,

    -3, 29,
};

const s32 anim_0475__v5_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x188E9, 48,
    -6, 0, (((-17 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-25 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    2, 17,

    -1, 0x18919, 48,
    2, 18,

    -1, 0x18949, 48,
    2, 19,

    -1, 0x18979, 24,
    2, 20,

    -4,
};

const s32 anim_0475__v6_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18991, 49,
    -6, 0, (((-17 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 21,

    -1, 0x189C2, 49,
    2, 22,

    -1, 0x189F3, 49,
    2, 23,

    -1, 0x18A24, 49,
    2, 24,

    -3, 29,
};

const s32 anim_0475__v7_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18A55, 49,
    -6, 0, (((-17 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 25,

    -1, 0x18A86, 56,
    2, 26,

    -1, 0x18ABE, 49,
    2, 27,

    -1, 0x18AEF, 30,
    2, 28,

    -4,
};

const s32 anim_0475__v8_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18B0D, 48,
    -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((25 & 0xFF) << 24)),
    2, 29,

    -1, 0x18B3D, 48,
    2, 30,

    -1, 0x18B6D, 48,
    2, 31,

    -1, 0x18B9D, 48,
    2, 32,

    -3, 29,
};

const s32 anim_0475__v9_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18BCD, 48,
    -6, 0, (((-12 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((25 & 0xFF) << 24)),
    2, 33,

    -1, 0x18BFD, 48,
    2, 34,

    -1, 0x18C2D, 48,
    2, 35,

    -1, 0x18C5D, 24,
    2, 36,

    -4,
};

const s32 anim_0475__v10_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18C75, 49,
    -6, 0, (((-11 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 37,

    -1, 0x18CA6, 49,
    2, 38,

    -1, 0x18CD7, 49,
    2, 39,

    -1, 0x18D08, 49,
    2, 40,

    -3, 29,
};

const s32 anim_0475__v11_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18D39, 49,
    -6, 0, (((-11 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((20 & 0xFF) << 24)),
    2, 41,

    -1, 0x18D6A, 56,
    2, 42,

    -1, 0x18DA2, 49,
    2, 43,

    -1, 0x18DD3, 30,
    2, 44,

    -4,
};

const s32 anim_0475__v12_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18DF1, 48,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    2, 45,

    -1, 0x18E21, 48,
    2, 46,

    -1, 0x18E51, 48,
    2, 47,

    -1, 0x18E81, 48,
    2, 48,

    -3, 29,
};

const s32 anim_0475__v13_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18EB1, 48,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    -6, 1, (((0 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    2, 49,

    -1, 0x18EE1, 48,
    2, 50,

    -1, 0x18F11, 48,
    2, 51,

    -1, 0x18F41, 24,
    2, 52,

    -4,
};

const s32 anim_0475__v14_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x18F59, 64,
    -6, 0, (((-13 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 53,

    -1, 0x18F99, 64,
    2, 54,

    -1, 0x18FD9, 64,
    2, 55,

    -1, 0x19019, 64,
    2, 56,

    -3, 29,
};

const s32 anim_0475__v15_l0[] = {
    -2, 47, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x19059, 64,
    -6, 0, (((-11 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-6 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 57,

    -1, 0x19099, 64,
    2, 58,

    -1, 0x190D9, 64,
    2, 59,

    -1, 0x19119, 64,
    2, 60,

    -4,
};

const s32 anim_0475__v16_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x19159, 64,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 61,

    -1, 0x19199, 64,
    2, 62,

    -1, 0x191D9, 64,
    2, 63,

    -1, 0x19219, 64,
    2, 64,

    -3, 29,
};

const s32 anim_0475__v17_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x19259, 64,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 65,

    -1, 0x19299, 64,
    2, 66,

    -1, 0x192D9, 64,
    2, 67,

    -1, 0x19319, 64,
    2, 68,

    -4,
};

const s32 anim_0475__v18_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x19359, 64,
    -6, 0, (((-17 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 69,

    -1, 0x19399, 64,
    2, 70,

    -1, 0x193D9, 64,
    2, 71,

    -1, 0x19419, 64,
    2, 72,

    -3, 29,
};

const s32 anim_0475__v19_l0[] = {
    -2, 46, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x19459, 64,
    -6, 0, (((-17 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    -6, 1, (((-20 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 73,

    -1, 0x19499, 64,
    2, 74,

    -1, 0x194D9, 64,
    2, 75,

    -1, 0x19519, 64,
    2, 76,

    -4,
};

const s32 * const anim_0475[20] = {
    anim_0475__v0_l0,
    anim_0475__v1_l0,
    anim_0475__v2_l0,
    anim_0475__v3_l0,
    anim_0475__v4_l0,
    anim_0475__v5_l0,
    anim_0475__v6_l0,
    anim_0475__v7_l0,
    anim_0475__v8_l0,
    anim_0475__v9_l0,
    anim_0475__v10_l0,
    anim_0475__v11_l0,
    anim_0475__v12_l0,
    anim_0475__v13_l0,
    anim_0475__v14_l0,
    anim_0475__v15_l0,
    anim_0475__v16_l0,
    anim_0475__v17_l0,
    anim_0475__v18_l0,
    anim_0475__v19_l0,
};

const s32 anim_0476__v0_l0[] = {
    -2, 48, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x19559, 30,
    -6, 0, (((-13 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    5, 0,

    -1, 0x19577, 30,
    5, 1,

    -1, 0x19595, 30,
    5, 2,

    -1, 0x195B3, 30,
    5, 3,

    -1, 0x195D1, 36,
    5, 4,

    -1, 0x195F5, 36,
    5, 5,

    -3, 36,
};

const s32 anim_0476__v1_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x19619, 16,
    1, 6,

    -4,
};

const s32 anim_0476__v2_l0[] = {
    -2, 49, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x19629, 4,
    1, 7,

    -4,
};

const s32 * const anim_0476[3] = {
    anim_0476__v0_l0,
    anim_0476__v1_l0,
    anim_0476__v2_l0,
};

const s32 anim_0477__v0_l0[] = {
    -1, 0x1962D, 64,
    -2, 50, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    6, 0,

    -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    6, 1,

    -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    6, 2,

    -6, 0, (((-15 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    6, 3,

    -4,
};

const s32 * const anim_0477[1] = {
    anim_0477__v0_l0,
};

const s32 anim_0478__v0_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1966D, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    7, 0,

    -1, 0x19681, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    7, 1,

    -3, 19,
};

const s32 anim_0478__v1_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19695, 15,
    -6, 0, (((-5 & 0xFF) << 0) | ((-36 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    8, 2,

    -1, 0x196A4, 16,
    -6, 0, (((-9 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((-17 & 0xFF) << 24)),
    8, 3,

    -1, 0x196B4, 20,
    -6, 0, (((-9 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    8, 4,

    -1, 0x196C8, 25,
    -6, 0, (((-7 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    8, 5,

    -4,
};

const s32 anim_0478__v2_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x196E1, 20,
    -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    8, 6,

    -4,
};

const s32 anim_0478__v3_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x196F5, 20,
    -6, 0, (((-12 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 7,

    -4,
};

const s32 * const anim_0478[4] = {
    anim_0478__v0_l0,
    anim_0478__v1_l0,
    anim_0478__v2_l0,
    anim_0478__v3_l0,
};

const s32 anim_0479__v0_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19709, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    5, 0,

    -1, 0x1971D, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    5, 1,

    -1, 0x19731, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    5, 2,

    -3, 27,
};

const s32 anim_0479__v1_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19745, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 3,

    -1, 0x19759, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    8, 4,

    -1, 0x1976D, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    5, 5,

    -1, 0x19781, 20,
    -6, 0, (((-1 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 6,

    -4,
};

const s32 * const anim_0479[2] = {
    anim_0479__v0_l0,
    anim_0479__v1_l0,
};

const s32 anim_0480__v0_l0[] = {
    -2, 51, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19795, 4,
    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0480[1] = {
    anim_0480__v0_l0,
};

const s32 anim_0481__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x19799, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    4, 0,

    -1, 0x197A9, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    4, 1,

    -1, 0x197B9, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    4, 2,

    -1, 0x197C9, 12,
    4, 3,

    -4,
};

const s32 * const anim_0481[1] = {
    anim_0481__v0_l0,
};

const s32 anim_0482__v0_l0[] = {
    -2, 53, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x197D5, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    2, 0,

    -1, 0x197E5, 16,
    -6, 0, (((-10 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    2, 1,

    -3, 19,
};

const s32 anim_0482__v1_l0[] = {
    -2, 53, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x197F5, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 2,

    -1, 0x19809, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    2, 3,

    -3, 19,
};

const s32 anim_0482__v2_l0[] = {
    -2, 53, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1981D, 16,
    -6, 0, (((-6 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    5, 4,

    -4,
};

const s32 * const anim_0482[3] = {
    anim_0482__v0_l0,
    anim_0482__v1_l0,
    anim_0482__v2_l0,
};

const s32 anim_0483__v0_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1982D, 9,
    -6, 0, (((-4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    -6, 1, (((-22 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0483__v1_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19836, 9,
    -6, 0, (((-4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    -6, 1, (((-22 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 1,

    -1, 0x1983F, 9,
    -6, 0, (((-4 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    -6, 1, (((-22 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 * const anim_0483[2] = {
    anim_0483__v0_l0,
    anim_0483__v1_l0,
};

const s32 anim_0484__v0_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19848, 6,
    4, 0,

    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1984E, 6,
    4, 1,

    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19854, 6,
    4, 2,

    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1985A, 6,
    4, 3,

    -3, 32,
};

const s32 * const anim_0484[1] = {
    anim_0484__v0_l0,
};

const s32 anim_0485__v0_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19860, 8,
    -6, 0, (((-11 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    12, 0,

    -1, 0x19868, 8,
    12, 1,

    -1, 0x19870, 6,
    12, 2,

    -1, 0x19876, 8,
    12, 3,

    -3, 26,
};

const s32 * const anim_0485[1] = {
    anim_0485__v0_l0,
};

const s32 anim_0486__v0_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1987E, 1,
    1, 0,

    -4,
};

const s32 * const anim_0486[1] = {
    anim_0486__v0_l0,
};

const s32 anim_0487__v0_l0[] = {
    -2, 54, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1987F, 4,
    -6, 0, (((-4 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    4, 0,

    -1, 0x19883, 4,
    4, 1,

    -1, 0x19887, 4,
    4, 2,

    -1, 0x1988B, 4,
    4, 3,

    -3, 26,
};

const s32 * const anim_0487[1] = {
    anim_0487__v0_l0,
};

const s32 anim_0488__v0_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1988F, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0488__v1_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1989F, 16,
    -6, 0, (((-7 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0488[2] = {
    anim_0488__v0_l0,
    anim_0488__v1_l0,
};

const s32 anim_0489__v0_l0[] = {
    -2, 56, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198AF, 4,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0489[1] = {
    anim_0489__v0_l0,
};

const s32 anim_0490__v0_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198B3, 6,
    -6, 0, (((-12 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0490__v1_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198B9, 6,
    -6, 0, (((-18 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0490[2] = {
    anim_0490__v0_l0,
    anim_0490__v1_l0,
};

const s32 anim_0491__v0_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198BF, 1,
    -6, 0, (((-3 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
    3, 0,

    -1, 0x198C0, 1,
    3, 1,

    -3, 16,
};

const s32 * const anim_0491[1] = {
    anim_0491__v0_l0,
};

const s32 anim_0492__v0_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198C1, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0492__v1_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198C1, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    6, 0,

    -1, 0x198D5, 15,
    6, 1,

    -3, 16,
};

const s32 anim_0492__v2_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x198E4, 15,
    -6, 0, (((-17 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 2,

    -1, 0x198F3, 20,
    2, 3,

    -1, 0x19907, 25,
    2, 4,

    -1, 0x19920, 25,
    2, 5,

    -1, 0x19939, 25,
    2, 6,

    -1, 0x19952, 25,
    2, 7,

    -1, 0x19939, 25,
    2, 6,

    -1, 0x198F3, 20,
    2, 3,

    -1, 0x198E4, 15,
    2, 2,

    -1, 0x198C1, 20,
    2, 0,

    -1, 0x198C1, 20,
    2, 0,

    -4,
};

const s32 anim_0492__v3_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1996B, 25,
    -6, 0, (((-17 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 8,

    -1, 0x19984, 25,
    2, 9,

    -3, 16,
};

const s32 anim_0492__v4_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1999D, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 10,

    -1, 0x199B1, 25,
    2, 11,

    -1, 0x199CA, 30,
    2, 12,

    -1, 0x199E8, 30,
    2, 13,

    -1, 0x19A06, 30,
    2, 14,

    -1, 0x19A24, 30,
    2, 15,

    -1, 0x19A06, 30,
    2, 14,

    -1, 0x199B1, 25,
    2, 11,

    -1, 0x1999D, 20,
    2, 10,

    -1, 0x19984, 25,
    2, 9,

    -4,
};

const s32 anim_0492__v5_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19A42, 20,
    -6, 0, (((-13 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 16,

    -1, 0x19A56, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 17,

    -4,
};

const s32 anim_0492__v6_l0[] = {
    -2, 55, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19A6A, 25,
    -6, 0, (((-13 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 18,

    -1, 0x19A83, 25,
    -6, 0, (((-14 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 19,

    -4,
};

const s32 * const anim_0492[7] = {
    anim_0492__v0_l0,
    anim_0492__v1_l0,
    anim_0492__v2_l0,
    anim_0492__v3_l0,
    anim_0492__v4_l0,
    anim_0492__v5_l0,
    anim_0492__v6_l0,
};

const s32 anim_0493__v0_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19A9C, 20,
    -6, 0, (((-9 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    5, 0,

    -4,
};

const s32 anim_0493__v1_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19AB0, 20,
    -6, 0, (((-9 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    5, 1,
    -1, 0x19AC4, 15,
    5, 2,

    -1, 0x19AD3, 20,
    5, 3,

    -1, 0x19AE7, 20,
    5, 4,

    -1, 0x19AFB, 15,
    5, 5,

    -1, 0x19B0A, 20,
    5, 6,

    -1, 0x19B1E, 20,
    5, 7,

    -1, 0x19B32, 20,
    5, 8,

    -1, 0x19B46, 20,
    5, 9,

    -1, 0x19B5A, 20,
    5, 10,

    -1, 0x19B6E, 20,
    5, 11,

    -1, 0x19B82, 20,
    5, 12,

    -1, 0x19B96, 20,
    5, 13,

    -3, 60,
};

const s32 * const anim_0493[2] = {
    anim_0493__v0_l0,
    anim_0493__v1_l0,
};

const s32 anim_0494__v0_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19BAA, 30,
    -6, 0, (((-8 & 0xFF) << 0) | ((-41 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-1 & 0xFF) << 0) | ((-41 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-30 & 0xFF) << 24)),
    6, 0,

    -1, 0x19BC8, 30,
    -6, 0, (((-10 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-22 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((-10 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    6, 1,

    -1, 0x19BE6, 24,
    -6, 0, (((-9 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-26 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((-15 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    6, 2,

    -1, 0x19BFE, 30,
    -6, 0, (((-11 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-22 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((-10 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    6, 3,

    -1, 0x19C1C, 30,
    -6, 0, (((-9 & 0xFF) << 0) | ((-41 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-11 & 0xFF) << 0) | ((-41 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-30 & 0xFF) << 24)),
    6, 4,

    -1, 0x19C3A, 30,
    -6, 0, (((-7 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((10 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    6, 5,

    -1, 0x19C58, 24,
    -6, 0, (((-9 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((15 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    6, 6,

    -1, 0x19C70, 30,
    -6, 0, (((-7 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((10 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((22 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    6, 7,

    -3, 91,
};

const s32 * const anim_0494[1] = {
    anim_0494__v0_l0,
};

const s32 anim_0495__v0_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19C8E, 16,
    -6, 0, (((-7 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0495__v1_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19C8E, 16,
    -6, 0, (((-7 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 0,

    -1, 0x19C9E, 12,
    6, 1,

    -4,
};

const s32 anim_0495__v2_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19CAA, 18,
    -6, 0, (((-7 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0495__v3_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19CBC, 20,
    -6, 0, (((-7 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -4,
};

const s32 * const anim_0495[4] = {
    anim_0495__v0_l0,
    anim_0495__v1_l0,
    anim_0495__v2_l0,
    anim_0495__v3_l0,
};

const s32 anim_0496__v0_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19CD0, 16,
    -6, 0, (((-7 & 0xFF) << 0) | ((-42 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-25 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0496__v1_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19CD0, 16,
    -6, 0, (((-7 & 0xFF) << 0) | ((-42 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-25 & 0xFF) << 24)),
    3, 0,

    -1, 0x19CE0, 16,
    3, 1,

    -1, 0x19CF0, 16,
    3, 2,

    -1, 0x19D00, 16,
    3, 3,

    -3, 26,
};

const s32 anim_0496__v2_l0[] = {
    -2, 58, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19D10, 16,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    5, 4,

    -1, 0x19D20, 16,
    5, 5,

    -1, 0x19D30, 16,
    5, 6,

    -1, 0x19D40, 16,
    5, 7,

    -3, 26,
};

const s32 * const anim_0496[3] = {
    anim_0496__v0_l0,
    anim_0496__v1_l0,
    anim_0496__v2_l0,
};

const s32 anim_0497__v0_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19D50, 12,
    -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    30, 0,

    -1, 0x19D5C, 12,
    5, 1,

    -3, 16,
};

const s32 anim_0497__v1_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19D68, 12,
    -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 2,

    -1, 0x19D74, 12,
    3, 3,

    -1, 0x19D80, 12,
    6, 4,

    -4,
};

const s32 anim_0497__v2_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19D74, 12,
    -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 1, (((-15 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -1, 0x19D68, 12,
    3, 2,

    -4,
};

const s32 anim_0497__v3_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19D8C, 12,
    -6, 0, (((-10 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 5,

    -1, 0x19D98, 12,
    4, 6,

    -4,
};

const s32 * const anim_0497[4] = {
    anim_0497__v0_l0,
    anim_0497__v1_l0,
    anim_0497__v2_l0,
    anim_0497__v3_l0,
};

const s32 anim_0498__v0_l0[] = {
    -2, 57, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19DA4, 4,
    -6, 0, (((-3 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    3, 0,

    -1, 0x19DA8, 4,
    3, 1,

    -3, 16,
};

const s32 * const anim_0498[1] = {
    anim_0498__v0_l0,
};

const s32 anim_0499__v0_l0[] = {
    -2, 59, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19DAC, 36,
    -6, 0, (((-20 & 0xFF) << 0) | ((-43 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((-32 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    4, 0,

    -1, 0x19DD0, 36,
    4, 1,

    -1, 0x19DAC, 36,
    4, 0,

    -1, 0x19DF4, 36,
    4, 2,

    -3, 29,
};

const s32 * const anim_0499[1] = {
    anim_0499__v0_l0,
};

const s32 anim_0500__v0_l0[] = {
    -2, 59, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19E18, 10,
    -6, 0, (((-12 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0500__v1_l0[] = {
    -2, 59, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19E22, 12,
    -6, 0, (((-14 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 1,

    -1, 0x19E2E, 12,
    3, 2,

    -1, 0x19E3A, 12,
    3, 3,

    -3, 21,
};

const s32 anim_0500__v2_l0[] = {
    -2, 59, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19E46, 8,
    -6, 0, (((-11 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    10, 4,

    -1, 0x19E4E, 8,
    10, 5,

    -1, 0x19E56, 8,
    10, 6,

    -1, 0x19E5E, 8,
    -6, 0, (((-11 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    10, 7,

    -4,
};

const s32 * const anim_0500[3] = {
    anim_0500__v0_l0,
    anim_0500__v1_l0,
    anim_0500__v2_l0,
};

const s32 anim_0501__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19E66, 10,
    -6, 0, (((-9 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    10, 0,

    -1, 0x19E70, 10,
    10, 1,

    -1, 0x19E7A, 10,
    10, 2,

    -1, 0x19E70, 10,
    10, 1,

    -3, 26,
};

const s32 anim_0501__v1_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19E84, 10,
    -6, 0, (((-9 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    10, 3,

    -1, 0x19E8E, 10,
    10, 4,

    -1, 0x19E98, 10,
    10, 5,

    -1, 0x19EA2, 10,
    15, 6,

    -1, 0x19EAC, 10,
    5, 7,

    -1, 0x19EB6, 10,
    10, 8,

    -4,
};

const s32 * const anim_0501[2] = {
    anim_0501__v0_l0,
    anim_0501__v1_l0,
};

const s32 anim_0502__v0_l0[] = {
    -2, 60, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19EC0, 2,
    -6, 0, (((-2 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
    3, 0,

    -1, 0x19EC2, 3,
    3, 1,

    -3, 16,
};

const s32 * const anim_0502[1] = {
    anim_0502__v0_l0,
};

const s32 anim_0503__v0_l0[] = {
    -2, 61, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19EC5, 12,
    -6, 0, (((-15 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    8, 0,

    -1, 0x19ED1, 15,
    8, 1,

    -1, 0x19EE0, 15,
    8, 2,

    -1, 0x19ED1, 15,
    8, 1,

    -3, 26,
};

const s32 anim_0503__v1_l0[] = {
    -2, 61, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19EC5, 12,
    -6, 0, (((-11 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    5, 0,

    -1, 0x19EEF, 12,
    5, 3,

    -1, 0x19EFB, 16,
    5, 4,
    -1, 0x19F0B, 16,
    -6, 0, (((-11 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((-2 & 0xFF) << 24)),
    2, 5,

    -1, 0x19F1B, 16,
    2, 6,

    -1, 0x19F2B, 16,
    2, 7,

    -3, 18,
};

const s32 anim_0503__v2_l0[] = {
    -2, 61, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19F3B, 16,
    -6, 0, (((-12 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    5, 8,

    -1, 0x19EFB, 16,
    5, 4,

    -1, 0x19EEF, 12,
    5, 3,

    -1, 0x19EC5, 12,
    5, 0,

    -4,
};

const s32 * const anim_0503[3] = {
    anim_0503__v0_l0,
    anim_0503__v1_l0,
    anim_0503__v2_l0,
};

const s32 anim_0504__v0_l0[] = {
    -2, 61, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x19F4B, 12,
    -6, 0, (((-9 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 0,

    -1, 0x19F57, 12,
    1, 1,

    -1, 0x19F63, 12,
    1, 2,

    -3, 21,
};

const s32 * const anim_0504[1] = {
    anim_0504__v0_l0,
};

const s32 anim_0505__v0_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19F6F, 24,
    -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x19F87, 24,
    3, 1,

    -3, 16,
};

const s32 anim_0505__v1_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19F9F, 16,
    -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    4, 2,

    -1, 0x19FAF, 16,
    4, 3,

    -4,
};

const s32 anim_0505__v2_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x19FBF, 24,
    -6, 0, (((-12 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    5, 4,

    -1, 0x19FD7, 20,
    5, 5,

    -1, 0x19FEB, 20,
    5, 6,

    -1, 0x19FFF, 16,
    5, 7,

    -1, 0x1A00F, 16,
    2, 8,

    -1, 0x1A01F, 16,
    2, 9,

    -1, 0x1A02F, 16,
    2, 10,

    -1, 0x1A00F, 16,
    2, 8,

    -1, 0x1A01F, 16,
    2, 9,

    -1, 0x1A02F, 16,
    2, 10,

    -1, 0x1A03F, 16,
    2, 11,

    -1, 0x1A01F, 16,
    2, 9,

    -1, 0x19FFF, 16,
    5, 7,

    -1, 0x19FEB, 20,
    5, 6,

    -1, 0x19FD7, 20,
    5, 5,

    -1, 0x19FBF, 24,
    5, 4,

    -4,
};

const s32 * const anim_0505[3] = {
    anim_0505__v0_l0,
    anim_0505__v1_l0,
    anim_0505__v2_l0,
};

const s32 anim_0506__v0_l0[] = {
    -2, 62, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A04F, 4,
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    2, 0,

    -1, 0x1A053, 4,
    2, 1,

    -1, 0x1A057, 4,
    2, 2,

    -3, 21,
};

const s32 * const anim_0506[1] = {
    anim_0506__v0_l0,
};

const s32 anim_0507__v0_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A05B, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 0,

    -1, 0x1A06F, 20,
    5, 1,

    -1, 0x1A083, 20,
    5, 2,

    -1, 0x1A097, 20,
    5, 3,

    -4,
};

const s32 anim_0507__v1_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A0AB, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    3, 4,

    -1, 0x1A0BF, 20,
    3, 5,

    -3, 16,
};

const s32 anim_0507__v2_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A0D3, 20,
    -6, 0, (((-10 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 6,

    -1, 0x1A0E7, 20,
    5, 7,

    -1, 0x1A0FB, 16,
    5, 8,

    -4,
};

const s32 * const anim_0507[3] = {
    anim_0507__v0_l0,
    anim_0507__v1_l0,
    anim_0507__v2_l0,
};

const s32 anim_0508__v0_l0[] = {
    -2, 63, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A10B, 8,
    -6, 0, (((-8 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    4, 0,

    -1, 0x1A113, 8,
    4, 1,

    -1, 0x1A11B, 8,
    4, 2,

    -1, 0x1A123, 8,
    4, 3,

    -3, 26,
};

const s32 * const anim_0508[1] = {
    anim_0508__v0_l0,
};

const s32 anim_0509__v0_l0[] = {
    -2, 64, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A12B, 24,
    -6, 0, (((-17 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    3, 0,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A15B, 20,
    3, 2,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A16F, 24,
    3, 3,

    -1, 0x1A187, 24,
    3, 4,

    -1, 0x1A19F, 20,
    3, 5,

    -1, 0x1A1B3, 24,
    3, 6,

    -1, 0x1A12B, 24,
    3, 0,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A15B, 20,
    3, 2,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A12B, 24,
    3, 0,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A15B, 20,
    3, 2,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A12B, 24,
    3, 0,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A15B, 20,
    3, 2,

    -1, 0x1A143, 24,
    3, 1,

    -1, 0x1A16F, 24,
    3, 3,

    -1, 0x1A187, 24,
    3, 4,

    -1, 0x1A19F, 20,
    3, 5,

    -1, 0x1A1B3, 24,
    3, 6,

    -1, 0x1A16F, 24,
    3, 3,

    -1, 0x1A187, 24,
    3, 4,

    -1, 0x1A19F, 20,
    3, 5,

    -1, 0x1A1B3, 24,
    3, 6,

    -3, 146,
};

const s32 * const anim_0509[1] = {
    anim_0509__v0_l0,
};

const s32 anim_0510__v0_l0[] = {
    -2, 64, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A1CB, 3,
    -6, 0, (((-2 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 0,

    -1, 0x1A1CE, 3,
    2, 1,

    -1, 0x1A1D1, 3,
    2, 2,

    -3, 21,
};

const s32 anim_0510__v1_l0[] = {
    -2, 64, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1A1D4, 3,
    -6, 0, (((-2 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    2, 3,

    -1, 0x1A1D7, 3,
    2, 4,

    -1, 0x1A1DA, 3,
    2, 5,

    -1, 0x1A1DD, 3,
    2, 6,

    -1, 0x1A1D1, 3,
    2, 2,

    -1, 0x1A1E0, 3,
    2, 7,

    -3, 36,
};

const s32 * const anim_0510[2] = {
    anim_0510__v0_l0,
    anim_0510__v1_l0,
};

const s32 anim_0511__v0_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A1E3, 25,
    -6, 0, (((-11 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0511__v1_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A1FC, 25,
    -6, 0, (((-11 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    5, 1,

    -1, 0x1A215, 25,
    5, 2,

    -1, 0x1A22E, 25,
    5, 3,

    -1, 0x1A247, 25,
    5, 4,

    -4,
};

const s32 anim_0511__v2_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A247, 25,
    -6, 0, (((-11 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    2, 4,

    -1, 0x1A260, 25,
    2, 5,

    -1, 0x1A279, 25,
    2, 6,

    -1, 0x1A292, 25,
    2, 7,

    -3, 26,
};

const s32 anim_0511__v3_l0[] = {
    -2, 65, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A247, 25,
    -6, 0, (((-11 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    5, 4,

    -1, 0x1A22E, 25,
    5, 3,

    -1, 0x1A215, 25,
    5, 2,

    -1, 0x1A1FC, 25,
    5, 1,

    -4,
};

const s32 * const anim_0511[4] = {
    anim_0511__v0_l0,
    anim_0511__v1_l0,
    anim_0511__v2_l0,
    anim_0511__v3_l0,
};

const s32 anim_0512__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A2AB, 12,
    -6, 0, (((-8 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    4, 0,

    -1, 0x1A2B7, 12,
    4, 1,

    -1, 0x1A2C3, 12,
    4, 2,

    -1, 0x1A2CF, 12,
    4, 3,

    -1, 0x1A2DB, 12,
    4, 4,

    -1, 0x1A2E7, 12,
    4, 5,

    -3, 36,
};

const s32 anim_0512__v1_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A2F3, 12,
    -6, 0, (((-8 & 0xFF) << 0) | ((-9 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    4, 6,

    -1, 0x1A2FF, 12,
    4, 7,

    -1, 0x1A30B, 12,
    4, 8,

    -1, 0x1A317, 12,
    4, 9,

    -1, 0x1A323, 12,
    4, 10,

    -1, 0x1A32F, 12,
    4, 11,

    -3, 36,
};

const s32 anim_0512__v2_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A33B, 9,
    -6, 0, (((-8 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 12,

    -1, 0x1A344, 9,
    5, 13,

    -1, 0x1A34D, 9,
    5, 14,

    -3, 21,
};

const s32 anim_0512__v3_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A356, 9,
    -6, 0, (((-15 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 15,

    -1, 0x1A35F, 9,
    5, 16,

    -1, 0x1A368, 9,
    5, 17,

    -3, 21,
};

const s32 * const anim_0512[4] = {
    anim_0512__v0_l0,
    anim_0512__v1_l0,
    anim_0512__v2_l0,
    anim_0512__v3_l0,
};

const s32 anim_0513__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A371, 10,
    -6, 0, (((-15 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 0,

    -1, 0x1A37B, 15,
    4, 1,

    -1, 0x1A38A, 10,
    4, 2,

    -1, 0x1A394, 15,
    4, 3,

    -3, 26,
};

const s32 anim_0513__v1_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A3A3, 8,
    -6, 0, (((-12 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 4,

    -1, 0x1A3AB, 8,
    2, 5,

    -1, 0x1A3B3, 8,
    2, 6,

    -1, 0x1A3BB, 8,
    2, 7,

    -4,
};

const s32 * const anim_0513[2] = {
    anim_0513__v0_l0,
    anim_0513__v1_l0,
};

const s32 anim_0514__v0_l0[] = {
    -2, 66, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1A3C3, 16,
    -6, 0, (((-9 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    -6, 1, (((-16 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    3, 0,

    -1, 0x1A3D3, 16,
    3, 1,

    -1, 0x1A3E3, 24,
    3, 2,

    -1, 0x1A3FB, 24,
    3, 3,

    -1, 0x1A413, 24,
    3, 4,

    -1, 0x1A42B, 16,
    3, 5,

    -3, 39,
};

const s32 * const anim_0514[1] = {
    anim_0514__v0_l0,
};

const s32 anim_0515__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A43B, 4,
    8, 0,

    -1, 0x1A43F, 4,
    8, 1,

    -1, 0x1A443, 4,
    8, 2,

    -1, 0x1A43F, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0515[1] = {
    anim_0515__v0_l0,
};

const s32 anim_0516__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A447, 4,
    8, 0,

    -1, 0x1A44B, 4,
    8, 1,

    -1, 0x1A44F, 4,
    8, 2,

    -1, 0x1A44B, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0516[1] = {
    anim_0516__v0_l0,
};

const s32 anim_0517__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A453, 4,
    8, 0,

    -1, 0x1A457, 4,
    8, 1,

    -1, 0x1A45B, 4,
    8, 2,

    -1, 0x1A457, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0517[1] = {
    anim_0517__v0_l0,
};

const s32 anim_0518__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A45F, 4,
    8, 0,

    -1, 0x1A463, 4,
    2, 1,

    -1, 0x1A467, 4,
    10, 2,

    -1, 0x1A463, 4,
    2, 1,

    -3, 23,
};

const s32 * const anim_0518[1] = {
    anim_0518__v0_l0,
};

const s32 anim_0519__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A46B, 4,
    8, 0,

    -1, 0x1A46F, 4,
    8, 1,

    -1, 0x1A473, 4,
    8, 2,

    -1, 0x1A46F, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0519[1] = {
    anim_0519__v0_l0,
};

const s32 anim_0520__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A477, 4,
    3, 0,

    -1, 0x1A47B, 4,
    3, 1,

    -1, 0x1A47F, 4,
    3, 2,

    -3, 18,
};

const s32 * const anim_0520[1] = {
    anim_0520__v0_l0,
};

const s32 anim_0521__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A483, 4,
    8, 0,

    -1, 0x1A487, 4,
    8, 1,

    -1, 0x1A48B, 4,
    8, 2,

    -1, 0x1A487, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0521[1] = {
    anim_0521__v0_l0,
};

const s32 anim_0522__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A48F, 4,
    8, 0,

    -1, 0x1A493, 4,
    8, 1,

    -1, 0x1A497, 4,
    8, 2,

    -1, 0x1A493, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0522[1] = {
    anim_0522__v0_l0,
};

const s32 anim_0523__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A49B, 4,
    8, 0,

    -1, 0x1A49F, 4,
    8, 1,

    -1, 0x1A4A3, 4,
    8, 2,

    -1, 0x1A49F, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0523[1] = {
    anim_0523__v0_l0,
};

const s32 anim_0524__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A4A7, 4,
    8, 0,

    -1, 0x1A4AB, 4,
    8, 1,

    -1, 0x1A4AF, 4,
    8, 2,

    -1, 0x1A4AB, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0524[1] = {
    anim_0524__v0_l0,
};

const s32 anim_0525__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A4B3, 4,
    8, 0,

    -1, 0x1A4B7, 4,
    8, 1,

    -1, 0x1A4BB, 4,
    8, 2,

    -1, 0x1A4B7, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0525[1] = {
    anim_0525__v0_l0,
};

const s32 anim_0526__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A4BF, 4,
    3, 0,

    -1, 0x1A4C3, 4,
    3, 1,

    -1, 0x1A4C7, 4,
    3, 2,

    -3, 18,
};

const s32 * const anim_0526[1] = {
    anim_0526__v0_l0,
};

const s32 anim_0527__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A4CB, 4,
    8, 0,

    -1, 0x1A4CF, 4,
    8, 1,

    -1, 0x1A4D3, 4,
    8, 2,

    -1, 0x1A4CF, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0527[1] = {
    anim_0527__v0_l0,
};

const s32 anim_0528__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A4D7, 4,
    6, 0,

    -1, 0x1A4DB, 4,
    6, 1,

    -1, 0x1A4DF, 4,
    6, 2,

    -1, 0x1A4DB, 4,
    6, 1,

    -3, 23,
};

const s32 * const anim_0528[1] = {
    anim_0528__v0_l0,
};

const s32 anim_0529__v0_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1A4E3, 4,
    8, 0,

    -1, 0x1A4E7, 4,
    8, 1,

    -1, 0x1A4EB, 4,
    8, 2,

    -1, 0x1A4E7, 4,
    8, 1,

    -3, 23,
};

const s32 * const anim_0529[1] = {
    anim_0529__v0_l0,
};

const s32 anim_0530__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A4EF, 3,
    4, 0,

    -1, 0x1A4F2, 3,
    4, 1,

    -1, 0x1A4F5, 5,
    4, 2,

    -1, 0x1A4FA, 5,
    4, 3,

    -1, 0x1A4FF, 14,
    4, 4,

    -1, 0x1A50D, 14,
    4, 5,

    -1, 0x1A51B, 14,
    4, 6,

    -1, 0x1A529, 14,
    4, 7,

    -1, 0x1A537, 9,
    4, 8,

    -1, 0x1A540, 9,
    4, 9,
    -1, 0x1A549, 6,
    2, 10,

    -1, 0x1A54F, 9,
    2, 11,

    -3, 10,
};

const s32 * const anim_0530[1] = {
    anim_0530__v0_l0,
};

const s32 anim_0531__v0_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A558, 4,
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((52 & 0xFF) << 24)),
    8, 0,

    -1, 0x1A55C, 4,
    8, 1,

    -1, 0x1A560, 4,
    8, 2,

    -1, 0x1A564, 4,
    24, 3,

    -1, 0x1A568, 4,
    8, 4,

    -1, 0x1A56C, 4,
    8, 5,

    -3, 36,
};

const s32 anim_0531__v1_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A570, 4,
    8, 6,

    -1, 0x1A574, 4,
    6, 7,

    -1, 0x1A578, 4,
    6, 8,

    -4,
};

const s32 * const anim_0531[2] = {
    anim_0531__v0_l0,
    anim_0531__v1_l0,
};

const s32 anim_0532__v0_l0[] = {
    -2, 69, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A57C, 4,
    5, 0,

    -1, 0x1A580, 4,
    5, 1,

    -1, 0x1A584, 2,
    5, 2,

    -1, 0x1A586, 4,
    5, 3,

    -1, 0x1A58A, 4,
    5, 4,

    -1, 0x1A58E, 4,
    5, 5,

    -1, 0x1A592, 2,
    5, 6,

    -1, 0x1A594, 4,
    5, 7,

    -3, 43,
};

const s32 anim_0532__v1_l0[] = {
    -2, 69, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A594, 4,
    -6, 0, (((20 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((40 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0532[2] = {
    anim_0532__v0_l0,
    anim_0532__v1_l0,
};

const s32 anim_0533__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1A598, 18,
    2, 0,

    -1, 0x1A5AA, 18,
    2, 1,

    -1, 0x1A5BC, 18,
    2, 2,

    -3, 18,
};

const s32 * const anim_0533[1] = {
    anim_0533__v0_l0,
};

const s32 anim_0534__v0_l0[] = {
    -1, 0x1A5CE, 6,
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    12, 0,

    12, 1,

    12, 2,

    -3, 9,
};

const s32 * const anim_0534[1] = {
    anim_0534__v0_l0,
};

const s32 anim_0535__v0_l0[] = {
    -2, 70, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1A5D4, 64,
    1, 0,

    -4,
};

const s32 * const anim_0535[1] = {
    anim_0535__v0_l0,
};

const s32 anim_0536__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A614, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0536__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A614, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1A620, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1A62C, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1A640, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 3,

    -1, 0x1A650, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0536__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A664, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0536__v3_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A664, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 5,

    -1, 0x1A670, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 6,

    -1, 0x1A67C, 20,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((33 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 7,

    -1, 0x1A690, 16,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    5, 8,

    -1, 0x1A6A0, 20,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    3, 9,

    -4,
};

const s32 anim_0536__v4_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A6B4, 12,
    -6, 0, (((10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0536__v5_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A6B4, 12,
    -6, 0, (((10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 10,

    -1, 0x1A6C0, 9,
    -6, 0, (((6 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    2, 11,

    -1, 0x1A6C9, 20,
    -6, 0, (((17 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    1, 12,

    -1, 0x1A6DD, 16,
    -6, 0, (((13 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    5, 13,

    -1, 0x1A6ED, 16,
    -6, 0, (((16 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-15 & 0xFF) << 24)),
    3, 14,

    -4,
};

const s32 anim_0536__v6_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A6FD, 8,
    -6, 0, (((10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 15,

    -4,
};

const s32 anim_0536__v7_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A6FD, 8,
    -6, 0, (((10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 15,

    -1, 0x1A705, 6,
    -6, 0, (((6 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 16,

    -1, 0x1A70B, 15,
    -6, 0, (((17 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 17,

    -1, 0x1A71A, 12,
    -6, 0, (((13 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    5, 18,

    -1, 0x1A726, 12,
    -6, 0, (((16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    3, 19,

    -4,
};

const s32 * const anim_0536[8] = {
    anim_0536__v0_l0,
    anim_0536__v1_l0,
    anim_0536__v2_l0,
    anim_0536__v3_l0,
    anim_0536__v4_l0,
    anim_0536__v5_l0,
    anim_0536__v6_l0,
    anim_0536__v7_l0,
};

const s32 anim_0537__v0_l0[] = {
    -2, 71, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A732, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0537__v1_l0[] = {
    -2, 71, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A732, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1A73E, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1A74A, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1A732, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 0,

    -1, 0x1A74A, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 2,

    -4,
};

const s32 anim_0537__v2_l0[] = {
    -2, 71, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A732, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1A73E, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1A75A, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 3,

    -1, 0x1A732, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 0,

    -1, 0x1A76A, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0537__v3_l0[] = {
    -2, 71, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A732, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1A73E, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1A77A, 24,
    -6, 0, (((-5 & 0xFF) << 0) | ((-45 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 5,

    -1, 0x1A74A, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 2,

    -1, 0x1A75A, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -4,
};

const s32 * const anim_0537[4] = {
    anim_0537__v0_l0,
    anim_0537__v1_l0,
    anim_0537__v2_l0,
    anim_0537__v3_l0,
};

const s32 anim_0538__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A792, 18,
    -6, 0, (((-48 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0538__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A7A4, 18,
    5, 1,

    -1, 0x1A7B6, 18,
    5, 2,

    -1, 0x1A7C8, 24,
    5, 3,

    -1, 0x1A7E0, 20,
    5, 4,

    -1, 0x1A7F4, 24,
    5, 5,

    -1, 0x1A7C8, 24,
    5, 3,

    -1, 0x1A80C, 18,
    5, 6,

    -1, 0x1A7B6, 18,
    5, 2,

    -1, 0x1A81E, 18,
    5, 7,

    -1, 0x1A7A4, 18,
    5, 1,

    -1, 0x1A830, 18,
    5, 8,

    -4,
};

const s32 anim_0538__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A7A4, 18,
    5, 1,

    -1, 0x1A7B6, 18,
    5, 2,

    -1, 0x1A7C8, 24,
    5, 3,

    -1, 0x1A80C, 18,
    5, 6,

    -1, 0x1A7B6, 18,
    5, 2,

    -1, 0x1A81E, 18,
    5, 7,

    -1, 0x1A7A4, 18,
    5, 1,

    -1, 0x1A830, 18,
    5, 8,

    -4,
};

const s32 anim_0538__v3_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A7A4, 18,
    5, 1,

    -1, 0x1A7B6, 18,
    5, 2,

    -1, 0x1A81E, 18,
    5, 7,

    -1, 0x1A7A4, 18,
    5, 1,

    -1, 0x1A830, 18,
    5, 8,

    -4,
};

const s32 * const anim_0538[4] = {
    anim_0538__v0_l0,
    anim_0538__v1_l0,
    anim_0538__v2_l0,
    anim_0538__v3_l0,
};

const s32 anim_0539__v0_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1A842, 32,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((64 & 0xFF) << 16) | ((32 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0539[1] = {
    anim_0539__v0_l0,
};

const s32 anim_0540__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A862, 8,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1A86A, 8,
    1, 1,

    -1, 0x1A872, 8,
    1, 2,

    -3, 21,
};

const s32 anim_0540__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A87A, 12,
    -6, 0, (((-16 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 3,

    -1, 0x1A886, 12,
    1, 4,

    -1, 0x1A892, 12,
    1, 5,

    -3, 21,
};

const s32 anim_0540__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A89E, 12,
    -6, 0, (((-16 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 6,

    -1, 0x1A8AA, 12,
    1, 7,

    -1, 0x1A8B6, 12,
    1, 8,

    -3, 21,
};

const s32 anim_0540__v3_l0[] = {
    -2, 73, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A8C2, 16,
    -6, 0, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    1, 9,

    -1, 0x1A8D2, 16,
    1, 10,

    -1, 0x1A8E2, 16,
    1, 11,

    -3, 21,
};

const s32 anim_0540__v4_l0[] = {
    -2, 73, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A8F2, 12,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 12,

    -1, 0x1A8FE, 12,
    1, 13,

    -1, 0x1A90A, 12,
    1, 14,

    -3, 21,
};

const s32 anim_0540__v5_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A916, 8,
    -6, 0, (((-14 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 15,

    -1, 0x1A91E, 8,
    1, 16,

    -1, 0x1A926, 8,
    1, 17,

    -3, 21,
};

const s32 * const anim_0540[6] = {
    anim_0540__v0_l0,
    anim_0540__v1_l0,
    anim_0540__v2_l0,
    anim_0540__v3_l0,
    anim_0540__v4_l0,
    anim_0540__v5_l0,
};

const s32 anim_0541__v0_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1A92E, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0541[1] = {
    anim_0541__v0_l0,
};

const s32 anim_0542__v0_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1A940, 16,
    -6, 0, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0542__v1_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1A950, 4,
    1, 1,

    -4,
};

const s32 anim_0542__v2_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1A954, 8,
    1, 2,

    -4,
};

const s32 anim_0542__v3_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1A95C, 16,
    -6, 0, (((0 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 * const anim_0542[4] = {
    anim_0542__v0_l0,
    anim_0542__v1_l0,
    anim_0542__v2_l0,
    anim_0542__v3_l0,
};

const s32 anim_0543__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A96C, 20,
    -6, 0, (((-20 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0543__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A980, 15,
    -6, 0, (((-20 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0543[2] = {
    anim_0543__v0_l0,
    anim_0543__v1_l0,
};

const s32 anim_0544__v0_l0[] = {
    -2, 75, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A98F, 12,
    3, 0,

    -1, 0x1A99B, 12,
    3, 1,

    -1, 0x1A9A7, 12,
    3, 2,

    -3, 18,
};

const s32 * const anim_0544[1] = {
    anim_0544__v0_l0,
};

const s32 anim_0545__v0_l0[] = {
    -2, 75, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1A9B3, 45,
    2, 0,

    -1, 0x1A9E0, 45,
    2, 1,

    -1, 0x1AA0D, 45,
    2, 2,

    -3, 18,
};

const s32 * const anim_0545[1] = {
    anim_0545__v0_l0,
};

const s32 anim_0546__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA3A, 9,
    -6, 0, (((-7 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 0,

    -3, 11,
};

const s32 anim_0546__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA43, 9,
    1, 1,

    -3, 8,
};

const s32 anim_0546__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA4C, 9,
    1, 2,

    -3, 8,
};

const s32 anim_0546__v3_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA55, 9,
    1, 3,

    -3, 8,
};

const s32 anim_0546__v4_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA5E, 9,
    1, 4,

    -3, 8,
};

const s32 anim_0546__v5_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA67, 9,
    1, 5,

    -3, 8,
};

const s32 anim_0546__v6_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA3A, 9,
    1, 0,

    -3, 8,
};

const s32 anim_0546__v7_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA43, 9,
    1, 1,

    -3, 8,
};

const s32 anim_0546__v8_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA4C, 9,
    1, 2,

    -3, 8,
};

const s32 anim_0546__v9_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA55, 9,
    1, 3,

    -3, 8,
};

const s32 anim_0546__v10_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA5E, 9,
    1, 4,

    -3, 8,
};

const s32 anim_0546__v11_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA67, 9,
    1, 5,

    -3, 8,
};

const s32 * const anim_0546[12] = {
    anim_0546__v0_l0,
    anim_0546__v1_l0,
    anim_0546__v2_l0,
    anim_0546__v3_l0,
    anim_0546__v4_l0,
    anim_0546__v5_l0,
    anim_0546__v6_l0,
    anim_0546__v7_l0,
    anim_0546__v8_l0,
    anim_0546__v9_l0,
    anim_0546__v10_l0,
    anim_0546__v11_l0,
};

const s32 anim_0547__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA70, 4,
    5, 0,

    -1, 0x1AA74, 4,
    5, 1,

    -1, 0x1AA78, 4,
    5, 2,

    -1, 0x1AA7C, 4,
    5, 3,

    -1, 0x1AA80, 4,
    5, 4,

    -1, 0x1AA84, 4,
    5, 5,

    -1, 0x1AA78, 4,
    5, 2,

    -1, 0x1AA7C, 4,
    5, 3,

    -3, 43,
};

const s32 * const anim_0547[1] = {
    anim_0547__v0_l0,
};

const s32 anim_0548__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA88, 2,
    5, 0,

    -1, 0x1AA8A, 2,
    5, 1,

    -1, 0x1AA8C, 2,
    5, 2,

    -1, 0x1AA8E, 2,
    5, 3,

    -3, 23,
};

const s32 * const anim_0548[1] = {
    anim_0548__v0_l0,
};

const s32 anim_0549__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AA90, 4,
    5, 0,

    -1, 0x1AA94, 4,
    5, 1,

    -1, 0x1AA98, 4,
    5, 2,

    -1, 0x1AA9C, 4,
    5, 3,

    -1, 0x1AAA0, 4,
    5, 4,

    -1, 0x1AAA4, 4,
    5, 5,

    -1, 0x1AA98, 4,
    5, 2,

    -1, 0x1AA9C, 4,
    5, 3,

    -3, 43,
};

const s32 * const anim_0549[1] = {
    anim_0549__v0_l0,
};

const s32 anim_0550__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AAA8, 2,
    5, 0,

    -1, 0x1AAAA, 2,
    5, 1,

    -1, 0x1AAAC, 2,
    5, 2,

    -1, 0x1AAAE, 1,
    5, 3,

    -3, 23,
};

const s32 * const anim_0550[1] = {
    anim_0550__v0_l0,
};

const s32 anim_0551__v0_l0[] = {
    -2, 76, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1AAAF, 14,
    1, 0,

    -4,
};

const s32 * const anim_0551[1] = {
    anim_0551__v0_l0,
};

const s32 anim_0552__v0_l0[] = {
    -2, 77, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0552[1] = {
    anim_0552__v0_l0,
};

const s32 anim_0553__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AABD, 12,
    3, 0,

    -1, 0x1AAC9, 12,
    4, 1,

    -1, 0x1AAD5, 12,
    5, 2,

    -1, 0x1AAE1, 6,
    6, 3,

    -4,
};

const s32 * const anim_0553[1] = {
    anim_0553__v0_l0,
};

const s32 anim_0554__v0_l0[] = {
    -2, 78, (((u16)256 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0554[1] = {
    anim_0554__v0_l0,
};

const s32 anim_0555__v0_l0[] = {
    -2, 94, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1AAE7, 4,
    1, 0,

    -4,
};

const s32 * const anim_0555[1] = {
    anim_0555__v0_l0,
};

const s32 anim_0556__v0_l0[] = {
    -2, 95, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0556[1] = {
    anim_0556__v0_l0,
};

const s32 anim_0557__v0_l0[] = {
    -2, 96, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0557[1] = {
    anim_0557__v0_l0,
};

const s32 anim_0558__v0_l0[] = {
    -2, 97, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0558[1] = {
    anim_0558__v0_l0,
};

const s32 anim_0559__v0_l0[] = {
    -2, 98, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0559[1] = {
    anim_0559__v0_l0,
};

const s32 anim_0560__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AAEB, 12,
    2, 0,

    -1, 0x1AAF7, 12,
    2, 1,

    -1, 0x1AB03, 12,
    2, 2,

    -3, 18,
};

const s32 * const anim_0560[1] = {
    anim_0560__v0_l0,
};

const s32 anim_0561__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB0F, 4,
    1, 0,

    -4,
};

const s32 anim_0561__v1_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB13, 4,
    1, 1,

    -4,
};

const s32 anim_0561__v2_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB17, 4,
    1, 2,

    -4,
};

const s32 anim_0561__v3_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB1B, 4,
    1, 3,

    -4,
};

const s32 anim_0561__v4_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0561__v5_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB1F, 2,
    1, 4,

    -3, 8,
};

const s32 anim_0561__v6_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB21, 4,
    1, 5,

    -3, 8,
};

const s32 * const anim_0561[7] = {
    anim_0561__v0_l0,
    anim_0561__v1_l0,
    anim_0561__v2_l0,
    anim_0561__v3_l0,
    anim_0561__v4_l0,
    anim_0561__v5_l0,
    anim_0561__v6_l0,
};

const s32 anim_0562__v0_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB25, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0562[1] = {
    anim_0562__v0_l0,
};

const s32 anim_0563__v0_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB3D, 4,
    1, 0,

    -4,
};

const s32 anim_0563__v1_l0[] = {
    -2, 72, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB41, 1,
    1, 1,

    -4,
};

const s32 * const anim_0563[2] = {
    anim_0563__v0_l0,
    anim_0563__v1_l0,
};

const s32 anim_0564__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB42, 16,
    1, 0,

    -4,
};

const s32 anim_0564__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB52, 1,
    1, 1,

    -4,
};

const s32 anim_0564__v2_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB53, 1,
    1, 2,

    -4,
};

const s32 * const anim_0564[3] = {
    anim_0564__v0_l0,
    anim_0564__v1_l0,
    anim_0564__v2_l0,
};

const s32 anim_0565__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB54, 64,
    1, 0,

    -4,
};

const s32 * const anim_0565[1] = {
    anim_0565__v0_l0,
};

const s32 anim_0566__v0_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AB94, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0566__v1_l0[] = {
    -2, 100, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1ABA6, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0566[2] = {
    anim_0566__v0_l0,
    anim_0566__v1_l0,
};

const s32 anim_0567__v0_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ABBE, 8,
    1, 0,

    -4,
};

const s32 anim_0567__v1_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ABBE, 8,
    2, 0,

    -1, 0x1ABC6, 8,
    2, 1,

    -1, 0x1ABCE, 12,
    4, 2,

    -1, 0x1ABC6, 8,
    3, 1,

    -1, 0x1ABBE, 8,
    2, 0,

    -1, 0x1ABDA, 8,
    2, 3,

    -1, 0x1ABE2, 8,
    4, 4,

    -1, 0x1ABDA, 8,
    3, 3,

    -1, 0x1ABBE, 8,
    2, 0,

    -1, 0x1ABC6, 8,
    2, 1,

    -1, 0x1ABCE, 12,
    4, 2,

    -1, 0x1ABC6, 8,
    3, 1,

    -1, 0x1ABBE, 8,
    2, 0,

    -4,
};

const s32 anim_0567__v2_l0[] = {
    -2, 67, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ABE2, 8,
    1, 4,

    -1, 0x1ABCE, 12,
    1, 2,

    -1, 0x1ABC6, 8,
    1, 1,

    -1, 0x1ABBE, 8,
    1, 0,

    -1, 0x1ABDA, 8,
    1, 3,

    -1, 0x1ABBE, 8,
    1, 0,

    -1, 0x1ABC6, 8,
    1, 1,

    -1, 0x1ABBE, 8,
    1, 0,

    -4,
};

const s32 * const anim_0567[3] = {
    anim_0567__v0_l0,
    anim_0567__v1_l0,
    anim_0567__v2_l0,
};

const s32 anim_0568__v0_l0[] = {
    -2, 101, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ABEA, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0568__v1_l0[] = {
    -2, 101, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ABEA, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 0,

    -1, 0x1ABFE, 20,
    2, 1,

    -1, 0x1AC12, 28,
    1, 2,

    -1, 0x1AC2E, 24,
    5, 3,

    -1, 0x1AC46, 28,
    3, 4,

    -4,
};

const s32 anim_0568__v2_l0[] = {
    -2, 101, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AC62, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0568__v3_l0[] = {
    -2, 101, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AC62, 20,
    -6, 0, (((-14 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 5,

    -1, 0x1AC76, 20,
    2, 6,

    -1, 0x1AC8A, 28,
    1, 7,

    -1, 0x1ACA6, 24,
    5, 8,

    -1, 0x1ACBE, 28,
    3, 9,

    -4,
};

const s32 * const anim_0568[4] = {
    anim_0568__v0_l0,
    anim_0568__v1_l0,
    anim_0568__v2_l0,
    anim_0568__v3_l0,
};

const s32 anim_0569__v0_l0[] = {
    -2, 102, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1ACDA, 2,
    1, 0,

    -4,
};

const s32 anim_0569__v1_l0[] = {
    -2, 102, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1ACDC, 1,
    1, 1,

    -4,
};

const s32 * const anim_0569[2] = {
    anim_0569__v0_l0,
    anim_0569__v1_l0,
};

const s32 anim_0570__v0_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ACDD, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0570__v1_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ACDD, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1ACE9, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1ACF5, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1AD05, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 3,

    -1, 0x1AD11, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0570__v2_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ACDD, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1ACE9, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1ACF5, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1AD05, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 3,

    -1, 0x1AD11, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0570__v3_l0[] = {
    -2, 103, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1ACDD, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1ACE9, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1ACF5, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1AD05, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 3,

    -1, 0x1AD11, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 * const anim_0570[4] = {
    anim_0570__v0_l0,
    anim_0570__v1_l0,
    anim_0570__v2_l0,
    anim_0570__v3_l0,
};

const s32 anim_0571__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AD21, 20,
    -6, 0, (((-13 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0571__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AD21, 20,
    -6, 0, (((-13 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 0,

    -1, 0x1AD35, 20,
    2, 1,

    -1, 0x1AD49, 28,
    1, 2,

    -1, 0x1AD65, 28,
    5, 3,

    -1, 0x1AD81, 28,
    3, 4,

    -4,
};

const s32 anim_0571__v2_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AD9D, 20,
    -6, 0, (((-13 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0571__v3_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AD9D, 20,
    -6, 0, (((-13 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((19 & 0xFF) << 24)),
    1, 5,

    -1, 0x1ADB1, 20,
    2, 6,

    -1, 0x1ADC5, 28,
    1, 7,

    -1, 0x1ADE1, 28,
    5, 8,

    -1, 0x1ADFD, 28,
    3, 9,

    -4,
};

const s32 * const anim_0571[4] = {
    anim_0571__v0_l0,
    anim_0571__v1_l0,
    anim_0571__v2_l0,
    anim_0571__v3_l0,
};

const s32 anim_0572__v0_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AE19, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0572__v1_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AE19, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1AE25, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1AE31, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1AE45, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-29 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 3,

    -1, 0x1AE55, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 * const anim_0572[2] = {
    anim_0572__v0_l0,
    anim_0572__v1_l0,
};

const s32 anim_0573__v0_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AE69, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0573__v1_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AE69, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 0,

    -1, 0x1AE75, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 1,

    -1, 0x1AE81, 20,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((33 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 2,

    -1, 0x1AE95, 16,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    5, 3,

    -1, 0x1AEA5, 20,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0573__v2_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AEB9, 16,
    -6, 0, (((10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0573__v3_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AEB9, 16,
    -6, 0, (((10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 5,

    -1, 0x1AEC9, 9,
    -6, 0, (((6 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    2, 6,

    -1, 0x1AED2, 25,
    -6, 0, (((17 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    1, 7,

    -1, 0x1AEEB, 25,
    -6, 0, (((13 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    5, 8,

    -1, 0x1AF04, 25,
    -6, 0, (((16 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-15 & 0xFF) << 24)),
    3, 9,

    -4,
};

const s32 anim_0573__v4_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AF1D, 12,
    -6, 0, (((10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0573__v5_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AF1D, 12,
    -6, 0, (((10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 10,

    -1, 0x1AF29, 6,
    -6, 0, (((6 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 11,

    -1, 0x1AF2F, 20,
    -6, 0, (((17 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 12,

    -1, 0x1AF43, 20,
    -6, 0, (((13 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    5, 13,

    -1, 0x1AF57, 20,
    -6, 0, (((16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    3, 14,

    -4,
};

const s32 * const anim_0573[6] = {
    anim_0573__v0_l0,
    anim_0573__v1_l0,
    anim_0573__v2_l0,
    anim_0573__v3_l0,
    anim_0573__v4_l0,
    anim_0573__v5_l0,
};

const s32 anim_0574__v0_l0[] = {
    -2, 106, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AF6B, 18,
    -6, 0, (((-23 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0574__v1_l0[] = {
    -2, 107, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AF7D, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0574__v2_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1AFA1, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 * const anim_0574[3] = {
    anim_0574__v0_l0,
    anim_0574__v1_l0,
    anim_0574__v2_l0,
};

const s32 anim_0575__v0_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AFB9, 4,
    1, 0,

    -4,
};

const s32 anim_0575__v1_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AFBD, 4,
    1, 1,

    -4,
};

const s32 anim_0575__v2_l0[] = {
    -2, 105, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1AFC1, 4,
    1, 2,

    -4,
};

const s32 anim_0575__v3_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AFC5, 4,
    1, 3,

    -4,
};

const s32 anim_0575__v4_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AFC9, 4,
    1, 4,

    -4,
};

const s32 anim_0575__v5_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1AFCD, 4,
    1, 5,

    -4,
};

const s32 anim_0575__v6_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1AFD1, 4,
    1, 6,

    -4,
};

const s32 anim_0575__v7_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1AFD5, 6,
    1, 7,

    -4,
};

const s32 anim_0575__v8_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1AFDB, 6,
    1, 8,

    -4,
};

const s32 anim_0575__v9_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AFE1, 6,
    1, 9,

    -4,
};

const s32 anim_0575__v10_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1AFE7, 6,
    1, 10,

    -4,
};

const s32 anim_0575__v11_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AFED, 6,
    1, 11,

    -4,
};

const s32 anim_0575__v12_l0[] = {
    -2, 104, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1AFF3, 6,
    1, 12,

    -4,
};

const s32 anim_0575__v13_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1AFF9, 6,
    1, 13,

    -4,
};

const s32 anim_0575__v14_l0[] = {
    -2, 68, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1AFFF, 6,
    1, 14,

    -4,
};

const s32 anim_0575__v15_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B005, 1,
    1, 15,

    -4,
};

const s32 * const anim_0575[16] = {
    anim_0575__v0_l0,
    anim_0575__v1_l0,
    anim_0575__v2_l0,
    anim_0575__v3_l0,
    anim_0575__v4_l0,
    anim_0575__v5_l0,
    anim_0575__v6_l0,
    anim_0575__v7_l0,
    anim_0575__v8_l0,
    anim_0575__v9_l0,
    anim_0575__v10_l0,
    anim_0575__v11_l0,
    anim_0575__v12_l0,
    anim_0575__v13_l0,
    anim_0575__v14_l0,
    anim_0575__v15_l0,
};

const s32 anim_0576__v0_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B006, 2,
    1, 0,

    -4,
};

const s32 anim_0576__v1_l0[] = {
    -2, 108, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B008, 2,
    1, 1,

    -4,
};

const s32 * const anim_0576[2] = {
    anim_0576__v0_l0,
    anim_0576__v1_l0,
};

const s32 anim_0577__v0_l0[] = {
    -2, 109, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B00A, 4,
    1, 0,

    -4,
};

const s32 * const anim_0577[1] = {
    anim_0577__v0_l0,
};

const s32 anim_0578__v0_l0[] = {
    -2, 110, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1B00E, 6,
    4, 0,

    -1, 0x1B014, 6,
    4, 1,

    -1, 0x1B01A, 6,
    8, 2,

    -1, 0x1B020, 6,
    8, 3,

    1, -1,

    -4,
};

const s32 * const anim_0578[1] = {
    anim_0578__v0_l0,
};

const s32 anim_0579__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1B026, 2,
    1, 0,

    -4,
};

const s32 anim_0579__v1_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1B028, 1,
    1, 1,

    -4,
};

const s32 * const anim_0579[2] = {
    anim_0579__v0_l0,
    anim_0579__v1_l0,
};

const s32 anim_0580__v0_l0[] = {
    -2, 111, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1B029, 16,
    -6, 0, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0580__v1_l0[] = {
    -2, 111, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1B039, 4,
    1, 1,

    -4,
};

const s32 anim_0580__v2_l0[] = {
    -2, 111, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1B03D, 8,
    1, 2,

    -4,
};

const s32 anim_0580__v3_l0[] = {
    -2, 111, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1B045, 16,
    -6, 0, (((0 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 * const anim_0580[4] = {
    anim_0580__v0_l0,
    anim_0580__v1_l0,
    anim_0580__v2_l0,
    anim_0580__v3_l0,
};

const s32 anim_0581__v0_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B055, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0581__v1_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B067, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0581__v2_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B07F, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 * const anim_0581[3] = {
    anim_0581__v0_l0,
    anim_0581__v1_l0,
    anim_0581__v2_l0,
};

const s32 anim_0582__v0_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0A3, 16,
    1, 0,

    -4,
};

const s32 anim_0582__v1_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0B3, 9,
    1, 1,

    -4,
};

const s32 anim_0582__v2_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0BC, 4,
    1, 2,

    -4,
};

const s32 anim_0582__v3_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0C0, 1,
    1, 3,

    -4,
};

const s32 anim_0582__v4_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0C1, 1,
    1, 4,

    -4,
};

const s32 * const anim_0582[5] = {
    anim_0582__v0_l0,
    anim_0582__v1_l0,
    anim_0582__v2_l0,
    anim_0582__v3_l0,
    anim_0582__v4_l0,
};

const s32 anim_0583__v0_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0C2, 2,
    1, 0,

    -4,
};

const s32 anim_0583__v1_l0[] = {
    -2, 112, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B0C4, 1,
    1, 1,

    -4,
};

const s32 * const anim_0583[2] = {
    anim_0583__v0_l0,
    anim_0583__v1_l0,
};

const s32 anim_0584__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B0C5, 12,
    1, 0,

    -4,
};

const s32 anim_0584__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B0D1, 6,
    1, 1,

    -4,
};

const s32 anim_0584__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B0D7, 12,
    1, 2,

    -4,
};

const s32 anim_0584__v3_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B0E3, 6,
    1, 3,

    -4,
};

const s32 anim_0584__v4_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B0E9, 36,
    1, 4,

    -4,
};

const s32 anim_0584__v5_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B10D, 25,
    1, 5,

    -4,
};

const s32 * const anim_0584[6] = {
    anim_0584__v0_l0,
    anim_0584__v1_l0,
    anim_0584__v2_l0,
    anim_0584__v3_l0,
    anim_0584__v4_l0,
    anim_0584__v5_l0,
};

const s32 anim_0585__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B126, 32,
    1, 0,

    -1, 0x1B146, 32,
    1, 1,

    -1, 0x1B166, 32,
    1, 2,

    -1, 0x1B186, 28,
    1, 3,

    -1, 0x1B1A2, 32,
    1, 4,

    -1, 0x1B1C2, 28,
    1, 5,

    -1, 0x1B1DE, 32,
    1, 6,

    -1, 0x1B1FE, 32,
    1, 7,

    -4,
};

const s32 anim_0585__v1_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B126, 32,
    1, 0,

    -1, 0x1B1FE, 32,
    1, 7,

    -1, 0x1B1DE, 32,
    1, 6,

    -1, 0x1B1C2, 28,
    1, 5,

    -1, 0x1B1A2, 32,
    1, 4,

    -1, 0x1B186, 28,
    1, 3,

    -1, 0x1B166, 32,
    1, 2,

    -1, 0x1B146, 32,
    1, 1,

    -4,
};

const s32 anim_0585__v2_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B126, 32,
    1, 0,

    -3, 8,
};

const s32 * const anim_0585[3] = {
    anim_0585__v0_l0,
    anim_0585__v1_l0,
    anim_0585__v2_l0,
};

const s32 anim_0586__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B21E, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0586[1] = {
    anim_0586__v0_l0,
};

const s32 anim_0587__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B236, 4,
    1, 0,

    -4,
};

const s32 anim_0587__v1_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B23A, 1,
    1, 1,

    -4,
};

const s32 * const anim_0587[2] = {
    anim_0587__v0_l0,
    anim_0587__v1_l0,
};

const s32 anim_0588__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B23B, 2,
    5, 0,

    -1, 0x1B23D, 2,
    5, 1,

    -1, 0x1B23F, 2,
    5, 2,

    -1, 0x1B241, 2,
    5, 3,

    -1, 0x1B243, 2,
    5, 4,

    -1, 0x1B245, 2,
    5, 5,

    -1, 0x1B247, 2,
    5, 6,

    -1, 0x1B249, 2,
    5, 7,

    -3, 43,
};

const s32 anim_0588__v1_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B24B, 1,
    5, 8,

    -1, 0x1B24C, 1,
    5, 9,

    -1, 0x1B24D, 1,
    5, 10,

    -1, 0x1B24E, 1,
    5, 11,

    -1, 0x1B24F, 1,
    5, 12,

    -1, 0x1B250, 1,
    5, 13,

    -1, 0x1B251, 1,
    5, 14,

    -1, 0x1B252, 1,
    5, 15,

    -3, 43,
};

const s32 anim_0588__v2_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B253, 1,
    5, 16,

    -1, 0x1B254, 1,
    5, 17,

    -1, 0x1B255, 1,
    5, 18,

    -1, 0x1B256, 1,
    5, 19,

    -1, 0x1B257, 1,
    5, 20,

    -1, 0x1B258, 1,
    5, 21,

    -1, 0x1B259, 1,
    5, 22,

    -1, 0x1B254, 1,
    5, 17,

    -3, 43,
};

const s32 * const anim_0588[3] = {
    anim_0588__v0_l0,
    anim_0588__v1_l0,
    anim_0588__v2_l0,
};

const s32 anim_0589__v0_l0[] = {
    -2, 113, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B25A, 54,
    4, 0,

    -1, 0x1B290, 54,
    4, 1,

    -1, 0x1B2C6, 42,
    4, 2,

    -1, 0x1B2F0, 54,
    4, 3,

    -3, 23,
};

const s32 * const anim_0589[1] = {
    anim_0589__v0_l0,
};

const s32 anim_0590__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B326, 20,
    2, 0,

    -1, 0x1B33A, 20,
    2, 1,

    -1, 0x1B34E, 20,
    2, 2,

    -1, 0x1B362, 20,
    2, 3,

    -3, 23,
};

const s32 anim_0590__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B326, 20,
    2, 0,

    -1, 0x1B376, 20,
    2, 4,

    -1, 0x1B38A, 20,
    2, 5,

    -1, 0x1B362, 20,
    2, 3,

    -1, 0x1B39E, 20,
    2, 6,

    -4,
};

const s32 * const anim_0590[2] = {
    anim_0590__v0_l0,
    anim_0590__v1_l0,
};

const s32 anim_0591__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B3B2, 12,
    1, 0,

    -4,
};

const s32 anim_0591__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B3B2, 12,
    1, 0,

    -1, 0x1B3BE, 12,
    3, 1,

    -1, 0x1B3CA, 12,
    2, 2,

    -1, 0x1B3D6, 12,
    1, 3,

    -4,
};

const s32 anim_0591__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B3B2, 12,
    1, 0,

    -1, 0x1B3BE, 12,
    1, 1,

    -1, 0x1B3CA, 12,
    1, 2,

    -1, 0x1B3D6, 12,
    1, 3,

    -3, 23,
};

const s32 anim_0591__v3_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1B3B2, 12,
    1, 0,

    -1, 0x1B3BE, 12,
    1, 1,

    -1, 0x1B3CA, 12,
    2, 2,

    -1, 0x1B3D6, 12,
    3, 3,

    -4,
};

const s32 * const anim_0591[4] = {
    anim_0591__v0_l0,
    anim_0591__v1_l0,
    anim_0591__v2_l0,
    anim_0591__v3_l0,
};

const s32 anim_0592__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B3E2, 25,
    2, 0,

    -1, 0x1B3FB, 15,
    2, 1,

    -1, 0x1B40A, 15,
    2, 2,

    -1, 0x1B419, 15,
    2, 3,

    -3, 23,
};

const s32 * const anim_0592[1] = {
    anim_0592__v0_l0,
};

const s32 anim_0593__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B428, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0593[1] = {
    anim_0593__v0_l0,
};

const s32 anim_0594__v0_l0[] = {
    -2, 99, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B43A, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0594[1] = {
    anim_0594__v0_l0,
};

const s32 anim_0595__v0_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B45E, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 0,

    -1, 0x1B466, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 1,

    -1, 0x1B46E, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 2,

    -1, 0x1B476, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 3,

    -1, 0x1B47E, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 4,

    -3, 43,
};

const s32 anim_0595__v1_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B486, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 5,

    -1, 0x1B48E, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 6,

    -1, 0x1B496, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 7,

    -1, 0x1B49E, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 8,

    -1, 0x1B4A6, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    5, 9,

    -3, 43,
};

const s32 anim_0595__v2_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B4AE, 8,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 * const anim_0595[3] = {
    anim_0595__v0_l0,
    anim_0595__v1_l0,
    anim_0595__v2_l0,
};

const s32 anim_0596__v0_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B4B6, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    8, 0,

    -1, 0x1B4E0, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    8, 1,

    -3, 19,
};

const s32 anim_0596__v1_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B50A, 18,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    8, 2,

    -1, 0x1B51C, 18,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    8, 3,

    -3, 19,
};

const s32 anim_0596__v2_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B4B6, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0596__v3_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B4E0, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0596__v4_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B52E, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0596__v5_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B558, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0596__v6_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B582, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0596__v7_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B5AC, 42,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 anim_0596__v8_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B50A, 18,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0596__v9_l0[] = {
    -2, 115, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B51C, 18,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((48 & 0xFF) << 16) | ((21 & 0xFF) << 24)),
    1, 3,

    -4,
};

const s32 * const anim_0596[10] = {
    anim_0596__v0_l0,
    anim_0596__v1_l0,
    anim_0596__v2_l0,
    anim_0596__v3_l0,
    anim_0596__v4_l0,
    anim_0596__v5_l0,
    anim_0596__v6_l0,
    anim_0596__v7_l0,
    anim_0596__v8_l0,
    anim_0596__v9_l0,
};

const s32 anim_0597__v0_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B5D6, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    10, 0,

    -1, 0x1B5E8, 18,
    10, 1,

    -1, 0x1B5FA, 18,
    10, 2,

    -1, 0x1B60C, 18,
    10, 3,

    -1, 0x1B61E, 18,
    10, 4,

    -1, 0x1B630, 18,
    10, 5,

    -3, 36,
};

const s32 anim_0597__v1_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B642, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 6,

    -4,
};

const s32 anim_0597__v2_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B65A, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 7,

    -4,
};

const s32 * const anim_0597[3] = {
    anim_0597__v0_l0,
    anim_0597__v1_l0,
    anim_0597__v2_l0,
};

const s32 anim_0598__v0_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B67E, 8,
    -6, 0, (((-16 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0598__v1_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B686, 8,
    -6, 0, (((-16 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_0598__v2_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B68E, 8,
    -6, 0, (((-16 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 * const anim_0598[3] = {
    anim_0598__v0_l0,
    anim_0598__v1_l0,
    anim_0598__v2_l0,
};

const s32 anim_0599__v0_l0[] = {
    -2, 114, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B696, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0599[1] = {
    anim_0599__v0_l0,
};

const s32 anim_0600__v0_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B6BA, 9,
    -6, 0, (((-11 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    10, 0,

    -1, 0x1B6C3, 9,
    10, 1,

    -1, 0x1B6CC, 9,
    10, 2,

    -1, 0x1B6D5, 9,
    10, 3,

    -3, 26,
};

const s32 anim_0600__v1_l0[] = {
    -2, 116, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B6DE, 9,
    -6, 0, (((-11 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((11 & 0xFF) << 24)),
    10, 4,

    -1, 0x1B6E7, 9,
    6, 5,

    -1, 0x1B6F0, 9,
    6, 6,

    1, -1,

    -4,
};

const s32 * const anim_0600[2] = {
    anim_0600__v0_l0,
    anim_0600__v1_l0,
};

const s32 anim_0601__v0_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B6F9, 2,
    1, 0,

    -4,
};

const s32 anim_0601__v1_l0[] = {
    -2, 117, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B6FB, 2,
    1, 1,

    -4,
};

const s32 * const anim_0601[2] = {
    anim_0601__v0_l0,
    anim_0601__v1_l0,
};

const s32 anim_0602__v0_l0[] = {
    -2, 118, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B6FD, 2,
    1, 0,

    -4,
};

const s32 anim_0602__v1_l0[] = {
    -2, 118, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B6FF, 1,
    1, 1,

    -4,
};

const s32 * const anim_0602[2] = {
    anim_0602__v0_l0,
    anim_0602__v1_l0,
};

const s32 anim_0603__v0_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B700, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0603__v1_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B700, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1B70C, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1B718, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1B70C, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 1,

    -1, 0x1B718, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 2,

    -4,
};

const s32 anim_0603__v2_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B700, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1B70C, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1B728, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 3,

    -1, 0x1B700, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 0,

    -1, 0x1B738, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0603__v3_l0[] = {
    -2, 119, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B700, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1B70C, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1B748, 24,
    -6, 0, (((-5 & 0xFF) << 0) | ((-45 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 5,

    -1, 0x1B718, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 2,

    -1, 0x1B728, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 3,

    -4,
};

const s32 * const anim_0603[4] = {
    anim_0603__v0_l0,
    anim_0603__v1_l0,
    anim_0603__v2_l0,
    anim_0603__v3_l0,
};

const s32 anim_0604__v0_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B760, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0604__v1_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B760, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -1, 0x1B76C, 12,
    -6, 0, (((-5 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -1, 0x1B778, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 2,

    -1, 0x1B78C, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-33 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 3,

    -1, 0x1B79C, 20,
    -6, 0, (((-5 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    3, 4,

    -4,
};

const s32 anim_0604__v2_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B7B0, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 anim_0604__v3_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B7B0, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 5,

    -1, 0x1B7BC, 12,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    2, 6,

    -1, 0x1B7C8, 20,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((33 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 7,

    -1, 0x1B7DC, 16,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((29 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    5, 8,

    -1, 0x1B7EC, 20,
    -6, 0, (((0 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    3, 9,

    -4,
};

const s32 anim_0604__v4_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B800, 9,
    -6, 0, (((10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 10,

    -4,
};

const s32 anim_0604__v5_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B800, 9,
    -6, 0, (((10 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 10,

    -1, 0x1B809, 9,
    -6, 0, (((6 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    2, 11,

    -1, 0x1B812, 16,
    -6, 0, (((17 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-16 & 0xFF) << 24)),
    1, 12,

    -1, 0x1B822, 16,
    -6, 0, (((13 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-12 & 0xFF) << 24)),
    5, 13,

    -1, 0x1B832, 16,
    -6, 0, (((16 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-15 & 0xFF) << 24)),
    3, 14,

    -4,
};

const s32 anim_0604__v6_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B842, 6,
    -6, 0, (((10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 15,

    -4,
};

const s32 anim_0604__v7_l0[] = {
    -2, 120, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B842, 6,
    -6, 0, (((10 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 15,

    -1, 0x1B848, 6,
    -6, 0, (((6 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 16,

    -1, 0x1B84E, 12,
    -6, 0, (((17 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((27 & 0xFF) << 16) | ((-8 & 0xFF) << 24)),
    1, 17,

    -1, 0x1B85A, 12,
    -6, 0, (((13 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    5, 18,

    -1, 0x1B866, 12,
    -6, 0, (((16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    3, 19,

    -4,
};

const s32 * const anim_0604[8] = {
    anim_0604__v0_l0,
    anim_0604__v1_l0,
    anim_0604__v2_l0,
    anim_0604__v3_l0,
    anim_0604__v4_l0,
    anim_0604__v5_l0,
    anim_0604__v6_l0,
    anim_0604__v7_l0,
};

const s32 anim_0605__v0_l0[] = {
    -2, 121, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B872, 12,
    1, 0,

    -4,
};

const s32 anim_0605__v1_l0[] = {
    -2, 121, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B87E, 6,
    1, 1,

    -4,
};

const s32 anim_0605__v2_l0[] = {
    -2, 122, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B884, 12,
    1, 2,

    -4,
};

const s32 anim_0605__v3_l0[] = {
    -2, 122, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B890, 6,
    1, 3,

    -4,
};

const s32 anim_0605__v4_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B896, 36,
    1, 4,

    -4,
};

const s32 anim_0605__v5_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B8BA, 25,
    1, 5,

    -4,
};

const s32 * const anim_0605[6] = {
    anim_0605__v0_l0,
    anim_0605__v1_l0,
    anim_0605__v2_l0,
    anim_0605__v3_l0,
    anim_0605__v4_l0,
    anim_0605__v5_l0,
};

const s32 anim_0606__v0_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B8D3, 8,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    5, 0,

    -1, 0x1B8DB, 8,
    5, 1,

    -1, 0x1B8E3, 8,
    5, 2,

    -3, 21,
};

const s32 anim_0606__v1_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B8EB, 12,
    -6, 0, (((-16 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    5, 3,

    -1, 0x1B8F7, 12,
    5, 4,

    -1, 0x1B903, 12,
    5, 5,

    -3, 21,
};

const s32 anim_0606__v2_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B90F, 12,
    -6, 0, (((-16 & 0xFF) << 0) | ((-12 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    5, 6,

    -1, 0x1B91B, 12,
    5, 7,

    -1, 0x1B927, 12,
    5, 8,

    -3, 21,
};

const s32 anim_0606__v3_l0[] = {
    -2, 125, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B933, 16,
    -6, 0, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    5, 9,

    -1, 0x1B943, 16,
    5, 10,

    -1, 0x1B953, 16,
    5, 11,

    -3, 21,
};

const s32 anim_0606__v4_l0[] = {
    -2, 125, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B963, 16,
    -6, 0, (((-16 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    5, 12,

    -1, 0x1B973, 16,
    5, 13,

    -1, 0x1B983, 16,
    5, 14,

    -3, 21,
};

const s32 anim_0606__v5_l0[] = {
    -2, 124, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B993, 8,
    -6, 0, (((-14 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    5, 15,

    -1, 0x1B99B, 8,
    5, 16,

    -1, 0x1B9A3, 8,
    5, 17,

    -3, 21,
};

const s32 * const anim_0606[6] = {
    anim_0606__v0_l0,
    anim_0606__v1_l0,
    anim_0606__v2_l0,
    anim_0606__v3_l0,
    anim_0606__v4_l0,
    anim_0606__v5_l0,
};

const s32 anim_0607__v0_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9AB, 16,
    -6, 0, (((-16 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 0,

    2, -1,

    -3, 13,
};

const s32 anim_0607__v1_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9BB, 4,
    2, 1,

    2, -1,

    -3, 10,
};

const s32 anim_0607__v2_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9BF, 12,
    2, 2,

    2, -1,

    -3, 10,
};

const s32 anim_0607__v3_l0[] = {
    -2, 126, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9CB, 16,
    -6, 0, (((0 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    2, 3,

    2, -1,

    -3, 13,
};

const s32 * const anim_0607[4] = {
    anim_0607__v0_l0,
    anim_0607__v1_l0,
    anim_0607__v2_l0,
    anim_0607__v3_l0,
};

const s32 anim_0608__v0_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9DB, 20,
    -6, 0, (((-20 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0608__v1_l0[] = {
    -2, 123, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9EF, 15,
    -6, 0, (((-20 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0608[2] = {
    anim_0608__v0_l0,
    anim_0608__v1_l0,
};

const s32 anim_0609__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1B9FE, 4,
    1, 0,

    -4,
};

const s32 anim_0609__v1_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA02, 1,
    1, 1,

    -4,
};

const s32 * const anim_0609[2] = {
    anim_0609__v0_l0,
    anim_0609__v1_l0,
};

const s32 anim_0610__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA03, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0610[1] = {
    anim_0610__v0_l0,
};

const s32 anim_0611__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA1B, 2,
    1, 0,

    -4,
};

const s32 * const anim_0611[1] = {
    anim_0611__v0_l0,
};

const s32 anim_0612__v0_l0[] = {
    -2, 128, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA1D, 16,
    -6, 0, (((-32 & 0xFF) << 0) | ((-32 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((48 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0612[1] = {
    anim_0612__v0_l0,
};

const s32 anim_0613__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA2D, 36,
    -6, 0, (((-24 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 0,

    -3, 11,
};

const s32 * const anim_0613[1] = {
    anim_0613__v0_l0,
};

const s32 anim_0614__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA51, 15,
    -6, 0, (((-14 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0614[1] = {
    anim_0614__v0_l0,
};

const s32 anim_0615__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA60, 4,
    1, 0,

    -4,
};

const s32 anim_0615__v1_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    1, -1,

    -4,
};

const s32 anim_0615__v2_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0615[3] = {
    anim_0615__v0_l0,
    anim_0615__v1_l0,
    anim_0615__v2_l0,
};

const s32 anim_0616__v0_l0[] = {
    -2, 129, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA64, 24,
    -6, 0, (((-24 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0616__v1_l0[] = {
    -2, 129, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BA7C, 64,
    -6, 0, (((-32 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((-16 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 * const anim_0616[2] = {
    anim_0616__v0_l0,
    anim_0616__v1_l0,
};

const s32 anim_0617__v0_l0[] = {
    -2, 127, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BABC, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-4 & 0xFF) << 24)),
    1, 0,

    -3, 11,
};

const s32 * const anim_0617[1] = {
    anim_0617__v0_l0,
};

const s32 anim_0618__v0_l0[] = {
    -2, 130, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1BACE, 18,
    -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0618[1] = {
    anim_0618__v0_l0,
};

const s32 anim_0619__v0_l0[] = {
    -1, 0x1BAE0, 80,
    -2, 75, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    4, 0,

    4, 1,

    4, 2,

    4, 3,

    4, 4,

    -4,
};

const s32 * const anim_0619[1] = {
    anim_0619__v0_l0,
};

const s32 anim_0620__v0_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB30, 4,
    1, 0,

    -3, 8,
};

const s32 anim_0620__v1_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB34, 4,
    1, 1,

    -3, 8,
};

const s32 * const anim_0620[2] = {
    anim_0620__v0_l0,
    anim_0620__v1_l0,
};

const s32 anim_0621__v0_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB38, 16,
    1, 0,

    -3, 8,
};

const s32 anim_0621__v1_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB48, 12,
    1, 1,

    -3, 8,
};

const s32 * const anim_0621[2] = {
    anim_0621__v0_l0,
    anim_0621__v1_l0,
};

const s32 anim_0622__v0_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB54, 1,
    1, 0,

    -3, 8,
};

const s32 anim_0622__v1_l0[] = {
    -2, 131, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB55, 1,
    1, 1,

    -3, 8,
};

const s32 * const anim_0622[2] = {
    anim_0622__v0_l0,
    anim_0622__v1_l0,
};

const s32 anim_0623__v0_l0[] = {
    -2, 132, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB56, 1,
    1, 0,

    -3, 8,
};

const s32 * const anim_0623[1] = {
    anim_0623__v0_l0,
};

const s32 anim_0624__v0_l0[] = {
    -2, 132, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB57, 1,
    1, 0,

    -3, 8,
};

const s32 * const anim_0624[1] = {
    anim_0624__v0_l0,
};

const s32 anim_0625__v0_l0[] = {
    -2, 132, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB58, 4,
    1, 0,

    -3, 8,
};

const s32 * const anim_0625[1] = {
    anim_0625__v0_l0,
};

const s32 anim_0626__v0_l0[] = {
    -2, 132, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1BB5C, 4,
    1, 0,

    -3, 8,
};

const s32 * const anim_0626[1] = {
    anim_0626__v0_l0,
};

const s32 anim_0627__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BB60, 4,
    2, 0,

    -1, 0x1BB64, 4,
    2, 1,

    -1, 0x1BB68, 4,
    2, 2,

    -1, 0x1BB6C, 4,
    2, 3,

    -1, 0x1BB70, 4,
    2, 4,

    -1, 0x1BB74, 4,
    2, 5,

    -1, 0x1BB78, 4,
    2, 6,

    -1, 0x1BB7C, 4,
    2, 7,

    -4,
};

const s32 * const anim_0627[1] = {
    anim_0627__v0_l0,
};

const s32 anim_0628__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BB80, 64,
    1, 0,

    -4,
};

const s32 * const anim_0628[1] = {
    anim_0628__v0_l0,
};

const s32 anim_0629__v0_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BBC0, 8,
    1, 0,

    -4,
};

const s32 anim_0629__v1_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BBC8, 8,
    6, 1,

    -1, 0x1BBD0, 8,
    6, 2,

    -1, 0x1BBC8, 8,
    6, 1,

    -1, 0x1BBD0, 8,
    6, 2,

    -1, 0x1BBC8, 8,
    6, 1,

    -1, 0x1BBD0, 8,
    6, 2,

    -9, (((u16)629 << 0) | ((u16)0 << 16)),
};

const s32 anim_0629__v2_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BBD8, 8,
    8, 3,

    -1, 0x1BBE0, 8,
    4, 4,

    -1, 0x1BBD8, 8,
    8, 3,

    -1, 0x1BBE0, 8,
    4, 4,

    -1, 0x1BBD8, 8,
    8, 3,

    -1, 0x1BBE0, 8,
    4, 4,

    -9, (((u16)629 << 0) | ((u16)0 << 16)),
};

const s32 anim_0629__v3_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BBE8, 8,
    1, 5,

    -4,
};

const s32 * const anim_0629[4] = {
    anim_0629__v0_l0,
    anim_0629__v1_l0,
    anim_0629__v2_l0,
    anim_0629__v3_l0,
};

const s32 anim_0630__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BBF0, 64,
    1, 0,

    -4,
};

const s32 * const anim_0630[1] = {
    anim_0630__v0_l0,
};

const s32 anim_0631__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BC30, 64,
    1, 0,

    -4,
};

const s32 * const anim_0631[1] = {
    anim_0631__v0_l0,
};

const s32 anim_0632__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BC70, 72,
    -6, 0, (((-23 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((28 & 0xFF) << 24)),
    -6, 1, (((-9 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((33 & 0xFF) << 24)),
    3, 0,

    -1, 0x1BCB8, 72,
    3, 1,

    -1, 0x1BD00, 72,
    3, 2,

    -3, 24,
};

const s32 * const anim_0632[1] = {
    anim_0632__v0_l0,
};

const s32 anim_0633__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BD48, 4,
    1, 0,

    -4,
};

const s32 * const anim_0633[1] = {
    anim_0633__v0_l0,
};

const s32 anim_0634__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BD4C, 9,
    2, 0,

    -1, 0x1BD55, 9,
    2, 1,

    -1, 0x1BD5E, 9,
    2, 2,

    -1, 0x1BD67, 9,
    2, 3,

    -3, 23,
};

const s32 * const anim_0634[1] = {
    anim_0634__v0_l0,
};

const s32 anim_0635__v0_l0[] = {
    -2, 133, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BD70, 9,
    2, 0,

    -1, 0x1BD79, 9,
    2, 1,

    -1, 0x1BD82, 9,
    2, 2,

    -1, 0x1BD8B, 9,
    2, 3,

    -3, 23,
};

const s32 * const anim_0635[1] = {
    anim_0635__v0_l0,
};

const s32 anim_0636__v0_l0[] = {
    -2, 135, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1BD94, 30,
    3, 0,

    -1, 0x1BDB2, 36,
    2, 1,

    -3, 13,
};

const s32 * const anim_0636[1] = {
    anim_0636__v0_l0,
};

const s32 anim_0637__v0_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BDD6, 8,
    1, 0,

    -4,
};

const s32 anim_0637__v1_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BDDE, 12,
    7, 1,

    -1, 0x1BDEA, 12,
    7, 2,

    -3, 13,
};

const s32 anim_0637__v2_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1BDF6, 8,
    6, 3,

    -1, 0x1BDFE, 12,
    5, 4,

    -3, 13,
};

const s32 * const anim_0637[3] = {
    anim_0637__v0_l0,
    anim_0637__v1_l0,
    anim_0637__v2_l0,
};

const s32 anim_0638__v0_l0[] = {
    -2, 75, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1BE0A, 49,
    -6, 0, (((-16 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((16 & 0xFF) << 24)),
    4, 0,

    -1, 0x1BE3B, 49,
    -6, 0, (((-21 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((24 & 0xFF) << 24)),
    4, 1,

    -1, 0x1BE6C, 49,
    -6, 0, (((-21 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    4, 2,

    -1, 0x1BE9D, 49,
    -6, 0, (((0 & 0xFF) << 0) | ((101 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((101 & 0xFF) << 24)),
    4, 3,

    -1, 0x1BECE, 49,
    4, 4,

    -4,
};

const s32 * const anim_0638[1] = {
    anim_0638__v0_l0,
};

const s32 anim_0639__v0_l0[] = {
    -2, 75, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1BEFF, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    4, 0,

    -1, 0x1BF13, 32,
    -6, 0, (((-8 & 0xFF) << 0) | ((-26 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
    4, 1,

    -1, 0x1BF33, 32,
    -6, 0, (((-8 & 0xFF) << 0) | ((-43 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    4, 2,

    -1, 0x1BF53, 32,
    -6, 0, (((-8 & 0xFF) << 0) | ((-43 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-22 & 0xFF) << 24)),
    4, 3,

    -1, 0x1BF73, 32,
    -6, 0, (((0 & 0xFF) << 0) | ((69 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((69 & 0xFF) << 24)),
    4, 4,

    -1, 0x1BF93, 28,
    4, 5,

    -1, 0x1BFAF, 28,
    4, 6,

    -4,
};

const s32 * const anim_0639[1] = {
    anim_0639__v0_l0,
};

const s32 anim_0640__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1BFCB, 100,
    -6, 0, (((-15 & 0xFF) << 0) | ((15 & 0xFF) << 8) | ((-15 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0640[1] = {
    anim_0640__v0_l0,
};

const s32 anim_0641__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C02F, 90,
    -6, 0, (((-29 & 0xFF) << 0) | ((-60 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    4, 0,

    -1, 0x1C089, 99,
    4, 1,

    -1, 0x1C0EC, 99,
    4, 2,

    -3, 24,
};

const s32 anim_0641__v1_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C14F, 90,
    -6, 0, (((-29 & 0xFF) << 0) | ((-60 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((-5 & 0xFF) << 24)),
    -6, 1, (((-13 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    4, 3,

    -1, 0x1C1A9, 99,
    4, 4,

    -1, 0x1C20C, 99,
    4, 5,

    -3, 24,
};

const s32 * const anim_0641[2] = {
    anim_0641__v0_l0,
    anim_0641__v1_l0,
};

const s32 anim_0642__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C26F, 45,
    1, 0,

    -4,
};

const s32 anim_0642__v1_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C29C, 45,
    1, 1,

    -4,
};

const s32 * const anim_0642[2] = {
    anim_0642__v0_l0,
    anim_0642__v1_l0,
};

const s32 anim_0643__v0_l0[] = {
    -2, 137, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C2C9, 1,
    1, 0,

    -4,
};

const s32 * const anim_0643[1] = {
    anim_0643__v0_l0,
};

const s32 anim_0644__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C2CA, 16,
    4, 0,

    -1, 0x1C2DA, 16,
    4, 1,

    -1, 0x1C2EA, 16,
    4, 2,

    -1, 0x1C2FA, 16,
    4, 3,

    -3, 23,
};

const s32 * const anim_0644[1] = {
    anim_0644__v0_l0,
};

const s32 anim_0645__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C30A, 16,
    4, 0,

    -1, 0x1C31A, 16,
    4, 1,

    -3, 13,
};

const s32 * const anim_0645[1] = {
    anim_0645__v0_l0,
};

const s32 anim_0646__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1C32A, 64,
    1, 0,

    -4,
};

const s32 anim_0646__v1_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1C36A, 64,
    3, 1,

    -1, 0x1C3AA, 64,
    3, 2,

    -1, 0x1C3EA, 64,
    3, 3,

    -1, 0x1C42A, 64,
    3, 4,

    -1, 0x1C32A, 64,
    8, 0,

    -4,
};

const s32 anim_0646__v2_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1C46A, 64,
    1, 5,

    -4,
};

const s32 * const anim_0646[3] = {
    anim_0646__v0_l0,
    anim_0646__v1_l0,
    anim_0646__v2_l0,
};

const s32 anim_0647__v0_l0[] = {
    -2, 136, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C4AA, 9,
    -6, 0, (((-7 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    4, 0,

    -1, 0x1C4B3, 9,
    4, 1,

    -1, 0x1C4BC, 9,
    4, 2,

    -1, 0x1C4C5, 9,
    4, 3,

    -3, 26,
};

const s32 * const anim_0647[1] = {
    anim_0647__v0_l0,
};

const s32 anim_0648__v0_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1C4CE, 8,
    1, 0,

    -4,
};

const s32 anim_0648__v1_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1C4D6, 8,
    6, 1,

    -1, 0x1C4DE, 8,
    6, 2,

    -1, 0x1C4D6, 8,
    6, 1,

    -1, 0x1C4DE, 8,
    6, 2,

    -1, 0x1C4D6, 8,
    6, 1,

    -1, 0x1C4DE, 8,
    6, 2,

    -4,
};

const s32 anim_0648__v2_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1C4E6, 8,
    8, 3,

    -1, 0x1C4EE, 8,
    4, 4,

    -1, 0x1C4E6, 8,
    8, 3,

    -1, 0x1C4EE, 8,
    4, 4,

    -1, 0x1C4E6, 8,
    8, 3,

    -1, 0x1C4EE, 8,
    4, 4,

    -4,
};

const s32 anim_0648__v3_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1C4F6, 8,
    1, 5,

    -4,
};

const s32 * const anim_0648[4] = {
    anim_0648__v0_l0,
    anim_0648__v1_l0,
    anim_0648__v2_l0,
    anim_0648__v3_l0,
};

const s32 anim_0649__v0_l0[] = {
    -2, 138, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C4FE, 32,
    1, 0,

    -4,
};

const s32 * const anim_0649[1] = {
    anim_0649__v0_l0,
};

const s32 anim_0650__v0_l0[] = {
    -2, 138, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C51E, 36,
    1, 0,

    -4,
};

const s32 * const anim_0650[1] = {
    anim_0650__v0_l0,
};

const s32 anim_0651__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C542, 120,
    -6, 0, (((-26 & 0xFF) << 0) | ((-101 & 0xFF) << 8) | ((26 & 0xFF) << 16) | ((-77 & 0xFF) << 24)),
    -6, 1, (((-8 & 0xFF) << 0) | ((-75 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    2, 0,

    -1, 0x1C5BA, 120,
    2, 1,

    -1, 0x1C632, 108,
    2, 2,

    -3, 24,
};

const s32 * const anim_0651[1] = {
    anim_0651__v0_l0,
};

const s32 anim_0652__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C69E, 16,
    2, 0,

    -1, 0x1C6AE, 16,
    2, 1,

    -1, 0x1C6BE, 16,
    2, 2,

    -1, 0x1C6CE, 16,
    2, 3,

    -3, 23,
};

const s32 * const anim_0652[1] = {
    anim_0652__v0_l0,
};

const s32 anim_0653__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C6DE, 16,
    2, 0,

    -1, 0x1C6EE, 16,
    2, 1,

    -3, 13,
};

const s32 * const anim_0653[1] = {
    anim_0653__v0_l0,
};

const s32 anim_0654__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C6FE, 4,
    2, 0,

    -1, 0x1C702, 4,
    2, 1,

    -3, 13,
};

const s32 * const anim_0654[1] = {
    anim_0654__v0_l0,
};

const s32 anim_0655__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C706, 30,
    -6, 0, (((-31 & 0xFF) << 0) | ((-8 & 0xFF) << 8) | ((32 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    -6, 1, (((-34 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((-33 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    -6, 2, (((34 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((35 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    4, 0,

    -1, 0x1C724, 30,
    4, 1,

    -1, 0x1C742, 30,
    4, 2,

    -1, 0x1C760, 30,
    4, 3,

    -3, 32,
};

const s32 * const anim_0655[1] = {
    anim_0655__v0_l0,
};

const s32 anim_0656__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C77E, 20,
    -6, 0, (((-4 & 0xFF) << 0) | ((-118 & 0xFF) << 8) | ((-4 & 0xFF) << 16) | ((-118 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0656[1] = {
    anim_0656__v0_l0,
};

const s32 anim_0657__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1C792, 6,
    -6, 0, (((-11 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0657__v1_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1C798, 3,
    1, 1,

    -4,
};

const s32 * const anim_0657[2] = {
    anim_0657__v0_l0,
    anim_0657__v1_l0,
};

const s32 anim_0658__v0_l0[] = {
    -1, 0x1C79B, 8,
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    4, 0,

    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    4, 1,

    -3, 13,
};

const s32 * const anim_0658[1] = {
    anim_0658__v0_l0,
};

const s32 anim_0659__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1C7A3, 30,
    1, 0,

    -4,
};

const s32 * const anim_0659[1] = {
    anim_0659__v0_l0,
};

const s32 anim_0660__v0_l0[] = {
    -2, 139, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C7C1, 18,
    4, 0,

    -1, 0x1C7D3, 18,
    4, 1,

    -1, 0x1C7E5, 18,
    4, 2,

    -1, 0x1C7C1, 18,
    4, 0,

    -1, 0x1C7D3, 18,
    4, 1,

    -1, 0x1C7E5, 18,
    4, 2,

    -1, 0x1C7D3, 18,
    4, 1,

    -1, 0x1C7E5, 18,
    4, 2,

    -1, 0x1C7F7, 15,
    4, 3,

    -1, 0x1C806, 9,
    4, 4,

    -4,
};

const s32 * const anim_0660[1] = {
    anim_0660__v0_l0,
};

const s32 anim_0661__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C80F, 64,
    -6, 0, (((-25 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-7 & 0xFF) << 0) | ((6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0661__v1_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C80F, 64,
    -6, 0, (((-25 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-7 & 0xFF) << 0) | ((6 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    8, 0,

    -1, 0x1C84F, 64,
    8, 1,

    -1, 0x1C88F, 64,
    8, 2,

    -1, 0x1C84F, 64,
    8, 3,

    -1, 0x1C80F, 64,
    8, 4,

    -4,
};

const s32 anim_0661__v2_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C8CF, 56,
    -6, 0, (((-25 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    10, 5,

    -1, 0x1C907, 56,
    -6, 0, (((-25 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((6 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((18 & 0xFF) << 24)),
    10, 6,

    -1, 0x1C80F, 64,
    10, 0,

    -4,
};

const s32 anim_0661__v3_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C8CF, 56,
    -6, 0, (((-25 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((25 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 5,

    -4,
};

const s32 * const anim_0661[4] = {
    anim_0661__v0_l0,
    anim_0661__v1_l0,
    anim_0661__v2_l0,
    anim_0661__v3_l0,
};

const s32 anim_0662__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C93F, 15,
    -6, 0, (((-16 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0662__v1_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C93F, 15,
    -6, 0, (((-19 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    8, 1,

    -1, 0x1C94E, 15,
    -6, 0, (((-18 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    8, 2,

    -1, 0x1C95D, 15,
    -6, 0, (((-20 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    8, 3,

    -1, 0x1C94E, 15,
    -6, 0, (((-18 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    8, 4,

    -1, 0x1C93F, 15,
    -6, 0, (((-20 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    8, 0,

    -4,
};

const s32 anim_0662__v2_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C96C, 20,
    6, 5,

    -1, 0x1C980, 20,
    6, 6,

    -1, 0x1C994, 25,
    6, 7,

    -4,
};

const s32 anim_0662__v3_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1C994, 25,
    6, 7,

    -1, 0x1C980, 20,
    6, 6,

    -1, 0x1C96C, 20,
    6, 5,

    -1, 0x1C93F, 15,
    -6, 0, (((-16 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((9 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0662[4] = {
    anim_0662__v0_l0,
    anim_0662__v1_l0,
    anim_0662__v2_l0,
    anim_0662__v3_l0,
};

const s32 anim_0663__v0_l0[] = {
    -2, 75, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1C9AD, 20,
    -6, 0, (((-8 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 0,

    -1, 0x1C9C1, 32,
    -6, 0, (((-8 & 0xFF) << 0) | ((-44 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 1,

    -1, 0x1C9E1, 32,
    -6, 0, (((-8 & 0xFF) << 0) | ((-48 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    5, 2,

    -1, 0x1CA01, 32,
    -6, 0, (((-8 & 0xFF) << 0) | ((-41 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((-20 & 0xFF) << 24)),
    5, 3,

    -1, 0x1CA21, 32,
    -6, 0, (((0 & 0xFF) << 0) | ((71 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((71 & 0xFF) << 24)),
    5, 4,

    -1, 0x1CA41, 28,
    4, 5,

    -1, 0x1CA5D, 28,
    4, 6,

    -4,
};

const s32 * const anim_0663[1] = {
    anim_0663__v0_l0,
};

const s32 anim_0664__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CA79, 8,
    -6, 0, (((-6 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((-3 & 0xFF) << 24)),
    3, 0,

    -1, 0x1CA81, 8,
    3, 1,

    -1, 0x1CA89, 8,
    3, 2,

    -1, 0x1CA91, 8,
    3, 3,

    -3, 26,
};

const s32 * const anim_0664[1] = {
    anim_0664__v0_l0,
};

const s32 anim_0665__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CA99, 8,
    1, 0,

    -4,
};

const s32 * const anim_0665[1] = {
    anim_0665__v0_l0,
};

const s32 anim_0666__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CAA1, 9,
    -6, 0, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0666[1] = {
    anim_0666__v0_l0,
};

const s32 anim_0667__v0_l0[] = {
    -2, 140, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CAAA, 4,
    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0667[1] = {
    anim_0667__v0_l0,
};

const s32 anim_0668__v0_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CAAE, 8,
    1, 0,

    -4,
};

const s32 anim_0668__v1_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CAB6, 8,
    6, 1,

    -1, 0x1CABE, 8,
    6, 2,

    -1, 0x1CAB6, 8,
    6, 1,

    -1, 0x1CABE, 8,
    6, 2,

    -1, 0x1CAB6, 8,
    6, 1,

    -1, 0x1CABE, 8,
    6, 2,

    -4,
};

const s32 anim_0668__v2_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CAC6, 8,
    8, 3,

    -1, 0x1CACE, 8,
    4, 4,

    -1, 0x1CAC6, 8,
    8, 3,

    -1, 0x1CACE, 8,
    4, 4,

    -1, 0x1CAC6, 8,
    8, 3,

    -1, 0x1CACE, 8,
    4, 4,

    -4,
};

const s32 anim_0668__v3_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CAAE, 8,
    8, 0,

    -1, 0x1CAD6, 8,
    8, 5,

    -1, 0x1CADE, 8,
    8, 6,

    -1, 0x1CAD6, 8,
    8, 7,

    -1, 0x1CAAE, 8,
    8, 8,

    -4,
};

const s32 anim_0668__v4_l0[] = {
    -2, 134, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CAE6, 8,
    1, 9,

    -4,
};

const s32 * const anim_0668[5] = {
    anim_0668__v0_l0,
    anim_0668__v1_l0,
    anim_0668__v2_l0,
    anim_0668__v3_l0,
    anim_0668__v4_l0,
};

const s32 anim_0669__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CAEE, 36,
    -6, 0, (((-14 & 0xFF) << 0) | ((-30 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((-10 & 0xFF) << 24)),
    -6, 1, (((-18 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    -6, 2, (((-15 & 0xFF) << 0) | ((5 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0669[1] = {
    anim_0669__v0_l0,
};

const s32 anim_0670__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CB12, 20,
    -6, 0, (((-17 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((17 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    -6, 1, (((-10 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((10 & 0xFF) << 16) | ((-7 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0670[1] = {
    anim_0670__v0_l0,
};

const s32 anim_0671__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1CB26, 25,
    -6, 0, (((-14 & 0xFF) << 0) | ((-20 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    -6, 1, (((-15 & 0xFF) << 0) | ((7 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0671[1] = {
    anim_0671__v0_l0,
};

const s32 anim_0672__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CB3F, 25,
    1, 0,

    -4,
};

const s32 anim_0672__v1_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CB3F, 25,
    20, 0,

    -1, 0x1CB58, 25,
    8, 1,

    -1, 0x1CB71, 36,
    4, 2,

    -1, 0x1CB95, 42,
    -6, 0, (((-53 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((-3 & 0xFF) << 16) | ((26 & 0xFF) << 24)),
    -6, 1, (((-25 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((-14 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    12, 3,

    -4,
};

const s32 anim_0672__v2_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CB71, 36,
    8, 2,

    -1, 0x1CB3F, 25,
    10, 0,

    -4,
};

const s32 * const anim_0672[3] = {
    anim_0672__v0_l0,
    anim_0672__v1_l0,
    anim_0672__v2_l0,
};

const s32 anim_0673__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBBF, 1,
    3, 0,

    -1, 0x1CBC0, 4,
    3, 1,

    -1, 0x1CBC4, 4,
    3, 2,

    -4,
};

const s32 * const anim_0673[1] = {
    anim_0673__v0_l0,
};

const s32 anim_0674__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBC8, 1,
    3, 0,

    -1, 0x1CBC9, 4,
    3, 1,

    -1, 0x1CBCD, 4,
    3, 2,

    -4,
};

const s32 * const anim_0674[1] = {
    anim_0674__v0_l0,
};

const s32 anim_0675__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBD1, 1,
    3, 0,

    -1, 0x1CBD2, 4,
    3, 1,

    -1, 0x1CBD6, 4,
    3, 2,

    -4,
};

const s32 * const anim_0675[1] = {
    anim_0675__v0_l0,
};

const s32 anim_0676__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBDA, 1,
    3, 0,

    -1, 0x1CBDB, 4,
    3, 1,

    -1, 0x1CBDF, 4,
    3, 2,

    -4,
};

const s32 * const anim_0676[1] = {
    anim_0676__v0_l0,
};

const s32 anim_0677__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBE3, 2,
    3, 0,

    -1, 0x1CBE5, 2,
    3, 1,

    -1, 0x1CBE7, 2,
    3, 2,

    -4,
};

const s32 * const anim_0677[1] = {
    anim_0677__v0_l0,
};

const s32 anim_0678__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBE9, 2,
    3, 0,

    -1, 0x1CBEB, 2,
    3, 1,

    -1, 0x1CBED, 2,
    3, 2,

    -4,
};

const s32 * const anim_0678[1] = {
    anim_0678__v0_l0,
};

const s32 anim_0679__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBEF, 2,
    3, 0,

    -1, 0x1CBF1, 2,
    3, 1,

    -1, 0x1CBF3, 2,
    3, 2,

    -4,
};

const s32 * const anim_0679[1] = {
    anim_0679__v0_l0,
};

const s32 anim_0680__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBF5, 2,
    3, 0,

    -1, 0x1CBF7, 2,
    3, 1,

    -1, 0x1CBF9, 2,
    3, 2,

    -4,
};

const s32 * const anim_0680[1] = {
    anim_0680__v0_l0,
};

const s32 anim_0681__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CBFB, 4,
    1, 0,

    -4,
};

const s32 * const anim_0681[1] = {
    anim_0681__v0_l0,
};

const s32 anim_0682__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1CBFF, 64,
    1, 0,

    -4,
};

const s32 * const anim_0682[1] = {
    anim_0682__v0_l0,
};

const s32 anim_0683__v0_l0[] = {
    -2, 141, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CC3F, 4,
    4, 0,

    -1, 0x1CC43, 4,
    4, 1,

    -1, 0x1CC47, 4,
    4, 2,

    -3, 18,
};

const s32 * const anim_0683[1] = {
    anim_0683__v0_l0,
};

const s32 anim_0684__v0_l0[] = {
    -2, 142, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CC4B, 8,
    1, 0,

    -4,
};

const s32 anim_0684__v1_l0[] = {
    -2, 142, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CC53, 8,
    6, 1,

    -1, 0x1CC5B, 8,
    6, 2,

    -1, 0x1CC53, 8,
    6, 1,

    -1, 0x1CC5B, 8,
    6, 2,

    -1, 0x1CC53, 8,
    6, 1,

    -1, 0x1CC5B, 8,
    6, 2,

    -4,
};

const s32 anim_0684__v2_l0[] = {
    -2, 142, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CC63, 8,
    8, 3,

    -1, 0x1CC6B, 8,
    4, 4,

    -1, 0x1CC63, 8,
    8, 3,

    -1, 0x1CC6B, 8,
    4, 4,

    -1, 0x1CC63, 8,
    8, 3,

    -1, 0x1CC6B, 8,
    4, 4,

    -4,
};

const s32 anim_0684__v3_l0[] = {
    -2, 142, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CC73, 8,
    1, 5,

    -4,
};

const s32 * const anim_0684[4] = {
    anim_0684__v0_l0,
    anim_0684__v1_l0,
    anim_0684__v2_l0,
    anim_0684__v3_l0,
};

const s32 anim_0685__v0_l0[] = {
    -2, 143, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1CC7B, 196,
    1, 0,

    -4,
};

const s32 * const anim_0685[1] = {
    anim_0685__v0_l0,
};

const s32 anim_0686__v0_l0[] = {
    -2, 143, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -2, 144, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -2, 145, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -2, 146, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -2, 147, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -2, 148, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -2, 149, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 35,
};

const s32 * const anim_0686[1] = {
    anim_0686__v0_l0,
};

const s32 anim_0687__v0_l0[] = {
    -2, 150, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CD3F, 42,
    -6, 0, (((-16 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    -6, 1, (((-23 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    3, 0,

    -4,
};

const s32 anim_0687__v1_l0[] = {
    -2, 150, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CD69, 42,
    -6, 0, (((-16 & 0xFF) << 0) | ((-23 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    -6, 1, (((-23 & 0xFF) << 0) | ((-10 & 0xFF) << 8) | ((23 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    3, 1,

    -1, 0x1CD3F, 42,
    3, 0,

    -1, 0x1CD93, 42,
    3, 2,

    -3, 24,
};

const s32 * const anim_0687[2] = {
    anim_0687__v0_l0,
    anim_0687__v1_l0,
};

const s32 anim_0688__v0_l0[] = {
    -2, 150, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CDBD, 4,
    3, 0,

    -1, 0x1CDC1, 4,
    3, 1,

    -1, 0x1CDC5, 4,
    3, 2,

    -1, 0x1CDC9, 4,
    3, 3,

    -1, 0x1CDCD, 4,
    3, 4,

    -4,
};

const s32 * const anim_0688[1] = {
    anim_0688__v0_l0,
};

const s32 anim_0689__v0_l0[] = {
    -2, 150, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CDD1, 4,
    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    1, 0,

    -1, 0x1CDD5, 4,
    1, 1,

    -1, 0x1CDD9, 4,
    1, 2,

    -1, 0x1CDDD, 4,
    1, 3,

    -3, 26,
};

const s32 * const anim_0689[1] = {
    anim_0689__v0_l0,
};

const s32 anim_0690__v0_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CDE1, 12,
    -6, 0, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0690__v1_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CDED, 12,
    1, 1,

    -4,
};

const s32 anim_0690__v2_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CDE1, 12,
    -6, 0, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 0,

    -1, 0x1CDED, 12,
    4, 1,

    -3, 16,
};

const s32 anim_0690__v3_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CDF9, 18,
    -6, 0, (((-24 & 0xFF) << 0) | ((-16 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    5, 2,

    -1, 0x1CE0B, 24,
    3, 3,

    -1, 0x1CE23, 24,
    5, 4,

    -4,
};

const s32 anim_0690__v4_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CE3B, 64,
    1, 5,

    -4,
};

const s32 * const anim_0690[5] = {
    anim_0690__v0_l0,
    anim_0690__v1_l0,
    anim_0690__v2_l0,
    anim_0690__v3_l0,
    anim_0690__v4_l0,
};

const s32 anim_0691__v0_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CE7B, 12,
    -6, 0, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0691__v1_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CE87, 64,
    1, 1,

    -4,
};

const s32 anim_0691__v2_l0[] = {
    -2, 151, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CE7B, 12,
    -6, 0, (((-24 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((24 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    2, 0,

    -1, 0x1CEC7, 12,
    4, 2,

    -3, 16,
};

const s32 * const anim_0691[3] = {
    anim_0691__v0_l0,
    anim_0691__v1_l0,
    anim_0691__v2_l0,
};

const s32 anim_0692__v0_l0[] = {
    -2, 150, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1CED3, 4,
    10, 0,

    -1, 0x1CED7, 4,
    10, 1,

    -3, 13,
};

const s32 * const anim_0692[1] = {
    anim_0692__v0_l0,
};

const s32 anim_0693__v0_l0[] = {
    -2, 152, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CEDB, 8,
    -6, 0, (((8 & 0xFF) << 0) | ((33 & 0xFF) << 8) | ((9 & 0xFF) << 16) | ((33 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0693__v1_l0[] = {
    -2, 152, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CEE3, 8,
    6, 1,

    -1, 0x1CEEB, 8,
    6, 2,

    -1, 0x1CEE3, 8,
    6, 1,

    -1, 0x1CEEB, 8,
    6, 2,

    -1, 0x1CEE3, 8,
    6, 1,

    -1, 0x1CEEB, 8,
    6, 2,

    -4,
};

const s32 anim_0693__v2_l0[] = {
    -2, 152, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CEF3, 8,
    8, 3,

    -1, 0x1CEFB, 8,
    4, 4,

    -1, 0x1CEF3, 8,
    8, 3,

    -1, 0x1CEFB, 8,
    4, 4,

    -1, 0x1CEF3, 8,
    8, 3,

    -1, 0x1CEFB, 8,
    4, 4,

    -4,
};

const s32 anim_0693__v3_l0[] = {
    -2, 152, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1CF03, 8,
    1, 5,

    -4,
};

const s32 * const anim_0693[4] = {
    anim_0693__v0_l0,
    anim_0693__v1_l0,
    anim_0693__v2_l0,
    anim_0693__v3_l0,
};

const s32 anim_0694__v0_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1CF0B, 64,
    -6, 0, (((-19 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0694__v1_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1CF4B, 64,
    -6, 0, (((-19 & 0xFF) << 0) | ((-22 & 0xFF) << 8) | ((19 & 0xFF) << 16) | ((22 & 0xFF) << 24)),
    6, 1,

    -1, 0x1CF8B, 64,
    6, 2,

    -1, 0x1CF4B, 64,
    6, 1,

    -1, 0x1CF8B, 64,
    6, 2,

    -1, 0x1CF4B, 64,
    6, 1,

    -1, 0x1CF8B, 64,
    6, 2,

    -3, 36,
};

const s32 anim_0694__v2_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1CFCB, 64,
    5, 3,

    -1, 0x1D00B, 64,
    3, 4,

    -1, 0x1CFCB, 64,
    5, 3,

    -1, 0x1D00B, 64,
    3, 4,

    -1, 0x1CFCB, 64,
    5, 3,

    -1, 0x1D00B, 64,
    3, 4,

    -3, 33,
};

const s32 anim_0694__v3_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1D04B, 64,
    1, 5,

    -4,
};

const s32 anim_0694__v4_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1D08B, 64,
    1, 6,

    -4,
};

const s32 * const anim_0694[5] = {
    anim_0694__v0_l0,
    anim_0694__v1_l0,
    anim_0694__v2_l0,
    anim_0694__v3_l0,
    anim_0694__v4_l0,
};

const s32 anim_0695__v0_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1D0CB, 64,
    1, 0,

    -4,
};

const s32 * const anim_0695[1] = {
    anim_0695__v0_l0,
};

const s32 anim_0696__v0_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1D10B, 64,
    1, 0,

    -4,
};

const s32 * const anim_0696[1] = {
    anim_0696__v0_l0,
};

const s32 anim_0697__v0_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D14B, 12,
    1, 0,

    -1, 0x1D157, 12,
    1, 1,

    -1, 0x1D163, 12,
    1, 2,

    -3, 18,
};

const s32 * const anim_0697[1] = {
    anim_0697__v0_l0,
};

const s32 anim_0698__v0_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D16F, 6,
    -6, 0, (((-6 & 0xFF) << 0) | ((-19 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    3, 0,

    -1, 0x1D175, 6,
    3, 1,

    -1, 0x1D17B, 6,
    3, 2,

    -1, 0x1D181, 6,
    3, 3,

    -3, 26,
};

const s32 * const anim_0698[1] = {
    anim_0698__v0_l0,
};

const s32 anim_0699__v0_l0[] = {
    -1, 0x1D187, 33,
    -2, 75, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -6, 0, (((-3 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    5, 0,

    -6, 0, (((-3 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    5, 1,

    -6, 0, (((-3 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    5, 2,

    -6, 0, (((-3 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    5, 3,

    -6, 0, (((-3 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    5, 4,

    -6, 0, (((-3 & 0xFF) << 0) | ((-25 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    4, 5,

    -6, 0, (((-3 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    4, 6,

    -6, 0, (((-3 & 0xFF) << 0) | ((-21 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    4, 7,

    -6, 0, (((-3 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    4, 8,

    -6, 0, (((-3 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    4, 9,

    -4,
};

const s32 * const anim_0699[1] = {
    anim_0699__v0_l0,
};

const s32 anim_0700__v0_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D1A8, 4,
    -6, 0, (((-2 & 0xFF) << 0) | ((-2 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0700__v1_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D1AC, 4,
    1, 1,

    -4,
};

const s32 anim_0700__v2_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D1B0, 4,
    1, 2,

    -4,
};

const s32 anim_0700__v3_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D1B4, 4,
    1, 3,

    -4,
};

const s32 anim_0700__v4_l0[] = {
    -2, 153, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D1B8, 4,
    1, 4,

    -4,
};

const s32 * const anim_0700[5] = {
    anim_0700__v0_l0,
    anim_0700__v1_l0,
    anim_0700__v2_l0,
    anim_0700__v3_l0,
    anim_0700__v4_l0,
};

const s32 anim_0701__v0_l0[] = {
    -2, 154, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1D1BC, 15,
    -6, 0, (((-20 & 0xFF) << 0) | ((-24 & 0xFF) << 8) | ((20 & 0xFF) << 16) | ((-10 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0701[1] = {
    anim_0701__v0_l0,
};

const s32 anim_0702__v0_l0[] = {
    -2, 154, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1D1CB, 32,
    -6, 0, (((-16 & 0xFF) << 0) | ((-64 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0702[1] = {
    anim_0702__v0_l0,
};

const s32 anim_0703__v0_l0[] = {
    -2, 155, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1D1EB, 64,
    1, 0,

    -4,
};

const s32 anim_0703__v1_l0[] = {
    -2, 155, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1D1EB, 64,
    2, 0,

    -1, 0x1D22B, 64,
    2, 1,

    -1, 0x1D26B, 64,
    2, 2,

    -1, 0x1D2AB, 64,
    2, 3,

    -3, 23,
};

const s32 anim_0703__v2_l0[] = {
    -2, 155, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1D2EB, 64,
    -6, 0, (((1 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 * const anim_0703[3] = {
    anim_0703__v0_l0,
    anim_0703__v1_l0,
    anim_0703__v2_l0,
};

const s32 anim_0704__v0_l0[] = {
    -2, 155, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1D32B, 64,
    1, 0,

    -4,
};

const s32 anim_0704__v1_l0[] = {
    -2, 155, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1D32B, 64,
    2, 0,

    -1, 0x1D36B, 64,
    2, 1,

    -1, 0x1D3AB, 64,
    2, 2,

    -1, 0x1D3EB, 64,
    2, 3,

    -3, 23,
};

const s32 anim_0704__v2_l0[] = {
    -2, 155, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1D42B, 64,
    1, 4,

    -4,
};

const s32 * const anim_0704[3] = {
    anim_0704__v0_l0,
    anim_0704__v1_l0,
    anim_0704__v2_l0,
};

const s32 anim_0705__v0_l0[] = {
    -2, 156, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D46B, 64,
    -6, 0, (((-16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((17 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0705__v1_l0[] = {
    -2, 156, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D46B, 64,
    -6, 0, (((-16 & 0xFF) << 0) | ((-17 & 0xFF) << 8) | ((18 & 0xFF) << 16) | ((17 & 0xFF) << 24)),
    3, 0,

    -1, 0x1D4AB, 64,
    3, 1,

    -1, 0x1D4EB, 64,
    3, 2,

    -1, 0x1D4AB, 64,
    3, 1,

    -1, 0x1D46B, 64,
    -6, 0, (((-16 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((-6 & 0xFF) << 24)),
    3, 0,

    -4,
};

const s32 anim_0705__v2_l0[] = {
    -2, 156, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D52B, 64,
    1, 3,

    -4,
};

const s32 anim_0705__v3_l0[] = {
    -2, 156, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D56B, 64,
    2, 4,

    -1, 0x1D5AB, 64,
    2, 5,

    -3, 13,
};

const s32 * const anim_0705[4] = {
    anim_0705__v0_l0,
    anim_0705__v1_l0,
    anim_0705__v2_l0,
    anim_0705__v3_l0,
};

const s32 anim_0706__v0_l0[] = {
    -2, 156, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D5EB, 1,
    1, 0,

    -4,
};

const s32 * const anim_0706[1] = {
    anim_0706__v0_l0,
};

const s32 anim_0707__v0_l0[] = {
    -1, 0x1D5EC, 32,
    -2, 154, (((u16)16 << 0) | ((u16)0x80 << 16)),
    2, 0,

    2, 1,

    2, 2,

    2, 3,

    2, 4,

    2, 5,

    2, 6,

    2, 7,

    -4,
};

const s32 * const anim_0707[1] = {
    anim_0707__v0_l0,
};

const s32 anim_0708__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1D60C, 90,
    1, 0,

    -4,
};

const s32 * const anim_0708[1] = {
    anim_0708__v0_l0,
};

const s32 anim_0709__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D666, 64,
    1, 0,

    -4,
};

const s32 * const anim_0709[1] = {
    anim_0709__v0_l0,
};

const s32 anim_0710__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D6A6, 64,
    1, 0,

    -4,
};

const s32 * const anim_0710[1] = {
    anim_0710__v0_l0,
};

const s32 anim_0711__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D6E6, 64,
    1, 0,

    -4,
};

const s32 * const anim_0711[1] = {
    anim_0711__v0_l0,
};

const s32 anim_0712__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D726, 64,
    1, 0,

    -4,
};

const s32 * const anim_0712[1] = {
    anim_0712__v0_l0,
};

const s32 anim_0713__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D766, 16,
    4, 0,

    -1, 0x1D776, 16,
    4, 1,

    -1, 0x1D786, 16,
    4, 2,

    -1, 0x1D796, 16,
    4, 3,

    -4,
};

const s32 * const anim_0713[1] = {
    anim_0713__v0_l0,
};

const s32 anim_0714__v0_l0[] = {
    -1, 0x1D7A6, 32,
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    2, 0,

    2, 1,

    2, 2,

    2, 3,

    2, 4,

    2, 5,

    2, 6,

    2, 7,

    -3, 19,
};

const s32 * const anim_0714[1] = {
    anim_0714__v0_l0,
};

const s32 anim_0715__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D7C6, 6,
    3, 0,

    -1, 0x1D7CC, 6,
    3, 1,

    -1, 0x1D7D2, 6,
    3, 2,

    -1, 0x1D7D8, 9,
    3, 3,

    -1, 0x1D7E1, 9,
    10, 4,

    -1, 0x1D7D8, 9,
    3, 3,

    -1, 0x1D7D2, 6,
    3, 2,

    -1, 0x1D7CC, 6,
    3, 1,

    -1, 0x1D7C6, 6,
    3, 0,

    -3, 48,
};

const s32 * const anim_0715[1] = {
    anim_0715__v0_l0,
};

const s32 anim_0716__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D7EA, 8,
    -6, 1, (((-3 & 0xFF) << 0) | ((-15 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 0,

    -1, 0x1D7F2, 8,
    1, 1,

    -3, 16,
};

const s32 anim_0716__v1_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D7FA, 8,
    -6, 1, (((-6 & 0xFF) << 0) | ((-13 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 2,

    -1, 0x1D802, 8,
    1, 3,

    -3, 16,
};

const s32 anim_0716__v2_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D80A, 16,
    -6, 1, (((-10 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 4,

    -1, 0x1D81A, 16,
    1, 5,

    -3, 16,
};

const s32 anim_0716__v3_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D82A, 8,
    -6, 1, (((-13 & 0xFF) << 0) | ((-7 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    1, 6,

    -1, 0x1D832, 8,
    1, 7,

    -3, 16,
};

const s32 anim_0716__v4_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D83A, 8,
    -6, 1, (((-15 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((3 & 0xFF) << 24)),
    1, 8,

    -1, 0x1D842, 8,
    1, 9,

    -3, 16,
};

const s32 anim_0716__v5_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D84A, 8,
    -6, 1, (((-14 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((6 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 10,

    -1, 0x1D852, 8,
    1, 11,

    -3, 16,
};

const s32 anim_0716__v6_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D85A, 16,
    -6, 1, (((-11 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((5 & 0xFF) << 16) | ((10 & 0xFF) << 24)),
    1, 12,

    -1, 0x1D86A, 16,
    1, 13,

    -3, 16,
};

const s32 anim_0716__v7_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D87A, 12,
    -6, 1, (((-8 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    1, 14,

    -1, 0x1D886, 12,
    1, 15,

    -3, 16,
};

const s32 anim_0716__v8_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D7EA, 8,
    -6, 1, (((-4 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((15 & 0xFF) << 24)),
    1, 16,

    -1, 0x1D7F2, 8,
    1, 17,

    -3, 16,
};

const s32 anim_0716__v9_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D7FA, 8,
    -6, 1, (((-5 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((7 & 0xFF) << 16) | ((14 & 0xFF) << 24)),
    1, 18,

    -1, 0x1D802, 8,
    1, 19,

    -3, 16,
};

const s32 anim_0716__v10_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D80A, 16,
    -6, 1, (((-6 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((11 & 0xFF) << 16) | ((12 & 0xFF) << 24)),
    1, 20,

    -1, 0x1D81A, 16,
    1, 21,

    -3, 16,
};

const s32 anim_0716__v11_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D82A, 8,
    -6, 1, (((-6 & 0xFF) << 0) | ((-5 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((8 & 0xFF) << 24)),
    1, 22,

    -1, 0x1D832, 8,
    1, 23,

    -3, 16,
};

const s32 anim_0716__v12_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D83A, 8,
    -6, 1, (((-6 & 0xFF) << 0) | ((-3 & 0xFF) << 8) | ((15 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    1, 24,

    -1, 0x1D842, 8,
    1, 25,

    -3, 16,
};

const s32 anim_0716__v13_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D84A, 8,
    -6, 1, (((-6 & 0xFF) << 0) | ((-6 & 0xFF) << 8) | ((14 & 0xFF) << 16) | ((5 & 0xFF) << 24)),
    1, 26,

    -1, 0x1D852, 8,
    1, 27,

    -3, 16,
};

const s32 anim_0716__v14_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D85A, 16,
    -6, 1, (((-5 & 0xFF) << 0) | ((-11 & 0xFF) << 8) | ((12 & 0xFF) << 16) | ((6 & 0xFF) << 24)),
    1, 28,

    -1, 0x1D86A, 16,
    1, 29,

    -3, 16,
};

const s32 anim_0716__v15_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D87A, 12,
    -6, 1, (((-4 & 0xFF) << 0) | ((-14 & 0xFF) << 8) | ((8 & 0xFF) << 16) | ((7 & 0xFF) << 24)),
    1, 30,

    -1, 0x1D886, 12,
    1, 31,

    -3, 16,
};

const s32 * const anim_0716[16] = {
    anim_0716__v0_l0,
    anim_0716__v1_l0,
    anim_0716__v2_l0,
    anim_0716__v3_l0,
    anim_0716__v4_l0,
    anim_0716__v5_l0,
    anim_0716__v6_l0,
    anim_0716__v7_l0,
    anim_0716__v8_l0,
    anim_0716__v9_l0,
    anim_0716__v10_l0,
    anim_0716__v11_l0,
    anim_0716__v12_l0,
    anim_0716__v13_l0,
    anim_0716__v14_l0,
    anim_0716__v15_l0,
};

const s32 anim_0717__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D892, 9,
    3, 0,

    -1, 0x1D89B, 9,
    3, 1,

    -1, 0x1D8A4, 9,
    3, 2,

    -1, 0x1D8AD, 4,
    3, 3,

    -1, 0x1D8B1, 1,
    3, 4,

    -4,
};

const s32 * const anim_0717[1] = {
    anim_0717__v0_l0,
};

const s32 anim_0718__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1D8B2, 16,
    -6, 0, (((-5 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((3 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 0,

    -1, 0x1D8C2, 16,
    2, 1,

    -1, 0x1D8D2, 16,
    2, 2,

    -1, 0x1D8E2, 16,
    2, 3,

    -3, 26,
};

const s32 * const anim_0718[1] = {
    anim_0718__v0_l0,
};

const s32 anim_0719__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D8F2, 4,
    -6, 0, (((-4 & 0xFF) << 0) | ((-4 & 0xFF) << 8) | ((4 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    2, 0,

    -1, 0x1D8F6, 4,
    -6, 0, (((0 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    2, 1,

    -3, 19,
};

const s32 * const anim_0719[1] = {
    anim_0719__v0_l0,
};

const s32 anim_0720__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D8FA, 1,
    3, 0,

    -1, 0x1D8FB, 1,
    3, 1,

    -1, 0x1D8FC, 1,
    3, 2,

    -1, 0x1D8FD, 1,
    3, 3,

    -1, 0x1D8FE, 1,
    3, 4,

    -3, 28,
};

const s32 * const anim_0720[1] = {
    anim_0720__v0_l0,
};

const s32 anim_0721__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D8FF, 1,
    3, 0,

    -1, 0x1D900, 1,
    3, 1,

    -1, 0x1D901, 1,
    3, 2,

    -1, 0x1D902, 1,
    3, 3,

    -1, 0x1D903, 1,
    3, 4,

    -3, 28,
};

const s32 * const anim_0721[1] = {
    anim_0721__v0_l0,
};

const s32 anim_0722__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1D904, 1,
    3, 0,

    -1, 0x1D905, 1,
    3, 1,

    -1, 0x1D906, 1,
    3, 2,

    -1, 0x1D907, 1,
    3, 3,

    -1, 0x1D908, 1,
    3, 4,

    -3, 28,
};

const s32 * const anim_0722[1] = {
    anim_0722__v0_l0,
};

const s32 anim_0723__v0_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D909, 16,
    1, 0,

    -4,
};

const s32 anim_0723__v1_l0[] = {
    -2, 157, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D919, 16,
    1, 1,

    -4,
};

const s32 anim_0723__v2_l0[] = {
    -2, 158, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D929, 64,
    1, 2,

    -4,
};

const s32 * const anim_0723[3] = {
    anim_0723__v0_l0,
    anim_0723__v1_l0,
    anim_0723__v2_l0,
};

const s32 anim_0724__v0_l0[] = {
    -1, 0x1D969, 16,
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -6, 0, (((-13 & 0xFF) << 0) | ((-27 & 0xFF) << 8) | ((13 & 0xFF) << 16) | ((1 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_0724[1] = {
    anim_0724__v0_l0,
};

const s32 anim_0725__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D979, 4,
    1, 0,

    -4,
};

const s32 anim_0725__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D97D, 4,
    1, 1,

    -4,
};

const s32 anim_0725__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D981, 4,
    1, 2,

    -4,
};

const s32 anim_0725__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D985, 4,
    1, 3,

    -4,
};

const s32 anim_0725__v4_l0[] = {
    -2, 159, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D989, 4,
    1, 4,

    -4,
};

const s32 anim_0725__v5_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1D98D, 4,
    1, 5,

    -4,
};

const s32 anim_0725__v6_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D991, 4,
    1, 6,

    -4,
};

const s32 anim_0725__v7_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D995, 4,
    1, 7,

    -4,
};

const s32 anim_0725__v8_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D999, 4,
    1, 8,

    -4,
};

const s32 anim_0725__v9_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D99D, 4,
    1, 9,

    -4,
};

const s32 anim_0725__v10_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9A1, 4,
    1, 10,

    -4,
};

const s32 anim_0725__v11_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9A5, 4,
    1, 11,

    -4,
};

const s32 anim_0725__v12_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9A9, 4,
    1, 12,

    -4,
};

const s32 anim_0725__v13_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D9AD, 4,
    1, 13,

    -4,
};

const s32 anim_0725__v14_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D9B1, 4,
    1, 14,

    -4,
};

const s32 anim_0725__v15_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x1D9B5, 4,
    1, 15,

    -4,
};

const s32 anim_0725__v16_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1D9B9, 4,
    1, 16,

    -4,
};

const s32 * const anim_0725[17] = {
    anim_0725__v0_l0,
    anim_0725__v1_l0,
    anim_0725__v2_l0,
    anim_0725__v3_l0,
    anim_0725__v4_l0,
    anim_0725__v5_l0,
    anim_0725__v6_l0,
    anim_0725__v7_l0,
    anim_0725__v8_l0,
    anim_0725__v9_l0,
    anim_0725__v10_l0,
    anim_0725__v11_l0,
    anim_0725__v12_l0,
    anim_0725__v13_l0,
    anim_0725__v14_l0,
    anim_0725__v15_l0,
    anim_0725__v16_l0,
};

const s32 anim_0726__v0_l0[] = {
    -1, 0x1D9BD, 16,
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    8, 0,

    8, 1,

    8, 2,

    8, 3,

    -3, 11,
};

const s32 * const anim_0726[1] = {
    anim_0726__v0_l0,
};

const s32 anim_0727__v0_l0[] = {
    -1, 0x1D9CD, 16,
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -5, 117,
    4, 0,

    4, 1,

    4, 2,

    4, 3,

    -4,
};

const s32 * const anim_0727[1] = {
    anim_0727__v0_l0,
};

const s32 anim_0728__v0_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9DD, 2,
    1, 0,

    -4,
};

const s32 anim_0728__v1_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9DF, 2,
    1, 1,

    -4,
};

const s32 anim_0728__v2_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9E1, 2,
    1, 2,

    -4,
};

const s32 anim_0728__v3_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9E3, 2,
    1, 3,

    -4,
};

const s32 anim_0728__v4_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9E5, 2,
    1, 4,

    -4,
};

const s32 * const anim_0728[5] = {
    anim_0728__v0_l0,
    anim_0728__v1_l0,
    anim_0728__v2_l0,
    anim_0728__v3_l0,
    anim_0728__v4_l0,
};

const s32 anim_0729__v0_l0[] = {
    -2, 162, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1D9E7, 9,
    1, 0,

    -4,
};

const s32 * const anim_0729[1] = {
    anim_0729__v0_l0,
};

const s32 anim_0730__v0_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1D9F0, 9,
    -6, 0, (((-16 & 0xFF) << 0) | ((-28 & 0xFF) << 8) | ((16 & 0xFF) << 16) | ((4 & 0xFF) << 24)),
    4, 0,

    -1, 0x1D9F9, 9,
    4, 1,

    -1, 0x1DA02, 9,
    4, 2,

    -1, 0x1DA0B, 9,
    4, 3,

    -1, 0x1DA14, 6,
    4, 4,

    -1, 0x1DA1A, 6,
    4, 5,

    -1, 0x1DA20, 9,
    4, 6,

    -1, 0x1DA29, 9,
    4, 7,

    -3, 46,
};

const s32 anim_0730__v1_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DA32, 9,
    4, 8,

    -1, 0x1DA3B, 9,
    4, 9,

    -1, 0x1DA44, 9,
    4, 10,

    -1, 0x1DA4D, 9,
    4, 11,

    -4,
};

const s32 * const anim_0730[2] = {
    anim_0730__v0_l0,
    anim_0730__v1_l0,
};

const s32 anim_0731__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DA56, 64,
    -6, 0, (((71 & 0xFF) << 0) | ((69 & 0xFF) << 8) | ((71 & 0xFF) << 16) | ((70 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 anim_0731__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DA96, 64,
    1, 1,

    -4,
};

const s32 anim_0731__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DAD6, 64,
    -6, 0, (((0 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    1, 2,

    -4,
};

const s32 anim_0731__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DB16, 64,
    1, 3,

    -4,
};

const s32 anim_0731__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DB56, 14,
    1, 4,

    -4,
};

const s32 * const anim_0731[5] = {
    anim_0731__v0_l0,
    anim_0731__v1_l0,
    anim_0731__v2_l0,
    anim_0731__v3_l0,
    anim_0731__v4_l0,
};

const s32 anim_0732__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DB64, 16,
    1, 0,

    -4,
};

const s32 anim_0732__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DB74, 16,
    1, 1,

    -4,
};

const s32 anim_0732__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DB84, 16,
    1, 2,

    -4,
};

const s32 anim_0732__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DB94, 16,
    1, 3,

    -4,
};

const s32 * const anim_0732[4] = {
    anim_0732__v0_l0,
    anim_0732__v1_l0,
    anim_0732__v2_l0,
    anim_0732__v3_l0,
};

const s32 anim_0733__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DBA4, 48,
    1, 0,

    -4,
};

const s32 * const anim_0733[1] = {
    anim_0733__v0_l0,
};

const s32 anim_0734__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DBD4, 3,
    1, 0,

    -4,
};

const s32 * const anim_0734[1] = {
    anim_0734__v0_l0,
};

const s32 anim_0735__v0_l0[] = {
    -2, 165, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x1DBD7, 26,
    1, 0,

    -4,
};

const s32 * const anim_0735[1] = {
    anim_0735__v0_l0,
};

const s32 anim_0736__v0_l0[] = {
    -2, 166, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1DBF1, 140,
    1, 0,

    -4,
};

const s32 anim_0736__v1_l0[] = {
    -2, 166, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x1DC7D, 140,
    5, 1,

    -1, 0x1DD09, 140,
    2, 2,

    -1, 0x1DD95, 140,
    15, 3,

    -4,
};

const s32 anim_0736__v2_l0[] = {
    -2, 167, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1DE21, 91,
    1, 4,

    -4,
};

const s32 anim_0736__v3_l0[] = {
    -2, 167, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1DE7C, 104,
    4, 5,

    -1, 0x1DEE4, 117,
    4, 6,

    -1, 0x1DF59, 130,
    4, 7,

    -1, 0x1DFDB, 130,
    4, 8,

    -1, 0x1E05D, 130,
    15, 9,

    -4,
};

const s32 anim_0736__v4_l0[] = {
    -2, 168, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1E0DF, 130,
    1, 10,

    -4,
};

const s32 anim_0736__v5_l0[] = {
    -2, 168, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1E161, 130,
    4, 11,

    -1, 0x1E1E3, 143,
    3, 12,

    -1, 0x1E272, 144,
    3, 13,

    -1, 0x1E302, 144,
    4, 14,

    -1, 0x1E392, 144,
    15, 15,

    -4,
};

const s32 anim_0736__v6_l0[] = {
    -2, 169, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1E422, 140,
    1, 16,

    -4,
};

const s32 anim_0736__v7_l0[] = {
    -2, 169, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1E4AE, 140,
    4, 17,

    -1, 0x1E53A, 140,
    3, 18,

    -1, 0x1E5C6, 140,
    2, 19,

    -1, 0x1E652, 140,
    15, 20,

    -4,
};

const s32 anim_0736__v8_l0[] = {
    -2, 170, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1E6DE, 130,
    1, 21,

    -4,
};

const s32 anim_0736__v9_l0[] = {
    -2, 170, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1E760, 130,
    4, 22,

    -1, 0x1E7E2, 130,
    4, 23,

    -1, 0x1E864, 130,
    4, 24,

    -1, 0x1E8E6, 130,
    5, 25,

    -1, 0x1E968, 130,
    15, 26,

    -4,
};

const s32 anim_0736__v10_l0[] = {
    -2, 171, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1E9EA, 35,
    1, 27,

    -4,
};

const s32 anim_0736__v11_l0[] = {
    -2, 171, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1EA0D, 35,
    3, 28,

    -1, 0x1EA30, 35,
    3, 29,

    -1, 0x1EA53, 35,
    3, 30,

    -1, 0x1EA76, 35,
    2, 31,

    -1, 0x1EA99, 35,
    15, 32,

    -4,
};

const s32 * const anim_0736[12] = {
    anim_0736__v0_l0,
    anim_0736__v1_l0,
    anim_0736__v2_l0,
    anim_0736__v3_l0,
    anim_0736__v4_l0,
    anim_0736__v5_l0,
    anim_0736__v6_l0,
    anim_0736__v7_l0,
    anim_0736__v8_l0,
    anim_0736__v9_l0,
    anim_0736__v10_l0,
    anim_0736__v11_l0,
};

const s32 anim_0737__v0_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EABC, 16,
    1, 0,

    -4,
};

const s32 anim_0737__v1_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EACC, 16,
    1, 1,

    -4,
};

const s32 anim_0737__v2_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EADC, 16,
    1, 2,

    -4,
};

const s32 anim_0737__v3_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EAEC, 16,
    1, 3,

    -4,
};

const s32 anim_0737__v4_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EAFC, 16,
    1, 4,

    -4,
};

const s32 anim_0737__v5_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EB0C, 64,
    1, 5,

    -4,
};

const s32 anim_0737__v6_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EB4C, 64,
    1, 6,

    -4,
};

const s32 anim_0737__v7_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EB8C, 64,
    1, 7,

    -4,
};

const s32 anim_0737__v8_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EBCC, 64,
    1, 8,

    -4,
};

const s32 anim_0737__v9_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EC0C, 64,
    1, 9,

    -4,
};

const s32 * const anim_0737[10] = {
    anim_0737__v0_l0,
    anim_0737__v1_l0,
    anim_0737__v2_l0,
    anim_0737__v3_l0,
    anim_0737__v4_l0,
    anim_0737__v5_l0,
    anim_0737__v6_l0,
    anim_0737__v7_l0,
    anim_0737__v8_l0,
    anim_0737__v9_l0,
};

const s32 anim_0738__v0_l0[] = {
    -2, 173, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x1EC4C, 24,
    1, 0,

    -4,
};

const s32 anim_0738__v1_l0[] = {
    -2, 173, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x1EC64, 24,
    3, 1,

    -1, 0x1EC7C, 24,
    3, 2,

    -1, 0x1EC94, 24,
    3, 3,

    -1, 0x1ECAC, 24,
    3, 4,

    -3, 23,
};

const s32 * const anim_0738[2] = {
    anim_0738__v0_l0,
    anim_0738__v1_l0,
};

const s32 anim_0739__v0_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1ECC4, 64,
    1, 0,

    -4,
};

const s32 anim_0739__v1_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1ED04, 64,
    1, 1,

    -4,
};

const s32 anim_0739__v2_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1ED44, 64,
    1, 2,

    -4,
};

const s32 anim_0739__v3_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1ED84, 64,
    1, 3,

    -4,
};

const s32 anim_0739__v4_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EDC4, 64,
    1, 4,

    -4,
};

const s32 anim_0739__v5_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EE04, 64,
    1, 5,

    -4,
};

const s32 anim_0739__v6_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EE44, 64,
    1, 6,

    -4,
};

const s32 anim_0739__v7_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EE84, 64,
    1, 7,

    -4,
};

const s32 anim_0739__v8_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EEC4, 64,
    1, 8,

    -4,
};

const s32 anim_0739__v9_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EF04, 64,
    1, 9,

    -4,
};

const s32 anim_0739__v10_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EF44, 64,
    1, 10,

    -4,
};

const s32 anim_0739__v11_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x1EF84, 64,
    1, 11,

    -4,
};

const s32 * const anim_0739[12] = {
    anim_0739__v0_l0,
    anim_0739__v1_l0,
    anim_0739__v2_l0,
    anim_0739__v3_l0,
    anim_0739__v4_l0,
    anim_0739__v5_l0,
    anim_0739__v6_l0,
    anim_0739__v7_l0,
    anim_0739__v8_l0,
    anim_0739__v9_l0,
    anim_0739__v10_l0,
    anim_0739__v11_l0,
};

const s32 anim_0740__v0_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1EFC4, 54,
    1, 0,

    -4,
};

const s32 * const anim_0740[1] = {
    anim_0740__v0_l0,
};

const s32 anim_0741__v0_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1EFFA, 36,
    1, 0,

    -4,
};

const s32 anim_0741__v1_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F01E, 30,
    1, 1,

    -4,
};

const s32 anim_0741__v2_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F03C, 36,
    1, 2,

    -4,
};

const s32 anim_0741__v3_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F060, 36,
    1, 3,

    -4,
};

const s32 anim_0741__v4_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F084, 18,
    1, 4,

    -4,
};

const s32 anim_0741__v5_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F096, 12,
    1, 5,

    -4,
};

const s32 * const anim_0741[6] = {
    anim_0741__v0_l0,
    anim_0741__v1_l0,
    anim_0741__v2_l0,
    anim_0741__v3_l0,
    anim_0741__v4_l0,
    anim_0741__v5_l0,
};

const s32 anim_0742__v0_l0[] = {
    -2, 160, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1F0A2, 16,
    1, 0,

    -4,
};

const s32 * const anim_0742[1] = {
    anim_0742__v0_l0,
};

const s32 anim_0743__v0_l0[] = {
    -2, 175, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F0B2, 54,
    1, 0,

    -4,
};

const s32 * const anim_0743[1] = {
    anim_0743__v0_l0,
};

const s32 anim_0744__v0_l0[] = {
    -2, 175, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F0E8, 54,
    1, 0,

    -4,
};

const s32 * const anim_0744[1] = {
    anim_0744__v0_l0,
};

const s32 anim_0745__v0_l0[] = {
    -2, 175, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F11E, 54,
    1, 0,

    -4,
};

const s32 * const anim_0745[1] = {
    anim_0745__v0_l0,
};

const s32 anim_0746__v0_l0[] = {
    -2, 175, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F154, 54,
    1, 0,

    -4,
};

const s32 * const anim_0746[1] = {
    anim_0746__v0_l0,
};

const s32 anim_0747__v0_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F18A, 36,
    1, 0,

    -4,
};

const s32 anim_0747__v1_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F1AE, 32,
    1, 1,

    -4,
};

const s32 anim_0747__v2_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F1CE, 36,
    1, 2,

    -4,
};

const s32 anim_0747__v3_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F1F2, 36,
    1, 3,

    -4,
};

const s32 anim_0747__v4_l0[] = {
    -2, 174, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F216, 20,
    1, 4,

    -4,
};

const s32 * const anim_0747[5] = {
    anim_0747__v0_l0,
    anim_0747__v1_l0,
    anim_0747__v2_l0,
    anim_0747__v3_l0,
    anim_0747__v4_l0,
};

const s32 anim_0748__v0_l0[] = {
    -2, 175, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F22A, 54,
    1, 0,

    -4,
};

const s32 * const anim_0748[1] = {
    anim_0748__v0_l0,
};

const s32 anim_0749__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F260, 6,
    6, 0,

    -1, 0x1F266, 6,
    6, 1,

    -1, 0x1F26C, 6,
    6, 2,

    -1, 0x1F272, 6,
    6, 3,

    -1, 0x1F278, 6,
    6, 4,

    -4,
};

const s32 anim_0749__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F278, 6,
    1, 4,

    -4,
};

const s32 * const anim_0749[2] = {
    anim_0749__v0_l0,
    anim_0749__v1_l0,
};

const s32 anim_0750__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F27E, 12,
    6, 0,

    -1, 0x1F28A, 12,
    6, 1,

    -1, 0x1F296, 12,
    6, 2,

    -1, 0x1F2A2, 12,
    6, 3,

    -1, 0x1F2AE, 12,
    6, 4,

    -1, 0x1F2BA, 12,
    6, 5,

    -4,
};

const s32 anim_0750__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F2BA, 12,
    1, 5,

    -4,
};

const s32 * const anim_0750[2] = {
    anim_0750__v0_l0,
    anim_0750__v1_l0,
};

const s32 anim_0751__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F2C6, 4,
    6, 0,

    -1, 0x1F2CA, 4,
    6, 1,

    -1, 0x1F2CE, 6,
    6, 2,

    -1, 0x1F2D4, 8,
    6, 3,

    -1, 0x1F2DC, 10,
    6, 4,

    -1, 0x1F2E6, 10,
    6, 5,

    -1, 0x1F2F0, 10,
    6, 6,

    -4,
};

const s32 anim_0751__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F2F0, 10,
    1, 6,

    -4,
};

const s32 * const anim_0751[2] = {
    anim_0751__v0_l0,
    anim_0751__v1_l0,
};

const s32 anim_0752__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F2FA, 6,
    1, 0,

    -1, 0x1F300, 6,
    1, 1,

    -1, 0x1F306, 6,
    1, 2,

    -1, 0x1F30C, 6,
    1, 3,

    -1, 0x1F312, 6,
    1, 4,

    -4,
};

const s32 anim_0752__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F312, 6,
    1, 4,

    -4,
};

const s32 * const anim_0752[2] = {
    anim_0752__v0_l0,
    anim_0752__v1_l0,
};

const s32 anim_0753__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F318, 16,
    6, 0,

    -1, 0x1F328, 16,
    6, 1,

    -1, 0x1F338, 16,
    6, 2,

    -1, 0x1F348, 16,
    6, 3,

    -1, 0x1F358, 16,
    6, 4,

    -1, 0x1F368, 16,
    6, 5,

    -1, 0x1F378, 16,
    6, 6,

    -4,
};

const s32 anim_0753__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F378, 16,
    1, 6,

    -4,
};

const s32 * const anim_0753[2] = {
    anim_0753__v0_l0,
    anim_0753__v1_l0,
};

const s32 anim_0754__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F388, 4,
    6, 0,

    -1, 0x1F38C, 4,
    6, 1,

    -1, 0x1F390, 6,
    6, 2,

    -1, 0x1F396, 8,
    6, 3,

    -1, 0x1F39E, 10,
    6, 4,

    -1, 0x1F3A8, 10,
    6, 5,

    -1, 0x1F3B2, 18,
    6, 6,

    -1, 0x1F3C4, 21,
    6, 7,

    -1, 0x1F3D9, 28,
    6, 8,

    -1, 0x1F3F5, 21,
    6, 9,

    -4,
};

const s32 anim_0754__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F3F5, 21,
    1, 9,

    -4,
};

const s32 * const anim_0754[2] = {
    anim_0754__v0_l0,
    anim_0754__v1_l0,
};

const s32 anim_0755__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F40A, 36,
    6, 0,

    -1, 0x1F42E, 36,
    6, 1,

    -1, 0x1F452, 36,
    6, 2,

    -1, 0x1F476, 36,
    6, 3,

    -1, 0x1F49A, 36,
    6, 4,

    -1, 0x1F4BE, 36,
    6, 5,

    -1, 0x1F4E2, 36,
    6, 6,

    -1, 0x1F506, 36,
    6, 7,

    -1, 0x1F52A, 36,
    6, 8,

    -1, 0x1F54E, 36,
    6, 9,

    -1, 0x1F572, 36,
    6, 10,

    -1, 0x1F596, 36,
    6, 11,

    -4,
};

const s32 anim_0755__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F596, 36,
    1, 11,

    -4,
};

const s32 * const anim_0755[2] = {
    anim_0755__v0_l0,
    anim_0755__v1_l0,
};

const s32 anim_0756__v0_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F5BA, 2,
    6, 0,

    -1, 0x1F5BC, 4,
    6, 1,

    -1, 0x1F5C0, 6,
    6, 2,

    -1, 0x1F5C6, 8,
    6, 3,

    -1, 0x1F5CE, 8,
    6, 4,

    -1, 0x1F5D6, 10,
    6, 5,

    -1, 0x1F5E0, 12,
    6, 6,

    -1, 0x1F5EC, 21,
    6, 7,

    -1, 0x1F601, 21,
    6, 8,

    -1, 0x1F616, 24,
    6, 9,

    -1, 0x1F62E, 27,
    6, 10,

    -1, 0x1F649, 30,
    6, 11,

    -4,
};

const s32 anim_0756__v1_l0[] = {
    -2, 176, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x1F649, 30,
    2, 11,

    -1, 0x1F667, 30,
    2, 12,

    -1, 0x1F685, 30,
    2, 13,

    -1, 0x1F6A3, 30,
    2, 14,

    -1, 0x1F6C1, 30,
    2, 15,

    -1, 0x1F6DF, 30,
    2, 16,

    -3, 33,
};

const s32 * const anim_0756[2] = {
    anim_0756__v0_l0,
    anim_0756__v1_l0,
};

const s32 anim_0757__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F6FD, 20,
    1, 0,

    -4,
};

const s32 anim_0757__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F711, 26,
    1, 1,

    -4,
};

const s32 anim_0757__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F72B, 26,
    1, 2,

    -4,
};

const s32 * const anim_0757[3] = {
    anim_0757__v0_l0,
    anim_0757__v1_l0,
    anim_0757__v2_l0,
};

const s32 anim_0758__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F745, 4,
    1, 0,

    -4,
};

const s32 anim_0758__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F749, 4,
    1, 1,

    -4,
};

const s32 anim_0758__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F74D, 4,
    1, 2,

    -4,
};

const s32 anim_0758__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F751, 4,
    1, 3,

    -4,
};

const s32 anim_0758__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F755, 4,
    1, 4,

    -4,
};

const s32 anim_0758__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F759, 4,
    1, 5,

    -4,
};

const s32 anim_0758__v6_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x1F75D, 4,
    1, 6,

    -4,
};

const s32 * const anim_0758[7] = {
    anim_0758__v0_l0,
    anim_0758__v1_l0,
    anim_0758__v2_l0,
    anim_0758__v3_l0,
    anim_0758__v4_l0,
    anim_0758__v5_l0,
    anim_0758__v6_l0,
};

const s32 anim_0759__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1F761, 4,
    1, 0,

    -4,
};

const s32 anim_0759__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1F765, 4,
    1, 1,

    -4,
};

const s32 anim_0759__v2_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1F769, 4,
    1, 2,

    -4,
};

const s32 anim_0759__v3_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1F76D, 4,
    1, 3,

    -4,
};

const s32 anim_0759__v4_l0[] = {
    -2, 159, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1F771, 4,
    1, 4,

    -4,
};

const s32 * const anim_0759[5] = {
    anim_0759__v0_l0,
    anim_0759__v1_l0,
    anim_0759__v2_l0,
    anim_0759__v3_l0,
    anim_0759__v4_l0,
};

const s32 anim_0760__v0_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x1F775, 9,
    1, 0,

    -4,
};

const s32 anim_0760__v1_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1F77E, 9,
    1, 1,

    -4,
};

const s32 anim_0760__v2_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x1F787, 9,
    1, 2,

    -4,
};

const s32 anim_0760__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1F790, 9,
    1, 3,

    -4,
};

const s32 anim_0760__v4_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x1F799, 9,
    1, 4,

    -4,
};

const s32 anim_0760__v5_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1F7A2, 9,
    1, 5,

    -4,
};

const s32 anim_0760__v6_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x1F7AB, 9,
    1, 6,

    -4,
};

const s32 anim_0760__v7_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x1F7B4, 9,
    1, 7,

    -4,
};

const s32 * const anim_0760[8] = {
    anim_0760__v0_l0,
    anim_0760__v1_l0,
    anim_0760__v2_l0,
    anim_0760__v3_l0,
    anim_0760__v4_l0,
    anim_0760__v5_l0,
    anim_0760__v6_l0,
    anim_0760__v7_l0,
};

const s32 anim_0761__v0_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F7BD, 30,
    1, 0,

    -4,
};

const s32 anim_0761__v1_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F7DB, 28,
    1, 1,

    -4,
};

const s32 anim_0761__v2_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F7F7, 38,
    1, 2,

    -4,
};

const s32 anim_0761__v3_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F81D, 36,
    1, 3,

    -4,
};

const s32 anim_0761__v4_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F841, 32,
    1, 4,

    -4,
};

const s32 anim_0761__v5_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F861, 24,
    1, 5,

    -4,
};

const s32 anim_0761__v6_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F879, 32,
    1, 6,

    -4,
};

const s32 anim_0761__v7_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F899, 30,
    1, 7,

    -4,
};

const s32 anim_0761__v8_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F8B7, 34,
    1, 8,

    -4,
};

const s32 * const anim_0761[9] = {
    anim_0761__v0_l0,
    anim_0761__v1_l0,
    anim_0761__v2_l0,
    anim_0761__v3_l0,
    anim_0761__v4_l0,
    anim_0761__v5_l0,
    anim_0761__v6_l0,
    anim_0761__v7_l0,
    anim_0761__v8_l0,
};

const s32 anim_0762__v0_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F8D9, 36,
    1, 0,

    -4,
};

const s32 anim_0762__v1_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F8FD, 34,
    1, 1,

    -4,
};

const s32 anim_0762__v2_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F91F, 34,
    1, 2,

    -4,
};

const s32 anim_0762__v3_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F941, 36,
    1, 3,

    -4,
};

const s32 anim_0762__v4_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F965, 34,
    1, 4,

    -4,
};

const s32 anim_0762__v5_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F987, 36,
    1, 5,

    -4,
};

const s32 anim_0762__v6_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F9AB, 32,
    1, 6,

    -4,
};

const s32 anim_0762__v7_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F9CB, 10,
    1, 7,

    -4,
};

const s32 anim_0762__v8_l0[] = {
    -2, 181, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x1F9D5, 38,
    1, 8,

    -4,
};

const s32 * const anim_0762[9] = {
    anim_0762__v0_l0,
    anim_0762__v1_l0,
    anim_0762__v2_l0,
    anim_0762__v3_l0,
    anim_0762__v4_l0,
    anim_0762__v5_l0,
    anim_0762__v6_l0,
    anim_0762__v7_l0,
    anim_0762__v8_l0,
};

const s32 anim_0763__v0_l0[] = {
    -2, 182, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F9FB, 24,
    1, 0,

    -4,
};

const s32 anim_0763__v1_l0[] = {
    -2, 183, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F9FB, 24,
    1, 0,

    -4,
};

const s32 anim_0763__v2_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F9FB, 24,
    1, 0,

    -4,
};

const s32 anim_0763__v3_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F9FB, 24,
    1, 0,

    -4,
};

const s32 anim_0763__v4_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1F9FB, 24,
    1, 0,

    -4,
};

const s32 * const anim_0763[5] = {
    anim_0763__v0_l0,
    anim_0763__v1_l0,
    anim_0763__v2_l0,
    anim_0763__v3_l0,
    anim_0763__v4_l0,
};

const s32 anim_0764__v0_l0[] = {
    -2, 182, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1FA13, 28,
    1, 0,

    -4,
};

const s32 anim_0764__v1_l0[] = {
    -2, 183, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1FA13, 28,
    1, 0,

    -4,
};

const s32 anim_0764__v2_l0[] = {
    -2, 184, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1FA13, 28,
    1, 0,

    -4,
};

const s32 anim_0764__v3_l0[] = {
    -2, 185, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1FA13, 28,
    1, 0,

    -4,
};

const s32 anim_0764__v4_l0[] = {
    -2, 186, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x1FA13, 28,
    1, 0,

    -4,
};

const s32 * const anim_0764[5] = {
    anim_0764__v0_l0,
    anim_0764__v1_l0,
    anim_0764__v2_l0,
    anim_0764__v3_l0,
    anim_0764__v4_l0,
};

const s32 anim_0765__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FA2F, 42,
    3, 0,

    -1, 0x1FA59, 42,
    3, 1,

    -3, 13,
};

const s32 anim_0765__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FA83, 16,
    1, 2,

    -1, 0x1FA93, 16,
    1, 3,

    -1, 0x1FAA3, 16,
    12, 4,

    -1, 0x1FA93, 16,
    2, 3,

    -1, 0x1FA83, 16,
    2, 2,

    -4,
};

const s32 * const anim_0765[2] = {
    anim_0765__v0_l0,
    anim_0765__v1_l0,
};

const s32 anim_0766__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FAB3, 24,
    3, 0,

    -1, 0x1FACB, 24,
    3, 1,

    -1, 0x1FAE3, 24,
    3, 2,

    -3, 18,
};

const s32 anim_0766__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FAFB, 12,
    1, 3,

    -1, 0x1FB07, 16,
    1, 4,

    -1, 0x1FB17, 16,
    12, 5,

    -1, 0x1FB27, 16,
    2, 6,

    -1, 0x1FB37, 12,
    2, 7,

    -4,
};

const s32 * const anim_0766[2] = {
    anim_0766__v0_l0,
    anim_0766__v1_l0,
};

const s32 anim_0767__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FB43, 28,
    3, 0,

    -1, 0x1FB5F, 28,
    3, 1,

    -1, 0x1FB7B, 28,
    3, 2,

    -3, 18,
};

const s32 anim_0767__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FB97, 20,
    1, 3,

    -1, 0x1FBAB, 24,
    1, 4,

    -1, 0x1FBC3, 18,
    12, 5,

    -1, 0x1FBD5, 24,
    2, 6,

    -1, 0x1FB97, 20,
    2, 3,

    -4,
};

const s32 * const anim_0767[2] = {
    anim_0767__v0_l0,
    anim_0767__v1_l0,
};

const s32 anim_0768__v0_l0[] = {
    -2, 187, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FBED, 35,
    3, 0,

    -1, 0x1FC10, 28,
    3, 1,

    -3, 13,
};

const s32 anim_0768__v1_l0[] = {
    -2, 187, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FC2C, 16,
    1, 2,

    -1, 0x1FC3C, 16,
    1, 3,

    -1, 0x1FC4C, 16,
    12, 4,

    -1, 0x1FC3C, 16,
    2, 3,

    -1, 0x1FC2C, 16,
    2, 2,

    -4,
};

const s32 * const anim_0768[2] = {
    anim_0768__v0_l0,
    anim_0768__v1_l0,
};

const s32 anim_0769__v0_l0[] = {
    -2, 188, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FC5C, 24,
    3, 0,

    -1, 0x1FC74, 24,
    3, 1,

    -1, 0x1FC8C, 24,
    3, 2,

    -3, 18,
};

const s32 anim_0769__v1_l0[] = {
    -2, 188, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FCA4, 16,
    1, 3,

    -1, 0x1FCB4, 16,
    1, 4,

    -1, 0x1FCC4, 16,
    12, 5,

    -1, 0x1FCD4, 16,
    2, 6,

    -1, 0x1FCE4, 16,
    2, 7,

    -4,
};

const s32 * const anim_0769[2] = {
    anim_0769__v0_l0,
    anim_0769__v1_l0,
};

const s32 anim_0770__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x1FCF4, 9,
    3, 0,

    -1, 0x1FCFD, 16,
    3, 1,

    -1, 0x1FD0D, 16,
    3, 2,

    -1, 0x1FD1D, 16,
    3, 3,

    -1, 0x1FD2D, 16,
    3, 4,

    -1, 0x1FD3D, 16,
    3, 5,

    -1, 0x1FD4D, 12,
    3, 6,

    -4,
};

const s32 * const anim_0770[1] = {
    anim_0770__v0_l0,
};

const s32 anim_0771__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FD59, 20,
    8, 0,

    -1, 0x1FD6D, 30,
    8, 1,

    -1, 0x1FD8B, 20,
    40, 2,

    -4,
};

const s32 * const anim_0771[1] = {
    anim_0771__v0_l0,
};

const s32 anim_0772__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FD9F, 16,
    10, 0,

    -1, 0x1FDAF, 20,
    8, 1,

    -1, 0x1FDC3, 15,
    6, 2,

    -1, 0x1FDC3, 15,
    6, 2,

    -4,
};

const s32 * const anim_0772[1] = {
    anim_0772__v0_l0,
};

const s32 anim_0773__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FDD2, 20,
    4, 0,

    -1, 0x1FDE6, 20,
    4, 1,

    -1, 0x1FDFA, 30,
    8, 2,

    -1, 0x1FE18, 20,
    40, 3,

    -4,
};

const s32 * const anim_0773[1] = {
    anim_0773__v0_l0,
};

const s32 anim_0774__v0_l0[] = {
    -2, 187, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FE2C, 20,
    4, 0,

    -1, 0x1FE40, 15,
    4, 1,

    -1, 0x1FE4F, 24,
    8, 2,

    -1, 0x1FE67, 15,
    40, 3,

    -4,
};

const s32 * const anim_0774[1] = {
    anim_0774__v0_l0,
};

const s32 anim_0775__v0_l0[] = {
    -2, 188, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FE76, 20,
    4, 0,

    -1, 0x1FE8A, 20,
    4, 1,

    -1, 0x1FE9E, 24,
    8, 2,

    -1, 0x1FEB6, 20,
    40, 3,

    -4,
};

const s32 * const anim_0775[1] = {
    anim_0775__v0_l0,
};

const s32 anim_0776__v0_l0[] = {
    -2, 189, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x1FECA, 64,
    2, 0,

    -1, 0x1FF0A, 64,
    2, 1,

    -1, 0x1FF4A, 64,
    2, 2,

    -1, 0x1FF8A, 64,
    2, 3,

    -1, 0x1FFCA, 64,
    2, 4,

    -1, 0x2000A, 64,
    2, 5,

    -3, 33,
};

const s32 * const anim_0776[1] = {
    anim_0776__v0_l0,
};

const s32 anim_0777__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2004A, 64,
    2, 0,

    -1, 0x2008A, 64,
    2, 1,

    -1, 0x200CA, 64,
    2, 2,

    -1, 0x2010A, 64,
    2, 3,

    -1, 0x2014A, 64,
    2, 4,

    -1, 0x2018A, 64,
    2, 5,

    -3, 33,
};

const s32 * const anim_0777[1] = {
    anim_0777__v0_l0,
};

const s32 anim_0778__v0_l0[] = {
    -2, 10, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x201CA, 64,
    2, 0,

    -1, 0x2020A, 64,
    2, 1,

    -1, 0x2024A, 64,
    2, 2,

    -1, 0x2028A, 64,
    2, 3,

    -1, 0x202CA, 64,
    2, 4,

    -1, 0x2030A, 64,
    2, 5,

    -3, 33,
};

const s32 * const anim_0778[1] = {
    anim_0778__v0_l0,
};

const s32 anim_0779__v0_l0[] = {
    -2, 190, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2034A, 64,
    2, 0,

    -1, 0x2038A, 64,
    2, 1,

    -1, 0x203CA, 64,
    2, 2,

    -1, 0x2040A, 64,
    2, 3,

    -1, 0x2044A, 64,
    2, 4,

    -1, 0x2048A, 64,
    2, 5,

    -3, 33,
};

const s32 * const anim_0779[1] = {
    anim_0779__v0_l0,
};

const s32 anim_0780__v0_l0[] = {
    -2, 37, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x204CA, 64,
    2, 0,

    -1, 0x2050A, 64,
    2, 1,

    -1, 0x2054A, 64,
    2, 2,

    -1, 0x2058A, 64,
    2, 3,

    -1, 0x205CA, 64,
    2, 4,

    -1, 0x2060A, 64,
    2, 5,

    -3, 33,
};

const s32 * const anim_0780[1] = {
    anim_0780__v0_l0,
};

const s32 anim_0781__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2064A, 48,
    1, 0,

    -4,
};

const s32 anim_0781__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2067A, 26,
    1, 1,

    -4,
};

const s32 anim_0781__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x20694, 32,
    1, 2,

    -4,
};

const s32 * const anim_0781[3] = {
    anim_0781__v0_l0,
    anim_0781__v1_l0,
    anim_0781__v2_l0,
};

const s32 anim_0782__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x206B4, 15,
    6, 0,

    -1, 0x206C3, 16,
    8, 1,

    -1, 0x206D3, 20,
    8, 2,

    -1, 0x206E7, 16,
    12, 3,

    -1, 0x206E7, 16,
    4, 3,

    -1, 0x206E7, 16,
    14, 3,

    -4,
};

const s32 anim_0782__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x206E7, 16,
    6, 3,

    -1, 0x206F7, 16,
    6, 4,

    -1, 0x20707, 20,
    16, 5,

    -4,
};

const s32 * const anim_0782[2] = {
    anim_0782__v0_l0,
    anim_0782__v1_l0,
};

const s32 anim_0783__v0_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2071B, 20,
    1, 0,

    -4,
};

const s32 anim_0783__v1_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2072F, 20,
    3, 1,

    -1, 0x20743, 24,
    3, 2,

    -1, 0x2075B, 24,
    3, 3,

    -4,
};

const s32 * const anim_0783[2] = {
    anim_0783__v0_l0,
    anim_0783__v1_l0,
};

const s32 anim_0784__v0_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x20773, 24,
    6, 0,

    -1, 0x20773, 24,
    8, 0,

    -1, 0x20773, 24,
    8, 0,

    -1, 0x20773, 24,
    12, 0,

    -1, 0x2078B, 24,
    4, 1,

    -1, 0x207A3, 24,
    14, 2,

    -4,
};

const s32 anim_0784__v1_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x207BB, 24,
    6, 3,

    -1, 0x207D3, 24,
    6, 4,

    -1, 0x207EB, 24,
    16, 5,

    -4,
};

const s32 anim_0784__v2_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x20803, 24,
    1, 6,

    -4,
};

const s32 * const anim_0784[3] = {
    anim_0784__v0_l0,
    anim_0784__v1_l0,
    anim_0784__v2_l0,
};

const s32 anim_0785__v0_l0[] = {
    -2, 192, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2081B, 104,
    3, 0,

    -1, 0x20883, 104,
    3, 1,

    -3, 13,
};

const s32 anim_0785__v1_l0[] = {
    -2, 192, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x208EB, 48,
    3, 2,

    -1, 0x2091B, 48,
    3, 3,

    -3, 13,
};

const s32 anim_0785__v2_l0[] = {
    -2, 193, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2094B, 104,
    3, 4,

    -1, 0x209B3, 104,
    3, 5,

    -3, 13,
};

const s32 anim_0785__v3_l0[] = {
    -2, 193, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20A1B, 48,
    3, 6,

    -1, 0x20A4B, 48,
    3, 7,

    -3, 13,
};

const s32 * const anim_0785[4] = {
    anim_0785__v0_l0,
    anim_0785__v1_l0,
    anim_0785__v2_l0,
    anim_0785__v3_l0,
};

const s32 anim_0786__v0_l0[] = {
    -2, 194, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20A7B, 80,
    3, 0,

    -1, 0x20ACB, 80,
    3, 1,

    -3, 13,
};

const s32 anim_0786__v1_l0[] = {
    -2, 194, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20B1B, 80,
    3, 2,

    -1, 0x20B6B, 70,
    3, 3,

    -3, 13,
};

const s32 anim_0786__v2_l0[] = {
    -2, 195, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20BB1, 80,
    3, 4,

    -1, 0x20C01, 80,
    3, 5,

    -3, 13,
};

const s32 anim_0786__v3_l0[] = {
    -2, 195, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20C51, 80,
    3, 6,

    -1, 0x20CA1, 70,
    3, 7,

    -3, 13,
};

const s32 * const anim_0786[4] = {
    anim_0786__v0_l0,
    anim_0786__v1_l0,
    anim_0786__v2_l0,
    anim_0786__v3_l0,
};

const s32 anim_0787__v0_l0[] = {
    -2, 196, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20CE7, 99,
    3, 0,

    -1, 0x20D4A, 99,
    3, 1,

    -3, 13,
};

const s32 anim_0787__v1_l0[] = {
    -2, 196, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20DAD, 80,
    3, 2,

    -1, 0x20DFD, 80,
    3, 3,

    -3, 13,
};

const s32 anim_0787__v2_l0[] = {
    -2, 197, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20E4D, 99,
    3, 4,

    -1, 0x20EB0, 99,
    3, 5,

    -3, 13,
};

const s32 anim_0787__v3_l0[] = {
    -2, 197, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20F13, 80,
    3, 6,

    -1, 0x20F63, 80,
    3, 7,

    -3, 13,
};

const s32 * const anim_0787[4] = {
    anim_0787__v0_l0,
    anim_0787__v1_l0,
    anim_0787__v2_l0,
    anim_0787__v3_l0,
};

const s32 anim_0788__v0_l0[] = {
    -2, 198, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x20FB3, 72,
    3, 0,

    -1, 0x20FFB, 72,
    3, 1,

    -3, 13,
};

const s32 anim_0788__v1_l0[] = {
    -2, 198, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21043, 56,
    3, 2,

    -1, 0x2107B, 64,
    3, 3,

    -3, 13,
};

const s32 anim_0788__v2_l0[] = {
    -2, 199, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x210BB, 72,
    3, 4,

    -1, 0x21103, 72,
    3, 5,

    -3, 13,
};

const s32 anim_0788__v3_l0[] = {
    -2, 199, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2114B, 56,
    3, 6,

    -1, 0x21183, 64,
    3, 7,

    -3, 13,
};

const s32 * const anim_0788[4] = {
    anim_0788__v0_l0,
    anim_0788__v1_l0,
    anim_0788__v2_l0,
    anim_0788__v3_l0,
};

const s32 anim_0789__v0_l0[] = {
    -2, 200, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x211C3, 56,
    3, 0,

    -1, 0x211FB, 56,
    3, 1,

    -3, 13,
};

const s32 anim_0789__v1_l0[] = {
    -2, 200, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21233, 42,
    3, 2,

    -1, 0x2125D, 42,
    3, 3,

    -3, 13,
};

const s32 anim_0789__v2_l0[] = {
    -2, 201, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21287, 56,
    3, 4,

    -1, 0x212BF, 56,
    3, 5,

    -3, 13,
};

const s32 anim_0789__v3_l0[] = {
    -2, 201, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x212F7, 42,
    3, 6,

    -1, 0x21321, 42,
    3, 7,

    -3, 13,
};

const s32 * const anim_0789[4] = {
    anim_0789__v0_l0,
    anim_0789__v1_l0,
    anim_0789__v2_l0,
    anim_0789__v3_l0,
};

const s32 anim_0790__v0_l0[] = {
    -2, 202, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2134B, 30,
    3, 0,

    -1, 0x21369, 30,
    3, 1,

    -3, 13,
};

const s32 anim_0790__v1_l0[] = {
    -2, 203, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x21387, 30,
    3, 2,

    -1, 0x213A5, 30,
    3, 3,

    -3, 13,
};

const s32 * const anim_0790[2] = {
    anim_0790__v0_l0,
    anim_0790__v1_l0,
};

const s32 anim_0791__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x213C3, 42,
    1, 0,

    -4,
};

const s32 anim_0791__v1_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x213ED, 42,
    8, 1,

    -1, 0x21417, 42,
    8, 2,

    -1, 0x21441, 42,
    8, 3,

    -1, 0x2146B, 42,
    8, 4,

    -4,
};

const s32 anim_0791__v2_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x21495, 64,
    1, 5,

    -4,
};

const s32 * const anim_0791[3] = {
    anim_0791__v0_l0,
    anim_0791__v1_l0,
    anim_0791__v2_l0,
};

const s32 anim_0792__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x214D5, 15,
    1, 0,

    -4,
};

const s32 * const anim_0792[1] = {
    anim_0792__v0_l0,
};

const s32 anim_0793__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x214E4, 6,
    1, 0,

    -4,
};

const s32 * const anim_0793[1] = {
    anim_0793__v0_l0,
};

const s32 anim_0794__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x214EA, 6,
    1, 0,

    -4,
};

const s32 * const anim_0794[1] = {
    anim_0794__v0_l0,
};

const s32 anim_0795__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x214F0, 15,
    1, 0,

    -4,
};

const s32 * const anim_0795[1] = {
    anim_0795__v0_l0,
};

const s32 anim_0796__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x214FF, 6,
    1, 0,

    -4,
};

const s32 * const anim_0796[1] = {
    anim_0796__v0_l0,
};

const s32 anim_0797__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x21505, 6,
    1, 0,

    -4,
};

const s32 * const anim_0797[1] = {
    anim_0797__v0_l0,
};

const s32 anim_0798__v0_l0[] = {
    -2, 204, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2150B, 4,
    4, 0,

    -1, 0x2150F, 4,
    4, 1,

    -1, 0x21513, 4,
    4, 2,

    -1, 0x21517, 4,
    4, 3,

    -1, 0x2151B, 4,
    4, 4,

    -1, 0x2151F, 2,
    4, 5,

    -3, 33,
};

const s32 * const anim_0798[1] = {
    anim_0798__v0_l0,
};

const s32 anim_0799__v0_l0[] = {
    -2, 205, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x21521, 24,
    1, 0,

    -1, 0x21539, 24,
    1, 1,

    -1, 0x21551, 16,
    1, 2,

    -3, 18,
};

const s32 * const anim_0799[1] = {
    anim_0799__v0_l0,
};

const s32 anim_0804__v0_l0[] = {
    -2, 206, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21561, 168,
    1, 0,

    -4,
};

const s32 * const anim_0804[1] = {
    anim_0804__v0_l0,
};

const s32 anim_0805__v0_l0[] = {
    -2, 207, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21609, 192,
    1, 0,

    -4,
};

const s32 * const anim_0805[1] = {
    anim_0805__v0_l0,
};

const s32 anim_0806__v0_l0[] = {
    -2, 208, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x216C9, 210,
    1, 0,

    -4,
};

const s32 * const anim_0806[1] = {
    anim_0806__v0_l0,
};

const s32 anim_0807__v0_l0[] = {
    -2, 170, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2179B, 176,
    1, 0,

    -4,
};

const s32 * const anim_0807[1] = {
    anim_0807__v0_l0,
};

const s32 anim_0808__v0_l0[] = {
    -2, 209, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2184B, 140,
    1, 0,

    -4,
};

const s32 * const anim_0808[1] = {
    anim_0808__v0_l0,
};

const s32 anim_0809__v0_l0[] = {
    -2, 171, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x218D7, 30,
    1, 0,

    -4,
};

const s32 * const anim_0809[1] = {
    anim_0809__v0_l0,
};

const s32 anim_0810__v0_l0[] = {
    -2, 170, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x218F5, 63,
    1, 0,

    -4,
};

const s32 anim_0810__v1_l0[] = {
    -2, 170, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21934, 63,
    3, 1,

    -1, 0x21973, 63,
    3, 2,

    -1, 0x219B2, 70,
    3, 3,

    -1, 0x219F8, 70,
    6, 4,

    -1, 0x21A3E, 70,
    4, 5,

    -1, 0x21A84, 70,
    2, 6,

    -1, 0x21ACA, 80,
    15, 7,

    -4,
};

const s32 * const anim_0810[2] = {
    anim_0810__v0_l0,
    anim_0810__v1_l0,
};

const s32 anim_0815__v0_l0[] = {
    -2, 210, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21B1A, 30,
    8, 0,

    -1, 0x21B38, 30,
    8, 1,

    -1, 0x21B56, 30,
    8, 2,

    -1, 0x21B74, 30,
    8, 3,

    -3, 23,
};

const s32 * const anim_0815[1] = {
    anim_0815__v0_l0,
};

const s32 anim_0816__v0_l0[] = {
    -2, 210, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21B92, 4,
    1, 0,

    -4,
};

const s32 anim_0816__v1_l0[] = {
    -2, 210, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21B96, 4,
    1, 1,

    -4,
};

const s32 * const anim_0816[2] = {
    anim_0816__v0_l0,
    anim_0816__v1_l0,
};

const s32 anim_0817__v0_l0[] = {
    -2, 210, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21B9A, 9,
    3, 0,

    -1, 0x21BA3, 9,
    3, 1,

    -1, 0x21BAC, 9,
    3, 2,

    -1, 0x21BB5, 9,
    3, 3,

    -1, 0x21BBE, 9,
    3, 4,

    -4,
};

const s32 * const anim_0817[1] = {
    anim_0817__v0_l0,
};

const s32 anim_0818__v0_l0[] = {
    -2, 42, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x21BC7, 24,
    1, 0,

    -2, 42, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x21BDF, 24,
    1, 1,

    -2, 42, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x21BF7, 24,
    1, 2,

    -2, 42, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x21C0F, 24,
    1, 3,

    -3, 32,
};

const s32 * const anim_0818[1] = {
    anim_0818__v0_l0,
};

const s32 anim_0819__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21C27, 30,
    2, 0,

    -1, 0x21C45, 25,
    2, 1,

    -1, 0x21C5E, 20,
    2, 2,

    -1, 0x21C72, 20,
    2, 3,

    -1, 0x21C86, 24,
    2, 4,

    -1, 0x21C9E, 25,
    2, 5,

    -1, 0x21CB7, 24,
    2, 6,

    -1, 0x21CCF, 20,
    2, 7,

    -3, 43,
};

const s32 * const anim_0819[1] = {
    anim_0819__v0_l0,
};

const s32 anim_0820__v0_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x21CE3, 30,
    3, 0,

    -1, 0x21D01, 35,
    3, 1,

    -1, 0x21D24, 35,
    3, 2,

    -3, 18,
};

const s32 * const anim_0820[1] = {
    anim_0820__v0_l0,
};

const s32 anim_0821__v0_l0[] = {
    -2, 211, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x21D47, 4,
    3, 0,

    -1, 0x21D4B, 4,
    3, 1,

    -1, 0x21D4F, 4,
    3, 2,

    -3, 18,
};

const s32 * const anim_0821[1] = {
    anim_0821__v0_l0,
};

const s32 anim_0822__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21D53, 35,
    3, 0,

    -1, 0x21D76, 35,
    3, 1,

    -3, 13,
};

const s32 anim_0822__v1_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21D99, 42,
    3, 2,

    -1, 0x21DC3, 42,
    3, 3,

    -3, 13,
};

const s32 * const anim_0822[2] = {
    anim_0822__v0_l0,
    anim_0822__v1_l0,
};

const s32 anim_0823__v0_l0[] = {
    -2, 212, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x21DED, 15,
    1, 0,

    -4,
};

const s32 * const anim_0823[1] = {
    anim_0823__v0_l0,
};

const s32 anim_0824__v0_l0[] = {
    -2, 213, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21DFC, 10,
    1, 0,

    -4,
};

const s32 anim_0824__v1_l0[] = {
    -2, 213, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21E06, 21,
    1, 1,

    -4,
};

const s32 anim_0824__v2_l0[] = {
    -2, 213, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21E1B, 30,
    1, 2,

    -4,
};

const s32 anim_0824__v3_l0[] = {
    -2, 213, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x21E39, 80,
    1, 3,

    -4,
};

const s32 * const anim_0824[4] = {
    anim_0824__v0_l0,
    anim_0824__v1_l0,
    anim_0824__v2_l0,
    anim_0824__v3_l0,
};

const s32 anim_0828__v0_l0[] = {
    -2, 214, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21E89, 56,
    1, 0,

    -4,
};

const s32 anim_0828__v1_l0[] = {
    -2, 214, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21EC1, 78,
    1, 1,

    -4,
};

const s32 anim_0828__v2_l0[] = {
    -2, 214, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21F0F, 60,
    1, 2,

    -4,
};

const s32 anim_0828__v3_l0[] = {
    -2, 214, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x21F4B, 96,
    1, 3,

    -4,
};

const s32 * const anim_0828[4] = {
    anim_0828__v0_l0,
    anim_0828__v1_l0,
    anim_0828__v2_l0,
    anim_0828__v3_l0,
};

const s32 anim_0829__v0_l0[] = {
    -2, 215, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x21FAB, 63,
    1, 0,

    -4,
};

const s32 anim_0829__v1_l0[] = {
    -2, 215, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x21FEA, 63,
    1, 1,

    -4,
};

const s32 * const anim_0829[2] = {
    anim_0829__v0_l0,
    anim_0829__v1_l0,
};

const s32 anim_0830__v0_l0[] = {
    -2, 216, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x22029, 90,
    1, 0,

    -4,
};

const s32 anim_0830__v1_l0[] = {
    -2, 216, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x22083, 90,
    1, 1,

    -4,
};

const s32 * const anim_0830[2] = {
    anim_0830__v0_l0,
    anim_0830__v1_l0,
};

const s32 anim_0831__v0_l0[] = {
    -2, 217, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x220DD, 3,
    8, 0,

    -1, 0x220E0, 3,
    8, 1,

    -1, 0x220E3, 3,
    8, 2,

    -1, 0x220E6, 3,
    10, 3,

    -1, 0x220DD, 3,
    8, 0,

    -1, 0x220E0, 3,
    8, 1,

    -1, 0x220E3, 3,
    8, 2,

    -1, 0x220E6, 3,
    10, 3,

    -3, 43,
};

const s32 * const anim_0831[1] = {
    anim_0831__v0_l0,
};

const s32 anim_0832__v0_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x220E9, 4,
    1, 0,

    -4,
};

const s32 anim_0832__v1_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x220ED, 16,
    1, 1,

    -4,
};

const s32 anim_0832__v2_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x220FD, 1,
    1, 2,

    -4,
};

const s32 anim_0832__v3_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x220FE, 1,
    1, 3,

    -4,
};

const s32 anim_0832__v4_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x220FF, 4,
    1, 4,

    -4,
};

const s32 anim_0832__v5_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x22103, 16,
    1, 5,

    -4,
};

const s32 anim_0832__v6_l0[] = {
    -2, 218, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x22113, 64,
    1, 6,

    -4,
};

const s32 * const anim_0832[7] = {
    anim_0832__v0_l0,
    anim_0832__v1_l0,
    anim_0832__v2_l0,
    anim_0832__v3_l0,
    anim_0832__v4_l0,
    anim_0832__v5_l0,
    anim_0832__v6_l0,
};

const s32 anim_0833__v0_l0[] = {
    -2, 216, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x22153, 8,
    1, 0,

    -4,
};

const s32 * const anim_0833[1] = {
    anim_0833__v0_l0,
};

const s32 anim_0834__v0_l0[] = {
    -2, 219, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2215B, 20,
    4, 0,

    -1, 0x2216F, 20,
    4, 1,

    -4,
};

const s32 anim_0834__v1_l0[] = {
    -2, 219, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22183, 20,
    6, 2,

    -1, 0x22197, 20,
    6, 3,

    -4,
};

const s32 anim_0834__v2_l0[] = {
    -2, 219, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x221AB, 20,
    6, 4,

    -1, 0x221BF, 25,
    12, 5,
    -1, 0x221D8, 25,
    4, 6,

    -1, 0x221BF, 25,
    4, 5,

    -3, 10,
};

const s32 anim_0834__v3_l0[] = {
    -2, 219, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x221AB, 20,
    6, 4,

    -1, 0x221F1, 25,
    6, 7,

    -4,
};

const s32 anim_0834__v4_l0[] = {
    -2, 219, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2220A, 15,
    2, 8,
    -1, 0x22219, 20,
    2, 9,

    -1, 0x2222D, 20,
    2, 10,

    -1, 0x22241, 20,
    2, 11,

    -3, 15,
};

const s32 * const anim_0834[5] = {
    anim_0834__v0_l0,
    anim_0834__v1_l0,
    anim_0834__v2_l0,
    anim_0834__v3_l0,
    anim_0834__v4_l0,
};

const s32 anim_0835__v0_l0[] = {
    -2, 220, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22255, 15,
    4, 0,

    -1, 0x22264, 15,
    4, 1,

    -4,
};

const s32 anim_0835__v1_l0[] = {
    -2, 220, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22273, 20,
    4, 2,

    -1, 0x22287, 20,
    4, 3,

    -1, 0x2229B, 20,
    4, 4,

    -1, 0x222AF, 20,
    4, 5,

    -1, 0x222C3, 20,
    6, 6,

    -1, 0x222D7, 20,
    2, 7,

    -1, 0x222EB, 20,
    2, 8,

    -1, 0x222FF, 20,
    6, 9,

    -1, 0x22313, 20,
    4, 10,

    -1, 0x22327, 20,
    4, 11,

    -1, 0x22264, 15,
    4, 1,

    -4,
};

const s32 anim_0835__v2_l0[] = {
    -2, 220, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22255, 15,
    1, 0,

    -4,
};

const s32 anim_0835__v3_l0[] = {
    -2, 220, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2233B, 15,
    6, 12,

    -1, 0x2234A, 15,
    40, 13,

    -1, 0x22359, 20,
    6, 14,

    -1, 0x2236D, 20,
    6, 15,

    -1, 0x22381, 24,
    6, 16,

    -1, 0x22399, 24,
    6, 17,
    -1, 0x223B1, 24,
    2, 18,

    -1, 0x223C9, 24,
    2, 19,

    -1, 0x223E1, 20,
    2, 20,

    -3, 15,
};

const s32 anim_0835__v4_l0[] = {
    -2, 220, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x223B1, 24,
    2, 18,

    -1, 0x223C9, 24,
    2, 19,

    -1, 0x223E1, 20,
    2, 20,

    -4,
};

const s32 anim_0835__v5_l0[] = {
    -2, 220, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x223B1, 24,
    2, 18,

    -1, 0x223C9, 24,
    2, 19,

    -1, 0x223E1, 20,
    2, 20,

    -2, 221, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x223F5, 24,
    2, 21,

    -1, 0x2240D, 24,
    2, 22,

    -1, 0x22425, 20,
    2, 23,

    -3, 36,
};

const s32 * const anim_0835[6] = {
    anim_0835__v0_l0,
    anim_0835__v1_l0,
    anim_0835__v2_l0,
    anim_0835__v3_l0,
    anim_0835__v4_l0,
    anim_0835__v5_l0,
};

const s32 anim_0836__v0_l0[] = {
    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -3, 32,
};

const s32 anim_0836__v1_l0[] = {
    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22499, 24,
    2, 4,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224B1, 24,
    2, 5,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224C9, 24,
    2, 6,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224E1, 24,
    2, 7,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224C9, 24,
    2, 6,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224E1, 24,
    2, 7,
    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22499, 24,
    2, 4,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224B1, 24,
    2, 5,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x224F9, 24,
    2, 8,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22511, 24,
    2, 9,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22529, 30,
    2, 10,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22547, 30,
    2, 11,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22565, 24,
    2, 12,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2257D, 24,
    2, 13,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22595, 30,
    2, 14,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225B3, 30,
    2, 15,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225D1, 30,
    2, 16,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225EF, 30,
    2, 17,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2260D, 30,
    2, 18,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2262B, 30,
    2, 19,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225D1, 30,
    2, 16,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225EF, 30,
    2, 17,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2260D, 30,
    2, 18,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2262B, 30,
    2, 19,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225D1, 30,
    2, 16,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225EF, 30,
    2, 17,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2260D, 30,
    2, 18,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2262B, 30,
    2, 19,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225D1, 30,
    2, 16,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x225EF, 30,
    2, 17,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2260D, 30,
    2, 18,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2262B, 30,
    2, 19,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22649, 24,
    2, 20,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22661, 24,
    2, 21,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22439, 24,
    2, 0,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22451, 24,
    2, 1,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22469, 24,
    2, 2,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22481, 24,
    2, 3,

    -3, 432,
};

const s32 anim_0836__v2_l0[] = {
    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22679, 24,
    2, 22,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22691, 24,
    2, 23,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x226A9, 24,
    2, 24,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x226C1, 24,
    2, 25,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22679, 24,
    2, 22,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22691, 24,
    2, 23,

    -2, 222, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x226D9, 24,
    2, 26,

    -2, 223, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x226F1, 24,
    2, 27,

    -4,
};

const s32 anim_0836__v3_l0[] = {
    -2, 224, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x22709, 48,
    2, 28,

    -1, 0x22739, 48,
    2, 29,

    -1, 0x22769, 48,
    2, 30,

    -1, 0x22799, 48,
    2, 31,

    -3, 23,
};

const s32 * const anim_0836[4] = {
    anim_0836__v0_l0,
    anim_0836__v1_l0,
    anim_0836__v2_l0,
    anim_0836__v3_l0,
};

const s32 anim_0837__v0_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x227C9, 4,
    4, 0,

    -1, 0x227CD, 4,
    4, 1,

    -1, 0x227D1, 4,
    4, 2,

    -1, 0x227D5, 4,
    4, 3,

    -3, 23,
};

const s32 anim_0837__v1_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x227D9, 4,
    4, 4,

    -1, 0x227DD, 4,
    4, 5,

    -1, 0x227E1, 4,
    4, 6,

    -1, 0x227E5, 4,
    4, 7,

    -3, 23,
};

const s32 anim_0837__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x227E9, 4,
    4, 8,

    -1, 0x227ED, 4,
    4, 9,

    -1, 0x227F1, 4,
    4, 10,

    -1, 0x227F5, 4,
    4, 11,

    -3, 23,
};

const s32 anim_0837__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x227F9, 4,
    4, 12,

    -1, 0x227FD, 4,
    4, 13,

    -1, 0x22801, 4,
    4, 14,

    -1, 0x22805, 4,
    4, 15,

    -3, 23,
};

const s32 anim_0837__v4_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x22809, 4,
    4, 16,

    -1, 0x2280D, 4,
    4, 17,

    -1, 0x22811, 4,
    4, 18,

    -1, 0x22815, 4,
    4, 19,

    -3, 23,
};

const s32 anim_0837__v5_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x22819, 4,
    4, 20,

    -1, 0x2281D, 4,
    4, 21,

    -1, 0x22821, 4,
    4, 22,

    -1, 0x22825, 4,
    4, 23,

    -3, 23,
};

const s32 anim_0837__v6_l0[] = {
    -2, 177, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x22829, 4,
    4, 24,

    -1, 0x2282D, 4,
    4, 25,

    -1, 0x22831, 4,
    4, 26,

    -1, 0x22835, 4,
    4, 27,

    -3, 23,
};

const s32 * const anim_0837[7] = {
    anim_0837__v0_l0,
    anim_0837__v1_l0,
    anim_0837__v2_l0,
    anim_0837__v3_l0,
    anim_0837__v4_l0,
    anim_0837__v5_l0,
    anim_0837__v6_l0,
};

const s32 anim_0838__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x22839, 4,
    2, 0,

    -1, 0x2283D, 4,
    2, 1,

    -1, 0x22841, 4,
    2, 2,

    -1, 0x22845, 4,
    2, 3,

    -1, 0x22849, 4,
    2, 4,

    -1, 0x2284D, 4,
    2, 5,

    -1, 0x22851, 4,
    2, 6,

    -1, 0x22839, 4,
    2, 0,

    -4,
};

const s32 anim_0838__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x22855, 1,
    2, 7,

    -1, 0x22839, 4,
    2, 0,

    -1, 0x22856, 4,
    2, 8,

    -1, 0x2285A, 4,
    2, 9,

    -1, 0x2285E, 4,
    2, 10,

    -1, 0x22862, 4,
    2, 11,

    -1, 0x22839, 4,
    2, 0,

    -1, 0x22855, 1,
    2, 7,

    -4,
};

const s32 * const anim_0838[2] = {
    anim_0838__v0_l0,
    anim_0838__v1_l0,
};

const s32 anim_0839__v0_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x22866, 15,
    2, 0,

    -1, 0x22875, 16,
    2, 1,

    -1, 0x22885, 16,
    2, 2,

    -1, 0x22895, 16,
    2, 3,

    -3, 23,
};

const s32 anim_0839__v1_l0[] = {
    -2, 43, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x228A5, 18,
    3, 4,

    -1, 0x228B7, 15,
    3, 5,

    -4,
};

const s32 * const anim_0839[2] = {
    anim_0839__v0_l0,
    anim_0839__v1_l0,
};

const s32 anim_0840__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x228C6, 16,
    8, 0,

    -1, 0x228D6, 16,
    8, 1,

    -1, 0x228E6, 20,
    8, 2,

    -1, 0x228FA, 20,
    8, 3,

    -1, 0x2290E, 16,
    8, 4,

    -1, 0x2291E, 16,
    8, 5,

    -1, 0x2292E, 20,
    8, 6,

    -1, 0x22942, 20,
    8, 7,

    -3, 43,
};

const s32 anim_0840__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22956, 20,
    8, 8,

    -1, 0x2296A, 16,
    8, 9,

    -1, 0x2297A, 16,
    8, 10,

    -1, 0x2298A, 20,
    8, 11,

    -1, 0x2299E, 16,
    8, 12,

    -1, 0x229AE, 16,
    8, 13,

    -1, 0x229BE, 16,
    8, 14,

    -1, 0x229CE, 20,
    8, 15,

    -3, 43,
};

const s32 anim_0840__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x229E2, 20,
    8, 16,

    -1, 0x229F6, 20,
    8, 17,

    -1, 0x22A0A, 25,
    8, 18,

    -1, 0x22A23, 20,
    8, 19,

    -1, 0x22A37, 20,
    8, 20,

    -1, 0x22A4B, 16,
    8, 21,

    -1, 0x22A5B, 20,
    8, 22,

    -1, 0x22A6F, 25,
    8, 23,

    -3, 43,
};

const s32 * const anim_0840[3] = {
    anim_0840__v0_l0,
    anim_0840__v1_l0,
    anim_0840__v2_l0,
};

const s32 anim_0841__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22A88, 16,
    4, 0,

    -1, 0x22A98, 16,
    4, 1,

    -1, 0x22AA8, 16,
    4, 2,

    -4,
};

const s32 anim_0841__v1_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22AB8, 16,
    6, 3,

    -1, 0x22AC8, 16,
    6, 4,

    -1, 0x22AD8, 16,
    6, 5,

    -1, 0x22AE8, 16,
    8, 6,
    -1, 0x22AF8, 16,
    4, 7,

    -1, 0x22B08, 16,
    4, 8,

    -1, 0x22B18, 16,
    4, 9,

    -1, 0x22B28, 16,
    4, 10,

    -3, 20,
};

const s32 anim_0841__v2_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22AD8, 16,
    4, 5,

    -1, 0x22B38, 16,
    6, 11,

    -1, 0x22B48, 20,
    6, 12,

    -1, 0x22B5C, 16,
    6, 13,

    -1, 0x22B6C, 16,
    6, 14,

    -1, 0x22B7C, 12,
    1, 15,
    -1, 0x22B88, 12,
    4, 16,

    -1, 0x22B7C, 12,
    4, 15,

    -3, 10,
};

const s32 anim_0841__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22B94, 12,
    6, 17,

    -1, 0x22BA0, 12,
    6, 18,

    -4,
};

const s32 anim_0841__v4_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22BAC, 12,
    3, 19,

    -1, 0x22BB8, 12,
    3, 20,

    -1, 0x22BC4, 16,
    3, 21,
    -1, 0x22BD4, 16,
    2, 22,

    -1, 0x22BE4, 16,
    2, 23,

    -1, 0x22BF4, 16,
    2, 24,

    -3, 15,
};

const s32 * const anim_0841[5] = {
    anim_0841__v0_l0,
    anim_0841__v1_l0,
    anim_0841__v2_l0,
    anim_0841__v3_l0,
    anim_0841__v4_l0,
};

const s32 anim_0842__v0_l0[] = {
    -2, 225, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22C04, 20,
    4, 0,

    -1, 0x22C18, 25,
    4, 1,

    -1, 0x22C31, 25,
    4, 2,

    -4,
};

const s32 anim_0842__v1_l0[] = {
    -2, 225, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22C4A, 25,
    4, 3,

    -1, 0x22C63, 20,
    4, 4,

    -1, 0x22C77, 20,
    5, 5,

    -1, 0x22C8B, 20,
    6, 6,

    -1, 0x22C9F, 20,
    6, 7,

    -4,
};

const s32 anim_0842__v2_l0[] = {
    -2, 225, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22CB3, 20,
    6, 8,

    -1, 0x22CC7, 20,
    6, 9,

    -1, 0x22CDB, 25,
    12, 10,
    -1, 0x22CF4, 25,
    4, 11,

    -1, 0x22CDB, 25,
    4, 10,

    -3, 10,
};

const s32 anim_0842__v3_l0[] = {
    -2, 225, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22D0D, 20,
    6, 12,

    -1, 0x22D21, 16,
    6, 13,

    -4,
};

const s32 anim_0842__v4_l0[] = {
    -2, 225, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x22D31, 20,
    2, 14,
    -1, 0x22D45, 20,
    2, 15,

    -1, 0x22D59, 20,
    2, 16,

    -1, 0x22D6D, 20,
    2, 17,

    -3, 15,
};

const s32 * const anim_0842[5] = {
    anim_0842__v0_l0,
    anim_0842__v1_l0,
    anim_0842__v2_l0,
    anim_0842__v3_l0,
    anim_0842__v4_l0,
};

const s32 anim_0843__v0_l0[] = {
    -2, 226, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x22D81, 9,
    9, 0,

    -1, 0x22D8A, 9,
    9, 1,

    -1, 0x22D93, 9,
    9, 2,

    -1, 0x22D9C, 9,
    9, 3,

    -1, 0x22DA5, 9,
    9, 4,

    -1, 0x22DAE, 9,
    9, 5,

    -1, 0x22D93, 9,
    9, 2,

    -1, 0x22D8A, 9,
    9, 1,

    -3, 43,
};

const s32 anim_0843__v1_l0[] = {
    -2, 226, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x22DB7, 9,
    9, 6,

    -1, 0x22DC0, 9,
    9, 7,

    -1, 0x22DC9, 9,
    9, 8,

    -1, 0x22DD2, 9,
    9, 9,

    -1, 0x22DDB, 9,
    9, 10,

    -1, 0x22DE4, 9,
    9, 11,

    -1, 0x22DC9, 9,
    9, 8,

    -1, 0x22DC0, 9,
    9, 7,

    -3, 43,
};

const s32 anim_0843__v2_l0[] = {
    -2, 226, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x22DED, 9,
    3, 12,

    -1, 0x22DF6, 9,
    3, 13,
    -1, 0x22DFF, 9,
    2, 14,

    -1, 0x22E08, 9,
    2, 15,

    -3, 10,
};

const s32 * const anim_0843[3] = {
    anim_0843__v0_l0,
    anim_0843__v1_l0,
    anim_0843__v2_l0,
};

const s32 anim_0844__v0_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x22E11, 30,
    3, 0,

    -1, 0x22E2F, 35,
    3, 1,

    -1, 0x22E52, 35,
    3, 2,

    -3, 18,
};

const s32 anim_0844__v1_l0[] = {
    -2, 191, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x22E75, 20,
    1, 3,

    -4,
};

const s32 * const anim_0844[2] = {
    anim_0844__v0_l0,
    anim_0844__v1_l0,
};

const s32 anim_0845__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    12, -1,

    -1, 0x22E89, 12,
    3, 0,

    -1, 0x22E95, 15,
    4, 1,

    -1, 0x22EA4, 12,
    3, 2,

    -1, 0x22EB0, 9,
    2, 3,

    -4,
};

const s32 * const anim_0845[1] = {
    anim_0845__v0_l0,
};

const s32 anim_0846__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x22EB9, 8,
    2, 0,

    -1, 0x22EC1, 12,
    2, 1,

    -1, 0x22ECD, 12,
    2, 2,

    -1, 0x22ED9, 12,
    2, 3,

    -1, 0x22EE5, 12,
    2, 4,

    -1, 0x22EF1, 12,
    2, 5,

    -1, 0x22EFD, 12,
    2, 6,

    -1, 0x22F09, 8,
    2, 7,

    -3, 43,
};

const s32 * const anim_0846[1] = {
    anim_0846__v0_l0,
};

const s32 anim_0847__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x22F11, 20,
    2, 0,

    -1, 0x22F25, 20,
    2, 1,

    -1, 0x22F39, 16,
    2, 2,

    -1, 0x22F49, 20,
    2, 3,

    -3, 23,
};

const s32 * const anim_0847[1] = {
    anim_0847__v0_l0,
};

const s32 anim_0848__v0_l0[] = {
    -1, 0x22F5D, 32,
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    2, 0,

    2, 1,

    2, 2,

    -6, 0, (((65 & 0xFF) << 0) | ((39 & 0xFF) << 8) | ((65 & 0xFF) << 16) | ((39 & 0xFF) << 24)),
    2, 3,

    2, 4,

    2, 5,

    2, 6,

    2, 7,

    -4,
};

const s32 * const anim_0848[1] = {
    anim_0848__v0_l0,
};

const s32 anim_0849__v0_l0[] = {
    -2, 227, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x22F7D, 12,
    1, 0,

    -1, 0x22F89, 12,
    1, 1,

    -1, 0x22F95, 12,
    2, 2,

    -1, 0x22FA1, 12,
    2, 3,

    -1, 0x22FAD, 20,
    2, 4,

    -1, 0x22FC1, 15,
    2, 5,

    -1, 0x22FD0, 15,
    2, 6,

    -1, 0x22FDF, 6,
    2, 7,

    -4,
};

const s32 * const anim_0849[1] = {
    anim_0849__v0_l0,
};

const s32 anim_0850__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x22FE5, 36,
    3, 0,

    -1, 0x23009, 36,
    3, 1,

    -1, 0x2302D, 36,
    3, 2,

    -1, 0x23051, 36,
    3, 3,

    -1, 0x23075, 36,
    3, 4,

    -1, 0x23099, 36,
    3, 5,

    -3, 33,
};

const s32 * const anim_0850[1] = {
    anim_0850__v0_l0,
};

const s32 anim_0851__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x230BD, 36,
    3, 0,

    -1, 0x230E1, 36,
    3, 1,

    -1, 0x230BD, 36,
    3, 0,

    -1, 0x230E1, 36,
    3, 1,

    -1, 0x23105, 36,
    3, 2,

    -1, 0x23129, 36,
    3, 3,

    -1, 0x23105, 36,
    3, 2,

    -1, 0x23129, 36,
    3, 3,

    -1, 0x2314D, 36,
    3, 4,

    -1, 0x23171, 36,
    3, 5,

    -1, 0x2314D, 36,
    3, 4,

    -1, 0x23171, 36,
    3, 5,

    -1, 0x23195, 36,
    3, 6,

    -1, 0x231B9, 36,
    3, 7,

    -1, 0x23195, 36,
    3, 6,

    -1, 0x231B9, 36,
    3, 7,

    -3, 83,
};

const s32 * const anim_0851[1] = {
    anim_0851__v0_l0,
};

const s32 anim_0852__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x231DD, 36,
    2, 0,

    -1, 0x23201, 36,
    2, 1,

    -1, 0x23225, 36,
    2, 2,

    -1, 0x23249, 36,
    2, 3,

    -1, 0x2326D, 36,
    2, 4,

    -1, 0x23291, 36,
    2, 5,

    -3, 33,
};

const s32 anim_0852__v1_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x232B5, 6,
    2, 6,

    -1, 0x232BB, 6,
    2, 7,

    -1, 0x232C1, 9,
    2, 8,

    -1, 0x232CA, 9,
    2, 9,

    -1, 0x232D3, 9,
    2, 10,

    -1, 0x232DC, 9,
    2, 11,

    -1, 0x232E5, 1,
    2, 12,

    -1, 0x232E6, 1,
    2, 13,

    -1, 0x232E7, 4,
    2, 14,

    -1, 0x232EB, 4,
    2, 15,

    -1, 0x232EF, 4,
    2, 16,

    -1, 0x232F3, 4,
    2, 17,

    -4,
};

const s32 * const anim_0852[2] = {
    anim_0852__v0_l0,
    anim_0852__v1_l0,
};

const s32 anim_0853__v0_l0[] = {
    -1, 0x232F7, 4,
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    12, 0,

    12, 1,

    12, 2,

    12, 3,

    -3, 11,
};

const s32 * const anim_0853[1] = {
    anim_0853__v0_l0,
};

const s32 anim_0854__v0_l0[] = {
    -1, 0x232FB, 16,
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    12, 0,

    12, 1,

    12, 2,

    12, 3,

    -3, 11,
};

const s32 * const anim_0854[1] = {
    anim_0854__v0_l0,
};

const s32 anim_0855__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x2330B, 2,
    3, 0,

    -1, 0x2330D, 8,
    3, 1,

    -1, 0x23315, 10,
    3, 2,

    -1, 0x2331F, 10,
    3, 3,

    -1, 0x23329, 4,
    3, 4,

    -4,
};

const s32 * const anim_0855[1] = {
    anim_0855__v0_l0,
};

const s32 anim_0856__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x2332D, 2,
    3, 0,

    -1, 0x2332F, 8,
    3, 1,

    -1, 0x23337, 8,
    3, 2,

    -1, 0x2333F, 5,
    3, 3,

    -1, 0x23344, 5,
    3, 4,

    -4,
};

const s32 * const anim_0856[1] = {
    anim_0856__v0_l0,
};

const s32 anim_0857__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x23349, 2,
    3, 0,

    -1, 0x2334B, 8,
    3, 1,

    -1, 0x23353, 8,
    3, 2,

    -1, 0x2335B, 4,
    3, 3,

    -1, 0x2335F, 4,
    3, 4,

    -4,
};

const s32 * const anim_0857[1] = {
    anim_0857__v0_l0,
};

const s32 anim_0858__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x23363, 4,
    3, 0,

    -1, 0x23367, 4,
    3, 1,

    -1, 0x2336B, 4,
    3, 2,

    -1, 0x2336F, 4,
    3, 3,

    -1, 0x23373, 2,
    3, 4,

    -4,
};

const s32 * const anim_0858[1] = {
    anim_0858__v0_l0,
};

const s32 anim_0859__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x23375, 2,
    3, 0,

    -1, 0x23377, 4,
    3, 1,

    -1, 0x2337B, 4,
    3, 2,

    -1, 0x2337F, 4,
    3, 3,

    -1, 0x23383, 2,
    3, 4,

    -4,
};

const s32 * const anim_0859[1] = {
    anim_0859__v0_l0,
};

const s32 anim_0860__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x23385, 2,
    3, 0,

    -1, 0x23387, 4,
    3, 1,

    -1, 0x2338B, 4,
    3, 2,

    -1, 0x2338F, 4,
    3, 3,

    -1, 0x23393, 2,
    3, 4,

    -4,
};

const s32 * const anim_0860[1] = {
    anim_0860__v0_l0,
};

const s32 anim_0861__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x23395, 6,
    3, 0,

    -1, 0x2339B, 12,
    3, 1,

    -1, 0x233A7, 12,
    3, 2,

    -1, 0x233B3, 8,
    3, 3,

    -1, 0x233BB, 4,
    3, 4,

    -1, 0x233BF, 6,
    3, 5,

    -1, 0x233C5, 6,
    3, 6,

    -1, 0x233CB, 4,
    3, 7,

    -4,
};

const s32 * const anim_0861[1] = {
    anim_0861__v0_l0,
};

const s32 anim_0862__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x233CF, 9,
    3, 0,

    -1, 0x233D8, 16,
    3, 1,

    -1, 0x233E8, 16,
    3, 2,

    -1, 0x233F8, 16,
    3, 3,

    -1, 0x23408, 16,
    3, 4,

    -4,
};

const s32 * const anim_0862[1] = {
    anim_0862__v0_l0,
};

const s32 anim_0863__v0_l0[] = {
    -2, 228, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23418, 4,
    3, 0,

    -1, 0x2341C, 4,
    3, 1,

    -1, 0x23420, 4,
    3, 2,

    -1, 0x23424, 4,
    3, 3,

    -1, 0x23428, 4,
    3, 4,

    -1, 0x2342C, 4,
    3, 5,

    -1, 0x23430, 4,
    3, 6,

    -1, 0x23434, 4,
    3, 7,

    -3, 43,
};

const s32 * const anim_0863[1] = {
    anim_0863__v0_l0,
};

const s32 anim_0864__v0_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23438, 4,
    3, 0,

    -1, 0x2343C, 4,
    3, 1,

    -1, 0x23440, 4,
    3, 2,

    -1, 0x23444, 4,
    3, 3,

    -1, 0x23448, 4,
    3, 4,

    -1, 0x2344C, 4,
    3, 5,

    -1, 0x23450, 4,
    3, 6,

    -1, 0x23454, 4,
    3, 7,

    -3, 43,
};

const s32 * const anim_0864[1] = {
    anim_0864__v0_l0,
};

const s32 anim_0865__v0_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23458, 4,
    3, 0,

    -1, 0x2345C, 4,
    3, 1,

    -1, 0x23460, 4,
    3, 2,

    -1, 0x23464, 4,
    3, 3,

    -1, 0x23468, 4,
    3, 4,

    -1, 0x2346C, 4,
    3, 5,

    -1, 0x23470, 4,
    3, 6,

    -1, 0x23474, 4,
    3, 7,

    -3, 43,
};

const s32 * const anim_0865[1] = {
    anim_0865__v0_l0,
};

const s32 anim_0866__v0_l0[] = {
    -2, 190, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23478, 4,
    3, 0,

    -1, 0x2347C, 4,
    3, 1,

    -1, 0x23480, 4,
    3, 2,

    -1, 0x23484, 4,
    3, 3,

    -1, 0x23488, 4,
    3, 4,

    -1, 0x2348C, 4,
    3, 5,

    -1, 0x23490, 4,
    3, 6,

    -1, 0x23494, 4,
    3, 7,

    -3, 43,
};

const s32 * const anim_0866[1] = {
    anim_0866__v0_l0,
};

const s32 anim_0867__v0_l0[] = {
    -2, 159, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x23498, 4,
    3, 0,

    -1, 0x2349C, 4,
    3, 1,

    -1, 0x234A0, 4,
    3, 2,

    -1, 0x234A4, 4,
    3, 3,

    -1, 0x234A8, 4,
    3, 4,

    -1, 0x234AC, 4,
    3, 5,

    -1, 0x234B0, 4,
    3, 6,

    -1, 0x234B4, 4,
    3, 7,

    -3, 43,
};

const s32 * const anim_0867[1] = {
    anim_0867__v0_l0,
};

const s32 anim_0868__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x234B8, 46,
    1, 0,

    -4,
};

const s32 anim_0868__v1_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x234E6, 20,
    1, 1,

    -4,
};

const s32 anim_0868__v2_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x234FA, 20,
    1, 2,

    -4,
};

const s32 anim_0868__v3_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2350E, 16,
    1, 3,

    -4,
};

const s32 anim_0868__v4_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2351E, 28,
    1, 4,

    -4,
};

const s32 anim_0868__v5_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2353A, 20,
    1, 5,

    -3, 8,
};

const s32 anim_0868__v6_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2354E, 20,
    1, 6,

    -4,
};

const s32 anim_0868__v7_l0[] = {
    -2, 230, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x23562, 40,
    1, 7,

    -4,
};

const s32 * const anim_0868[8] = {
    anim_0868__v0_l0,
    anim_0868__v1_l0,
    anim_0868__v2_l0,
    anim_0868__v3_l0,
    anim_0868__v4_l0,
    anim_0868__v5_l0,
    anim_0868__v6_l0,
    anim_0868__v7_l0,
};

const s32 anim_0869__v0_l0[] = {
    -2, 231, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2358A, 20,
    1, 0,

    -4,
};

const s32 anim_0869__v1_l0[] = {
    -2, 230, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x2359E, 20,
    1, 1,

    -4,
};

const s32 anim_0869__v2_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    1, -1,

    -4,
};

const s32 anim_0869__v3_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    1, -1,

    -4,
};

const s32 anim_0869__v4_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x235B2, 8,
    1, 2,

    -4,
};

const s32 anim_0869__v5_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0869[6] = {
    anim_0869__v0_l0,
    anim_0869__v1_l0,
    anim_0869__v2_l0,
    anim_0869__v3_l0,
    anim_0869__v4_l0,
    anim_0869__v5_l0,
};

const s32 anim_0870__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x235BA, 4,
    60, 0,

    -4,
};

const s32 anim_0870__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x235BE, 4,
    60, 1,

    -4,
};

const s32 anim_0870__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x235C2, 4,
    60, 2,

    -4,
};

const s32 anim_0870__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x235C6, 4,
    60, 3,

    -4,
};

const s32 anim_0870__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x235CA, 4,
    60, 4,

    -4,
};

const s32 anim_0870__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x235CE, 4,
    60, 5,

    -4,
};

const s32 * const anim_0870[6] = {
    anim_0870__v0_l0,
    anim_0870__v1_l0,
    anim_0870__v2_l0,
    anim_0870__v3_l0,
    anim_0870__v4_l0,
    anim_0870__v5_l0,
};

const s32 anim_0871__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x235D2, 6,
    2, 0,

    -1, 0x235D8, 24,
    2, 1,

    -1, 0x235F0, 24,
    2, 2,

    -1, 0x23608, 24,
    2, 3,

    -1, 0x23620, 36,
    3, 4,

    -1, 0x23644, 24,
    3, 5,

    -1, 0x2365C, 24,
    16, 6,

    -4,
};

const s32 anim_0871__v1_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x235D2, 6,
    2, 0,

    -1, 0x23674, 24,
    2, 7,

    -1, 0x2368C, 24,
    2, 8,

    -1, 0x236A4, 24,
    2, 9,

    -1, 0x236BC, 36,
    3, 10,

    -1, 0x236E0, 24,
    3, 11,

    -1, 0x236F8, 24,
    16, 12,

    -4,
};

const s32 anim_0871__v2_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x235D2, 6,
    2, 0,

    -1, 0x23710, 24,
    2, 13,

    -1, 0x23728, 24,
    2, 14,

    -1, 0x23740, 24,
    2, 15,

    -1, 0x23758, 36,
    3, 16,

    -1, 0x2377C, 24,
    3, 17,

    -1, 0x23794, 24,
    16, 18,

    -4,
};

const s32 anim_0871__v3_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x235D2, 6,
    2, 0,

    -1, 0x237AC, 24,
    2, 19,

    -1, 0x237C4, 24,
    2, 20,

    -1, 0x237DC, 24,
    2, 21,

    -1, 0x237F4, 36,
    3, 22,

    -1, 0x23818, 24,
    3, 23,

    -1, 0x23830, 24,
    16, 24,

    -4,
};

const s32 anim_0871__v4_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x235D2, 6,
    2, 0,

    -1, 0x23848, 24,
    2, 25,

    -1, 0x23860, 24,
    2, 26,

    -1, 0x23878, 24,
    2, 27,

    -1, 0x23890, 36,
    3, 28,

    -1, 0x238B4, 24,
    3, 29,

    -1, 0x238CC, 24,
    16, 30,

    -4,
};

const s32 anim_0871__v5_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x235D2, 6,
    2, 0,

    -1, 0x238E4, 24,
    2, 31,

    -1, 0x238FC, 24,
    2, 32,

    -1, 0x23914, 24,
    2, 33,

    -1, 0x2392C, 36,
    3, 34,

    -1, 0x23818, 24,
    3, 23,

    -1, 0x23950, 24,
    16, 35,

    -4,
};

const s32 * const anim_0871[6] = {
    anim_0871__v0_l0,
    anim_0871__v1_l0,
    anim_0871__v2_l0,
    anim_0871__v3_l0,
    anim_0871__v4_l0,
    anim_0871__v5_l0,
};

const s32 anim_0872__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x23968, 10,
    2, 0,

    -1, 0x23972, 10,
    2, 1,

    -1, 0x2397C, 10,
    2, 2,

    -1, 0x23986, 10,
    2, 3,

    -1, 0x23990, 15,
    2, 4,

    -1, 0x2399F, 15,
    2, 5,

    -4,
};

const s32 * const anim_0872[1] = {
    anim_0872__v0_l0,
};

const s32 anim_0873__v0_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x239AE, 1,
    2, 0,

    -1, 0x239AF, 1,
    2, 1,

    -3, 13,
};

const s32 anim_0873__v1_l0[] = {
    -2, 23, (((u16)16 << 0) | ((u16)0x40 << 16)),
    -1, 0x239AE, 1,
    2, 0,

    -1, 0x239AF, 1,
    2, 1,

    -1, 0x239AE, 1,
    2, 0,

    -1, 0x239AF, 1,
    2, 1,

    -1, 0x239AE, 1,
    2, 0,

    -1, 0x239AF, 1,
    2, 1,

    -1, 0x239B0, 1,
    2, 2,

    -1, 0x239B1, 1,
    2, 3,

    -1, 0x239B2, 1,
    2, 4,

    -1, 0x239B3, 1,
    2, 5,

    -4,
};

const s32 * const anim_0873[2] = {
    anim_0873__v0_l0,
    anim_0873__v1_l0,
};

const s32 anim_0874__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x239B4, 38,
    1, 0,

    -4,
};

const s32 anim_0874__v1_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x239DA, 30,
    1, 1,

    -4,
};

const s32 anim_0874__v2_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x239F8, 32,
    1, 2,

    -4,
};

const s32 anim_0874__v3_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23A18, 22,
    1, 3,

    -4,
};

const s32 anim_0874__v4_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23A2E, 44,
    1, 4,

    -4,
};

const s32 anim_0874__v5_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23A5A, 34,
    1, 5,

    -4,
};

const s32 anim_0874__v6_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23A7C, 32,
    1, 6,

    -4,
};

const s32 * const anim_0874[7] = {
    anim_0874__v0_l0,
    anim_0874__v1_l0,
    anim_0874__v2_l0,
    anim_0874__v3_l0,
    anim_0874__v4_l0,
    anim_0874__v5_l0,
    anim_0874__v6_l0,
};

const s32 anim_0875__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23A9C, 38,
    1, 0,

    -4,
};

const s32 anim_0875__v1_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23AC2, 26,
    1, 1,

    -4,
};

const s32 anim_0875__v2_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23ADC, 28,
    1, 2,

    -4,
};

const s32 anim_0875__v3_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23AF8, 22,
    1, 3,

    -4,
};

const s32 anim_0875__v4_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23B0E, 46,
    1, 4,

    -4,
};

const s32 anim_0875__v5_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23B3C, 30,
    1, 5,

    -4,
};

const s32 anim_0875__v6_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23B5A, 34,
    1, 6,

    -4,
};

const s32 * const anim_0875[7] = {
    anim_0875__v0_l0,
    anim_0875__v1_l0,
    anim_0875__v2_l0,
    anim_0875__v3_l0,
    anim_0875__v4_l0,
    anim_0875__v5_l0,
    anim_0875__v6_l0,
};

const s32 anim_0876__v0_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23B7C, 46,
    1, 0,

    -4,
};

const s32 anim_0876__v1_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23BAA, 26,
    1, 1,

    -4,
};

const s32 anim_0876__v2_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23BC4, 28,
    1, 2,

    -4,
};

const s32 anim_0876__v3_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23BE0, 20,
    1, 3,

    -4,
};

const s32 anim_0876__v4_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23BF4, 44,
    1, 4,

    -4,
};

const s32 anim_0876__v5_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23C20, 34,
    1, 5,

    -4,
};

const s32 anim_0876__v6_l0[] = {
    -2, 232, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23C42, 26,
    1, 6,

    -4,
};

const s32 * const anim_0876[7] = {
    anim_0876__v0_l0,
    anim_0876__v1_l0,
    anim_0876__v2_l0,
    anim_0876__v3_l0,
    anim_0876__v4_l0,
    anim_0876__v5_l0,
    anim_0876__v6_l0,
};

const s32 anim_0877__v0_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23C5C, 30,
    1, 0,

    -3, 8,
};

const s32 anim_0877__v1_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23C7A, 30,
    1, 1,

    -4,
};

const s32 anim_0877__v2_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23C98, 38,
    1, 2,

    -4,
};

const s32 anim_0877__v3_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23CBE, 22,
    1, 3,

    -4,
};

const s32 anim_0877__v4_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23CD4, 38,
    1, 4,

    -4,
};

const s32 anim_0877__v5_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23CFA, 22,
    1, 5,

    -4,
};

const s32 anim_0877__v6_l0[] = {
    -2, 233, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23D10, 30,
    1, 6,

    -4,
};

const s32 * const anim_0877[7] = {
    anim_0877__v0_l0,
    anim_0877__v1_l0,
    anim_0877__v2_l0,
    anim_0877__v3_l0,
    anim_0877__v4_l0,
    anim_0877__v5_l0,
    anim_0877__v6_l0,
};

const s32 anim_0878__v0_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23D2E, 30,
    1, 0,

    -4,
};

const s32 anim_0878__v1_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23D4C, 26,
    1, 1,

    -4,
};

const s32 anim_0878__v2_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23D66, 40,
    1, 2,

    -4,
};

const s32 anim_0878__v3_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23D8E, 18,
    1, 3,

    -4,
};

const s32 anim_0878__v4_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23DA0, 38,
    1, 4,

    -4,
};

const s32 anim_0878__v5_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23DC6, 38,
    1, 5,

    -4,
};

const s32 anim_0878__v6_l0[] = {
    -2, 234, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x23DEC, 38,
    1, 6,

    -4,
};

const s32 * const anim_0878[7] = {
    anim_0878__v0_l0,
    anim_0878__v1_l0,
    anim_0878__v2_l0,
    anim_0878__v3_l0,
    anim_0878__v4_l0,
    anim_0878__v5_l0,
    anim_0878__v6_l0,
};

const s32 anim_0879__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23E12, 4,
    1, 0,

    -4,
};

const s32 * const anim_0879[1] = {
    anim_0879__v0_l0,
};

const s32 anim_0880__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23E16, 4,
    1, 0,

    -4,
};

const s32 * const anim_0880[1] = {
    anim_0880__v0_l0,
};

const s32 anim_0881__v0_l0[] = {
    -2, 2, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x23E1A, 8,
    -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)),
    5, 0,

    -1, 0x23E22, 8,
    -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)),
    5, 1,

    -1, 0x23E2A, 8,
    -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)),
    5, 2,

    -1, 0x23E32, 8,
    -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)),
    5, 3,

    -1, 0x23E3A, 8,
    -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)),
    5, 4,

    -1, 0x23E42, 8,
    -6, 0, (((1 & 0xFF) << 0) | ((-18 & 0xFF) << 8) | ((1 & 0xFF) << 16) | ((-18 & 0xFF) << 24)),
    5, 5,

    -3, 51,
};

const s32 * const anim_0881[1] = {
    anim_0881__v0_l0,
};

const s32 anim_0882__v0_l0[] = {
    -1, 0x23E4A, 16,
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    6, 0,

    6, 1,

    6, 2,

    6, 3,

    -3, 11,
};

const s32 anim_0882__v1_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23E5A, 4,
    6, 4,

    -1, 0x23E5E, 4,
    6, 5,

    -1, 0x23E62, 4,
    6, 6,

    -1, 0x23E66, 4,
    6, 7,

    -3, 23,
};

const s32 anim_0882__v2_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23E6A, 1,
    6, 8,

    -1, 0x23E6B, 1,
    6, 9,

    -1, 0x23E6C, 1,
    6, 10,

    -1, 0x23E6D, 1,
    6, 11,

    -3, 23,
};

const s32 anim_0882__v3_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23E6E, 1,
    6, 12,

    -1, 0x23E6F, 1,
    6, 13,

    -1, 0x23E70, 1,
    6, 14,

    -1, 0x23E71, 1,
    6, 15,

    -3, 23,
};

const s32 anim_0882__v4_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23E72, 1,
    6, 16,

    -1, 0x23E73, 1,
    6, 17,

    -1, 0x23E74, 1,
    6, 18,

    -1, 0x23E75, 1,
    6, 19,

    -3, 23,
};

const s32 anim_0882__v5_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23E76, 4,
    6, 20,

    -1, 0x23E7A, 4,
    6, 21,

    -1, 0x23E7E, 4,
    6, 22,

    -1, 0x23E82, 4,
    6, 23,

    -3, 23,
};

const s32 anim_0882__v6_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23E86, 4,
    6, 24,

    -1, 0x23E8A, 4,
    6, 25,

    -1, 0x23E8E, 4,
    6, 26,

    -1, 0x23E92, 4,
    6, 27,

    -3, 23,
};

const s32 anim_0882__v7_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23E96, 1,
    6, 28,

    -1, 0x23E97, 1,
    6, 29,

    -1, 0x23E98, 1,
    6, 30,

    -1, 0x23E99, 1,
    6, 31,

    -3, 23,
};

const s32 anim_0882__v8_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23E9A, 1,
    6, 32,

    -1, 0x23E9B, 1,
    6, 33,

    -1, 0x23E9C, 1,
    6, 34,

    -1, 0x23E9D, 1,
    6, 35,

    -3, 23,
};

const s32 anim_0882__v9_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23E9E, 1,
    6, 36,

    -1, 0x23E9F, 1,
    6, 37,

    -1, 0x23EA0, 1,
    6, 38,

    -1, 0x23EA1, 1,
    6, 39,

    -3, 23,
};

const s32 anim_0882__v10_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23EA2, 1,
    6, 40,

    -1, 0x23EA3, 1,
    6, 41,

    -1, 0x23EA4, 1,
    6, 42,

    -1, 0x23EA5, 1,
    6, 43,

    -3, 23,
};

const s32 anim_0882__v11_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23EA6, 1,
    6, 44,

    -1, 0x23EA7, 1,
    6, 45,

    -1, 0x23EA8, 1,
    6, 46,

    -1, 0x23EA9, 1,
    6, 47,

    -3, 23,
};

const s32 anim_0882__v12_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23EAA, 1,
    6, 48,

    -1, 0x23EAB, 1,
    6, 49,

    -1, 0x23EAC, 1,
    6, 50,

    -1, 0x23EAD, 1,
    6, 51,

    -3, 23,
};

const s32 anim_0882__v13_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23EAE, 1,
    6, 52,

    -1, 0x23EAF, 1,
    6, 53,

    -1, 0x23EB0, 1,
    6, 54,

    -1, 0x23EB1, 1,
    6, 55,

    -3, 23,
};

const s32 anim_0882__v14_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x23EB2, 1,
    6, 56,

    -1, 0x23EB3, 1,
    6, 57,

    -1, 0x23EB4, 1,
    6, 58,

    -1, 0x23EB5, 1,
    6, 59,

    -3, 23,
};

const s32 anim_0882__v15_l0[] = {
    -2, 235, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x23EB6, 1,
    6, 60,

    -1, 0x23EB7, 1,
    6, 61,

    -1, 0x23EB8, 1,
    6, 62,

    -1, 0x23EB9, 1,
    6, 63,

    -3, 23,
};

const s32 * const anim_0882[16] = {
    anim_0882__v0_l0,
    anim_0882__v1_l0,
    anim_0882__v2_l0,
    anim_0882__v3_l0,
    anim_0882__v4_l0,
    anim_0882__v5_l0,
    anim_0882__v6_l0,
    anim_0882__v7_l0,
    anim_0882__v8_l0,
    anim_0882__v9_l0,
    anim_0882__v10_l0,
    anim_0882__v11_l0,
    anim_0882__v12_l0,
    anim_0882__v13_l0,
    anim_0882__v14_l0,
    anim_0882__v15_l0,
};

const s32 anim_0883__v0_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x23EBA, 64,
    3, 0,

    -1, 0x23EFA, 64,
    3, 1,

    -3, 13,
};

const s32 anim_0883__v1_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x23F3A, 64,
    3, 2,

    -1, 0x23F7A, 64,
    3, 3,

    -3, 13,
};

const s32 anim_0883__v2_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x23FBA, 64,
    3, 4,

    -1, 0x23FFA, 64,
    3, 5,

    -3, 13,
};

const s32 anim_0883__v3_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2403A, 64,
    3, 6,

    -1, 0x2407A, 64,
    3, 7,

    -3, 13,
};

const s32 anim_0883__v4_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x240BA, 64,
    3, 8,

    -1, 0x240FA, 64,
    3, 9,

    -3, 13,
};

const s32 anim_0883__v5_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2413A, 64,
    3, 10,

    -1, 0x2417A, 64,
    3, 11,

    -3, 13,
};

const s32 anim_0883__v6_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x241BA, 64,
    3, 12,

    -1, 0x241FA, 64,
    3, 13,

    -3, 13,
};

const s32 anim_0883__v7_l0[] = {
    -2, 236, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2423A, 64,
    3, 14,

    -1, 0x2427A, 64,
    3, 15,

    -3, 13,
};

const s32 * const anim_0883[8] = {
    anim_0883__v0_l0,
    anim_0883__v1_l0,
    anim_0883__v2_l0,
    anim_0883__v3_l0,
    anim_0883__v4_l0,
    anim_0883__v5_l0,
    anim_0883__v6_l0,
    anim_0883__v7_l0,
};

const s32 anim_0884__v0_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242BA, 2,
    1, 0,

    -4,
};

const s32 anim_0884__v1_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242BC, 4,
    1, 1,

    -4,
};

const s32 anim_0884__v2_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242C0, 1,
    1, 2,

    -4,
};

const s32 anim_0884__v3_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242C1, 1,
    1, 3,

    -4,
};

const s32 * const anim_0884[4] = {
    anim_0884__v0_l0,
    anim_0884__v1_l0,
    anim_0884__v2_l0,
    anim_0884__v3_l0,
};

const s32 anim_0885__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242C2, 2,
    1, 0,

    -4,
};

const s32 anim_0885__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242C4, 2,
    1, 1,

    -4,
};

const s32 anim_0885__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242C6, 2,
    1, 2,

    -4,
};

const s32 anim_0885__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242C8, 2,
    1, 3,

    -4,
};

const s32 anim_0885__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242CA, 2,
    1, 4,

    -4,
};

const s32 anim_0885__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242CC, 2,
    1, 5,

    -4,
};

const s32 anim_0885__v6_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242CE, 2,
    1, 6,

    -4,
};

const s32 anim_0885__v7_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242D0, 2,
    1, 7,

    -4,
};

const s32 * const anim_0885[8] = {
    anim_0885__v0_l0,
    anim_0885__v1_l0,
    anim_0885__v2_l0,
    anim_0885__v3_l0,
    anim_0885__v4_l0,
    anim_0885__v5_l0,
    anim_0885__v6_l0,
    anim_0885__v7_l0,
};

const s32 anim_0886__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242D2, 20,
    1, 0,

    -4,
};

const s32 * const anim_0886[1] = {
    anim_0886__v0_l0,
};

const s32 anim_0887__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x242E6, 1,
    1, 0,

    -4,
};

const s32 * const anim_0887[1] = {
    anim_0887__v0_l0,
};

const s32 anim_0888__v0_l0[] = {
    -2, 237, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x242E7, 8,
    1, 0,

    -4,
};

const s32 anim_0888__v1_l0[] = {
    -2, 237, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x242EF, 8,
    3, 1,

    -1, 0x242F7, 8,
    3, 2,

    -1, 0x242FF, 8,
    3, 3,

    -1, 0x24307, 8,
    3, 4,

    -3, 23,
};

const s32 * const anim_0888[2] = {
    anim_0888__v0_l0,
    anim_0888__v1_l0,
};

const s32 anim_0889__v0_l0[] = {
    -2, 52, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0889[1] = {
    anim_0889__v0_l0,
};

const s32 anim_0890__v0_l0[] = {
    -2, 238, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2430F, 4,
    3, 0,

    -1, 0x24313, 4,
    2, 1,

    -3, 13,
};

const s32 anim_0890__v1_l0[] = {
    -2, 238, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x24317, 4,
    3, 2,

    -1, 0x2431B, 4,
    2, 3,

    -3, 13,
};

const s32 anim_0890__v2_l0[] = {
    -2, 238, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2431F, 4,
    3, 4,

    -1, 0x24323, 4,
    2, 5,

    -3, 13,
};

const s32 * const anim_0890[3] = {
    anim_0890__v0_l0,
    anim_0890__v1_l0,
    anim_0890__v2_l0,
};

const s32 anim_0891__v0_l0[] = {
    -1, 0x24327, 4,
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    4, 0,

    -4,
};

const s32 anim_0891__v1_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2432B, 4,
    4, 1,

    -4,
};

const s32 anim_0891__v2_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2432F, 4,
    4, 2,

    -4,
};

const s32 anim_0891__v3_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x24333, 4,
    4, 3,

    -4,
};

const s32 * const anim_0891[4] = {
    anim_0891__v0_l0,
    anim_0891__v1_l0,
    anim_0891__v2_l0,
    anim_0891__v3_l0,
};

const s32 anim_0892__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x24337, 40,
    1, 0,

    -4,
};

const s32 * const anim_0892[1] = {
    anim_0892__v0_l0,
};

const s32 anim_0893__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2435F, 32,
    1, 0,

    -4,
};

const s32 anim_0893__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2437F, 40,
    1, 1,

    -4,
};

const s32 * const anim_0893[2] = {
    anim_0893__v0_l0,
    anim_0893__v1_l0,
};

const s32 anim_0894__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x243A7, 22,
    1, 0,

    -4,
};

const s32 anim_0894__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x243BD, 22,
    1, 1,

    -4,
};

const s32 anim_0894__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x243D3, 22,
    1, 2,

    -4,
};

const s32 * const anim_0894[3] = {
    anim_0894__v0_l0,
    anim_0894__v1_l0,
    anim_0894__v2_l0,
};

const s32 anim_0895__v0_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x243E9, 9,
    1, 0,

    -4,
};

const s32 anim_0895__v1_l0[] = {
    -2, 178, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x243F2, 9,
    1, 1,

    -4,
};

const s32 anim_0895__v2_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x243FB, 9,
    1, 2,

    -4,
};

const s32 anim_0895__v3_l0[] = {
    -2, 179, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    -1, 0x24404, 9,
    1, 3,

    -4,
};

const s32 anim_0895__v4_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x2440D, 9,
    1, 4,

    -4,
};

const s32 anim_0895__v5_l0[] = {
    -2, 180, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    -1, 0x24416, 9,
    1, 5,

    -4,
};

const s32 anim_0895__v6_l0[] = {
    -2, 239, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x2441F, 9,
    1, 6,

    -4,
};

const s32 anim_0895__v7_l0[] = {
    -2, 239, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x24428, 9,
    1, 7,

    -4,
};

const s32 anim_0895__v8_l0[] = {
    -2, 239, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x24431, 9,
    3, 8,

    -1, 0x2443A, 9,
    3, 9,

    -1, 0x24443, 9,
    2, 10,

    -1, 0x24428, 9,
    2, 7,

    -1, 0x2444C, 9,
    2, 11,

    -4,
};

const s32 * const anim_0895[9] = {
    anim_0895__v0_l0,
    anim_0895__v1_l0,
    anim_0895__v2_l0,
    anim_0895__v3_l0,
    anim_0895__v4_l0,
    anim_0895__v5_l0,
    anim_0895__v6_l0,
    anim_0895__v7_l0,
    anim_0895__v8_l0,
};

const s32 anim_0896__v0_l0[] = {
    -2, 240, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 241, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 240, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 241, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 242, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 243, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 242, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 241, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -3, 40,
};

const s32 * const anim_0896[1] = {
    anim_0896__v0_l0,
};

const s32 anim_0897__v0_l0[] = {
    -2, 244, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 245, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 246, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 247, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 248, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 249, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 250, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -2, 251, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    1, -1,

    -3, 40,
};

const s32 * const anim_0897[1] = {
    anim_0897__v0_l0,
};

const s32 anim_0898__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0x20 << 16)),
    2, -1,

    -2, 253, (((u16)16 << 0) | ((u16)0x20 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0898[1] = {
    anim_0898__v0_l0,
};

const s32 anim_0899__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0x70 << 16)),
    2, -1,

    -2, 253, (((u16)16 << 0) | ((u16)0x70 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0899[1] = {
    anim_0899__v0_l0,
};

const s32 anim_0900__v0_l0[] = {
    -2, 254, (((u16)16 << 0) | ((u16)0x0 << 16)),
    20, -1,

    -2, 255, (((u16)16 << 0) | ((u16)0x0 << 16)),
    20, -1,

    -2, 256, (((u16)16 << 0) | ((u16)0x0 << 16)),
    20, -1,

    -3, 15,
};

const s32 anim_0900__v1_l0[] = {
    -2, 255, (((u16)16 << 0) | ((u16)0x10 << 16)),
    20, -1,

    -2, 256, (((u16)16 << 0) | ((u16)0x10 << 16)),
    20, -1,

    -2, 254, (((u16)16 << 0) | ((u16)0x10 << 16)),
    20, -1,

    -3, 15,
};

const s32 anim_0900__v2_l0[] = {
    -2, 256, (((u16)16 << 0) | ((u16)0x20 << 16)),
    20, -1,

    -2, 254, (((u16)16 << 0) | ((u16)0x20 << 16)),
    20, -1,

    -2, 255, (((u16)16 << 0) | ((u16)0x20 << 16)),
    20, -1,

    -3, 15,
};

const s32 * const anim_0900[3] = {
    anim_0900__v0_l0,
    anim_0900__v1_l0,
    anim_0900__v2_l0,
};

const s32 anim_0901__v0_l0[] = {
    -2, 257, (((u16)16 << 0) | ((u16)0x90 << 16)),
    3, -1,

    -2, 258, (((u16)16 << 0) | ((u16)0x90 << 16)),
    3, -1,

    -2, 259, (((u16)16 << 0) | ((u16)0x90 << 16)),
    3, -1,

    -2, 260, (((u16)16 << 0) | ((u16)0x90 << 16)),
    3, -1,

    -2, 261, (((u16)16 << 0) | ((u16)0x90 << 16)),
    3, -1,

    -2, 262, (((u16)16 << 0) | ((u16)0x90 << 16)),
    3, -1,

    -3, 30,
};

const s32 * const anim_0901[1] = {
    anim_0901__v0_l0,
};

const s32 anim_0902__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0x0 << 16)),
    2, -1,

    -2, 253, (((u16)16 << 0) | ((u16)0x0 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0902[1] = {
    anim_0902__v0_l0,
};

const s32 anim_0903__v0_l0[] = {
    -2, 263, (((u16)16 << 0) | ((u16)0x30 << 16)),
    2, -1,

    -2, 264, (((u16)16 << 0) | ((u16)0x30 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0903[1] = {
    anim_0903__v0_l0,
};

const s32 anim_0904__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0x60 << 16)),
    2, -1,

    -2, 253, (((u16)16 << 0) | ((u16)0x60 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0904[1] = {
    anim_0904__v0_l0,
};

const s32 anim_0905__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0x60 << 16)),
    2, -1,

    -2, 253, (((u16)16 << 0) | ((u16)0x60 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0905[1] = {
    anim_0905__v0_l0,
};

const s32 anim_0906__v0_l0[] = {
    -2, 265, (((u16)16 << 0) | ((u16)0x20 << 16)),
    100, -1,

    -2, 266, (((u16)16 << 0) | ((u16)0x20 << 16)),
    8, -1,

    -2, 267, (((u16)16 << 0) | ((u16)0x20 << 16)),
    8, -1,

    -2, 268, (((u16)16 << 0) | ((u16)0x20 << 16)),
    8, -1,

    -3, 20,
};

const s32 anim_0906__v1_l0[] = {
    -2, 269, (((u16)16 << 0) | ((u16)0x30 << 16)),
    8, -1,

    -2, 270, (((u16)16 << 0) | ((u16)0x30 << 16)),
    8, -1,

    -2, 271, (((u16)16 << 0) | ((u16)0x30 << 16)),
    100, -1,

    -2, 272, (((u16)16 << 0) | ((u16)0x30 << 16)),
    8, -1,

    -3, 20,
};

const s32 anim_0906__v2_l0[] = {
    -2, 273, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    9, -1,

    -2, 274, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    9, -1,

    -2, 275, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    9, -1,

    -2, 276, (((u16)16 << 0) | ((u16)0xD0 << 16)),
    9, -1,

    -3, 20,
};

const s32 * const anim_0906[3] = {
    anim_0906__v0_l0,
    anim_0906__v1_l0,
    anim_0906__v2_l0,
};

const s32 anim_0907__v0_l0[] = {
    -2, 277, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 278, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 279, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 280, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 281, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 282, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 283, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,
    -2, 284, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 285, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -3, 10,
};

const s32 * const anim_0907[1] = {
    anim_0907__v0_l0,
};

const s32 anim_0908__v0_l0[] = {
    -2, 286, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 287, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 288, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 289, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 290, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 291, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 292, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,
    -2, 293, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -2, 294, (((u16)16 << 0) | ((u16)0x90 << 16)),
    5, -1,

    -3, 10,
};

const s32 * const anim_0908[1] = {
    anim_0908__v0_l0,
};

const s32 anim_0909__v0_l0[] = {
    -2, 295, (((u16)16 << 0) | ((u16)0x20 << 16)),
    10, -1,

    -2, 296, (((u16)16 << 0) | ((u16)0x20 << 16)),
    10, -1,

    -2, 297, (((u16)16 << 0) | ((u16)0x20 << 16)),
    10, -1,

    -3, 15,
};

const s32 * const anim_0909[1] = {
    anim_0909__v0_l0,
};

const s32 anim_0910__v0_l0[] = {
    -2, 298, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 299, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 300, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 301, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 302, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 303, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 304, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 303, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 302, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 301, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 300, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -2, 299, (((u16)16 << 0) | ((u16)0x10 << 16)),
    9, -1,

    -3, 60,
};

const s32 * const anim_0910[1] = {
    anim_0910__v0_l0,
};

const s32 anim_0911__v0_l0[] = {
    -2, 305, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 306, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 307, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 308, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 309, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 310, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 311, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 312, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 311, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 310, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 309, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -2, 308, (((u16)16 << 0) | ((u16)0x40 << 16)),
    9, -1,

    -3, 60,
};

const s32 * const anim_0911[1] = {
    anim_0911__v0_l0,
};

const s32 anim_0912__v0_l0[] = {
    -2, 313, (((u16)16 << 0) | ((u16)0x50 << 16)),
    9, -1,

    -2, 314, (((u16)16 << 0) | ((u16)0x50 << 16)),
    9, -1,

    -2, 315, (((u16)16 << 0) | ((u16)0x50 << 16)),
    9, -1,

    -2, 316, (((u16)16 << 0) | ((u16)0x50 << 16)),
    9, -1,

    -2, 317, (((u16)16 << 0) | ((u16)0x50 << 16)),
    9, -1,

    -2, 318, (((u16)16 << 0) | ((u16)0x50 << 16)),
    9, -1,

    -3, 30,
};

const s32 * const anim_0912[1] = {
    anim_0912__v0_l0,
};

const s32 anim_0913__v0_l0[] = {
    -2, 319, (((u16)16 << 0) | ((u16)0x60 << 16)),
    9, -1,

    -2, 320, (((u16)16 << 0) | ((u16)0x60 << 16)),
    9, -1,

    -2, 321, (((u16)16 << 0) | ((u16)0x60 << 16)),
    9, -1,

    -2, 322, (((u16)16 << 0) | ((u16)0x60 << 16)),
    9, -1,

    -2, 323, (((u16)16 << 0) | ((u16)0x60 << 16)),
    9, -1,

    -2, 320, (((u16)16 << 0) | ((u16)0x60 << 16)),
    9, -1,

    -3, 30,
};

const s32 * const anim_0913[1] = {
    anim_0913__v0_l0,
};

const s32 anim_0914__v0_l0[] = {
    -2, 324, (((u16)16 << 0) | ((u16)0x70 << 16)),
    9, -1,

    -2, 325, (((u16)16 << 0) | ((u16)0x70 << 16)),
    9, -1,

    -2, 326, (((u16)16 << 0) | ((u16)0x70 << 16)),
    9, -1,

    -2, 327, (((u16)16 << 0) | ((u16)0x70 << 16)),
    9, -1,

    -2, 326, (((u16)16 << 0) | ((u16)0x70 << 16)),
    9, -1,

    -2, 325, (((u16)16 << 0) | ((u16)0x70 << 16)),
    9, -1,

    -3, 30,
};

const s32 * const anim_0914[1] = {
    anim_0914__v0_l0,
};

const s32 anim_0915__v0_l0[] = {
    -2, 328, (((u16)16 << 0) | ((u16)0x10 << 16)),
    30, -1,

    -2, 329, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 330, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 331, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 332, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 333, (((u16)16 << 0) | ((u16)0x10 << 16)),
    30, -1,

    -2, 334, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 335, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 336, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 337, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 338, (((u16)16 << 0) | ((u16)0x10 << 16)),
    30, -1,

    -2, 339, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 340, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 341, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 342, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0915[1] = {
    anim_0915__v0_l0,
};

const s32 anim_0916__v0_l0[] = {
    -2, 343, (((u16)16 << 0) | ((u16)0x50 << 16)),
    30, -1,

    -2, 344, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 345, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 346, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 347, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 348, (((u16)16 << 0) | ((u16)0x50 << 16)),
    30, -1,

    -2, 349, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 350, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 351, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 352, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 353, (((u16)16 << 0) | ((u16)0x50 << 16)),
    30, -1,

    -2, 354, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 355, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 356, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 357, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0916[1] = {
    anim_0916__v0_l0,
};

const s32 anim_0917__v0_l0[] = {
    -2, 358, (((u16)16 << 0) | ((u16)0x60 << 16)),
    30, -1,

    -2, 359, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 360, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 361, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 362, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 363, (((u16)16 << 0) | ((u16)0x60 << 16)),
    30, -1,

    -2, 364, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 365, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 366, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 367, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 368, (((u16)16 << 0) | ((u16)0x60 << 16)),
    30, -1,

    -2, 369, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 370, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 371, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 372, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0917[1] = {
    anim_0917__v0_l0,
};

const s32 anim_0918__v0_l0[] = {
    -2, 373, (((u16)16 << 0) | ((u16)0x40 << 16)),
    30, -1,

    -2, 374, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 375, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 376, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 377, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 378, (((u16)16 << 0) | ((u16)0x40 << 16)),
    30, -1,

    -2, 379, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 380, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 381, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 382, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 383, (((u16)16 << 0) | ((u16)0x40 << 16)),
    30, -1,

    -2, 384, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 385, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 386, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 387, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0918[1] = {
    anim_0918__v0_l0,
};

const s32 anim_0919__v0_l0[] = {
    -2, 388, (((u16)16 << 0) | ((u16)0x70 << 16)),
    30, -1,

    -2, 389, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 390, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 391, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 392, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 393, (((u16)16 << 0) | ((u16)0x70 << 16)),
    30, -1,

    -2, 394, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 395, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 396, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 397, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 398, (((u16)16 << 0) | ((u16)0x70 << 16)),
    30, -1,

    -2, 399, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 400, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 401, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 402, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0919[1] = {
    anim_0919__v0_l0,
};

const s32 anim_0920__v0_l0[] = {
    -2, 403, (((u16)16 << 0) | ((u16)0x80 << 16)),
    30, -1,

    -2, 404, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 405, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 406, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 407, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 408, (((u16)16 << 0) | ((u16)0x80 << 16)),
    30, -1,

    -2, 409, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 410, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 411, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 412, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 413, (((u16)16 << 0) | ((u16)0x80 << 16)),
    30, -1,

    -2, 414, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 415, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 416, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 417, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0920[1] = {
    anim_0920__v0_l0,
};

const s32 anim_0921__v0_l0[] = {
    -2, 418, (((u16)16 << 0) | ((u16)0x90 << 16)),
    30, -1,

    -2, 419, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 420, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 421, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 422, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 423, (((u16)16 << 0) | ((u16)0x90 << 16)),
    30, -1,

    -2, 424, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 425, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 426, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 427, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 428, (((u16)16 << 0) | ((u16)0x90 << 16)),
    30, -1,

    -2, 429, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 430, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 431, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 432, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0921[1] = {
    anim_0921__v0_l0,
};

const s32 anim_0922__v0_l0[] = {
    -2, 295, (((u16)16 << 0) | ((u16)0x20 << 16)),
    10, -1,

    -2, 296, (((u16)16 << 0) | ((u16)0x20 << 16)),
    10, -1,

    -2, 297, (((u16)16 << 0) | ((u16)0x20 << 16)),
    10, -1,

    -3, 15,
};

const s32 * const anim_0922[1] = {
    anim_0922__v0_l0,
};

const s32 anim_0923__v0_l0[] = {
    -2, 433, (((u16)16 << 0) | ((u16)0x10 << 16)),
    30, -1,

    -2, 434, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 435, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 436, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 437, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 438, (((u16)16 << 0) | ((u16)0x10 << 16)),
    30, -1,

    -2, 439, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 440, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 441, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 442, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 443, (((u16)16 << 0) | ((u16)0x10 << 16)),
    30, -1,

    -2, 444, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 445, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 446, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -2, 447, (((u16)16 << 0) | ((u16)0x10 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0923[1] = {
    anim_0923__v0_l0,
};

const s32 anim_0924__v0_l0[] = {
    -2, 448, (((u16)16 << 0) | ((u16)0x50 << 16)),
    30, -1,

    -2, 449, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 450, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 451, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 452, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 453, (((u16)16 << 0) | ((u16)0x50 << 16)),
    30, -1,

    -2, 454, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 455, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 456, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 457, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 458, (((u16)16 << 0) | ((u16)0x50 << 16)),
    30, -1,

    -2, 459, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 460, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 461, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -2, 462, (((u16)16 << 0) | ((u16)0x50 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0924[1] = {
    anim_0924__v0_l0,
};

const s32 anim_0925__v0_l0[] = {
    -2, 463, (((u16)16 << 0) | ((u16)0x60 << 16)),
    30, -1,

    -2, 464, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 465, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 466, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 467, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 468, (((u16)16 << 0) | ((u16)0x60 << 16)),
    30, -1,

    -2, 469, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 470, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 471, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 472, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 473, (((u16)16 << 0) | ((u16)0x60 << 16)),
    30, -1,

    -2, 474, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 475, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 476, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -2, 477, (((u16)16 << 0) | ((u16)0x60 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0925[1] = {
    anim_0925__v0_l0,
};

const s32 anim_0926__v0_l0[] = {
    -2, 478, (((u16)16 << 0) | ((u16)0x40 << 16)),
    30, -1,

    -2, 479, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 480, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 481, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 482, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 483, (((u16)16 << 0) | ((u16)0x40 << 16)),
    30, -1,

    -2, 484, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 485, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 486, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 487, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 488, (((u16)16 << 0) | ((u16)0x40 << 16)),
    30, -1,

    -2, 489, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 490, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 491, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -2, 492, (((u16)16 << 0) | ((u16)0x40 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0926[1] = {
    anim_0926__v0_l0,
};

const s32 anim_0927__v0_l0[] = {
    -2, 493, (((u16)16 << 0) | ((u16)0x70 << 16)),
    30, -1,

    -2, 494, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 495, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 496, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 497, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 498, (((u16)16 << 0) | ((u16)0x70 << 16)),
    30, -1,

    -2, 499, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 500, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 501, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 502, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 503, (((u16)16 << 0) | ((u16)0x70 << 16)),
    30, -1,

    -2, 504, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 505, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 506, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 507, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0927[1] = {
    anim_0927__v0_l0,
};

const s32 anim_0928__v0_l0[] = {
    -2, 508, (((u16)16 << 0) | ((u16)0x80 << 16)),
    30, -1,

    -2, 509, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 510, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 511, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 512, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 513, (((u16)16 << 0) | ((u16)0x80 << 16)),
    30, -1,

    -2, 514, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 515, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 516, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 517, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 518, (((u16)16 << 0) | ((u16)0x80 << 16)),
    30, -1,

    -2, 519, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 520, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 521, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -2, 522, (((u16)16 << 0) | ((u16)0x80 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0928[1] = {
    anim_0928__v0_l0,
};

const s32 anim_0929__v0_l0[] = {
    -2, 523, (((u16)16 << 0) | ((u16)0x90 << 16)),
    30, -1,

    -2, 524, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 525, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 526, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 527, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 528, (((u16)16 << 0) | ((u16)0x90 << 16)),
    30, -1,

    -2, 529, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 530, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 531, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 532, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 533, (((u16)16 << 0) | ((u16)0x90 << 16)),
    30, -1,

    -2, 534, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 535, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 536, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 537, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -3, 75,
};

const s32 * const anim_0929[1] = {
    anim_0929__v0_l0,
};

const s32 anim_0930__v0_l0[] = {
    -2, 538, (((u16)16 << 0) | ((u16)0x0 << 16)),
    100, -1,

    -2, 539, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -2, 540, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -2, 541, (((u16)16 << 0) | ((u16)0x0 << 16)),
    100, -1,

    -2, 540, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -2, 539, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0930[1] = {
    anim_0930__v0_l0,
};

const s32 anim_0931__v0_l0[] = {
    -2, 542, (((u16)16 << 0) | ((u16)0x10 << 16)),
    100, -1,

    -2, 543, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -2, 544, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -2, 545, (((u16)16 << 0) | ((u16)0x10 << 16)),
    100, -1,

    -2, 544, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -2, 543, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0931[1] = {
    anim_0931__v0_l0,
};

const s32 anim_0932__v0_l0[] = {
    -2, 546, (((u16)16 << 0) | ((u16)0x20 << 16)),
    100, -1,

    -2, 547, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -2, 548, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -2, 549, (((u16)16 << 0) | ((u16)0x20 << 16)),
    100, -1,

    -2, 548, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -2, 547, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0932[1] = {
    anim_0932__v0_l0,
};

const s32 anim_0933__v0_l0[] = {
    -2, 550, (((u16)16 << 0) | ((u16)0x30 << 16)),
    100, -1,

    -2, 551, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -2, 552, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -2, 553, (((u16)16 << 0) | ((u16)0x30 << 16)),
    100, -1,

    -2, 552, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -2, 551, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0933[1] = {
    anim_0933__v0_l0,
};

const s32 anim_0934__v0_l0[] = {
    -2, 554, (((u16)16 << 0) | ((u16)0x40 << 16)),
    100, -1,

    -2, 555, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -2, 556, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -2, 557, (((u16)16 << 0) | ((u16)0x40 << 16)),
    100, -1,

    -2, 556, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -2, 555, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0934[1] = {
    anim_0934__v0_l0,
};

const s32 anim_0935__v0_l0[] = {
    -2, 558, (((u16)16 << 0) | ((u16)0x0 << 16)),
    100, -1,

    -2, 559, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -2, 560, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -2, 561, (((u16)16 << 0) | ((u16)0x0 << 16)),
    100, -1,

    -2, 560, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -2, 559, (((u16)16 << 0) | ((u16)0x0 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0935[1] = {
    anim_0935__v0_l0,
};

const s32 anim_0936__v0_l0[] = {
    -2, 562, (((u16)16 << 0) | ((u16)0x10 << 16)),
    100, -1,

    -2, 563, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -2, 564, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -2, 565, (((u16)16 << 0) | ((u16)0x10 << 16)),
    100, -1,

    -2, 564, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -2, 563, (((u16)16 << 0) | ((u16)0x10 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0936[1] = {
    anim_0936__v0_l0,
};

const s32 anim_0937__v0_l0[] = {
    -2, 566, (((u16)16 << 0) | ((u16)0x20 << 16)),
    100, -1,

    -2, 567, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -2, 568, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -2, 569, (((u16)16 << 0) | ((u16)0x20 << 16)),
    100, -1,

    -2, 568, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -2, 567, (((u16)16 << 0) | ((u16)0x20 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0937[1] = {
    anim_0937__v0_l0,
};

const s32 anim_0938__v0_l0[] = {
    -2, 570, (((u16)16 << 0) | ((u16)0x30 << 16)),
    100, -1,

    -2, 571, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -2, 572, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -2, 573, (((u16)16 << 0) | ((u16)0x30 << 16)),
    100, -1,

    -2, 572, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -2, 571, (((u16)16 << 0) | ((u16)0x30 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0938[1] = {
    anim_0938__v0_l0,
};

const s32 anim_0939__v0_l0[] = {
    -2, 574, (((u16)16 << 0) | ((u16)0x40 << 16)),
    100, -1,

    -2, 575, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -2, 576, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -2, 577, (((u16)16 << 0) | ((u16)0x40 << 16)),
    100, -1,

    -2, 576, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -2, 575, (((u16)16 << 0) | ((u16)0x40 << 16)),
    15, -1,

    -3, 30,
};

const s32 * const anim_0939[1] = {
    anim_0939__v0_l0,
};

const s32 anim_0940__v0_l0[] = {
    -2, 578, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 579, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 578, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 579, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 578, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 579, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 578, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 579, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 580, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 581, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 580, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 581, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 580, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 581, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 580, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 581, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 582, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 583, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 582, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 583, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 582, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 583, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 582, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -2, 583, (((u16)16 << 0) | ((u16)0x0 << 16)),
    4, -1,

    -3, 120,
};

const s32 anim_0940__v1_l0[] = {
    -2, 584, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 585, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 584, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 585, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 584, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 585, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 584, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 585, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 586, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 587, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 586, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 587, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 586, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 587, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 586, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 587, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 588, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 589, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 588, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 589, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 588, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 589, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 588, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -2, 589, (((u16)16 << 0) | ((u16)0x10 << 16)),
    4, -1,

    -3, 120,
};

const s32 anim_0940__v2_l0[] = {
    -2, 590, (((u16)16 << 0) | ((u16)0x20 << 16)),
    6, -1,

    -2, 591, (((u16)16 << 0) | ((u16)0x20 << 16)),
    6, -1,

    -2, 592, (((u16)16 << 0) | ((u16)0x20 << 16)),
    6, -1,

    -2, 593, (((u16)16 << 0) | ((u16)0x20 << 16)),
    6, -1,

    -2, 594, (((u16)16 << 0) | ((u16)0x20 << 16)),
    6, -1,

    -2, 595, (((u16)16 << 0) | ((u16)0x20 << 16)),
    6, -1,

    -3, 30,
};

const s32 anim_0940__v3_l0[] = {
    -2, 596, (((u16)16 << 0) | ((u16)0x30 << 16)),
    6, -1,

    -2, 597, (((u16)16 << 0) | ((u16)0x30 << 16)),
    6, -1,

    -2, 598, (((u16)16 << 0) | ((u16)0x30 << 16)),
    6, -1,

    -2, 599, (((u16)16 << 0) | ((u16)0x30 << 16)),
    6, -1,

    -2, 600, (((u16)16 << 0) | ((u16)0x30 << 16)),
    6, -1,

    -2, 601, (((u16)16 << 0) | ((u16)0x30 << 16)),
    6, -1,

    -3, 30,
};

const s32 anim_0940__v4_l0[] = {
    -2, 602, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 603, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 602, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 603, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 602, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 603, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 602, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 603, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 604, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 605, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 604, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 605, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 604, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 605, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 604, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 605, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 606, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 607, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 606, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 607, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 606, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 607, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 606, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -2, 607, (((u16)16 << 0) | ((u16)0x40 << 16)),
    4, -1,

    -3, 120,
};

const s32 anim_0940__v5_l0[] = {
    -2, 608, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 609, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 608, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 609, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 608, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 609, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 610, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 611, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 610, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 611, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 610, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -2, 611, (((u16)16 << 0) | ((u16)0x50 << 16)),
    4, -1,

    -3, 60,
};

const s32 anim_0940__v6_l0[] = {
    -2, 612, (((u16)16 << 0) | ((u16)0x60 << 16)),
    3, -1,

    -2, 613, (((u16)16 << 0) | ((u16)0x60 << 16)),
    3, -1,

    -2, 614, (((u16)16 << 0) | ((u16)0x60 << 16)),
    3, -1,

    -2, 615, (((u16)16 << 0) | ((u16)0x60 << 16)),
    3, -1,

    -2, 616, (((u16)16 << 0) | ((u16)0x60 << 16)),
    3, -1,

    -2, 617, (((u16)16 << 0) | ((u16)0x60 << 16)),
    3, -1,

    -3, 30,
};

const s32 anim_0940__v7_l0[] = {
    -2, 618, (((u16)16 << 0) | ((u16)0x70 << 16)),
    3, -1,

    -2, 619, (((u16)16 << 0) | ((u16)0x70 << 16)),
    3, -1,

    -2, 620, (((u16)16 << 0) | ((u16)0x70 << 16)),
    3, -1,

    -2, 621, (((u16)16 << 0) | ((u16)0x70 << 16)),
    3, -1,

    -2, 622, (((u16)16 << 0) | ((u16)0x70 << 16)),
    3, -1,

    -2, 623, (((u16)16 << 0) | ((u16)0x70 << 16)),
    3, -1,

    -3, 30,
};

const s32 anim_0940__v8_l0[] = {
    -2, 624, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 625, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 626, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 627, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 626, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -2, 625, (((u16)16 << 0) | ((u16)0x80 << 16)),
    5, -1,

    -3, 30,
};

const s32 anim_0940__v9_l0[] = {
    -2, 628, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 628, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 628, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 629, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 630, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 630, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 630, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -2, 629, (((u16)16 << 0) | ((u16)0x90 << 16)),
    1, -1,

    -3, 40,
};

const s32 anim_0940__v10_l0[] = {
    -2, 631, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    2, -1,

    -2, 632, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    2, -1,

    -3, 10,
};

const s32 anim_0940__v11_l0[] = {
    -2, 633, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    5, -1,

    -2, 634, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    5, -1,

    -2, 635, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    5, -1,

    -2, 636, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    5, -1,

    -3, 20,
};

const s32 * const anim_0940[12] = {
    anim_0940__v0_l0,
    anim_0940__v1_l0,
    anim_0940__v2_l0,
    anim_0940__v3_l0,
    anim_0940__v4_l0,
    anim_0940__v5_l0,
    anim_0940__v6_l0,
    anim_0940__v7_l0,
    anim_0940__v8_l0,
    anim_0940__v9_l0,
    anim_0940__v10_l0,
    anim_0940__v11_l0,
};

const s32 anim_0941__v0_l0[] = {
    -2, 637, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    40, -1,

    -2, 638, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 639, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 640, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 641, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    40, -1,

    -2, 640, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 639, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -2, 638, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    7, -1,

    -3, 40,
};

const s32 * const anim_0941[1] = {
    anim_0941__v0_l0,
};

const s32 anim_0942__v0_l0[] = {
    -2, 642, (((u16)16 << 0) | ((u16)0x90 << 16)),
    40, -1,

    -2, 643, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 644, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 645, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 646, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 647, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 648, (((u16)16 << 0) | ((u16)0x90 << 16)),
    40, -1,

    -2, 647, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 646, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 645, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 644, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -2, 643, (((u16)16 << 0) | ((u16)0x90 << 16)),
    7, -1,

    -3, 60,
};

const s32 * const anim_0942[1] = {
    anim_0942__v0_l0,
};

const s32 anim_0943__v0_l0[] = {
    -2, 649, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    40, -1,

    -2, 650, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 651, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 652, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 653, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 654, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 655, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    40, -1,

    -2, 654, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 653, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 652, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 651, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -2, 650, (((u16)16 << 0) | ((u16)0xE0 << 16)),
    7, -1,

    -3, 60,
};

const s32 * const anim_0943[1] = {
    anim_0943__v0_l0,
};

const s32 anim_0944__v0_l0[] = {
    -2, 656, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 657, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -2, 658, (((u16)16 << 0) | ((u16)0x70 << 16)),
    7, -1,

    -3, 15,
};

const s32 * const anim_0944[1] = {
    anim_0944__v0_l0,
};

const s32 anim_0945__v0_l0[] = {
    -2, 659, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 660, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 661, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 662, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 663, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 664, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 665, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 666, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 667, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -2, 668, (((u16)16 << 0) | ((u16)0x20 << 16)),
    7, -1,

    -3, 50,
};

const s32 * const anim_0945[1] = {
    anim_0945__v0_l0,
};

const s32 anim_0946__v0_l0[] = {
    -2, 669, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 670, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 671, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 672, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 673, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 674, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 675, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -2, 676, (((u16)16 << 0) | ((u16)0x80 << 16)),
    10, -1,

    -3, 40,
};

const s32 * const anim_0946[1] = {
    anim_0946__v0_l0,
};

const s32 anim_0947__v0_l0[] = {
    -2, 252, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    2, -1,

    -2, 253, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    2, -1,

    -3, 10,
};

const s32 * const anim_0947[1] = {
    anim_0947__v0_l0,
};

const s32 anim_0948__v0_l0[] = {
    -2, 677, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    9, -1,

    -2, 678, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    9, -1,

    -2, 679, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    9, -1,

    -2, 680, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    9, -1,

    -2, 681, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    9, -1,

    -2, 682, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    9, -1,

    -3, 30,
};

const s32 * const anim_0948[1] = {
    anim_0948__v0_l0,
};

const s32 anim_0949__v0_l0[] = {
    -2, 683, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 684, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 685, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 686, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 687, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 686, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 685, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -2, 684, (((u16)16 << 0) | ((u16)0x30 << 16)),
    9, -1,

    -3, 40,
};

const s32 * const anim_0949[1] = {
    anim_0949__v0_l0,
};

const s32 anim_0950__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24455, 18,
    1, 0,

    -4,
};

const s32 anim_0950__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24467, 18,
    1, 1,

    -4,
};

const s32 anim_0950__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24479, 18,
    1, 2,

    -4,
};

const s32 anim_0950__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2448B, 51,
    1, 3,

    -4,
};

const s32 anim_0950__v4_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x244BE, 12,
    -6, 0, (((55 & 0xFF) << 0) | ((103 & 0xFF) << 8) | ((56 & 0xFF) << 16) | ((104 & 0xFF) << 24)),
    1, 4,

    -4,
};

const s32 anim_0950__v5_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x244CA, 12,
    1, 5,

    -4,
};

const s32 anim_0950__v6_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x244D6, 12,
    1, 6,

    -4,
};

const s32 anim_0950__v7_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x244E2, 66,
    1, 7,

    -4,
};

const s32 anim_0950__v8_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x24524, 1,
    6, 8,

    -1, 0x24525, 2,
    6, 9,

    -1, 0x24527, 2,
    6, 10,

    -1, 0x24529, 2,
    6, 11,

    -3, 23,
};

const s32 anim_0950__v9_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2452B, 1,
    6, 12,

    -1, 0x2452C, 2,
    6, 13,

    -1, 0x2452E, 2,
    6, 14,

    -1, 0x24530, 2,
    6, 15,

    -3, 23,
};

const s32 anim_0950__v10_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x24532, 14,
    1, 16,

    -4,
};

const s32 * const anim_0950[11] = {
    anim_0950__v0_l0,
    anim_0950__v1_l0,
    anim_0950__v2_l0,
    anim_0950__v3_l0,
    anim_0950__v4_l0,
    anim_0950__v5_l0,
    anim_0950__v6_l0,
    anim_0950__v7_l0,
    anim_0950__v8_l0,
    anim_0950__v9_l0,
    anim_0950__v10_l0,
};

const s32 anim_0951__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24540, 16,
    1, 0,

    -4,
};

const s32 anim_0951__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24550, 16,
    1, 1,

    -4,
};

const s32 anim_0951__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x24560, 54,
    1, 2,

    -4,
};

const s32 anim_0951__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x24596, 39,
    1, 3,

    -4,
};

const s32 * const anim_0951[4] = {
    anim_0951__v0_l0,
    anim_0951__v1_l0,
    anim_0951__v2_l0,
    anim_0951__v3_l0,
};

const s32 anim_0952__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x245BD, 16,
    1, 0,

    -4,
};

const s32 anim_0952__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x245CD, 16,
    1, 1,

    -4,
};

const s32 anim_0952__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x245DD, 42,
    1, 2,

    -4,
};

const s32 anim_0952__v3_l0[] = {
    -2, 692, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24607, 18,
    1, 3,

    -4,
};

const s32 * const anim_0952[4] = {
    anim_0952__v0_l0,
    anim_0952__v1_l0,
    anim_0952__v2_l0,
    anim_0952__v3_l0,
};

const s32 anim_0953__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24619, 40,
    1, 0,

    -4,
};

const s32 anim_0953__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24641, 40,
    1, 1,

    -4,
};

const s32 anim_0953__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24669, 40,
    1, 2,

    -4,
};

const s32 anim_0953__v3_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24691, 40,
    1, 3,

    -4,
};

const s32 anim_0953__v4_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x246B9, 40,
    1, 4,

    -4,
};

const s32 anim_0953__v5_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x246E1, 40,
    1, 5,

    -4,
};

const s32 anim_0953__v6_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x24709, 45,
    1, 6,

    -4,
};

const s32 anim_0953__v7_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24736, 16,
    1, 7,

    -4,
};

const s32 anim_0953__v8_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24746, 16,
    1, 8,

    -4,
};

const s32 anim_0953__v9_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24756, 16,
    1, 9,

    -4,
};

const s32 anim_0953__v10_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24766, 16,
    1, 10,

    -4,
};

const s32 anim_0953__v11_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24776, 16,
    1, 11,

    -4,
};

const s32 anim_0953__v12_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24786, 16,
    1, 12,

    -4,
};
# 50464 "src/data/animations/animations.c"
const s32 anim_0953__v13_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x24796, 26,
    1, 13,

    -4,
};

const s32 * const anim_0953[14] = {
    anim_0953__v0_l0,
    anim_0953__v1_l0,
    anim_0953__v2_l0,
    anim_0953__v3_l0,
    anim_0953__v4_l0,
    anim_0953__v5_l0,
    anim_0953__v6_l0,
    anim_0953__v7_l0,
    anim_0953__v8_l0,
    anim_0953__v9_l0,
    anim_0953__v10_l0,
    anim_0953__v11_l0,
    anim_0953__v12_l0,
    anim_0953__v13_l0,
};

const s32 anim_0954__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x247B0, 18,
    1, 0,

    -4,
};

const s32 anim_0954__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x247C2, 48,
    1, 1,

    -4,
};

const s32 anim_0954__v2_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x247F2, 48,
    1, 2,

    -4,
};

const s32 anim_0954__v3_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24822, 3,
    1, 3,

    -4,
};

const s32 anim_0954__v4_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24825, 3,
    1, 4,

    -4,
};

const s32 anim_0954__v5_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24828, 8,
    1, 5,

    -4,
};

const s32 anim_0954__v6_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24830, 2,
    1, 6,

    -4,
};

const s32 anim_0954__v7_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24832, 4,
    1, 7,

    -4,
};

const s32 anim_0954__v8_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24836, 10,
    1, 8,

    -4,
};

const s32 * const anim_0954[9] = {
    anim_0954__v0_l0,
    anim_0954__v1_l0,
    anim_0954__v2_l0,
    anim_0954__v3_l0,
    anim_0954__v4_l0,
    anim_0954__v5_l0,
    anim_0954__v6_l0,
    anim_0954__v7_l0,
    anim_0954__v8_l0,
};

const s32 anim_0955__v0_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24840, 4,
    1, 0,

    -3, 8,
};

const s32 anim_0955__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24844, 4,
    1, 1,

    -3, 8,
};

const s32 anim_0955__v2_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24848, 4,
    1, 2,

    -3, 8,
};

const s32 anim_0955__v3_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2484C, 4,
    1, 3,

    -3, 8,
};

const s32 anim_0955__v4_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24850, 4,
    1, 4,

    -3, 8,
};

const s32 anim_0955__v5_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24854, 4,
    1, 5,

    -3, 8,
};

const s32 anim_0955__v6_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24858, 4,
    1, 6,

    -3, 8,
};

const s32 anim_0955__v7_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2485C, 4,
    1, 7,

    -3, 8,
};

const s32 anim_0955__v8_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24860, 4,
    1, 8,

    -3, 8,
};

const s32 anim_0955__v9_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24864, 4,
    1, 9,

    -3, 8,
};

const s32 anim_0955__v10_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24868, 1,
    1, 10,

    -3, 8,
};

const s32 anim_0955__v11_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24869, 4,
    1, 11,

    -3, 8,
};

const s32 anim_0955__v12_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2486D, 4,
    1, 12,

    -3, 8,
};

const s32 anim_0955__v13_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24871, 4,
    1, 13,

    -3, 8,
};

const s32 anim_0955__v14_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24875, 4,
    1, 14,

    -3, 8,
};

const s32 anim_0955__v15_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24879, 4,
    1, 15,

    -3, 8,
};

const s32 anim_0955__v16_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2487D, 4,
    1, 16,

    -3, 8,
};

const s32 anim_0955__v17_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v18_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24881, 4,
    1, 17,

    -3, 8,
};

const s32 anim_0955__v19_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v20_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24885, 4,
    1, 18,

    -3, 8,
};

const s32 anim_0955__v21_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24889, 4,
    1, 19,

    -3, 8,
};

const s32 anim_0955__v22_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2488D, 4,
    1, 20,

    -3, 8,
};

const s32 anim_0955__v23_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24891, 4,
    1, 21,

    -3, 8,
};

const s32 anim_0955__v24_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24895, 4,
    1, 22,

    -3, 8,
};

const s32 anim_0955__v25_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24899, 4,
    1, 23,

    -3, 8,
};

const s32 anim_0955__v26_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2489D, 4,
    1, 24,

    -3, 8,
};

const s32 anim_0955__v27_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248A1, 4,
    1, 25,

    -3, 8,
};

const s32 anim_0955__v28_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248A5, 4,
    1, 26,

    -3, 8,
};

const s32 anim_0955__v29_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248A9, 4,
    1, 27,

    -3, 8,
};

const s32 anim_0955__v30_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248AD, 4,
    1, 28,

    -3, 8,
};

const s32 anim_0955__v31_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248B1, 4,
    1, 29,

    -3, 8,
};

const s32 anim_0955__v32_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248B5, 4,
    1, 30,

    -3, 8,
};

const s32 anim_0955__v33_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248B9, 4,
    1, 31,

    -3, 8,
};

const s32 anim_0955__v34_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248BD, 4,
    1, 32,

    -3, 8,
};

const s32 anim_0955__v35_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248C1, 4,
    1, 33,

    -3, 8,
};

const s32 anim_0955__v36_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248C5, 4,
    1, 34,

    -3, 8,
};

const s32 anim_0955__v37_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248C9, 4,
    1, 35,

    -3, 8,
};

const s32 anim_0955__v38_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248CD, 4,
    1, 36,

    -3, 8,
};

const s32 anim_0955__v39_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v40_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248D1, 4,
    1, 37,

    -3, 8,
};

const s32 anim_0955__v41_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v42_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248D5, 4,
    1, 38,

    -3, 8,
};

const s32 anim_0955__v43_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248D9, 2,
    1, 39,

    -3, 8,
};

const s32 anim_0955__v44_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248DB, 4,
    1, 40,

    -3, 8,
};

const s32 anim_0955__v45_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248DF, 4,
    1, 41,

    -3, 8,
};

const s32 anim_0955__v46_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248E3, 4,
    1, 42,

    -3, 8,
};

const s32 anim_0955__v47_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248E7, 4,
    1, 43,

    -3, 8,
};

const s32 anim_0955__v48_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248EB, 4,
    1, 44,

    -3, 8,
};

const s32 anim_0955__v49_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248EF, 4,
    1, 45,

    -3, 8,
};

const s32 anim_0955__v50_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248F3, 4,
    1, 46,

    -3, 8,
};

const s32 anim_0955__v51_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248F7, 4,
    1, 47,

    -3, 8,
};

const s32 anim_0955__v52_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248FB, 4,
    1, 48,

    -3, 8,
};

const s32 anim_0955__v53_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x248FF, 4,
    1, 49,

    -3, 8,
};

const s32 anim_0955__v54_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24903, 4,
    1, 50,

    -3, 8,
};

const s32 anim_0955__v55_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24907, 4,
    1, 51,

    -3, 8,
};

const s32 anim_0955__v56_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2490B, 4,
    1, 52,

    -3, 8,
};

const s32 anim_0955__v57_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2490F, 4,
    1, 53,

    -3, 8,
};

const s32 anim_0955__v58_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24913, 4,
    1, 54,

    -3, 8,
};

const s32 anim_0955__v59_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24917, 4,
    1, 55,

    -3, 8,
};

const s32 anim_0955__v60_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2491B, 4,
    1, 56,

    -3, 8,
};

const s32 anim_0955__v61_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v62_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2491F, 4,
    1, 57,

    -3, 8,
};

const s32 anim_0955__v63_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v64_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24923, 4,
    1, 58,

    -3, 8,
};

const s32 anim_0955__v65_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24927, 4,
    1, 59,

    -3, 8,
};

const s32 anim_0955__v66_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2492B, 4,
    1, 60,

    -3, 8,
};

const s32 anim_0955__v67_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2492F, 4,
    1, 61,

    -3, 8,
};

const s32 anim_0955__v68_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24933, 4,
    1, 62,

    -3, 8,
};

const s32 anim_0955__v69_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24937, 4,
    1, 63,

    -3, 8,
};

const s32 anim_0955__v70_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2493B, 4,
    1, 64,

    -3, 8,
};

const s32 anim_0955__v71_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2493F, 4,
    1, 65,

    -3, 8,
};

const s32 anim_0955__v72_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24943, 4,
    1, 66,

    -3, 8,
};

const s32 anim_0955__v73_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24947, 4,
    1, 67,

    -3, 8,
};

const s32 anim_0955__v74_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2494B, 4,
    1, 68,

    -3, 8,
};

const s32 anim_0955__v75_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v76_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v77_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v78_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2494F, 4,
    1, 69,

    -3, 8,
};

const s32 anim_0955__v79_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24953, 2,
    1, 70,

    -3, 8,
};

const s32 anim_0955__v80_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24955, 4,
    1, 71,

    -3, 8,
};

const s32 anim_0955__v81_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24959, 4,
    1, 72,

    -3, 8,
};

const s32 anim_0955__v82_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2495D, 4,
    1, 73,

    -3, 8,
};

const s32 anim_0955__v83_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24961, 4,
    1, 74,

    -3, 8,
};

const s32 anim_0955__v84_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24965, 2,
    1, 75,

    -3, 8,
};

const s32 anim_0955__v85_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24967, 4,
    1, 76,

    -3, 8,
};

const s32 anim_0955__v86_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2496B, 4,
    1, 77,

    -3, 8,
};

const s32 anim_0955__v87_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2496F, 4,
    1, 78,

    -3, 8,
};

const s32 anim_0955__v88_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24973, 4,
    1, 79,

    -3, 8,
};

const s32 anim_0955__v89_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24977, 2,
    1, 80,

    -3, 8,
};

const s32 anim_0955__v90_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24979, 4,
    1, 81,

    -3, 8,
};

const s32 anim_0955__v91_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2497D, 2,
    1, 82,

    -3, 8,
};

const s32 anim_0955__v92_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2497F, 4,
    1, 83,

    -3, 8,
};

const s32 anim_0955__v93_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24983, 4,
    1, 84,

    -3, 8,
};

const s32 anim_0955__v94_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24987, 4,
    1, 85,

    -3, 8,
};

const s32 anim_0955__v95_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2498B, 4,
    1, 86,

    -3, 8,
};

const s32 anim_0955__v96_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2498F, 4,
    1, 87,

    -3, 8,
};

const s32 anim_0955__v97_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24993, 4,
    1, 88,

    -3, 8,
};

const s32 anim_0955__v98_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24997, 4,
    1, 89,

    -3, 8,
};

const s32 anim_0955__v99_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2499B, 4,
    1, 90,

    -3, 8,
};

const s32 anim_0955__v100_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2499F, 4,
    1, 91,

    -3, 8,
};

const s32 anim_0955__v101_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249A3, 4,
    1, 92,

    -3, 8,
};

const s32 anim_0955__v102_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249A7, 4,
    1, 93,

    -3, 8,
};

const s32 anim_0955__v103_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249AB, 4,
    1, 94,

    -3, 8,
};

const s32 anim_0955__v104_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249AF, 4,
    1, 95,

    -3, 8,
};

const s32 anim_0955__v105_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249B3, 4,
    1, 96,

    -3, 8,
};

const s32 anim_0955__v106_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249B7, 4,
    1, 97,

    -3, 8,
};

const s32 anim_0955__v107_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249BB, 4,
    1, 98,

    -3, 8,
};

const s32 anim_0955__v108_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249BF, 4,
    1, 99,

    -3, 8,
};

const s32 anim_0955__v109_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v110_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249C3, 4,
    1, 100,

    -3, 8,
};

const s32 anim_0955__v111_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249C7, 4,
    1, 101,

    -3, 8,
};

const s32 anim_0955__v112_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249CB, 4,
    1, 102,

    -3, 8,
};

const s32 anim_0955__v113_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249CF, 4,
    1, 103,

    -3, 8,
};

const s32 anim_0955__v114_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249D3, 4,
    1, 104,

    -3, 8,
};

const s32 anim_0955__v115_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249D7, 4,
    1, 105,

    -3, 8,
};

const s32 anim_0955__v116_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249DB, 4,
    1, 106,

    -3, 8,
};

const s32 anim_0955__v117_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249DF, 4,
    1, 107,

    -3, 8,
};

const s32 anim_0955__v118_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249E3, 4,
    1, 108,

    -3, 8,
};

const s32 anim_0955__v119_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249E7, 4,
    1, 109,

    -3, 8,
};

const s32 anim_0955__v120_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249EB, 4,
    1, 110,

    -3, 8,
};

const s32 anim_0955__v121_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249EF, 4,
    1, 111,

    -3, 8,
};

const s32 anim_0955__v122_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249F3, 4,
    1, 112,

    -3, 8,
};

const s32 anim_0955__v123_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249F7, 4,
    1, 113,

    -3, 8,
};

const s32 anim_0955__v124_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249FB, 4,
    1, 114,

    -3, 8,
};

const s32 anim_0955__v125_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x249FF, 4,
    1, 115,

    -3, 8,
};

const s32 anim_0955__v126_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A03, 4,
    1, 116,

    -3, 8,
};

const s32 anim_0955__v127_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A07, 4,
    1, 117,

    -3, 8,
};

const s32 anim_0955__v128_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A0B, 4,
    1, 118,

    -3, 8,
};

const s32 anim_0955__v129_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A0F, 4,
    1, 119,

    -3, 8,
};

const s32 anim_0955__v130_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A13, 4,
    1, 120,

    -3, 8,
};

const s32 anim_0955__v131_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A17, 4,
    1, 121,

    -3, 8,
};

const s32 anim_0955__v132_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A1B, 4,
    1, 122,

    -3, 8,
};

const s32 anim_0955__v133_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A1F, 4,
    1, 123,

    -3, 8,
};

const s32 anim_0955__v134_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A23, 4,
    1, 124,

    -3, 8,
};

const s32 anim_0955__v135_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A27, 4,
    1, 125,

    -3, 8,
};

const s32 anim_0955__v136_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A2B, 4,
    1, 126,

    -3, 8,
};

const s32 anim_0955__v137_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A2F, 4,
    1, 127,

    -3, 8,
};

const s32 anim_0955__v138_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A33, 4,
    1, 128,

    -3, 8,
};

const s32 anim_0955__v139_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A37, 4,
    1, 129,

    -3, 8,
};

const s32 anim_0955__v140_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A3B, 2,
    1, 130,

    -3, 8,
};

const s32 anim_0955__v141_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A3D, 2,
    1, 131,

    -3, 8,
};

const s32 anim_0955__v142_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v143_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A3F, 2,
    1, 132,

    -3, 8,
};

const s32 anim_0955__v144_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A41, 4,
    1, 133,

    -3, 8,
};

const s32 anim_0955__v145_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A45, 4,
    1, 134,

    -3, 8,
};

const s32 anim_0955__v146_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A49, 4,
    1, 135,

    -3, 8,
};

const s32 anim_0955__v147_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A4D, 4,
    1, 136,

    -3, 8,
};

const s32 anim_0955__v148_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A51, 4,
    1, 137,

    -3, 8,
};

const s32 anim_0955__v149_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A55, 4,
    1, 138,

    -3, 8,
};

const s32 anim_0955__v150_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A59, 4,
    1, 139,

    -3, 8,
};

const s32 anim_0955__v151_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A5D, 4,
    1, 140,

    -3, 8,
};

const s32 anim_0955__v152_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A61, 4,
    1, 141,

    -3, 8,
};

const s32 anim_0955__v153_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A65, 4,
    1, 142,

    -3, 8,
};

const s32 anim_0955__v154_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A69, 4,
    1, 143,

    -3, 8,
};

const s32 anim_0955__v155_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A6D, 4,
    1, 144,

    -3, 8,
};

const s32 anim_0955__v156_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A71, 4,
    1, 145,

    -3, 8,
};

const s32 anim_0955__v157_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A75, 4,
    1, 146,

    -3, 8,
};

const s32 anim_0955__v158_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A79, 4,
    1, 147,

    -3, 8,
};

const s32 anim_0955__v159_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A7D, 4,
    1, 148,

    -3, 8,
};

const s32 anim_0955__v160_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A81, 4,
    1, 149,

    -3, 8,
};

const s32 anim_0955__v161_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A85, 4,
    1, 150,

    -3, 8,
};

const s32 anim_0955__v162_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A89, 4,
    1, 151,

    -3, 8,
};

const s32 anim_0955__v163_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A8D, 4,
    1, 152,

    -3, 8,
};

const s32 anim_0955__v164_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A91, 4,
    1, 153,

    -3, 8,
};

const s32 anim_0955__v165_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A95, 4,
    1, 154,

    -3, 8,
};

const s32 anim_0955__v166_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A99, 4,
    1, 155,

    -3, 8,
};

const s32 anim_0955__v167_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24A9D, 4,
    1, 156,

    -3, 8,
};

const s32 anim_0955__v168_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AA1, 4,
    1, 157,

    -3, 8,
};

const s32 anim_0955__v169_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AA5, 4,
    1, 158,

    -3, 8,
};

const s32 anim_0955__v170_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AA9, 4,
    1, 159,

    -3, 8,
};

const s32 anim_0955__v171_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AAD, 4,
    1, 160,

    -3, 8,
};

const s32 anim_0955__v172_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AB1, 4,
    1, 161,

    -3, 8,
};

const s32 anim_0955__v173_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AB5, 4,
    1, 162,

    -3, 8,
};

const s32 anim_0955__v174_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v175_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v176_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AB9, 4,
    1, 163,

    -3, 8,
};

const s32 anim_0955__v177_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24ABD, 4,
    1, 164,

    -3, 8,
};

const s32 anim_0955__v178_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AC1, 4,
    1, 165,

    -3, 8,
};

const s32 anim_0955__v179_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AC5, 4,
    1, 166,

    -3, 8,
};

const s32 anim_0955__v180_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AC9, 4,
    1, 167,

    -3, 8,
};

const s32 anim_0955__v181_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24ACD, 4,
    1, 168,

    -3, 8,
};

const s32 anim_0955__v182_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AD1, 4,
    1, 169,

    -3, 8,
};

const s32 anim_0955__v183_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AD5, 4,
    1, 170,

    -3, 8,
};

const s32 anim_0955__v184_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AD9, 4,
    1, 171,

    -3, 8,
};

const s32 anim_0955__v185_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24ADD, 4,
    1, 172,

    -3, 8,
};

const s32 anim_0955__v186_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AE1, 4,
    1, 173,

    -3, 8,
};

const s32 anim_0955__v187_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AE5, 4,
    1, 174,

    -3, 8,
};

const s32 anim_0955__v188_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AE9, 4,
    1, 175,

    -3, 8,
};

const s32 anim_0955__v189_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AED, 4,
    1, 176,

    -3, 8,
};

const s32 anim_0955__v190_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AF1, 4,
    1, 177,

    -3, 8,
};

const s32 anim_0955__v191_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AF5, 4,
    1, 178,

    -3, 8,
};

const s32 anim_0955__v192_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AF9, 4,
    1, 179,

    -3, 8,
};

const s32 anim_0955__v193_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24AFD, 4,
    1, 180,

    -3, 8,
};

const s32 anim_0955__v194_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B01, 4,
    1, 181,

    -3, 8,
};

const s32 anim_0955__v195_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B05, 4,
    1, 182,

    -3, 8,
};

const s32 anim_0955__v196_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B09, 4,
    1, 183,

    -3, 8,
};

const s32 anim_0955__v197_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B0D, 4,
    1, 184,

    -3, 8,
};

const s32 anim_0955__v198_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B11, 4,
    1, 185,

    -3, 8,
};

const s32 anim_0955__v199_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B15, 4,
    1, 186,

    -3, 8,
};

const s32 anim_0955__v200_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B19, 4,
    1, 187,

    -3, 8,
};

const s32 anim_0955__v201_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B1D, 4,
    1, 188,

    -3, 8,
};

const s32 anim_0955__v202_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B21, 4,
    1, 189,

    -3, 8,
};

const s32 anim_0955__v203_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B25, 4,
    1, 190,

    -3, 8,
};

const s32 anim_0955__v204_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B29, 4,
    1, 191,

    -3, 8,
};

const s32 anim_0955__v205_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B2D, 4,
    1, 192,

    -3, 8,
};

const s32 anim_0955__v206_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B31, 4,
    1, 193,

    -3, 8,
};

const s32 anim_0955__v207_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B35, 4,
    1, 194,

    -3, 8,
};

const s32 anim_0955__v208_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v209_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B39, 4,
    1, 195,

    -3, 8,
};

const s32 anim_0955__v210_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B3D, 4,
    1, 196,

    -3, 8,
};

const s32 anim_0955__v211_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B41, 4,
    1, 197,

    -3, 8,
};

const s32 anim_0955__v212_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B45, 4,
    1, 198,

    -3, 8,
};

const s32 anim_0955__v213_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B49, 4,
    1, 199,

    -3, 8,
};

const s32 anim_0955__v214_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B4D, 4,
    1, 200,

    -3, 8,
};

const s32 anim_0955__v215_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B51, 4,
    1, 201,

    -3, 8,
};

const s32 anim_0955__v216_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B55, 4,
    1, 202,

    -3, 8,
};

const s32 anim_0955__v217_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B59, 4,
    1, 203,

    -3, 8,
};

const s32 anim_0955__v218_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B5D, 4,
    1, 204,

    -3, 8,
};

const s32 anim_0955__v219_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B61, 4,
    1, 205,

    -3, 8,
};

const s32 anim_0955__v220_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B65, 4,
    1, 206,

    -3, 8,
};

const s32 anim_0955__v221_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B69, 4,
    1, 207,

    -3, 8,
};

const s32 anim_0955__v222_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B6D, 4,
    1, 208,

    -3, 8,
};

const s32 anim_0955__v223_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B71, 4,
    1, 209,

    -3, 8,
};

const s32 anim_0955__v224_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B75, 4,
    1, 210,

    -3, 8,
};

const s32 anim_0955__v225_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B79, 4,
    1, 211,

    -3, 8,
};

const s32 anim_0955__v226_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B7D, 4,
    1, 212,

    -3, 8,
};

const s32 anim_0955__v227_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B81, 4,
    1, 213,

    -3, 8,
};

const s32 anim_0955__v228_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B85, 4,
    1, 214,

    -3, 8,
};

const s32 anim_0955__v229_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B89, 4,
    1, 215,

    -3, 8,
};

const s32 anim_0955__v230_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B8D, 4,
    1, 216,

    -3, 8,
};

const s32 anim_0955__v231_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B11, 4,
    1, 185,

    -3, 8,
};

const s32 anim_0955__v232_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B91, 4,
    1, 217,

    -3, 8,
};

const s32 anim_0955__v233_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B95, 4,
    1, 218,

    -3, 8,
};

const s32 anim_0955__v234_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B99, 4,
    1, 219,

    -3, 8,
};

const s32 anim_0955__v235_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24B9D, 4,
    1, 220,

    -3, 8,
};

const s32 anim_0955__v236_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BA1, 4,
    1, 221,

    -3, 8,
};

const s32 anim_0955__v237_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BA5, 4,
    1, 222,

    -3, 8,
};

const s32 anim_0955__v238_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BA9, 4,
    1, 223,

    -3, 8,
};

const s32 anim_0955__v239_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BAD, 4,
    1, 224,

    -3, 8,
};

const s32 anim_0955__v240_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BB1, 4,
    1, 225,

    -3, 8,
};

const s32 anim_0955__v241_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    1, -1,

    -3, 5,
};

const s32 anim_0955__v242_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BB5, 4,
    1, 226,

    -3, 8,
};

const s32 anim_0955__v243_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BB9, 4,
    1, 227,

    -3, 8,
};

const s32 anim_0955__v244_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BBD, 4,
    1, 228,

    -3, 8,
};

const s32 anim_0955__v245_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BC1, 4,
    1, 229,

    -3, 8,
};

const s32 anim_0955__v246_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BC5, 4,
    1, 230,

    -3, 8,
};

const s32 anim_0955__v247_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BC9, 4,
    1, 231,

    -3, 8,
};

const s32 anim_0955__v248_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BCD, 4,
    1, 232,

    -3, 8,
};

const s32 anim_0955__v249_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BD1, 4,
    1, 233,

    -3, 8,
};

const s32 anim_0955__v250_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BD5, 4,
    1, 234,

    -3, 8,
};

const s32 anim_0955__v251_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BD9, 4,
    1, 235,

    -3, 8,
};

const s32 anim_0955__v252_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BDD, 4,
    1, 236,

    -3, 8,
};

const s32 anim_0955__v253_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BE1, 4,
    1, 237,

    -3, 8,
};

const s32 anim_0955__v254_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BE5, 4,
    1, 238,

    -3, 8,
};

const s32 anim_0955__v255_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24BE9, 4,
    1, 239,

    -3, 8,
};

const s32 * const anim_0955[256] = {
    anim_0955__v0_l0,
    anim_0955__v1_l0,
    anim_0955__v2_l0,
    anim_0955__v3_l0,
    anim_0955__v4_l0,
    anim_0955__v5_l0,
    anim_0955__v6_l0,
    anim_0955__v7_l0,
    anim_0955__v8_l0,
    anim_0955__v9_l0,
    anim_0955__v10_l0,
    anim_0955__v11_l0,
    anim_0955__v12_l0,
    anim_0955__v13_l0,
    anim_0955__v14_l0,
    anim_0955__v15_l0,
    anim_0955__v16_l0,
    anim_0955__v17_l0,
    anim_0955__v18_l0,
    anim_0955__v19_l0,
    anim_0955__v20_l0,
    anim_0955__v21_l0,
    anim_0955__v22_l0,
    anim_0955__v23_l0,
    anim_0955__v24_l0,
    anim_0955__v25_l0,
    anim_0955__v26_l0,
    anim_0955__v27_l0,
    anim_0955__v28_l0,
    anim_0955__v29_l0,
    anim_0955__v30_l0,
    anim_0955__v31_l0,
    anim_0955__v32_l0,
    anim_0955__v33_l0,
    anim_0955__v34_l0,
    anim_0955__v35_l0,
    anim_0955__v36_l0,
    anim_0955__v37_l0,
    anim_0955__v38_l0,
    anim_0955__v39_l0,
    anim_0955__v40_l0,
    anim_0955__v41_l0,
    anim_0955__v42_l0,
    anim_0955__v43_l0,
    anim_0955__v44_l0,
    anim_0955__v45_l0,
    anim_0955__v46_l0,
    anim_0955__v47_l0,
    anim_0955__v48_l0,
    anim_0955__v49_l0,
    anim_0955__v50_l0,
    anim_0955__v51_l0,
    anim_0955__v52_l0,
    anim_0955__v53_l0,
    anim_0955__v54_l0,
    anim_0955__v55_l0,
    anim_0955__v56_l0,
    anim_0955__v57_l0,
    anim_0955__v58_l0,
    anim_0955__v59_l0,
    anim_0955__v60_l0,
    anim_0955__v61_l0,
    anim_0955__v62_l0,
    anim_0955__v63_l0,
    anim_0955__v64_l0,
    anim_0955__v65_l0,
    anim_0955__v66_l0,
    anim_0955__v67_l0,
    anim_0955__v68_l0,
    anim_0955__v69_l0,
    anim_0955__v70_l0,
    anim_0955__v71_l0,
    anim_0955__v72_l0,
    anim_0955__v73_l0,
    anim_0955__v74_l0,
    anim_0955__v75_l0,
    anim_0955__v76_l0,
    anim_0955__v77_l0,
    anim_0955__v78_l0,
    anim_0955__v79_l0,
    anim_0955__v80_l0,
    anim_0955__v81_l0,
    anim_0955__v82_l0,
    anim_0955__v83_l0,
    anim_0955__v84_l0,
    anim_0955__v85_l0,
    anim_0955__v86_l0,
    anim_0955__v87_l0,
    anim_0955__v88_l0,
    anim_0955__v89_l0,
    anim_0955__v90_l0,
    anim_0955__v91_l0,
    anim_0955__v92_l0,
    anim_0955__v93_l0,
    anim_0955__v94_l0,
    anim_0955__v95_l0,
    anim_0955__v96_l0,
    anim_0955__v97_l0,
    anim_0955__v98_l0,
    anim_0955__v99_l0,
    anim_0955__v100_l0,
    anim_0955__v101_l0,
    anim_0955__v102_l0,
    anim_0955__v103_l0,
    anim_0955__v104_l0,
    anim_0955__v105_l0,
    anim_0955__v106_l0,
    anim_0955__v107_l0,
    anim_0955__v108_l0,
    anim_0955__v109_l0,
    anim_0955__v110_l0,
    anim_0955__v111_l0,
    anim_0955__v112_l0,
    anim_0955__v113_l0,
    anim_0955__v114_l0,
    anim_0955__v115_l0,
    anim_0955__v116_l0,
    anim_0955__v117_l0,
    anim_0955__v118_l0,
    anim_0955__v119_l0,
    anim_0955__v120_l0,
    anim_0955__v121_l0,
    anim_0955__v122_l0,
    anim_0955__v123_l0,
    anim_0955__v124_l0,
    anim_0955__v125_l0,
    anim_0955__v126_l0,
    anim_0955__v127_l0,
    anim_0955__v128_l0,
    anim_0955__v129_l0,
    anim_0955__v130_l0,
    anim_0955__v131_l0,
    anim_0955__v132_l0,
    anim_0955__v133_l0,
    anim_0955__v134_l0,
    anim_0955__v135_l0,
    anim_0955__v136_l0,
    anim_0955__v137_l0,
    anim_0955__v138_l0,
    anim_0955__v139_l0,
    anim_0955__v140_l0,
    anim_0955__v141_l0,
    anim_0955__v142_l0,
    anim_0955__v143_l0,
    anim_0955__v144_l0,
    anim_0955__v145_l0,
    anim_0955__v146_l0,
    anim_0955__v147_l0,
    anim_0955__v148_l0,
    anim_0955__v149_l0,
    anim_0955__v150_l0,
    anim_0955__v151_l0,
    anim_0955__v152_l0,
    anim_0955__v153_l0,
    anim_0955__v154_l0,
    anim_0955__v155_l0,
    anim_0955__v156_l0,
    anim_0955__v157_l0,
    anim_0955__v158_l0,
    anim_0955__v159_l0,
    anim_0955__v160_l0,
    anim_0955__v161_l0,
    anim_0955__v162_l0,
    anim_0955__v163_l0,
    anim_0955__v164_l0,
    anim_0955__v165_l0,
    anim_0955__v166_l0,
    anim_0955__v167_l0,
    anim_0955__v168_l0,
    anim_0955__v169_l0,
    anim_0955__v170_l0,
    anim_0955__v171_l0,
    anim_0955__v172_l0,
    anim_0955__v173_l0,
    anim_0955__v174_l0,
    anim_0955__v175_l0,
    anim_0955__v176_l0,
    anim_0955__v177_l0,
    anim_0955__v178_l0,
    anim_0955__v179_l0,
    anim_0955__v180_l0,
    anim_0955__v181_l0,
    anim_0955__v182_l0,
    anim_0955__v183_l0,
    anim_0955__v184_l0,
    anim_0955__v185_l0,
    anim_0955__v186_l0,
    anim_0955__v187_l0,
    anim_0955__v188_l0,
    anim_0955__v189_l0,
    anim_0955__v190_l0,
    anim_0955__v191_l0,
    anim_0955__v192_l0,
    anim_0955__v193_l0,
    anim_0955__v194_l0,
    anim_0955__v195_l0,
    anim_0955__v196_l0,
    anim_0955__v197_l0,
    anim_0955__v198_l0,
    anim_0955__v199_l0,
    anim_0955__v200_l0,
    anim_0955__v201_l0,
    anim_0955__v202_l0,
    anim_0955__v203_l0,
    anim_0955__v204_l0,
    anim_0955__v205_l0,
    anim_0955__v206_l0,
    anim_0955__v207_l0,
    anim_0955__v208_l0,
    anim_0955__v209_l0,
    anim_0955__v210_l0,
    anim_0955__v211_l0,
    anim_0955__v212_l0,
    anim_0955__v213_l0,
    anim_0955__v214_l0,
    anim_0955__v215_l0,
    anim_0955__v216_l0,
    anim_0955__v217_l0,
    anim_0955__v218_l0,
    anim_0955__v219_l0,
    anim_0955__v220_l0,
    anim_0955__v221_l0,
    anim_0955__v222_l0,
    anim_0955__v223_l0,
    anim_0955__v224_l0,
    anim_0955__v225_l0,
    anim_0955__v226_l0,
    anim_0955__v227_l0,
    anim_0955__v228_l0,
    anim_0955__v229_l0,
    anim_0955__v230_l0,
    anim_0955__v231_l0,
    anim_0955__v232_l0,
    anim_0955__v233_l0,
    anim_0955__v234_l0,
    anim_0955__v235_l0,
    anim_0955__v236_l0,
    anim_0955__v237_l0,
    anim_0955__v238_l0,
    anim_0955__v239_l0,
    anim_0955__v240_l0,
    anim_0955__v241_l0,
    anim_0955__v242_l0,
    anim_0955__v243_l0,
    anim_0955__v244_l0,
    anim_0955__v245_l0,
    anim_0955__v246_l0,
    anim_0955__v247_l0,
    anim_0955__v248_l0,
    anim_0955__v249_l0,
    anim_0955__v250_l0,
    anim_0955__v251_l0,
    anim_0955__v252_l0,
    anim_0955__v253_l0,
    anim_0955__v254_l0,
    anim_0955__v255_l0,
};

const s32 anim_0956__v0_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24BED, 50,
    1, 0,

    -4,
};

const s32 anim_0956__v1_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24C1F, 50,
    1, 1,

    -4,
};

const s32 anim_0956__v2_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24C51, 50,
    1, 2,

    -4,
};

const s32 anim_0956__v3_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24C83, 50,
    1, 3,

    -4,
};

const s32 anim_0956__v4_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24CB5, 50,
    1, 4,

    -4,
};

const s32 anim_0956__v5_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24CE7, 50,
    1, 5,

    -4,
};

const s32 anim_0956__v6_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24D19, 50,
    1, 6,

    -4,
};

const s32 anim_0956__v7_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x24D4B, 50,
    1, 7,

    -4,
};

const s32 anim_0956__v8_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x24D7D, 39,
    1, 8,

    -4,
};

const s32 * const anim_0956[9] = {
    anim_0956__v0_l0,
    anim_0956__v1_l0,
    anim_0956__v2_l0,
    anim_0956__v3_l0,
    anim_0956__v4_l0,
    anim_0956__v5_l0,
    anim_0956__v6_l0,
    anim_0956__v7_l0,
    anim_0956__v8_l0,
};

const s32 anim_0957__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24DA4, 40,
    1, 0,

    -4,
};

const s32 anim_0957__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24DCC, 40,
    1, 1,

    -4,
};

const s32 anim_0957__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24DF4, 40,
    1, 2,

    -4,
};

const s32 anim_0957__v3_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24E1C, 40,
    1, 3,

    -4,
};

const s32 anim_0957__v4_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x24E44, 51,
    1, 4,

    -4,
};

const s32 anim_0957__v5_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24E77, 63,
    1, 5,

    -4,
};

const s32 * const anim_0957[6] = {
    anim_0957__v0_l0,
    anim_0957__v1_l0,
    anim_0957__v2_l0,
    anim_0957__v3_l0,
    anim_0957__v4_l0,
    anim_0957__v5_l0,
};

const s32 anim_0958__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x24EB6, 28,
    1, 0,

    -4,
};

const s32 * const anim_0958[1] = {
    anim_0958__v0_l0,
};

const s32 anim_0959__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x24ED2, 66,
    1, 0,

    -4,
};

const s32 anim_0959__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24F14, 36,
    1, 1,

    -4,
};

const s32 anim_0959__v2_l0[] = {
    -2, 694, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24F38, 36,
    1, 2,

    -4,
};

const s32 * const anim_0959[3] = {
    anim_0959__v0_l0,
    anim_0959__v1_l0,
    anim_0959__v2_l0,
};

const s32 anim_0960__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24F5C, 16,
    1, 0,

    -4,
};

const s32 anim_0960__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x24F6C, 16,
    1, 1,

    -4,
};

const s32 anim_0960__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x24F7C, 42,
    1, 2,

    -4,
};

const s32 * const anim_0960[3] = {
    anim_0960__v0_l0,
    anim_0960__v1_l0,
    anim_0960__v2_l0,
};

const s32 anim_0961__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x24FA6, 48,
    1, 0,

    -4,
};

const s32 anim_0961__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24FD6, 28,
    1, 1,

    -4,
};

const s32 * const anim_0961[2] = {
    anim_0961__v0_l0,
    anim_0961__v1_l0,
};

const s32 anim_0962__v0_l0[] = {
    -2, 695, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24FF2, 1,
    6, 0,

    -1, 0x24FF3, 2,
    6, 1,

    -1, 0x24FF5, 2,
    6, 2,

    -1, 0x24FF7, 1,
    6, 3,

    -3, 23,
};

const s32 anim_0962__v1_l0[] = {
    -2, 695, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24FF8, 1,
    6, 4,

    -1, 0x24FF9, 2,
    6, 5,

    -1, 0x24FFB, 2,
    6, 6,

    -1, 0x24FFD, 1,
    6, 7,

    -3, 23,
};

const s32 * const anim_0962[2] = {
    anim_0962__v0_l0,
    anim_0962__v1_l0,
};

const s32 anim_0963__v0_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x24FFE, 4,
    1, 0,

    -3, 8,
};

const s32 anim_0963__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x25002, 4,
    1, 1,

    -3, 8,
};

const s32 anim_0963__v2_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x25006, 4,
    1, 2,

    -3, 8,
};

const s32 anim_0963__v3_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2500A, 4,
    1, 3,

    -3, 8,
};

const s32 anim_0963__v4_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2500E, 4,
    1, 4,

    -3, 8,
};

const s32 anim_0963__v5_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x25012, 4,
    1, 5,

    -3, 8,
};

const s32 anim_0963__v6_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x25016, 4,
    1, 6,

    -3, 8,
};

const s32 anim_0963__v7_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2501A, 4,
    1, 7,

    -3, 8,
};

const s32 anim_0963__v8_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2501E, 4,
    1, 8,

    -3, 8,
};

const s32 anim_0963__v9_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x25022, 4,
    1, 9,

    -3, 8,
};

const s32 anim_0963__v10_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x25026, 4,
    1, 10,

    -3, 8,
};

const s32 anim_0963__v11_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2502A, 4,
    1, 11,

    -3, 8,
};

const s32 anim_0963__v12_l0[] = {
    -2, 696, (((u16)16 << 0) | ((u16)0x70 << 16)),
    1, -1,

    -4,
};

const s32 anim_0963__v13_l0[] = {
    -2, 697, (((u16)16 << 0) | ((u16)0x80 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0963[14] = {
    anim_0963__v0_l0,
    anim_0963__v1_l0,
    anim_0963__v2_l0,
    anim_0963__v3_l0,
    anim_0963__v4_l0,
    anim_0963__v5_l0,
    anim_0963__v6_l0,
    anim_0963__v7_l0,
    anim_0963__v8_l0,
    anim_0963__v9_l0,
    anim_0963__v10_l0,
    anim_0963__v11_l0,
    anim_0963__v12_l0,
    anim_0963__v13_l0,
};

const s32 anim_0964__v0_l0[] = {
    -2, 698, (((u16)16 << 0) | ((u16)0x20 << 16)),
    1, -1,

    -4,
};

const s32 anim_0964__v1_l0[] = {
    -2, 699, (((u16)16 << 0) | ((u16)0x40 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_0964[2] = {
    anim_0964__v0_l0,
    anim_0964__v1_l0,
};

const s32 anim_0965__v0_l0[] = {
    -2, 700, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x2502E, 10,
    1, 0,

    -4,
};

const s32 anim_0965__v1_l0[] = {
    -2, 700, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x25038, 10,
    1, 1,

    -4,
};

const s32 anim_0965__v2_l0[] = {
    -2, 700, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x25042, 1,
    1, 2,

    -4,
};

const s32 * const anim_0965[3] = {
    anim_0965__v0_l0,
    anim_0965__v1_l0,
    anim_0965__v2_l0,
};

const s32 anim_0966__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x25043, 20,
    1, 0,

    -4,
};

const s32 * const anim_0966[1] = {
    anim_0966__v0_l0,
};

const s32 anim_0967__v0_l0[] = {
    -2, 701, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x25057, 42,
    1, 0,

    -4,
};

const s32 * const anim_0967[1] = {
    anim_0967__v0_l0,
};

const s32 anim_0968__v0_l0[] = {
    -2, 702, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x25081, 64,
    5, 0,

    -1, 0x250C1, 64,
    5, 1,

    -1, 0x25101, 64,
    5, 2,

    -1, 0x25141, 72,
    5, 3,

    -1, 0x25189, 72,
    5, 4,

    -1, 0x251D1, 72,
    5, 5,

    -1, 0x25219, 64,
    5, 6,

    -1, 0x25259, 64,
    5, 7,

    -1, 0x25299, 72,
    5, 8,

    -1, 0x25189, 72,
    5, 4,

    -1, 0x251D1, 72,
    5, 5,

    -3, 58,
};

const s32 anim_0968__v1_l0[] = {
    -2, 702, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x252E1, 40,
    1, 9,

    -4,
};

const s32 * const anim_0968[2] = {
    anim_0968__v0_l0,
    anim_0968__v1_l0,
};

const s32 anim_0969__v0_l0[] = {
    -2, 703, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x25309, 96,
    1, 0,

    -4,
};

const s32 * const anim_0969[1] = {
    anim_0969__v0_l0,
};

const s32 anim_0970__v0_l0[] = {
    -2, 702, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x25369, 48,
    6, 0,

    -1, 0x25399, 48,
    4, 1,

    -1, 0x253C9, 42,
    3, 2,

    -1, 0x253F3, 42,
    10, 3,

    -1, 0x253C9, 42,
    5, 2,

    -1, 0x25399, 48,
    5, 1,

    -1, 0x25369, 48,
    10, 0,

    -1, 0x2541D, 48,
    5, 4,

    -1, 0x2544D, 48,
    5, 5,

    -1, 0x2541D, 48,
    5, 4,

    -1, 0x25369, 48,
    5, 0,

    -4,
};

const s32 * const anim_0970[1] = {
    anim_0970__v0_l0,
};

const s32 anim_0971__v0_l0[] = {
    -2, 702, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x2547D, 64,
    5, 0,

    -1, 0x254BD, 64,
    5, 1,

    -1, 0x254FD, 63,
    5, 2,

    -1, 0x2553C, 54,
    3, 3,

    -1, 0x25572, 54,
    3, 4,

    -1, 0x2553C, 54,
    3, 3,

    -1, 0x254FD, 63,
    3, 2,

    -1, 0x2553C, 54,
    3, 3,

    -1, 0x25572, 54,
    3, 4,

    -1, 0x2553C, 54,
    3, 3,

    -1, 0x254FD, 63,
    5, 2,

    -1, 0x254BD, 64,
    5, 1,

    -1, 0x2547D, 64,
    5, 0,

    -4,
};

const s32 * const anim_0971[1] = {
    anim_0971__v0_l0,
};

const s32 anim_0972__v0_l0[] = {
    -2, 704, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x255A8, 20,
    1, 0,

    -4,
};

const s32 * const anim_0972[1] = {
    anim_0972__v0_l0,
};

const s32 anim_0973__v0_l0[] = {
    -2, 702, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x255BC, 48,
    5, 0,

    -1, 0x255EC, 56,
    5, 1,

    -1, 0x25624, 48,
    10, 2,

    -1, 0x25654, 48,
    5, 3,

    -1, 0x25684, 56,
    10, 4,

    -1, 0x256BC, 48,
    5, 5,

    -1, 0x256EC, 56,
    5, 6,

    -1, 0x25724, 48,
    10, 7,

    -1, 0x25754, 48,
    5, 8,

    -1, 0x25784, 56,
    10, 9,

    -1, 0x25784, 56,
    5, 9,

    -1, 0x257BC, 56,
    5, 10,

    -1, 0x257F4, 56,
    10, 11,

    -1, 0x2582C, 56,
    5, 12,

    -1, 0x25864, 56,
    10, 13,

    -1, 0x25864, 56,
    5, 13,

    -1, 0x255EC, 56,
    5, 1,

    -1, 0x2589C, 56,
    10, 14,

    -1, 0x258D4, 56,
    5, 15,

    -1, 0x2590C, 56,
    10, 16,

    -1, 0x25864, 56,
    5, 13,

    -3, 108,
};

const s32 * const anim_0973[1] = {
    anim_0973__v0_l0,
};

const s32 anim_0974__v0_l0[] = {
    -2, 705, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x25944, 64,
    1, 0,

    -4,
};

const s32 * const anim_0974[1] = {
    anim_0974__v0_l0,
};

const s32 anim_0975__v0_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25984, 50,
    1, 0,

    -4,
};

const s32 anim_0975__v1_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x259B6, 50,
    1, 1,

    -4,
};

const s32 anim_0975__v2_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x259E8, 50,
    1, 2,

    -4,
};

const s32 anim_0975__v3_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25A1A, 50,
    1, 3,

    -4,
};

const s32 anim_0975__v4_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25A4C, 50,
    1, 4,

    -4,
};

const s32 anim_0975__v5_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25A7E, 50,
    1, 5,

    -4,
};

const s32 anim_0975__v6_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25AB0, 50,
    1, 6,

    -4,
};

const s32 anim_0975__v7_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25AE2, 50,
    1, 7,

    -4,
};

const s32 anim_0975__v8_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x25B14, 26,
    1, 8,

    -4,
};

const s32 * const anim_0975[9] = {
    anim_0975__v0_l0,
    anim_0975__v1_l0,
    anim_0975__v2_l0,
    anim_0975__v3_l0,
    anim_0975__v4_l0,
    anim_0975__v5_l0,
    anim_0975__v6_l0,
    anim_0975__v7_l0,
    anim_0975__v8_l0,
};

const s32 anim_0976__v0_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25B2E, 50,
    1, 0,

    -4,
};

const s32 anim_0976__v1_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25B60, 50,
    1, 1,

    -4,
};

const s32 anim_0976__v2_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25B92, 50,
    1, 2,

    -4,
};

const s32 anim_0976__v3_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25BC4, 50,
    1, 3,

    -4,
};

const s32 anim_0976__v4_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25BF6, 50,
    1, 4,

    -4,
};

const s32 anim_0976__v5_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25C28, 50,
    1, 5,

    -4,
};

const s32 anim_0976__v6_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25C5A, 50,
    1, 6,

    -4,
};

const s32 anim_0976__v7_l0[] = {
    -2, 706, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25C8C, 50,
    1, 7,

    -4,
};

const s32 anim_0976__v8_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x25CBE, 30,
    1, 8,

    -4,
};

const s32 * const anim_0976[9] = {
    anim_0976__v0_l0,
    anim_0976__v1_l0,
    anim_0976__v2_l0,
    anim_0976__v3_l0,
    anim_0976__v4_l0,
    anim_0976__v5_l0,
    anim_0976__v6_l0,
    anim_0976__v7_l0,
    anim_0976__v8_l0,
};

const s32 anim_0977__v0_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25CDC, 50,
    1, 0,

    -4,
};

const s32 anim_0977__v1_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25D0E, 50,
    1, 1,

    -4,
};

const s32 anim_0977__v2_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25D40, 50,
    1, 2,

    -4,
};

const s32 anim_0977__v3_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25D72, 50,
    1, 3,

    -4,
};

const s32 anim_0977__v4_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25DA4, 50,
    1, 4,

    -4,
};

const s32 anim_0977__v5_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25DD6, 50,
    1, 5,

    -4,
};

const s32 anim_0977__v6_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25E08, 50,
    1, 6,

    -4,
};

const s32 anim_0977__v7_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25E3A, 50,
    1, 7,

    -4,
};

const s32 anim_0977__v8_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x25E6C, 24,
    1, 8,

    -4,
};

const s32 * const anim_0977[9] = {
    anim_0977__v0_l0,
    anim_0977__v1_l0,
    anim_0977__v2_l0,
    anim_0977__v3_l0,
    anim_0977__v4_l0,
    anim_0977__v5_l0,
    anim_0977__v6_l0,
    anim_0977__v7_l0,
    anim_0977__v8_l0,
};

const s32 anim_0978__v0_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25E84, 50,
    1, 0,

    -4,
};

const s32 anim_0978__v1_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25EB6, 50,
    1, 1,

    -4,
};

const s32 anim_0978__v2_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25EE8, 50,
    1, 2,

    -4,
};

const s32 anim_0978__v3_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25F1A, 50,
    1, 3,

    -4,
};

const s32 anim_0978__v4_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25F4C, 50,
    1, 4,

    -4,
};

const s32 anim_0978__v5_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25F7E, 50,
    1, 5,

    -4,
};

const s32 anim_0978__v6_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25FB0, 50,
    1, 6,

    -4,
};

const s32 anim_0978__v7_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x25FE2, 50,
    1, 7,

    -4,
};

const s32 anim_0978__v8_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26014, 30,
    1, 8,

    -4,
};

const s32 * const anim_0978[9] = {
    anim_0978__v0_l0,
    anim_0978__v1_l0,
    anim_0978__v2_l0,
    anim_0978__v3_l0,
    anim_0978__v4_l0,
    anim_0978__v5_l0,
    anim_0978__v6_l0,
    anim_0978__v7_l0,
    anim_0978__v8_l0,
};

const s32 anim_0979__v0_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x26032, 50,
    1, 0,

    -4,
};

const s32 anim_0979__v1_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x26064, 50,
    1, 1,

    -4,
};

const s32 anim_0979__v2_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x26096, 50,
    1, 2,

    -4,
};

const s32 anim_0979__v3_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x260C8, 50,
    1, 3,

    -4,
};

const s32 anim_0979__v4_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x260FA, 50,
    1, 4,

    -4,
};

const s32 anim_0979__v5_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2612C, 50,
    1, 5,

    -4,
};

const s32 anim_0979__v6_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2615E, 50,
    1, 6,

    -4,
};

const s32 anim_0979__v7_l0[] = {
    -2, 693, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x26190, 50,
    1, 7,

    -4,
};

const s32 anim_0979__v8_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x261C2, 24,
    1, 8,

    -4,
};

const s32 * const anim_0979[9] = {
    anim_0979__v0_l0,
    anim_0979__v1_l0,
    anim_0979__v2_l0,
    anim_0979__v3_l0,
    anim_0979__v4_l0,
    anim_0979__v5_l0,
    anim_0979__v6_l0,
    anim_0979__v7_l0,
    anim_0979__v8_l0,
};

const s32 anim_0980__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x261DA, 18,
    1, 0,

    -4,
};

const s32 anim_0980__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x261EC, 18,
    1, 1,

    -4,
};

const s32 anim_0980__v2_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x261FE, 18,
    1, 2,

    -4,
};

const s32 anim_0980__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26210, 38,
    1, 3,

    -4,
};

const s32 anim_0980__v4_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26236, 17,
    1, 4,

    -4,
};

const s32 * const anim_0980[5] = {
    anim_0980__v0_l0,
    anim_0980__v1_l0,
    anim_0980__v2_l0,
    anim_0980__v3_l0,
    anim_0980__v4_l0,
};

const s32 anim_0981__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26247, 18,
    1, 0,

    -4,
};

const s32 anim_0981__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26259, 18,
    1, 1,

    -4,
};

const s32 anim_0981__v2_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2626B, 18,
    1, 2,

    -4,
};

const s32 anim_0981__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2627D, 38,
    1, 3,

    -4,
};

const s32 anim_0981__v4_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x262A3, 17,
    1, 4,

    -4,
};

const s32 * const anim_0981[5] = {
    anim_0981__v0_l0,
    anim_0981__v1_l0,
    anim_0981__v2_l0,
    anim_0981__v3_l0,
    anim_0981__v4_l0,
};

const s32 anim_0982__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x262B4, 18,
    1, 0,

    -4,
};

const s32 anim_0982__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x262C6, 18,
    1, 1,

    -4,
};

const s32 anim_0982__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x262D8, 18,
    1, 2,

    -4,
};

const s32 anim_0982__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x262EA, 44,
    1, 3,

    -4,
};

const s32 anim_0982__v4_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26316, 17,
    1, 4,

    -4,
};

const s32 * const anim_0982[5] = {
    anim_0982__v0_l0,
    anim_0982__v1_l0,
    anim_0982__v2_l0,
    anim_0982__v3_l0,
    anim_0982__v4_l0,
};

const s32 anim_0983__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26327, 18,
    1, 0,

    -4,
};

const s32 anim_0983__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26339, 18,
    1, 1,

    -4,
};

const s32 anim_0983__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2634B, 18,
    1, 2,

    -4,
};

const s32 anim_0983__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2635D, 40,
    1, 3,

    -4,
};

const s32 anim_0983__v4_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26385, 21,
    1, 4,

    -4,
};

const s32 * const anim_0983[5] = {
    anim_0983__v0_l0,
    anim_0983__v1_l0,
    anim_0983__v2_l0,
    anim_0983__v3_l0,
    anim_0983__v4_l0,
};

const s32 anim_0984__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2639A, 18,
    1, 0,

    -4,
};

const s32 anim_0984__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x263AC, 18,
    1, 1,

    -4,
};

const s32 anim_0984__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x263BE, 18,
    1, 2,

    -4,
};

const s32 anim_0984__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x263D0, 46,
    1, 3,

    -4,
};

const s32 anim_0984__v4_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x263FE, 15,
    1, 4,

    -4,
};

const s32 * const anim_0984[5] = {
    anim_0984__v0_l0,
    anim_0984__v1_l0,
    anim_0984__v2_l0,
    anim_0984__v3_l0,
    anim_0984__v4_l0,
};

const s32 anim_0985__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2640D, 16,
    1, 0,

    -4,
};

const s32 anim_0985__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2641D, 16,
    1, 1,

    -4,
};

const s32 anim_0985__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2642D, 46,
    1, 2,

    -4,
};

const s32 anim_0985__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2645B, 38,
    1, 3,

    -4,
};

const s32 * const anim_0985[4] = {
    anim_0985__v0_l0,
    anim_0985__v1_l0,
    anim_0985__v2_l0,
    anim_0985__v3_l0,
};

const s32 anim_0986__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26481, 16,
    1, 0,

    -4,
};

const s32 anim_0986__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26491, 16,
    1, 1,

    -4,
};

const s32 anim_0986__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x264A1, 48,
    1, 2,

    -4,
};

const s32 anim_0986__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x264D1, 44,
    1, 3,

    -4,
};

const s32 * const anim_0986[4] = {
    anim_0986__v0_l0,
    anim_0986__v1_l0,
    anim_0986__v2_l0,
    anim_0986__v3_l0,
};

const s32 anim_0987__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x264FD, 16,
    1, 0,

    -4,
};

const s32 anim_0987__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2650D, 16,
    1, 1,

    -4,
};

const s32 anim_0987__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2651D, 80,
    1, 2,

    -4,
};

const s32 anim_0987__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2656D, 42,
    1, 3,

    -4,
};

const s32 * const anim_0987[4] = {
    anim_0987__v0_l0,
    anim_0987__v1_l0,
    anim_0987__v2_l0,
    anim_0987__v3_l0,
};

const s32 anim_0988__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26597, 16,
    1, 0,

    -4,
};

const s32 anim_0988__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x265A7, 16,
    1, 1,

    -4,
};

const s32 anim_0988__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x265B7, 68,
    1, 2,

    -4,
};

const s32 anim_0988__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x265FB, 63,
    1, 3,

    -4,
};

const s32 * const anim_0988[4] = {
    anim_0988__v0_l0,
    anim_0988__v1_l0,
    anim_0988__v2_l0,
    anim_0988__v3_l0,
};

const s32 anim_0989__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2663A, 16,
    1, 0,

    -4,
};

const s32 anim_0989__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2664A, 16,
    1, 1,

    -4,
};

const s32 anim_0989__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2665A, 60,
    1, 2,

    -4,
};

const s32 anim_0989__v3_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26696, 22,
    1, 3,

    -4,
};

const s32 * const anim_0989[4] = {
    anim_0989__v0_l0,
    anim_0989__v1_l0,
    anim_0989__v2_l0,
    anim_0989__v3_l0,
};

const s32 anim_0990__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x266AC, 16,
    1, 0,

    -4,
};

const s32 anim_0990__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x266BC, 16,
    1, 1,

    -4,
};

const s32 anim_0990__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x266CC, 28,
    1, 2,

    -4,
};

const s32 * const anim_0990[3] = {
    anim_0990__v0_l0,
    anim_0990__v1_l0,
    anim_0990__v2_l0,
};

const s32 anim_0991__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x266E8, 16,
    1, 0,

    -4,
};

const s32 anim_0991__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x266F8, 16,
    1, 1,

    -4,
};

const s32 anim_0991__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26708, 50,
    1, 2,

    -4,
};

const s32 * const anim_0991[3] = {
    anim_0991__v0_l0,
    anim_0991__v1_l0,
    anim_0991__v2_l0,
};

const s32 anim_0992__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2673A, 16,
    1, 0,

    -4,
};

const s32 anim_0992__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2674A, 16,
    1, 1,

    -4,
};

const s32 anim_0992__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2675A, 28,
    1, 2,

    -4,
};

const s32 * const anim_0992[3] = {
    anim_0992__v0_l0,
    anim_0992__v1_l0,
    anim_0992__v2_l0,
};

const s32 anim_0993__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26776, 16,
    1, 0,

    -4,
};

const s32 anim_0993__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26786, 16,
    1, 1,

    -4,
};

const s32 anim_0993__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26796, 28,
    1, 2,

    -4,
};

const s32 * const anim_0993[3] = {
    anim_0993__v0_l0,
    anim_0993__v1_l0,
    anim_0993__v2_l0,
};

const s32 anim_0994__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x267B2, 16,
    1, 0,

    -4,
};

const s32 anim_0994__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x267C2, 16,
    1, 1,

    -4,
};

const s32 anim_0994__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x267D2, 45,
    1, 2,

    -4,
};

const s32 * const anim_0994[3] = {
    anim_0994__v0_l0,
    anim_0994__v1_l0,
    anim_0994__v2_l0,
};

const s32 anim_0995__v0_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x267FF, 50,
    1, 0,

    -4,
};

const s32 anim_0995__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26831, 20,
    1, 1,

    -4,
};

const s32 * const anim_0995[2] = {
    anim_0995__v0_l0,
    anim_0995__v1_l0,
};

const s32 anim_0996__v0_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26845, 46,
    1, 0,

    -4,
};

const s32 * const anim_0996[1] = {
    anim_0996__v0_l0,
};

const s32 anim_0997__v0_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26873, 60,
    1, 0,

    -4,
};

const s32 * const anim_0997[1] = {
    anim_0997__v0_l0,
};

const s32 anim_0998__v0_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x268AF, 38,
    1, 0,

    -4,
};

const s32 * const anim_0998[1] = {
    anim_0998__v0_l0,
};

const s32 anim_0999__v0_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x268D5, 46,
    1, 0,

    -4,
};

const s32 * const anim_0999[1] = {
    anim_0999__v0_l0,
};

const s32 anim_1000__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26903, 32,
    1, 0,

    -4,
};

const s32 anim_1000__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26923, 24,
    1, 1,

    -4,
};

const s32 * const anim_1000[2] = {
    anim_1000__v0_l0,
    anim_1000__v1_l0,
};

const s32 anim_1001__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x2693B, 28,
    1, 0,

    -4,
};

const s32 anim_1001__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26957, 28,
    1, 1,

    -4,
};

const s32 * const anim_1001[2] = {
    anim_1001__v0_l0,
    anim_1001__v1_l0,
};

const s32 anim_1002__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26973, 34,
    1, 0,

    -4,
};

const s32 anim_1002__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26995, 30,
    1, 1,

    -4,
};

const s32 * const anim_1002[2] = {
    anim_1002__v0_l0,
    anim_1002__v1_l0,
};

const s32 anim_1003__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x269B3, 20,
    1, 0,

    -4,
};

const s32 anim_1003__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x269B3, 20,
    1, 0,

    -4,
};

const s32 * const anim_1003[2] = {
    anim_1003__v0_l0,
    anim_1003__v1_l0,
};

const s32 anim_1004__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x269C7, 32,
    1, 0,

    -4,
};

const s32 anim_1004__v1_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x269E7, 26,
    1, 1,

    -4,
};

const s32 * const anim_1004[2] = {
    anim_1004__v0_l0,
    anim_1004__v1_l0,
};

const s32 anim_1005__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26A01, 40,
    1, 0,

    -4,
};

const s32 anim_1005__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26A29, 40,
    1, 1,

    -4,
};

const s32 anim_1005__v2_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26A51, 40,
    1, 2,

    -4,
};

const s32 anim_1005__v3_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26A79, 40,
    1, 3,

    -4,
};

const s32 anim_1005__v4_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26AA1, 34,
    1, 4,

    -4,
};

const s32 * const anim_1005[5] = {
    anim_1005__v0_l0,
    anim_1005__v1_l0,
    anim_1005__v2_l0,
    anim_1005__v3_l0,
    anim_1005__v4_l0,
};

const s32 anim_1006__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26AC3, 40,
    1, 0,

    -4,
};

const s32 anim_1006__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26AEB, 40,
    1, 1,

    -4,
};

const s32 anim_1006__v2_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26B13, 40,
    1, 2,

    -4,
};

const s32 anim_1006__v3_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26B3B, 40,
    1, 3,

    -4,
};

const s32 anim_1006__v4_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26B63, 38,
    1, 4,

    -4,
};

const s32 * const anim_1006[5] = {
    anim_1006__v0_l0,
    anim_1006__v1_l0,
    anim_1006__v2_l0,
    anim_1006__v3_l0,
    anim_1006__v4_l0,
};

const s32 anim_1007__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26B89, 40,
    1, 0,

    -4,
};

const s32 anim_1007__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26BB1, 40,
    1, 1,

    -4,
};

const s32 anim_1007__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26BD9, 40,
    1, 2,

    -4,
};

const s32 anim_1007__v3_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26C01, 40,
    1, 3,

    -4,
};

const s32 anim_1007__v4_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26C29, 28,
    1, 4,

    -4,
};

const s32 * const anim_1007[5] = {
    anim_1007__v0_l0,
    anim_1007__v1_l0,
    anim_1007__v2_l0,
    anim_1007__v3_l0,
    anim_1007__v4_l0,
};

const s32 anim_1008__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26C45, 40,
    1, 0,

    -4,
};

const s32 anim_1008__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26C6D, 40,
    1, 1,

    -4,
};

const s32 anim_1008__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26C95, 40,
    1, 2,

    -4,
};

const s32 anim_1008__v3_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26CBD, 40,
    1, 3,

    -4,
};

const s32 anim_1008__v4_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26CE5, 30,
    1, 4,

    -4,
};

const s32 * const anim_1008[5] = {
    anim_1008__v0_l0,
    anim_1008__v1_l0,
    anim_1008__v2_l0,
    anim_1008__v3_l0,
    anim_1008__v4_l0,
};

const s32 anim_1009__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26D03, 40,
    1, 0,

    -4,
};

const s32 anim_1009__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26D2B, 40,
    1, 1,

    -4,
};

const s32 anim_1009__v2_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26D53, 40,
    1, 2,

    -4,
};

const s32 anim_1009__v3_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26D7B, 40,
    1, 3,

    -4,
};

const s32 anim_1009__v4_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26DA3, 28,
    1, 4,

    -4,
};

const s32 * const anim_1009[5] = {
    anim_1009__v0_l0,
    anim_1009__v1_l0,
    anim_1009__v2_l0,
    anim_1009__v3_l0,
    anim_1009__v4_l0,
};

const s32 anim_1010__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26DBF, 22,
    1, 0,

    -4,
};

const s32 * const anim_1010[1] = {
    anim_1010__v0_l0,
};

const s32 anim_1011__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26DD5, 26,
    1, 0,

    -4,
};

const s32 * const anim_1011[1] = {
    anim_1011__v0_l0,
};

const s32 anim_1012__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26DEF, 26,
    1, 0,

    -4,
};

const s32 * const anim_1012[1] = {
    anim_1012__v0_l0,
};

const s32 anim_1013__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26E09, 26,
    1, 0,

    -4,
};

const s32 * const anim_1013[1] = {
    anim_1013__v0_l0,
};

const s32 anim_1014__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26E23, 28,
    1, 0,

    -4,
};

const s32 * const anim_1014[1] = {
    anim_1014__v0_l0,
};

const s32 anim_1015__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26E3F, 32,
    1, 0,

    -4,
};

const s32 anim_1015__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x26E5F, 36,
    1, 1,

    -4,
};

const s32 anim_1015__v2_l0[] = {
    -2, 694, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26E83, 36,
    1, 2,

    -4,
};

const s32 * const anim_1015[3] = {
    anim_1015__v0_l0,
    anim_1015__v1_l0,
    anim_1015__v2_l0,
};

const s32 anim_1016__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26EA7, 30,
    1, 0,

    -4,
};

const s32 * const anim_1016[1] = {
    anim_1016__v0_l0,
};

const s32 anim_1017__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26EC5, 44,
    1, 0,

    -4,
};

const s32 * const anim_1017[1] = {
    anim_1017__v0_l0,
};

const s32 anim_1018__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26EF1, 44,
    1, 0,

    -4,
};

const s32 * const anim_1018[1] = {
    anim_1018__v0_l0,
};

const s32 anim_1019__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x26F1D, 36,
    1, 0,

    -4,
};

const s32 * const anim_1019[1] = {
    anim_1019__v0_l0,
};

const s32 anim_1020__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26F41, 16,
    1, 0,

    -4,
};

const s32 anim_1020__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26F51, 16,
    1, 1,

    -4,
};

const s32 anim_1020__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26F61, 26,
    1, 2,

    -4,
};

const s32 * const anim_1020[3] = {
    anim_1020__v0_l0,
    anim_1020__v1_l0,
    anim_1020__v2_l0,
};

const s32 anim_1021__v0_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26F7B, 16,
    1, 0,

    -4,
};

const s32 anim_1021__v1_l0[] = {
    -2, 707, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26F8B, 16,
    1, 1,

    -4,
};

const s32 anim_1021__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26F9B, 24,
    1, 2,

    -4,
};

const s32 * const anim_1021[3] = {
    anim_1021__v0_l0,
    anim_1021__v1_l0,
    anim_1021__v2_l0,
};

const s32 anim_1022__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26FB3, 16,
    1, 0,

    -4,
};

const s32 anim_1022__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26FC3, 16,
    1, 1,

    -4,
};

const s32 anim_1022__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x26FD3, 38,
    1, 2,

    -4,
};

const s32 * const anim_1022[3] = {
    anim_1022__v0_l0,
    anim_1022__v1_l0,
    anim_1022__v2_l0,
};

const s32 anim_1023__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x26FF9, 16,
    1, 0,

    -4,
};

const s32 anim_1023__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x27009, 16,
    1, 1,

    -4,
};

const s32 anim_1023__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27019, 40,
    1, 2,

    -4,
};

const s32 * const anim_1023[3] = {
    anim_1023__v0_l0,
    anim_1023__v1_l0,
    anim_1023__v2_l0,
};

const s32 anim_1024__v0_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x27041, 16,
    1, 0,

    -4,
};

const s32 anim_1024__v1_l0[] = {
    -2, 688, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x27051, 16,
    1, 1,

    -4,
};

const s32 anim_1024__v2_l0[] = {
    -2, 689, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27061, 36,
    1, 2,

    -4,
};

const s32 * const anim_1024[3] = {
    anim_1024__v0_l0,
    anim_1024__v1_l0,
    anim_1024__v2_l0,
};

const s32 anim_1025__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x27085, 42,
    1, 0,

    -4,
};

const s32 anim_1025__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x270AF, 26,
    1, 1,

    -4,
};

const s32 * const anim_1025[2] = {
    anim_1025__v0_l0,
    anim_1025__v1_l0,
};

const s32 anim_1026__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x270C9, 28,
    1, 0,

    -4,
};

const s32 anim_1026__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x270E5, 26,
    1, 1,

    -4,
};

const s32 * const anim_1026[2] = {
    anim_1026__v0_l0,
    anim_1026__v1_l0,
};

const s32 anim_1027__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x270FF, 42,
    1, 0,

    -4,
};

const s32 anim_1027__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27129, 24,
    1, 1,

    -4,
};

const s32 * const anim_1027[2] = {
    anim_1027__v0_l0,
    anim_1027__v1_l0,
};

const s32 anim_1028__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x27141, 40,
    1, 0,

    -4,
};

const s32 anim_1028__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27169, 24,
    1, 1,

    -4,
};

const s32 * const anim_1028[2] = {
    anim_1028__v0_l0,
    anim_1028__v1_l0,
};

const s32 anim_1029__v0_l0[] = {
    -2, 690, (((u16)16 << 0) | ((u16)0x50 << 16)),
    -1, 0x27181, 40,
    1, 0,

    -4,
};

const s32 anim_1029__v1_l0[] = {
    -2, 691, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x271A9, 26,
    1, 1,

    -4,
};

const s32 * const anim_1029[2] = {
    anim_1029__v0_l0,
    anim_1029__v1_l0,
};

const s32 anim_1030__v0_l0[] = {
    -2, 701, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x271C3, 32,
    1, 0,

    -4,
};

const s32 * const anim_1030[1] = {
    anim_1030__v0_l0,
};

const s32 anim_1031__v0_l0[] = {
    -2, 701, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x271E3, 26,
    1, 0,

    -4,
};

const s32 * const anim_1031[1] = {
    anim_1031__v0_l0,
};

const s32 anim_1032__v0_l0[] = {
    -2, 701, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x271FD, 48,
    1, 0,

    -4,
};

const s32 * const anim_1032[1] = {
    anim_1032__v0_l0,
};

const s32 anim_1033__v0_l0[] = {
    -2, 701, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2722D, 34,
    1, 0,

    -4,
};

const s32 * const anim_1033[1] = {
    anim_1033__v0_l0,
};

const s32 anim_1034__v0_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x2724F, 8,
    1, 0,

    -4,
};

const s32 anim_1034__v1_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x27257, 8,
    1, 1,

    -4,
};

const s32 * const anim_1034[2] = {
    anim_1034__v0_l0,
    anim_1034__v1_l0,
};

const s32 anim_1035__v0_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x2725F, 8,
    1, 0,

    -4,
};

const s32 anim_1035__v1_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x27267, 12,
    1, 1,

    -4,
};

const s32 * const anim_1035[2] = {
    anim_1035__v0_l0,
    anim_1035__v1_l0,
};

const s32 anim_1036__v0_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x27273, 8,
    1, 0,

    -4,
};

const s32 anim_1036__v1_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x2727B, 12,
    1, 1,

    -4,
};

const s32 * const anim_1036[2] = {
    anim_1036__v0_l0,
    anim_1036__v1_l0,
};

const s32 anim_1037__v0_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x27287, 10,
    1, 0,

    -4,
};

const s32 anim_1037__v1_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x27291, 10,
    1, 1,

    -4,
};

const s32 * const anim_1037[2] = {
    anim_1037__v0_l0,
    anim_1037__v1_l0,
};

const s32 anim_1038__v0_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x2729B, 8,
    1, 0,

    -4,
};

const s32 anim_1038__v1_l0[] = {
    -2, 708, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x272A3, 12,
    1, 1,

    -4,
};

const s32 * const anim_1038[2] = {
    anim_1038__v0_l0,
    anim_1038__v1_l0,
};

const s32 anim_1039__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x272AF, 20,
    1, 0,

    -4,
};

const s32 * const anim_1039[1] = {
    anim_1039__v0_l0,
};

const s32 anim_1040__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x272C3, 20,
    1, 0,

    -4,
};

const s32 * const anim_1040[1] = {
    anim_1040__v0_l0,
};

const s32 anim_1041__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x272D7, 20,
    1, 0,

    -4,
};

const s32 * const anim_1041[1] = {
    anim_1041__v0_l0,
};

const s32 anim_1042__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x272EB, 20,
    1, 0,

    -4,
};

const s32 * const anim_1042[1] = {
    anim_1042__v0_l0,
};

const s32 anim_1043__v0_l0[] = {
    -2, 164, (((u16)16 << 0) | ((u16)0x20 << 16)),
    -1, 0x272FF, 20,
    1, 0,

    -4,
};

const s32 * const anim_1043[1] = {
    anim_1043__v0_l0,
};

const s32 anim_1044__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27313, 28,
    1, 0,

    -4,
};

const s32 * const anim_1044[1] = {
    anim_1044__v0_l0,
};

const s32 anim_1045__v0_l0[] = {
    -2, 74, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2732F, 46,
    -6, 0, (((0 & 0xFF) << 0) | ((2 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((2 & 0xFF) << 24)),
    1, 0,

    -4,
};

const s32 * const anim_1045[1] = {
    anim_1045__v0_l0,
};

const s32 anim_1046__v0_l0[] = {
    -2, 216, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2735D, 90,
    1, 0,

    -4,
};

const s32 * const anim_1046[1] = {
    anim_1046__v0_l0,
};

const s32 anim_1047__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273B7, 4,
    1, 0,

    -4,
};

const s32 anim_1047__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273BB, 4,
    1, 1,

    -4,
};

const s32 anim_1047__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273BF, 4,
    1, 2,

    -4,
};

const s32 anim_1047__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273C3, 4,
    1, 3,

    -4,
};

const s32 anim_1047__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273C7, 4,
    1, 4,

    -4,
};

const s32 anim_1047__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273CB, 4,
    1, 5,

    -4,
};

const s32 anim_1047__v6_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273CF, 4,
    1, 6,

    -4,
};

const s32 anim_1047__v7_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273D3, 4,
    1, 7,

    -4,
};

const s32 anim_1047__v8_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273D7, 4,
    1, 8,

    -4,
};

const s32 anim_1047__v9_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273DB, 4,
    1, 9,

    -4,
};

const s32 anim_1047__v10_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273DF, 4,
    1, 10,

    -4,
};

const s32 anim_1047__v11_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273E3, 16,
    1, 11,

    -4,
};

const s32 anim_1047__v12_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x273F3, 16,
    1, 12,

    -4,
};

const s32 anim_1047__v13_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27403, 16,
    1, 13,

    -4,
};

const s32 anim_1047__v14_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27413, 16,
    1, 14,

    -4,
};

const s32 anim_1047__v15_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27423, 16,
    1, 15,

    -4,
};

const s32 anim_1047__v16_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27433, 16,
    1, 16,

    -4,
};

const s32 * const anim_1047[17] = {
    anim_1047__v0_l0,
    anim_1047__v1_l0,
    anim_1047__v2_l0,
    anim_1047__v3_l0,
    anim_1047__v4_l0,
    anim_1047__v5_l0,
    anim_1047__v6_l0,
    anim_1047__v7_l0,
    anim_1047__v8_l0,
    anim_1047__v9_l0,
    anim_1047__v10_l0,
    anim_1047__v11_l0,
    anim_1047__v12_l0,
    anim_1047__v13_l0,
    anim_1047__v14_l0,
    anim_1047__v15_l0,
    anim_1047__v16_l0,
};

const s32 anim_1048__v0_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27443, 20,
    1, 0,

    -4,
};

const s32 anim_1048__v1_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27457, 16,
    1, 1,

    -4,
};

const s32 anim_1048__v2_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27467, 4,
    1, 2,

    -4,
};

const s32 anim_1048__v3_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2746B, 6,
    1, 3,

    -4,
};

const s32 anim_1048__v4_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27471, 6,
    1, 4,

    -4,
};

const s32 anim_1048__v5_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27477, 6,
    1, 5,

    -4,
};

const s32 anim_1048__v6_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2747D, 6,
    1, 6,

    -4,
};

const s32 anim_1048__v7_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27483, 6,
    1, 7,

    -4,
};

const s32 anim_1048__v8_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27489, 6,
    1, 8,

    -4,
};

const s32 anim_1048__v9_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2748F, 20,
    1, 9,

    -4,
};

const s32 * const anim_1048[10] = {
    anim_1048__v0_l0,
    anim_1048__v1_l0,
    anim_1048__v2_l0,
    anim_1048__v3_l0,
    anim_1048__v4_l0,
    anim_1048__v5_l0,
    anim_1048__v6_l0,
    anim_1048__v7_l0,
    anim_1048__v8_l0,
    anim_1048__v9_l0,
};

const s32 anim_1049__v0_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x274A3, 28,
    1, 0,

    -4,
};

const s32 anim_1049__v1_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x274BF, 28,
    1, 1,

    -4,
};

const s32 anim_1049__v2_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x274DB, 36,
    1, 2,

    -4,
};

const s32 anim_1049__v3_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x274FF, 30,
    1, 3,

    -4,
};

const s32 anim_1049__v4_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2751D, 28,
    1, 4,

    -4,
};

const s32 anim_1049__v5_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27539, 22,
    1, 5,

    -4,
};

const s32 anim_1049__v6_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2754F, 30,
    1, 6,

    -4,
};

const s32 anim_1049__v7_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2756D, 26,
    1, 7,

    -4,
};

const s32 anim_1049__v8_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27587, 30,
    1, 8,

    -4,
};

const s32 * const anim_1049[9] = {
    anim_1049__v0_l0,
    anim_1049__v1_l0,
    anim_1049__v2_l0,
    anim_1049__v3_l0,
    anim_1049__v4_l0,
    anim_1049__v5_l0,
    anim_1049__v6_l0,
    anim_1049__v7_l0,
    anim_1049__v8_l0,
};

const s32 anim_1050__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x275A5, 1,
    7, 0,

    -1, 0x275A6, 2,
    7, 1,

    -1, 0x275A8, 2,
    7, 2,

    -1, 0x275AA, 2,
    7, 3,

    -3, 23,
};

const s32 anim_1050__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x275AC, 1,
    7, 4,

    -1, 0x275AD, 2,
    7, 5,

    -1, 0x275AF, 2,
    7, 6,

    -1, 0x275B1, 2,
    7, 7,

    -3, 23,
};

const s32 * const anim_1050[2] = {
    anim_1050__v0_l0,
    anim_1050__v1_l0,
};

const s32 anim_1051__v0_l0[] = {
    -2, 710, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x275B3, 22,
    1, 0,

    -4,
};

const s32 anim_1051__v1_l0[] = {
    -2, 710, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x275C9, 32,
    1, 1,

    -4,
};

const s32 anim_1051__v2_l0[] = {
    -2, 710, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x275E9, 22,
    1, 2,

    -4,
};

const s32 anim_1051__v3_l0[] = {
    -2, 710, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x275FF, 22,
    1, 3,

    -4,
};

const s32 anim_1051__v4_l0[] = {
    -2, 710, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27615, 10,
    1, 4,

    -4,
};

const s32 anim_1051__v5_l0[] = {
    -2, 711, (((u16)16 << 0) | ((u16)0x70 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_1051[6] = {
    anim_1051__v0_l0,
    anim_1051__v1_l0,
    anim_1051__v2_l0,
    anim_1051__v3_l0,
    anim_1051__v4_l0,
    anim_1051__v5_l0,
};

const s32 anim_1052__v0_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2761F, 24,
    1, 0,

    -4,
};

const s32 anim_1052__v1_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27637, 42,
    1, 1,

    -4,
};

const s32 anim_1052__v2_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27661, 36,
    1, 2,

    -4,
};

const s32 anim_1052__v3_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27685, 30,
    1, 3,

    -4,
};

const s32 anim_1052__v4_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x276A3, 8,
    1, 4,

    -4,
};

const s32 * const anim_1052[5] = {
    anim_1052__v0_l0,
    anim_1052__v1_l0,
    anim_1052__v2_l0,
    anim_1052__v3_l0,
    anim_1052__v4_l0,
};

const s32 anim_1053__v0_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x276AB, 24,
    1, 0,

    -4,
};

const s32 anim_1053__v1_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x276C3, 36,
    1, 1,

    -4,
};

const s32 anim_1053__v2_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x276E7, 42,
    1, 2,

    -4,
};

const s32 anim_1053__v3_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27711, 36,
    1, 3,

    -4,
};

const s32 anim_1053__v4_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27735, 20,
    1, 4,

    -4,
};

const s32 * const anim_1053[5] = {
    anim_1053__v0_l0,
    anim_1053__v1_l0,
    anim_1053__v2_l0,
    anim_1053__v3_l0,
    anim_1053__v4_l0,
};

const s32 anim_1054__v0_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27749, 24,
    1, 0,

    -4,
};

const s32 anim_1054__v1_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27761, 48,
    1, 1,

    -4,
};

const s32 anim_1054__v2_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27791, 36,
    1, 2,

    -4,
};

const s32 anim_1054__v3_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x277B5, 32,
    1, 3,

    -4,
};

const s32 anim_1054__v4_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x277D5, 8,
    1, 4,

    -4,
};

const s32 * const anim_1054[5] = {
    anim_1054__v0_l0,
    anim_1054__v1_l0,
    anim_1054__v2_l0,
    anim_1054__v3_l0,
    anim_1054__v4_l0,
};

const s32 anim_1055__v0_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x277DD, 44,
    1, 0,

    -4,
};

const s32 anim_1055__v1_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27809, 44,
    1, 1,

    -4,
};

const s32 anim_1055__v2_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27835, 38,
    1, 2,

    -4,
};

const s32 anim_1055__v3_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2785B, 32,
    1, 3,

    -4,
};

const s32 anim_1055__v4_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2787B, 8,
    1, 4,

    -4,
};

const s32 * const anim_1055[5] = {
    anim_1055__v0_l0,
    anim_1055__v1_l0,
    anim_1055__v2_l0,
    anim_1055__v3_l0,
    anim_1055__v4_l0,
};

const s32 anim_1056__v0_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27883, 20,
    1, 0,

    -4,
};

const s32 anim_1056__v1_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27897, 44,
    1, 1,

    -4,
};

const s32 anim_1056__v2_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x278C3, 40,
    1, 2,

    -4,
};

const s32 anim_1056__v3_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x278EB, 28,
    1, 3,

    -4,
};

const s32 anim_1056__v4_l0[] = {
    -2, 712, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x27907, 12,
    1, 4,

    -4,
};

const s32 * const anim_1056[5] = {
    anim_1056__v0_l0,
    anim_1056__v1_l0,
    anim_1056__v2_l0,
    anim_1056__v3_l0,
    anim_1056__v4_l0,
};

const s32 anim_1057__v0_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27913, 108,
    1, 0,

    -4,
};

const s32 anim_1057__v1_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2797F, 12,
    1, 1,

    -4,
};

const s32 anim_1057__v2_l0[] = {
    -2, 714, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2798B, 8,
    1, 2,

    -4,
};

const s32 anim_1057__v3_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27993, 168,
    1, 3,

    -4,
};

const s32 anim_1057__v4_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27A3B, 168,
    1, 4,

    -4,
};

const s32 anim_1057__v5_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27AE3, 168,
    1, 5,

    -4,
};

const s32 * const anim_1057[6] = {
    anim_1057__v0_l0,
    anim_1057__v1_l0,
    anim_1057__v2_l0,
    anim_1057__v3_l0,
    anim_1057__v4_l0,
    anim_1057__v5_l0,
};

const s32 anim_1058__v0_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27B8B, 168,
    1, 0,

    -4,
};

const s32 anim_1058__v1_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27C33, 168,
    1, 1,

    -4,
};

const s32 anim_1058__v2_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27CDB, 168,
    1, 2,

    -4,
};

const s32 anim_1058__v3_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27D83, 12,
    1, 3,

    -4,
};

const s32 anim_1058__v4_l0[] = {
    -2, 716, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x27D8F, 12,
    1, 4,

    -4,
};

const s32 * const anim_1058[5] = {
    anim_1058__v0_l0,
    anim_1058__v1_l0,
    anim_1058__v2_l0,
    anim_1058__v3_l0,
    anim_1058__v4_l0,
};

const s32 anim_1059__v0_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27D9B, 168,
    1, 0,

    -4,
};

const s32 anim_1059__v1_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27E43, 168,
    1, 1,

    -4,
};

const s32 anim_1059__v2_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27EEB, 168,
    1, 2,

    -4,
};

const s32 * const anim_1059[3] = {
    anim_1059__v0_l0,
    anim_1059__v1_l0,
    anim_1059__v2_l0,
};

const s32 anim_1060__v0_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x27F93, 168,
    1, 0,

    -4,
};

const s32 anim_1060__v1_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2803B, 168,
    1, 1,

    -4,
};

const s32 anim_1060__v2_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x280E3, 168,
    1, 2,

    -4,
};

const s32 * const anim_1060[3] = {
    anim_1060__v0_l0,
    anim_1060__v1_l0,
    anim_1060__v2_l0,
};

const s32 anim_1061__v0_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2818B, 168,
    1, 0,

    -4,
};

const s32 anim_1061__v1_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28233, 168,
    1, 1,

    -4,
};

const s32 anim_1061__v2_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x282DB, 168,
    1, 2,

    -4,
};

const s32 * const anim_1061[3] = {
    anim_1061__v0_l0,
    anim_1061__v1_l0,
    anim_1061__v2_l0,
};

const s32 anim_1062__v0_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28383, 168,
    1, 0,

    -4,
};

const s32 anim_1062__v1_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2842B, 168,
    1, 1,

    -4,
};

const s32 anim_1062__v2_l0[] = {
    -2, 715, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x284D3, 168,
    1, 2,

    -4,
};

const s32 * const anim_1062[3] = {
    anim_1062__v0_l0,
    anim_1062__v1_l0,
    anim_1062__v2_l0,
};

const s32 anim_1063__v0_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2857B, 36,
    1, 0,

    -4,
};

const s32 anim_1063__v1_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2859F, 34,
    1, 1,

    -4,
};

const s32 anim_1063__v2_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x285C1, 34,
    1, 2,

    -4,
};

const s32 anim_1063__v3_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x285E3, 36,
    1, 3,

    -4,
};

const s32 anim_1063__v4_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28607, 34,
    1, 4,

    -4,
};

const s32 anim_1063__v5_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28629, 36,
    1, 5,

    -4,
};

const s32 anim_1063__v6_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2864D, 32,
    1, 6,

    -4,
};

const s32 anim_1063__v7_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2866D, 10,
    1, 7,

    -4,
};

const s32 anim_1063__v8_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28677, 38,
    1, 8,

    -4,
};

const s32 * const anim_1063[9] = {
    anim_1063__v0_l0,
    anim_1063__v1_l0,
    anim_1063__v2_l0,
    anim_1063__v3_l0,
    anim_1063__v4_l0,
    anim_1063__v5_l0,
    anim_1063__v6_l0,
    anim_1063__v7_l0,
    anim_1063__v8_l0,
};

const s32 anim_1064__v0_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2869D, 36,
    1, 0,

    -4,
};

const s32 anim_1064__v1_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x286C1, 34,
    1, 1,

    -4,
};

const s32 anim_1064__v2_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x286E3, 24,
    1, 2,

    -4,
};

const s32 anim_1064__v3_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x286FB, 22,
    1, 3,

    -4,
};

const s32 anim_1064__v4_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28711, 24,
    1, 4,

    -4,
};

const s32 anim_1064__v5_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28729, 28,
    1, 5,

    -4,
};

const s32 anim_1064__v6_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28745, 24,
    1, 6,

    -4,
};

const s32 * const anim_1064[7] = {
    anim_1064__v0_l0,
    anim_1064__v1_l0,
    anim_1064__v2_l0,
    anim_1064__v3_l0,
    anim_1064__v4_l0,
    anim_1064__v5_l0,
    anim_1064__v6_l0,
};

const s32 anim_1065__v0_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2875D, 38,
    1, 0,

    -4,
};

const s32 anim_1065__v1_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28783, 38,
    1, 1,

    -4,
};

const s32 anim_1065__v2_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x287A9, 26,
    1, 2,

    -4,
};

const s32 anim_1065__v3_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x287C3, 22,
    1, 3,

    -4,
};

const s32 anim_1065__v4_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x287D9, 28,
    1, 4,

    -4,
};

const s32 anim_1065__v5_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x287F5, 34,
    1, 5,

    -4,
};

const s32 anim_1065__v6_l0[] = {
    -2, 709, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28817, 22,
    1, 6,

    -4,
};

const s32 * const anim_1065[7] = {
    anim_1065__v0_l0,
    anim_1065__v1_l0,
    anim_1065__v2_l0,
    anim_1065__v3_l0,
    anim_1065__v4_l0,
    anim_1065__v5_l0,
    anim_1065__v6_l0,
};

const s32 anim_1066__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2882D, 40,
    1, 0,

    -4,
};

const s32 * const anim_1066[1] = {
    anim_1066__v0_l0,
};

const s32 anim_1067__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x28855, 40,
    1, 0,

    -4,
};

const s32 * const anim_1067[1] = {
    anim_1067__v0_l0,
};

const s32 anim_1068__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2887D, 40,
    1, 0,

    -4,
};

const s32 * const anim_1068[1] = {
    anim_1068__v0_l0,
};

const s32 anim_1069__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x288A5, 40,
    1, 0,

    -4,
};

const s32 * const anim_1069[1] = {
    anim_1069__v0_l0,
};

const s32 anim_1070__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x288CD, 40,
    1, 0,

    -4,
};

const s32 * const anim_1070[1] = {
    anim_1070__v0_l0,
};

const s32 anim_1071__v0_l0[] = {
    -2, 93, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x288F5, 40,
    1, 0,

    -4,
};

const s32 * const anim_1071[1] = {
    anim_1071__v0_l0,
};

const s32 anim_1072__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2891D, 22,
    1, 0,

    -4,
};

const s32 anim_1072__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x28933, 8,
    1, 1,

    -4,
};

const s32 * const anim_1072[2] = {
    anim_1072__v0_l0,
    anim_1072__v1_l0,
};

const s32 anim_1073__v0_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2893B, 50,
    1, 0,

    -4,
};

const s32 anim_1073__v1_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2896D, 38,
    1, 1,

    -4,
};

const s32 anim_1073__v2_l0[] = {
    -2, 714, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x28993, 32,
    1, 2,

    -4,
};

const s32 anim_1073__v3_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x289B3, 168,
    1, 3,

    -4,
};

const s32 anim_1073__v4_l0[] = {
    -2, 713, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28A5B, 168,
    1, 4,

    -4,
};

const s32 * const anim_1073[5] = {
    anim_1073__v0_l0,
    anim_1073__v1_l0,
    anim_1073__v2_l0,
    anim_1073__v3_l0,
    anim_1073__v4_l0,
};

const s32 anim_1074__v0_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28B03, 90,
    1, 0,

    -4,
};

const s32 anim_1074__v1_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28B5D, 51,
    1, 1,

    -4,
};

const s32 anim_1074__v2_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28B90, 57,
    1, 2,

    -4,
};

const s32 anim_1074__v3_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28BC9, 66,
    1, 3,

    -4,
};

const s32 anim_1074__v4_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28C0B, 66,
    1, 4,

    -4,
};

const s32 anim_1074__v5_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28C4D, 66,
    1, 5,

    -4,
};

const s32 anim_1074__v6_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28C8F, 15,
    1, 6,

    -3, 8,
};

const s32 anim_1074__v7_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28C9E, 30,
    1, 7,

    -3, 8,
};

const s32 anim_1074__v8_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28CBC, 4,
    1, 8,

    -3, 8,
};

const s32 anim_1074__v9_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28CC0, 4,
    1, 9,

    -3, 8,
};

const s32 anim_1074__v10_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28CC4, 4,
    1, 10,

    -3, 8,
};

const s32 anim_1074__v11_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28CC8, 30,
    1, 11,

    -4,
};

const s32 anim_1074__v12_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28CE6, 66,
    1, 12,

    -4,
};

const s32 anim_1074__v13_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28D28, 6,
    1, 13,

    -3, 8,
};

const s32 anim_1074__v14_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28D2E, 8,
    1, 14,

    -3, 8,
};

const s32 anim_1074__v15_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28D36, 8,
    1, 15,

    -3, 8,
};

const s32 anim_1074__v16_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28D3E, 8,
    1, 16,

    -3, 8,
};

const s32 anim_1074__v17_l0[] = {
    -2, 719, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x28D46, 12,
    1, 17,

    -4,
};

const s32 anim_1074__v18_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28D52, 18,
    1, 18,

    -4,
};

const s32 * const anim_1074[19] = {
    anim_1074__v0_l0,
    anim_1074__v1_l0,
    anim_1074__v2_l0,
    anim_1074__v3_l0,
    anim_1074__v4_l0,
    anim_1074__v5_l0,
    anim_1074__v6_l0,
    anim_1074__v7_l0,
    anim_1074__v8_l0,
    anim_1074__v9_l0,
    anim_1074__v10_l0,
    anim_1074__v11_l0,
    anim_1074__v12_l0,
    anim_1074__v13_l0,
    anim_1074__v14_l0,
    anim_1074__v15_l0,
    anim_1074__v16_l0,
    anim_1074__v17_l0,
    anim_1074__v18_l0,
};

const s32 anim_1075__v0_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x28D64, 48,
    1, 0,

    -4,
};

const s32 anim_1075__v1_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x28D94, 48,
    1, 1,

    -4,
};

const s32 * const anim_1075[2] = {
    anim_1075__v0_l0,
    anim_1075__v1_l0,
};

const s32 anim_1076__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28DC4, 46,
    1, 0,

    -4,
};

const s32 anim_1076__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28DF2, 42,
    1, 1,

    -4,
};

const s32 anim_1076__v2_l0[] = {
    -2, 721, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x28E1C, 12,
    1, 2,

    -4,
};

const s32 anim_1076__v3_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E28, 18,
    1, 3,

    -4,
};

const s32 anim_1076__v4_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E3A, 6,
    1, 4,

    -4,
};

const s32 anim_1076__v5_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E40, 8,
    1, 5,

    -4,
};

const s32 anim_1076__v6_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E48, 8,
    1, 6,

    -4,
};

const s32 anim_1076__v7_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E50, 8,
    1, 7,

    -4,
};

const s32 anim_1076__v8_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E58, 8,
    1, 8,

    -4,
};

const s32 anim_1076__v9_l0[] = {
    -2, 161, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x28E60, 1,
    4, 9,

    -1, 0x28E61, 1,
    4, 10,

    -1, 0x28E62, 1,
    4, 11,

    -1, 0x28E63, 1,
    4, 12,

    -3, 23,
};

const s32 anim_1076__v10_l0[] = {
    -2, 721, (((u16)16 << 0) | ((u16)0x10 << 16)),
    1, -1,

    -4,
};

const s32 * const anim_1076[11] = {
    anim_1076__v0_l0,
    anim_1076__v1_l0,
    anim_1076__v2_l0,
    anim_1076__v3_l0,
    anim_1076__v4_l0,
    anim_1076__v5_l0,
    anim_1076__v6_l0,
    anim_1076__v7_l0,
    anim_1076__v8_l0,
    anim_1076__v9_l0,
    anim_1076__v10_l0,
};

const s32 anim_1077__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E64, 6,
    1, 0,

    -4,
};

const s32 anim_1077__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E6A, 6,
    1, 1,

    -4,
};

const s32 anim_1077__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E70, 12,
    1, 2,

    -4,
};

const s32 anim_1077__v3_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E7C, 8,
    1, 3,

    -4,
};

const s32 anim_1077__v4_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E84, 8,
    1, 4,

    -4,
};

const s32 anim_1077__v5_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E8C, 8,
    1, 5,

    -4,
};

const s32 anim_1077__v6_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E94, 8,
    1, 6,

    -4,
};

const s32 anim_1077__v7_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28E9C, 12,
    1, 7,

    -4,
};

const s32 * const anim_1077[8] = {
    anim_1077__v0_l0,
    anim_1077__v1_l0,
    anim_1077__v2_l0,
    anim_1077__v3_l0,
    anim_1077__v4_l0,
    anim_1077__v5_l0,
    anim_1077__v6_l0,
    anim_1077__v7_l0,
};

const s32 anim_1078__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EA8, 4,
    1, 0,

    -3, 8,
};

const s32 anim_1078__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EAC, 2,
    1, 1,

    -3, 8,
};

const s32 anim_1078__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EAE, 4,
    1, 2,

    -3, 8,
};

const s32 anim_1078__v3_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EB2, 4,
    1, 3,

    -3, 8,
};

const s32 anim_1078__v4_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EB6, 4,
    1, 4,

    -3, 8,
};

const s32 anim_1078__v5_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EBA, 4,
    1, 5,

    -3, 8,
};

const s32 anim_1078__v6_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EBE, 4,
    1, 6,

    -3, 8,
};

const s32 anim_1078__v7_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EC2, 4,
    1, 7,

    -3, 8,
};

const s32 anim_1078__v8_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28EC6, 4,
    1, 8,

    -3, 8,
};

const s32 anim_1078__v9_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x28ECA, 4,
    1, 9,

    -3, 8,
};

const s32 * const anim_1078[10] = {
    anim_1078__v0_l0,
    anim_1078__v1_l0,
    anim_1078__v2_l0,
    anim_1078__v3_l0,
    anim_1078__v4_l0,
    anim_1078__v5_l0,
    anim_1078__v6_l0,
    anim_1078__v7_l0,
    anim_1078__v8_l0,
    anim_1078__v9_l0,
};

const s32 anim_1079__v0_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28ECE, 84,
    1, 0,

    -4,
};

const s32 anim_1079__v1_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28F22, 75,
    1, 1,

    -4,
};

const s32 anim_1079__v2_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28F6D, 48,
    1, 2,

    -4,
};

const s32 anim_1079__v3_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28F9D, 68,
    1, 3,

    -4,
};

const s32 anim_1079__v4_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x28FE1, 68,
    1, 4,

    -4,
};

const s32 anim_1079__v5_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29025, 68,
    1, 5,

    -4,
};

const s32 anim_1079__v6_l0[] = {
    -2, 723, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x29069, 10,
    1, 6,

    -4,
};

const s32 anim_1079__v7_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29073, 10,
    1, 7,

    -4,
};

const s32 anim_1079__v8_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2907D, 36,
    1, 8,

    -4,
};

const s32 anim_1079__v9_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x290A1, 50,
    1, 9,

    -4,
};

const s32 * const anim_1079[10] = {
    anim_1079__v0_l0,
    anim_1079__v1_l0,
    anim_1079__v2_l0,
    anim_1079__v3_l0,
    anim_1079__v4_l0,
    anim_1079__v5_l0,
    anim_1079__v6_l0,
    anim_1079__v7_l0,
    anim_1079__v8_l0,
    anim_1079__v9_l0,
};

const s32 anim_1080__v0_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x290D3, 90,
    1, 0,

    -4,
};

const s32 anim_1080__v1_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2912D, 75,
    1, 1,

    -4,
};

const s32 anim_1080__v2_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29178, 69,
    1, 2,

    -4,
};

const s32 anim_1080__v3_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x291BD, 88,
    1, 3,

    -4,
};

const s32 anim_1080__v4_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29215, 88,
    1, 4,

    -4,
};

const s32 anim_1080__v5_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2926D, 88,
    1, 5,

    -4,
};

const s32 anim_1080__v6_l0[] = {
    -2, 723, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x292C5, 15,
    1, 6,

    -4,
};

const s32 anim_1080__v7_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x292D4, 21,
    1, 7,

    -4,
};

const s32 anim_1080__v8_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x292E9, 42,
    1, 8,

    -4,
};

const s32 anim_1080__v9_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29313, 51,
    1, 9,

    -4,
};

const s32 * const anim_1080[10] = {
    anim_1080__v0_l0,
    anim_1080__v1_l0,
    anim_1080__v2_l0,
    anim_1080__v3_l0,
    anim_1080__v4_l0,
    anim_1080__v5_l0,
    anim_1080__v6_l0,
    anim_1080__v7_l0,
    anim_1080__v8_l0,
    anim_1080__v9_l0,
};

const s32 anim_1081__v0_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29346, 90,
    1, 0,

    -4,
};

const s32 anim_1081__v1_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x293A0, 57,
    1, 1,

    -4,
};

const s32 anim_1081__v2_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x293D9, 39,
    1, 2,

    -4,
};

const s32 anim_1081__v3_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29400, 60,
    1, 3,

    -4,
};

const s32 anim_1081__v4_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2943C, 60,
    1, 4,

    -4,
};

const s32 anim_1081__v5_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29478, 60,
    1, 5,

    -4,
};

const s32 anim_1081__v6_l0[] = {
    -2, 723, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x294B4, 18,
    1, 6,

    -4,
};

const s32 anim_1081__v7_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x294C6, 18,
    1, 7,

    -4,
};

const s32 anim_1081__v8_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x294D8, 69,
    1, 8,

    -4,
};

const s32 anim_1081__v9_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2951D, 69,
    1, 9,

    -4,
};

const s32 * const anim_1081[10] = {
    anim_1081__v0_l0,
    anim_1081__v1_l0,
    anim_1081__v2_l0,
    anim_1081__v3_l0,
    anim_1081__v4_l0,
    anim_1081__v5_l0,
    anim_1081__v6_l0,
    anim_1081__v7_l0,
    anim_1081__v8_l0,
    anim_1081__v9_l0,
};

const s32 anim_1082__v0_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29562, 90,
    1, 0,

    -4,
};

const s32 anim_1082__v1_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x295BC, 45,
    1, 1,

    -4,
};

const s32 anim_1082__v2_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x295E9, 69,
    1, 2,

    -4,
};

const s32 anim_1082__v3_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2962E, 68,
    1, 3,

    -4,
};

const s32 anim_1082__v4_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29672, 68,
    1, 4,

    -4,
};

const s32 anim_1082__v5_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x296B6, 68,
    1, 5,

    -4,
};

const s32 anim_1082__v6_l0[] = {
    -2, 723, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x296FA, 9,
    1, 6,

    -4,
};

const s32 anim_1082__v7_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29703, 15,
    1, 7,

    -4,
};

const s32 anim_1082__v8_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29712, 46,
    1, 8,

    -3, 8,
};

const s32 anim_1082__v9_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29740, 51,
    1, 9,

    -4,
};

const s32 * const anim_1082[10] = {
    anim_1082__v0_l0,
    anim_1082__v1_l0,
    anim_1082__v2_l0,
    anim_1082__v3_l0,
    anim_1082__v4_l0,
    anim_1082__v5_l0,
    anim_1082__v6_l0,
    anim_1082__v7_l0,
    anim_1082__v8_l0,
    anim_1082__v9_l0,
};

const s32 anim_1083__v0_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29773, 45,
    1, 0,

    -4,
};

const s32 anim_1083__v1_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x297A0, 51,
    1, 1,

    -4,
};

const s32 anim_1083__v2_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x297D3, 69,
    1, 2,

    -4,
};

const s32 anim_1083__v3_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29818, 60,
    1, 3,

    -4,
};

const s32 anim_1083__v4_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29854, 64,
    1, 4,

    -4,
};

const s32 anim_1083__v5_l0[] = {
    -2, 717, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x29894, 64,
    1, 5,

    -4,
};

const s32 anim_1083__v6_l0[] = {
    -2, 723, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x298D4, 9,
    1, 6,

    -4,
};

const s32 anim_1083__v7_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x298DD, 15,
    1, 7,

    -4,
};

const s32 anim_1083__v8_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x298EC, 63,
    1, 8,

    -4,
};

const s32 anim_1083__v9_l0[] = {
    -2, 722, (((u16)16 << 0) | ((u16)0x70 << 16)),
    -1, 0x2992B, 51,
    1, 9,

    -4,
};

const s32 * const anim_1083[10] = {
    anim_1083__v0_l0,
    anim_1083__v1_l0,
    anim_1083__v2_l0,
    anim_1083__v3_l0,
    anim_1083__v4_l0,
    anim_1083__v5_l0,
    anim_1083__v6_l0,
    anim_1083__v7_l0,
    anim_1083__v8_l0,
    anim_1083__v9_l0,
};

const s32 anim_1084__v0_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2995E, 38,
    1, 0,

    -4,
};

const s32 anim_1084__v1_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29984, 46,
    1, 1,

    -4,
};

const s32 anim_1084__v2_l0[] = {
    -2, 725, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x299B2, 14,
    1, 2,

    -4,
};

const s32 anim_1084__v3_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x299C0, 10,
    1, 3,

    -4,
};

const s32 * const anim_1084[4] = {
    anim_1084__v0_l0,
    anim_1084__v1_l0,
    anim_1084__v2_l0,
    anim_1084__v3_l0,
};

const s32 anim_1085__v0_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x299CA, 57,
    1, 0,

    -4,
};

const s32 anim_1085__v1_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29A03, 46,
    1, 1,

    -4,
};

const s32 anim_1085__v2_l0[] = {
    -2, 725, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x29A31, 10,
    1, 2,

    -4,
};

const s32 anim_1085__v3_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29A3B, 14,
    1, 3,

    -4,
};

const s32 * const anim_1085[4] = {
    anim_1085__v0_l0,
    anim_1085__v1_l0,
    anim_1085__v2_l0,
    anim_1085__v3_l0,
};

const s32 anim_1086__v0_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29A49, 51,
    1, 0,

    -4,
};

const s32 anim_1086__v1_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29A7C, 72,
    1, 1,

    -4,
};

const s32 anim_1086__v2_l0[] = {
    -2, 725, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x29AC4, 10,
    1, 2,

    -4,
};

const s32 anim_1086__v3_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29ACE, 14,
    1, 3,

    -4,
};

const s32 * const anim_1086[4] = {
    anim_1086__v0_l0,
    anim_1086__v1_l0,
    anim_1086__v2_l0,
    anim_1086__v3_l0,
};

const s32 anim_1087__v0_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29ADC, 75,
    1, 0,

    -4,
};

const s32 anim_1087__v1_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29B27, 69,
    1, 1,

    -4,
};

const s32 anim_1087__v2_l0[] = {
    -2, 725, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x29B6C, 9,
    1, 2,

    -4,
};

const s32 anim_1087__v3_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29B75, 15,
    1, 3,

    -4,
};

const s32 * const anim_1087[4] = {
    anim_1087__v0_l0,
    anim_1087__v1_l0,
    anim_1087__v2_l0,
    anim_1087__v3_l0,
};

const s32 anim_1088__v0_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29B84, 72,
    1, 0,

    -4,
};

const s32 anim_1088__v1_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29BCC, 75,
    1, 1,

    -4,
};

const s32 anim_1088__v2_l0[] = {
    -2, 725, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x29C17, 6,
    1, 2,

    -4,
};

const s32 anim_1088__v3_l0[] = {
    -2, 724, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C1D, 10,
    1, 3,

    -4,
};

const s32 * const anim_1088[4] = {
    anim_1088__v0_l0,
    anim_1088__v1_l0,
    anim_1088__v2_l0,
    anim_1088__v3_l0,
};

const s32 anim_1089__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C27, 6,
    1, 0,

    -4,
};

const s32 anim_1089__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C2D, 10,
    1, 1,

    -4,
};

const s32 anim_1089__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C37, 10,
    1, 2,

    -4,
};

const s32 anim_1089__v3_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C41, 6,
    1, 3,

    -4,
};

const s32 anim_1089__v4_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C47, 8,
    1, 4,

    -4,
};

const s32 anim_1089__v5_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C4F, 8,
    1, 5,

    -4,
};

const s32 anim_1089__v6_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C57, 8,
    1, 6,

    -4,
};

const s32 * const anim_1089[7] = {
    anim_1089__v0_l0,
    anim_1089__v1_l0,
    anim_1089__v2_l0,
    anim_1089__v3_l0,
    anim_1089__v4_l0,
    anim_1089__v5_l0,
    anim_1089__v6_l0,
};

const s32 anim_1090__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C5F, 8,
    1, 0,

    -4,
};

const s32 anim_1090__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C67, 10,
    1, 1,

    -4,
};

const s32 anim_1090__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C71, 12,
    1, 2,

    -4,
};

const s32 * const anim_1090[3] = {
    anim_1090__v0_l0,
    anim_1090__v1_l0,
    anim_1090__v2_l0,
};

const s32 anim_1091__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C7D, 12,
    1, 0,

    -4,
};

const s32 anim_1091__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C89, 12,
    1, 1,

    -4,
};

const s32 anim_1091__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C95, 8,
    1, 2,

    -4,
};

const s32 * const anim_1091[3] = {
    anim_1091__v0_l0,
    anim_1091__v1_l0,
    anim_1091__v2_l0,
};

const s32 anim_1092__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29C9D, 12,
    1, 0,

    -4,
};

const s32 anim_1092__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29CA9, 12,
    1, 1,

    -4,
};

const s32 anim_1092__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29CB5, 10,
    1, 2,

    -4,
};

const s32 * const anim_1092[3] = {
    anim_1092__v0_l0,
    anim_1092__v1_l0,
    anim_1092__v2_l0,
};

const s32 anim_1093__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29CBF, 10,
    1, 0,

    -4,
};

const s32 anim_1093__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29CC9, 10,
    1, 1,

    -4,
};

const s32 anim_1093__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29CD3, 8,
    1, 2,

    -4,
};

const s32 * const anim_1093[3] = {
    anim_1093__v0_l0,
    anim_1093__v1_l0,
    anim_1093__v2_l0,
};

const s32 anim_1094__v0_l0[] = {
    -2, 726, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29CDB, 36,
    1, 0,

    -4,
};

const s32 anim_1094__v1_l0[] = {
    -2, 727, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x29CFF, 38,
    1, 1,

    -4,
};

const s32 anim_1094__v2_l0[] = {
    -2, 726, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29D25, 168,
    1, 2,

    -4,
};

const s32 anim_1094__v3_l0[] = {
    -2, 726, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29DCD, 168,
    1, 3,

    -4,
};

const s32 * const anim_1094[4] = {
    anim_1094__v0_l0,
    anim_1094__v1_l0,
    anim_1094__v2_l0,
    anim_1094__v3_l0,
};

const s32 anim_1095__v0_l0[] = {
    -2, 726, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29E75, 34,
    1, 0,

    -4,
};

const s32 anim_1095__v1_l0[] = {
    -2, 728, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x29E97, 28,
    1, 1,

    -4,
};

const s32 anim_1095__v2_l0[] = {
    -2, 726, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29EB3, 168,
    1, 2,

    -4,
};

const s32 anim_1095__v3_l0[] = {
    -2, 726, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x29F5B, 168,
    1, 3,

    -4,
};

const s32 * const anim_1095[4] = {
    anim_1095__v0_l0,
    anim_1095__v1_l0,
    anim_1095__v2_l0,
    anim_1095__v3_l0,
};

const s32 anim_1096__v0_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A003, 36,
    1, 0,

    -4,
};

const s32 anim_1096__v1_l0[] = {
    -2, 727, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2A027, 32,
    1, 1,

    -4,
};

const s32 anim_1096__v2_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A047, 168,
    1, 2,

    -4,
};

const s32 anim_1096__v3_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A0EF, 168,
    1, 3,

    -4,
};

const s32 * const anim_1096[4] = {
    anim_1096__v0_l0,
    anim_1096__v1_l0,
    anim_1096__v2_l0,
    anim_1096__v3_l0,
};

const s32 anim_1097__v0_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A197, 36,
    1, 0,

    -4,
};

const s32 anim_1097__v1_l0[] = {
    -2, 727, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2A1BB, 36,
    1, 1,

    -4,
};

const s32 anim_1097__v2_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A1DF, 168,
    1, 2,

    -4,
};

const s32 anim_1097__v3_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A287, 168,
    1, 3,

    -4,
};

const s32 * const anim_1097[4] = {
    anim_1097__v0_l0,
    anim_1097__v1_l0,
    anim_1097__v2_l0,
    anim_1097__v3_l0,
};

const s32 anim_1098__v0_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A32F, 36,
    1, 0,

    -4,
};

const s32 anim_1098__v1_l0[] = {
    -2, 727, (((u16)16 << 0) | ((u16)0x10 << 16)),
    -1, 0x2A353, 36,
    1, 1,

    -4,
};

const s32 anim_1098__v2_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A377, 168,
    1, 2,

    -4,
};

const s32 anim_1098__v3_l0[] = {
    -2, 729, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2A41F, 168,
    1, 3,

    -4,
};

const s32 * const anim_1098[4] = {
    anim_1098__v0_l0,
    anim_1098__v1_l0,
    anim_1098__v2_l0,
    anim_1098__v3_l0,
};

const s32 anim_1099__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4C7, 6,
    1, 0,

    -4,
};

const s32 anim_1099__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4CD, 6,
    1, 1,

    -4,
};

const s32 anim_1099__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4D3, 12,
    1, 2,

    -4,
};

const s32 anim_1099__v3_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4DF, 12,
    1, 3,

    -4,
};

const s32 * const anim_1099[4] = {
    anim_1099__v0_l0,
    anim_1099__v1_l0,
    anim_1099__v2_l0,
    anim_1099__v3_l0,
};

const s32 anim_1100__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4EB, 6,
    1, 0,

    -4,
};

const s32 anim_1100__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4F1, 10,
    1, 1,

    -4,
};

const s32 anim_1100__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2A4FB, 10,
    1, 2,

    -4,
};

const s32 * const anim_1100[3] = {
    anim_1100__v0_l0,
    anim_1100__v1_l0,
    anim_1100__v2_l0,
};

const s32 anim_1101__v0_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A505, 8,
    1, 0,

    -4,
};

const s32 anim_1101__v1_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A50D, 8,
    1, 1,

    -4,
};

const s32 anim_1101__v2_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A515, 12,
    1, 2,

    -4,
};

const s32 anim_1101__v3_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A521, 8,
    1, 3,

    -4,
};

const s32 anim_1101__v4_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A529, 8,
    1, 4,

    -4,
};

const s32 anim_1101__v5_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A531, 8,
    1, 5,

    -4,
};

const s32 anim_1101__v6_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A539, 8,
    1, 6,

    -4,
};

const s32 * const anim_1101[7] = {
    anim_1101__v0_l0,
    anim_1101__v1_l0,
    anim_1101__v2_l0,
    anim_1101__v3_l0,
    anim_1101__v4_l0,
    anim_1101__v5_l0,
    anim_1101__v6_l0,
};

const s32 anim_1102__v0_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A541, 8,
    1, 0,

    -4,
};

const s32 anim_1102__v1_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A549, 12,
    1, 1,

    -4,
};

const s32 anim_1102__v2_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A555, 12,
    1, 2,

    -4,
};

const s32 anim_1102__v3_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A561, 8,
    1, 3,

    -4,
};

const s32 anim_1102__v4_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A569, 8,
    1, 4,

    -4,
};

const s32 anim_1102__v5_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A571, 8,
    1, 5,

    -4,
};

const s32 anim_1102__v6_l0[] = {
    -2, 730, (((u16)16 << 0) | ((u16)0x90 << 16)),
    -1, 0x2A579, 8,
    1, 6,

    -4,
};

const s32 * const anim_1102[7] = {
    anim_1102__v0_l0,
    anim_1102__v1_l0,
    anim_1102__v2_l0,
    anim_1102__v3_l0,
    anim_1102__v4_l0,
    anim_1102__v5_l0,
    anim_1102__v6_l0,
};

const s32 anim_1103__v0_l0[] = {
    -2, 731, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A581, 48,
    3, 0,

    -1, 0x2A5B1, 48,
    3, 1,

    -1, 0x2A5E1, 48,
    3, 2,

    -1, 0x2A611, 48,
    3, 3,

    -1, 0x2A641, 48,
    3, 4,

    -1, 0x2A671, 48,
    3, 5,

    -1, 0x2A6A1, 42,
    3, 6,

    -1, 0x2A6CB, 49,
    3, 7,

    -1, 0x2A6FC, 56,
    3, 8,

    -1, 0x2A734, 56,
    3, 9,

    -1, 0x2A76C, 56,
    3, 10,

    -1, 0x2A7A4, 56,
    3, 11,

    -1, 0x2A7DC, 56,
    3, 12,

    -4,
};

const s32 anim_1103__v1_l0[] = {
    -2, 731, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A7A4, 56,
    3, 11,

    -1, 0x2A76C, 56,
    3, 10,

    -1, 0x2A814, 56,
    3, 13,

    -1, 0x2A76C, 56,
    3, 10,

    -1, 0x2A7A4, 56,
    3, 11,

    -1, 0x2A7DC, 56,
    3, 12,

    -3, 33,
};

const s32 * const anim_1103[2] = {
    anim_1103__v0_l0,
    anim_1103__v1_l0,
};

const s32 anim_1104__v0_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A84C, 48,
    1, 0,

    -4,
};

const s32 anim_1104__v1_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A87C, 48,
    1, 1,

    -4,
};

const s32 anim_1104__v2_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A8AC, 48,
    1, 2,

    -4,
};

const s32 anim_1104__v3_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A8DC, 48,
    3, 3,

    -1, 0x2A90C, 48,
    3, 4,

    -1, 0x2A93C, 48,
    3, 5,

    -1, 0x2A96C, 48,
    3, 6,

    -4,
};

const s32 anim_1104__v4_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A99C, 48,
    3, 7,

    -4,
};

const s32 anim_1104__v5_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2A9CC, 48,
    3, 8,

    -1, 0x2A9FC, 48,
    3, 9,

    -1, 0x2AA2C, 48,
    3, 10,

    -1, 0x2AA5C, 48,
    3, 11,

    -4,
};

const s32 anim_1104__v6_l0[] = {
    -2, 720, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2AA8C, 48,
    3, 12,

    -4,
};

const s32 * const anim_1104[7] = {
    anim_1104__v0_l0,
    anim_1104__v1_l0,
    anim_1104__v2_l0,
    anim_1104__v3_l0,
    anim_1104__v4_l0,
    anim_1104__v5_l0,
    anim_1104__v6_l0,
};

const s32 anim_1105__v0_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AABC, 4,
    1, 0,

    -4,
};

const s32 anim_1105__v1_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AAC0, 2,
    1, 1,

    -4,
};

const s32 anim_1105__v2_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AAC2, 4,
    1, 2,

    -4,
};

const s32 anim_1105__v3_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AAC6, 4,
    1, 3,

    -4,
};

const s32 anim_1105__v4_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AACA, 4,
    1, 4,

    -4,
};

const s32 anim_1105__v5_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AACE, 4,
    1, 5,

    -4,
};

const s32 anim_1105__v6_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AAD2, 4,
    1, 6,

    -4,
};

const s32 anim_1105__v7_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AAD6, 4,
    1, 7,

    -4,
};

const s32 anim_1105__v8_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AADA, 4,
    1, 8,

    -4,
};

const s32 anim_1105__v9_l0[] = {
    -2, 718, (((u16)16 << 0) | ((u16)0xA0 << 16)),
    -1, 0x2AADE, 4,
    1, 9,

    -4,
};

const s32 * const anim_1105[10] = {
    anim_1105__v0_l0,
    anim_1105__v1_l0,
    anim_1105__v2_l0,
    anim_1105__v3_l0,
    anim_1105__v4_l0,
    anim_1105__v5_l0,
    anim_1105__v6_l0,
    anim_1105__v7_l0,
    anim_1105__v8_l0,
    anim_1105__v9_l0,
};

const s32 anim_1106__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2AAE2, 46,
    1, 0,

    -4,
};

const s32 * const anim_1106[1] = {
    anim_1106__v0_l0,
};

const s32 anim_1107__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2AB10, 34,
    1, 0,

    -4,
};

const s32 * const anim_1107[1] = {
    anim_1107__v0_l0,
};

const s32 anim_1108__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2AB32, 46,
    1, 0,

    -4,
};

const s32 * const anim_1108[1] = {
    anim_1108__v0_l0,
};

const s32 anim_1109__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2AB60, 38,
    1, 0,

    -4,
};

const s32 * const anim_1109[1] = {
    anim_1109__v0_l0,
};

const s32 anim_1110__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2AB86, 30,
    1, 0,

    -4,
};

const s32 * const anim_1110[1] = {
    anim_1110__v0_l0,
};

const s32 anim_1111__v0_l0[] = {
    -2, 229, (((u16)16 << 0) | ((u16)0xB0 << 16)),
    -1, 0x2ABA4, 30,
    1, 0,

    -4,
};

const s32 * const anim_1111[1] = {
    anim_1111__v0_l0,
};

const s32 anim_1112__v0_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2ABC2, 18,
    1, 0,

    -4,
};

const s32 anim_1112__v1_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2ABD4, 18,
    1, 1,

    -4,
};

const s32 anim_1112__v2_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2ABE6, 18,
    1, 2,

    -4,
};

const s32 anim_1112__v3_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2ABF8, 18,
    1, 3,

    -4,
};

const s32 anim_1112__v4_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2AC0A, 18,
    1, 4,

    -4,
};

const s32 * const anim_1112[5] = {
    anim_1112__v0_l0,
    anim_1112__v1_l0,
    anim_1112__v2_l0,
    anim_1112__v3_l0,
    anim_1112__v4_l0,
};

const s32 anim_1113__v0_l0[] = {
    -2, 733, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x2AC1C, 84,
    1, 0,

    -4,
};

const s32 anim_1113__v1_l0[] = {
    -2, 733, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x2AC70, 84,
    1, 1,

    -4,
};

const s32 anim_1113__v2_l0[] = {
    -2, 733, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x2ACC4, 84,
    1, 2,

    -4,
};

const s32 anim_1113__v3_l0[] = {
    -2, 733, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x2AD18, 84,
    1, 3,

    -4,
};

const s32 anim_1113__v4_l0[] = {
    -2, 733, (((u16)16 << 0) | ((u16)0xC0 << 16)),
    -1, 0x2AD6C, 84,
    1, 4,

    -4,
};

const s32 * const anim_1113[5] = {
    anim_1113__v0_l0,
    anim_1113__v1_l0,
    anim_1113__v2_l0,
    anim_1113__v3_l0,
    anim_1113__v4_l0,
};

const s32 anim_1114__v0_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2ADC0, 9,
    1, 0,

    -4,
};

const s32 anim_1114__v1_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2ADC9, 9,
    1, 1,

    -4,
};

const s32 anim_1114__v2_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2ADD2, 9,
    1, 2,

    -4,
};

const s32 anim_1114__v3_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2ADDB, 9,
    1, 3,

    -4,
};

const s32 anim_1114__v4_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x80 << 16)),
    -1, 0x2ADE4, 9,
    1, 4,

    -4,
};

const s32 * const anim_1114[5] = {
    anim_1114__v0_l0,
    anim_1114__v1_l0,
    anim_1114__v2_l0,
    anim_1114__v3_l0,
    anim_1114__v4_l0,
};

const s32 anim_1115__v0_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2ADED, 36,
    1, 0,

    -4,
};

const s32 anim_1115__v1_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2ADED, 36,
    1, 0,

    -1, 0x2AE11, 36,
    1, 1,

    -1, 0x2AE35, 36,
    1, 2,

    -1, 0x2AE59, 36,
    1, 3,

    -1, 0x2AE7D, 36,
    1, 4,

    -1, 0x2AEA1, 36,
    1, 5,

    -1, 0x2AEC5, 36,
    1, 6,

    -1, 0x2AEE9, 30,
    1, 7,

    -1, 0x2AF07, 30,
    1, 8,

    -1, 0x2AF25, 30,
    1, 9,

    -1, 0x2AF43, 30,
    1, 10,

    -1, 0x2AF61, 30,
    1, 11,

    -1, 0x2AF7F, 25,
    1, 12,

    -1, 0x2AF98, 25,
    1, 13,

    -1, 0x2AFB1, 25,
    1, 14,

    -1, 0x2AFCA, 25,
    1, 15,

    -1, 0x2AFE3, 25,
    1, 16,

    -1, 0x2AFFC, 20,
    1, 17,

    -1, 0x2B010, 20,
    1, 18,

    -1, 0x2B024, 20,
    1, 19,

    -1, 0x2B038, 20,
    1, 20,

    -1, 0x2B04C, 20,
    1, 21,

    -1, 0x2B060, 25,
    1, 22,

    -1, 0x2B079, 25,
    1, 23,

    -1, 0x2B092, 25,
    1, 24,

    -1, 0x2B0AB, 25,
    1, 25,

    -1, 0x2B0C4, 25,
    1, 26,

    -1, 0x2B0DD, 30,
    1, 27,

    -1, 0x2B0FB, 30,
    1, 28,

    -1, 0x2B119, 30,
    1, 29,

    -1, 0x2B137, 30,
    1, 30,

    -1, 0x2B155, 30,
    1, 31,

    -1, 0x2B173, 36,
    1, 32,

    -1, 0x2B197, 36,
    1, 33,

    -1, 0x2B1BB, 36,
    1, 34,

    -1, 0x2B1DF, 36,
    1, 35,

    -1, 0x2B203, 36,
    1, 36,

    -1, 0x2B227, 36,
    1, 37,

    -3, 193,
};

const s32 * const anim_1115[2] = {
    anim_1115__v0_l0,
    anim_1115__v1_l0,
};

const s32 anim_1116__v0_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B24B, 64,
    1, 0,

    -4,
};

const s32 anim_1116__v1_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B28B, 64,
    1, 1,

    -4,
};

const s32 anim_1116__v2_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B2CB, 64,
    1, 2,

    -4,
};

const s32 anim_1116__v3_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B30B, 64,
    1, 3,

    -4,
};

const s32 anim_1116__v4_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B34B, 64,
    1, 4,

    -4,
};

const s32 anim_1116__v5_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B38B, 64,
    1, 5,

    -4,
};

const s32 anim_1116__v6_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B3CB, 64,
    1, 6,

    -4,
};

const s32 anim_1116__v7_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B40B, 64,
    1, 7,

    -4,
};

const s32 anim_1116__v8_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B44B, 64,
    1, 8,

    -4,
};

const s32 * const anim_1116[9] = {
    anim_1116__v0_l0,
    anim_1116__v1_l0,
    anim_1116__v2_l0,
    anim_1116__v3_l0,
    anim_1116__v4_l0,
    anim_1116__v5_l0,
    anim_1116__v6_l0,
    anim_1116__v7_l0,
    anim_1116__v8_l0,
};

const s32 anim_1117__v0_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B48B, 35,
    1, 0,

    -4,
};

const s32 anim_1117__v1_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B4AE, 20,
    1, 1,

    -4,
};

const s32 anim_1117__v2_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B4C2, 20,
    1, 2,

    -4,
};

const s32 anim_1117__v3_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B4D6, 35,
    1, 3,

    -4,
};

const s32 anim_1117__v4_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B4F9, 35,
    1, 4,

    -4,
};

const s32 anim_1117__v5_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B51C, 20,
    1, 5,

    -4,
};

const s32 anim_1117__v6_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B530, 20,
    1, 6,

    -4,
};

const s32 anim_1117__v7_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B544, 35,
    1, 7,

    -4,
};

const s32 anim_1117__v8_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B567, 35,
    1, 8,

    -4,
};

const s32 anim_1117__v9_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B58A, 20,
    1, 9,

    -4,
};

const s32 anim_1117__v10_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B59E, 20,
    1, 10,

    -3, 8,
};

const s32 anim_1117__v11_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B5B2, 35,
    1, 11,

    -4,
};

const s32 anim_1117__v12_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B5D5, 35,
    1, 12,

    -4,
};

const s32 anim_1117__v13_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B5F8, 20,
    1, 13,

    -4,
};

const s32 anim_1117__v14_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B60C, 20,
    1, 14,

    -4,
};

const s32 anim_1117__v15_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B620, 35,
    1, 15,

    -4,
};

const s32 anim_1117__v16_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B643, 35,
    1, 16,

    -4,
};

const s32 anim_1117__v17_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B666, 20,
    1, 17,

    -4,
};

const s32 anim_1117__v18_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B67A, 20,
    1, 18,

    -4,
};

const s32 anim_1117__v19_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B68E, 35,
    1, 19,

    -3, 8,
};

const s32 anim_1117__v20_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B6B1, 35,
    1, 20,

    -4,
};

const s32 anim_1117__v21_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B6D4, 20,
    1, 21,

    -4,
};

const s32 anim_1117__v22_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B6E8, 20,
    1, 22,

    -4,
};

const s32 anim_1117__v23_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B6FC, 35,
    1, 23,

    -4,
};

const s32 anim_1117__v24_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B71F, 35,
    1, 24,

    -4,
};

const s32 anim_1117__v25_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B742, 20,
    1, 25,

    -4,
};

const s32 anim_1117__v26_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B756, 20,
    1, 26,

    -4,
};

const s32 anim_1117__v27_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B76A, 35,
    1, 27,

    -4,
};

const s32 anim_1117__v28_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B78D, 25,
    1, 28,

    -4,
};

const s32 anim_1117__v29_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    1, -1,

    -4,
};

const s32 anim_1117__v30_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    1, -1,

    -4,
};

const s32 anim_1117__v31_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    1, -1,

    -4,
};

const s32 anim_1117__v32_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B7A6, 35,
    1, 29,

    -4,
};

const s32 anim_1117__v33_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B7C9, 20,
    1, 30,

    -4,
};

const s32 anim_1117__v34_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B7DD, 20,
    1, 31,

    -4,
};

const s32 anim_1117__v35_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B7F1, 35,
    1, 32,

    -4,
};

const s32 anim_1117__v36_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B814, 35,
    1, 33,

    -4,
};

const s32 anim_1117__v37_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B837, 20,
    1, 34,

    -4,
};

const s32 anim_1117__v38_l0[] = {
    -2, 734, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B84B, 20,
    1, 35,

    -4,
};

const s32 anim_1117__v39_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B85F, 35,
    1, 36,

    -4,
};

const s32 * const anim_1117[40] = {
    anim_1117__v0_l0,
    anim_1117__v1_l0,
    anim_1117__v2_l0,
    anim_1117__v3_l0,
    anim_1117__v4_l0,
    anim_1117__v5_l0,
    anim_1117__v6_l0,
    anim_1117__v7_l0,
    anim_1117__v8_l0,
    anim_1117__v9_l0,
    anim_1117__v10_l0,
    anim_1117__v11_l0,
    anim_1117__v12_l0,
    anim_1117__v13_l0,
    anim_1117__v14_l0,
    anim_1117__v15_l0,
    anim_1117__v16_l0,
    anim_1117__v17_l0,
    anim_1117__v18_l0,
    anim_1117__v19_l0,
    anim_1117__v20_l0,
    anim_1117__v21_l0,
    anim_1117__v22_l0,
    anim_1117__v23_l0,
    anim_1117__v24_l0,
    anim_1117__v25_l0,
    anim_1117__v26_l0,
    anim_1117__v27_l0,
    anim_1117__v28_l0,
    anim_1117__v29_l0,
    anim_1117__v30_l0,
    anim_1117__v31_l0,
    anim_1117__v32_l0,
    anim_1117__v33_l0,
    anim_1117__v34_l0,
    anim_1117__v35_l0,
    anim_1117__v36_l0,
    anim_1117__v37_l0,
    anim_1117__v38_l0,
    anim_1117__v39_l0,
};

const s32 anim_1118__v0_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B882, 9,
    1, 0,

    -4,
};

const s32 anim_1118__v1_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B88B, 9,
    1, 1,

    -4,
};

const s32 anim_1118__v2_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B894, 9,
    1, 2,

    -4,
};

const s32 anim_1118__v3_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B89D, 9,
    1, 3,

    -4,
};

const s32 anim_1118__v4_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B8A6, 9,
    1, 4,

    -4,
};

const s32 anim_1118__v5_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B8AF, 9,
    1, 5,

    -4,
};

const s32 anim_1118__v6_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B8B8, 9,
    1, 6,

    -4,
};

const s32 anim_1118__v7_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B8C1, 9,
    1, 7,

    -4,
};

const s32 anim_1118__v8_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B8CA, 9,
    1, 8,

    -4,
};

const s32 anim_1118__v9_l0[] = {
    -2, 732, (((u16)16 << 0) | ((u16)0xF0 << 16)),
    -1, 0x2B8D3, 9,
    1, 9,

    -4,
};

const s32 * const anim_1118[10] = {
    anim_1118__v0_l0,
    anim_1118__v1_l0,
    anim_1118__v2_l0,
    anim_1118__v3_l0,
    anim_1118__v4_l0,
    anim_1118__v5_l0,
    anim_1118__v6_l0,
    anim_1118__v7_l0,
    anim_1118__v8_l0,
    anim_1118__v9_l0,
};

const s32 anim_1119__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    1, -1,

    -4,
};

const s32 anim_1119__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8DC, 2,
    1, 0,

    -4,
};

const s32 anim_1119__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8DE, 1,
    1, 1,

    -4,
};

const s32 anim_1119__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8DF, 2,
    1, 2,

    -4,
};

const s32 anim_1119__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8E1, 2,
    1, 3,

    -4,
};

const s32 anim_1119__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8E3, 2,
    1, 4,

    -4,
};

const s32 anim_1119__v6_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8E5, 2,
    1, 5,

    -4,
};

const s32 anim_1119__v7_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8E7, 1,
    1, 6,

    -4,
};

const s32 anim_1119__v8_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8E8, 2,
    1, 7,

    -4,
};

const s32 anim_1119__v9_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8EA, 2,
    1, 8,

    -4,
};

const s32 anim_1119__v10_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8EC, 2,
    1, 9,

    -4,
};

const s32 anim_1119__v11_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8EE, 2,
    1, 10,

    -4,
};

const s32 anim_1119__v12_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F0, 1,
    1, 11,

    -4,
};

const s32 anim_1119__v13_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F1, 1,
    1, 12,

    -4,
};

const s32 anim_1119__v14_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F2, 1,
    1, 13,

    -4,
};

const s32 anim_1119__v15_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F3, 2,
    1, 14,

    -4,
};

const s32 anim_1119__v16_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F5, 2,
    1, 15,

    -4,
};

const s32 anim_1119__v17_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F7, 2,
    1, 16,

    -4,
};

const s32 anim_1119__v18_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8F9, 2,
    1, 17,

    -4,
};

const s32 anim_1119__v19_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8FB, 2,
    1, 18,

    -4,
};

const s32 anim_1119__v20_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8FD, 2,
    1, 19,

    -4,
};

const s32 anim_1119__v21_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B8FF, 2,
    1, 20,

    -4,
};

const s32 anim_1119__v22_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B901, 2,
    1, 21,

    -4,
};

const s32 anim_1119__v23_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B903, 2,
    1, 22,

    -4,
};

const s32 anim_1119__v24_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B905, 2,
    1, 23,

    -4,
};

const s32 anim_1119__v25_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B907, 2,
    1, 24,

    -4,
};

const s32 anim_1119__v26_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B909, 2,
    1, 25,

    -4,
};

const s32 anim_1119__v27_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B90B, 2,
    1, 26,

    -4,
};

const s32 anim_1119__v28_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B90D, 2,
    1, 27,

    -4,
};

const s32 anim_1119__v29_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B90F, 2,
    1, 28,

    -4,
};

const s32 anim_1119__v30_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B911, 2,
    1, 29,

    -4,
};

const s32 anim_1119__v31_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B913, 2,
    1, 30,

    -4,
};

const s32 anim_1119__v32_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B915, 2,
    1, 31,

    -4,
};

const s32 anim_1119__v33_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B917, 2,
    1, 32,

    -4,
};

const s32 anim_1119__v34_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B919, 2,
    1, 33,

    -4,
};

const s32 anim_1119__v35_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B91B, 2,
    1, 34,

    -4,
};

const s32 anim_1119__v36_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B91D, 2,
    -6, 0, (((0 & 0xFF) << 0) | ((-1 & 0xFF) << 8) | ((0 & 0xFF) << 16) | ((-1 & 0xFF) << 24)),
    1, 35,

    -4,
};

const s32 anim_1119__v37_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B91F, 2,
    1, 36,

    -4,
};

const s32 anim_1119__v38_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B921, 2,
    1, 37,

    -4,
};

const s32 anim_1119__v39_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B923, 2,
    1, 38,

    -4,
};

const s32 anim_1119__v40_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B925, 2,
    1, 39,

    -4,
};

const s32 anim_1119__v41_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B927, 2,
    1, 40,

    -4,
};

const s32 anim_1119__v42_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B929, 2,
    1, 41,

    -4,
};

const s32 anim_1119__v43_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B92B, 2,
    1, 42,

    -4,
};

const s32 anim_1119__v44_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B92D, 2,
    1, 43,

    -4,
};

const s32 anim_1119__v45_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B92F, 2,
    1, 44,

    -4,
};

const s32 anim_1119__v46_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B931, 2,
    1, 45,

    -4,
};

const s32 anim_1119__v47_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B933, 2,
    1, 46,

    -4,
};

const s32 anim_1119__v48_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B935, 2,
    1, 47,

    -4,
};

const s32 anim_1119__v49_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B937, 2,
    1, 48,

    -4,
};

const s32 anim_1119__v50_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B939, 2,
    1, 49,

    -4,
};

const s32 anim_1119__v51_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B93B, 2,
    1, 50,

    -4,
};

const s32 anim_1119__v52_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B93D, 2,
    1, 51,

    -4,
};

const s32 anim_1119__v53_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B93F, 2,
    1, 52,

    -4,
};

const s32 anim_1119__v54_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B941, 2,
    1, 53,

    -4,
};

const s32 anim_1119__v55_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B943, 2,
    1, 54,

    -4,
};

const s32 anim_1119__v56_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B945, 2,
    1, 55,

    -4,
};

const s32 anim_1119__v57_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B947, 2,
    1, 56,

    -4,
};

const s32 anim_1119__v58_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B949, 2,
    1, 57,

    -4,
};

const s32 anim_1119__v59_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B94B, 2,
    1, 58,

    -4,
};

const s32 anim_1119__v60_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B94D, 2,
    1, 59,

    -4,
};

const s32 anim_1119__v61_l0[] = {
    -1, 0x2B94F, 2,
    1, 60,

    -3, 5,
};

const s32 anim_1119__v62_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B951, 1,
    1, 61,

    -4,
};

const s32 anim_1119__v63_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B952, 1,
    1, 62,

    -4,
};

const s32 anim_1119__v64_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B953, 1,
    1, 63,

    -4,
};

const s32 anim_1119__v65_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B954, 1,
    1, 64,

    -4,
};

const s32 anim_1119__v66_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B955, 1,
    1, 65,

    -4,
};

const s32 anim_1119__v67_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B956, 1,
    1, 66,

    -4,
};

const s32 anim_1119__v68_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B957, 1,
    1, 67,

    -4,
};

const s32 anim_1119__v69_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B958, 1,
    1, 68,

    -4,
};

const s32 anim_1119__v70_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B959, 1,
    1, 69,

    -4,
};

const s32 anim_1119__v71_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B95A, 2,
    1, 70,

    -4,
};

const s32 anim_1119__v72_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B95C, 1,
    1, 71,

    -4,
};

const s32 anim_1119__v73_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B95D, 1,
    1, 72,

    -4,
};

const s32 anim_1119__v74_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B95E, 2,
    1, 73,

    -4,
};

const s32 anim_1119__v75_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B960, 1,
    -6, 0, (((21 & 0xFF) << 0) | ((13 & 0xFF) << 8) | ((21 & 0xFF) << 16) | ((13 & 0xFF) << 24)),
    1, 74,

    -4,
};

const s32 anim_1119__v76_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B961, 1,
    1, 75,

    -4,
};

const s32 anim_1119__v77_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B962, 1,
    1, 76,

    -4,
};

const s32 anim_1119__v78_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B963, 1,
    1, 77,

    -4,
};

const s32 anim_1119__v79_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B964, 1,
    1, 78,

    -4,
};

const s32 anim_1119__v80_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B965, 2,
    1, 79,

    -4,
};

const s32 anim_1119__v81_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B967, 2,
    1, 80,

    -4,
};

const s32 anim_1119__v82_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B969, 1,
    1, 81,

    -4,
};

const s32 anim_1119__v83_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B96A, 1,
    1, 82,

    -4,
};

const s32 anim_1119__v84_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B96B, 1,
    1, 83,

    -4,
};

const s32 anim_1119__v85_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B96C, 1,
    1, 84,

    -4,
};

const s32 anim_1119__v86_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B96D, 1,
    1, 85,

    -4,
};

const s32 anim_1119__v87_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B96E, 1,
    1, 86,

    -4,
};

const s32 anim_1119__v88_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B96F, 1,
    1, 87,

    -4,
};

const s32 anim_1119__v89_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B970, 2,
    1, 88,

    -4,
};

const s32 anim_1119__v90_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B972, 1,
    1, 89,

    -4,
};

const s32 anim_1119__v91_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B973, 2,
    1, 90,

    -4,
};

const s32 anim_1119__v92_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B975, 2,
    1, 91,

    -4,
};

const s32 anim_1119__v93_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B977, 2,
    1, 92,

    -4,
};

const s32 anim_1119__v94_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B979, 1,
    1, 93,

    -4,
};

const s32 * const anim_1119[95] = {
    anim_1119__v0_l0,
    anim_1119__v1_l0,
    anim_1119__v2_l0,
    anim_1119__v3_l0,
    anim_1119__v4_l0,
    anim_1119__v5_l0,
    anim_1119__v6_l0,
    anim_1119__v7_l0,
    anim_1119__v8_l0,
    anim_1119__v9_l0,
    anim_1119__v10_l0,
    anim_1119__v11_l0,
    anim_1119__v12_l0,
    anim_1119__v13_l0,
    anim_1119__v14_l0,
    anim_1119__v15_l0,
    anim_1119__v16_l0,
    anim_1119__v17_l0,
    anim_1119__v18_l0,
    anim_1119__v19_l0,
    anim_1119__v20_l0,
    anim_1119__v21_l0,
    anim_1119__v22_l0,
    anim_1119__v23_l0,
    anim_1119__v24_l0,
    anim_1119__v25_l0,
    anim_1119__v26_l0,
    anim_1119__v27_l0,
    anim_1119__v28_l0,
    anim_1119__v29_l0,
    anim_1119__v30_l0,
    anim_1119__v31_l0,
    anim_1119__v32_l0,
    anim_1119__v33_l0,
    anim_1119__v34_l0,
    anim_1119__v35_l0,
    anim_1119__v36_l0,
    anim_1119__v37_l0,
    anim_1119__v38_l0,
    anim_1119__v39_l0,
    anim_1119__v40_l0,
    anim_1119__v41_l0,
    anim_1119__v42_l0,
    anim_1119__v43_l0,
    anim_1119__v44_l0,
    anim_1119__v45_l0,
    anim_1119__v46_l0,
    anim_1119__v47_l0,
    anim_1119__v48_l0,
    anim_1119__v49_l0,
    anim_1119__v50_l0,
    anim_1119__v51_l0,
    anim_1119__v52_l0,
    anim_1119__v53_l0,
    anim_1119__v54_l0,
    anim_1119__v55_l0,
    anim_1119__v56_l0,
    anim_1119__v57_l0,
    anim_1119__v58_l0,
    anim_1119__v59_l0,
    anim_1119__v60_l0,
    anim_1119__v61_l0,
    anim_1119__v62_l0,
    anim_1119__v63_l0,
    anim_1119__v64_l0,
    anim_1119__v65_l0,
    anim_1119__v66_l0,
    anim_1119__v67_l0,
    anim_1119__v68_l0,
    anim_1119__v69_l0,
    anim_1119__v70_l0,
    anim_1119__v71_l0,
    anim_1119__v72_l0,
    anim_1119__v73_l0,
    anim_1119__v74_l0,
    anim_1119__v75_l0,
    anim_1119__v76_l0,
    anim_1119__v77_l0,
    anim_1119__v78_l0,
    anim_1119__v79_l0,
    anim_1119__v80_l0,
    anim_1119__v81_l0,
    anim_1119__v82_l0,
    anim_1119__v83_l0,
    anim_1119__v84_l0,
    anim_1119__v85_l0,
    anim_1119__v86_l0,
    anim_1119__v87_l0,
    anim_1119__v88_l0,
    anim_1119__v89_l0,
    anim_1119__v90_l0,
    anim_1119__v91_l0,
    anim_1119__v92_l0,
    anim_1119__v93_l0,
    anim_1119__v94_l0,
};

const s32 anim_1120__v0_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2B97A, 4,
    1, 0,

    -4,
};

const s32 * const anim_1120[1] = {
    anim_1120__v0_l0,
};

const s32 anim_1121__v0_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2B97E, 24,
    1, 0,

    -4,
};

const s32 anim_1121__v1_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2B996, 24,
    1, 1,

    -4,
};

const s32 anim_1121__v2_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2B9AE, 27,
    1, 2,

    -4,
};

const s32 anim_1121__v3_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2B9C9, 18,
    1, 3,

    -4,
};

const s32 anim_1121__v4_l0[] = {
    -2, 172, (((u16)16 << 0) | ((u16)0x30 << 16)),
    -1, 0x2B9DB, 27,
    1, 4,

    -4,
};

const s32 * const anim_1121[5] = {
    anim_1121__v0_l0,
    anim_1121__v1_l0,
    anim_1121__v2_l0,
    anim_1121__v3_l0,
    anim_1121__v4_l0,
};

const s32 anim_1122__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2B9F6, 28,
    1, 0,

    -4,
};

const s32 anim_1122__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA12, 36,
    1, 1,

    -4,
};

const s32 * const anim_1122[2] = {
    anim_1122__v0_l0,
    anim_1122__v1_l0,
};

const s32 anim_1123__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA36, 14,
    1, 0,

    -4,
};

const s32 anim_1123__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA44, 14,
    1, 1,

    -4,
};

const s32 anim_1123__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA52, 16,
    1, 2,

    -4,
};

const s32 anim_1123__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA62, 16,
    1, 3,

    -4,
};

const s32 anim_1123__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA72, 18,
    1, 4,

    -4,
};

const s32 anim_1123__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA84, 18,
    1, 5,

    -4,
};

const s32 anim_1123__v6_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BA96, 18,
    1, 6,

    -4,
};

const s32 anim_1123__v7_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BAA8, 18,
    1, 7,

    -4,
};

const s32 anim_1123__v8_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BABA, 18,
    1, 8,

    -4,
};

const s32 anim_1123__v9_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BACC, 18,
    1, 9,

    -4,
};

const s32 anim_1123__v10_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BADE, 18,
    1, 10,

    -4,
};

const s32 * const anim_1123[11] = {
    anim_1123__v0_l0,
    anim_1123__v1_l0,
    anim_1123__v2_l0,
    anim_1123__v3_l0,
    anim_1123__v4_l0,
    anim_1123__v5_l0,
    anim_1123__v6_l0,
    anim_1123__v7_l0,
    anim_1123__v8_l0,
    anim_1123__v9_l0,
    anim_1123__v10_l0,
};

const s32 anim_1124__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BAF0, 26,
    1, 0,

    -4,
};

const s32 anim_1124__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB0A, 26,
    1, 1,

    -4,
};

const s32 anim_1124__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB24, 26,
    1, 2,

    -4,
};

const s32 * const anim_1124[3] = {
    anim_1124__v0_l0,
    anim_1124__v1_l0,
    anim_1124__v2_l0,
};

const s32 anim_1125__v0_l0[] = {
    -2, 0, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2BB3E, 4,
    1, 0,

    -4,
};

const s32 anim_1125__v1_l0[] = {
    -2, 9, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2BB42, 4,
    -6, 0, (((2 & 0xFF) << 0) | ((0 & 0xFF) << 8) | ((2 & 0xFF) << 16) | ((0 & 0xFF) << 24)),
    1, 1,

    -4,
};

const s32 anim_1125__v2_l0[] = {
    -2, 22, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2BB46, 4,
    1, 2,

    -4,
};

const s32 anim_1125__v3_l0[] = {
    -2, 7, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2BB4A, 4,
    1, 3,

    -4,
};

const s32 anim_1125__v4_l0[] = {
    -2, 159, (((u16)16 << 0) | ((u16)0x0 << 16)),
    -1, 0x2BB4E, 4,
    1, 4,

    -4,
};

const s32 * const anim_1125[5] = {
    anim_1125__v0_l0,
    anim_1125__v1_l0,
    anim_1125__v2_l0,
    anim_1125__v3_l0,
    anim_1125__v4_l0,
};

const s32 anim_1126__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB52, 32,
    1, 0,

    -4,
};

const s32 * const anim_1126[1] = {
    anim_1126__v0_l0,
};

const s32 anim_1127__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB72, 4,
    1, 0,

    -4,
};

const s32 anim_1127__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB76, 4,
    1, 1,

    -4,
};

const s32 anim_1127__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB7A, 4,
    1, 2,

    -4,
};

const s32 anim_1127__v3_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB7E, 4,
    1, 3,

    -4,
};

const s32 anim_1127__v4_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB82, 4,
    1, 4,

    -4,
};

const s32 anim_1127__v5_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB86, 4,
    1, 5,

    -4,
};

const s32 anim_1127__v6_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB8A, 4,
    1, 6,

    -4,
};

const s32 anim_1127__v7_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB8E, 4,
    1, 7,

    -4,
};

const s32 anim_1127__v8_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB92, 4,
    1, 8,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB96, 4,
    1, 9,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB9A, 4,
    1, 10,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BB9E, 4,
    1, 11,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBA2, 4,
    1, 12,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBA6, 4,
    1, 13,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBAA, 4,
    1, 14,

    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBAE, 4,
    1, 15,

    -3, 64,
};

const s32 * const anim_1127[9] = {
    anim_1127__v0_l0,
    anim_1127__v1_l0,
    anim_1127__v2_l0,
    anim_1127__v3_l0,
    anim_1127__v4_l0,
    anim_1127__v5_l0,
    anim_1127__v6_l0,
    anim_1127__v7_l0,
    anim_1127__v8_l0,
};

const s32 anim_1128__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBB2, 1,
    119, 0,

    -1, 0x2BBB3, 1,
    4, 1,

    -1, 0x2BBB4, 1,
    4, 2,

    -1, 0x2BBB5, 1,
    4, 3,

    -1, 0x2BBB6, 1,
    4, 4,

    -1, 0x2BBB2, 1,
    119, 0,

    -3, 33,
};

const s32 * const anim_1128[1] = {
    anim_1128__v0_l0,
};

const s32 anim_1129__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBB7, 4,
    1, 0,

    -4,
};

const s32 anim_1129__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBBB, 4,
    1, 1,

    -4,
};

const s32 anim_1129__v2_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBBF, 4,
    1, 2,

    -4,
};

const s32 * const anim_1129[3] = {
    anim_1129__v0_l0,
    anim_1129__v1_l0,
    anim_1129__v2_l0,
};

const s32 anim_1130__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BBC3, 64,
    1, 0,

    -4,
};

const s32 anim_1130__v1_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BC03, 64,
    1, 1,

    -4,
};

const s32 * const anim_1130[2] = {
    anim_1130__v0_l0,
    anim_1130__v1_l0,
};

const s32 anim_1131__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BC43, 48,
    1, 0,

    -4,
};

const s32 * const anim_1131[1] = {
    anim_1131__v0_l0,
};

const s32 anim_1132__v0_l0[] = {
    -2, 163, (((u16)16 << 0) | ((u16)0x60 << 16)),
    -1, 0x2BC73, 48,
    1, 0,

    -4,
};

const s32 * const anim_1132[1] = {
    anim_1132__v0_l0,
};



const s32 anim_logos_variant_0[] = {
    -2, 735, (((u16)16 << 0) | ((u16)0 << 16)),
    -1, 0x2BCA3, 64,
    1, 0,

    -4,
};

const s32 anim_logos_variant_1[] = {
    -2, 736, (((u16)16 << 0) | ((u16)0 << 16)),
    -1, 0x2BCE3, 64,
    1, 0,

    -4,
};

const s32 * const anim_logos[2] = {
    anim_logos_variant_0,
    anim_logos_variant_1,
};
