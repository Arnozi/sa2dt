# 0 "src/game/options_screen.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/options_screen.c"
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
# 2 "src/game/options_screen.c" 2
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


# 1 "include/global.h" 1
# 9 "include/core.h" 2
# 1 "include/sprite.h" 1




# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"

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
# 3 "src/game/options_screen.c" 2
# 1 "include/game/options_screen.h" 1




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
# 6 "include/game/options_screen.h" 2
# 1 "include/sprite.h" 1
# 7 "include/game/options_screen.h" 2
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
# 8 "include/game/options_screen.h" 2
# 1 "include/constants/text.h" 1
# 9 "include/game/options_screen.h" 2
# 23 "include/game/options_screen.h"
struct OptionsScreenProfileData {

    u16 playerName[6];

    struct TimeRecords timeRecords;
    struct MultiplayerScore multiplayerScores[10];

    u8 multiplayerWins;
    u8 multiplayerLoses;
    u8 multiplayerDraws;

    struct ButtonConfig buttonConfig;
};


struct OptionsScreen {

    struct OptionsScreenProfileData profileData;

    u8 unusedUnk358;
    u8 difficultyLevel;
    u8 timeLimitDisabled;


    u8 language;

    bool8 soundTestUnlocked;

    u8 bossTimeAttackUnlocked;
    u8 unk35E;

    s16 subMenuXPos;
    s16 unk362;
    Background background;
    Background subMenuBackground;
    Sprite title;
    Sprite menuItems[8];

    Sprite metaItems[4];

    Sprite playerNameDisplay[6];
    ScreenFade unk774;
    s8 menuCursor;
    s8 prevCursorPosition;
    s8 initialSubMenuCursorPosition;
    s8 subMenuAnimFrame;
    s8 state;
};

extern void *gProfileScreenNextVramAddress;
extern void *gProfileScreenSubMenuNextVramAddress;

extern const u16 gUnknown_080D95A4[16];
extern const u16 gUnknown_080D95C4[2];
extern const u16 gUnknown_080D95C8[5];

extern const u16 gUnknown_080D95D2[2];
extern const u16 gUnknown_080D95D6[4][2];
# 90 "include/game/options_screen.h"
void CreateOptionsScreen(u16);
void CreateTimeAttackLevelSelectScreen(bool16 isBossView, s16 selectedCharacter, s8 currentLevel);
void CreateNewProfileScreen(void);
void CreateNewProfileNameScreen(s16 mode);

void sub_806A568(Sprite *obj, s8 target, u32 size, u16 c, u32 assetId, s16 xPos, s16 yPos, u16 oamOrder, u8 variant, u8 palId);
void OptionsInitBackground(Background *unk2400, u32 a, u32 b, u8 tilemapId, u16 d, u16 e, u16 f, u8 g, u16 scrollX, u16 scrollY);
# 4 "src/game/options_screen.c" 2
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
# 5 "src/game/options_screen.c" 2
# 1 "include/task.h" 1
# 6 "src/game/options_screen.c" 2

# 1 "include/malloc_ewram.h" 1





struct EwramNode {
              struct EwramNode *next;
              s32 state;


              u8 space[0];
};

void EwramInitHeap(void);
void *EwramMalloc(u32);
void EwramFree(void *);
# 8 "src/game/options_screen.c" 2
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
# 9 "src/game/options_screen.c" 2


# 1 "include/constants/songs.h" 1
# 12 "src/game/options_screen.c" 2
# 1 "include/constants/text.h" 1
# 13 "src/game/options_screen.c" 2
# 1 "include/game/title_screen.h" 1
# 9 "include/game/title_screen.h"
extern const TileInfo gPressStartTiles[];

void CreateTitleScreen(void);
void CreateTitleScreenAndSkipIntro(void);

void CreateTitleScreenAtPlayModeMenu(void);

void CreateTitleScreenAtSinglePlayerMenu(void);
# 14 "src/game/options_screen.c" 2
# 1 "include/game/sound_test.h" 1






void CreateSoundTestScreen(struct OptionsScreen *);
# 15 "src/game/options_screen.c" 2
# 1 "include/game/stage/stage.h" 1







void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 16 "src/game/options_screen.c" 2
# 1 "include/game/stage/ui.h" 1
# 11 "include/game/stage/ui.h"
extern const u8 gSecondsTable[60][2];
extern const u8 gMillisUnpackTable[60][2];

extern struct Task *gStageUITask;

struct Task *CreateStageUI(void);
extern void StageUI_PrintIntegerAt(u32 value, s16 x, s16 y, u8 palId);
# 17 "src/game/options_screen.c" 2
# 1 "include/game/multiplayer/mode_select.h" 1





void CreateMultiplayerModeSelectScreen(void);
# 18 "src/game/options_screen.c" 2
# 1 "include/game/character_select.h" 1






void CreateCharacterSelectionScreen(u8 selectedCharacter, bool8 allUnlocked);
# 19 "src/game/options_screen.c" 2

# 1 "include/constants/tilemaps.h" 1
# 21 "src/game/options_screen.c" 2



struct TimeRecordDisplay {
    Sprite deliminators[2];
    Sprite minute;
    Sprite seconds[2];
    Sprite millis[2];
};

struct TimeRecordsScreen {
    ScreenFade fade;
    Background coursesViewBackground;
    Sprite choiceViewItemsOrZoneTitle[2];
    Sprite actTitle[2];
    Sprite choiceViewTitleOrZoneSubtitle;
    Sprite choiceViewScrollArrows[4];

    struct PlayerDataMenu *playerDataMenu;

    struct TimeRecords *timeRecords;

    Background coursesViewCharacterBackground;
    Background coursesViewCharacter;
    Sprite timeRecordDisplays[3];
    struct TimeRecordDisplay timeDisplays[3];

    u8 character;

    u8 zone;
    u8 act;

    u8 animFrame;
    bool8 unusedUnk708;
    u8 availableCharacters;
    u8 unlockedCourses[NUM_CHARACTERS];
    u8 language;

    bool8 isBossMode;

    u8 view;
};

struct LanguageScreen {
    Sprite headerFooter[2];
    Sprite languageOptions[6];
    Sprite optionOutline;
    Background unk1B0;
    ScreenFade unk1F0;

    struct OptionsScreen *optionsScreen;

    s8 menuCursor;

    bool8 creatingNewProfile;
};

struct NameInputDisplay {
    Sprite displayCursor;
    Sprite characterDisplay[6];

    u16 unk150;
    u16 cursor;

    u16 buffer[6];
};

struct ProfileNameScreen {
    Sprite title;
    Sprite controls[3];
    Background background;
    Background charMatrixBackground;

    ScreenFade fade;
    struct PlayerDataMenu *playerDataMenu;

    Sprite focusedCell[2];
    Sprite scrollArrows[2];
    Background charMatrix;
    u16 matrixPageIndex;

    s8 cursorCol;
    s8 cursorRow;

    u8 filler254[4];

    struct NameInputDisplay nameInput;

    u16 matrixCursorIndex;
    u8 language;
    u8 onCompleteAction;
};

struct PlayerDataMenu {
    Sprite headerFooter[2];
    Sprite menuItems[4];
    Sprite menuItemOutline;

    ScreenFade unk150;

    struct OptionsScreen *optionsScreen;
    s8 menuCursor;
    s8 animFrame;

    s8 language;

    s8 state;
};

struct SwitchMenu {
    struct OptionsScreen *optionsScreen;
    Sprite headerFooter[2];
    Sprite options[2];
    Sprite switchValueOutline;
    s8 switchValue;
    s8 animFrame;
    s8 language;
};

struct ButtonConfigMenu {
    struct OptionsScreen *optionsScreen;
    Sprite staticElements[6];
    Sprite buttonActions[3];
    Sprite scrollArrows[2];
    Sprite controlFocus;
    u8 aButtonAction;
    u8 bButtonAction;
    u8 rShoulderAction;
    u8 focus;
    s8 animFrame;
    s8 language;
};

struct DeleteScreen {
    Sprite headerFooter[2];
    Sprite options[2];
    Sprite optionOutline;
    Background background;
    ScreenFade unk130;
    struct OptionsScreen *optionsScreen;
    s8 confirmationCursor;
    bool8 unusedUnk141;
    s8 language;
    s8 deleteConfirmed;
};

struct MultiplayerRecordRow {
    u16 playerName[6];

    bool8 slotFilled;
    u8 wins;
    u8 loses;
    u8 draws;
    Sprite nameDisplay[6];
    Sprite winsDigits[2];
    Sprite losesDigits[2];
    Sprite defeatsDigits[2];
};

struct MultiplayerRecordsTable {
    struct MultiplayerRecordRow rows[10];
};

struct MultiplayerRecordsScreen {
    ScreenFade fade;

    Background backgroundTrims;
    Background background;

    Sprite title;
    Sprite columnHeaders;
    Sprite scrollArrows[2];
    Sprite playerNameDisplay[6];
    Sprite playerWinsDigits[2];
    Sprite playerLossesDigits[2];
    Sprite playerDrawsDigits[2];

    struct PlayerDataMenu *playerDataMenu;

    struct MultiplayerRecordsTable *table;
    u8 scrollAnimFrame;
    u8 playerWins;
    u8 playerLoses;
    u8 playerDraws;

    u16 playerName[6];

    u8 targetFirstVisibleRowIndex;
    u8 currentFirstVisibleRowIndex;
    u8 scrollIndex;

    u8 language;
};

struct UNK_080D95E8 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
};

struct UNK_806B908 {
    u32 unk0;
    u16 unk4;
    u16 unk6;
};


void *gProfileScreenNextVramAddress = 
# 228 "src/game/options_screen.c" 3 4
                                     ((void *)0)
# 228 "src/game/options_screen.c"
                                         ;
void *gProfileScreenSubMenuNextVramAddress = 
# 229 "src/game/options_screen.c" 3 4
                                            ((void *)0)
# 229 "src/game/options_screen.c"
                                                ;

static void Task_OptionsScreenShow(void);
static void OptionsScreenTaskDestroyHandler(struct Task *);

static void ReadProfileData(struct OptionsScreen *);

static void Task_TimeRecordsScreenCreateTimesUI(void);
static void TimeRecordsScreenInitRegisters(void);
static void TimeRecordsScreenCreateCoursesViewBackgroundsUI(struct TimeRecordsScreen *);
static void TimeRecordsScreenCreateCoursesViewUI(struct TimeRecordsScreen *);

static void Task_LanguageScreenFadeIn(void);
static void LanguageScreenInitRegisters(struct LanguageScreen *);
static void LanguageScreenCreateBackgroundsUI(struct LanguageScreen *);
static void LanguageScreenCreateUI(struct LanguageScreen *);

static void Task_ProfileNameScreenFadeIn(void);
static void ProfileNameScreenInitRegisters(s16);
static void ProfileNameScreenCreateUIBackgrounds(struct ProfileNameScreen *);
static void ProfileNameScreenCreateUIText(struct ProfileNameScreen *);
static void ProfileNameScreenCreateUIContextElements(struct ProfileNameScreen *);
static void ProfileNameScreenCreateInputDisplayUI(struct ProfileNameScreen *);

static void OptionsScreenRenderUI(void);
static void OptionsScreenShowSoundTestScreen(void);
static void OptionsScreenShowLanguageScreen(void);
static void OptionsScreenShowDeleteScreen(void);
static void OptionsScreenHandleExit(void);
static void OptionsScreenOpenSelectedSubMenu(void);
static void Task_OptionsScreenMenuCursorMoveAnim(void);

static void Task_OptionsScreenWaitForSubMenuExit(void);
static void Task_OptionsScreenFadeInFromLanguageScreen(void);
static void Task_OptionsScreenFadeInFromSoundTest(void);
static void Task_OptionsScreenFadeInFromDeleteScreen(void);

static void Task_PlayerDataMenuOpenAnimWait(void);
static void PlayerDataMenuCreateUI(struct PlayerDataMenu *);

static void PlayerDataMenuRenderUI(void);
static void Task_PlayerDataMenuMain(void);

static void PlayerDataMenuShowTimeRecordsScreen(void);
static void PlayerDataMenuShowProfileNameScreen(void);
static void PlayerDataMenuShowMultiplayerRecordsScreen(void);
static void Task_PlayerDataMenuCloseAnim(void);

static void Task_PlayerDataMenuFadeInFromProfileNameScreen(void);
static void CreateTimeRecordsScreen(struct PlayerDataMenu *);
static void CreateTimeRecordsScreenAtCoursesView(struct PlayerDataMenu *);
static void Task_PlayerDataMenuWaitForTimeRecordsScreenExit(void);

static void Task_PlayerDataMenuFadeInFromTimeRecordsScreen(void);
static void Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen(void);
static void DifficultyMenuRenderUI(void);
static void Task_DifficultyMenuMain(void);

static void Task_DifficultyMenuCloseAnim(void);
static void TimeLimitMenuRenderUI(void);
static void Task_TimeLimitMenuMain(void);

static void Task_TimeLimitMenuCloseAnim(void);
static void Task_ButtonConfigMenuOpenAnimWait(void);
static void ButtonConfigMenuCreateUI(struct ButtonConfigMenu *);
static void ButtonConfigMenuRenderUI(void);
static void Task_ButtonConfigMenuAButtonMain(void);
static void Task_ButtonConfigMenuHandleAButtonComplete(void);
static void Task_ButtonMenuConfigCloseAnim(void);
static void ButtonConfigMenuStartOver(void);
static void Task_ButtonConfigMenuHandleBButtonComplete(void);
static void Task_ButtonConfigMenuHandleStartOver(void);

static void ReseedRng(void);
static void LanguageScreenHandleLanguageChanged(void);
static void LanguageScreenRenderUI(void);
static void LanguageScreenHandleExit(void);

static void Task_DeleteScreenFadeIn(void);
static void DeleteScreenInitRegisters(struct DeleteScreen *);
static void DeleteScreenCreateBackgroundsUI(struct DeleteScreen *);
static void DeleteScreenCreateUI(struct DeleteScreen *);
static void DeleteScreenRenderUI(void);
static void Task_DeleteScreenCreateAbsoluteConfirmation(void);
static void Task_DeleteScreenHandleExit(void);

static void Task_DeleteScreenAbsoluteConfirmMain(void);

static void ProfileNameScreenRenderUI(void);
static bool16 ProfileNameScreenHandleShoulderInput(void);
static bool16 ProfileNameScreenHandleDpadInput(void);
static u16 sub_806A664(s16, u16);
static void ProfileNameScreenInputComplete(void);
static void ProfileNameScreenFadeOutAndExit(void);

static void Task_TimeRecordsScreenChoiceViewFadeIn(void);
static void TimeRecordScreenInitRegisters(void);
static void TimeRecordsScreenCreateChoiceViewBackgroundsUI(struct TimeRecordsScreen *);
static void TimeRecordsScreenCreateChoiceViewUI(struct TimeRecordsScreen *);

static void TimeRecordsScreenRenderModeChoiceUI(void);
static void TimeRecordsScreenShowCoursesView(void);
static void TimeRecordsScreenHandleExit(void);

static void TimeRecordsScreenRenderCoursesViewUI(u16);
static void Task_TimeRecordsScreenCharacterChangeAnimIn(void);

static void Task_TimeRecordsScreenCourseChangeAnim(void);

static void TimeRecordsScreenRenderTimeRowAnimFrame(s16, s16);
static void Task_TimeRecordsScreenCoursesViewMain(void);
static void Task_TimeRecordsScreenHandleCourseChange(void);
static void Task_TimeRecordsScreenHandleActChange(void);
static void Task_TimeRecordsScreenHandleCourseSelected(void);
static void Task_TimeRecordsScreenCharacterChangeAnimOut(void);
static void TimeRecordsScreenHandleReturn(void);

static void Task_MultiplayerRecordsScreenCreateNextTableRowUI(void);
static void MultiplayerRecordsScreenInitRegisters(void);
static void MultiplayerRecordsScreenCreateBackgroundsUI(struct MultiplayerRecordsScreen *);
static void MultiplayerRecordsScreenCreatePlayerRowUI(struct MultiplayerRecordsScreen *);

static void Task_MultiplayerRecordsScreenScrollAnim(void);
static void MultiplayerRecordsScreenRenderUI(void);
static void Task_MultiplayerRecordsScreenHandleExit(void);

static void Task_OptionScreenFadeIn(void);
static void SetupOptionScreenBackgroundsUI(struct OptionsScreen *);

static void CreateDifficultyMenu(struct OptionsScreen *);
static void CreateTimeLimitMenu(struct OptionsScreen *);

static void Task_OptionsScreenFadeOutToLanguageScreen(void);
static void CreateEditLanguageScreen(struct OptionsScreen *);
static void Task_OptionScreenFadeOutToSoundTest(void);
static void Task_OptionsScreenFadeOutToDeleteScreen(void);
static void Task_PlayerDataMenuFadeOutToProfileNameScreen(void);
static void Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen(void);
static void Task_OptionsScreenFadeOutAndExit(void);

static void Task_LanguageScreenFadeOutAndExit(void);
static void Task_TimeRecordsScreenFadeOutAndExit(void);
static void TimeRecordsScreenFadeOutToCoursesView(void);
static void TimeRecordsScreenCreateCoursesView(struct TimeRecordsScreen *);
static void Task_TimeRecordsScreenCoursesViewFadeIn(void);
static void Task_TimeRecordsScreenFadeOutToSelectedCourse(void);
static void Task_MultiplayerRecordsScreenFadeIn(void);
static void Task_MultiplayerRecordsScreenFadeOutAndExit(void);

static s32 MaxSpriteSize(const struct UNK_080D95E8 *, s8);
static struct UNK_806B908 sub_806B908(u16);
static bool16 sub_806B9C8(u16);
static bool16 sub_806BA14(s16, u16);
static bool16 sub_806B988(u16 *);
# 475 "src/game/options_screen.c"
static const s8 sMenuCursorMoveAnims[2][8] = {
    [0] = { 8, 4, 1, -1, -2, -1, 1, 0 },
    [1] = { 1, 2, 5, 7, 8, 8, 8, 8 },
};

static const s16 sSubMenuOpenAnim[16] = {
    -16, -41, -66, -91, -116, -141, -166, -186, -201, -216, -228, -219, -210, -214, -217, -216,
};

static const s16 sSubMenuCloseAnim[16] = {
    -216, -201, -186, -171, -156, -141, -126, -111, -96, -81, -66, -51, -36, -21, -6, 0,
};

static const u16 sTimeRecordsCharacterAssets[NUM_CHARACTERS][2] = {
    [CHARACTER_SONIC]
    = { [0] = 140, [1] = 141 },
    [CHARACTER_CREAM]
    = { [0] = 148, [1] = 149 },
    [CHARACTER_TAILS]
    = { [0] = 142, [1] = 143 },
    [CHARACTER_KNUCKLES]
    = { [0] = 144, [1] = 145 },
    [CHARACTER_AMY] = { [0] = 146, [1] = 147 },
};

const u16 gUnknown_080D95A4[] = {
    17, 19, 39, 41, 61, 63, 75, 76, 77, 109, 142, 174, 175, 208, 241, 65535,
};

const u16 gUnknown_080D95C4[] = {
    55,
    65535,
};

const u16 gUnknown_080D95C8[] = {
    11, 22, 33, 55, 65535,
};

const u16 gUnknown_080D95D2[] = {
    55,
    262,
};

const u16 gUnknown_080D95D6[4][2] = {
    { 11, 242 },
    { 22, 247 },
    { 33, 252 },
    { 55, 257 },
};

static const u16 sUnused = 0;

const struct UNK_080D95E8 sOptionsScreenTitleText[6] = {
    [(1 - 1)] = { .unk0 = 956, .unk2 = 8, .unk4 = 39 },
    [(2 - 1)] = { .unk0 = 975, .unk2 = 8, .unk4 = 26 },
    [(3 - 1)] = { .unk0 = 976, .unk2 = 8, .unk4 = 30 },
    [(4 - 1)] = { .unk0 = 977, .unk2 = 8, .unk4 = 24,},
    [(5 - 1)] = { .unk0 = 978, .unk2 = 8, .unk4 = 30 },
    [(6 - 1)] = { .unk0 = 979, .unk2 = 8, .unk4 = 24 },
};
const struct UNK_080D95E8 sOptionsScreenMenuItemsText[6][8] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 956, .unk2 = 0, .unk4 = 50 },
        [1] = { .unk0 = 956, .unk2 = 1, .unk4 = 50 },
        [2] = { .unk0 = 956, .unk2 = 2, .unk4 = 50 },
        [3] = { .unk0 = 956, .unk2 = 3, .unk4 = 50 },
        [4] = { .unk0 = 956, .unk2 = 4, .unk4 = 50 },
        [5] = { .unk0 = 956, .unk2 = 6, .unk4 = 50 },
        [6] = { .unk0 = 956, .unk2 = 5, .unk4 = 50 },
        [7] = { .unk0 = 956, .unk2 = 7, .unk4 = 50 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 975, .unk2 = 0, .unk4 = 50 },
        [1] = { .unk0 = 975, .unk2 = 1, .unk4 = 50 },
        [2] = { .unk0 = 975, .unk2 = 2, .unk4 = 50 },
        [3] = { .unk0 = 975, .unk2 = 3, .unk4 = 50 },
        [4] = { .unk0 = 975, .unk2 = 4, .unk4 = 50 },
        [5] = { .unk0 = 975, .unk2 = 6, .unk4 = 50 },
        [6] = { .unk0 = 975, .unk2 = 5, .unk4 = 50 },
        [7] = { .unk0 = 975, .unk2 = 7, .unk4 = 50 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 976, .unk2 = 0, .unk4 = 50 },
        [1] = { .unk0 = 976, .unk2 = 1, .unk4 = 50 },
        [2] = { .unk0 = 976, .unk2 = 2, .unk4 = 50 },
        [3] = { .unk0 = 976, .unk2 = 3, .unk4 = 50 },
        [4] = { .unk0 = 976, .unk2 = 4, .unk4 = 50 },
        [5] = { .unk0 = 976, .unk2 = 6, .unk4 = 50 },
        [6] = { .unk0 = 976, .unk2 = 5, .unk4 = 50 },
        [7] = { .unk0 = 976, .unk2 = 7, .unk4 = 50 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 977, .unk2 = 0, .unk4 = 50 },
        [1] = { .unk0 = 977, .unk2 = 1, .unk4 = 50 },
        [2] = { .unk0 = 977, .unk2 = 2, .unk4 = 50 },
        [3] = { .unk0 = 977, .unk2 = 3, .unk4 = 50 },
        [4] = { .unk0 = 977, .unk2 = 4, .unk4 = 50 },
        [5] = { .unk0 = 977, .unk2 = 6, .unk4 = 50 },
        [6] = { .unk0 = 977, .unk2 = 5, .unk4 = 50 },
        [7] = { .unk0 = 977, .unk2 = 7, .unk4 = 50 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 978, .unk2 = 0, .unk4 = 50 },
        [1] = { .unk0 = 978, .unk2 = 1, .unk4 = 50 },
        [2] = { .unk0 = 978, .unk2 = 2, .unk4 = 50 },
        [3] = { .unk0 = 978, .unk2 = 3, .unk4 = 50 },
        [4] = { .unk0 = 978, .unk2 = 4, .unk4 = 50 },
        [5] = { .unk0 = 978, .unk2 = 6, .unk4 = 50 },
        [6] = { .unk0 = 978, .unk2 = 5, .unk4 = 50 },
        [7] = { .unk0 = 978, .unk2 = 7, .unk4 = 50 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 979, .unk2 = 0, .unk4 = 50 },
        [1] = { .unk0 = 979, .unk2 = 1, .unk4 = 50 },
        [2] = { .unk0 = 979, .unk2 = 2, .unk4 = 50 },
        [3] = { .unk0 = 979, .unk2 = 3, .unk4 = 50 },
        [4] = { .unk0 = 979, .unk2 = 4, .unk4 = 50 },
        [5] = { .unk0 = 979, .unk2 = 6, .unk4 = 50 },
        [6] = { .unk0 = 979, .unk2 = 5, .unk4 = 50 },
        [7] = { .unk0 = 979, .unk2 = 7, .unk4 = 50 },
    },
};

const struct UNK_080D95E8 sDifficultyLevelSwitchText[6][2] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 952, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 952, .unk2 = 1, .unk4 = 16 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 990, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 990, .unk2 = 1, .unk4 = 16 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 991, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 991, .unk2 = 1, .unk4 = 16 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 992, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 992, .unk2 = 1, .unk4 = 16 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 993, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 993, .unk2 = 1, .unk4 = 16 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 994, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 994, .unk2 = 1, .unk4 = 16 },
    },
};

const struct UNK_080D95E8 sTimeLimitMenuSwitchText[6][2] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 960, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 960, .unk2 = 1, .unk4 = 16 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 1020, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 1020, .unk2 = 1, .unk4 = 16 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 1021, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 1021, .unk2 = 1, .unk4 = 16 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 1022, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 1022, .unk2 = 1, .unk4 = 16 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 1023, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 1023, .unk2 = 1, .unk4 = 16 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 1024, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 1024, .unk2 = 1, .unk4 = 16 },
    },
};

const struct UNK_080D95E8 sOptionsScreenSelectedLanguageText[6] = {
    [(1 - 1)] = { .unk0 = 953, .unk2 = 7, .unk4 = 16 },
    [(2 - 1)] = { .unk0 = 953, .unk2 = 8, .unk4 = 16 },
    [(3 - 1)] = { .unk0 = 953, .unk2 = 9, .unk4 = 16 },
    [(4 - 1)] = { .unk0 = 953, .unk2 = 10, .unk4 = 16 },
    [(5 - 1)] = { .unk0 = 953, .unk2 = 11, .unk4 = 16 },
    [(6 - 1)] = { .unk0 = 953, .unk2 = 12, .unk4 = 16 },
};

const struct UNK_080D95E8 sDifficultyMenuTitleText[6] = {
    [(1 - 1)] = { .unk0 = 952, .unk2 = 2, .unk4 = 42 },
    [(2 - 1)] = { .unk0 = 990, .unk2 = 2, .unk4 = 28 },
    [(3 - 1)] = { .unk0 = 991, .unk2 = 2, .unk4 = 50 },
    [(4 - 1)] = { .unk0 = 992, .unk2 = 2, .unk4 = 28 },
    [(5 - 1)] = { .unk0 = 993, .unk2 = 2, .unk4 = 28 },
    [(6 - 1)] = { .unk0 = 994, .unk2 = 2, .unk4 = 45 },
};
const struct UNK_080D95E8 sDifficultyMenuControlsText[6] = {
    [(1 - 1)] = { .unk0 = 958, .unk2 = 0, .unk4 = 28 },
    [(2 - 1)] = { .unk0 = 1010, .unk2 = 0, .unk4 = 22 },



    [(3 - 1)] = { .unk0 = 1011, .unk2 = 0, .unk4 = 26 },

    [(4 - 1)] = { .unk0 = 1012, .unk2 = 0, .unk4 = 26 },
    [(5 - 1)] = { .unk0 = 1013, .unk2 = 0, .unk4 = 26 },
    [(6 - 1)] = { .unk0 = 1014, .unk2 = 0, .unk4 = 28 },
};

const struct UNK_080D95E8 sTimeLimitMenuTitleText[6] = {
    [(1 - 1)] = { .unk0 = 960, .unk2 = 2, .unk4 = 42 },
    [(2 - 1)] = { .unk0 = 1020, .unk2 = 2, .unk4 = 26 },
    [(3 - 1)] = { .unk0 = 1021, .unk2 = 2, .unk4 = 24 },
    [(4 - 1)] = { .unk0 = 1022, .unk2 = 2, .unk4 = 38 },
    [(5 - 1)] = { .unk0 = 1023, .unk2 = 2, .unk4 = 40 },
    [(6 - 1)] = { .unk0 = 1024, .unk2 = 2, .unk4 = 36 },
};
const struct UNK_080D95E8 sTimeLimitMenuControlsText[6] = {
    [(1 - 1)] = { .unk0 = 958, .unk2 = 0, .unk4 = 28 },
    [(2 - 1)] = { .unk0 = 1010, .unk2 = 0, .unk4 = 22 },



    [(3 - 1)] = { .unk0 = 1011, .unk2 = 0, .unk4 = 26 },

    [(4 - 1)] = { .unk0 = 1012, .unk2 = 0, .unk4 = 26 },
    [(5 - 1)] = { .unk0 = 1013, .unk2 = 0, .unk4 = 26 },
    [(6 - 1)] = { .unk0 = 1014, .unk2 = 0, .unk4 = 28 },
};

