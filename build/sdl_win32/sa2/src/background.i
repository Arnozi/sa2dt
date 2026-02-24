# 0 "src/background.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/background.c"
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
# 2 "src/background.c" 2
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
# 3 "src/background.c" 2
# 1 "include/flags.h" 1
# 4 "src/background.c" 2
# 1 "include/sprite.h" 1
# 5 "src/background.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 6 "src/background.c" 2
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
# 7 "src/background.c" 2
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
# 8 "src/background.c" 2

# 1 "include/animation_commands.h" 1
# 10 "src/background.c" 2

static AnimCmdResult animCmd_GetTiles_BG(void *, Sprite *);
static AnimCmdResult animCmd_GetPalette_BG(void *, Sprite *);
static AnimCmdResult animCmd_JumpBack_BG(void *, Sprite *);
static AnimCmdResult animCmd_End_BG(void *, Sprite *);
static AnimCmdResult animCmd_PlaySoundEffect_BG(void *, Sprite *);
static AnimCmdResult animCmd_AddHitbox_BG(void *, Sprite *);
static AnimCmdResult animCmd_TranslateSprite_BG(void *, Sprite *);
static AnimCmdResult animCmd_8_BG(void *, Sprite *);
static AnimCmdResult animCmd_SetIdAndVariant_BG(void *, Sprite *);
static AnimCmdResult animCmd_10_BG(void *, Sprite *);
static AnimCmdResult animCmd_SetSpritePriority_BG(void *, Sprite *);
static AnimCmdResult animCmd_SetOamOrder_BG(void *, Sprite *);

const AnimationCommandFunc animCmdTable_BG[12] = {
    animCmd_GetTiles_BG, animCmd_GetPalette_BG, animCmd_JumpBack_BG, animCmd_End_BG,
    animCmd_PlaySoundEffect_BG, animCmd_AddHitbox_BG, animCmd_TranslateSprite_BG, animCmd_8_BG,
    animCmd_SetIdAndVariant_BG, animCmd_10_BG, animCmd_SetSpritePriority_BG, animCmd_SetOamOrder_BG,
};





void DrawBackground(Background *background)
{
    struct MapHeader *mapHeader = (struct MapHeader *)gTilemapsRef[background->tilemapId];
    const u16 *pal;
    u32 palSize;
    u16 gfxSize;


    background->xTiles = mapHeader->tileset.xTiles;
    background->yTiles = mapHeader->tileset.yTiles;
    background->graphics.src = mapHeader->tileset.tiles;
    gfxSize = mapHeader->tileset.tilesSize;
    background->graphics.size = gfxSize;

    if (!(background->flags & 0x8)) {
        memcpy(&gVramGraphicsCopyQueueBuffer[gVramGraphicsCopyQueueIndex], &background->graphics, sizeof(struct GraphicsData)); gVramGraphicsCopyQueue[gVramGraphicsCopyQueueIndex] = &gVramGraphicsCopyQueueBuffer[gVramGraphicsCopyQueueIndex]; gVramGraphicsCopyQueueIndex = (gVramGraphicsCopyQueueIndex + 1) % (sizeof(gVramGraphicsCopyQueue) / sizeof((gVramGraphicsCopyQueue)[0]));;;
        background->flags ^= 0x8;
    }

    pal = mapHeader->tileset.palette;
    palSize = mapHeader->tileset.palLength;
    background->paletteOffset = mapHeader->tileset.palOffset;

    if (!(background->flags & 0x10)) {
        DmaSet(3, pal, &gBgPalette[(0)*16u + (background->paletteOffset)], (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((palSize * sizeof(*pal))/(16/8))));
        gFlags |= 0x1;
        background->flags ^= 0x10;
    }

    background->layout = mapHeader->tileset.map;

    if (background->flags & 0x40) {
        background->metatileMap = mapHeader->metatileMap;
        background->mapWidth = mapHeader->mapWidth;
        background->mapHeight = mapHeader->mapHeight;
    }

    gBackgroundsCopyQueue[gBackgroundsCopyQueueIndex] = background; gBackgroundsCopyQueueIndex = (gBackgroundsCopyQueueIndex + 1) % (sizeof(gBackgroundsCopyQueue) / sizeof((gBackgroundsCopyQueue)[0]));;;
}