const struct UNK_080D95E8 sButtonConfigTitleAndControlsText[6][3] = {
    [(1 - 1)] = {
        { .unk0 = 950, .unk2 = 3, .unk4 = 51 },
        { .unk0 = 958, .unk2 = 0, .unk4 = 28 },
        { .unk0 = 950, .unk2 = 10, .unk4 = 14 },
    },
    [(2 - 1)] = {
        { .unk0 = 980, .unk2 = 3, .unk4 = 38 },
        { .unk0 = 1010, .unk2 = 0, .unk4 = 22 },
        { .unk0 = 980, .unk2 = 4, .unk4 = 17 },
    },
    [(3 - 1)] = {
        { .unk0 = 981, .unk2 = 3, .unk4 = 38 },



        { .unk0 = 1011, .unk2 = 0, .unk4 = 26 },

        { .unk0 = 981, .unk2 = 4, .unk4 = 17 },
    },
    [(4 - 1)] = {
        { .unk0 = 982, .unk2 = 3, .unk4 = 44 },
        { .unk0 = 1012, .unk2 = 0, .unk4 = 26 },



        { .unk0 = 982, .unk2 = 4, .unk4 = 17 },

    },
    [(5 - 1)] = {
        { .unk0 = 983, .unk2 = 3, .unk4 = 40 },
        { .unk0 = 1013, .unk2 = 0, .unk4 = 26 },
        { .unk0 = 983, .unk2 = 4, .unk4 = 21 },
    },
    [(6 - 1)] = {
        { .unk0 = 984, .unk2 = 3, .unk4 = 46 },
        { .unk0 = 1014, .unk2 = 0, .unk4 = 28 },
        { .unk0 = 984, .unk2 = 4, .unk4 = 15 },
    },
};
const struct UNK_080D95E8 sButtonConfigButtonIcons[] = {
    [0] = { .unk0 = 950, .unk2 = 4, .unk4 = 12 },
    [1] = { .unk0 = 950, .unk2 = 5, .unk4 = 12 },
    [2] = { .unk0 = 950, .unk2 = 6, .unk4 = 12 },
};
const struct UNK_080D95E8 sButtonConfigActionsText[6][3] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 950, .unk2 = 0, .unk4 = 18 },
        [1] = { .unk0 = 950, .unk2 = 1, .unk4 = 18 },
        [2] = { .unk0 = 950, .unk2 = 2, .unk4 = 18 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 980, .unk2 = 0, .unk4 = 18 },
        [1] = { .unk0 = 980, .unk2 = 1, .unk4 = 18 },
        [2] = { .unk0 = 980, .unk2 = 2, .unk4 = 18 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 981, .unk2 = 0, .unk4 = 18 },
        [1] = { .unk0 = 981, .unk2 = 1, .unk4 = 18 },
        [2] = { .unk0 = 981, .unk2 = 2, .unk4 = 18 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 982, .unk2 = 0, .unk4 = 18 },
        [1] = { .unk0 = 982, .unk2 = 1, .unk4 = 18 },
        [2] = { .unk0 = 982, .unk2 = 2, .unk4 = 18 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 983, .unk2 = 0, .unk4 = 18 },
        [1] = { .unk0 = 983, .unk2 = 1, .unk4 = 18 },
        [2] = { .unk0 = 983, .unk2 = 2, .unk4 = 18 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 984, .unk2 = 0, .unk4 = 18 },
        [1] = { .unk0 = 984, .unk2 = 1, .unk4 = 18 },
        [2] = { .unk0 = 984, .unk2 = 2, .unk4 = 18 },
    },
};

const struct UNK_080D95E8 sLanguageScreenTitles[6] = {
    [(1 - 1)] = { .unk0 = 953, .unk2 = 6, .unk4 = 45 },
    [(2 - 1)] = { .unk0 = 995, .unk2 = 0, .unk4 = 50 },
    [(3 - 1)] = { .unk0 = 996, .unk2 = 0, .unk4 = 46 },
    [(4 - 1)] = { .unk0 = 997, .unk2 = 0, .unk4 = 60 },
    [(5 - 1)] = { .unk0 = 998, .unk2 = 0, .unk4 = 38 },
    [(6 - 1)] = { .unk0 = 999, .unk2 = 0, .unk4 = 46 },
};
const struct UNK_080D95E8 sLanguageScreenEditControlsText[6] = {
    [(1 - 1)] = { .unk0 = 958, .unk2 = 0, .unk4 = 28 },
    [(2 - 1)] = { .unk0 = 1010, .unk2 = 0, .unk4 = 22 },



    [(3 - 1)] = { .unk0 = 1011, .unk2 = 0, .unk4 = 26 },

    [(4 - 1)] = { .unk0 = 1012, .unk2 = 0, .unk4 = 26 },
    [(5 - 1)] = { .unk0 = 1013, .unk2 = 0, .unk4 = 26 },
    [(6 - 1)] = { .unk0 = 1014, .unk2 = 0, .unk4 = 28 },
};
const struct UNK_080D95E8 sLanguageScreenNewControlsText[6] = {



    [(1 - 1)] = { .unk0 = 953, .unk2 = 13, .unk4 = 26 },

    [(2 - 1)] = { .unk0 = 995, .unk2 = 1, .unk4 = 20 },
    [(3 - 1)] = { .unk0 = 995, .unk2 = 1, .unk4 = 20 },
    [(4 - 1)] = { .unk0 = 995, .unk2 = 1, .unk4 = 20 },
    [(5 - 1)] = { .unk0 = 995, .unk2 = 1, .unk4 = 20 },
    [(6 - 1)] = { .unk0 = 995, .unk2 = 1, .unk4 = 20 },
};
const struct UNK_080D95E8 sLanguageScreenOptionsText[6] = {
    [(1 - 1)] = { .unk0 = 953, .unk2 = 0, .unk4 = 40 },
    [(2 - 1)] = { .unk0 = 953, .unk2 = 1, .unk4 = 40 },
    [(3 - 1)] = { .unk0 = 953, .unk2 = 2, .unk4 = 40 },
    [(4 - 1)] = { .unk0 = 953, .unk2 = 3, .unk4 = 40 },
    [(5 - 1)] = { .unk0 = 953, .unk2 = 4, .unk4 = 40 },
    [(6 - 1)] = { .unk0 = 953, .unk2 = 5, .unk4 = 40 },
};

const struct UNK_080D95E8 sDeleteScreenConfirmTitleText[6] = {
    [(1 - 1)] = { .unk0 = 951, .unk2 = 2, .unk4 = 54 },
    [(2 - 1)] = { .unk0 = 985, .unk2 = 2, .unk4 = 46 },
    [(3 - 1)] = { .unk0 = 986, .unk2 = 2, .unk4 = 48 },
    [(4 - 1)] = { .unk0 = 987, .unk2 = 2, .unk4 = 80 },
    [(5 - 1)] = { .unk0 = 988, .unk2 = 2, .unk4 = 68 },
    [(6 - 1)] = { .unk0 = 989, .unk2 = 2, .unk4 = 60 },
};
const struct UNK_080D95E8 sDeleteScreenAbsoluteConfirmTitleText[6] = {
    [(1 - 1)] = { .unk0 = 951, .unk2 = 3, .unk4 = 39 },
    [(2 - 1)] = { .unk0 = 985, .unk2 = 3, .unk4 = 38 },
    [(3 - 1)] = { .unk0 = 986, .unk2 = 3, .unk4 = 44 },
    [(4 - 1)] = { .unk0 = 987, .unk2 = 3, .unk4 = 42 },
    [(5 - 1)] = { .unk0 = 988, .unk2 = 3, .unk4 = 63 },
    [(6 - 1)] = { .unk0 = 989, .unk2 = 3, .unk4 = 22 },
};
const struct UNK_080D95E8 sDeleteScreenControlsText[6] = {
    [(1 - 1)] = { .unk0 = 958, .unk2 = 0, .unk4 = 28 },
    [(2 - 1)] = { .unk0 = 1010, .unk2 = 0, .unk4 = 22 },



    [(3 - 1)] = { .unk0 = 1011, .unk2 = 0, .unk4 = 26 },

    [(4 - 1)] = { .unk0 = 1012, .unk2 = 0, .unk4 = 26 },
    [(5 - 1)] = { .unk0 = 1013, .unk2 = 0, .unk4 = 26 },
    [(6 - 1)] = { .unk0 = 1014, .unk2 = 0, .unk4 = 28 },
};
const struct UNK_080D95E8 sDeleteScreenOptionsText[6][2] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 951, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 951, .unk2 = 1, .unk4 = 16 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 985, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 985, .unk2 = 1, .unk4 = 16 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 986, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 986, .unk2 = 1, .unk4 = 16 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 987, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 987, .unk2 = 1, .unk4 = 16 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 988, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 988, .unk2 = 1, .unk4 = 16 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 989, .unk2 = 0, .unk4 = 16 },
        [1] = { .unk0 = 989, .unk2 = 1, .unk4 = 16 },
    },
};

const struct UNK_080D95E8 sPlayerDataMenuTitleText[6] = {
    [(1 - 1)] = { .unk0 = 957, .unk2 = 4, .unk4 = 51 },
    [(2 - 1)] = { .unk0 = 1005, .unk2 = 4, .unk4 = 34 },
    [(3 - 1)] = { .unk0 = 1006, .unk2 = 4, .unk4 = 38 },
    [(4 - 1)] = { .unk0 = 1007, .unk2 = 4, .unk4 = 28 },
    [(5 - 1)] = { .unk0 = 1008, .unk2 = 4, .unk4 = 30 },
    [(6 - 1)] = { .unk0 = 1009, .unk2 = 4, .unk4 = 28 },
};
const struct UNK_080D95E8 sPlayerDataMenuControlsText[6] = {
    [(1 - 1)] = { .unk0 = 958, .unk2 = 0, .unk4 = 28 },
    [(2 - 1)] = { .unk0 = 1010, .unk2 = 0, .unk4 = 22 },



    [(3 - 1)] = { .unk0 = 1011, .unk2 = 0, .unk4 = 26 },

    [(4 - 1)] = { .unk0 = 1012, .unk2 = 0, .unk4 = 26 },
    [(5 - 1)] = { .unk0 = 1013, .unk2 = 0, .unk4 = 26 },
    [(6 - 1)] = { .unk0 = 1014, .unk2 = 0, .unk4 = 28 },
};

const struct UNK_080D95E8 sPlayerDataMenuItemsText[6][4] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 957, .unk2 = 0, .unk4 = 40 },
        [1] = { .unk0 = 957, .unk2 = 1, .unk4 = 40 },
        [2] = { .unk0 = 957, .unk2 = 2, .unk4 = 40 },
        [3] = { .unk0 = 957, .unk2 = 3, .unk4 = 40 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 1005, .unk2 = 0, .unk4 = 40 },
        [1] = { .unk0 = 1005, .unk2 = 1, .unk4 = 40 },
        [2] = { .unk0 = 1005, .unk2 = 2, .unk4 = 40 },
        [3] = { .unk0 = 1005, .unk2 = 3, .unk4 = 40 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 1006, .unk2 = 0, .unk4 = 40 },
        [1] = { .unk0 = 1006, .unk2 = 1, .unk4 = 40 },
        [2] = { .unk0 = 1006, .unk2 = 2, .unk4 = 40 },
        [3] = { .unk0 = 1006, .unk2 = 3, .unk4 = 40 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 1007, .unk2 = 0, .unk4 = 40 },
        [1] = { .unk0 = 1007, .unk2 = 1, .unk4 = 40 },
        [2] = { .unk0 = 1007, .unk2 = 2, .unk4 = 40 },
        [3] = { .unk0 = 1007, .unk2 = 3, .unk4 = 40 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 1008, .unk2 = 0, .unk4 = 40 },
        [1] = { .unk0 = 1008, .unk2 = 1, .unk4 = 40 },
        [2] = { .unk0 = 1008, .unk2 = 2, .unk4 = 40 },
        [3] = { .unk0 = 1008, .unk2 = 3, .unk4 = 40 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 1009, .unk2 = 0, .unk4 = 40 },
        [1] = { .unk0 = 1009, .unk2 = 1, .unk4 = 40 },
        [2] = { .unk0 = 1009, .unk2 = 2, .unk4 = 40 },
        [3] = { .unk0 = 1009, .unk2 = 3, .unk4 = 40 },
    },
};

const struct UNK_080D95E8 sProfileNameScreenNewTitleText[6] = {
    [(1 - 1)] = { .unk0 = 954, .unk2 = 2, .unk4 = 48 },
    [(2 - 1)] = { .unk0 = 1000, .unk2 = 1, .unk4 = 24 },
    [(3 - 1)] = { .unk0 = 1001, .unk2 = 1, .unk4 = 28 },
    [(4 - 1)] = { .unk0 = 1002, .unk2 = 1, .unk4 = 30 },
    [(5 - 1)] = { .unk0 = 1003, .unk2 = 1, .unk4 = 20 },
    [(6 - 1)] = { .unk0 = 1004, .unk2 = 1, .unk4 = 26 },
};
const struct UNK_080D95E8 sProfileNameScreenEditTitleText[6] = {
    [(1 - 1)] = { .unk0 = 954, .unk2 = 1, .unk4 = 48 },
    [(2 - 1)] = { .unk0 = 1000, .unk2 = 0, .unk4 = 32 },
    [(3 - 1)] = { .unk0 = 1001, .unk2 = 0, .unk4 = 28 },
    [(4 - 1)] = { .unk0 = 1002, .unk2 = 0, .unk4 = 34 },
    [(5 - 1)] = { .unk0 = 1003, .unk2 = 0, .unk4 = 20 },
    [(6 - 1)] = { .unk0 = 1004, .unk2 = 0, .unk4 = 32 },
};
const struct UNK_080D95E8 sProfileNameScreenArrowTiles[2] = {
    { .unk0 = 954, .unk2 = 4, .unk4 = 3 },
    { .unk0 = 954, .unk2 = 3, .unk4 = 3 },
};
const struct UNK_080D95E8 sProfileNameScreenEndButtonText[6] = {
    [(1 - 1)] = { .unk0 = 954, .unk2 = 5, .unk4 = 8 },
    [(2 - 1)] = { .unk0 = 954, .unk2 = 5, .unk4 = 8 },
    [(3 - 1)] = { .unk0 = 954, .unk2 = 5, .unk4 = 8 },
    [(4 - 1)] = { .unk0 = 954, .unk2 = 5, .unk4 = 8 },
    [(5 - 1)] = { .unk0 = 954, .unk2 = 5, .unk4 = 8 },
    [(6 - 1)] = { .unk0 = 954, .unk2 = 5, .unk4 = 8 },
};

const struct UNK_080D95E8 sProfileNameScreenScrollArrowTiles[2] = {
    { .unk0 = 962, .unk2 = 0, .unk4 = 2 },
    { .unk0 = 962, .unk2 = 1, .unk4 = 2 },
};

const struct UNK_080D95E8 sMultiplayerRecordsTitleAndColumnHeadersText[6][2] = {
    [(1 - 1)] = {
        { .unk0 = 961, .unk2 = 0, .unk4 = 48 },
        { .unk0 = 961, .unk2 = 1, .unk4 = 28 },
    },
    [(2 - 1)] = {
        { .unk0 = 1025, .unk2 = 0, .unk4 = 42 },
        { .unk0 = 1025, .unk2 = 1, .unk4 = 26 },
    },
    [(3 - 1)] = {
        { .unk0 = 1026, .unk2 = 0, .unk4 = 28 },
        { .unk0 = 1026, .unk2 = 1, .unk4 = 26 },
    },
    [(4 - 1)] = {
        { .unk0 = 1027, .unk2 = 0, .unk4 = 42 },
        { .unk0 = 1027, .unk2 = 1, .unk4 = 24 },
    },
    [(5 - 1)] = {
        { .unk0 = 1028, .unk2 = 0, .unk4 = 40 },
        { .unk0 = 1028, .unk2 = 1, .unk4 = 24 },
    },
    [(6 - 1)] = {
        { .unk0 = 1029, .unk2 = 0, .unk4 = 40 },
        { .unk0 = 1029, .unk2 = 1, .unk4 = 26 },
    },
};

const struct UNK_080D95E8 sMultiplayerScoreDigitTiles[10] = {
    { .unk0 = 1119, .unk2 = 16, .unk4 = 2 }, { .unk0 = 1119, .unk2 = 17, .unk4 = 2 }, { .unk0 = 1119, .unk2 = 18, .unk4 = 2 },
    { .unk0 = 1119, .unk2 = 19, .unk4 = 2 }, { .unk0 = 1119, .unk2 = 20, .unk4 = 2 }, { .unk0 = 1119, .unk2 = 21, .unk4 = 2 },
    { .unk0 = 1119, .unk2 = 22, .unk4 = 2 }, { .unk0 = 1119, .unk2 = 23, .unk4 = 2 }, { .unk0 = 1119, .unk2 = 24, .unk4 = 2 },
    { .unk0 = 1119, .unk2 = 25, .unk4 = 2 },
};

const struct UNK_080D95E8 sTimeRecordsChoiceViewTitles[6] = {
    [(1 - 1)] = { .unk0 = 959, .unk2 = 0, .unk4 = 66 },
    [(2 - 1)] = { .unk0 = 1015, .unk2 = 0, .unk4 = 32 },
    [(3 - 1)] = { .unk0 = 1016, .unk2 = 0, .unk4 = 30 },
    [(4 - 1)] = { .unk0 = 1017, .unk2 = 0, .unk4 = 44 },
    [(5 - 1)] = { .unk0 = 1018, .unk2 = 0, .unk4 = 44 },
    [(6 - 1)] = { .unk0 = 1019, .unk2 = 0, .unk4 = 36 },
};
const struct UNK_080D95E8 sTimeRecordsScreenChoices[6][2] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 959, .unk2 = 1, .unk4 = 36 },
        [1] = { .unk0 = 959, .unk2 = 2, .unk4 = 36 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 1015, .unk2 = 1, .unk4 = 36 },
        [1] = { .unk0 = 1015, .unk2 = 2, .unk4 = 36 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 1015, .unk2 = 1, .unk4 = 36 },
        [1] = { .unk0 = 1015, .unk2 = 2, .unk4 = 36 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 1015, .unk2 = 1, .unk4 = 36 },
        [1] = { .unk0 = 1015, .unk2 = 2, .unk4 = 36 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 1015, .unk2 = 1, .unk4 = 36 },
        [1] = { .unk0 = 1015, .unk2 = 2, .unk4 = 36 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 1015, .unk2 = 1, .unk4 = 36 },
        [1] = { .unk0 = 1015, .unk2 = 2, .unk4 = 36 },
    },
};

const struct UNK_080D95E8 sTimeRecordsZoneActTitleDigits[7] = {
    { .unk0 = 1048, .unk2 = 2, .unk4 = 4 }, { .unk0 = 1048, .unk2 = 3, .unk4 = 6 }, { .unk0 = 1048, .unk2 = 4, .unk4 = 6 },
    { .unk0 = 1048, .unk2 = 5, .unk4 = 6 }, { .unk0 = 1048, .unk2 = 6, .unk4 = 6 }, { .unk0 = 1048, .unk2 = 7, .unk4 = 6 },
    { .unk0 = 1048, .unk2 = 8, .unk4 = 6 },
};

const struct UNK_080D95E8 sTimeRecordDigitTiles[11] = {
    { .unk0 = 1047, .unk2 = 0, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 1, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 2, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 3, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 4, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 5, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 6, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 7, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 8, .unk4 = 4 },
    { .unk0 = 1047, .unk2 = 9, .unk4 = 4 },
    [10] = { .unk0 = 1047, .unk2 = 10, .unk4 = 4 },
};

const struct UNK_080D95E8 sZoneNameTitles[6][7] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 1049, .unk2 = 0, .unk4 = 28 },
        [1] = { .unk0 = 1049, .unk2 = 1, .unk4 = 28 },
        [2] = { .unk0 = 1049, .unk2 = 2, .unk4 = 36 },
        [3] = { .unk0 = 1049, .unk2 = 3, .unk4 = 30 },
        [4] = { .unk0 = 1049, .unk2 = 4, .unk4 = 28 },
        [5] = { .unk0 = 1049, .unk2 = 5, .unk4 = 22 },
        [6] = { .unk0 = 1049, .unk2 = 6, .unk4 = 30 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 1063, .unk2 = 0, .unk4 = 36 },
        [1] = { .unk0 = 1063, .unk2 = 1, .unk4 = 34 },
        [2] = { .unk0 = 1063, .unk2 = 2, .unk4 = 34 },
        [3] = { .unk0 = 1063, .unk2 = 3, .unk4 = 36 },
        [4] = { .unk0 = 1063, .unk2 = 4, .unk4 = 34 },
        [5] = { .unk0 = 1063, .unk2 = 5, .unk4 = 36 },
        [6] = { .unk0 = 1063, .unk2 = 6, .unk4 = 32 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 1063, .unk2 = 0, .unk4 = 36 },
        [1] = { .unk0 = 1063, .unk2 = 1, .unk4 = 34 },
        [2] = { .unk0 = 1063, .unk2 = 2, .unk4 = 34 },
        [3] = { .unk0 = 1063, .unk2 = 3, .unk4 = 36 },
        [4] = { .unk0 = 1063, .unk2 = 4, .unk4 = 34 },
        [5] = { .unk0 = 1063, .unk2 = 5, .unk4 = 36 },
        [6] = { .unk0 = 1063, .unk2 = 6, .unk4 = 32 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 1063, .unk2 = 0, .unk4 = 36 },
        [1] = { .unk0 = 1063, .unk2 = 1, .unk4 = 34 },
        [2] = { .unk0 = 1063, .unk2 = 2, .unk4 = 34 },
        [3] = { .unk0 = 1063, .unk2 = 3, .unk4 = 36 },
        [4] = { .unk0 = 1063, .unk2 = 4, .unk4 = 34 },
        [5] = { .unk0 = 1063, .unk2 = 5, .unk4 = 36 },
        [6] = { .unk0 = 1063, .unk2 = 6, .unk4 = 32 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 1063, .unk2 = 0, .unk4 = 36 },
        [1] = { .unk0 = 1063, .unk2 = 1, .unk4 = 34 },
        [2] = { .unk0 = 1063, .unk2 = 2, .unk4 = 34 },
        [3] = { .unk0 = 1063, .unk2 = 3, .unk4 = 36 },
        [4] = { .unk0 = 1063, .unk2 = 4, .unk4 = 34 },
        [5] = { .unk0 = 1063, .unk2 = 5, .unk4 = 36 },
        [6] = { .unk0 = 1063, .unk2 = 6, .unk4 = 32 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 1063, .unk2 = 0, .unk4 = 36 },
        [1] = { .unk0 = 1063, .unk2 = 1, .unk4 = 34 },
        [2] = { .unk0 = 1063, .unk2 = 2, .unk4 = 34 },
        [3] = { .unk0 = 1063, .unk2 = 3, .unk4 = 36 },
        [4] = { .unk0 = 1063, .unk2 = 4, .unk4 = 34 },
        [5] = { .unk0 = 1063, .unk2 = 5, .unk4 = 36 },
        [6] = { .unk0 = 1063, .unk2 = 6, .unk4 = 32 },
    },
};
const struct UNK_080D95E8 sZoneBossTitles[6][7] = {
    [(1 - 1)] = {
        [0] = { .unk0 = 1064, .unk2 = 0, .unk4 = 36 },
        [1] = { .unk0 = 1064, .unk2 = 1, .unk4 = 34 },
        [2] = { .unk0 = 1064, .unk2 = 2, .unk4 = 24 },
        [3] = { .unk0 = 1064, .unk2 = 3, .unk4 = 22 },
        [4] = { .unk0 = 1064, .unk2 = 4, .unk4 = 24 },
        [5] = { .unk0 = 1064, .unk2 = 5, .unk4 = 28 },
        [6] = { .unk0 = 1064, .unk2 = 6, .unk4 = 24 },
    },
    [(2 - 1)] = {
        [0] = { .unk0 = 1065, .unk2 = 0, .unk4 = 38 },
        [1] = { .unk0 = 1065, .unk2 = 1, .unk4 = 38 },
        [2] = { .unk0 = 1065, .unk2 = 2, .unk4 = 26 },
        [3] = { .unk0 = 1065, .unk2 = 3, .unk4 = 22 },
        [4] = { .unk0 = 1065, .unk2 = 4, .unk4 = 28 },
        [5] = { .unk0 = 1065, .unk2 = 5, .unk4 = 34 },
        [6] = { .unk0 = 1065, .unk2 = 6, .unk4 = 22 },
    },
    [(3 - 1)] = {
        [0] = { .unk0 = 1065, .unk2 = 0, .unk4 = 38 },
        [1] = { .unk0 = 1065, .unk2 = 1, .unk4 = 38 },
        [2] = { .unk0 = 1065, .unk2 = 2, .unk4 = 26 },
        [3] = { .unk0 = 1065, .unk2 = 3, .unk4 = 22 },
        [4] = { .unk0 = 1065, .unk2 = 4, .unk4 = 28 },
        [5] = { .unk0 = 1065, .unk2 = 5, .unk4 = 34 },
        [6] = { .unk0 = 1065, .unk2 = 6, .unk4 = 22 },
    },
    [(4 - 1)] = {
        [0] = { .unk0 = 1065, .unk2 = 0, .unk4 = 38 },
        [1] = { .unk0 = 1065, .unk2 = 1, .unk4 = 38 },
        [2] = { .unk0 = 1065, .unk2 = 2, .unk4 = 26 },
        [3] = { .unk0 = 1065, .unk2 = 3, .unk4 = 22 },
        [4] = { .unk0 = 1065, .unk2 = 4, .unk4 = 28 },
        [5] = { .unk0 = 1065, .unk2 = 5, .unk4 = 34 },
        [6] = { .unk0 = 1065, .unk2 = 6, .unk4 = 22 },
    },
    [(5 - 1)] = {
        [0] = { .unk0 = 1065, .unk2 = 0, .unk4 = 38 },
        [1] = { .unk0 = 1065, .unk2 = 1, .unk4 = 38 },
        [2] = { .unk0 = 1065, .unk2 = 2, .unk4 = 26 },
        [3] = { .unk0 = 1065, .unk2 = 3, .unk4 = 22 },
        [4] = { .unk0 = 1065, .unk2 = 4, .unk4 = 28 },
        [5] = { .unk0 = 1065, .unk2 = 5, .unk4 = 34 },
        [6] = { .unk0 = 1065, .unk2 = 6, .unk4 = 22 },
    },
    [(6 - 1)] = {
        [0] = { .unk0 = 1065, .unk2 = 0, .unk4 = 38 },
        [1] = { .unk0 = 1065, .unk2 = 1, .unk4 = 38 },
        [2] = { .unk0 = 1065, .unk2 = 2, .unk4 = 26 },
        [3] = { .unk0 = 1065, .unk2 = 3, .unk4 = 22 },
        [4] = { .unk0 = 1065, .unk2 = 4, .unk4 = 28 },
        [5] = { .unk0 = 1065, .unk2 = 5, .unk4 = 34 },
        [6] = { .unk0 = 1065, .unk2 = 6, .unk4 = 22 },
    },
};

void CreateOptionsScreen(u16 p1)
{
    struct Task *t;
    struct OptionsScreen *optionsScreen;
    s16 i;

    m4aSongNumStart(9);

    t = TaskCreate(Task_OptionsScreenShow, sizeof(struct OptionsScreen), 0x1000, 0x0004, OptionsScreenTaskDestroyHandler);
    optionsScreen = (void *)((t)->data);

    ReadProfileData(optionsScreen);

    optionsScreen->unusedUnk358 = p1;
    optionsScreen->subMenuXPos = 0;
    optionsScreen->prevCursorPosition = 0;
    optionsScreen->subMenuAnimFrame = 0;
    optionsScreen->menuCursor = 0;
    optionsScreen->initialSubMenuCursorPosition = -1;

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1193 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1193 "src/game/options_screen.c"
   ; });

    for (i = 0; i < 10; i++) {
        gKeysFirstRepeatIntervals[i] = 20;
        gKeysContinuedRepeatIntervals[i] = 8;
    }
}





void CreateTimeAttackLevelSelectScreen(bool16 isBossView, s16 selectedCharacter, s8 unused_currentLevel)
{
    struct Task *t = TaskCreate(Task_TimeRecordsScreenCreateTimesUI, sizeof(struct TimeRecordsScreen), 0x2000, 0x0004, 
# 1207 "src/game/options_screen.c" 3 4
                                                                                                                          ((void *)0)
# 1207 "src/game/options_screen.c"
                                                                                                                              );
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((t)->data);
    s16 i;

    ({ for (i = 1; i < NUM_CHARACTERS; i++) { if (!((((gLoadedSaveGame->unlockedCharacters)) >> (i)) & 1)) { break; } }; });

    timeRecordsScreen->playerDataMenu = 0;
    timeRecordsScreen->timeRecords = EwramMalloc(sizeof(struct TimeRecords));
    timeRecordsScreen->character = selectedCharacter;
    timeRecordsScreen->zone = 0;
    timeRecordsScreen->act = 0;
    timeRecordsScreen->animFrame = 0;
    timeRecordsScreen->unusedUnk708 = 0;
    timeRecordsScreen->availableCharacters = i;

    for (i = 0; i < NUM_CHARACTERS; i++) {
        timeRecordsScreen->unlockedCourses[i] = gLoadedSaveGame->unlockedLevels[i];
    }

    timeRecordsScreen->language = (gLoadedSaveGame->language - 1);
    timeRecordsScreen->isBossMode = isBossView;
    timeRecordsScreen->view = 2;

    if (timeRecordsScreen->language > 6 - 1) {



        timeRecordsScreen->language = (2 - 1);

    }

    memcpy(timeRecordsScreen->timeRecords, &gLoadedSaveGame->timeRecords, sizeof(struct TimeRecords));

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1240 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1240 "src/game/options_screen.c"
   ; });

    TimeRecordsScreenInitRegisters();
    TimeRecordsScreenCreateCoursesViewBackgroundsUI(timeRecordsScreen);
    TimeRecordsScreenCreateCoursesViewUI(timeRecordsScreen);
    m4aSongNumStart(4);
}

void CreateNewProfileScreen(void)
{
    struct Task *t;
    struct LanguageScreen *languageScreen;

    ({ u32 rand1, rand2, rand3; rand1 ^= (Random() << 16); rand1 ^= Random(); rand3 ^= rand1; SeedRng(rand2, rand3); rand1 ^= (Random() << 16); rand1 ^= Random(); rand2 ^= rand1; SeedRng(rand2, rand3); });

    t = TaskCreate(Task_LanguageScreenFadeIn, sizeof(struct LanguageScreen), 0x2000, 0x0004, 
# 1255 "src/game/options_screen.c" 3 4
                                                                                                ((void *)0)
# 1255 "src/game/options_screen.c"
                                                                                                    );
    languageScreen = (void *)((t)->data);

    languageScreen->optionsScreen = 
# 1258 "src/game/options_screen.c" 3 4
                                   ((void *)0)
# 1258 "src/game/options_screen.c"
                                       ;
    languageScreen->menuCursor = (gLoadedSaveGame->language - 1);
    languageScreen->creatingNewProfile = 1;

    if ((u8)languageScreen->menuCursor >= 6) {



        languageScreen->menuCursor = (2 - 1);

    }

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1270 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1270 "src/game/options_screen.c"
   ; });

    LanguageScreenInitRegisters(languageScreen);
    LanguageScreenCreateBackgroundsUI(languageScreen);
    LanguageScreenCreateUI(languageScreen);
}

void CreateNewProfileNameScreen(s16 mode)
{
    struct Task *t = TaskCreate(Task_ProfileNameScreenFadeIn, sizeof(struct ProfileNameScreen), 0x2000, 0x0004, 
# 1279 "src/game/options_screen.c" 3 4
                                                                                                                   ((void *)0)
# 1279 "src/game/options_screen.c"
                                                                                                                       );
    struct ProfileNameScreen *profileNameScreen = (void *)((t)->data);
    s16 i;

    profileNameScreen->playerDataMenu = 
# 1283 "src/game/options_screen.c" 3 4
                                       ((void *)0)
# 1283 "src/game/options_screen.c"
                                           ;
    profileNameScreen->language = (gLoadedSaveGame->language - 1);

    profileNameScreen->onCompleteAction
        = mode == 1 ? 2 : 1;
    profileNameScreen->cursorCol = 0;

    if (profileNameScreen->language == (1 - 1)) {
        profileNameScreen->matrixCursorIndex = 0;
        profileNameScreen->cursorRow = 0;
        profileNameScreen->matrixPageIndex = 0;
    } else {
        profileNameScreen->matrixCursorIndex = 99;
        profileNameScreen->cursorRow = 0;
        profileNameScreen->matrixPageIndex = 99;
    }

    if (profileNameScreen->language > 6 - 1) {



        profileNameScreen->language = (2 - 1);

    }

    for (i = 0; i < 6; i++) {
        profileNameScreen->nameInput.buffer[i] = 0xFFFF;
    }

    profileNameScreen->nameInput.cursor = 0;
    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1313 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1313 "src/game/options_screen.c"
   ; });

    ProfileNameScreenInitRegisters(profileNameScreen->language);
    ProfileNameScreenCreateUIBackgrounds(profileNameScreen);
    ProfileNameScreenCreateUIText(profileNameScreen);
    ProfileNameScreenCreateUIContextElements(profileNameScreen);
    ProfileNameScreenCreateInputDisplayUI(profileNameScreen);
}

static void ReadProfileData(struct OptionsScreen *optionsScreen)
{
    struct SaveGame *saveGame = gLoadedSaveGame;
    struct OptionsScreenProfileData *profile = &optionsScreen->profileData;

    s16 i;

    memcpy(profile->playerName, saveGame->playerName, sizeof(saveGame->playerName));
    memcpy(&profile->timeRecords, &saveGame->timeRecords, sizeof(saveGame->timeRecords));
    memcpy(profile->multiplayerScores, saveGame->multiplayerScores, sizeof(saveGame->multiplayerScores));

    profile->multiplayerWins = saveGame->multiplayerWins;
    profile->multiplayerLoses = saveGame->multiplayerLoses;
    profile->multiplayerDraws = saveGame->multiplayerDraws;

    memcpy(&profile->buttonConfig, &saveGame->buttonConfig, 8);

    optionsScreen->difficultyLevel = saveGame->difficultyLevel;
    optionsScreen->timeLimitDisabled = saveGame->timeLimitDisabled;
    optionsScreen->language = (saveGame->language - 1);
    optionsScreen->soundTestUnlocked = saveGame->soundTestUnlocked;
    optionsScreen->bossTimeAttackUnlocked = saveGame->bossTimeAttackUnlocked;
    optionsScreen->unk35E = saveGame->unlockedCharacters;

    for (i = 0; i < 6; i++) {
        if (profile->playerName[i] == 0xFFFF) {
            break;
        }
    }

    for (; i < 6; i++) {
        profile->playerName[i] = 0xFFFF;
    }

    if (optionsScreen->difficultyLevel > 1) {
        optionsScreen->difficultyLevel = 0;
    }

    if (optionsScreen->timeLimitDisabled > 1) {
        optionsScreen->timeLimitDisabled = 0;
    }

    if (optionsScreen->language > 6 - 1) {



        optionsScreen->language = (2 - 1);

    }

    if (optionsScreen->soundTestUnlocked > 1) {
        optionsScreen->soundTestUnlocked = 0;
    }

    if (optionsScreen->bossTimeAttackUnlocked > 1) {
        optionsScreen->bossTimeAttackUnlocked = 0;
    }
}

static void StoreProfileData(struct OptionsScreen *optionsScreen)
{
    struct SaveGame *saveGame = gLoadedSaveGame;
    struct OptionsScreenProfileData *profile = &optionsScreen->profileData;

    memcpy(saveGame->playerName, profile->playerName, sizeof(profile->playerName));
    saveGame->timeRecords = profile->timeRecords;

    memcpy(saveGame->multiplayerScores, profile->multiplayerScores, sizeof(struct MultiplayerScore));

    saveGame->multiplayerWins = profile->multiplayerWins;
    saveGame->multiplayerLoses = profile->multiplayerLoses;
    saveGame->multiplayerDraws = profile->multiplayerDraws;


    memcpy(&saveGame->buttonConfig, &profile->buttonConfig, sizeof(struct ButtonConfig));

    saveGame->difficultyLevel = optionsScreen->difficultyLevel;
    saveGame->timeLimitDisabled = optionsScreen->timeLimitDisabled;
    saveGame->language = optionsScreen->language + 1;
    saveGame->soundTestUnlocked = optionsScreen->soundTestUnlocked;
    saveGame->bossTimeAttackUnlocked = optionsScreen->bossTimeAttackUnlocked;
}


static void OptionsScreenInitRegisters(struct OptionsScreen *optionsScreen, s16 state)
{
    ScreenFade *fade = &optionsScreen->unk774;

    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x703;
    gBgCntRegs[2] = 0x4E05;
    gBgCntRegs[3] = 0xDC0E;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    if (state == 0) {
        gBgScrollRegs[2][0] = 0xFF28;
    } else {
        gBgScrollRegs[2][0] = 0;
    }

    gBgScrollRegs[2][1] = 0xFFFD;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)VRAM, (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | (((0x18000 + (0x800 * (12))))/(32/8)))); };

    if (state == 0) {
        fade->window = ((0 << 0) | 0);
        fade->flags = (1 << 1);
        fade->brightness = 0;
        fade->speed = 0x100;
        fade->bldAlpha = 0;
        fade->bldCnt = 0xFF;

        UpdateScreenFade(fade);
    }
}

static void OptionsScreenCreateUI(struct OptionsScreen *optionsScreen, s16 state)
{
    u8 language = optionsScreen->language;

    Sprite *title = &optionsScreen->title;
    Sprite *menuItem = optionsScreen->menuItems;
    Sprite *metaItem = optionsScreen->metaItems;
    Sprite *playerNameDisplayChar = optionsScreen->playerNameDisplay;

    struct UNK_806B908 nameCharTile;
    s16 i, xPos, yPos;

    {
        const struct UNK_080D95E8 *titleText = &sOptionsScreenTitleText[language];
        sub_806A568(title, 0, titleText->unk4, titleText->unk0, 0x3000, 0, 0xF, 0xF, titleText->unk2, 0);
    }

    for (i = 0, yPos = 30; i < 8; i++, menuItem++) {
        if (optionsScreen->soundTestUnlocked || i != 5) {
            const struct UNK_080D95E8 *itemText = &sOptionsScreenMenuItemsText[language][i];

            if (optionsScreen->menuCursor == i) {
                xPos = 32;
            } else {
                xPos = 40;
            }

            if (state == 1 && i == 0) {
                xPos = -184;
            }
            sub_806A568(menuItem, 0, itemText->unk4, itemText->unk0, 0x3000, xPos, yPos, 0xD, itemText->unk2, 0);
            yPos += 15;
        }
    }

    {
        xPos = optionsScreen->menuCursor == 0 ? 152 : 160;
        if (state == 1) {
            xPos = -64;
        }
        sub_806A568(metaItem, 0, 0x12, 0x3BA, 0x3000, xPos, 30, 0xC, 0, 0);
        ++metaItem;
    }

    {
        const struct UNK_080D95E8 *difficultyLevelText = &sDifficultyLevelSwitchText[language][optionsScreen->difficultyLevel];
        xPos = optionsScreen->menuCursor == 1 ? 152 : 160;

        sub_806A568(metaItem, 0, difficultyLevelText->unk4, difficultyLevelText->unk0, 0x3000, xPos, 45, 10,
                    difficultyLevelText->unk2, 0);
        ++metaItem;
    }

    {
        const struct UNK_080D95E8 *timeLimitSwitchText = &sTimeLimitMenuSwitchText[language][optionsScreen->timeLimitDisabled];
        xPos = optionsScreen->menuCursor == 2 ? 152 : 160;

        sub_806A568(metaItem, 0, timeLimitSwitchText->unk4, timeLimitSwitchText->unk0, 0x3000, xPos, 0x3C, 10,
                    timeLimitSwitchText->unk2, 0);
        ++metaItem;
    }

    {
        const struct UNK_080D95E8 *languageText = &sOptionsScreenSelectedLanguageText[language];
        xPos = optionsScreen->menuCursor == 3 ? 152 : 160;

        sub_806A568(metaItem, 0, languageText->unk4, languageText->unk0, 0x3000, xPos, 0x4B, 10, languageText->unk2, 0);
    }
    {
        bool32 finishedReadingName;
        u16 nameChar;

        xPos = optionsScreen->menuCursor == 0 ? 163 : 171;
        if (state == 1 && i == 0) {
            xPos = -53;
        }

        for (i = 0, yPos = 38, finishedReadingName = 0; i < 6; i++, playerNameDisplayChar++, xPos += 10) {
            if (finishedReadingName) {
                nameChar = 0x11;
            } else {
                nameChar = optionsScreen->profileData.playerName[i];
            }

            if (nameChar == 0xFFFF) {
                nameChar = 0x11;
                finishedReadingName = 1;
            }

            nameCharTile = sub_806B908(nameChar);
            sub_806A568(playerNameDisplayChar, 0, nameCharTile.unk0, nameCharTile.unk4, 0x3000, xPos, yPos, 10,
                        nameCharTile.unk6, 0);
            playerNameDisplayChar->palId = optionsScreen->menuCursor == 0 ? 7 : 8;
        }
    }

    metaItem = optionsScreen->metaItems;
    menuItem = optionsScreen->menuItems;
    for (i = 0; i < 8; i++) {
        if (optionsScreen->menuCursor == i) {
            menuItem->palId = 0;
        } else {
            menuItem->palId = 1;
        }

        ++menuItem;
        if (i > 3)
            continue;

        if (optionsScreen->menuCursor == i) {
            metaItem->palId = 0;
        } else {
            metaItem->palId = 1;
        }
        ++metaItem;
    }

    sub_806A568(
# 1559 "src/game/options_screen.c" 3 4
               ((void *)0)
# 1559 "src/game/options_screen.c"
                   , 0, 0, 0x3c4, 0, 0, 0, 0, 0, 0);
    sub_806A568(
# 1560 "src/game/options_screen.c" 3 4
               ((void *)0)
# 1560 "src/game/options_screen.c"
                   , 0, 0, 0x3c4, 0, 0, 0, 0, 1, 0);
    sub_806A568(
# 1561 "src/game/options_screen.c" 3 4
               ((void *)0)
# 1561 "src/game/options_screen.c"
                   , 0, 0, 0x3c3, 0, 0, 0, 0, 0xc, 0);
    sub_806A568(
# 1562 "src/game/options_screen.c" 3 4
               ((void *)0)
# 1562 "src/game/options_screen.c"
                   , 0, 0, 0x3c3, 0, 0, 0, 0, 0xd, 0);
}

static void Task_OptionsScreenMain(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);

    OptionsScreenRenderUI();

    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);
        switch (optionsScreen->menuCursor) {
            case 3:
                OptionsScreenShowLanguageScreen();
                return;
            case 5:
                OptionsScreenShowSoundTestScreen();
                return;
            case 6:
                OptionsScreenShowDeleteScreen();
                return;
            case 7:
                OptionsScreenHandleExit();
                return;
            default:

                OptionsScreenOpenSelectedSubMenu();
                return;
        }
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        OptionsScreenHandleExit();
        return;
    }

    if (gRepeatedKeys & 0x0080) {
        m4aSongNumStart(108);
        optionsScreen->prevCursorPosition = optionsScreen->menuCursor;

        if (optionsScreen->menuCursor >= 8 - 1) {
            optionsScreen->menuCursor = 0;
        } else {
            optionsScreen->menuCursor++;
        }


        if (!optionsScreen->soundTestUnlocked && optionsScreen->menuCursor == 5) {
            optionsScreen->menuCursor++;
        }
        optionsScreen->subMenuAnimFrame = 0;
        gCurTask->main = Task_OptionsScreenMenuCursorMoveAnim;
        return;
    }

    if (gRepeatedKeys & 0x0040) {
        m4aSongNumStart(108);

        optionsScreen->prevCursorPosition = optionsScreen->menuCursor;
        if (optionsScreen->menuCursor <= 0) {
            optionsScreen->menuCursor = 8 - 1;
        } else {
            optionsScreen->menuCursor--;
        }

        if (!optionsScreen->soundTestUnlocked && optionsScreen->menuCursor == 5) {
            optionsScreen->menuCursor--;
        }

        optionsScreen->subMenuAnimFrame = 0;
        gCurTask->main = Task_OptionsScreenMenuCursorMoveAnim;
    }
}

static inline void NextMenuCursorAnimFrame(struct OptionsScreen *optionsScreen, s8 subMenuAnimPos)
{
    s16 baseXPos;
    Sprite *item;

    optionsScreen->subMenuXPos = subMenuAnimPos;
    baseXPos = subMenuAnimPos;

    item = &optionsScreen->menuItems[optionsScreen->menuCursor];
    item->x = baseXPos + 32;
    item->palId = 0;

    if (optionsScreen->menuCursor < 4) {
        item = &optionsScreen->metaItems[optionsScreen->menuCursor];
        item->x = baseXPos + 152;
        item->palId = 0;

        if (optionsScreen->menuCursor == 0) {
            s16 i;
            Sprite *playerNameDisplayChar = optionsScreen->playerNameDisplay;

            for (i = 0; i < 6; i++, playerNameDisplayChar++) {
                playerNameDisplayChar->x = baseXPos + 163 + ({ (i) * (10); });
                playerNameDisplayChar->palId = 7;
            }
        }
    }

    baseXPos = -216 - baseXPos;
    gBgScrollRegs[2][0] = baseXPos;
}

static inline void PrevMenuCursorAnimFrame(struct OptionsScreen *optionsScreen, s8 baseXPos)
{
    Sprite *item = &optionsScreen->menuItems[optionsScreen->prevCursorPosition];

    item->x = baseXPos + 32;
    item->palId = 1;

    if (optionsScreen->prevCursorPosition < 4) {
        item = &optionsScreen->metaItems[optionsScreen->prevCursorPosition];
        item->x = baseXPos + 152;
        item->palId = 1;

        if (optionsScreen->prevCursorPosition == 0) {
            s16 i;
            Sprite *playerNameDisplayChar = optionsScreen->playerNameDisplay;
            for (i = 0; i < 6; i++, playerNameDisplayChar++) {
                playerNameDisplayChar->x = baseXPos + 163 + ({ (i) * (10); });
                playerNameDisplayChar->palId = 8;
            }
        }
    }
}

static void Task_OptionsScreenMenuCursorMoveAnim(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    s16 animFrame = optionsScreen->subMenuAnimFrame;

    NextMenuCursorAnimFrame(optionsScreen, sMenuCursorMoveAnims[0][animFrame]);
    PrevMenuCursorAnimFrame(optionsScreen, sMenuCursorMoveAnims[1][animFrame]);

    OptionsScreenRenderUI();

    if (++optionsScreen->subMenuAnimFrame >= 8) {
        gCurTask->main = Task_OptionsScreenMain;
    }
}

static inline void SubMenuAnimFrame(struct OptionsScreen *optionsScreen, const s16 *animFrames)
{
    s16 baseXPos = optionsScreen->subMenuXPos = animFrames[optionsScreen->subMenuAnimFrame];
    Sprite *item = &optionsScreen->menuItems[optionsScreen->menuCursor];

    item->x = baseXPos + 32;
    item->palId = 0;

    if (optionsScreen->menuCursor < 4) {
        Sprite *item = &optionsScreen->metaItems[optionsScreen->menuCursor];
        item->x = baseXPos + 152;
        item->palId = 0;

        if (optionsScreen->menuCursor == 0) {
            s16 i;
            Sprite *playerNameDisplayChar = optionsScreen->playerNameDisplay;

            for (i = 0; i < 6; i++, playerNameDisplayChar++) {
                playerNameDisplayChar->x = baseXPos + 163 + ({ (i) * (10); });
                playerNameDisplayChar->palId = 7;
            }
        }
    }

    baseXPos = -216 - baseXPos;
    gBgScrollRegs[2][0] = baseXPos;
}

static void Task_OptionsScreenSubMenuOpenAnim(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);

    SubMenuAnimFrame(optionsScreen, sSubMenuOpenAnim);
    OptionsScreenRenderUI();

    if (++optionsScreen->subMenuAnimFrame >= 16) {
        optionsScreen->state = 1;
        gCurTask->main = Task_OptionsScreenWaitForSubMenuExit;
    }
}

static void Task_OptionsScreenSubMenuCloseAnim(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);

    SubMenuAnimFrame(optionsScreen, sSubMenuCloseAnim);
    OptionsScreenRenderUI();

    if (++optionsScreen->subMenuAnimFrame >= 16) {
        ({ gProfileScreenSubMenuNextVramAddress = 
# 1756 "src/game/options_screen.c" 3 4
       ((void *)0)
# 1756 "src/game/options_screen.c"
       ; });
        gCurTask->main = Task_OptionsScreenMain;
    }
}

static void Task_OptionsScreenWaitForLanguageScreenExit(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;

    if (optionsScreen->state != 0) {
        return;
    }

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1770 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1770 "src/game/options_screen.c"
   ; });

    OptionsScreenInitRegisters(optionsScreen, 0);
    ({ OptionsInitBackground(&(optionsScreen->background), 0, 7, 133, 0x1E, 0x14, 0, 0, 0, 0); OptionsInitBackground(&(optionsScreen->subMenuBackground), 1, 0xE, 134, 0x1E, 0x14, 0, 1, 0, 0); });
    OptionsScreenCreateUI(optionsScreen, 0);

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_OptionsScreenFadeInFromLanguageScreen;
}

static void Task_OptionsScreenWaitForSoundTestExit(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;

    if (optionsScreen->state != 0) {
        return;
    }

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1795 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1795 "src/game/options_screen.c"
   ; });

    OptionsScreenInitRegisters(optionsScreen, 0);
    ({ OptionsInitBackground(&(optionsScreen->background), 0, 7, 133, 0x1E, 0x14, 0, 0, 0, 0); OptionsInitBackground(&(optionsScreen->subMenuBackground), 1, 0xE, 134, 0x1E, 0x14, 0, 1, 0, 0); });
    OptionsScreenCreateUI(optionsScreen, 0);

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    m4aSongNumStart(9);
    gCurTask->main = Task_OptionsScreenFadeInFromSoundTest;
}

static void Task_OptionsScreenWaitForDeleteScreenExit(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;
    u8 language = optionsScreen->language;

    if (optionsScreen->state == 1) {
        return;
    }

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 1822 "src/game/options_screen.c" 3 4
   ((void *)0)
# 1822 "src/game/options_screen.c"
   ; });

    if (optionsScreen->state == 0) {
        ReadProfileData(optionsScreen);
    }

    optionsScreen->language = language;

    OptionsScreenInitRegisters(optionsScreen, 0);
    ({ OptionsInitBackground(&(optionsScreen->background), 0, 7, 133, 0x1E, 0x14, 0, 0, 0, 0); OptionsInitBackground(&(optionsScreen->subMenuBackground), 1, 0xE, 134, 0x1E, 0x14, 0, 1, 0, 0); });
    OptionsScreenCreateUI(optionsScreen, 0);

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    if (optionsScreen->state == 0) {
        m4aSongNumStart(9);
    }

    optionsScreen->state = 0;
    gCurTask->main = Task_OptionsScreenFadeInFromDeleteScreen;
}

static void OptionsScreenRenderUI(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    Sprite *title = &optionsScreen->title;
    Sprite *menuItem = optionsScreen->menuItems;
    Sprite *metaItem = optionsScreen->metaItems;
    Sprite *playerNameDisplayChar = optionsScreen->playerNameDisplay;
    s16 i;

    DisplaySprite(title);

    for (i = 0; i < 8; i++, menuItem++) {
        if (optionsScreen->soundTestUnlocked || i != 5) {
            DisplaySprite(menuItem);
            if (i < 4) {
                DisplaySprite(metaItem);
                metaItem++;
            }
        }
    }

    for (i = 0; i < 6; i++, playerNameDisplayChar++) {
        DisplaySprite(playerNameDisplayChar);
    }
}

static void CreatePlayerDataMenu(struct OptionsScreen *optionsScreen)
{
    struct Task *t = TaskCreate(Task_PlayerDataMenuOpenAnimWait, sizeof(struct PlayerDataMenu), 0x2000, 0x0004, 
# 1877 "src/game/options_screen.c" 3 4
                                                                                                                   ((void *)0)
# 1877 "src/game/options_screen.c"
                                                                                                                       );
    struct PlayerDataMenu *playerDataMenu = (void *)((t)->data);

    s16 initialCursorPos;
    if (optionsScreen->initialSubMenuCursorPosition != -1) {
        initialCursorPos = optionsScreen->initialSubMenuCursorPosition;
    } else {
        initialCursorPos = 0;
    }

    playerDataMenu->optionsScreen = optionsScreen;
    playerDataMenu->menuCursor = initialCursorPos;
    playerDataMenu->animFrame = 0;
    playerDataMenu->language = optionsScreen->language;

    PlayerDataMenuCreateUI(playerDataMenu);
}

static void PlayerDataMenuCreateUI(struct PlayerDataMenu *playerDataMenu)
{
    Sprite *headerFooter = playerDataMenu->headerFooter;
    Sprite *menuItem = playerDataMenu->menuItems;
    Sprite *menuItemOutline = &playerDataMenu->menuItemOutline;

    const struct UNK_080D95E8 *titleText = &sPlayerDataMenuTitleText[playerDataMenu->language];
    const struct UNK_080D95E8 *footerText = &sPlayerDataMenuControlsText[playerDataMenu->language];
    const struct UNK_080D95E8 *menuItemText = sPlayerDataMenuItemsText[playerDataMenu->language];

    s16 baseXPos = playerDataMenu->optionsScreen->subMenuXPos;
    s16 menuCursor = playerDataMenu->menuCursor;

    s16 i, yPos;


    sub_806A568(&headerFooter[0], 1, titleText->unk4, titleText->unk0, 0x1000, baseXPos + 336, 32, 8, titleText->unk2,
                0);


    sub_806A568(&headerFooter[1], 1, footerText->unk4, footerText->unk0, 0x1000, baseXPos + 336, 132, 8,
                footerText->unk2, 0);


    for (i = 0, yPos = 46; i < 4; i++, menuItem++, menuItemText++, yPos += 19) {
        sub_806A568(menuItem, 1, menuItemText->unk4, menuItemText->unk0, 0x1000, baseXPos + 256, yPos, 8,
                    menuItemText->unk2, 0);




        menuItem->palId = (menuCursor ^ i) ? 1 : 0;
    }

    sub_806A568(menuItemOutline, 1, 0x3f, 0x3bd, 0x1000, baseXPos + 254, menuCursor * 19 + 46, 7, 5, 0);
}

static void Task_PlayerDataMenuOpenAnimWait(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = playerDataMenu->headerFooter;
    Sprite *menuItem = playerDataMenu->menuItems;
    Sprite *menuItemOutline = &playerDataMenu->menuItemOutline;

    s16 baseXPos = playerDataMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        headerFooter->x = baseXPos + 336;
    }

    for (i = 0; i < 4; i++, menuItem++) {
        menuItem->x = baseXPos + 256;
    }

    menuItemOutline->x = baseXPos + 254;

    PlayerDataMenuRenderUI();

    if (++playerDataMenu->animFrame >= 16) {
        playerDataMenu->animFrame = 0;
        gCurTask->main = Task_PlayerDataMenuMain;
    }
}

static void Task_PlayerDataMenuMain(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    Sprite *menuItem = playerDataMenu->menuItems;
    Sprite *menuItemOutline = &playerDataMenu->menuItemOutline;
    struct OptionsScreen *optionsScreen = playerDataMenu->optionsScreen;
    s16 i;

    if (gRepeatedKeys & (0x0040 | 0x0080)) {
        m4aSongNumStart(108);

        if (gRepeatedKeys & 0x0040) {
            if (playerDataMenu->menuCursor != 0) {
                playerDataMenu->menuCursor--;
            } else {
                playerDataMenu->menuCursor = 3;
            }
        } else if (gRepeatedKeys & 0x0080) {
            if (playerDataMenu->menuCursor < 4 - 1) {
                playerDataMenu->menuCursor++;
            } else {
                playerDataMenu->menuCursor = 0;
            }
        }

        for (i = 0; i < 4; i++, menuItem++) {
            menuItem->palId = (playerDataMenu->menuCursor ^ i) ? 1 : 0;
        }
        menuItemOutline->y = playerDataMenu->menuCursor * 19 + 46;
    }

    PlayerDataMenuRenderUI();
    if (gRepeatedKeys & (0x0040 | 0x0080)) {
        return;
    }

    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);

        switch (playerDataMenu->menuCursor) {
            case 0:
                PlayerDataMenuShowProfileNameScreen();
                return;
            case 1:
                PlayerDataMenuShowTimeRecordsScreen();
                return;
            case 2:
                PlayerDataMenuShowMultiplayerRecordsScreen();
                return;
            case 3:
                optionsScreen->state = 0;
                gCurTask->main = Task_PlayerDataMenuCloseAnim;
                return;
            default:
                return;
        }
    } else if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        optionsScreen->state = 0;
        gCurTask->main = Task_PlayerDataMenuCloseAnim;
    }
}