bool32 sub_8002B20(void)
{
    u16 sp00;
    s32 sp04 = 0;
    s32 bytesPerTileIndex;
    u16 sp0C;
    u16 sp10;
    u16 sp14;
    u32 affine;
    u32 bgId;
    s32 sb;
    u32 dmaSize;
    s32 i;
    s32 j;
    u16 k;







    while (gBackgroundsCopyQueueCursor != gBackgroundsCopyQueueIndex) {
        Background *bg;
# 109 "src/background.c"
        (*(vu16 *)(REG_BASE + 0x6));
        {
            Background **backgrounds = &gBackgroundsCopyQueue[0];
            s32 index = gBackgroundsCopyQueueCursor;
            bg = backgrounds[index];
            gBackgroundsCopyQueueCursor = (gBackgroundsCopyQueueCursor + 1) % (sizeof(gBackgroundsCopyQueue) / sizeof((gBackgroundsCopyQueue)[0]));

            if ((bg->flags & 0x20) && (bg->scrollX == bg->prevScrollX) && bg->scrollY == bg->prevScrollY)
                continue;
        }

        sp00 = bg->xTiles;

        bgId = (bg->flags & 0x3);
        if (bgId >= 2 && (gDispCnt & (0x0001 | 0x0002)) > 0x0000) {
            affine = (gBgCntRegs[bgId] >> 14);
            sp0C = (0x10 << affine);
            bytesPerTileIndex = 1;
        } else {


            if (bg->flags & 0x40) {
                if (gBgCntRegs[bgId] & 0x4000) {
                    sp0C = 64;
                } else {
                    sp0C = 32;
                }
            } else {
                sp0C = 32;
            }



            affine = (gBgCntRegs[bgId] >> 14);
            if ((affine == 1) || (affine == 3)) {


                sp0C = 64;

                sp04 = 0x800;
            }
            bytesPerTileIndex = 2;
        }


        sp0C = (u16)(sp0C * bytesPerTileIndex);

        if (!(bg->flags & 0x20)) {
            if (!(bg->flags & 0x40)) {

                u8 *r1 = (void *)&(((u8 *)(bg->layoutVram))[(bg->unk24 * sp0C)]);
                u16 *r7 = (void *)&(((u8 *)(r1))[(bg->unk22 * bytesPerTileIndex)]);
                u16 r5 = bg->targetTilesY;
                u16 k;






                if (bg->flags & 0x100) {

                    if (bg->flags & 0x80) {
                        u32 r0Index = (((bg->unk20 + r5) - 1) * sp00) * bytesPerTileIndex;
                        void *r2Ptr = (void *)&(((u8 *)(bg->layout))[(r0Index)]);
                        u16 *r4Ptr = (void *)&(((u8 *)(r2Ptr))[(((bg->unk1E + bg->targetTilesX) - 1) * bytesPerTileIndex)]);


                        while (r5-- != 0) {


                            for (k = 0; k < bg->targetTilesX; k++) {
                                r7[k] = (*(r4Ptr - k) ^ ((1 << 10) | (1 << 11)));
                            }

                            r7 = (void *)&(((u8 *)(r7))[(sp0C)]);
                            r4Ptr = (void *)(((u8 *)r4Ptr) - (sp00 * bytesPerTileIndex));
                        }
                    } else {

                        u32 someIndex = (bg->unk20 * sp00);
                        void *r2Ptr = (void *)&(((u8 *)(bg->layout))[(someIndex * bytesPerTileIndex)]);
                        u32 index2 = ((bg->unk1E + bg->targetTilesX) - 1);
                        u16 *r4Ptr = (void *)&(((u8 *)(r2Ptr))[(index2 * bytesPerTileIndex)]);


                        while (r5-- != 0) {
                            for (k = 0; k < bg->targetTilesX; k++) {
                                r7[k] = (*(r4Ptr - k) ^ (1 << 10));
                            }

                            r7 = (void *)&(((u8 *)(r7))[(sp0C)]);
                            r4Ptr = (void *)&(((u8 *)(r4Ptr))[((sp00 * bytesPerTileIndex))]);
                        }
                    }
                } else {
                    u16 *r4Ptr;






                    if (bg->flags & 0x80) {
                        u32 r0Index = (((bg->unk20 + r5) - 1) * sp00);
                        void *r1Ptr = (void *)&(((u8 *)(bg->layout))[(r0Index * bytesPerTileIndex)]);
                        r4Ptr = (void *)&(((u8 *)(r1Ptr))[(bg->unk1E * bytesPerTileIndex)]);

                        while (r5-- != 0) {
                            u16 i;
                            sb = sp00 * bytesPerTileIndex;

                            for (i = 0; i < bg->targetTilesX; i++) {
                                r7[i] = r4Ptr[i] ^ 0x800;
                            }

                            r7 = (void *)&(((u8 *)(r7))[(sp0C)]);

                            r4Ptr = (u16 *)(((u8 *)r4Ptr) - sb);
                        }
                    } else {
# 253 "src/background.c"
                        {

                            u32 r0Index = bg->unk20 * sp00 * bytesPerTileIndex;
                            void *r1Ptr = (void *)&(((u8 *)(bg->layout))[(r0Index)]);
                            void *r4Ptr = (void *)&(((u8 *)(r1Ptr))[(bg->unk1E * bytesPerTileIndex)]);







                            while (r5-- != 0) {

                                DmaSet(3, r4Ptr, r7, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((s32)(bg->targetTilesX * bytesPerTileIndex))/(16/8))));
                                r7 = (void *)&(((u8 *)(r7))[(sp0C)]);
                                r4Ptr = (void *)&(((u8 *)(r4Ptr))[(sp00 * bytesPerTileIndex)]);
                            }
                        }
                    }
                }
            } else {





                s32 sp18;
                s32 sp1C;
                u32 sp20;
                s32 r1;
                sp10 = bg->unk1E;
                sp14 = bg->unk20;


                for (i = 0; i < bg->targetTilesX; i += r1) {
                    s32 r5Res;
                    s32 r8;
                    s32 sp10_i = sp10 + i;
                    s32 temp;

                    sp18 = ({((bg->xTiles) != 0) ? ((s32)(sp10_i) / (s32)(bg->xTiles)) : 0;});
                    r1 = bg->xTiles;
                    r5Res = sp18;

                    sp1C = sp10_i - r5Res * bg->xTiles;

                    r8 = bg->targetTilesY;
                    temp = (bg->targetTilesX - i);
                    r1 -= sp1C;
                    if (r1 > temp)
                        r1 = (bg->targetTilesX - i);

                    sp20 = r1 * bytesPerTileIndex;



                    for (j = 0; j < bg->targetTilesY;) {
                        void *dmaSrc, *dmaDest;
                        s32 r5;





                        const u16 *r1Ptr;
                        void *r2Ptr;
                        void *r0Ptr;

                        s32 temp2;
                        u32 v;
                        s32 r4 = sp14 + j;
                        s32 result = ({((bg->yTiles) != 0) ? ((s32)(r4) / (s32)(bg->yTiles)) : 0;});
                        r4 -= result * bg->yTiles;
                        r5 = bg->yTiles - r4;

                        result *= bg->mapWidth;
                        r2Ptr = (void *)bg->metatileMap;
                        temp2 = sp18 << 1;
                        r0Ptr = (void *)&(((u8 *)(r2Ptr))[(result * 2)]);
                        r1Ptr = (void *)&(((u8 *)(r0Ptr))[(temp2)]);


                        v = *((u16 *)r1Ptr) * bg->xTiles * bg->yTiles;
                        v += r4 * bg->xTiles + sp1C;
                        v *= bytesPerTileIndex;

                        dmaSrc = ((u8 *)bg->layout) + v;

                        {
                            void *r0;
                            r0 = (void *)&(((u8 *)(bg->layoutVram))[(bg->unk24)]);
                            r0 = (void *)&(((u8 *)(r0))[(sp0C * j)]);
                            r0 = (void *)&(((u8 *)(r0))[(bg->unk22)]);
                            dmaDest = (void *)&(((u8 *)(r0))[(i * bytesPerTileIndex)]);
                        }

                        j += r5;

                        if (r5 > r8)
                            r5 = r8;

                        r8 -= r5;

                        while (r5-- != 0) {
                            DmaSet(3, dmaSrc, dmaDest, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((s32)sp20)/(16/8))));
                            dmaDest += sp0C;
                            dmaSrc += sp00 * bytesPerTileIndex;
                        }
                    }
                }

            }
        } else {





            if (!(bg->flags & 0x40)) {

                while (bg->scrollX >= sp00 * 8)
                    bg->scrollX -= sp00 * 8;

                while (bg->scrollY >= bg->yTiles * 8) {
                    bg->scrollY -= bg->yTiles * 8;
                }
            }

            gBgScrollRegs[bgId][0] = bg->scrollX & 0x7;
            gBgScrollRegs[bgId][1] = bg->scrollY & 0x7;


            if ((bg->prevScrollX >> 3 != bg->scrollX >> 3) || (bg->prevScrollY >> 3 != bg->scrollY >> 3)) {
                if (!(bg->flags & 0x40)) {


                    u16 *r7Ptr;
                    s16 r2;
                    u16 r5;
                    u16 *sp3C;
                    u32 notherIndex;
                    sp10 = (u16)((bg->scrollX >> 3) + bg->unk1E);
                    sp14 = (u16)((bg->scrollY >> 3) + bg->unk20);

                    notherIndex = (bg->unk24 * sp0C);
                    r7Ptr = (void *)&(((u8 *)(bg->layoutVram))[(notherIndex)]);
                    r7Ptr = (void *)&(((u8 *)(r7Ptr))[(bg->unk22 * bytesPerTileIndex)]);

                    if (((bg->targetTilesX + sp10) + 1) > bg->xTiles) {
                        r2 = (bg->targetTilesX + sp10) - (bg->xTiles - 1);
                    } else {
                        r2 = 0;
                    }

                    r5 = bg->targetTilesY + 1;
                    if (bg->flags & 0x100) {

                        if (bg->flags & 0x80) {

                            u32 index = ((bg->unk20 + r5) - 1) * bg->xTiles;
                            u16 *r1Ptr = (void *)&(((u8 *)(bg->layout))[(index * bytesPerTileIndex)]);
                            u32 index2 = ((bg->unk1E + bg->targetTilesX) - 1);
                            u16 *r4Ptr = (void *)&(((u8 *)(r1Ptr))[(index2 * bytesPerTileIndex)]);

                            while (r5-- != 0) {

                                for (k = 0; k < bg->targetTilesX; k++) {
                                    u32 mask = ((1 << 10) | (1 << 11));

                                    sp3C = &r7Ptr[k];
                                    *sp3C = (r4Ptr[0 - k] ^ mask);
                                }
                            }
                        } else {

                            u32 index;
                            u16 *r1Ptr;
                            u32 index2;
                            u16 *r4Ptr;
                            index = bg->unk20;
                            index *= bytesPerTileIndex;
                            r1Ptr = (u16 *)&((u8 *)bg->layout)[index];
                            index2 = bg->unk1E + bg->targetTilesX - 1;
                            r4Ptr = (void *)&(((u8 *)(r1Ptr))[(index2 * bytesPerTileIndex)]);

                            while (r5-- != 0) {

                                for (k = 0; k < bg->targetTilesX; k++) {

                                    sp3C = &r7Ptr[k];
                                    *sp3C = (r4Ptr[0 - k] ^ (1 << 10));
                                }
                            }
                        }
                    } else {

                        if (bg->flags & 0x80) {

                            u32 index = ((sp14 + r5) - 1) * bg->xTiles;
                            u16 *r0Ptr = (u16 *)&((u8 *)bg->layout)[index * bytesPerTileIndex];
                            u32 index2 = sp10;
                            u16 *r4Ptr = &r0Ptr[index2 * bytesPerTileIndex];

                            while (r5-- != 0) {
                                u16 k;

                                for (k = 0; k < bg->targetTilesX; k++) {
                                    sp3C = &r7Ptr[k];
                                    *sp3C = r4Ptr[k] ^ (1 << 11);
                                }
                                r7Ptr = (void *)&(((u8 *)(r7Ptr))[(sp0C)]);
                                r4Ptr = (void *)(((u8 *)r4Ptr) - sp00 * bytesPerTileIndex);
                            }
                        } else {

                            u32 index = (sp14 * bg->xTiles);
                            u16 *r0Ptr = (void *)&(((u8 *)(bg->layout))[(index * bytesPerTileIndex)]);
                            u32 index2 = sp10;
                            u16 *r4Ptr = (void *)&(((u8 *)(r0Ptr))[(index2 * bg->xTiles)]);


                            while (r5-- != 0) {
                                s32 var = r2 - 1;
                                DmaSet(3, r4Ptr, r7Ptr, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((s32)({ dmaSize = bg->targetTilesX - var; dmaSize *= bytesPerTileIndex; dmaSize; }))/(16/8))))



                                             ;

                                r7Ptr = (void *)&(((u8 *)(r7Ptr))[(sp0C)]);
                                r4Ptr = (void *)&(((u8 *)(r4Ptr))[(sp00 * bytesPerTileIndex)]);
                            }
                        }
                    }

                    if (r2 != 0) {

                        u8 *r1 = (void *)&(((u8 *)(bg->layoutVram))[(bg->unk24 * sp0C)]);
                        u32 displayTile = bg->unk22 + bg->xTiles - sp10;
                        u16 *r7Ptr = (void *)&(((u8 *)(r1))[(displayTile * bytesPerTileIndex)]);
                        u16 r5 = (bg->targetTilesY + 1);

                        if (bg->flags & 0x100) {
                            if (bg->flags & 0x80) {

                                u32 index = ((sp14 + r5) - 1) * bg->xTiles;
                                u16 *r1Ptr = (void *)&(((u8 *)(bg->layout))[(index * bytesPerTileIndex)]);
                                u16 *r4Ptr = (void *)&(((u8 *)(r1Ptr))[((r2 - 1) * bytesPerTileIndex)]);

                                while (--r5 != (u16)-1) {
                                    for (k = 0; k < bg->targetTilesX; k++) {
                                        r7Ptr[k] = *(r4Ptr - k) ^ ((1 << 10) | (1 << 11));
                                    }
                                    r7Ptr = (void *)&(((u8 *)(r7Ptr))[(sp0C)]);
                                    r4Ptr = (u16 *)(((u8 *)r4Ptr) - sp00 * bytesPerTileIndex);
                                }
                            } else {

                                u32 index;
                                u16 *r4Ptr;
                                index = sp14 * bg->xTiles;
                                index *= bytesPerTileIndex;
                                r1 = &((u8 *)bg->layout)[index];
                                r4Ptr = (u16 *)&r1[(r2 - 1) * bytesPerTileIndex];

                                while (--r5 != (u16)-1) {
                                    for (k = 0; k < bg->targetTilesX; k++) {
                                        r7Ptr[k] = *(r4Ptr - k) ^ (1 << 10);
                                    }
                                    r7Ptr = (void *)&(((u8 *)(r7Ptr))[(sp0C)]);
                                    r4Ptr = (void *)&(((u8 *)(r4Ptr))[(sp00 * bytesPerTileIndex)]);
                                }
                            }
                        } else {

                            if (bg->flags & 0x80) {

                                u32 index = ((sp14 + r5) - 1) * bg->xTiles;
                                u16 *r4Ptr = (u16 *)&((u8 *)bg->layout)[index * bytesPerTileIndex];


                                while (--r5 != (u16)-1) {
                                    for (k = 0; k < r2; k++) {
                                        u16 *sp3C = &r7Ptr[k];
                                        *sp3C = r4Ptr[k] ^ (1 << 11);
                                    }
                                    r7Ptr = (void *)&(((u8 *)(r7Ptr))[(sp0C)]);
                                    r4Ptr = (u16 *)(((u8 *)r4Ptr) - sp00 * bytesPerTileIndex);
                                }
                            } else {

                                u32 index = (sp14 * bg->xTiles);
                                u16 *r4Ptr = (void *)&(((u8 *)(bg->layout))[(index * bytesPerTileIndex)]);

                                while (r5-- != 0) {
                                    dmaSize = bytesPerTileIndex * r2;

                                    DmaSet(3, r4Ptr, r7Ptr, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((s32)dmaSize)/(16/8))));

                                    r7Ptr = (void *)&(((u8 *)(r7Ptr))[(sp0C)]);
                                    r4Ptr = (void *)&(((u8 *)(r4Ptr))[(sp00 * bytesPerTileIndex)]);
                                }
                            }
                        }
                    }
                } else {



                    sp10 = (bg->scrollX / 8) + bg->unk1E;
                    sp14 = (bg->scrollY / 8) + bg->unk20;

                    for (i = 0; i < bg->targetTilesX;) {

                        s32 r4 = sp10 + i;
                        s32 sp24 = ({((bg->xTiles) != 0) ? ((s32)(r4) / (s32)(bg->xTiles)) : 0;});
                        s32 r1 = bg->xTiles;
                        s32 sp28 = r4 - (sp24 * r1);
                        s32 sp2C;

                        s32 r8 = bg->targetTilesY;
                        s32 remainingX = bg->targetTilesX - i;
                        r1 = r1 - sp28;

                        if (r1 > remainingX)
                            r1 = remainingX;


                        sp2C = r1 * bytesPerTileIndex;

                        for (j = 0; j < bg->targetTilesY;) {

                            s32 divident = sp14 + j;
                            s32 yPos = ({((bg->yTiles) != 0) ? ((s32)(divident) / (s32)(bg->yTiles)) : 0;});
                            s32 new_r4 = divident - (yPos * bg->yTiles);
                            s32 r5 = bg->yTiles - new_r4;
                            yPos *= bg->mapWidth;

                            {
                                s32 metatileIndex;
                                s32 otherVal;
                                s32 mtIndex = *(&bg->metatileMap[yPos] + sp24);




                                if (mtIndex >= 1024) {
                                    mtIndex = 0;
                                }

                                metatileIndex = mtIndex * bg->xTiles * bg->yTiles;

                                otherVal = new_r4 * bg->xTiles;
                                otherVal += sp28;
                                otherVal += metatileIndex;

                                {

                                    u8 *dmaSrc;
                                    u8 *dmaDest;
                                    u8 *destPtr;

                                    dmaSrc = (void *)&(((u8 *)(bg->layout))[(otherVal * bytesPerTileIndex)]);
                                    destPtr = (void *)&(((u8 *)(bg->layoutVram))[(bg->unk24)]);
                                    destPtr += sp0C * j;
                                    destPtr += +bg->unk22;
                                    dmaDest = (void *)&(((u8 *)(destPtr))[(i * bytesPerTileIndex)]);

                                    j += r5;

                                    if (r5 > r8)
                                        r5 = r8;
                                    r8 -= r5;


                                    while (r5-- != 0) {
                                        dmaSize = sp2C;
                                        DmaSet(3, dmaSrc, dmaDest, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((s32)dmaSize)/(16/8))));
                                        dmaDest += sp0C;
                                        dmaSrc += sp00 * bytesPerTileIndex;
                                    }
                                }
                            }
                        }

                        i += r1;
                    }
                }
            }
        }

        (*(vu16 *)(REG_BASE + 0x6));
        bg->prevScrollX = bg->scrollX;
        bg->prevScrollY = bg->scrollY;
    }

    return 1;
}