static void Task_PlayerDataMenuCloseAnim(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = playerDataMenu->headerFooter;
    Sprite *menuItem = playerDataMenu->menuItems;
    Sprite *menuItemOutline = &playerDataMenu->menuItemOutline;

    s16 baseXPos = playerDataMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        headerFooter->x = baseXPos + 336;
    }

    for (i = 0; i < 4; i++, menuItem++) {
        menuItem->x = baseXPos + 256;
    }

    menuItemOutline->x = baseXPos + 254;

    if (++playerDataMenu->animFrame < 15) {
        PlayerDataMenuRenderUI();
    } else {
        TaskDestroy(gCurTask);
    }
}

static inline void OptionsScreenRecreateUIForPlayerDataMenu(struct PlayerDataMenu *playerDataMenu, ScreenFade *fade)
{
    struct OptionsScreen *optionsScreen;

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 2054 "src/game/options_screen.c" 3 4
   ((void *)0)
# 2054 "src/game/options_screen.c"
   ; });

    OptionsScreenInitRegisters(playerDataMenu->optionsScreen, 1);

    optionsScreen = playerDataMenu->optionsScreen;
    ({ OptionsInitBackground(&(optionsScreen->background), 0, 7, 133, 0x1E, 0x14, 0, 0, 0, 0); OptionsInitBackground(&(optionsScreen->subMenuBackground), 1, 0xE, 134, 0x1E, 0x14, 0, 1, 0, 0); });
    OptionsScreenCreateUI(playerDataMenu->optionsScreen, 1);
    PlayerDataMenuCreateUI(playerDataMenu);

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    playerDataMenu->optionsScreen->state = 1;
}

static void Task_PlayerDataMenuWaitForProfileNameScreenExit(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;

    if (playerDataMenu->state == 0) {
        OptionsScreenRecreateUIForPlayerDataMenu(playerDataMenu, unk150);
        gCurTask->main = Task_PlayerDataMenuFadeInFromProfileNameScreen;
    }
}

static void Task_PlayerDataMenuFadeOutToTimeRecordsScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;
    PlayerDataMenuRenderUI();


    if (UpdateScreenFade(unk150)) {
        if (playerDataMenu->optionsScreen->bossTimeAttackUnlocked) {

            CreateTimeRecordsScreen(playerDataMenu);
        } else {
            CreateTimeRecordsScreenAtCoursesView(playerDataMenu);
        }
        playerDataMenu->state = 1;
        playerDataMenu->optionsScreen->state = 2;

        gCurTask->main = Task_PlayerDataMenuWaitForTimeRecordsScreenExit;
    }
}

static void Task_PlayerDataMenuWaitForTimeRecordsScreenExit(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;

    if (playerDataMenu->state == 0) {
        OptionsScreenRecreateUIForPlayerDataMenu(playerDataMenu, unk150);
        gCurTask->main = Task_PlayerDataMenuFadeInFromTimeRecordsScreen;
    }
}

static void Task_PlayerDataMenuWaitForMultiplayerRecordsScreenExit(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;

    if (playerDataMenu->state == 0) {
        OptionsScreenRecreateUIForPlayerDataMenu(playerDataMenu, unk150);
        gCurTask->main = Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen;
    }
}

static void DifficultyMenuCreateUI(struct SwitchMenu *difficultyMenu)
{
    Sprite *headerFooter = difficultyMenu->headerFooter;
    Sprite *difficultyOption = difficultyMenu->options;
    Sprite *switchValueOutline = &difficultyMenu->switchValueOutline;

    const struct UNK_080D95E8 *titleText = &sDifficultyMenuTitleText[difficultyMenu->language];
    const struct UNK_080D95E8 *footerText = &sDifficultyMenuControlsText[difficultyMenu->language];
    const struct UNK_080D95E8 *difficultyLevelText = sDifficultyLevelSwitchText[difficultyMenu->language];

    s16 baseXPos = difficultyMenu->optionsScreen->subMenuXPos;
    s16 difficultyLevel = difficultyMenu->switchValue;
    s16 i;

    sub_806A568(headerFooter, 1, titleText->unk4, titleText->unk0, 0x1000, baseXPos + 336, 50, 8, titleText->unk2, 0);

    headerFooter++;
    sub_806A568(headerFooter, 1, footerText->unk4, footerText->unk0, 0x1000, baseXPos + 336, 116, 8, footerText->unk2,
                0);


    sub_806A568(difficultyOption, 1, difficultyLevelText->unk4, difficultyLevelText->unk0, 0x1000, baseXPos + 274, 76,
                8, difficultyLevelText->unk2, 0);

    difficultyOption++;
    difficultyLevelText++;

    sub_806A568(difficultyOption, 1, difficultyLevelText->unk4, difficultyLevelText->unk0, 0x1000, baseXPos + 334, 76,
                8, difficultyLevelText->unk2, 0);

    sub_806A568(switchValueOutline, 1, 0x12, 0x3b8, 0x1000, difficultyLevel * 60 + 272, 76, 7, 3, 0);

    for (i = 0, difficultyOption = difficultyMenu->options; i < 2; i++, difficultyOption++) {
        difficultyOption->palId = (difficultyLevel ^ i) ? 1 : 0;
    }
}

static void Task_DifficultyMenuOpenAnimWait(void)
{
    struct SwitchMenu *difficultyMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = difficultyMenu->headerFooter;
    Sprite *difficultyOption = difficultyMenu->options;
    Sprite *switchValueOutline = &difficultyMenu->switchValueOutline;

    s16 baseXPos = difficultyMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        headerFooter->x = baseXPos + 336;
    }

    difficultyOption->x = baseXPos + 274;
    difficultyOption++;
    difficultyOption->x = baseXPos + 334;
    switchValueOutline->x = baseXPos + 272 + ({ (difficultyMenu->switchValue) * (60); });

    DifficultyMenuRenderUI();

    if (++difficultyMenu->animFrame >= 16) {
        difficultyMenu->animFrame = 0;
        gCurTask->main = Task_DifficultyMenuMain;
    }
}

static void Task_DifficultyMenuMain(void)
{
    struct SwitchMenu *difficultyMenu = (void *)((gCurTask)->data);
    Sprite *difficultyOption = difficultyMenu->options;
    Sprite *switchValueOutline = &difficultyMenu->switchValueOutline;
    struct OptionsScreen *optionsScreen = difficultyMenu->optionsScreen;

    s16 baseXPos = optionsScreen->subMenuXPos;
    s16 language = difficultyMenu->language;
    s16 i;

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        m4aSongNumStart(108);
        difficultyMenu->switchValue = difficultyMenu->switchValue == 0;

        for (i = 0; i < 2; i++, difficultyOption++) {
            difficultyOption->palId = (difficultyMenu->switchValue ^ i) ? 1 : 0;
        }

        switchValueOutline->x = baseXPos + 272 + ({ (difficultyMenu->switchValue) * (60); });
    }

    DifficultyMenuRenderUI();

    if ((gRepeatedKeys & (0x0010 | 0x0020))) {
        return;
    }

    if (gPressedKeys & 0x0001) {
        const struct UNK_080D95E8 *difficultyLevelText = &sDifficultyLevelSwitchText[language][difficultyMenu->switchValue];

        difficultyOption = &optionsScreen->metaItems[1];
        difficultyOption->variant = difficultyLevelText->unk2;
        difficultyOption->graphics.anim = difficultyLevelText->unk0;
        UpdateSpriteAnimation(difficultyOption);

        m4aSongNumStart(106);

        optionsScreen->difficultyLevel = difficultyMenu->switchValue;
        optionsScreen->state = 0;
        gCurTask->main = Task_DifficultyMenuCloseAnim;
        return;
    }

    if ((gPressedKeys & 0x0002)) {
        m4aSongNumStart(107);
        optionsScreen->state = 0;
        gCurTask->main = Task_DifficultyMenuCloseAnim;
    }
}

static void Task_DifficultyMenuCloseAnim(void)
{
    struct SwitchMenu *difficultyMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = difficultyMenu->headerFooter;
    Sprite *difficultyOption = difficultyMenu->options;
    Sprite *switchValueOutline = &difficultyMenu->switchValueOutline;

    s16 baseXPos = difficultyMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        headerFooter->x = baseXPos + 336;
    }

    difficultyOption->x = baseXPos + 274;
    difficultyOption++;
    difficultyOption->x = baseXPos + 334;
    switchValueOutline->x = baseXPos + 272 + ({ (difficultyMenu->switchValue) * (60); });

    if (++difficultyMenu->animFrame < 0xF) {
        DifficultyMenuRenderUI();
    } else {
        TaskDestroy(gCurTask);
    }
}

static void TimeLimitMenuCreateUI(struct SwitchMenu *timeLimitMenu)
{

    Sprite *headerFooter = timeLimitMenu->headerFooter;
    Sprite *timeLimitOption = timeLimitMenu->options;
    Sprite *switchValueOutline = &timeLimitMenu->switchValueOutline;

    const struct UNK_080D95E8 *titleText = &sTimeLimitMenuTitleText[timeLimitMenu->language];
    const struct UNK_080D95E8 *footerText = &sTimeLimitMenuControlsText[timeLimitMenu->language];
    const struct UNK_080D95E8 *timeLimitSwitchText = sTimeLimitMenuSwitchText[timeLimitMenu->language];

    s16 baseXPos = timeLimitMenu->optionsScreen->subMenuXPos;
    s16 timeLimitDisabled = timeLimitMenu->switchValue;
    s16 i;


    sub_806A568(headerFooter, 1, titleText->unk4, titleText->unk0, 0x1000, baseXPos + 336, 50, 8, titleText->unk2, 0);

    headerFooter++;
    sub_806A568(headerFooter, 1, footerText->unk4, footerText->unk0, 0x1000, baseXPos + 336, 116, 8, footerText->unk2,
                0);


    sub_806A568(timeLimitOption, 1, timeLimitSwitchText->unk4, timeLimitSwitchText->unk0, 0x1000, baseXPos + 274, 76,
                8, timeLimitSwitchText->unk2, 0);

    timeLimitOption++;
    timeLimitSwitchText++;

    sub_806A568(timeLimitOption, 1, timeLimitSwitchText->unk4, timeLimitSwitchText->unk0, 0x1000, baseXPos + 334, 76,
                8, timeLimitSwitchText->unk2, 0);

    sub_806A568(switchValueOutline, 1, 0x12, 0x3b8, 0x1000, timeLimitDisabled * 60 + 272, 76, 7, 3, 0);

    for (i = 0, timeLimitOption = timeLimitMenu->options; i < 2; i++, timeLimitOption++) {
        timeLimitOption->palId = (timeLimitDisabled ^ i) ? 1 : 0;
    }
}

static void Task_TimeLimitMenuOpenAnimWait(void)
{
    struct SwitchMenu *timeLimitMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = timeLimitMenu->headerFooter;
    Sprite *timeLimitOption = timeLimitMenu->options;
    Sprite *switchValueOutline = &timeLimitMenu->switchValueOutline;

    s16 baseXPos = timeLimitMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        headerFooter->x = baseXPos + 336;
    }

    timeLimitOption->x = baseXPos + 274;
    timeLimitOption++;
    timeLimitOption->x = baseXPos + 334;
    switchValueOutline->x = baseXPos + 272 + ({ (timeLimitMenu->switchValue) * (60); });

    TimeLimitMenuRenderUI();

    if (++timeLimitMenu->animFrame > 15) {
        timeLimitMenu->animFrame = 0;
        gCurTask->main = Task_TimeLimitMenuMain;
    }
}

static void Task_TimeLimitMenuMain(void)
{

    struct SwitchMenu *timeLimitMenu = (void *)((gCurTask)->data);
    Sprite *timeLimitOption = timeLimitMenu->options;
    Sprite *switchValueOutline = &timeLimitMenu->switchValueOutline;
    struct OptionsScreen *optionsScreen = timeLimitMenu->optionsScreen;

    s16 baseXPos = optionsScreen->subMenuXPos;
    s16 language = timeLimitMenu->language;
    s16 i;

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        m4aSongNumStart(108);
        timeLimitMenu->switchValue = timeLimitMenu->switchValue == 0;

        for (i = 0; i < 2; i++, timeLimitOption++) {
            timeLimitOption->palId = (timeLimitMenu->switchValue ^ i) ? 1 : 0;
        }

        switchValueOutline->x = baseXPos + 272 + ({ (timeLimitMenu->switchValue) * (60); });
    }

    TimeLimitMenuRenderUI();

    if ((gRepeatedKeys & (0x0010 | 0x0020))) {
        return;
    }

    if (gPressedKeys & 0x0001) {
        const struct UNK_080D95E8 *itemText3 = &sTimeLimitMenuSwitchText[language][timeLimitMenu->switchValue];

        timeLimitOption = &optionsScreen->metaItems[2];

        timeLimitOption->variant = itemText3->unk2;
        timeLimitOption->graphics.anim = itemText3->unk0;
        UpdateSpriteAnimation(timeLimitOption);
        m4aSongNumStart(106);

        optionsScreen->timeLimitDisabled = timeLimitMenu->switchValue;
        optionsScreen->state = 0;
        gCurTask->main = Task_TimeLimitMenuCloseAnim;
    } else if ((gPressedKeys & 0x0002)) {
        m4aSongNumStart(107);
        optionsScreen->state = 0;
        gCurTask->main = Task_TimeLimitMenuCloseAnim;
    }
}

static void Task_TimeLimitMenuCloseAnim(void)
{
    struct SwitchMenu *timeLimitMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = timeLimitMenu->headerFooter;
    Sprite *timeLimitOption = timeLimitMenu->options;
    Sprite *switchValueOutline = &timeLimitMenu->switchValueOutline;

    s16 baseXPos = timeLimitMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        headerFooter->x = baseXPos + 336;
    }

    timeLimitOption->x = baseXPos + 274;
    timeLimitOption++;
    timeLimitOption->x = baseXPos + 334;
    switchValueOutline->x = baseXPos + 272 + ({ (timeLimitMenu->switchValue) * (60); });

    if (++timeLimitMenu->animFrame < 15) {
        TimeLimitMenuRenderUI();
        return;
    }

    TaskDestroy(gCurTask);
}



static void CreateButtonConfigMenu(struct OptionsScreen *optionsScreen)
{
    struct Task *t = TaskCreate(Task_ButtonConfigMenuOpenAnimWait, sizeof(struct ButtonConfigMenu), 0x2000, 4, 
# 2414 "src/game/options_screen.c" 3 4
                                                                                                              ((void *)0)
# 2414 "src/game/options_screen.c"
                                                                                                                  );
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((t)->data);

    buttonConfigMenu->optionsScreen = optionsScreen;

    switch (optionsScreen->profileData.buttonConfig.jump) {
        case 0x0001:
            buttonConfigMenu->aButtonAction = 0;
            break;
        case 0x0002:
            buttonConfigMenu->bButtonAction = 0;
            break;
        case 0x0100:
            buttonConfigMenu->rShoulderAction = 0;
            break;
    }

    switch (optionsScreen->profileData.buttonConfig.attack) {
        case 0x0001:
            buttonConfigMenu->aButtonAction = 1;
            break;
        case 0x0002:
            buttonConfigMenu->bButtonAction = 1;
            break;
        case 0x0100:
            buttonConfigMenu->rShoulderAction = 1;
            break;
    }

    switch (optionsScreen->profileData.buttonConfig.trick) {
        case 0x0001:
            buttonConfigMenu->aButtonAction = 2;
            break;
        case 0x0002:
            buttonConfigMenu->bButtonAction = 2;
            break;
        case 0x0100:
            buttonConfigMenu->rShoulderAction = 2;
            break;
    }

    buttonConfigMenu->focus = 0;
    buttonConfigMenu->animFrame = 0;
    buttonConfigMenu->language = optionsScreen->language;
    ButtonConfigMenuCreateUI(buttonConfigMenu);
}

static void ButtonConfigMenuCreateUI(struct ButtonConfigMenu *buttonConfigMenu)
{
    Sprite *uiElement = buttonConfigMenu->staticElements;
    Sprite *buttonAction = buttonConfigMenu->buttonActions;
    Sprite *scrollArrow = buttonConfigMenu->scrollArrows;
    Sprite *controlFocus = &buttonConfigMenu->controlFocus;

    const struct UNK_080D95E8 *titleControlsText = sButtonConfigTitleAndControlsText[buttonConfigMenu->language];
    const struct UNK_080D95E8 *buttonIcon = sButtonConfigButtonIcons;
    const struct UNK_080D95E8 *actionsText = sButtonConfigActionsText[buttonConfigMenu->language];

    s16 baseXPos = buttonConfigMenu->optionsScreen->subMenuXPos;

    s16 i;


    sub_806A568(uiElement, 1, titleControlsText->unk4, titleControlsText->unk0, 0x1000, baseXPos + 336, 0x1C, 8,
                titleControlsText->unk2, 0);


    uiElement++;
    titleControlsText++;
    sub_806A568(uiElement, 1, titleControlsText->unk4, titleControlsText->unk0, 0x1000, baseXPos + 336, 0x7A, 8,
                titleControlsText->unk2, 0);

    uiElement++;
    titleControlsText++;
    sub_806A568(uiElement, 1, titleControlsText->unk4, titleControlsText->unk0, 0x1000, baseXPos + 336, 0x87, 8,
                titleControlsText->unk2, 0);


    uiElement++;
    sub_806A568(uiElement, 1, buttonIcon->unk4, buttonIcon->unk0, 0x1000, baseXPos + 264, 0x35, 8, buttonIcon->unk2,
                0);

    uiElement++;
    buttonIcon++;
    sub_806A568(uiElement, 1, buttonIcon->unk4, buttonIcon->unk0, 0x1000, baseXPos + 264, 0x4D, 8, buttonIcon->unk2,
                0);

    uiElement++;
    buttonIcon++;
    sub_806A568(uiElement, 1, buttonIcon->unk4, buttonIcon->unk0, 0x1000, baseXPos + 264, 0x65, 8, buttonIcon->unk2,
                0);


    sub_806A568(buttonAction, 1, actionsText[buttonConfigMenu->aButtonAction].unk4,
                actionsText[buttonConfigMenu->aButtonAction].unk0, 0x1000, baseXPos + 0x14C, 0x2D, 8,
                actionsText[buttonConfigMenu->aButtonAction].unk2, 0);


    buttonAction++;
    sub_806A568(buttonAction, 1, actionsText[buttonConfigMenu->bButtonAction].unk4,
                actionsText[buttonConfigMenu->bButtonAction].unk0, 0x1000, baseXPos + 0x14C, 0x45, 8,
                actionsText[buttonConfigMenu->bButtonAction].unk2, 0);


    buttonAction++;
    sub_806A568(buttonAction, 1, actionsText[buttonConfigMenu->rShoulderAction].unk4,
                actionsText[buttonConfigMenu->rShoulderAction].unk0, 0x1000, baseXPos + 0x14C, 0x5D, 8,
                actionsText[buttonConfigMenu->rShoulderAction].unk2, 0);

    sub_806A568(controlFocus, 1, 0x42, 0x3B6, 0x1000, baseXPos + 0xFC, 0x2A, 6, 7, 0);

    sub_806A568(scrollArrow, 1, 2, 0x3B6, 0x1000, baseXPos + 0x143, 0x35, 6, 8, 0);
    scrollArrow++;
    sub_806A568(scrollArrow, 1, 2, 0x3B6, 0x1000, baseXPos + 0x19D, 0x35, 6, 9, 0);
}

static void Task_ButtonConfigMenuOpenAnimWait(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    Sprite *uiElement = buttonConfigMenu->staticElements;
    Sprite *buttonAction = buttonConfigMenu->buttonActions;
    Sprite *scrollArrow = buttonConfigMenu->scrollArrows;
    Sprite *controlFocus = &buttonConfigMenu->controlFocus;

    s16 baseXPos = buttonConfigMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 3; i++, uiElement++) {
        uiElement->x = baseXPos + 336;
    }

    for (; i < 6; i++, uiElement++) {
        uiElement->x = baseXPos + 264;
    }

    for (i = 0; i < 3; i++, buttonAction++) {
        buttonAction->x = baseXPos + 332;
    }

    controlFocus->x = baseXPos + 252;
    scrollArrow->x = baseXPos + 323;
    scrollArrow++;
    scrollArrow->x = baseXPos + 413;

    ButtonConfigMenuRenderUI();

    if (++buttonConfigMenu->animFrame >= 16) {
        buttonConfigMenu->animFrame = 0;
        gCurTask->main = Task_ButtonConfigMenuAButtonMain;
    }
}

static void Task_ButtonConfigMenuAButtonMain(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    Sprite *buttonAction = buttonConfigMenu->buttonActions;
    const struct UNK_080D95E8 *actionsText = sButtonConfigActionsText[buttonConfigMenu->language];
    const struct UNK_080D95E8 *actionText;

    ButtonConfigMenuRenderUI();

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        m4aSongNumStart(108);
        if (gRepeatedKeys & (0x0020)) {
            if (buttonConfigMenu->aButtonAction > 0) {
                buttonConfigMenu->aButtonAction--;
            } else {
                buttonConfigMenu->aButtonAction = 2;
            }
        } else {
            if (buttonConfigMenu->aButtonAction < 2) {
                buttonConfigMenu->aButtonAction++;
            } else {
                buttonConfigMenu->aButtonAction = 0;
            }
        }

        actionText = &actionsText[buttonConfigMenu->aButtonAction];
        buttonAction->graphics.anim = actionText->unk0;
        buttonAction->variant = actionText->unk2;
        UpdateSpriteAnimation(&buttonAction[0]);
        return;
    }

    if (gPressedKeys & 0x0001) {
        if (buttonConfigMenu->aButtonAction == buttonConfigMenu->bButtonAction) {
            while (buttonConfigMenu->aButtonAction == buttonConfigMenu->bButtonAction
                   || buttonConfigMenu->aButtonAction == buttonConfigMenu->rShoulderAction) {
                if (buttonConfigMenu->bButtonAction < 2) {
                    buttonConfigMenu->bButtonAction++;
                } else {
                    buttonConfigMenu->bButtonAction = 0;
                }
            }
            buttonAction = &buttonConfigMenu->buttonActions[1];
            buttonAction->graphics.anim = actionsText[buttonConfigMenu->bButtonAction].unk0;
            buttonAction->variant = actionsText[buttonConfigMenu->bButtonAction].unk2;

            UpdateSpriteAnimation(buttonAction);
        }

        if (buttonConfigMenu->aButtonAction == buttonConfigMenu->rShoulderAction) {
            while (buttonConfigMenu->aButtonAction == buttonConfigMenu->rShoulderAction
                   || buttonConfigMenu->bButtonAction == buttonConfigMenu->rShoulderAction) {
                if (buttonConfigMenu->rShoulderAction < 2) {
                    buttonConfigMenu->rShoulderAction++;
                } else {
                    buttonConfigMenu->rShoulderAction = 0;
                }
            }

            buttonAction = &buttonConfigMenu->buttonActions[2];
            buttonAction->graphics.anim = actionsText[buttonConfigMenu->rShoulderAction].unk0;
            buttonAction->variant = actionsText[buttonConfigMenu->rShoulderAction].unk2;
            UpdateSpriteAnimation(buttonAction);
        }

        buttonConfigMenu->focus = 1;
        m4aSongNumStart(106);
        gCurTask->main = Task_ButtonConfigMenuHandleAButtonComplete;
        return;
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        buttonConfigMenu->animFrame = 0;
        buttonConfigMenu->optionsScreen->state = 0;
        gCurTask->main = Task_ButtonMenuConfigCloseAnim;
        return;
    }

    if (gPressedKeys & 0x0004) {
        m4aSongNumStart(106);
        ButtonConfigMenuStartOver();
    }
}

static void Task_ButtonConfigMenuBButtonMain(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    Sprite *buttonAction;
    const struct UNK_080D95E8 *actionsText = sButtonConfigActionsText[buttonConfigMenu->language];
    const struct UNK_080D95E8 *itemText4;
    u8 unk245;

    ButtonConfigMenuRenderUI();

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        m4aSongNumStart(108);
        if (gRepeatedKeys & 0x0020) {
            do {
                if (buttonConfigMenu->bButtonAction > 0) {
                    buttonConfigMenu->bButtonAction--;
                } else {
                    buttonConfigMenu->bButtonAction = 2;
                }
            } while (buttonConfigMenu->aButtonAction == buttonConfigMenu->bButtonAction);
        } else if (gRepeatedKeys & 0x0010) {
            do {
                if (buttonConfigMenu->bButtonAction < 2) {
                    buttonConfigMenu->bButtonAction++;
                } else {
                    buttonConfigMenu->bButtonAction = 0;
                }
            } while (buttonConfigMenu->aButtonAction == buttonConfigMenu->bButtonAction);
        }


        unk245 = buttonConfigMenu->bButtonAction;

        buttonAction = &buttonConfigMenu->buttonActions[1];
        itemText4 = &actionsText[unk245];
        buttonAction->graphics.anim = itemText4->unk0;
        buttonAction->variant = itemText4->unk2;
        UpdateSpriteAnimation(buttonAction);
        return;
    }

    if (gPressedKeys & 0x0001) {
        if (buttonConfigMenu->aButtonAction == buttonConfigMenu->rShoulderAction
            || buttonConfigMenu->bButtonAction == buttonConfigMenu->rShoulderAction) {
            while (buttonConfigMenu->aButtonAction == buttonConfigMenu->rShoulderAction
                   || buttonConfigMenu->bButtonAction == buttonConfigMenu->rShoulderAction) {
                if (buttonConfigMenu->rShoulderAction < 2) {
                    buttonConfigMenu->rShoulderAction++;
                } else {
                    buttonConfigMenu->rShoulderAction = 0;
                }
            }
            buttonAction = &buttonConfigMenu->buttonActions[2];
            buttonAction->graphics.anim = actionsText[buttonConfigMenu->rShoulderAction].unk0;
            buttonAction->variant = actionsText[buttonConfigMenu->rShoulderAction].unk2;

            UpdateSpriteAnimation(buttonAction);
        }

        buttonConfigMenu->focus = 2;
        m4aSongNumStart(106);
        gCurTask->main = Task_ButtonConfigMenuHandleBButtonComplete;
        return;
    }

    if (gPressedKeys & 0x0002) {
        if (buttonConfigMenu->aButtonAction == buttonConfigMenu->bButtonAction
            || buttonConfigMenu->bButtonAction == buttonConfigMenu->rShoulderAction) {
            while (buttonConfigMenu->aButtonAction == buttonConfigMenu->bButtonAction
                   || buttonConfigMenu->bButtonAction == buttonConfigMenu->rShoulderAction) {
                if (buttonConfigMenu->bButtonAction < 2) {
                    buttonConfigMenu->bButtonAction++;
                } else {
                    buttonConfigMenu->bButtonAction = 0;
                }
            }
            buttonAction = &buttonConfigMenu->buttonActions[1];
            buttonAction->graphics.anim = actionsText[buttonConfigMenu->bButtonAction].unk0;
            buttonAction->variant = actionsText[buttonConfigMenu->bButtonAction].unk2;

            UpdateSpriteAnimation(buttonAction);
        }
        m4aSongNumStart(107);
        buttonConfigMenu->focus = 0;
        gCurTask->main = Task_ButtonConfigMenuHandleStartOver;
        return;
    }

    if (gPressedKeys & 0x0004) {
        m4aSongNumStart(106);
        ButtonConfigMenuStartOver();
    }
}

static inline void CommitButtonConfig(struct ButtonConfigMenu *buttonConfigMenu, struct OptionsScreen *optionsScreen)
{
    switch (buttonConfigMenu->aButtonAction) {
        case 0:
            optionsScreen->profileData.buttonConfig.jump = 0x0001;
            break;
        case 1:
            optionsScreen->profileData.buttonConfig.attack = 0x0001;
            break;
        case 2:
            optionsScreen->profileData.buttonConfig.trick = 0x0001;
            break;
    }

    switch (buttonConfigMenu->bButtonAction) {
        case 0:
            optionsScreen->profileData.buttonConfig.jump = 0x0002;
            break;
        case 1:
            optionsScreen->profileData.buttonConfig.attack = 0x0002;
            break;
        case 2:
            optionsScreen->profileData.buttonConfig.trick = 0x0002;
            break;
    }

    switch (buttonConfigMenu->rShoulderAction) {
        case 0:
            optionsScreen->profileData.buttonConfig.jump = 0x0100;
            break;
        case 1:
            optionsScreen->profileData.buttonConfig.attack = 0x0100;
            break;
        case 2:
            optionsScreen->profileData.buttonConfig.trick = 0x0100;
            break;
    }
}

static void Task_ButtonConfigMenuRShoulderMain(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    struct OptionsScreen *optionsScreen = buttonConfigMenu->optionsScreen;

    ButtonConfigMenuRenderUI();

    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);

        CommitButtonConfig(buttonConfigMenu, optionsScreen);

        buttonConfigMenu->animFrame = 0;
        buttonConfigMenu->optionsScreen->state = 0;
        gCurTask->main = Task_ButtonMenuConfigCloseAnim;
        return;
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        buttonConfigMenu->focus = 0;
        gCurTask->main = Task_ButtonConfigMenuHandleAButtonComplete;
        return;
    }

    if (gPressedKeys & 0x0004) {
        m4aSongNumStart(106);
        ButtonConfigMenuStartOver();
    }
}

static void ButtonConfigMenuStartOver(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    struct OptionsScreen *optionsScreen = buttonConfigMenu->optionsScreen;
    Sprite *buttonAction = buttonConfigMenu->buttonActions;
    const struct UNK_080D95E8 *actionsText = sButtonConfigActionsText[buttonConfigMenu->language];
    s16 i;

    buttonConfigMenu->aButtonAction = 0;
    buttonConfigMenu->bButtonAction = 1;
    buttonConfigMenu->rShoulderAction = 2;

    CommitButtonConfig(buttonConfigMenu, optionsScreen);

    for (i = 0; i < 3; i++, buttonAction++) {
        buttonAction->graphics.anim = actionsText[i].unk0;
        buttonAction->variant = actionsText[i].unk2;
        UpdateSpriteAnimation(buttonAction);
    }

    gCurTask->main = Task_ButtonConfigMenuHandleStartOver;
}

static void Task_ButtonMenuConfigCloseAnim(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    Sprite *unk4 = buttonConfigMenu->staticElements;
    Sprite *unk124 = buttonConfigMenu->buttonActions;
    Sprite *unk1B4 = buttonConfigMenu->scrollArrows;
    Sprite *unk214 = &buttonConfigMenu->controlFocus;

    s16 baseXPos = buttonConfigMenu->optionsScreen->subMenuXPos;
    s16 i;

    for (i = 0; i < 3; i++, unk4++) {
        unk4->x = baseXPos + 0x150;
    }

    for (; i < 6; i++, unk4++) {
        unk4->x = baseXPos + 0x108;
    }

    for (i = 0; i < 3; i++, unk124++) {
        unk124->x = baseXPos + 0x14C;
    }

    unk214->x = baseXPos + 0xFC;
    unk1B4->x = baseXPos + 0x143;
    unk1B4++;
    unk1B4->x = baseXPos + 0x19D;

    if (++buttonConfigMenu->animFrame < 15) {
        ButtonConfigMenuRenderUI();
        return;
    }

    TaskDestroy(gCurTask);
}

static void ButtonConfigMenuRenderUI(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);
    Sprite *unk4 = buttonConfigMenu->staticElements;
    Sprite *unk124 = buttonConfigMenu->buttonActions;
    Sprite *unk1B4 = buttonConfigMenu->scrollArrows;
    Sprite *unk214 = &buttonConfigMenu->controlFocus;
    s16 i;

    for (i = 0; i < 6; i++, unk4++) {
        DisplaySprite(unk4);
    }

    for (i = 0; i < 3; i++, unk124++) {
        DisplaySprite(unk124);
    }

    for (i = 0; i < 2; i++, unk1B4++) {
        UpdateSpriteAnimation(unk1B4);
        DisplaySprite(unk1B4);
    }

    DisplaySprite(unk214);
}

static void LanguageScreenInitRegisters(struct LanguageScreen *languageScreen)
{
    ScreenFade *fade = &languageScreen->unk1F0;

    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x703;
    gBgCntRegs[2] = 0x4E05;
    gBgCntRegs[3] = 0xDC0E;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0xFFFD;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)VRAM, (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | (((0x18000 + (0x800 * (12))))/(32/8)))); };

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    UpdateScreenFade(&languageScreen->unk1F0);
}

static void LanguageScreenCreateUI(struct LanguageScreen *languageScreen)
{
    s16 selectedLanguage = languageScreen->menuCursor;
    Sprite *headerFooter = languageScreen->headerFooter;
    Sprite *languageOption = languageScreen->languageOptions;
    Sprite *optionOutline = &languageScreen->optionOutline;

    const struct UNK_080D95E8 *languageScreenTitles = sLanguageScreenTitles;
    const struct UNK_080D95E8 *optionText = sLanguageScreenOptionsText;
    const struct UNK_080D95E8 *controlsText;

    s16 titleSize, controlsTextSize, i, yPos;

    if (languageScreen->creatingNewProfile == 0) {
        controlsText = sLanguageScreenEditControlsText;
    } else {
        controlsText = sLanguageScreenNewControlsText;
    }

    titleSize = MaxSpriteSize(languageScreenTitles, 6);
    controlsTextSize = MaxSpriteSize(controlsText, 6);

    languageScreenTitles = &languageScreenTitles[selectedLanguage];
    controlsText = &controlsText[selectedLanguage];

    sub_806A568(headerFooter, 0, titleSize, languageScreenTitles->unk0, 0x3000, 0x78, 0x1A, 0xD,
                languageScreenTitles->unk2, 0);
    headerFooter++;
    sub_806A568(headerFooter, 0, controlsTextSize, controlsText->unk0, 0x3000, 0x78, 0x8A, 0xD, controlsText->unk2, 0);

    for (i = 0, yPos = 40; i < 6; i++, languageOption++, optionText++, yPos += 15) {
        sub_806A568(languageOption, 0, optionText->unk4, optionText->unk0, 0x3000, 0x28, yPos, 0xD, optionText->unk2, 0);
        languageOption->palId = (selectedLanguage ^ i) ? 1 : 0;
    }

    sub_806A568(optionOutline, 0, 0x3F, 0x3BD, 0x3000, 0x26, (selectedLanguage * 15) + 40, 0xC, 5, 0);

    sub_806A568(
# 2964 "src/game/options_screen.c" 3 4
               ((void *)0)
# 2964 "src/game/options_screen.c"
                   , 0, 0, 0x3C4, 0, 0, 0, 0, 0, 0);
    sub_806A568(
# 2965 "src/game/options_screen.c" 3 4
               ((void *)0)
# 2965 "src/game/options_screen.c"
                   , 0, 0, 0x3C4, 0, 0, 0, 0, 1, 0);
    sub_806A568(
# 2966 "src/game/options_screen.c" 3 4
               ((void *)0)
# 2966 "src/game/options_screen.c"
                   , 0, 0, 0x3C3, 0, 0, 0, 0, 0xC, 0);
}

static void Task_LanguageScreenMain(void)
{
    struct LanguageScreen *languageScreen = (void *)((gCurTask)->data);
    ReseedRng();

    if (gRepeatedKeys & (0x0080)) {
        m4aSongNumStart(108);
        if (languageScreen->menuCursor >= 6 - 1) {
            languageScreen->menuCursor = 0;
        } else {
            languageScreen->menuCursor++;
        }
        LanguageScreenHandleLanguageChanged();
    } else if (gRepeatedKeys & 0x0040) {
        m4aSongNumStart(108);
        if (languageScreen->menuCursor < 1) {
            languageScreen->menuCursor = 6 - 1;
        } else {
            languageScreen->menuCursor--;
        }
        LanguageScreenHandleLanguageChanged();
    }

    LanguageScreenRenderUI();

    if ((gRepeatedKeys & (0x0080 | 0x0040))) {
        return;
    }

    if (languageScreen->creatingNewProfile) {
        if (gPressedKeys & (0x0001 | 0x0008)) {
            m4aSongNumStart(106);
            gLoadedSaveGame->language = languageScreen->menuCursor + 1;
            LanguageScreenHandleExit();
        }
        return;
    }

    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);
        languageScreen->optionsScreen->language = languageScreen->menuCursor;
        LanguageScreenHandleExit();
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        LanguageScreenHandleExit();
    }
}

static void LanguageScreenHandleLanguageChanged(void)
{
    struct LanguageScreen *languageScreen = (void *)((gCurTask)->data);
    Sprite *headerFooter = languageScreen->headerFooter;
    Sprite *menuItems = languageScreen->languageOptions;
    Sprite *menuItemOutline = &languageScreen->optionOutline;

    const struct UNK_080D95E8 *titleText = &sLanguageScreenTitles[languageScreen->menuCursor];
    const struct UNK_080D95E8 *controlsText;
    s16 i;

    if (languageScreen->creatingNewProfile != 1) {
        controlsText = &sLanguageScreenEditControlsText[languageScreen->menuCursor];
    } else {
        controlsText = &sLanguageScreenNewControlsText[languageScreen->menuCursor];
    }

    menuItemOutline->y = languageScreen->menuCursor * 15 + 40;

    for (i = 0; i < 6; i++, menuItems++) {
        menuItems->palId = (languageScreen->menuCursor ^ i) ? 1 : 0;
    }

    headerFooter->variant = titleText->unk2;
    headerFooter->graphics.anim = titleText->unk0;
    UpdateSpriteAnimation(headerFooter);

    headerFooter++;
    headerFooter->variant = controlsText->unk2;
    headerFooter->graphics.anim = controlsText->unk0;
    UpdateSpriteAnimation(headerFooter);
}

static void CreateDeleteScreen(struct OptionsScreen *optionsScreen)
{
    struct Task *t = TaskCreate(Task_DeleteScreenFadeIn, sizeof(struct DeleteScreen), 0x2000, 0x0004, 
# 3054 "src/game/options_screen.c" 3 4
                                                                                                         ((void *)0)
# 3054 "src/game/options_screen.c"
                                                                                                             );
    struct DeleteScreen *deleteScreen = (void *)((t)->data);

    deleteScreen->optionsScreen = optionsScreen;
    deleteScreen->confirmationCursor = 1;
    deleteScreen->unusedUnk141 = 0;
    deleteScreen->language = optionsScreen->language;
    deleteScreen->deleteConfirmed = 0;

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 3063 "src/game/options_screen.c" 3 4
   ((void *)0)
# 3063 "src/game/options_screen.c"
   ; });

    DeleteScreenInitRegisters(deleteScreen);
    DeleteScreenCreateBackgroundsUI(deleteScreen);
    DeleteScreenCreateUI(deleteScreen);
}

static void DeleteScreenInitRegisters(struct DeleteScreen *deleteScreen)
{
    ScreenFade *fade = &deleteScreen->unk130;

    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x703;
    gBgCntRegs[2] = 0x4E05;
    gBgCntRegs[3] = 0xDC0E;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0xFFFD;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)VRAM, (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | (((0x18000 + (0x800 * (12))))/(32/8)))); };

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    UpdateScreenFade(&deleteScreen->unk130);
}

static void DeleteScreenCreateUI(struct DeleteScreen *deleteScreen)
{
    s16 language = deleteScreen->language;
    Sprite *option = deleteScreen->options;
    Sprite *optionOutline = &deleteScreen->optionOutline;

    const struct UNK_080D95E8 *titleText = &sDeleteScreenConfirmTitleText[language];
    const struct UNK_080D95E8 *controlsText = &sDeleteScreenControlsText[language];
    const struct UNK_080D95E8 *optionText = sDeleteScreenOptionsText[language];

    s16 confirmationCursor = deleteScreen->confirmationCursor;

    sub_806A568(&deleteScreen->headerFooter[0], 0, titleText->unk4, titleText->unk0, 0x3000, 0x78, 0x32, 0xD,
                titleText->unk2, 0);
    sub_806A568(&deleteScreen->headerFooter[1], 0, controlsText->unk4, controlsText->unk0, 0x3000, 0x78, 0x74, 0xD,
                controlsText->unk2, 0);
    sub_806A568(option, 0, optionText->unk4, optionText->unk0, 0x3000, 0x3A, 0x4C, 0xD, optionText->unk2, 0);

    option->palId = 1;
    option++;
    optionText++;
    sub_806A568(option, 0, optionText->unk4, optionText->unk0, 0x3000, 0x76, 0x4C, 0xD, optionText->unk2, 0);

    sub_806A568(optionOutline, 0, 0x12, 0x3B8, 0x3000, (confirmationCursor * 60) + 56, 0x4C, 0xC, 3, 0);

    sub_806A568(
# 3123 "src/game/options_screen.c" 3 4
               ((void *)0)
# 3123 "src/game/options_screen.c"
                   , 0, 0, 0x3C4, 0, 0, 0, 0, 0, 0);
    sub_806A568(
# 3124 "src/game/options_screen.c" 3 4
               ((void *)0)
# 3124 "src/game/options_screen.c"
                   , 0, 0, 0x3C4, 0, 0, 0, 0, 1, 0);
    sub_806A568(
# 3125 "src/game/options_screen.c" 3 4
               ((void *)0)
# 3125 "src/game/options_screen.c"
                   , 0, 0, 0x3C3, 0, 0, 0, 0, 0xC, 0);
}

static void Task_DeleteScreenConfrimationMain(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);
    Sprite *option = deleteScreen->options;
    Sprite *optionOutline = &deleteScreen->optionOutline;
    s16 i;

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        m4aSongNumStart(108);
        deleteScreen->confirmationCursor = !deleteScreen->confirmationCursor;

        for (i = 0; i < 2; i++, option++) {
            option->palId = (deleteScreen->confirmationCursor ^ i) ? 1 : 0;
        }
        optionOutline->x = deleteScreen->confirmationCursor * 60 + 56;
    }

    DeleteScreenRenderUI();

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        return;
    }

    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);
        if (deleteScreen->confirmationCursor == 0) {
            gCurTask->main = Task_DeleteScreenCreateAbsoluteConfirmation;
        } else {
            gCurTask->main = Task_DeleteScreenHandleExit;
        }
        return;
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        gCurTask->main = Task_DeleteScreenHandleExit;
    }
}

static void Task_DeleteScreenCreateAbsoluteConfirmation(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);

    Sprite *headerFooter = deleteScreen->headerFooter;
    Sprite *option = deleteScreen->options;
    Sprite *optionOutline = &deleteScreen->optionOutline;
    const struct UNK_080D95E8 *titleText = &sDeleteScreenAbsoluteConfirmTitleText[deleteScreen->language];
    s16 i;

    headerFooter->variant = titleText->unk2;
    headerFooter->graphics.anim = titleText->unk0;

    UpdateSpriteAnimation(headerFooter);

    deleteScreen->confirmationCursor = 1;

    for (i = 0; i < 2; i++, option++) {
        option->palId = (deleteScreen->confirmationCursor ^ i) ? 1 : 0;
    }

    optionOutline->x = deleteScreen->confirmationCursor * 60 + 56;

    DeleteScreenRenderUI();
    gCurTask->main = Task_DeleteScreenAbsoluteConfirmMain;
}

static void Task_DeleteScreenAbsoluteConfirmMain(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);
    Sprite *option = deleteScreen->options;
    Sprite *optionOutline = &deleteScreen->optionOutline;
    s16 i;

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        m4aSongNumStart(108);
        deleteScreen->confirmationCursor = deleteScreen->confirmationCursor == 0;

        for (i = 0; i < 2; i++, option++) {
            option->palId = (deleteScreen->confirmationCursor ^ i) ? 1 : 0;
        }
        optionOutline->x = deleteScreen->confirmationCursor * 60 + 56;
    }

    DeleteScreenRenderUI();

    if (gRepeatedKeys & (0x0010 | 0x0020)) {
        return;
    }

    if (gPressedKeys & 0x0001) {
        if (deleteScreen->confirmationCursor == 0) {
            deleteScreen->deleteConfirmed = 1;
            m4aSongNumStart(220);
        } else {
            m4aSongNumStart(106);
        }
        gCurTask->main = Task_DeleteScreenHandleExit;
        return;
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        gCurTask->main = Task_DeleteScreenHandleExit;
    }
}

static void Task_DeleteScreenFadeOutAndExit(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);

    if (!UpdateScreenFade(&deleteScreen->unk130)) {
        DeleteScreenRenderUI();
        return;
    }

    if (deleteScreen->deleteConfirmed) {
        StoreProfileData(deleteScreen->optionsScreen);
        NewSaveGame();
        deleteScreen->optionsScreen->state = 0;
    } else {
        deleteScreen->optionsScreen->state = 2;
    }

    TaskDestroy(gCurTask);
}

static void CreateEditProfileNameScreen(struct PlayerDataMenu *playerDataMenu)
{
    struct Task *t = TaskCreate(Task_ProfileNameScreenFadeIn, sizeof(struct ProfileNameScreen), 0x2000, 4, 
# 3256 "src/game/options_screen.c" 3 4
                                                                                                          ((void *)0)
# 3256 "src/game/options_screen.c"
                                                                                                              );
    struct ProfileNameScreen *profileNameScreen = (void *)((t)->data);
    s16 i;

    profileNameScreen->playerDataMenu = playerDataMenu;
    profileNameScreen->language = playerDataMenu->language;
    profileNameScreen->onCompleteAction = 0;
    profileNameScreen->cursorCol = 0;

    if (profileNameScreen->language == (1 - 1)) {
        profileNameScreen->matrixCursorIndex = 0;
        profileNameScreen->cursorRow = 0;
        profileNameScreen->matrixPageIndex = 0;
    } else {
        profileNameScreen->matrixCursorIndex = 99;
        profileNameScreen->cursorRow = 0;
        profileNameScreen->matrixPageIndex = 99;
    }

    for (i = 0; i < 6; i++) {
        profileNameScreen->nameInput.buffer[i] = playerDataMenu->optionsScreen->profileData.playerName[i];
        if (profileNameScreen->nameInput.buffer[i] == 0xFFFF) {
            break;
        }
    }

    profileNameScreen->nameInput.cursor = i;

    for (; i < 6; i++) {
        profileNameScreen->nameInput.buffer[i] = 0xFFFF;
    }

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 3288 "src/game/options_screen.c" 3 4
   ((void *)0)
# 3288 "src/game/options_screen.c"
   ; });

    ProfileNameScreenInitRegisters(profileNameScreen->language);
    ProfileNameScreenCreateUIBackgrounds(profileNameScreen);
    ProfileNameScreenCreateUIText(profileNameScreen);
    ProfileNameScreenCreateUIContextElements(profileNameScreen);
    ProfileNameScreenCreateInputDisplayUI(profileNameScreen);
}

static void ProfileNameScreenInitRegisters(s16 language)
{
    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x701;
    gBgCntRegs[1] = 0x9606;
    gBgCntRegs[2] = 0x1F0F;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0xFFE8;

    if (language == (1 - 1)) {
        gBgScrollRegs[1][1] = 0xFFD9;
    } else {
        gBgScrollRegs[1][1] = 0x69;
    }

    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

static void ProfileNameScreenCreateUIBackgrounds(struct ProfileNameScreen *profileNameScreen)
{
    ScreenFade *fade = &profileNameScreen->fade;

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    OptionsInitBackground(&profileNameScreen->background, 0, 7, 135, 0x1E, 0x14, 0, 0, 0, 0);
    OptionsInitBackground(&profileNameScreen->charMatrixBackground, 3, 0x1F, 137, 0x1E, 0x14, 0, 2, 0, 0);
    OptionsInitBackground(&profileNameScreen->charMatrix, 1, 0x16, 136, 0x16, 0x2C, 0, 1, 0, 0);
}

static void ProfileNameScreenCreateUIText(struct ProfileNameScreen *profileNameScreen)
{
    Sprite *title = &profileNameScreen->title;
    Sprite *control = profileNameScreen->controls;

    u8 *language = &profileNameScreen->language;
    const struct UNK_080D95E8 *arrowTile = sProfileNameScreenArrowTiles;
    const struct UNK_080D95E8 *endButtonText = &sProfileNameScreenEndButtonText[*language];
    const struct UNK_080D95E8 *titleText;

    if (profileNameScreen->nameInput.cursor > 0) {
        titleText = &sProfileNameScreenEditTitleText[*language];
    } else {
        titleText = &sProfileNameScreenNewTitleText[*language];
    }

    sub_806A568(title, 0, titleText->unk4, titleText->unk0, 0x1000, 3, 0x15, 0xD, titleText->unk2, 0);


    sub_806A568(control, 0, arrowTile->unk4, arrowTile->unk0, 0x1000, 0xDB, 0x70, 0xD, arrowTile->unk2, 0);
    control++;
    arrowTile++;


    sub_806A568(control, 0, arrowTile->unk4, arrowTile->unk0, 0x1000, 0xDB, 0x80, 0xD, arrowTile->unk2, 0);
    control++;


    sub_806A568(control, 0, endButtonText->unk4, endButtonText->unk0, 0x1000, 0xDB, 0x8F, 0xD, endButtonText->unk2, 0);
}

static void ProfileNameScreenCreateUIContextElements(struct ProfileNameScreen *profileNameScreen)
{
    Sprite *focusedCell = profileNameScreen->focusedCell;
    Sprite *scrollArrow = profileNameScreen->scrollArrows;
    const struct UNK_080D95E8 *scrollArrowTile = sProfileNameScreenScrollArrowTiles;
    struct UNK_806B908 nameCharTile;


    sub_806A568(focusedCell, 0, 10, 0x3BA, 0x1000, 0x21, 0x2F, 8, 7, 0);
    focusedCell++;


    nameCharTile = sub_806B908(profileNameScreen->matrixCursorIndex);
    sub_806A568(focusedCell, 0, nameCharTile.unk0, nameCharTile.unk4, 0x1000, 0x21, 0x2F, 7, nameCharTile.unk6, 0);

    sub_806A568(scrollArrow, 0, scrollArrowTile->unk4, scrollArrowTile->unk0, 0x1000, 8, 0x2C, 0xD,
                scrollArrowTile->unk2, 0);
    scrollArrow++;
    scrollArrowTile++;
    sub_806A568(scrollArrow, 0, scrollArrowTile->unk4, scrollArrowTile->unk0, 0x1000, 8, 0x82, 0xD,
                scrollArrowTile->unk2, 0);
}

static void ProfileNameScreenCreateInputDisplayUI(struct ProfileNameScreen *profileNameScreen)
{
    struct UNK_806B908 nameCharTile;
    Sprite *inputDisplayChar = profileNameScreen->nameInput.characterDisplay;
    Sprite *inputDisplayCursor = &profileNameScreen->nameInput.displayCursor;

    s16 i, xPos;
    u16 nameChar;


    u32 yPos = 22;
    for (i = 0, xPos = 160; i < 6; i++, inputDisplayChar++, xPos += 12) {
        nameChar = profileNameScreen->nameInput.buffer[i];
        if (nameChar == 0xFFFF) {
            nameChar = 0x11;
        }

        nameCharTile = sub_806B908(nameChar);
        sub_806A568(inputDisplayChar, 0, nameCharTile.unk0, nameCharTile.unk4, 0x1000, xPos, yPos, 8, nameCharTile.unk6,
                    0);
    }

    sub_806A568(inputDisplayCursor, 0, 2, 0x3BA, 0x1000,
                profileNameScreen->nameInput.cursor * 12 + 161, 21, 5, 6, 0);
}

static void Task_ProfileNameScreenMain(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);
    struct NameInputDisplay *nameInput = &profileNameScreen->nameInput;

    ProfileNameScreenRenderUI();

    ({ u32 rand1, rand2, rand3; rand1 ^= (Random() << 16); rand1 ^= Random(); rand3 ^= rand1; SeedRng(rand2, rand3); rand1 ^= (Random() << 16); rand1 ^= Random(); rand2 ^= rand1; SeedRng(rand2, rand3); });



    if (ProfileNameScreenHandleShoulderInput()) {
        return;
    }

    if (ProfileNameScreenHandleDpadInput()) {
        return;
    }


    if (gRepeatedKeys & 0x0001) {

        if (profileNameScreen->cursorCol < 11) {

            if (profileNameScreen->matrixCursorIndex == 11 - 1
                || profileNameScreen->matrixCursorIndex == 11 * 2 - 1) {
                s16 mode = 2;
                if (profileNameScreen->matrixCursorIndex == 11 - 1) {
                    mode = 1;
                }

                if (nameInput->cursor < 6) {
                    if (nameInput->buffer[nameInput->cursor] == 0xFFFF) {
                        m4aSongNumStart(106);
                        if (sub_806BA14(mode, nameInput->buffer[nameInput->cursor - 1])) {
                            nameInput->buffer[nameInput->cursor - 1] = sub_806A664(mode, nameInput->buffer[nameInput->cursor - 1]);
                        } else {
                            nameInput->buffer[nameInput->cursor] = profileNameScreen->matrixCursorIndex;
                            if (nameInput->cursor < 6 - 1) {
                                nameInput->cursor++;
                            } else {
                                nameInput->cursor = 6;

                                profileNameScreen->cursorCol = 11;
                                profileNameScreen->cursorRow = 6;
                            }
                        }
                    } else {
                        if (sub_806BA14(mode, nameInput->buffer[nameInput->cursor])) {
                            m4aSongNumStart(106);
                            nameInput->buffer[nameInput->cursor] = sub_806A664(mode, nameInput->buffer[nameInput->cursor]);
                        } else {
                            m4aSongNumStart(106);
                            nameInput->buffer[nameInput->cursor] = profileNameScreen->matrixCursorIndex;
                        }
                    }
                } else {
                    if (sub_806BA14(mode, nameInput->buffer[nameInput->cursor - 1])) {
                        m4aSongNumStart(106);
                        nameInput->buffer[nameInput->cursor - 1] = sub_806A664(mode, nameInput->buffer[nameInput->cursor - 1]);
                    }
                    nameInput->cursor = 6;
                    profileNameScreen->cursorCol = 11;
                    profileNameScreen->cursorRow = 6;
                }
            }

            if (nameInput->cursor < 6) {
                if (profileNameScreen->matrixCursorIndex != 11 - 1
                    && profileNameScreen->matrixCursorIndex != 11 * 2 - 1) {
                    m4aSongNumStart(106);
                    nameInput->buffer[nameInput->cursor] = profileNameScreen->matrixCursorIndex;
                    if (nameInput->cursor < 6 - 1) {
                        nameInput->cursor++;
                    }
                }
            }
            return;
        }


        switch (profileNameScreen->cursorRow) {
            case 4:
                if (nameInput->cursor == 0) {
                    return;
                }
                nameInput->cursor--;
                m4aSongNumStart(108);
                return;
            case 5:
                if (nameInput->cursor > 6 - 2) {
                    return;
                }
                if (nameInput->buffer[nameInput->cursor] == 0xFFFF) {
                    nameInput->buffer[nameInput->cursor] = 0x11;
                }
                nameInput->cursor++;
                m4aSongNumStart(108);
                return;
            case 6:
                if (!sub_806B988(nameInput->buffer)) {
                    m4aSongNumStart(107);
                    return;
                }
                m4aSongNumStart(106);
                ProfileNameScreenInputComplete();
                return;
        }
        return;
    }

    if (gPressedKeys & 0x0008) {
        if (profileNameScreen->cursorCol == 11
            && profileNameScreen->cursorRow == 6) {
            if (!sub_806B988(nameInput->buffer)) {
                m4aSongNumStart(107);
                return;
            }
            m4aSongNumStart(106);
            ProfileNameScreenInputComplete();
            return;
        } else {


            m4aSongNumStart(106);
            profileNameScreen->cursorCol = 11;
            profileNameScreen->cursorRow = 6;
        }
        return;
    }


    if (gRepeatedKeys & 0x0002) {
        s16 i;
        m4aSongNumStart(107);
        if ((nameInput->cursor > 0 && nameInput->buffer[nameInput->cursor] == 0xFFFF)
            || nameInput->cursor > 6 - 1) {
            nameInput->cursor--;
        }

        for (i = nameInput->cursor; i < 6 - 1; i++) {
            nameInput->buffer[i] = nameInput->buffer[i + 1];
        }
        nameInput->buffer[6 - 1] = 0xFFFF;
    }
}

static bool16 ProfileNameScreenHandleShoulderInput(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);

    if (gRepeatedKeys & 0x0200) {
        if (profileNameScreen->nameInput.cursor > 0) {
            profileNameScreen->nameInput.cursor--;
            if (profileNameScreen->nameInput.cursor < 6 - 1) {
                if (profileNameScreen->nameInput.buffer[profileNameScreen->nameInput.cursor + 1] == 0xFFFF
                    && !sub_806B9C8(profileNameScreen->nameInput.buffer[profileNameScreen->nameInput.cursor])) {
                    profileNameScreen->nameInput.buffer[profileNameScreen->nameInput.cursor] = 0xFFFF;
                }
            }
            m4aSongNumStart(108);
        }
        return 1;
    }

    if (gRepeatedKeys & 0x0100) {
        if (profileNameScreen->nameInput.cursor < 6 - 1) {
            if (profileNameScreen->nameInput.buffer[profileNameScreen->nameInput.cursor] == 0xFFFF) {
                profileNameScreen->nameInput.buffer[profileNameScreen->nameInput.cursor] = 0x11;
            }
            profileNameScreen->nameInput.cursor++;
            m4aSongNumStart(108);
        }
        return 1;
    }

    return 0;
}