void UpdateBgAnimationTiles(Background *bg)
{

    Tilemap *tilemap = gTilemapsRef[bg->tilemapId];
    if (tilemap->animFrameCount > 0) {
        if (tilemap->animDelay <= ++bg->animDelayCounter) {
            u32 animTileSize;

            bg->animDelayCounter = 0;

            if (tilemap->animFrameCount <= ++bg->animFrameCounter)
                bg->animFrameCounter = 0;

            animTileSize = tilemap->animTileSize;

            if (!(bg->flags & 0x200)) {
                if (bg->animFrameCounter == 0) {
                    bg->graphics.src = tilemap->tiles;
                } else {
                    const u8 *tiles = tilemap->tiles;
                    u32 size = tilemap->tilesSize;
                    tiles += size;
                    tiles += (bg->animFrameCounter - 1) * animTileSize;
                    bg->graphics.src = tiles;
                }
            } else {
                u8 *ts = bg->graphics.dest;
                ts += tilemap->tilesSize;
                ts += (bg->animFrameCounter * animTileSize);
                bg->graphics.src = ts;
            }
            {
                bg->graphics.size = animTileSize;
                memcpy(&gVramGraphicsCopyQueueBuffer[gVramGraphicsCopyQueueIndex], &bg->graphics, sizeof(struct GraphicsData)); gVramGraphicsCopyQueue[gVramGraphicsCopyQueueIndex] = &gVramGraphicsCopyQueueBuffer[gVramGraphicsCopyQueueIndex]; gVramGraphicsCopyQueueIndex = (gVramGraphicsCopyQueueIndex + 1) % (sizeof(gVramGraphicsCopyQueue) / sizeof((gVramGraphicsCopyQueue)[0]));;
            }
        }
    }

}