static bool16 ProfileNameScreenHandleDpadInput(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);

    if (!(gRepeatedKeys & (0x00F0))) {
        return 0;
    }

    m4aSongNumStart(108);

    if (gRepeatedKeys & 0x0040) {
        if (profileNameScreen->cursorCol < 11) {
            if (profileNameScreen->cursorRow != 0) {
                profileNameScreen->cursorRow--;
                return 1;
            }

            if (profileNameScreen->matrixPageIndex > 0) {
                gBgScrollRegs[1][1] -= 16;
                profileNameScreen->matrixPageIndex -= 11;
            } else {
                profileNameScreen->cursorRow = 7 - 1;
                gBgScrollRegs[1][1] = 201;
                profileNameScreen->matrixPageIndex = 11 *(22 - 7);
            }
        } else {

            if (profileNameScreen->cursorRow > 4) {
                profileNameScreen->cursorRow--;
            } else {
                profileNameScreen->cursorRow = 6;
            }
        }
        return 1;
    }

    if (gRepeatedKeys & 0x0080) {
        if (profileNameScreen->cursorCol < 11) {
            if (profileNameScreen->cursorRow < 6) {
                profileNameScreen->cursorRow++;
            } else {
                if (profileNameScreen->matrixPageIndex < 11 *(22 - 7)) {
                    gBgScrollRegs[1][1] += 16;
                    profileNameScreen->matrixPageIndex += 11;
                } else {
                    gBgScrollRegs[1][1] = -39;
                    profileNameScreen->cursorRow = 0;
                    profileNameScreen->matrixPageIndex = 0;
                }
            }
        } else {
            if (profileNameScreen->cursorRow < 6) {
                profileNameScreen->cursorRow++;
            } else {
                profileNameScreen->cursorRow = 4;
            }
        }
        return 1;
    }

    if (gRepeatedKeys & 0x0020) {
        if (profileNameScreen->cursorCol != 0) {
            profileNameScreen->cursorCol--;
        } else {


            if (profileNameScreen->cursorRow < 4) {
                profileNameScreen->cursorCol = 11 - 1;
            } else {
                profileNameScreen->cursorCol = 11;
            }
        }
        return 1;
    }

    if (gRepeatedKeys & 0x0010) {


        if (profileNameScreen->cursorRow < 4) {
            if (profileNameScreen->cursorCol < 11 - 1) {
                profileNameScreen->cursorCol++;
            } else {
                profileNameScreen->cursorCol = 0;
            }
        } else {
            if (profileNameScreen->cursorCol < 11) {
                profileNameScreen->cursorCol++;
            } else {
                profileNameScreen->cursorCol = 0;
            }
        }
        return 1;
    }


    return 0;
}

static void ProfileNameScreenInputComplete(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &profileNameScreen->fade;
    struct NameInputDisplay *nameInput = &profileNameScreen->nameInput;
    s16 i;


    if (profileNameScreen->onCompleteAction == 0) {
        struct OptionsScreenProfileData *profileData = &profileNameScreen->playerDataMenu->optionsScreen->profileData;
        for (i = 0; i < 6; i++) {
            profileData->playerName[i] = nameInput->buffer[i];
        }
    }

    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = ProfileNameScreenFadeOutAndExit;
}

static void ProfileNameScreenFadeOutAndExit(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &profileNameScreen->fade;
    struct NameInputDisplay *nameInput = &profileNameScreen->nameInput;
    s16 onCompleteAction = profileNameScreen->onCompleteAction;
    s16 i;

    if (!UpdateScreenFade(fade)) {
        ProfileNameScreenRenderUI();
        return;
    }

    if (onCompleteAction == 0) {
        profileNameScreen->playerDataMenu->state = 0;
        TaskDestroy(gCurTask);
        return;
    }

    if (onCompleteAction == 2) {
        NewSaveGame();
    }

    for (i = 0; i < 6; i++) {
        gLoadedSaveGame->playerName[i] = nameInput->buffer[i];
    }
    WriteSaveGame();
    TasksDestroyInPriorityRange(0, 0xFFFF);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;

    if (onCompleteAction == 1) {
        CreateMultiplayerModeSelectScreen();
    } else {



        CreateTitleScreen();

    }
}

static void ProfileNameScreenRenderUI(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);

    Sprite *title = &profileNameScreen->title;
    Sprite *controls = profileNameScreen->controls;
    Sprite *focusedCell = profileNameScreen->focusedCell;
    Sprite *scrollArrow = profileNameScreen->scrollArrows;
    Sprite *inputDisplayChar = profileNameScreen->nameInput.characterDisplay;
    Sprite *inputDisplayCursor = &profileNameScreen->nameInput.displayCursor;
    struct UNK_806B908 charMatrixCursorTile;
    struct UNK_806B908 nameCharTile;

    s16 i;
    u16 *nameChar;

    DisplaySprite(title);

    for (i = 0; i < 3; i++, controls++) {
        DisplaySprite(controls);
    }

    if (profileNameScreen->cursorCol < 11) {

        focusedCell->graphics.anim = 0x3BA;
        focusedCell->variant = 7;
        focusedCell->x = profileNameScreen->cursorCol * 16 + 32;
        focusedCell->y = profileNameScreen->cursorRow * 16 + 47;
        UpdateSpriteAnimation(focusedCell);
        DisplaySprite(focusedCell);
        focusedCell++;


        profileNameScreen->matrixCursorIndex
            = profileNameScreen->matrixPageIndex + profileNameScreen->cursorRow * 11 + profileNameScreen->cursorCol;


        charMatrixCursorTile = sub_806B908(profileNameScreen->matrixCursorIndex);
        focusedCell->graphics.anim = charMatrixCursorTile.unk4;
        focusedCell->variant = charMatrixCursorTile.unk6;
        focusedCell->x = profileNameScreen->cursorCol * 16 + 32;
        focusedCell->y = profileNameScreen->cursorRow * 16 + 47;
        UpdateSpriteAnimation(focusedCell);
        DisplaySprite(focusedCell);
    } else {

        focusedCell->graphics.anim = 0x3BA;
        focusedCell->variant = 8;
        focusedCell->x = 0xCB;
        focusedCell->y = profileNameScreen->cursorRow * 16 + 39;
        UpdateSpriteAnimation(focusedCell);
        DisplaySprite(focusedCell);
    }


    UpdateSpriteAnimation(scrollArrow);
    scrollArrow++;

    UpdateSpriteAnimation(scrollArrow);

    if (profileNameScreen->cursorCol < 11) {

        scrollArrow = profileNameScreen->scrollArrows;
        if (profileNameScreen->matrixCursorIndex > 11 - 1) {
            DisplaySprite(scrollArrow);
        }
        scrollArrow++;


        if (profileNameScreen->matrixCursorIndex < 11 * (22 - 1)) {
            DisplaySprite(scrollArrow);
        }
    }

    if (profileNameScreen->nameInput.cursor < 6) {
        inputDisplayCursor->x = profileNameScreen->nameInput.cursor * 12 + 161;
        DisplaySprite(inputDisplayCursor);
    }


    for (i = 0, nameChar = profileNameScreen->nameInput.buffer; i < 6 && *nameChar != 0xFFFF;
         i++, inputDisplayChar++, nameChar++) {
        nameCharTile = sub_806B908(*nameChar);
        inputDisplayChar->graphics.anim = nameCharTile.unk4;
        inputDisplayChar->variant = nameCharTile.unk6;
        UpdateSpriteAnimation(inputDisplayChar);
        DisplaySprite(inputDisplayChar);
    }
}

static void CreateTimeRecordsScreen(struct PlayerDataMenu *playerDataMenu)
{
    struct Task *t = TaskCreate(Task_TimeRecordsScreenChoiceViewFadeIn, sizeof(struct TimeRecordsScreen), 0x2000, 4, 
# 3853 "src/game/options_screen.c" 3 4
                                                                                                                    ((void *)0)
# 3853 "src/game/options_screen.c"
                                                                                                                        );
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((t)->data);
    s16 availableCharacters;

    ({ for (availableCharacters = 1; availableCharacters < NUM_CHARACTERS; availableCharacters++) { if (!((((gLoadedSaveGame->unlockedCharacters)) >> (availableCharacters)) & 1)) { break; } }; });

    timeRecordsScreen->playerDataMenu = playerDataMenu;
    timeRecordsScreen->character = 0;
    timeRecordsScreen->zone = 0;
    timeRecordsScreen->act = 0;
    timeRecordsScreen->animFrame = 0;
    timeRecordsScreen->unusedUnk708 = 0;
    timeRecordsScreen->availableCharacters = availableCharacters;

    for (availableCharacters = 0; availableCharacters < NUM_CHARACTERS; availableCharacters++) {
        timeRecordsScreen->unlockedCourses[availableCharacters] = gLoadedSaveGame->unlockedLevels[availableCharacters];
    }

    timeRecordsScreen->language = playerDataMenu->language;
    timeRecordsScreen->isBossMode = 0;
    timeRecordsScreen->view = 0;

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 3875 "src/game/options_screen.c" 3 4
   ((void *)0)
# 3875 "src/game/options_screen.c"
   ; });

    TimeRecordScreenInitRegisters();
    TimeRecordsScreenCreateChoiceViewBackgroundsUI(timeRecordsScreen);
    TimeRecordsScreenCreateChoiceViewUI(timeRecordsScreen);
}

static void TimeRecordScreenInitRegisters(void)
{
    gDispCnt = 0x1340;
    gBgCntRegs[0] = 0x703;
    gBgCntRegs[1] = 0xF06;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

static void TimeRecordsScreenCreateChoiceViewBackgroundsUI(struct TimeRecordsScreen *timeRecordsScreen)
{
    ScreenFade *fade = &timeRecordsScreen->fade;
    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = ((s32)((0)*256));
    fade->speed = ((s32)((1.0)*256));
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    OptionsInitBackground(&timeRecordsScreen->coursesViewCharacterBackground, 0, 7, 137, 0x1e, 0x14, 0, 0, 0, 0);
    OptionsInitBackground(&timeRecordsScreen->coursesViewCharacter, 1, 0xF, 138, 0x1e, 0x14, 0, 1, 0, 0);
}

static void TimeRecordsScreenCreateChoiceViewUI(struct TimeRecordsScreen *timeRecordsScreen)
{
    Sprite *title = &timeRecordsScreen->choiceViewTitleOrZoneSubtitle;
    Sprite *scrollArrow = timeRecordsScreen->choiceViewScrollArrows;
    Sprite *choiceItem = timeRecordsScreen->choiceViewItemsOrZoneTitle;
    const struct UNK_080D95E8 *titleText = &sTimeRecordsChoiceViewTitles[timeRecordsScreen->language];
    const struct UNK_080D95E8 *choiceText = sTimeRecordsScreenChoices[timeRecordsScreen->language];
# 3928 "src/game/options_screen.c"
    sub_806A568(title, 0, titleText->unk4, titleText->unk0,



                0x1000,

                4, 0x1A, 5, titleText->unk2, 0);

    sub_806A568(choiceItem, 0, choiceText->unk4, choiceText->unk0,



                0x1000,

                0x28, 0x54, 5, choiceText->unk2, 0);

    choiceItem++;
    choiceText++;
    sub_806A568(choiceItem, 0, choiceText->unk4, choiceText->unk0,



                0x1000,

                0x86, 0x54, 5, choiceText->unk2, 0);

    sub_806A568(scrollArrow, 0, 2, 0x3B6,



                0x1000,

                100, 0x4B, 6, 8, 0);
    scrollArrow++;
    sub_806A568(scrollArrow, 0, 2, 0x3B6,



                0x1000,

                0x8C, 0x4B, 6, 9, 0);
}

static void Task_TimeRecordsScreenModeChoiceMain(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    Sprite *unk4C = timeRecordsScreen->choiceViewItemsOrZoneTitle;

    if (gRepeatedKeys & (0x0020 | 0x0010)) {
        m4aSongNumStart(108);

        timeRecordsScreen->isBossMode = !timeRecordsScreen->isBossMode;

        if (!timeRecordsScreen->isBossMode) {
            unk4C->palId = 0;
            unk4C++;
            unk4C->palId = 0;
        } else {
            unk4C->palId = 1;
            unk4C++;
            unk4C->palId = 0xFF;
        }
    }

    TimeRecordsScreenRenderModeChoiceUI();

    if (gRepeatedKeys & (0x0020 | 0x0010)) {
        return;
    }

    if (gPressedKeys & 0x0001) {
        m4aSongNumStart(106);
        TimeRecordsScreenShowCoursesView();
        return;
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        TimeRecordsScreenHandleExit();
    }
}

static void CreateTimeRecordsScreenAtCoursesView(struct PlayerDataMenu *playerDataMenu)
{
    struct Task *t = TaskCreate(Task_TimeRecordsScreenCreateTimesUI, sizeof(struct TimeRecordsScreen), 0x2000, 4, 
# 4012 "src/game/options_screen.c" 3 4
                                                                                                                 ((void *)0)
# 4012 "src/game/options_screen.c"
                                                                                                                     );
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((t)->data);
    s16 i;

    ({ for (i = 1; i < NUM_CHARACTERS; i++) { if (!((((gLoadedSaveGame->unlockedCharacters)) >> (i)) & 1)) { break; } }; });

    timeRecordsScreen->playerDataMenu = playerDataMenu;
    timeRecordsScreen->timeRecords = 
# 4019 "src/game/options_screen.c" 3 4
                                    ((void *)0)
# 4019 "src/game/options_screen.c"
                                        ;
    timeRecordsScreen->character = 0;
    timeRecordsScreen->zone = 0;
    timeRecordsScreen->act = 0;
    timeRecordsScreen->animFrame = 0;
    timeRecordsScreen->unusedUnk708 = 0;
    timeRecordsScreen->availableCharacters = i;

    for (i = 0; i < NUM_CHARACTERS; i++) {
        timeRecordsScreen->unlockedCourses[i] = gLoadedSaveGame->unlockedLevels[i];
    }

    timeRecordsScreen->language = playerDataMenu->language;
    timeRecordsScreen->isBossMode = 0;
    timeRecordsScreen->view = 1;

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 4035 "src/game/options_screen.c" 3 4
   ((void *)0)
# 4035 "src/game/options_screen.c"
   ; });

    TimeRecordsScreenInitRegisters();
    TimeRecordsScreenCreateCoursesViewBackgroundsUI(timeRecordsScreen);
    TimeRecordsScreenCreateCoursesViewUI(timeRecordsScreen);
}

static void TimeRecordsScreenInitRegisters(void)
{
    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x703;
    gBgCntRegs[1] = 0x5606;
    gBgCntRegs[2] = 0x5E09;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0xff58;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0xff58;
    gBgScrollRegs[2][1] = 0x10;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    ({ gBgSprites_Unknown1[(1)] = 0; gBgSprites_Unknown2[(1)][0] = 0; gBgSprites_Unknown2[(1)][1] = 0; gBgSprites_Unknown2[(1)][2] = 255; gBgSprites_Unknown2[(1)][3] = 64; });

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)(((u8*)&VRAM[0]) + (0x4000 * (1))), (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(Background))/(32/8)))); };

    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 64; });

    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (void *)(((u8*)&VRAM[0]) + (0x4000 * (2))), (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(Background))/(32/8)))); };
}

static void TimeRecordsScreenCreateCoursesViewBackgroundsUI(struct TimeRecordsScreen *timeRecordsScreen)
{
    ScreenFade *fade = &timeRecordsScreen->fade;
    u8 character;
    if (timeRecordsScreen->character != 0xFF) {
        character = timeRecordsScreen->character;
    } else {
        character = 0;
    }

    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    OptionsInitBackground(&timeRecordsScreen->coursesViewBackground, 0, 7, 139, 0x1e, 0x14, 0, 0, 0, 0);
    OptionsInitBackground(&timeRecordsScreen->coursesViewCharacterBackground, 1, 0x16,
                          sTimeRecordsCharacterAssets[character][0], 9, 0x14, 0, 1, 0, 0);
    OptionsInitBackground(&timeRecordsScreen->coursesViewCharacter, 2, 0x1E, sTimeRecordsCharacterAssets[character][1], 9,
                          0x14, 0, 2, 0, 0);
}

static void TimeRecordsScreenCreateCoursesViewUI(struct TimeRecordsScreen *timeRecordsScreen)
{
    Sprite *unk284 = timeRecordsScreen->timeRecordDisplays;
    Sprite *zoneText = timeRecordsScreen->choiceViewItemsOrZoneTitle;
    Sprite *actText = timeRecordsScreen->actTitle;
    Sprite *zoneSubTitle = &timeRecordsScreen->choiceViewTitleOrZoneSubtitle;
    Sprite *scrollArrow = timeRecordsScreen->choiceViewScrollArrows;

    u8 language = timeRecordsScreen->language;
    u8 zone = timeRecordsScreen->zone;
    u8 act = timeRecordsScreen->act;

    const struct UNK_080D95E8 *zoneSubText, *titleDigit, *r0;

    s16 spriteSize;

    sub_806A568(scrollArrow, 0, 2, 0x41A, 0x1400, 0xE, 0x20, 2, 0, 0);
    scrollArrow++;
    sub_806A568(scrollArrow, 0, 2, 0x41A, 0x1000, 0x9C, 0x20, 2, 0, 0);
    scrollArrow++;
    sub_806A568(scrollArrow, 0, 2, 0x41A, 0x1000, 0xD0, 0x18, 3, 1, 0);
    scrollArrow++;
    sub_806A568(scrollArrow, 0, 2, 0x41A, 0x1800, 0xD0, 0x8C, 3, 1, 0);

    sub_806A568(unk284, 0, 0x10, 0x417, 0x1000, 4, 0x50, 5, 0xB, 0);
    unk284++;
    sub_806A568(unk284, 0, 0x10, 0x417, 0x1000, 0xC, 0x68, 5, 0xC, 0);
    unk284++;
    sub_806A568(unk284, 0, 0x10, 0x417, 0x1000, 0x14, 0x80, 5, 0xD, 0);






    spriteSize = MaxSpriteSize(sTimeRecordsZoneActTitleDigits, (sizeof(sTimeRecordsZoneActTitleDigits) / sizeof((sTimeRecordsZoneActTitleDigits)[0])));


    sub_806A568(zoneText, 0, 0x14, 0x418, 0x1000, 0x10, 0xC, 3, 0, 0);




    zoneText++;
    titleDigit = &sTimeRecordsZoneActTitleDigits[zone];




    sub_806A568(zoneText, 0, spriteSize, titleDigit->unk0, 0x1000, 0x5E, 0xC, 3, titleDigit->unk2, 0);

    if (!timeRecordsScreen->isBossMode) {

        sub_806A568(actText, 0, 0x10, 0x418, 0x1000, 0x4E, 0x20, 3, 1, 0);
        actText++;

        titleDigit = &sTimeRecordsZoneActTitleDigits[act];

        sub_806A568(actText, 0, spriteSize, titleDigit->unk0, 0x1000, 0x88, 0x20, 3, titleDigit->unk2, 0);
    } else {

        sub_806A568(actText, 0, 0x14, 0x418, 0x1000, 0x4e, 0x20, 3, 9, 0);
    }

    if (!timeRecordsScreen->isBossMode) {
        zoneSubText = &sZoneNameTitles[language][timeRecordsScreen->zone];
    } else {
        zoneSubText = &sZoneBossTitles[language][timeRecordsScreen->zone];
    }



    spriteSize = MaxSpriteSize(zoneSubText, 7);
    sub_806A568(zoneSubTitle, 0, spriteSize, zoneSubText->unk0, 0x1000, 0x9a, 0x44, 3, zoneSubText->unk2, 0);
}

static inline u16 *LoadCourseTimes(struct TimeRecordsScreen *timeRecordsScreen)
{
    u8 act;

    if (!timeRecordsScreen->isBossMode) {
        act = timeRecordsScreen->act;
    } else {
        act = 2;
    }



    if (timeRecordsScreen->view != 2) {
        return timeRecordsScreen->playerDataMenu->optionsScreen->profileData.timeRecords
            .table[timeRecordsScreen->character][timeRecordsScreen->zone][act];
    } else {
        return timeRecordsScreen->timeRecords->table[timeRecordsScreen->character][timeRecordsScreen->zone][act];
    }
}

static void TimeRecordsScreenCreateTimesUI(struct TimeRecordsScreen *timeRecordsScreen)
{
    struct TimeRecordDisplay *timeRecordDisplay = timeRecordsScreen->timeDisplays;

    s16 digitSize = sTimeRecordDigitTiles[10].unk4;
    Sprite *minuteDigit, *secondDigit, *milliDigit, *deliminator;

    u16 *courseTimes = LoadCourseTimes(timeRecordsScreen);
    s16 i;

    for (i = 0; i < 3; i++, timeRecordDisplay++) {
        const struct UNK_080D95E8 *digit;
        s16 millis, minutes, seconds;
        u16 timeValue;

        deliminator = timeRecordDisplay->deliminators;
        minuteDigit = &timeRecordDisplay->minute;
        secondDigit = timeRecordDisplay->seconds;
        milliDigit = timeRecordDisplay->millis;

        timeValue = courseTimes[i];
        if (timeValue < ((int)(((10 * 60.) + 0) * 60))) {
            s16 temp = timeValue % 60;
            u16 temp2 = timeValue - temp;
            millis = gMillisUnpackTable[temp][0] * 10;
            millis += gMillisUnpackTable[temp][1];
            seconds = temp2 / 60;
            minutes = seconds / 60;
            seconds += minutes * -60;
        } else {
            millis = 99;
            seconds = 59;
            minutes = 9;
        }

        digit = &sTimeRecordDigitTiles[10];
        sub_806A568(deliminator, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 48), (i * 24 + 84), 8, digit->unk2, 0);

        deliminator++;
        sub_806A568(deliminator, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 96), (i * 24 + 84), 8, digit->unk2, 0);

        digit = &sTimeRecordDigitTiles[minutes];
        sub_806A568(minuteDigit, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 0x20), (i * 24 + 84), 8, digit->unk2, 0);

        digit = &sTimeRecordDigitTiles[((seconds) / 10)];
        sub_806A568(secondDigit, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 0x40), (i * 24 + 84), 8, digit->unk2, 0);

        secondDigit++;
        digit = &sTimeRecordDigitTiles[((seconds) % 10)];
        sub_806A568(secondDigit, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 0x50), (i * 24 + 84), 8, digit->unk2, 0);

        digit = &sTimeRecordDigitTiles[((millis) / 10)];
        sub_806A568(milliDigit, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 0x70), (i * 24 + 84), 8, digit->unk2, 0);

        milliDigit++;
        digit = &sTimeRecordDigitTiles[((millis) % 10)];
        sub_806A568(milliDigit, 0, digitSize, digit->unk0, 0x3000, (i * 8 + 0x80), (i * 24 + 84), 8, digit->unk2, 0);
    }
}

static void TimeRecordsScreenRefreshTimesUI(struct TimeRecordsScreen *timeRecordsScreen)
{

    struct TimeRecordDisplay *timeDisplay = timeRecordsScreen->timeDisplays;
    Sprite *minuteDigit, *secondDigit, *milliDigit, *deliminator;

    u16 *courseTimes = LoadCourseTimes(timeRecordsScreen);
    s16 i;

    for (i = 0; i < 3; i++, timeDisplay++) {
        const struct UNK_080D95E8 *digitTile;
        s16 millis, minutes, seconds;
        u16 timeValue;

        minuteDigit = &timeDisplay->minute;
        secondDigit = timeDisplay->seconds;
        milliDigit = timeDisplay->millis;
        deliminator = timeDisplay->deliminators;

        timeValue = courseTimes[i];
        if (timeValue < ((int)(((10 * 60.) + 0) * 60))) {
            s16 temp = timeValue % 60;
            u16 temp2 = timeValue - temp;


            millis = gMillisUnpackTable[temp][0] * 10 + gMillisUnpackTable[temp][1];
            seconds = temp2 / 60;
            minutes = seconds / 60;
            seconds += minutes * -60;
        } else {
            millis = 99;
            seconds = 59;
            minutes = 9;
        }

        digitTile = &sTimeRecordDigitTiles[minutes];

        minuteDigit->graphics.anim = digitTile->unk0;
        minuteDigit->variant = digitTile->unk2;
        minuteDigit->x = (i * 8) + 272;
        UpdateSpriteAnimation(minuteDigit);

        deliminator->x = (i * 8) + 288;
        deliminator++;

        digitTile = &sTimeRecordDigitTiles[((seconds) / 10)];
        secondDigit->graphics.anim = digitTile->unk0;
        secondDigit->variant = digitTile->unk2;
        secondDigit->x = (i * 8) + 304;
        UpdateSpriteAnimation(secondDigit);

        secondDigit++;
        digitTile = &sTimeRecordDigitTiles[((seconds) % 10)];
        secondDigit->graphics.anim = digitTile->unk0;
        secondDigit->variant = digitTile->unk2;
        secondDigit->x = (i * 8) + 320;
        UpdateSpriteAnimation(secondDigit);

        deliminator->x = (i * 8) + 336;

        digitTile = &sTimeRecordDigitTiles[((millis) / 10)];
        milliDigit->graphics.anim = digitTile->unk0;
        milliDigit->variant = digitTile->unk2;
        milliDigit->x = (i * 8) + 352;
        UpdateSpriteAnimation(milliDigit);

        milliDigit++;
        digitTile = &sTimeRecordDigitTiles[((millis) % 10)];
        milliDigit->graphics.anim = digitTile->unk0;
        milliDigit->variant = digitTile->unk2;
        milliDigit->x = (i * 8) + 368;
        UpdateSpriteAnimation(milliDigit);
    }
}

static void Task_TimeRecordsScreenHandleCharacterChange(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    u32 character;

    if (timeRecordsScreen->character != 0xFF) {
        character = timeRecordsScreen->character;
    } else {
        character = CHARACTER_SONIC;
    }

    TimeRecordsScreenRenderCoursesViewUI(1);
    gBgScrollRegs[1][0] = 0xFF10;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0xFF10;
    gBgScrollRegs[2][1] = 0x10;

    OptionsInitBackground(&timeRecordsScreen->coursesViewCharacterBackground, 1, 0x16, sTimeRecordsCharacterAssets[character][0], 9, 0x14,
                          0, 1, 0, 0);
    OptionsInitBackground(&timeRecordsScreen->coursesViewCharacter, 2, 0x1E, sTimeRecordsCharacterAssets[character][1], 9, 0x14, 0, 2, 0,
                          0);

    gCurTask->main = Task_TimeRecordsScreenCharacterChangeAnimIn;
}

static void Task_TimeRecordsScreenCharacterChangeAnimIn(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);

    if (++timeRecordsScreen->animFrame < 5) {
        gBgScrollRegs[1][0] = timeRecordsScreen->animFrame * 18 - 426;
    }

    if (timeRecordsScreen->animFrame > 6) {
        gBgScrollRegs[2][0] = (timeRecordsScreen->animFrame - 6) * 18 - 426;
    }

    TimeRecordsScreenRenderCoursesViewUI(1);

    if (timeRecordsScreen->animFrame > 9) {
        timeRecordsScreen->animFrame = 0;
        gCurTask->main = Task_TimeRecordsScreenCourseChangeAnim;
    }
}

static void Task_TimeRecordsScreenCourseChangeAnim(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    s16 i;

    timeRecordsScreen->animFrame++;

    for (i = 0; i < 3; i++) {
        TimeRecordsScreenRenderTimeRowAnimFrame(i, timeRecordsScreen->animFrame + i * -8);
    }

    TimeRecordsScreenRenderCoursesViewUI(0);

    if (timeRecordsScreen->animFrame > 31) {
        timeRecordsScreen->animFrame = 0;
        gCurTask->main = Task_TimeRecordsScreenCoursesViewMain;
    }
}

static void TimeRecordsScreenRenderTimeRowAnimFrame(s16 rowIndex, s16 frame)
{






    struct TimeRecordsScreen *trs = (void *)((gCurTask)->data);
    struct TimeRecordDisplay *timeDisplay = &trs->timeDisplays[rowIndex];


    if (frame > 0 && frame < 9) {
        Sprite *deliminator = timeDisplay->deliminators;
        Sprite *minuteDigit = &timeDisplay->minute;
        Sprite *secondDigit = timeDisplay->seconds;
        Sprite *milliDigit = timeDisplay->millis;

        s16 baseXPos = (8 - frame) * 30 + (rowIndex * 8);
        minuteDigit->x = baseXPos + 0x20;
        deliminator->x = baseXPos + 0x30;
        deliminator++;
        deliminator->x = baseXPos + 0x60;

        secondDigit->x = baseXPos + 0x40;
        secondDigit++;
        secondDigit->x = baseXPos + 0x50;

        milliDigit->x = baseXPos + 0x70;
        milliDigit++;
        milliDigit->x = baseXPos + 0x80;
    }
}

static void Task_TimeRecordsScreenCoursesViewMain(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    s16 availableCourses = timeRecordsScreen->unlockedCourses[timeRecordsScreen->character];
    s32 temp;
    if (availableCourses == 0) {
        availableCourses = 1;
    }

    temp = (u16)availableCourses;
    if (temp > 0x1B) {
        availableCourses = 0x1B;
    }
    TimeRecordsScreenRenderCoursesViewUI(0);

    if (gRepeatedKeys & (0x0020 | 0x0010)) {
        if (timeRecordsScreen->view == 2 && availableCourses == 1) {
            return;
        }

        m4aSongNumStart(108);
        if (gRepeatedKeys & 0x0020) {
            if (!timeRecordsScreen->isBossMode) {
                if (timeRecordsScreen->view == 2) {
                    if (timeRecordsScreen->act == 0) {
                        if (timeRecordsScreen->zone != 0) {
                            timeRecordsScreen->zone--;
                            timeRecordsScreen->act = 1;
                        } else {
                            timeRecordsScreen->zone = availableCourses >> 2;
                            timeRecordsScreen->act = (availableCourses & 3) != 1;
                        }
                        gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                        return;
                    }
                    timeRecordsScreen->act--;
                } else {
                    if (timeRecordsScreen->act == 0) {
                        timeRecordsScreen->act = 1;
                        if (timeRecordsScreen->zone != 0) {
                            timeRecordsScreen->zone--;
                        } else {
                            timeRecordsScreen->zone = 6;
                        }
                        gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                        return;
                    } else {
                        timeRecordsScreen->act--;
                    }
                }
            } else {
                if (timeRecordsScreen->zone != 0) {
                    timeRecordsScreen->zone--;
                } else {
                    timeRecordsScreen->zone = 7 - 1;
                }
                gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                return;
            }
        } else if (gRepeatedKeys & 0x0010) {
            if (!timeRecordsScreen->isBossMode) {
                if (timeRecordsScreen->view == 2) {
                    s32 r5;
                    s16 r1;
                    s32 backup = availableCourses;
                    availableCourses >>= 2;
                    r1 = backup & 3;
                    r5 = r1 != 1;
                    if (timeRecordsScreen->act > 0) {
                        timeRecordsScreen->act = 0;
                        if (timeRecordsScreen->zone < 7 - 1) {
                            timeRecordsScreen->zone++;
                        } else {
                            timeRecordsScreen->zone = 0;
                        }

                        if (timeRecordsScreen->zone > availableCourses) {
                            timeRecordsScreen->zone = 0;
                            timeRecordsScreen->act = 0;
                        }
                    } else {
                        timeRecordsScreen->act++;
                        if (timeRecordsScreen->zone >= availableCourses && timeRecordsScreen->act > r5) {
                            timeRecordsScreen->zone = 0;
                            timeRecordsScreen->act = 0;
                            gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                            return;
                        } else {
                            gCurTask->main = Task_TimeRecordsScreenHandleActChange;
                            return;
                        }
                    }
                    gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                    return;
                }

                if (timeRecordsScreen->act > 0) {
                    timeRecordsScreen->act = 0;
                    if (timeRecordsScreen->zone < 7 - 1) {
                        timeRecordsScreen->zone++;
                    } else {
                        timeRecordsScreen->zone = 0;
                    }
                    gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                    return;
                } else {
                    timeRecordsScreen->act++;
                }

            } else {
                if (timeRecordsScreen->zone < 7 - 1) {
                    timeRecordsScreen->zone++;
                } else {
                    timeRecordsScreen->zone = 0;
                }
                gCurTask->main = Task_TimeRecordsScreenHandleCourseChange;
                return;
            }
        }
        gCurTask->main = Task_TimeRecordsScreenHandleActChange;
        return;
    }

    if (timeRecordsScreen->view != 2) {
        if (gRepeatedKeys & (0x0080 | 0x0040)) {
            s16 maxCharacterIndex = timeRecordsScreen->availableCharacters - 1;
            if (maxCharacterIndex == 0) {
                return;
            }

            m4aSongNumStart(108);

            if (gRepeatedKeys & 0x0040) {
                if (timeRecordsScreen->character != 0) {
                    timeRecordsScreen->character--;
                } else {
                    timeRecordsScreen->character = maxCharacterIndex;
                }
            } else if (gRepeatedKeys & 0x0080) {
                if (timeRecordsScreen->character < maxCharacterIndex) {
                    timeRecordsScreen->character++;
                } else {
                    timeRecordsScreen->character = 0;
                }
            }

            timeRecordsScreen->animFrame = 4;
            gCurTask->main = Task_TimeRecordsScreenCharacterChangeAnimOut;
            return;
        }
    } else {
        if (gPressedKeys & 0x0001) {
            m4aSongNumStart(106);
            Task_TimeRecordsScreenHandleCourseSelected();
            return;
        }
    }

    if (gPressedKeys & 0x0002) {
        m4aSongNumStart(107);
        TimeRecordsScreenHandleReturn();
    }
}

static void Task_TimeRecordsScreenCharacterChangeAnimOut(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);

    timeRecordsScreen->animFrame--;

    gBgScrollRegs[1][0] = timeRecordsScreen->animFrame * 18 - 426;
    gBgScrollRegs[2][0] = timeRecordsScreen->animFrame * 18 - 426;

    TimeRecordsScreenRefreshTimesUI(timeRecordsScreen);
    TimeRecordsScreenRenderCoursesViewUI(1);

    if (timeRecordsScreen->animFrame == 0) {

        timeRecordsScreen->animFrame = 0;
        gCurTask->main = Task_TimeRecordsScreenHandleCharacterChange;
    }
}

static void Task_TimeRecordsScreenHandleCourseChange(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    Sprite *zoneNumber = &timeRecordsScreen->choiceViewItemsOrZoneTitle[1];
    Sprite *unkDC = &timeRecordsScreen->actTitle[1];
    Sprite *zoneSubtitle = &timeRecordsScreen->choiceViewTitleOrZoneSubtitle;

    u16 language = timeRecordsScreen->language;

    const struct UNK_080D95E8 *zoneTitleText = &sTimeRecordsZoneActTitleDigits[timeRecordsScreen->zone];
    zoneNumber->graphics.anim = zoneTitleText->unk0;
    zoneNumber->variant = zoneTitleText->unk2;

    UpdateSpriteAnimation(zoneNumber);

    if (!timeRecordsScreen->isBossMode) {
        zoneTitleText = &sTimeRecordsZoneActTitleDigits[timeRecordsScreen->act];
        unkDC->graphics.anim = zoneTitleText->unk0;
        unkDC->variant = zoneTitleText->unk2;
        UpdateSpriteAnimation(unkDC);
    }


    if (!timeRecordsScreen->isBossMode) {
        zoneTitleText = &sZoneNameTitles[language][timeRecordsScreen->zone];
    } else {
        zoneTitleText = &sZoneBossTitles[language][timeRecordsScreen->zone];
    }

    zoneSubtitle->graphics.anim = zoneTitleText->unk0;
    zoneSubtitle->variant = zoneTitleText->unk2;
    UpdateSpriteAnimation(zoneSubtitle);

    TimeRecordsScreenRefreshTimesUI(timeRecordsScreen);
    TimeRecordsScreenRenderCoursesViewUI(0);
    timeRecordsScreen->animFrame = 0;
    gCurTask->main = Task_TimeRecordsScreenCourseChangeAnim;
}

static void Task_TimeRecordsScreenFadeToPrevious(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk0 = &timeRecordsScreen->fade;
    struct PlayerDataMenu *playerDataMenu = timeRecordsScreen->playerDataMenu;

    u8 availableCharacters;
    bool8 allCharactersUnlocked;

    if (!UpdateScreenFade(unk0)) {
        TimeRecordsScreenRenderCoursesViewUI(0);
        return;
    }

    switch (timeRecordsScreen->view) {
        case 0:
            timeRecordsScreen->animFrame = 0;
            timeRecordsScreen->isBossMode = 0;
            timeRecordsScreen->view = 0;
            ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 4661 "src/game/options_screen.c" 3 4
           ((void *)0)
# 4661 "src/game/options_screen.c"
           ; });

            TimeRecordScreenInitRegisters();
            TimeRecordsScreenCreateChoiceViewBackgroundsUI(timeRecordsScreen);
            TimeRecordsScreenCreateChoiceViewUI(timeRecordsScreen);
            gCurTask->main = Task_TimeRecordsScreenChoiceViewFadeIn;
            break;
        case 1:
            playerDataMenu->state = 0;
            TaskDestroy(gCurTask);
            break;
        case 2:
            allCharactersUnlocked = 0;
            availableCharacters = timeRecordsScreen->availableCharacters;
            if (availableCharacters == NUM_CHARACTERS) {
                allCharactersUnlocked = 1;
            }
            EwramFree(timeRecordsScreen->timeRecords);
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;
            CreateCharacterSelectionScreen(timeRecordsScreen->character, allCharactersUnlocked);
            break;
    }
}

static void TimeRecordsScreenRenderCoursesViewUI(u16 a)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    struct TimeRecordDisplay *timeRecord = timeRecordsScreen->timeDisplays;
    Sprite *timeRecordDisplay = timeRecordsScreen->timeRecordDisplays;
    Sprite *zoneTitleElement = timeRecordsScreen->choiceViewItemsOrZoneTitle;
    Sprite *actTitleElement = timeRecordsScreen->actTitle;
    Sprite *zoneSubtitle = &timeRecordsScreen->choiceViewTitleOrZoneSubtitle;
    Sprite *scrollArrows = timeRecordsScreen->choiceViewScrollArrows;

    Sprite *minute, *secondDigit, *milliDigit, *deliminator;

    s16 visibleScrollArrows, i, j;
    s16 availableCourses = timeRecordsScreen->unlockedCourses[timeRecordsScreen->character];
    if (availableCourses == 0) {
        availableCourses = 1;
    }

    for (i = 0; i < 3; i++, timeRecordDisplay++) {
        DisplaySprite(timeRecordDisplay);
    }

    for (i = 0; i < 2; i++, zoneTitleElement++) {
        DisplaySprite(zoneTitleElement);
    }


    j = timeRecordsScreen->view != 2 && !a && timeRecordsScreen->availableCharacters > 1 ? 4 : 2;
    visibleScrollArrows = timeRecordsScreen->view == 2 && availableCourses < 2 ? 0 : j;

    for (i = 0; i < visibleScrollArrows; i++, scrollArrows++) {
        UpdateSpriteAnimation(scrollArrows);
        DisplaySprite(scrollArrows);
    }

    if (!timeRecordsScreen->isBossMode) {
        for (i = 0; i < 2; i++, actTitleElement++) {
            DisplaySprite(actTitleElement);
        }
    } else {
        DisplaySprite(actTitleElement);
    }

    DisplaySprite(zoneSubtitle);

    for (i = 0; i < 3; i++, timeRecord++) {
        deliminator = timeRecord->deliminators;
        minute = &timeRecord->minute;
        secondDigit = timeRecord->seconds;
        milliDigit = timeRecord->millis;

        for (j = 0; j < 2; j++, deliminator++) {
            DisplaySprite(deliminator);
        }

        DisplaySprite(minute);

        for (j = 0; j < 2; j++, secondDigit++) {
            DisplaySprite(secondDigit);
        }

        for (j = 0; j < 2; j++, milliDigit++) {
            DisplaySprite(milliDigit);
        }
    }
}

static void CreateMultiplayerRecordsScreen(struct PlayerDataMenu *playerDataMenu)
{
    struct Task *t
        = TaskCreate(Task_MultiplayerRecordsScreenCreateNextTableRowUI, sizeof(struct MultiplayerRecordsScreen), 0x2000, 4, 
# 4758 "src/game/options_screen.c" 3 4
                                                                                                                           ((void *)0)
# 4758 "src/game/options_screen.c"
                                                                                                                               );
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((t)->data);

    struct MultiplayerRecordRow *rows;
    struct OptionsScreenProfileData *profileData;
    s16 i, j;

    multiplayerRecordsScreen->table = EwramMalloc(sizeof(struct MultiplayerRecordsTable));
    multiplayerRecordsScreen->playerDataMenu = playerDataMenu;

    multiplayerRecordsScreen->scrollAnimFrame = 0;
    multiplayerRecordsScreen->targetFirstVisibleRowIndex = 0;
    multiplayerRecordsScreen->currentFirstVisibleRowIndex = 0;
    multiplayerRecordsScreen->scrollIndex = 0;
    multiplayerRecordsScreen->language = playerDataMenu->language;

    profileData = &playerDataMenu->optionsScreen->profileData;
    memcpy(multiplayerRecordsScreen->playerName, profileData->playerName, sizeof(profileData->playerName));
    multiplayerRecordsScreen->playerWins = profileData->multiplayerWins;
    multiplayerRecordsScreen->playerLoses = profileData->multiplayerLoses;
    multiplayerRecordsScreen->playerDraws = profileData->multiplayerDraws;

    rows = multiplayerRecordsScreen->table->rows;
    for (i = 0; i < 10; i++) {
        for (j = 0; j < 6; j++) {
            rows[i].playerName[j] = profileData->multiplayerScores[i].playerName[j];
            if (rows[i].playerName[j] == 0xFFFF) {
                break;
            }
        }

        for (; j < 6; j++) {
            rows[i].playerName[j] = 0xFFFF;
        }

        rows[i].slotFilled = profileData->multiplayerScores[i].slotFilled;
        rows[i].wins = profileData->multiplayerScores[i].wins;
        rows[i].loses = profileData->multiplayerScores[i].losses;
        rows[i].draws = profileData->multiplayerScores[i].draws;
    }

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 4799 "src/game/options_screen.c" 3 4
   ((void *)0)
# 4799 "src/game/options_screen.c"
   ; });

    MultiplayerRecordsScreenInitRegisters();
    MultiplayerRecordsScreenCreateBackgroundsUI(multiplayerRecordsScreen);
    MultiplayerRecordsScreenCreatePlayerRowUI(multiplayerRecordsScreen);
}

static void MultiplayerRecordsScreenInitRegisters(void)
{
    gDispCnt = 0x1740;
    gBgCntRegs[0] = 0x701;
    gBgCntRegs[1] = 0x9606;
    gBgCntRegs[2] = 0x1F0F;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

static void MultiplayerRecordsScreenCreateBackgroundsUI(struct MultiplayerRecordsScreen *multiplayerRecordsScreen)
{
    ScreenFade *fade = &multiplayerRecordsScreen->fade;
    fade->window = 0;
    fade->flags = ((0 << 0) | (1 << 1));
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    OptionsInitBackground(&multiplayerRecordsScreen->backgroundTrims, 0, 7, 152, 0x1E, 0x14, 0, 0, 0, 0);
    OptionsInitBackground(&multiplayerRecordsScreen->background, 1, 0x16, 137, 0x1E, 0x14, 0, 1, 0, 0);
}

static void MultiplayerRecordsScreenCreatePlayerRowUI(struct MultiplayerRecordsScreen *multiplayerRecordsScreen)
{
    s16 i, xPos, yPos;
    struct UNK_806B908 nameCharTile;
    s16 wins, loses, draws;

    Sprite *title = &multiplayerRecordsScreen->title;
    Sprite *columnHeaders = &multiplayerRecordsScreen->columnHeaders;
    Sprite *scrollArrows = multiplayerRecordsScreen->scrollArrows;
    Sprite *playerNameDisplayChar = multiplayerRecordsScreen->playerNameDisplay;
    Sprite *playerWinsDigit = multiplayerRecordsScreen->playerWinsDigits;
    Sprite *playerLossesDigit = multiplayerRecordsScreen->playerLossesDigits;
    Sprite *playerDrawsDigit = multiplayerRecordsScreen->playerDrawsDigits;

    const struct UNK_080D95E8 *titleAndColumnHeadersText = sMultiplayerRecordsTitleAndColumnHeadersText[multiplayerRecordsScreen->language];
    const struct UNK_080D95E8 *scrollArrowTile = sProfileNameScreenScrollArrowTiles;


    const struct UNK_080D95E8 *digitTile, *digitTiles = sMultiplayerScoreDigitTiles;


    sub_806A568(title, 0, titleAndColumnHeadersText->unk4, titleAndColumnHeadersText->unk0, 0x1000, 9, 18, 5,
                titleAndColumnHeadersText->unk2, 0);


    titleAndColumnHeadersText++;
    sub_806A568(columnHeaders, 0, titleAndColumnHeadersText->unk4, titleAndColumnHeadersText->unk0, 0x1000, 118, 38, 5,
                titleAndColumnHeadersText->unk2, 0);

    sub_806A568(scrollArrows, 0, scrollArrowTile->unk4, scrollArrowTile->unk0, 0x1000, 8, 0x4E, 0xD,
                scrollArrowTile->unk2, 0);
    scrollArrows++;
    scrollArrowTile++;
    sub_806A568(scrollArrows, 0, scrollArrowTile->unk4, scrollArrowTile->unk0, 0x1000, 8, 0x88, 0xD,
                scrollArrowTile->unk2, 0);

    for (i = 0, xPos = 34, yPos = 58; i < 6; i++, playerNameDisplayChar++, xPos += 12) {
        u16 nameChar = multiplayerRecordsScreen->playerName[i];
        if (nameChar == 0xFFFF) {
            nameChar = 0x11;
        }

        nameCharTile = sub_806B908(nameChar);
        sub_806A568(playerNameDisplayChar, 0, nameCharTile.unk0, nameCharTile.unk4, 0x1000, xPos, yPos, 5,
                    nameCharTile.unk6, 0);
    }

    wins = multiplayerRecordsScreen->playerWins;
    loses = multiplayerRecordsScreen->playerLoses;
    draws = multiplayerRecordsScreen->playerDraws;

    digitTile = &digitTiles[((wins) / 10)];
    sub_806A568(playerWinsDigit, 0, digitTile->unk4, digitTile->unk0, 0x2000, 0x7C, 0x40, 0xD, digitTile->unk2, 0);

    playerWinsDigit++;
    digitTile = &digitTiles[((wins) % 10)];
    sub_806A568(playerWinsDigit, 0, digitTile->unk4, digitTile->unk0, 0x2000, 0x84, 0x40, 0xD, digitTile->unk2, 0);

    digitTile = &digitTiles[((loses) / 10)];
    sub_806A568(playerLossesDigit, 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xA4, 0x40, 0xD, digitTile->unk2, 0);

    playerLossesDigit++;
    digitTile = &digitTiles[((loses) % 10)];
    sub_806A568(playerLossesDigit, 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xAC, 0x40, 0xD, digitTile->unk2, 0);

    digitTile = &digitTiles[((draws) / 10)];
    sub_806A568(playerDrawsDigit, 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xCC, 0x40, 0xD, digitTile->unk2, 0);

    playerDrawsDigit++;
    digitTile = &digitTiles[((draws) % 10)];
    sub_806A568(playerDrawsDigit, 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xD4, 0x40, 0xD, digitTile->unk2, 0);
}

static void MultiplayerRecordsScreenCreateTableRowUI(s16 rowIndex)
{
    s16 loses, draws, wins, j, xPos, yPos;
    Sprite *nameDisplayChar;

    struct UNK_806B908 nameCharTile;

    struct MultiplayerRecordsScreen *screen = (void *)((gCurTask)->data);
    struct MultiplayerRecordRow *row = &screen->table->rows[rowIndex];
    const struct UNK_080D95E8 *digitTile, *digitTiles = sMultiplayerScoreDigitTiles;

    if (!row->slotFilled) {
        return;
    }

    yPos = rowIndex * 18 + 90;
    nameDisplayChar = row->nameDisplay;

    for (j = 0, xPos = 34; j < 6; j++, nameDisplayChar++, xPos += 12) {
        u16 nameChar = row->playerName[j];
        if (nameChar == 0xFFFF) {
            nameChar = 17;
        }

        nameCharTile = sub_806B908(nameChar);
        sub_806A568(nameDisplayChar, 0, nameCharTile.unk0, nameCharTile.unk4, 0x2000, xPos, yPos, 5, nameCharTile.unk6,
                    0);
    }

    wins = row->wins;
    loses = row->loses;
    draws = row->draws;
    yPos += 6;

    digitTile = &digitTiles[((wins) / 10)];
    sub_806A568(&row->winsDigits[0], 0, digitTile->unk4, digitTile->unk0, 0x2000, 0x7C, yPos, 0xD, digitTile->unk2, 0);

    digitTile = &digitTiles[((wins) % 10)];
    sub_806A568(&row->winsDigits[1], 0, digitTile->unk4, digitTile->unk0, 0x2000, 0x84, yPos, 0xD, digitTile->unk2, 0);

    digitTile = &digitTiles[((loses) / 10)];
    sub_806A568(&row->losesDigits[0], 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xA4, yPos, 0xD, digitTile->unk2, 0);

    digitTile = &digitTiles[((loses) % 10)];
    sub_806A568(&row->losesDigits[1], 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xAC, yPos, 0xD, digitTile->unk2, 0);

    digitTile = &digitTiles[((draws) / 10)];
    sub_806A568(&row->defeatsDigits[0], 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xCC, yPos, 0xD, digitTile->unk2,
                0);

    digitTile = &digitTiles[((draws) % 10)];
    sub_806A568(&row->defeatsDigits[1], 0, digitTile->unk4, digitTile->unk0, 0x2000, 0xD4, yPos, 0xD, digitTile->unk2,
                0);
}

static void Task_MultiplayerRecordsScreenMain(void)
{
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);
    struct MultiplayerRecordRow *rows = multiplayerRecordsScreen->table->rows;

    MultiplayerRecordsScreenRenderUI();

    if (gRepeatedKeys & (0x0080 | 0x0040)) {
        if (gRepeatedKeys & 0x0040) {
            if (multiplayerRecordsScreen->scrollIndex > 0) {
                m4aSongNumStart(108);
                multiplayerRecordsScreen->currentFirstVisibleRowIndex = multiplayerRecordsScreen->scrollIndex;
                multiplayerRecordsScreen->targetFirstVisibleRowIndex = --multiplayerRecordsScreen->scrollIndex;

                gCurTask->main = Task_MultiplayerRecordsScreenScrollAnim;
                return;
            }
        } else if (gRepeatedKeys & 0x0080) {
            if (multiplayerRecordsScreen->scrollIndex >= (10 - 4)) {
                return;
            }


            rows = &rows[multiplayerRecordsScreen->scrollIndex + 4];
            if (rows->slotFilled) {
                m4aSongNumStart(108);
                multiplayerRecordsScreen->targetFirstVisibleRowIndex = multiplayerRecordsScreen->scrollIndex;
                multiplayerRecordsScreen->currentFirstVisibleRowIndex = multiplayerRecordsScreen->scrollIndex;
                multiplayerRecordsScreen->scrollIndex++;

                gCurTask->main = Task_MultiplayerRecordsScreenScrollAnim;
                return;
            }
        }
    }

    if (gRepeatedKeys & 0x0002) {
        m4aSongNumStart(107);
        Task_MultiplayerRecordsScreenHandleExit();
    }
}

static void Task_MultiplayerRecordsScreenScrollAnim(void)
{
    struct MultiplayerRecordRow *row;
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);


    s16 numVisibleRows = 4 + 1;
    s16 yPos, temp, i, j;

    multiplayerRecordsScreen->scrollAnimFrame++;

    if (multiplayerRecordsScreen->scrollIndex < multiplayerRecordsScreen->currentFirstVisibleRowIndex) {
        temp = multiplayerRecordsScreen->scrollAnimFrame * 2 + 72;
    } else {
        temp = 90 - (multiplayerRecordsScreen->scrollAnimFrame * 2);
    }
    yPos = temp;

    if (multiplayerRecordsScreen->scrollAnimFrame > 8) {
        yPos = 90;
        multiplayerRecordsScreen->targetFirstVisibleRowIndex = multiplayerRecordsScreen->scrollIndex;
    }

    if (multiplayerRecordsScreen->targetFirstVisibleRowIndex == (10 - 4)) {
        numVisibleRows--;
    }

    row = &multiplayerRecordsScreen->table->rows[multiplayerRecordsScreen->targetFirstVisibleRowIndex];

    for (i = 0; i < numVisibleRows; i++, yPos += 18, row++) {
        Sprite *unk10, *unk130, *unk190, *unk1F0;

        unk10 = row->nameDisplay;
        for (j = 0; j < 6; j++, unk10++) {
            unk10->y = yPos;
        }

        unk130 = row->winsDigits;
        for (j = 0; j < 2; j++, unk130++) {
            unk130->y = yPos + 6;
        }

        unk190 = row->losesDigits;
        for (j = 0; j < 2; j++, unk190++) {
            unk190->y = yPos + 6;
        }

        unk1F0 = row->defeatsDigits;
        for (j = 0; j < 2; j++, unk1F0++) {
            unk1F0->y = yPos + 6;
        }
    }

    MultiplayerRecordsScreenRenderUI();

    if (multiplayerRecordsScreen->scrollAnimFrame > 8) {
        multiplayerRecordsScreen->scrollAnimFrame = 0;
        gCurTask->main = Task_MultiplayerRecordsScreenMain;
    }
}

static void MultiplayerRecordsScreenRenderUI(void)
{
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);
    Sprite *title = &multiplayerRecordsScreen->title;
    Sprite *columnHeaders = &multiplayerRecordsScreen->columnHeaders;
    Sprite *playerNameDisplayChar = multiplayerRecordsScreen->playerNameDisplay;
    Sprite *playerWinsDigit = multiplayerRecordsScreen->playerWinsDigits;
    Sprite *playerLossesDigit = multiplayerRecordsScreen->playerLossesDigits;
    Sprite *playerDrawsDigit = multiplayerRecordsScreen->playerDrawsDigits;
    Sprite *scrollArrow;


    struct MultiplayerRecordsTable *recordsTable = multiplayerRecordsScreen->table;
    struct MultiplayerRecordRow *row;

    s16 i, j;
    s16 numVisibleRows = 4 + 1;

    DisplaySprite(title);
    DisplaySprite(columnHeaders);

    scrollArrow = multiplayerRecordsScreen->scrollArrows;
    UpdateSpriteAnimation(scrollArrow);
    scrollArrow++;
    UpdateSpriteAnimation(scrollArrow);
    scrollArrow--;

    if (multiplayerRecordsScreen->scrollIndex > 0) {
        DisplaySprite(scrollArrow);
    }
    scrollArrow++;


    row = &multiplayerRecordsScreen->table->rows[multiplayerRecordsScreen->scrollIndex + 4];
    if (multiplayerRecordsScreen->scrollIndex < (10 - 4) && row->slotFilled) {
        DisplaySprite(scrollArrow);
    }

    for (i = 0; i < 6; i++, playerNameDisplayChar++) {
        DisplaySprite(playerNameDisplayChar);
    }

    for (i = 0; i < 2; i++, playerWinsDigit++) {
        DisplaySprite(playerWinsDigit);
    }

    for (i = 0; i < 2; i++, playerLossesDigit++) {
        DisplaySprite(playerLossesDigit);
    }

    for (i = 0; i < 2; i++, playerDrawsDigit++) {
        DisplaySprite(playerDrawsDigit);
    }

    if (multiplayerRecordsScreen->targetFirstVisibleRowIndex == (10 - 4)) {
        numVisibleRows--;
    }

    row = &multiplayerRecordsScreen->table->rows[multiplayerRecordsScreen->targetFirstVisibleRowIndex];

    for (i = 0; i < numVisibleRows; i++, row++) {
        if (!row->slotFilled) {
            continue;
        }

        playerNameDisplayChar = row->nameDisplay;

        for (j = 0; j < 6; j++, playerNameDisplayChar++) {
            DisplaySprite(playerNameDisplayChar);
        }

        playerWinsDigit = row->winsDigits;
        playerLossesDigit = row->losesDigits;
        playerDrawsDigit = row->defeatsDigits;

        DisplaySprite(playerWinsDigit);
        ++playerWinsDigit;
        DisplaySprite(playerWinsDigit);

        DisplaySprite(playerLossesDigit);
        ++playerLossesDigit;
        DisplaySprite(playerLossesDigit);

        DisplaySprite(playerDrawsDigit);
        ++playerDrawsDigit;
        DisplaySprite(playerDrawsDigit);
    }
}