s32 UpdateSpriteAnimation_BG(Sprite *s)
{
    if (s->frameFlags & ((1) << (14)))
        return 0;

    if ((((s)->prevVariant != (s)->variant) || ((s)->prevAnim != (s)->graphics.anim))) { (s)->graphics.size = 0; (s)->prevVariant = (s)->variant; (s)->prevAnim = (s)->graphics.anim; (s)->animCursor = 0; (s)->qAnimDelay = 0; (s)->frameFlags &= ~(((1) << (14))); };

    if (s->qAnimDelay > 0)
        s->qAnimDelay -= s->animSpeed * 16;
    else {
        s32 ret;
        const ACmd *cmd;
        const ACmd *script;
        const ACmd **variants;


        variants = gRefSpriteTables->animations[s->graphics.anim];
        script = variants[s->variant];
        cmd = ((void *)(script) + (s->animCursor * sizeof(s32)));
        while (cmd->id < 0) {

            ret = animCmdTable_BG[~cmd->id]((void *)cmd, s);
            if (ret != 1) {



                ACmd *newScript;

                if (ret != -1) {
                    return ret;
                }


                variants = gRefSpriteTables->animations[s->graphics.anim];
                newScript = (ACmd *)variants[s->variant];

                s->animCursor = 0;

                script = newScript;
            }
            cmd = ((void *)(script) + (s->animCursor * sizeof(s32)));
        }


        s->qAnimDelay += (((ACmd_ShowFrame *)cmd)->delay << 8);
        s->qAnimDelay -= s->animSpeed * 16;
        {
            s32 frame = ((ACmd_ShowFrame *)cmd)->index;
            if (frame != -1) {
                const struct SpriteTables *sprTables = gRefSpriteTables;

                s->dimensions = &sprTables->dimensions[s->graphics.anim][frame];
            } else {
                s->dimensions = (void *)-1;
            }
        }

        s->animCursor += 2;
    }
    return 1;
}




static AnimCmdResult animCmd_GetTiles_BG(void *cursor, Sprite *s)
{
    ACmd_GetTiles *cmd = (ACmd_GetTiles *)cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    if ((s->frameFlags & ((1) << (19))) == 0) {
        s32 tileIndex = cmd->tileIndex;

        if (tileIndex < 0) {



            tileIndex &= ~0x80000000;

            s->graphics.src = &gRefSpriteTables->tiles_8bpp[tileIndex * 64];
            s->graphics.size = cmd->numTilesToCopy * 64;
        } else {
            s->graphics.src = &gRefSpriteTables->tiles_4bpp[tileIndex * 32];
            s->graphics.size = cmd->numTilesToCopy * 32;
        }

        memcpy(&gVramGraphicsCopyQueueBuffer[gVramGraphicsCopyQueueIndex], &s->graphics, sizeof(struct GraphicsData)); gVramGraphicsCopyQueue[gVramGraphicsCopyQueueIndex] = &gVramGraphicsCopyQueueBuffer[gVramGraphicsCopyQueueIndex]; gVramGraphicsCopyQueueIndex = (gVramGraphicsCopyQueueIndex + 1) % (sizeof(gVramGraphicsCopyQueue) / sizeof((gVramGraphicsCopyQueue)[0]));;
    }

    return 1;
}