void sub_806A568(Sprite *obj, s8 target, u32 size, u16 c, u32 assetId, s16 xPos, s16 yPos, u16 oamOrder, u8 variant, u8 palId)
{
    Sprite newObj;
    Sprite *s;
    s = &newObj;

    if (obj != 
# 5165 "src/game/options_screen.c" 3 4
              ((void *)0)
# 5165 "src/game/options_screen.c"
                  ) {
        s = obj;
    }

    if (target != 0) {
        if (gProfileScreenSubMenuNextVramAddress == 
# 5170 "src/game/options_screen.c" 3 4
                                                   ((void *)0)
# 5170 "src/game/options_screen.c"
                                                       ) {
            gProfileScreenSubMenuNextVramAddress = gProfileScreenNextVramAddress;
        }
        s->graphics.dest = gProfileScreenSubMenuNextVramAddress;
    } else {
        s->graphics.dest = gProfileScreenNextVramAddress;
    }

    s->graphics.size = 0;
    s->graphics.anim = c;
    s->frameFlags = assetId;
    s->x = xPos;
    s->y = yPos;
    s->oamFlags = ((oamOrder) << 6);
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = variant;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = palId;
    s->hitboxes[0].index = -1;

    UpdateSpriteAnimation(s);

    switch (target) {
        case 0:
            gProfileScreenNextVramAddress += size * 32;

            ({ gProfileScreenSubMenuNextVramAddress = 
# 5198 "src/game/options_screen.c" 3 4
           ((void *)0)
# 5198 "src/game/options_screen.c"
           ; });
            break;
        case 1:
            gProfileScreenSubMenuNextVramAddress += size * 32;
            break;
    }
}
# 5214 "src/game/options_screen.c"
static inline bool16 sub_806A664_A(s16 mode, u16 inputCharacter)
{
    u16 unk5C4[2];
    u16 unk5C8[5];
    u16 *character;

    memcpy(unk5C4, gUnknown_080D95C4, sizeof(gUnknown_080D95C4));
    memcpy(unk5C8, gUnknown_080D95C8, sizeof(gUnknown_080D95C8));

    character = unk5C4;
    if (mode == 1) {
        character = unk5C8;
    } else {
        character = unk5C4;
    }

    if (mode == 1 && inputCharacter == 2) {
        return 1;
    }

    for (; *character != 0xFFFF; character++) {
        if (inputCharacter >= *character && inputCharacter <= *character + 4) {
            return 1;
        }
    }

    return 0;
}


static u16 sub_806A664(s16 mode, u16 inputCharacter)
{
    u16 unk5D2[2];
    u16 unk5D6[4][2];
    s16 i;

    memcpy(unk5D2, gUnknown_080D95D2, sizeof(gUnknown_080D95D2));
    memcpy(unk5D6, gUnknown_080D95D6, sizeof(gUnknown_080D95D6));

    if (!sub_806A664_A(mode, inputCharacter)) {
        return inputCharacter;
    }

    if (mode == 1 && inputCharacter == 2) {
        return 0x10B;
    } else if (mode == 1) {
        for (i = 0; i < 4; i++) {
            if (inputCharacter >= unk5D6[i][0] && inputCharacter <= unk5D6[i][0] + 4) {
                return (inputCharacter + unk5D6[i][1] - unk5D6[i][0]);
            }
        }
    } else if (inputCharacter >= unk5D2[0] && inputCharacter <= unk5D2[0] + 4) {
        return (inputCharacter + unk5D2[1] - unk5D2[0]);
    }

    return inputCharacter;
}

static void OptionsScreenTaskDestroyHandler(struct Task *optionsScreenTask)
{

}

static void Task_OptionsScreenShow(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);

    OptionsScreenInitRegisters(optionsScreen, 0);

    SetupOptionScreenBackgroundsUI(optionsScreen);
    OptionsScreenCreateUI(optionsScreen, 0);
    gCurTask->main = Task_OptionScreenFadeIn;
}

static void SetupOptionScreenBackgroundsUI(struct OptionsScreen *optionsScreen)
{
    ({ OptionsInitBackground(&(optionsScreen->background), 0, 7, 133, 0x1E, 0x14, 0, 0, 0, 0); OptionsInitBackground(&(optionsScreen->subMenuBackground), 1, 0xE, 134, 0x1E, 0x14, 0, 1, 0, 0); });
}

static void Task_OptionScreenFadeIn(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        gCurTask->main = Task_OptionsScreenMain;
    }
}

static void OptionsScreenOpenSelectedSubMenu(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);

    switch (optionsScreen->menuCursor) {
        case 0:
            CreatePlayerDataMenu(optionsScreen);
            break;
        case 1:
            CreateDifficultyMenu(optionsScreen);
            break;
        case 2:
            CreateTimeLimitMenu(optionsScreen);
            break;
        case 3:
            break;
        case 4:
            CreateButtonConfigMenu(optionsScreen);
            break;
        case 5:
        case 6:
        case 7:
            break;
    }

    optionsScreen->subMenuAnimFrame = 0;
    gCurTask->main = Task_OptionsScreenSubMenuOpenAnim;
}

static void Task_OptionsScreenWaitForSubMenuExit(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    if (optionsScreen->state < 2) {
        OptionsScreenRenderUI();
    }

    if (optionsScreen->state == 0) {
        optionsScreen->subMenuAnimFrame = 0;
        gCurTask->main = Task_OptionsScreenSubMenuCloseAnim;
    }
}



static void OptionsScreenShowLanguageScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;

    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_OptionsScreenFadeOutToLanguageScreen;
}

static void Task_OptionsScreenFadeOutToLanguageScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        CreateEditLanguageScreen(optionsScreen);
        optionsScreen->state = 1;
        gCurTask->main = Task_OptionsScreenWaitForLanguageScreenExit;
    }
}

static void Task_OptionsScreenFadeInFromLanguageScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        gCurTask->main = Task_OptionsScreenMain;
    }
}



static void OptionsScreenShowSoundTestScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;

    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_OptionScreenFadeOutToSoundTest;
}

static void Task_OptionScreenFadeOutToSoundTest(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        CreateSoundTestScreen(optionsScreen);
        optionsScreen->state = 1;
        gCurTask->main = Task_OptionsScreenWaitForSoundTestExit;
    }
}

static void Task_OptionsScreenFadeInFromSoundTest(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        gCurTask->main = Task_OptionsScreenMain;
    }
}



static void OptionsScreenShowDeleteScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_OptionsScreenFadeOutToDeleteScreen;
}

static void Task_OptionsScreenFadeOutToDeleteScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        CreateDeleteScreen(optionsScreen);
        optionsScreen->state = 1;
        gCurTask->main = Task_OptionsScreenWaitForDeleteScreenExit;
    }
}

static void Task_OptionsScreenFadeInFromDeleteScreen(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk774 = &optionsScreen->unk774;
    OptionsScreenRenderUI();

    if (UpdateScreenFade(unk774)) {
        gCurTask->main = Task_OptionsScreenMain;
    }
}



static void PlayerDataMenuShowProfileNameScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *fade = &playerDataMenu->unk150;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_PlayerDataMenuFadeOutToProfileNameScreen;
}

static void Task_PlayerDataMenuFadeOutToProfileNameScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;
    PlayerDataMenuRenderUI();

    if (UpdateScreenFade(unk150)) {
        CreateEditProfileNameScreen(playerDataMenu);
        playerDataMenu->state = 1;
        playerDataMenu->optionsScreen->state = 2;
        gCurTask->main = Task_PlayerDataMenuWaitForProfileNameScreenExit;
    }
}

static void Task_PlayerDataMenuFadeInFromProfileNameScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;
    PlayerDataMenuRenderUI();

    if (UpdateScreenFade(unk150)) {
        gCurTask->main = Task_PlayerDataMenuOpenAnimWait;
    }
}



static void PlayerDataMenuShowTimeRecordsScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *fade = &playerDataMenu->unk150;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_PlayerDataMenuFadeOutToTimeRecordsScreen;
}

static void Task_PlayerDataMenuFadeInFromTimeRecordsScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;
    PlayerDataMenuRenderUI();

    if (UpdateScreenFade(unk150)) {
        gCurTask->main = Task_PlayerDataMenuOpenAnimWait;
    }
}



static void PlayerDataMenuShowMultiplayerRecordsScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *fade = &playerDataMenu->unk150;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen;
}

static void Task_PlayerDataMenuFadeOutToMultiplayerRecordsScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;
    PlayerDataMenuRenderUI();

    if (UpdateScreenFade(unk150)) {
        CreateMultiplayerRecordsScreen(playerDataMenu);
        playerDataMenu->state = 1;
        playerDataMenu->optionsScreen->state = 2;
        gCurTask->main = Task_PlayerDataMenuWaitForMultiplayerRecordsScreenExit;
    }
}

static void Task_PlayerDataMenuFadeInFromMultiplayerRecordsScreen(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);
    ScreenFade *unk150 = &playerDataMenu->unk150;
    PlayerDataMenuRenderUI();

    if (UpdateScreenFade(unk150)) {
        gCurTask->main = Task_PlayerDataMenuOpenAnimWait;
    }
}

static void OptionsScreenHandleExit(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &optionsScreen->unk774;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_OptionsScreenFadeOutAndExit;
}

static void Task_OptionsScreenFadeOutAndExit(void)
{
    struct OptionsScreen *optionsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk270 = &optionsScreen->unk774;
    if (!UpdateScreenFade(unk270)) {
        OptionsScreenRenderUI();
        return;
    }

    StoreProfileData(optionsScreen);
    WriteSaveGame();
    TasksDestroyInPriorityRange(0, 0xFFFF);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;;
    CreateTitleScreenAtSinglePlayerMenu();
}

static void PlayerDataMenuRenderUI(void)
{
    struct PlayerDataMenu *playerDataMenu = (void *)((gCurTask)->data);

    Sprite *headerFooter = playerDataMenu->headerFooter;
    Sprite *menuItem = playerDataMenu->menuItems;
    Sprite *menuItemOutline = &playerDataMenu->menuItemOutline;

    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        DisplaySprite(headerFooter);
    }

    for (i = 0; i < 4; i++, menuItem++) {
        DisplaySprite(menuItem);
    }

    DisplaySprite(menuItemOutline);
}

static void CreateDifficultyMenu(struct OptionsScreen *optionsScreen)
{
    struct Task *t = TaskCreate(Task_DifficultyMenuOpenAnimWait, sizeof(struct SwitchMenu), 0x2000, 4, 
# 5632 "src/game/options_screen.c" 3 4
                                                                                                      ((void *)0)
# 5632 "src/game/options_screen.c"
                                                                                                          );
    struct SwitchMenu *difficultyMenu = (void *)((t)->data);

    difficultyMenu->optionsScreen = optionsScreen;
    difficultyMenu->switchValue = optionsScreen->difficultyLevel;
    difficultyMenu->language = optionsScreen->language;
    difficultyMenu->animFrame = 0;

    DifficultyMenuCreateUI(difficultyMenu);
}

static void DifficultyMenuRenderUI(void)
{
    struct SwitchMenu *difficultyMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = difficultyMenu->headerFooter;
    Sprite *difficultyOption = difficultyMenu->options;
    Sprite *switchValueOutline = &difficultyMenu->switchValueOutline;

    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        DisplaySprite(headerFooter);
    }

    for (i = 0; i < 2; i++, difficultyOption++) {
        DisplaySprite(difficultyOption);
    }

    DisplaySprite(switchValueOutline);
}

static void CreateTimeLimitMenu(struct OptionsScreen *optionsScreen)
{
    struct Task *t = TaskCreate(Task_TimeLimitMenuOpenAnimWait, sizeof(struct SwitchMenu), 0x2000, 4, 0);
    struct SwitchMenu *timeLimitMenu = (void *)((t)->data);

    timeLimitMenu->optionsScreen = optionsScreen;
    timeLimitMenu->switchValue = optionsScreen->timeLimitDisabled;
    timeLimitMenu->language = optionsScreen->language;
    timeLimitMenu->animFrame = 0;
    TimeLimitMenuCreateUI(timeLimitMenu);
}

static void TimeLimitMenuRenderUI(void)
{
    struct SwitchMenu *timeLimitMenu = (void *)((gCurTask)->data);
    Sprite *headerFooter = timeLimitMenu->headerFooter;
    Sprite *option = timeLimitMenu->options;
    Sprite *switchValueOutline = &timeLimitMenu->switchValueOutline;

    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        DisplaySprite(headerFooter);
    }

    for (i = 0; i < 2; i++, option++) {
        DisplaySprite(option);
    }

    DisplaySprite(switchValueOutline);
}

static void Task_ButtonConfigMenuHandleStartOver(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);

    Sprite *scrollArrow = buttonConfigMenu->scrollArrows;
    Sprite *controlFocus = &buttonConfigMenu->controlFocus;

    controlFocus->y = 42;

    scrollArrow->y = 53;
    scrollArrow++;
    scrollArrow->y = 53;

    ButtonConfigMenuRenderUI();
    gCurTask->main = Task_ButtonConfigMenuAButtonMain;
}

static void Task_ButtonConfigMenuHandleAButtonComplete(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);

    Sprite *unk1B4 = buttonConfigMenu->scrollArrows;
    Sprite *unk214 = &buttonConfigMenu->controlFocus;

    unk214->y = 66;
    unk1B4->y = 77;
    unk1B4++;
    unk1B4->y = 77;

    ButtonConfigMenuRenderUI();
    gCurTask->main = Task_ButtonConfigMenuBButtonMain;
}

static void Task_ButtonConfigMenuHandleBButtonComplete(void)
{
    struct ButtonConfigMenu *buttonConfigMenu = (void *)((gCurTask)->data);

    Sprite *unk1B4 = buttonConfigMenu->scrollArrows;
    Sprite *unk214 = &buttonConfigMenu->controlFocus;

    unk214->y = 90;

    unk1B4->y = 180;
    unk1B4++;
    unk1B4->y = 180;

    ButtonConfigMenuRenderUI();
    gCurTask->main = Task_ButtonConfigMenuRShoulderMain;
}

static void CreateEditLanguageScreen(struct OptionsScreen *optionScreen)
{
    struct Task *t = TaskCreate(Task_LanguageScreenFadeIn, sizeof(struct LanguageScreen), 0x2000, 4, 
# 5747 "src/game/options_screen.c" 3 4
                                                                                                    ((void *)0)
# 5747 "src/game/options_screen.c"
                                                                                                        );
    struct LanguageScreen *languageScreen = (void *)((t)->data);

    languageScreen->optionsScreen = optionScreen;
    languageScreen->menuCursor = optionScreen->language;
    languageScreen->creatingNewProfile = 0;

    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 5754 "src/game/options_screen.c" 3 4
   ((void *)0)
# 5754 "src/game/options_screen.c"
   ; });

    LanguageScreenInitRegisters(languageScreen);
    LanguageScreenCreateBackgroundsUI(languageScreen);
    LanguageScreenCreateUI(languageScreen);
}

static void LanguageScreenCreateBackgroundsUI(struct LanguageScreen *languageScreen)
{
    OptionsInitBackground(&languageScreen->unk1B0, 0, 7, 134, 0x1E, 0x14, 0, 0, 0, 0);
}

static void Task_LanguageScreenFadeIn(void)
{
    struct LanguageScreen *languageScreen = (void *)((gCurTask)->data);
    ScreenFade *unk1F0 = &languageScreen->unk1F0;

    LanguageScreenRenderUI();
    ReseedRng();

    if (UpdateScreenFade(unk1F0)) {
        gCurTask->main = Task_LanguageScreenMain;
    }
}

static void LanguageScreenHandleExit(void)
{
    struct LanguageScreen *languageScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &languageScreen->unk1F0;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    UpdateScreenFade(fade);
    gCurTask->main = Task_LanguageScreenFadeOutAndExit;
}

static void Task_LanguageScreenFadeOutAndExit(void)
{
    struct LanguageScreen *languageScreen = (void *)((gCurTask)->data);
    ScreenFade *unk1F0 = &languageScreen->unk1F0;
    ReseedRng();

    if (!UpdateScreenFade(unk1F0)) {
        LanguageScreenRenderUI();
        return;
    }


    if (languageScreen->creatingNewProfile == 1) {
        CreateNewProfileNameScreen(1);
    } else {
        languageScreen->optionsScreen->state = 0;
    }

    TaskDestroy(gCurTask);
}

static void ReseedRng(void) { ({ u32 rand1, rand2, rand3; rand1 ^= (Random() << 16); rand1 ^= Random(); rand3 ^= rand1; SeedRng(rand2, rand3); rand1 ^= (Random() << 16); rand1 ^= Random(); rand2 ^= rand1; SeedRng(rand2, rand3); }); }

static void LanguageScreenRenderUI(void)
{
    struct LanguageScreen *languageScreen = (void *)((gCurTask)->data);

    Sprite *headerFooter = languageScreen->headerFooter;
    Sprite *languageOption = languageScreen->languageOptions;
    Sprite *optionOutline = &languageScreen->optionOutline;

    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        DisplaySprite(headerFooter);
    }

    for (i = 0; i < 6; i++, languageOption++) {
        DisplaySprite(languageOption);
    }

    DisplaySprite(optionOutline);
}

static void DeleteScreenCreateBackgroundsUI(struct DeleteScreen *deleteScreen)
{
    OptionsInitBackground(&deleteScreen->background, 0, 7, 134, 0x1e, 0x14, 0, 0, 0, 0);
}

static void Task_DeleteScreenFadeIn(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);
    ScreenFade *unk130 = &deleteScreen->unk130;
    DeleteScreenRenderUI();
    if (UpdateScreenFade(unk130)) {
        gCurTask->main = Task_DeleteScreenConfrimationMain;
    }
}

static void Task_DeleteScreenHandleExit(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &deleteScreen->unk130;

    DeleteScreenRenderUI();

    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    UpdateScreenFade(fade);
    gCurTask->main = Task_DeleteScreenFadeOutAndExit;
}

static void DeleteScreenRenderUI(void)
{
    struct DeleteScreen *deleteScreen = (void *)((gCurTask)->data);

    Sprite *headerFooter = deleteScreen->headerFooter;
    Sprite *unk60 = deleteScreen->options;
    Sprite *unkC0 = &deleteScreen->optionOutline;

    s16 i;

    for (i = 0; i < 2; i++, headerFooter++) {
        DisplaySprite(headerFooter);
    }

    for (i = 0; i < 2; i++, unk60++) {
        DisplaySprite(unk60);
    }

    DisplaySprite(unkC0);
}

static void Task_ProfileNameScreenFadeIn(void)
{
    struct ProfileNameScreen *profileNameScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &profileNameScreen->fade;

    ProfileNameScreenRenderUI();

    if (UpdateScreenFade(fade)) {
        profileNameScreen->matrixCursorIndex = 0;
        gCurTask->main = Task_ProfileNameScreenMain;
    }
}

__attribute__((unused)) static void TimeRecordsScreenShowChoiceView(struct TimeRecordsScreen *timeRecordsScreen)
{
    timeRecordsScreen->animFrame = 0;
    timeRecordsScreen->isBossMode = 0;
    timeRecordsScreen->view = 0;
    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 5910 "src/game/options_screen.c" 3 4
   ((void *)0)
# 5910 "src/game/options_screen.c"
   ; });

    TimeRecordScreenInitRegisters();
    TimeRecordsScreenCreateChoiceViewBackgroundsUI(timeRecordsScreen);
    TimeRecordsScreenCreateChoiceViewUI(timeRecordsScreen);

    gCurTask->main = Task_TimeRecordsScreenChoiceViewFadeIn;
}

static void Task_TimeRecordsScreenChoiceViewFadeIn(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;

    TimeRecordsScreenRenderModeChoiceUI();

    if (UpdateScreenFade(fade)) {
        gCurTask->main = Task_TimeRecordsScreenModeChoiceMain;
    }
}

static void TimeRecordsScreenHandleExit(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;

    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_TimeRecordsScreenFadeOutAndExit;
}

static void Task_TimeRecordsScreenFadeOutAndExit(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;
    struct PlayerDataMenu *playerDataMenu = timeRecordsScreen->playerDataMenu;

    if (!UpdateScreenFade(fade)) {
        TimeRecordsScreenRenderModeChoiceUI();
        return;
    }

    playerDataMenu->state = 0;
    TaskDestroy(gCurTask);
}

static void TimeRecordsScreenShowCoursesView(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;

    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = TimeRecordsScreenFadeOutToCoursesView;
}

static void TimeRecordsScreenFadeOutToCoursesView(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;

    if (!UpdateScreenFade(fade)) {
        TimeRecordsScreenRenderModeChoiceUI();
        return;
    }

    TimeRecordsScreenCreateCoursesView(timeRecordsScreen);
}

static void TimeRecordsScreenRenderModeChoiceUI(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);

    Sprite *title = &timeRecordsScreen->choiceViewTitleOrZoneSubtitle;
    Sprite *scrollArrows = timeRecordsScreen->choiceViewScrollArrows;
    Sprite *choiceItem = timeRecordsScreen->choiceViewItemsOrZoneTitle;
    s16 i;

    DisplaySprite(title);

    for (i = 0; i < 2; i++, choiceItem++) {
        DisplaySprite(choiceItem);
    }

    for (i = 0; i < 2; i++, scrollArrows++) {
        UpdateSpriteAnimation(scrollArrows);
        DisplaySprite(scrollArrows);
    }
}

static void TimeRecordsScreenCreateCoursesView(struct TimeRecordsScreen *timeRecordsScreen)
{
    timeRecordsScreen->view = 0;
    ({ gProfileScreenNextVramAddress = (void *)&VRAM[0x10000]; gProfileScreenSubMenuNextVramAddress = 
# 6013 "src/game/options_screen.c" 3 4
   ((void *)0)
# 6013 "src/game/options_screen.c"
   ; });

    TimeRecordsScreenInitRegisters();
    TimeRecordsScreenCreateCoursesViewBackgroundsUI(timeRecordsScreen);
    TimeRecordsScreenCreateCoursesViewUI(timeRecordsScreen);

    gCurTask->main = Task_TimeRecordsScreenCreateTimesUI;
}

static void Task_TimeRecordsScreenCreateTimesUI(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    TimeRecordsScreenCreateTimesUI(timeRecordsScreen);

    gCurTask->main = Task_TimeRecordsScreenCoursesViewFadeIn;
}

static void Task_TimeRecordsScreenCoursesViewFadeIn(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;
    TimeRecordsScreenRenderCoursesViewUI(0);

    if (UpdateScreenFade(fade)) {
        timeRecordsScreen->animFrame = 0;
        gCurTask->main = Task_TimeRecordsScreenCoursesViewMain;
    }
}

static void Task_TimeRecordsScreenHandleActChange(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    Sprite *unkDC = &timeRecordsScreen->actTitle[1];

    const struct UNK_080D95E8 *unk5E8 = &sTimeRecordsZoneActTitleDigits[timeRecordsScreen->act];

    unkDC->graphics.anim = unk5E8->unk0;
    unkDC->variant = unk5E8->unk2;

    UpdateSpriteAnimation(unkDC);
    TimeRecordsScreenRefreshTimesUI(timeRecordsScreen);
    TimeRecordsScreenRenderCoursesViewUI(0);

    timeRecordsScreen->animFrame = 0;
    gCurTask->main = Task_TimeRecordsScreenCourseChangeAnim;
}

static void Task_TimeRecordsScreenHandleCourseSelected(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_TimeRecordsScreenFadeOutToSelectedCourse;
}

static void Task_TimeRecordsScreenFadeOutToSelectedCourse(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;

    if (!UpdateScreenFade(fade)) {
        TimeRecordsScreenRenderCoursesViewUI(0);
        return;
    }

    gCurrentLevel = ((timeRecordsScreen->zone)*(3 + 1)) + (timeRecordsScreen->isBossMode ? 2 : timeRecordsScreen->act);

    EwramFree(timeRecordsScreen->timeRecords);
    TaskDestroy(gCurTask);
    GameStageStart();
}

static void TimeRecordsScreenHandleReturn(void)
{
    struct TimeRecordsScreen *timeRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &timeRecordsScreen->fade;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_TimeRecordsScreenFadeToPrevious;
}

static void Task_MultiplayerRecordsScreenCreateNextTableRowUI(void)
{
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);

    MultiplayerRecordsScreenCreateTableRowUI(multiplayerRecordsScreen->scrollAnimFrame);

    if (++multiplayerRecordsScreen->scrollAnimFrame >= 10) {
        multiplayerRecordsScreen->scrollAnimFrame = 0;
        gCurTask->main = Task_MultiplayerRecordsScreenFadeIn;
    }
}

static void Task_MultiplayerRecordsScreenFadeIn(void)
{
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *unk0 = &multiplayerRecordsScreen->fade;
    MultiplayerRecordsScreenRenderUI();

    if (UpdateScreenFade(unk0)) {
        gCurTask->main = Task_MultiplayerRecordsScreenMain;
    }
}

static void Task_MultiplayerRecordsScreenHandleExit(void)
{
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &multiplayerRecordsScreen->fade;
    fade->window = 0;
    fade->flags = (1 << 0);
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | (3 << 6));

    gCurTask->main = Task_MultiplayerRecordsScreenFadeOutAndExit;
}

static void Task_MultiplayerRecordsScreenFadeOutAndExit(void)
{
    struct MultiplayerRecordsScreen *multiplayerRecordsScreen = (void *)((gCurTask)->data);
    ScreenFade *fade = &multiplayerRecordsScreen->fade;
    struct PlayerDataMenu *playerDataMenu = multiplayerRecordsScreen->playerDataMenu;

    if (!UpdateScreenFade(fade)) {
        MultiplayerRecordsScreenRenderUI();
        return;
    }

    EwramFree(multiplayerRecordsScreen->table);
    playerDataMenu->state = 0;
    TaskDestroy(gCurTask);
}

void OptionsInitBackground(Background *background, u32 a, u32 b, u8 tilemapId, u16 d, u16 e, u16 f, u8 bg_id, u16 scrollX, u16 scrollY)
{
    background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x4000 * (a)));
    background->graphics.anim = 0;
    background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (b)));
    background->unk18 = 0;
    background->unk1A = 0;
    background->tilemapId = tilemapId;
    background->unk1E = 0;
    background->unk20 = 0;
    background->unk22 = 0;
    background->unk24 = 0;
    background->targetTilesX = d;
    background->targetTilesY = e;
    background->paletteOffset = f;
    background->animFrameCounter = 0;
    background->animDelayCounter = 0;
    background->flags = (bg_id);
    background->scrollX = scrollX;
    background->scrollY = scrollY;
    DrawBackground(background);
}


static s32 MaxSpriteSize(const struct UNK_080D95E8 *itemText, s8 length)
{
    s32 result = 0;
    s16 i;

    for (i = 0; i < length; i++, itemText++) {
        if (itemText->unk4 > result) {
            result = itemText->unk4;
        }
    }

    return result;
}

static struct UNK_806B908 sub_806B908(u16 nameChar)
{
    struct UNK_806B908 charTile;

    if (nameChar >= 0x10C) {
        charTile.unk4 = 0x3BB;
        charTile.unk6 = 0x11;
    } else {
        if ((nameChar & 0x100)) {
            charTile.unk4 = 0x3C3;
        } else {
            charTile.unk4 = 0x3BB;
        }

        charTile.unk6 = nameChar & 0xFF;
    }

    charTile.unk0 = 4;

    return charTile;
}

static bool16 sub_806B988(u16 *playerName)
{
    s16 i;

    for (i = 0; i < 6; i++) {
        if (playerName[i] == 0xFFFF) {
            return 0;
        }

        if (sub_806B9C8(playerName[i])) {
            return 1;
        }
    }

    return 0;
}

static bool16 sub_806B9C8(u16 nameChar)
{
    u16 localD95A4[16], *cursor;
    memcpy(localD95A4, gUnknown_080D95A4, sizeof(gUnknown_080D95A4));

    for (cursor = localD95A4; *cursor != 0xFFFF; cursor++) {
        if (nameChar == *cursor) {
            return 0;
        }
    }

    if (nameChar >= 0x10C) {
        return 0;
    } else {
        return 1;
    }
}

static bool16 sub_806BA14(s16 a, u16 b)
{
    u16 unk5C4[2], unk5C8[5], *cursor;

    memcpy(unk5C4, gUnknown_080D95C4, sizeof(gUnknown_080D95C4));
    memcpy(unk5C8, gUnknown_080D95C8, sizeof(gUnknown_080D95C8));

    if (a == 1) {
        cursor = unk5C8;
    } else {
        cursor = unk5C4;
    }

    if (a == 1 && b == 2) {
        return 1;
    }

    for (; *cursor != 0xFFFF; cursor++) {
        if (b >= *cursor && b <= *cursor + 4) {
            return 1;
        }
    }

    return 0;
}