static AnimCmdResult animCmd_AddHitbox_BG(void *cursor, Sprite *s)
{
    ACmd_Hitbox *cmd = (ACmd_Hitbox *)cursor;
    s32 index = cmd->hitbox.index & 0xF;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    DmaSet(3, &cmd->hitbox, &s->hitboxes[index].index, (u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((sizeof(Hitbox))/(32/8))));

    if ((cmd->hitbox.left == 0) && (cmd->hitbox.top == 0) && (cmd->hitbox.right == 0) && (cmd->hitbox.bottom == 0)) {
        s->hitboxes[index].index = -1;
    } else {
        if (s->frameFlags & ((1) << (11))) {
            s->hitboxes[index].top ^= (u8)s->hitboxes[index].bottom; s->hitboxes[index].bottom ^= (u8)s->hitboxes[index].top; s->hitboxes[index].top = ((u8)s->hitboxes[index].bottom ^ (u8)s->hitboxes[index].top);;
        }

        if (s->frameFlags & ((1) << (10))) {
            s->hitboxes[index].left ^= (u8)s->hitboxes[index].right; s->hitboxes[index].right ^= (u8)s->hitboxes[index].left; s->hitboxes[index].left = ((u8)s->hitboxes[index].right ^ (u8)s->hitboxes[index].left);;
        }
    }

    return 1;
}

void DisplaySprite_BG(Sprite *s)
{
    const SpriteOffset *dims;

    gBgSprites[gBgSpritesCount] = s;
    gBgSpritesCount++;

    if (s->dimensions != (void *)-1) {
        u32 bgId;

        dims = s->dimensions;
        bgId = (((s)->frameFlags & (((3) << (15)))) >> ((15)));


        if ((bgId > 1) && (gDispCnt & (0x0001 | 0x0002))) {

            s32 affineX, affineY;
            s32 posX, posY;

            posX = dims->offsetX - s->x;
            affineX = ({((16) != 0) ? ((s32)(posX) % (s32)(16)) : 0;});
            gBgAffineRegs[bgId - 2].x = ((s32)((affineX)*256));

            posY = dims->offsetY - s->y;
            affineY = ({((8) != 0) ? ((s32)(posY) % (s32)(8)) : 0;});
            gBgAffineRegs[bgId - 2].y = ((s32)((affineY)*256));
        } else {

            s32 scrollX, scrollY;
            s32 posX, posY;

            posX = dims->offsetX - s->x;
            scrollX = ({((16) != 0) ? ((s32)(posX) % (s32)(16)) : 0;});
            gBgScrollRegs[bgId][0] = scrollX;

            posY = dims->offsetY - s->y;
            scrollY = ({((8) != 0) ? ((s32)(posY) % (s32)(8)) : 0;});
            gBgScrollRegs[bgId][1] = scrollY;
        }
    }
}



bool32 sub_80039E4(void)
{

    s32 sp28 = 5;
# 874 "src/background.c"
    gBgSpritesCount = 0;
    return 1;



    if (gBgSpritesCount != 0) {
        OamDataShort oam;
        s32 r5;
        s32 sp08;
        u16 shapeAndSize;
        Sprite *s;
        const SpriteOffset *dims;
        u32 sp10;
        const u16 *const *oamSub;
        OamDataShort *sp1C;
        u32 tilesX;
        u32 tilesY;
        s32 xPos;
        s32 yPos;
        u16 oamX, oamY;

        for (r5 = 0; r5 < gBgSpritesCount; r5++) {

            s = gBgSprites[r5];
            dims = s->dimensions;

            if (dims != (void *)-1) {
                u32 bgId = (((s)->frameFlags & (((3) << (15)))) >> ((15)));
                void *bgVram = (void *)(((u8*)&VRAM[0]) + (0x4000 * ((gBgCntRegs[bgId] & ((3) << 2)) >> 2)));
                void *bgBase = bgVram + ((gBgCntRegs[bgId] & 0x3F00) << 3);

                if (gBgCntRegs[bgId] & 0x0080) {

                    sp28 = 6;
                }







                if ((bgId >= 2) && ((gDispCnt & 0x3) != 0x0000)) {


                    u8 sp30;
                    s32 shrunkTileId;
                    void *r7;
                    u16 affine = (gBgCntRegs[bgId] & 0xC000) >> 14;
                    sp10 = ((1024 * 1024) << affine) >> 16;
                    oamSub = gRefSpriteTables->oamData;


                    sp1C = (OamDataShort *)oamSub[s->graphics.anim];
                    sp1C = &sp1C[dims->oamIndex];

                    for (sp08 = 0; sp08 < dims->numSubframes; sp08++) {
                        u16 tileId;

                        sp30 = sp10;
                        DmaSet(3, sp1C, &oam, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8))));
                        sp1C++;

                        shapeAndSize = oam.shape << 2;
                        shapeAndSize |= oam.size;
                        tilesX = gOamShapesSizes[shapeAndSize][0] >> 3;
                        tilesY = gOamShapesSizes[shapeAndSize][1] >> 3;
                        yPos = s->y - dims->offsetY;
                        xPos = s->x - dims->offsetX;
                        xPos &= ~0xF;
                        r7 = bgBase + (((oam.y + yPos) >> 3) * sp10);
                        tileId = ((size_t)(s->graphics.dest - bgVram)) >> sp28;
                        shrunkTileId = (oam.tileNum + tileId) & 0xFF;



                        while (tilesY-- != 0) {




                        }
                    }
                } else {

                    u8 bgReg = (gBgCntRegs[bgId] >> 14);
                    if (bgReg == 2 || bgReg == 3) {
                        sp10 = 0x40;
                    }

                    sp1C = (OamDataShort *)gRefSpriteTables->oamData[s->graphics.anim];
                    sp1C = (OamDataShort *)&sp1C[dims->oamIndex];


                    for (sp08 = 0; sp08 < dims->numSubframes; sp08++) {
                        s32 someOffsetY;
                        u32 yFlip;
                        DmaSet(3, sp1C, &oam, (u32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((sizeof(OamDataShort))/(16/8))));
                        sp1C++;

                        shapeAndSize = oam.shape << 2;
                        shapeAndSize |= oam.size;
                        tilesX = gOamShapesSizes[shapeAndSize][0] >> 3;
                        tilesY = gOamShapesSizes[shapeAndSize][1] >> 3;
                        oamY = oam.y;
                        oamX = oam.x;
                        oam.paletteNum += s->palId;


                        yFlip = s->frameFlags >> 11;
                        yFlip ^= (dims->flip >> 1);

                        if (yFlip & 1) {


                            oam.matrixNum ^= 0x4;
                            if (dims->flip & 0x1) {

                                someOffsetY = s->y + dims->offsetY;
                            } else {

                                someOffsetY = s->y + (dims->height - dims->offsetY);
                            }

                            someOffsetY -= 8;
                            oamX = -oamX;
                        } else {

                            someOffsetY = s->y - dims->offsetY;
                        }

                        if (((((s)->frameFlags & (((1) << (10)))) >> ((10))) & 0x1) != (dims->flip & 0x1)) {

                        } else {

                        }
                    }
                }
            }
        }

        gBgSpritesCount = 0;
    }


    return 1;
}


void sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine)
{
    affine->pa = (((int)(((gSineTable[(p0) + 256])) >> 6)) * (s16)({((p1) != 0) ? ((s32)(0x10000) / (s32)(p1)) : 0;})) >> 8;
    affine->pb = (((int)(((gSineTable[(p0)])) >> 6)) * (s16)({((p1) != 0) ? ((s32)(0x10000) / (s32)(p1)) : 0;})) >> 8;
    affine->pc = ((-(gSineTable[(p0)]) >> 6) * (s16)({((p2) != 0) ? ((s32)(0x10000) / (s32)(p2)) : 0;})) >> 8;
    affine->pd = (((int)(((gSineTable[(p0) + 256])) >> 6)) * (s16)({((p2) != 0) ? ((s32)(0x10000) / (s32)(p2)) : 0;})) >> 8;

    p5 *= -1;
    p6 *= -1;
    {

        s32 r1 = (s16)affine->pa * p5;
        s32 r3 = (s16)affine->pb * p6;

        affine->x = (r1 + r3) + p3 * 256;
    }
    {

        s32 r1 = (s16)affine->pc * p5;
        s32 r3 = (s16)affine->pd * p6;

        affine->y = (r1 + r3) + p4 * 256;
    }
}






u32 sub_8004010(void)
{
    u8 bgIndex = 0;
    u16 sp00[2];
    u8 r4;
    u8 *spVramPtr;
    u16 bgSize_TxtOrAff;

    s32 sp08;

    for (; bgIndex < 4; bgIndex++) {

        if ((gBgSprites_Unknown2[bgIndex][1] == gBgSprites_Unknown2[bgIndex][3])
            && (gBgSprites_Unknown2[bgIndex][0] == gBgSprites_Unknown2[bgIndex][2]))
            continue;

        {
            u16 target = gBgCntRegs[bgIndex];
            u16 *vramBgCtrl = (u16 *)VRAM;
            target &= 0x3F00;
            vramBgCtrl += target * 4;

            r4 = gBgSprites_Unknown2[bgIndex][1];

            sp08 = gBgSprites_Unknown2[bgIndex][0];

            if ((bgIndex > 1) && (gDispCnt & (0x0002 | 0x0001 | 0x0000))) {

                spVramPtr = (u8 *)&vramBgCtrl[sp08];
                bgSize_TxtOrAff = (0x10 << (gBgCntRegs[bgIndex] >> 14));

                if (gBgSprites_Unknown2[bgIndex][3] == 0xFF) {

                    u16 v = gBgSprites_Unknown1[bgIndex];
                    u32 value;
                    v |= v << 8;

                    value = ((gBgSprites_Unknown2[bgIndex][3] - r4) * bgSize_TxtOrAff);
                    { u16 tmp = (u16)(v); DmaSet(3, &tmp, (void *)&spVramPtr[bgSize_TxtOrAff], (u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((((s32)(value + (value >> 31))) >> 1))/(16/8)))); };
                } else {


                    for (; r4 < gBgSprites_Unknown2[bgIndex][3]; r4++) {
                        u16 v = gBgSprites_Unknown1[bgIndex];
                        v |= v << 8;

                        { u16 tmp = (u16)(v); DmaSet(3, &tmp, &spVramPtr[bgIndex * r4], (u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((s32)(bgIndex * 4 - gBgSprites_Unknown2[bgIndex][0] + 1))/(16/8)))); };
                    }
                }

            } else {

                int tileSize = 32;
                u8 *p1p;

                if ((u8)((gBgCntRegs[sp08] >> 14) - 2) <= 1)
                    tileSize = 64;

                if (gBgSprites_Unknown2[bgIndex][2] == 0xFF) {
                    u8 r1 = gBgSprites_Unknown1[bgIndex];
                    p1p = &gBgSprites_Unknown2[bgIndex][tileSize];
                    sp00[0] = r1;






                } else {

                    for (; r4 <= gBgSprites_Unknown2[bgIndex][3]; r4++) {

                        { u16 tmp = (u16)(gBgSprites_Unknown1[bgIndex]); DmaSet(3, &tmp, &gBgSprites_Unknown2[bgIndex][tileSize], (u32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((sizeof(gBgSprites_Unknown2[0]) / sizeof((gBgSprites_Unknown2[0])[0])))/(16/8)))); }
                                                                      ;
                    }
                }
            }

            { u32 tmp = (u32)(0); DmaSet(3, &tmp, &gBgSprites_Unknown2[bgIndex], (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | (((sizeof(gBgSprites_Unknown2[bgIndex]) / sizeof((gBgSprites_Unknown2[bgIndex])[0])))/(32/8)))); };
        }
    }

    return 1;
}

# 1240 "src/background.c"
s32 RenderText(void *dest, const void *font, u16 x, u16 y, u8 bg, const char *text, u8 palette)
{
    u8 i = 0;

    u16 *vramTiles = (void *)(&VRAM[0] + ((gBgCntRegs[bg] & ((0x3) << 2)) << 12));

    u16 layoutBase = (gBgCntRegs[bg] & 0x3F00) << 3;
    u16 *vramLayout = ({ (u16 *)(VRAM + (layoutBase)); }) + y * 32 + x;

    for (; text[i] != 0; i++) {
        u16 *copyDest = dest + (i * 32);
        u16 tile;
        u16 *addr;



        CpuFastSet(font + (text[i] * 32), copyDest, ((32)/(32/8) & 0x1FFFFF));


        tile = (copyDest - vramTiles) / 16u;





        addr = &vramLayout[i];

        *addr = (palette << 12) | tile;
    }

    return i * 32;
}
# 1287 "src/background.c"
static AnimCmdResult animCmd_GetPalette_BG(void *cursor, Sprite *s)
{
    ACmd_GetPalette *cmd = (ACmd_GetPalette *)cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    if (!(s->frameFlags & ((1) << (18)))) {
        s32 paletteIndex = cmd->palId;





        DmaSet(3, &gRefSpriteTables->palettes[paletteIndex * 16], &gBgPalette[(s->palId)*16u + (cmd->insertOffset)], (u32)((0x8000 | 0x0000 | 0x0400 | 0x0000 | 0x0000) << 16 | ((cmd->numColors * 2)/(32/8))))
                                     ;

        gFlags |= 0x1;
    }

    return 1;
}


static AnimCmdResult animCmd_JumpBack_BG(void *cursor, Sprite *s)
{
    ACmd_JumpBack *cmd = cursor;
    s->animCursor -= cmd->offset;

    return 1;
}


static AnimCmdResult animCmd_End_BG(void *cursor, Sprite *s)
{
    (s)->frameFlags |= (((1) << (14)));

    return 0;
}


static AnimCmdResult animCmd_PlaySoundEffect_BG(void *cursor, Sprite *s)
{
    ACmd_PlaySoundEffect *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));


    m4aSongNumStart(cmd->songId);

    return 1;
}



static AnimCmdResult animCmd_TranslateSprite_BG(void *cursor, Sprite *s)
{
    ACmd_TranslateSprite *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    s->x += cmd->x;
    s->y += cmd->y;

    return 1;
}


static AnimCmdResult animCmd_8_BG(void *cursor, Sprite *s)
{
    ACmd_8 *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    return 1;
}

static AnimCmdResult animCmd_SetIdAndVariant_BG(void *cursor, Sprite *s)
{
    ACmd_SetIdAndVariant *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));

    s->graphics.anim = cmd->animId;
    s->prevVariant = 0xFF;
    s->variant = cmd->variant;

    return -1;
}

static AnimCmdResult animCmd_10_BG(void *cursor, Sprite *s)
{
    ACmd_10 *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));


    return 1;



}


static AnimCmdResult animCmd_SetSpritePriority_BG(void *cursor, Sprite *s)
{
    ACmd_SetSpritePriority *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));
    return 1;
}


static AnimCmdResult animCmd_SetOamOrder_BG(void *cursor, Sprite *s)
{
    ACmd_SetOamOrder *cmd = cursor;
    s->animCursor += ((sizeof(*cmd)) / sizeof(s32));
    return 1;
}
