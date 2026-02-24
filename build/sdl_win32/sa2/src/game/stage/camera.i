# 0 "src/game/stage/camera.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/stage/camera.c"
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
# 2 "src/game/stage/camera.c" 2
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
# 3 "src/game/stage/camera.c" 2
# 1 "include/sprite.h" 1
# 4 "src/game/stage/camera.c" 2
# 1 "include/animation_commands_bg.h" 1



# 1 "include/gba/types.h" 1
# 5 "include/animation_commands_bg.h" 2


void UpdateBgAnimationTiles(Background *);

s32 RenderText(void *dest, const void *font, u16 x, u16 y, u8 bg, const char *text, u8 palette);
# 5 "src/game/stage/camera.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 6 "src/game/stage/camera.c" 2

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
# 8 "src/game/stage/camera.c" 2
# 1 "include/game/sa1_sa2_shared/spot_light.h" 1





bool32 CreateSpotLightBeams(void);
# 9 "src/game/stage/camera.c" 2

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
# 11 "src/game/stage/camera.c" 2

# 1 "include/game/stage/camera.h" 1






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
# 8 "include/game/stage/camera.h" 2

void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 13 "src/game/stage/camera.c" 2
# 1 "include/game/stage/stage.h" 1







void ApplyGameStageSettings(void);
void GameStageStart(void);
void CreateGameStage(void);

void HandleLifeLost(void);
void HandleDeath(void);

extern struct Task *gGameStageTask;
# 14 "src/game/stage/camera.c" 2
# 1 "include/game/stage/player.h" 1




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
# 6 "include/game/stage/player.h" 2


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
# 15 "src/game/stage/camera.c" 2
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
# 16 "src/game/stage/camera.c" 2

# 1 "include/constants/tilemaps.h" 1
# 18 "src/game/stage/camera.c" 2
# 63 "src/game/stage/camera.c"
struct Backgrounds {
    Background unk0;
    Background unk40;
    Background unk80;
    Background unkC0;
};


struct Backgrounds __attribute__((aligned(16))) gStageBackgroundsRam = {};


__attribute__((unused)) u32 unused_3005950[3] = {};


struct Camera __attribute__((aligned(8))) gCamera = {};

void RenderMetatileLayers(s32, s32);

void Task_CallUpdateCamera(void);
void TaskDestructor_Camera(struct Task *);
void Task_UpdateCamera(void);


void CreateStageBg_Default(void);
void CreateStageBg_Dummy(void);
void StageBgUpdate_Dummy(s32 x, s32 y);


void sub_801E3F0(void);
void HBlankCB_801E434(int_vcount vcount);
void HBlankCB_801E454(int_vcount vcount);
void nullsub_801E494(void);
void HBlankCB_BgUpdateZone5ActBoss(int_vcount vcount);
void HBlankCB_BgUpdateZoneFinalActXX(int_vcount vcount);


void CreateStageBg_Zone1(void);
void StageBgUpdate_Zone1Acts12(s32 a, s32 b);
void StageBgUpdate_Zone1ActBoss(s32 a, s32 b);

void CreateStageBg_Zone2(void);
void StageBgUpdate_Zone2Acts12(s32 a, s32 b);
void StageBgUpdate_Zone2ActBoss(s32 a, s32 b);

void CreateStageBg_Zone3(void);
void StageBgUpdate_Zone3Acts12(s32 a, s32 b);
void StageBgUpdate_Zone3ActBoss(s32 a, s32 b);

void CreateStageBg_Zone4(void);
void StageBgUpdate_Zone4Acts12(s32 a, s32 b);
void StageBgUpdate_Zone4ActBoss(s32 a, s32 b);

void CreateStageBg_Zone5(void);
void StageBgUpdate_Zone5Acts12(s32 a, s32 b);
void StageBgUpdate_Zone5ActBoss(s32 a, s32 b);

void CreateStageBg_Zone6_Acts(void);
void CreateStageBg_Zone6_Boss(void);
void StageBgUpdate_Zone6Acts12(s32 a, s32 b);
void StageBgUpdate_Zone6ActBoss(s32 a, s32 b);

void CreateStageBg_Zone7(void);
void StageBgUpdate_Zone7Acts12(s32, s32);
void StageBgUpdate_Zone7ActBoss(s32, s32);
void Zone7BgUpdate_Inside(s32, s32);
void Zone7BgUpdate_Outside(s32, s32);

void CreateStageBg_ZoneFinal_0(void);
void StageBgUpdate_Dummy(s32, s32);
void StageBgUpdate_ZoneFinalActXX(s32, s32);
void StageBgUpdate_ZoneFinalActTA53(s32, s32);

const Background gStageCameraBgTemplates[4] = {
    [0] = {
        .graphics = {
            .src = 
# 138 "src/game/stage/camera.c" 3 4
                  ((void *)0)
# 138 "src/game/stage/camera.c"
                      ,
            .dest = (void*)&VRAM[0],
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(((u8*)&VRAM[0]) + (0x800 * (52))),
        .layout = 
# 144 "src/game/stage/camera.c" 3 4
                 ((void *)0)
# 144 "src/game/stage/camera.c"
                     ,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (426 / 8) + 1,
        .targetTilesY = (240 / 8) + 1,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x40 | 0x20 | 0x10 | 0x8 | (1),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = 
# 164 "src/game/stage/camera.c" 3 4
                      ((void *)0)
# 164 "src/game/stage/camera.c"
                          ,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [1] = {
        .graphics = {
            .src = 
# 170 "src/game/stage/camera.c" 3 4
                  ((void *)0)
# 170 "src/game/stage/camera.c"
                      ,
            .dest = (void*)&VRAM[0],
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(((u8*)&VRAM[0]) + (0x800 * (56))),
        .layout = 
# 176 "src/game/stage/camera.c" 3 4
                 ((void *)0)
# 176 "src/game/stage/camera.c"
                     ,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (426 / 8) + 1,
        .targetTilesY = (240 / 8) + 1,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x40 | 0x20 | (2),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = 
# 196 "src/game/stage/camera.c" 3 4
                      ((void *)0)
# 196 "src/game/stage/camera.c"
                          ,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [2] = {
        .graphics = {
            .src = 
# 202 "src/game/stage/camera.c" 3 4
                  ((void *)0)
# 202 "src/game/stage/camera.c"
                      ,
            .dest = (void*)(((u8*)&VRAM[0]) + (0x800 * (16))),
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(((u8*)&VRAM[0]) + (0x800 * (50))),
        .layout = 
# 208 "src/game/stage/camera.c" 3 4
                 ((void *)0)
# 208 "src/game/stage/camera.c"
                     ,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = 32,
        .targetTilesY = 32,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x10 | (3),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = 
# 228 "src/game/stage/camera.c" 3 4
                      ((void *)0)
# 228 "src/game/stage/camera.c"
                          ,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [3] = {
        .graphics = {
            .src = 
# 234 "src/game/stage/camera.c" 3 4
                  ((void *)0)
# 234 "src/game/stage/camera.c"
                      ,
            .dest = (void*)(((u8*)&VRAM[0]) + (0x4000 * (3))),
            .size = 0,
            .anim = 0,
        },
        .layoutVram = (void*)(((u8*)&VRAM[0]) + (0x800 * (48))),
        .layout = 
# 240 "src/game/stage/camera.c" 3 4
                 ((void *)0)
# 240 "src/game/stage/camera.c"
                     ,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = 32,
        .targetTilesY = 32,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = 0x10 | (0),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = 
# 260 "src/game/stage/camera.c" 3 4
                      ((void *)0)
# 260 "src/game/stage/camera.c"
                          ,
        .mapWidth = 0,
        .mapHeight = 0,
    },
};



const u16 gBossCameraYClamps[][2] = {
    [0] = { 32, 240 + 56 }, [1] = { 32, 240 + 44 }, [2] = { 32, 240 + 56 },
    [3] = { 32, 240 + 48 }, [4] = { 32, 240 + 48 }, [5] = { 32, 240 + 72 },
    [6] = { 32, 240 + 104 }, [7] = { 32, 240 + 104 }, [7 + 1] = { 32, 240 + 104 },
};


static const VoidFn sStageBgInitProcedures[34] = {
    [((0)*(3 + 1)) + (0)] = CreateStageBg_Zone1,

    [((0)*(3 + 1)) + (1)] = CreateStageBg_Zone1,
    [((0)*(3 + 1)) + (2)] = CreateStageBg_Zone1,
    [((0)*(3 + 1)) + (3)] = 
# 280 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 280 "src/game/stage/camera.c"
                                           ,
    [((1)*(3 + 1)) + (0)] = CreateStageBg_Default,
    [((1)*(3 + 1)) + (1)] = CreateStageBg_Default,
    [((1)*(3 + 1)) + (2)] = CreateStageBg_Default,
    [((1)*(3 + 1)) + (3)] = 
# 284 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 284 "src/game/stage/camera.c"
                                           ,
    [((2)*(3 + 1)) + (0)] = CreateStageBg_Zone3,
    [((2)*(3 + 1)) + (1)] = CreateStageBg_Zone3,
    [((2)*(3 + 1)) + (2)] = CreateStageBg_Zone3,
    [((2)*(3 + 1)) + (3)] = 
# 288 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 288 "src/game/stage/camera.c"
                                           ,
    [((3)*(3 + 1)) + (0)] = CreateStageBg_Zone4,
    [((3)*(3 + 1)) + (1)] = CreateStageBg_Zone4,
    [((3)*(3 + 1)) + (2)] = CreateStageBg_Dummy,
    [((3)*(3 + 1)) + (3)] = 
# 292 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 292 "src/game/stage/camera.c"
                                           ,
    [((4)*(3 + 1)) + (0)] = CreateStageBg_Zone5,
    [((4)*(3 + 1)) + (1)] = CreateStageBg_Zone5,
    [((4)*(3 + 1)) + (2)] = 
# 295 "src/game/stage/camera.c" 3 4
                                     ((void *)0)
# 295 "src/game/stage/camera.c"
                                         ,
    [((4)*(3 + 1)) + (3)] = 
# 296 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 296 "src/game/stage/camera.c"
                                           ,
    [((5)*(3 + 1)) + (0)] = CreateStageBg_Zone6_Acts,
    [((5)*(3 + 1)) + (1)] = CreateStageBg_Zone6_Acts,
    [((5)*(3 + 1)) + (2)] = CreateStageBg_Zone6_Boss,
    [((5)*(3 + 1)) + (3)] = 
# 300 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 300 "src/game/stage/camera.c"
                                           ,
    [((6)*(3 + 1)) + (0)] = CreateStageBg_Zone7,
    [((6)*(3 + 1)) + (1)] = CreateStageBg_Zone7,
    [((6)*(3 + 1)) + (2)] = CreateStageBg_Zone7,
    [((6)*(3 + 1)) + (3)] = 
# 304 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 304 "src/game/stage/camera.c"
                                           ,
    [((7)*(3 + 1)) + (0)] = 
# 305 "src/game/stage/camera.c" 3 4
                                                  ((void *)0)
# 305 "src/game/stage/camera.c"
                                                      ,
    [((7)*(3 + 1)) + (1)] = CreateStageBg_ZoneFinal_0,
    [((7)*(3 + 1)) + (2)] = CreateStageBg_Zone1,
    [((7)*(3 + 1)) + (3)] = 
# 308 "src/game/stage/camera.c" 3 4
                                           ((void *)0)
# 308 "src/game/stage/camera.c"
                                               ,
    [((8)*(3 + 1)) + (0)] = 
# 309 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 309 "src/game/stage/camera.c"
                                           ,
    [((8)*(3 + 1)) + (1)] = 
# 310 "src/game/stage/camera.c" 3 4
                                       ((void *)0)
# 310 "src/game/stage/camera.c"
                                           ,

};

static const BgUpdate sStageBgUpdateFuncs[34] = {




    [((0)*(3 + 1)) + (0)] = StageBgUpdate_Zone1Acts12,
    [((0)*(3 + 1)) + (1)] = StageBgUpdate_Zone1Acts12,
    [((0)*(3 + 1)) + (2)] = StageBgUpdate_Zone1ActBoss,
    [((0)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,


    [((1)*(3 + 1)) + (0)] = StageBgUpdate_Zone2Acts12,
    [((1)*(3 + 1)) + (1)] = StageBgUpdate_Zone2Acts12,
    [((1)*(3 + 1)) + (2)] = StageBgUpdate_Zone2ActBoss,
    [((1)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,


    [((2)*(3 + 1)) + (0)] = StageBgUpdate_Zone3Acts12,
    [((2)*(3 + 1)) + (1)] = StageBgUpdate_Zone3Acts12,
    [((2)*(3 + 1)) + (2)] = StageBgUpdate_Zone3ActBoss,
    [((2)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,


    [((3)*(3 + 1)) + (0)] = StageBgUpdate_Zone4Acts12,
    [((3)*(3 + 1)) + (1)] = StageBgUpdate_Zone4Acts12,
    [((3)*(3 + 1)) + (2)] = StageBgUpdate_Dummy,
    [((3)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,


    [((4)*(3 + 1)) + (0)] = StageBgUpdate_Zone5Acts12,
    [((4)*(3 + 1)) + (1)] = StageBgUpdate_Zone5Acts12,
    [((4)*(3 + 1)) + (2)] = StageBgUpdate_Zone5ActBoss,
    [((4)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,






    [((5)*(3 + 1)) + (0)] = StageBgUpdate_Zone6ActBoss,
    [((5)*(3 + 1)) + (1)] = StageBgUpdate_Zone6ActBoss,

    [((5)*(3 + 1)) + (2)] = StageBgUpdate_Zone6ActBoss,
    [((5)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,


    [((6)*(3 + 1)) + (0)] = StageBgUpdate_Zone7Acts12,
    [((6)*(3 + 1)) + (1)] = StageBgUpdate_Zone7Acts12,
    [((6)*(3 + 1)) + (2)] = StageBgUpdate_Zone7ActBoss,
    [((6)*(3 + 1)) + (3)] = StageBgUpdate_Dummy,


    [((7)*(3 + 1)) + (0)] = StageBgUpdate_ZoneFinalActXX,
    [((7)*(3 + 1)) + (1)] = StageBgUpdate_ZoneFinalActTA53,
    [((7)*(3 + 1)) + (2)] = StageBgUpdate_Zone1Acts12,
    [((7)*(3 + 1)) + (3)] = StageBgUpdate_Zone2Acts12,


    [((8)*(3 + 1)) + (0)] = StageBgUpdate_Zone1Acts12,
    [((8)*(3 + 1)) + (1)] = StageBgUpdate_Zone6Acts12,

};

static const s8 sStageBgDimensions[34][4] = {

    [((0)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 50 },

    [((0)*(3 + 1)) + (1)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((0)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((0)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((1)*(3 + 1)) + (0)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((1)*(3 + 1)) + (1)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((1)*(3 + 1)) + (2)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((1)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((2)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((2)*(3 + 1)) + (1)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((2)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((2)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((3)*(3 + 1)) + (0)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((3)*(3 + 1)) + (1)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((3)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((3)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((4)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((4)*(3 + 1)) + (1)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((4)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((4)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((5)*(3 + 1)) + (0)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((5)*(3 + 1)) + (1)] = { ((512) / 8), ((256) / 8), 2, 48 },
    [((5)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((5)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((6)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((6)*(3 + 1)) + (1)] = { ((256) / 8), ((256) / 8), 2, 48 },
    [((6)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((6)*(3 + 1)) + (3)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((7)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 48 },
    [((7)*(3 + 1)) + (1)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((7)*(3 + 1)) + (2)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((7)*(3 + 1)) + (3)] = { ((256) / 8), ((512) / 8), 2, 48 },
    [((8)*(3 + 1)) + (0)] = { ((256) / 8), ((256) / 8), 2, 50 },
    [((8)*(3 + 1)) + (1)] = { ((512) / 8), ((256) / 8), 2, 48 },

};

void InitCamera(u32 level)
{
    u32 txtSize;

    struct Backgrounds *bgs;
    const Background *bgTemplates;
    Player *player = &gPlayer;
    struct Camera *camera = &gCamera;
    const s8 *bgDim = sStageBgDimensions[level];

    gDispCnt = (0x1000 | 0x2000 | 0x0200 | 0x0400 | 0x0800 | 0x0040);

    if (level == ((7)*(3 + 1)) + (1)) {
        gDispCnt
            = (0x1000 | 0x2000 | 0x0100 | 0x0200 | 0x0400 | 0x0040 | 0x0001);
    }






    gBgCntRegs[1] = 0xC000 | ((1) | ((52) << 8) | 0x0000 | ((0) << 2));
    gBgCntRegs[2] = 0xC000 | ((2) | ((56) << 8) | 0x0000 | ((0) << 2));

    txtSize = ((((bgDim)[0]) + 0x1F) >> 6 | ((((bgDim)[1]) + 0x1F) >> 6) << 1) << 0xE;
    gBgCntRegs[3] = txtSize | (3) | ((((bgDim)[3])) << 8) | ((((bgDim)[2])) << 2);


    if (((level) == ((7)*(3 + 1)) + (1))) {
        gDispCnt = (0x1000 | 0x2000 | 0x0200 | 0x0400 | 0x0040 | 0x0001);
    }


    bgs = &gStageBackgroundsRam;
    bgTemplates = gStageCameraBgTemplates;

    memcpy(&gStageBackgroundsRam.unk40, &bgTemplates[0], sizeof(Background));
    bgs->unk40.tilemapId = (((level)*3) + 0);

    memcpy(&gStageBackgroundsRam.unk80, &bgTemplates[1], sizeof(Background));
    bgs->unk80.tilemapId = (((level)*3) + 1);

    memcpy(&gStageBackgroundsRam.unkC0, &bgTemplates[2], sizeof(Background));
    bgs->unkC0.tilemapId = (((level)*3) + 2);

    bgs->unkC0.graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x4000 * (((bgDim)[2]))));
    bgs->unkC0.layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (((bgDim)[3]))));
    bgs->unkC0.targetTilesX = ((bgDim)[0]);
    bgs->unkC0.targetTilesY = ((bgDim)[1]);

    ({ gBgSprites_Unknown1[(1)] = 0; gBgSprites_Unknown2[(1)][0] = 0; gBgSprites_Unknown2[(1)][1] = 0; gBgSprites_Unknown2[(1)][2] = 255; gBgSprites_Unknown2[(1)][3] = 32; });;
    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;


    if (gGameMode == 5)

    {
        bgs->unk40.flags |= 0x200 | 0x8;
        bgs->unk80.flags |= 0x200 | 0x8;
    }


    if (level != ((7)*(3 + 1)) + (1)) {
        DrawBackground(&bgs->unk40);
        DrawBackground(&bgs->unk80);
        DrawBackground(&bgs->unkC0);
    }



    if (gGameMode != 5) {
        gRefCollision = gCollisionTable[level];
    } else

    {
        gRefCollision = *(Collision **)(EWRAM_START + 0x33004);
    }

    camera->minY = 0;
    camera->maxY = gRefCollision->pxHeight;
    camera->minX = 0;
    camera->maxX = gRefCollision->pxWidth;

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
            SuperSonicGetPos(&player->qWorldX, &player->qWorldY);
            gBossCameraClampYLower = gBossCameraYClamps[7 + 1][0];
            gBossCameraClampYUpper = gBossCameraYClamps[7 + 1][1];
            camera->x = 600;
            camera->unk10 = (426 / 2);
            camera->unk14 = 0;
            camera->y = 0;
            camera->unk64 = -4;
        } else {
            camera->x = ((int)((player->qWorldX) >> 8));



            camera->unk10 = ((int)((player->qWorldX) >> 8)) - (2 * 240);
            camera->y = ((int)((player->qWorldY) >> 8)) - ((240 / 2) + 4);
            camera->unk14 = camera->y;
            camera->unk64 = player->spriteOffsetY - 4;
        }
    } else

    {
        camera->x = ((int)((player->qWorldX) >> 8)) - (426 / 2);
        camera->y = ((int)((player->qWorldY) >> 8)) - ((240 / 2) + 4);

        if (camera->x < 0) {
            camera->x = 0;
        }

        if (camera->y < 0) {
            camera->y = 0;
        }

        camera->unk10 = camera->x;
        camera->unk14 = camera->y;
        camera->unk64 = player->spriteOffsetY - 4;
    }

    camera->unk8 = 0x1000;
    camera->unkC = 0xc;
    camera->unk56 = 0;
    camera->shiftX = 0;
    camera->shiftY = 0;
    camera->unk20 = 0;
    camera->unk24 = 0;
    camera->unk40 = 0;
    camera->unk44 = 8;
    camera->unk48 = 0;
    camera->unk4C = 0;
    camera->unk50 = 0;
    camera->unk52 = 0;
    camera->unk54 = 0;
    camera->shakeOffsetX = 0;
    camera->shakeOffsetY = 0;

    camera->movementTask = TaskCreate(Task_CallUpdateCamera, 0, 0xF00, 0, TaskDestructor_Camera);

    camera->fnBgUpdate = sStageBgUpdateFuncs[level];

    if (sStageBgInitProcedures[level] != 
# 561 "src/game/stage/camera.c" 3 4
                                        ((void *)0)
# 561 "src/game/stage/camera.c"
                                            ) {
        sStageBgInitProcedures[level]();
    }
}





void UpdateCamera(void)
{
    Player *player = &gPlayer;
    struct Camera *camera = &gCamera;
    s32 newX, newY;
    newX = camera->x;
    newY = camera->y;
    camera->dx = camera->x;
    camera->dy = camera->y;

    newX = ({ s32 clamped; if ((newX) < (camera->minX)) { clamped = (camera->minX); } else { clamped = (newX) > (camera->maxX - (426 + 1)) ? (camera->maxX - (426 + 1)) : (newX); } clamped; });
    newY = ({ s32 clamped; if ((newY) < (camera->minY)) { clamped = (camera->minY); } else { clamped = (newY) > (camera->maxY - (240 + 1)) ? (camera->maxY - (240 + 1)) : (newY); } clamped; });


    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        s32 delta, playerY;
        if (!(!(player->moveState & 0x00000080))) {
            if (camera->fnBgUpdate != 
# 587 "src/game/stage/camera.c" 3 4
                                     ((void *)0)
# 587 "src/game/stage/camera.c"
                                         ) {
                camera->fnBgUpdate(gCamera.x, gCamera.y);
            }
            return;
        }

        if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
            SuperSonicGetPos(&player->qWorldX, &player->qWorldY);
        }

        camera->unk10 += 5;
        newX += 5;
# 608 "src/game/stage/camera.c"
        if (newX + ((426 / 2) + 1) < ((int)((player->qWorldX) >> 8))) {

            if ((camera->unk10 + (240 / 2)) > newX) {
                s32 playerScreenX = ((int)((player->qWorldX) >> 8));



                playerScreenX -= 426 / 2;

                camera->shiftX = playerScreenX - newX;
            } else {
                newX = (camera->unk10 + (240 / 2));
                camera->shiftX = 0;
            }
        } else {
            camera->shiftX = 0;
            if ((newX + 96) > ((int)((player->qWorldX) >> 8))) {
                newX = ((int)((player->qWorldX) >> 8));
                newX -= 96;
                if (newX < camera->unk10) {
                    newX = camera->unk10;
                }
            }
        }

        playerY = ((int)((player->qWorldY) >> 8));
        delta = playerY - newY;
        if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
            if (delta <= 48) {
                s32 temp = newY - 48;
                newY = delta + temp;
                camera->shiftY = 0;
            } else if (delta >= (gBossCameraClampYUpper - 208)) {
                s32 temp = newY - 112;
                newY = delta + temp;
                camera->shiftY = 0;
            }
        } else {
            if (delta <= 48) {
                s32 temp = newY - 48;
                newY = delta + temp;
                camera->shiftY = 0;
            } else {
                newY += 2;
            }
        }
        newY = ({ s32 clamped; if ((newY) < (gBossCameraClampYLower)) { clamped = (gBossCameraClampYLower); } else { clamped = (newY) > (gBossCameraClampYUpper - 240) ? (gBossCameraClampYUpper - 240) : (newY); } clamped; });

        newX = newX + camera->shiftX;
        newY = newY + camera->shiftY;
        newX += camera->shakeOffsetX;
        newY += camera->shakeOffsetY;

    } else

    {
        if (camera->unk40 != 0) {
            camera->unk40--;
        } else {
            if (!(camera->unk50 & 1)) {
                s16 airSpeedX = player->qSpeedAirX;
                camera->unk10 = ((int)((player->qWorldX) >> 8)) + camera->shiftX - (426 / 2);
                camera->unk56 = (airSpeedX + (camera->unk56 * 15)) >> 4;
                camera->unk10 += (camera->unk56 >> 5);
            }
            if (!(camera->unk50 & 2)) {
                s32 unk64 = camera->unk64;
                s32 temp8 = player->spriteOffsetY - 4;
                if ((gStageFlags & 0x0080)) {
                    temp8 = -temp8;
                }

                if (unk64 != temp8) {
                    if (unk64 < temp8) {
                        unk64 += 5;
                        if (unk64 > temp8) {
                            unk64 = temp8;
                        }
                    } else {
                        unk64 -= 5;
                        if (unk64 < temp8) {
                            unk64 = temp8;
                        }
                    }
                    camera->unk64 = unk64;
                }

                camera->unk14 = ((int)((player->qWorldY) >> 8)) + camera->shiftY - (240 / 2) + camera->unk4C + unk64;
            }
        }

        if ((camera->unk10 - newX) > camera->unk44) {
            s32 temp = camera->unk10 - newX - camera->unk44;
            s32 temp2 = ((int)((camera->unk8) >> 8));
            if (temp2 > temp) {
                temp2 = temp;
            }
            newX += temp2;
        } else if ((camera->unk10 - newX) < -camera->unk44) {
            s32 temp = (camera->unk10 - newX) + camera->unk44;
            s32 temp2 = -((int)((camera->unk8) >> 8));
            if (temp2 < temp) {
                temp2 = temp;
            }

            newX += temp2;
        }

        newX = ({ s32 clamped; if ((newX) < (camera->minX)) { clamped = (camera->minX); } else { clamped = (newX) > (camera->maxX - 426) ? (camera->maxX - 426) : (newX); } clamped; });

        if (camera->unk8 < ((s32)((16)*256))) {
            camera->unk8 += ((s32)((0.125)*256));
        }

        if ((player->moveState & 0x00000002) && (player->character != CHARACTER_KNUCKLES || player->unk61 != 9)) {
            camera->unk48 += 4;
            camera->unk48 = (((camera->unk48) < (24)) ? (camera->unk48) : (24));
        } else {
            camera->unk48 -= 4;
            camera->unk48 = (((camera->unk48) > (0)) ? (camera->unk48) : (0));
        }

        if ((camera->unk14 - newY) > camera->unk48) {
            newY += (camera->unkC > ((camera->unk14 - newY) - camera->unk48)) ? ((camera->unk14 - newY) - camera->unk48) : camera->unkC;
        } else if ((camera->unk14 - newY) < -(camera->unk48)) {
            newY += (-camera->unkC < (camera->unk14 - newY) + camera->unk48) ? (camera->unk14 - newY) + camera->unk48 : -camera->unkC;
        }

        newY = ({ s32 clamped; if ((newY) < (camera->minY)) { clamped = (camera->minY); } else { clamped = (newY) > (camera->maxY - 240) ? (camera->maxY - 240) : (newY); } clamped; });


        newX = ({ s32 clamped; if ((newX) < (camera->minX)) { clamped = (camera->minX); } else { clamped = (newX) > (camera->maxX - 426) ? (camera->maxX - 426) : (newX); } clamped; });
        newY = ({ s32 clamped; if ((newY) < (camera->minY)) { clamped = (camera->minY); } else { clamped = (newY) > (camera->maxY - 240) ? (camera->maxY - 240) : (newY); } clamped; });
        newX = newX + camera->shakeOffsetX;
        newY = newY + camera->shakeOffsetY;
    }

    camera->x = newX;
    camera->y = newY;

    camera->dx -= newX;
    camera->dy -= newY;

    RenderMetatileLayers(newX, newY);

    if (camera->fnBgUpdate != 
# 753 "src/game/stage/camera.c" 3 4
                             ((void *)0)
# 753 "src/game/stage/camera.c"
                                 ) {
        camera->fnBgUpdate(newX, newY);
    }
}

void RenderMetatileLayers(s32 x, s32 y)
{

    if (!((gCurrentLevel) == ((7)*(3 + 1)) + (1)))

    {
        Background *layer = &gStageBackgroundsRam.unk40;
        gBgScrollRegs[1][0] = x % 8u;
        gBgScrollRegs[1][1] = y % 8u;
        layer->scrollX = x;
        layer->scrollY = y;
        DrawBackground(layer);
        UpdateBgAnimationTiles(layer);

        layer = &gStageBackgroundsRam.unk80;
        gBgScrollRegs[2][0] = x % 8u;
        gBgScrollRegs[2][1] = y % 8u;
        layer->scrollX = x;
        layer->scrollY = y;
        DrawBackground(layer);
    }
}



void CreateStageBg_Zone1(void)
{
    Background *background = &gStageBackgroundsRam.unk0;
    gDispCnt |= 0x0100;
    gBgCntRegs[0] = ((27) << 8) | ((3) << 2) | (3);


    if (gGameMode != 5) {
        const Background *templates = gStageCameraBgTemplates;
        memcpy(background, &templates[3], sizeof(Background));

        background->tilemapId = 113;
        background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
        background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (27)));

        background->targetTilesX = 256 / 8;
        background->targetTilesY = 256 / 8;
    } else

    {
        const Background *templates = gStageCameraBgTemplates;
        memcpy(background, &templates[3], sizeof(Background));
        background->tilemapId = (((((0)*(3 + 1)) + (0))*3) + 2);

        background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
        background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (27)));

        background->targetTilesX = 256 / 8;
        background->targetTilesY = 240 / 8;
    }

    DrawBackground(background);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
}



void StageBgUpdate_Zone1Acts12(s32 __attribute__((unused)) a, s32 __attribute__((unused)) b)
{
    s32 i;
    s32 initial1, initial2;
    s16 camY;
    u16 bgScroll;
    u16 *cursor;

    if (gGameMode != 5) {
        if ((gPlayer.moveState & 0x08000000) && gSpecialRingCount >= 7) {
            s32 temp, val;
            temp = (gPlayer.moveState & 0x04000000) ? 7 : 0xF;

            val = gBgScrollRegs[0][0];
            if ((gStageTime & temp) == temp) {
                val++;
            }
            gBgScrollRegs[0][0] = val;
            gBgScrollRegs[0][0] &= 0xFF;
        } else {
            gBgScrollRegs[0][0] = gCamera.x >> 6;
            gBgScrollRegs[0][0] &= 0xFF;
        }

        gBgScrollRegs[0][1] = gCamera.y >> 9;
        gFlags |= 0x4;
        gHBlankCopyTarget = (void *)(REG_BASE + 0x1c);
        gHBlankCopySize = 4;
        cursor = gBgOffsetsHBlankPrimary;
        initial1 = 0;

        if ((gPlayer.moveState & 0x08000000) && gSpecialRingCount >= 7) {
            s32 temp, val;
            temp = (gPlayer.moveState & 0x04000000) ? 0xF : 0x1F;

            val = gBgScrollRegs[3][0];
            if ((gStageTime & temp) == temp) {
                val++;
            }
            gBgScrollRegs[3][0] = val;
            gBgScrollRegs[3][0] &= 0xFF;
            bgScroll = gBgScrollRegs[3][0];
        } else {
            bgScroll = gCamera.x >> 7;
            gBgScrollRegs[3][0] = bgScroll;
        }

        camY = gCamera.y >> 8;
        initial2 = 0;


        if (cursor != 
# 872 "src/game/stage/camera.c" 3 4
                     ((void *)0)
# 872 "src/game/stage/camera.c"
                         )

        {
            for (i = 71; i >= 0; i--) {
                *cursor++ = initial1;
                *cursor++ = initial2;
            }

            for (i = 86; i >= 0; i--) {
                *cursor++ = bgScroll;
                *cursor++ = camY;
            }
        }
    }
}






void StageBgUpdate_Zone2Acts12(s32 cameraX, s32 cameraY)
{
    s16 something;
    u8 i, j;
    s16 camFracY, camFracX;

    u16 *cursor;
    s32 x0 = 0;
    if ((gPlayer.moveState & 0x08000000) && gSpecialRingCount >= 7) {
        if (gBgScrollRegs[3][0] == 0) {
            gBgScrollRegs[3][0] = cameraX;
        }
        gBgScrollRegs[3][0] += (gPlayer.qSpeedGround >> 8);
        cameraX = gBgScrollRegs[3][0];
    }

    if (!((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        gBgScrollRegs[3][0] = cameraX >> 4;
        camFracY = ({((0x10) != 0) ? ((s32)(cameraY) / (s32)(0x10)) : 0;});
        if (camFracY > 0x100) {
            camFracY = 0x100;
        }
        gBgScrollRegs[3][1] = camFracY;
    } else {
        s32 dt;

        camFracY = ({((0x10) != 0) ? ((s32)(cameraY) / (s32)(0x10)) : 0;});







        {

            const u32 max = 153;

            if (camFracY > max) {
                camFracY = max;
            }
        }


        camFracX = ({((0x69) != 0) ? ((s32)(cameraX) / (s32)(0x69)) : 0;});
        if (camFracX > 0x100) {
            camFracX = 0x100;
        }

        gFlags |= 0x4;
        gHBlankCopyTarget = (void *)(REG_BASE + 0x1c);
        gHBlankCopySize = 4;

        cursor = gBgOffsetsHBlankPrimary;
        dt = gStageTime * 0x18;


        for (i = 0; i < 240 - 1; i++) {
            if ((u32)((camFracY + i) - 111) < 10) {
                camFracX = ((((camFracY + i) - 110) * cameraX) >> 5) & 0xFF;
            } else {
                camFracX = (camFracY + i) > 120 ? ((cameraX * 10) >> 5) & 0xFF : camFracX;
            }
            *cursor++ = camFracX;
            *cursor++ = camFracY;
            if ((camFracY + i) + ((gSineTable[(((i * 8) + (camFracY << 3)) & (1024 - 1))]) >> 12) >= 178) {
                break;
            }
        }


        something = (cameraX >> 3);
        for (j = 0; i < 240 - 1; i++, j++) {
            u16 cursorX, cursorY;

            x0 += 8;
            x0 = ({ s16 clamped = (x0) & (1024 - 1); clamped; });
            cursorX = camFracX + ((gSineTable[(x0)]) >> 13) + ((gSineTable[(((gStageTime * 2) + x0) & 0x3FF) + 256]) >> 11)
                + ((gSineTable[(({ s16 clamped = (dt + (i * 0x40)) & (1024 - 1); clamped; }))]) >> 13);
            *cursor++ = cursorX;
            cursorY = (j / 2) + camFracY + ((gSineTable[(x0)]) >> 12) + ((gSineTable[(({ s16 clamped = (gStageTime + (i * 8)) & (1024 - 1); clamped; })) + 256]) >> 10);
            *cursor++ = cursorY;
        };
    }
}



extern const u8 gUnknown_080D5B20[16][3];

const u8 gUnknown_080D5B20[16][3] = {
    { 14, 0, 1 },
    { 22, 0, 3 },
    { 30, 0, 2 },
    { 38, 0, 1 },
    { 46, 0, 3 },
    { 62, 0, 1 },
    { 70, 0, 2 },
    { 86, 0, 1 },
    { 94, 0, 2 },
    { 126, 0, 1 },
    { 168, 1, 1 },
    { 174, 1, 2 },
    { 182, 2, 3 },
    { 198, 3, 4 },
    { 222, 4, 5 },
    { 255, 5, 6 },
};


const u8 gUnknown_080D5B50[240] = {
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 10,
                                               10, 10, 8, 8, 8, 8,
                                               7, 7, 7, 7,
                                               6, 6, 6,

                                               6, 6,
                                               6, 6, 6,
                                               5, 5, 5,
                                               5, 5, 5,
                                               5, 5, 4,
                                               4, 4, 4,
                                               4, 4, 4,
                                               4, 3, 3,
                                               3, 3, 3,
                                               3, 3, 3,
                                               3, 3, 3,
                                               3, 3, 3,
                                               3, 3, 2,
                                               2, 2, 2,
                                               2, 2, 2,
                                               2, 2, 2,
                                               2, 2, 2,
                                               2, 2, 2,


                                               0
};



static s16 sUnknown_03000408;

void CreateStageBg_Zone3(void)
{
    Background *background = &gStageBackgroundsRam.unk0;
    gDispCnt |= 0x0100;
    gBgCntRegs[0] = ((27) << 8) | ((3) << 2) | (3);

    *background = gStageCameraBgTemplates[3];

    background->tilemapId = 369;
    background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
    background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (27)));
    background->targetTilesX = 0x20;
    background->targetTilesY = 0x20;
    DrawBackground(background);

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}



void StageBgUpdate_Zone3Acts12(s32 cameraX, s32 cameraY)



{
    s16 r6;
    u8 i;
    u8 sp40;
    Vec2_16 sp[16];
    Vec2_16 *cursorStack;
    u8 *cursor;
    s32 pFlags;





    s16 sl = 0;
    u16 *bgBuffer = gBgOffsetsHBlankPrimary;
    s16 camFracY = ({((60) != 0) ? ((s32)(cameraY) / (s32)(60)) : 0;});




    if (camFracY > 256 - 240) {
        camFracY = 256 - 240;
    }


    gBgScrollRegs[0][1] = camFracY;
    gBgScrollRegs[3][1] = camFracY;

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        if ((gPlayer.moveState & 0x08000000) && (gSpecialRingCount >= 7)) {
            if (sUnknown_03000408 == 0) {
                sUnknown_03000408 = cameraX;
            }
            sUnknown_03000408 += ((int)((gPlayer.qSpeedGround) >> 8));
            cameraX = sUnknown_03000408;
        } else {
            sUnknown_03000408 = 0;
        }

        i = 0;

        {
            s32 r6 = camFracY;
            cursor = (u8 *)gUnknown_080D5B20;
            sp40 = camFracY;

            while (r6 >= cursor[i * 3]) {
                if (++i >= (sizeof(gUnknown_080D5B20) / sizeof((gUnknown_080D5B20)[0]))) {
                    break;
                }
                {
                    sl = i;
                }
            }
        }


        for (i = 0; i < (sizeof(gUnknown_080D5B20) / sizeof((gUnknown_080D5B20)[0])); i++) {
            sp[i].x = (((gUnknown_080D5B20[i][1] * cameraX) >> 5) & 0xFF);
            sp[i].y = (((gUnknown_080D5B20[i][2] * cameraX) >> 5) & 0xFF);
        }


        cursorStack = &sp[sl];
        cursor = (u8 *)gUnknown_080D5B20[sl];
        for (i = 0; (u8)i < 240 - 1; sp40++, i++) {
            *bgBuffer = cursorStack->y;
            bgBuffer++;

            *bgBuffer = cursorStack->x;
            bgBuffer++;

            if (sp40 >= *cursor) {
                cursor += 3;
                cursorStack++;
            }
        }


        gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_801E454;
        gFlags |= 0x8;
    }
}






static s16 sCameraShiftX;

void CreateStageBg_Zone4(void)
{
    Background *background = &gStageBackgroundsRam.unk0;
    const Background *templates;
    gBgCntRegs[0] = ((27) << 8) | ((3) << 2) | (3);

    *background = gStageCameraBgTemplates[3];

    background->tilemapId = 371;
    background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
    background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (27)));
    background->targetTilesX = 32;
    background->targetTilesY = 32;
    background->flags = 0x10 | (3);
    DrawBackground(background);

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        CreateSpotLightBeams();
    }
}

void StageBgUpdate_Zone4Acts12(s32 cameraX, s32 cameraY)
{
    Player *player = &gPlayer;
    s32 camFracY;

    if ((player->moveState & 0x08000000) && gSpecialRingCount >= 7) {
        if (sCameraShiftX == 0) {
            sCameraShiftX = cameraX;
        }
        sCameraShiftX += ((int)((player->qSpeedGround) >> 8));
        cameraX = sCameraShiftX;
    } else {
        sCameraShiftX = 0;
    }

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2)) && !(gStageFlags & 0x0100)) {
        gWinRegs[5] = 0x3e;
        gWinRegs[4] = 0x3f3f;
        gWinRegs[0] = (((0) << 16) | (426));
        gWinRegs[2] = (((0) << 16) | (240));
        gWinRegs[1] = (((0) << 16) | (426));
        gWinRegs[3] = (((0) << 16) | (240));
        gBldRegs.bldY = 7;
        gBldRegs.bldCnt = 0x3f41;
        gBldRegs.bldAlpha = 0xc0c;
    }


    UpdateBgAnimationTiles(&gStageBackgroundsRam.unk0);
    DrawBackground(&gStageBackgroundsRam.unk0);





    if ((gStageTime % 16u) == 0) {
        gBgScrollRegs[0][0] = (gBgScrollRegs[0][0] - 1) & 0xff;
        gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] - 1) & 0xff;
    }
    gBgScrollRegs[3][0] = cameraX >> 4;

    camFracY = cameraY >> 6;

    if (camFracY > 256 - 240) {
        camFracY = 256 - 240;
    }

    gBgScrollRegs[3][1] = camFracY;
}



void CreateStageBg_Zone5(void)
{
    Background *background = &gStageBackgroundsRam.unk0;

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        gDispCnt |= 0x0100;
        gBgCntRegs[0] = (0x0000 | ((27) << 8) | ((3) << 2));
        *background = gStageCameraBgTemplates[3];
        background->tilemapId = 370;
        background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
        background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (27)));
        background->targetTilesX = (256 / 8);
        background->targetTilesY = (256 / 8);
        DrawBackground(background);
    }

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 160 - 240;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}



void HBlankCB_FixCloudRendering(int_vcount vcount)
{



    if (vcount < 80 || vcount == 239) {
        (*(vu16 *)(REG_BASE + 0x12)) = 0;
        gBgScrollRegs[0][1] = 0;
    } else {
        (*(vu16 *)(REG_BASE + 0x12)) = 160 - 240;
        gBgScrollRegs[0][1] = 160 - 240;
    }
}




void StageBgUpdate_Zone5Acts12(s32 __attribute__((unused)) cameraX, s32 __attribute__((unused)) cameraY)
{
    s32 num;
    u16 *cursor, i, val;
    gBgScrollRegs[0][0]++;
    gBgScrollRegs[3][0] = 0;
    num = gStageTime * 2;

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        gFlags = gFlags | 0x4;
        gHBlankCopyTarget = (void *)(REG_BASE + 0x1c);
        gHBlankCopySize = 2;
        cursor = gBgOffsetsHBlankPrimary;

        if (gCurrentLevel != ((4)*(3 + 1)) + (2)) {
            gDispCnt |= 0x0100;
            gDispCnt |= 0x2000;
            gWinRegs[5] = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
            gWinRegs[4] = ((((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)) | (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11)) | (1 << 12) | (1 << 13)));
            gWinRegs[0] = (((0) << 16) | (426));
            gWinRegs[2] = (((0) << 16) | (240));
            gWinRegs[1] = (((0) << 16) | (426));
            gWinRegs[3] = (((0) << 16) | (240));
            gBldRegs.bldY = 7;
            gBldRegs.bldCnt = (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) | (1 << 6) | (1 << 0));
            gBldRegs.bldAlpha = (((16) << 8) | (16));
        }
# 1373 "src/game/stage/camera.c"
        gHBlankCopySize = 2 * sizeof(u16);

        for (i = 0; i < 240 - 1; i++) {
            s32 originalLine = (s32)(((float)i / (float)240) * 160.0f);

            if (originalLine > 159) {
                originalLine = 159;
            }

            if (originalLine < 96) {
                *cursor++ = 0;
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 4) {
                *cursor++ = num >> 3;
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 8) {
                *cursor++ = ({((7) != 0) ? ((s32)(num) / (s32)(7)) : 0;});
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 16) {
                *cursor++ = ({((6) != 0) ? ((s32)(num) / (s32)(6)) : 0;});
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 24) {
                *cursor++ = ({((5) != 0) ? ((s32)(num) / (s32)(5)) : 0;});
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 32) {
                *cursor++ = num >> 2;
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 48) {
                *cursor++ = ({((3) != 0) ? ((s32)(num) / (s32)(3)) : 0;});
                *cursor++ = originalLine - i;
            } else if (originalLine < 96 + 63) {
                *cursor++ = num >> 1;
                *cursor++ = originalLine - i;
            } else {
                *cursor++ = 0;
                *cursor++ = originalLine - i;
            }
        }

        gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_FixCloudRendering;
        gFlags |= 0x8;

    }
}



const s16 gUnknown_080D5BF0[] = {
    ((s16)((0.00)*256)), ((s16)((0.25)*256)), ((s16)((2.25)*256)), ((s16)((2.50)*256)), ((s16)((3.50)*256)), ((s16)((3.625)*256)), ((s16)((5.625)*256)), ((s16)((5.75)*256)), ((s16)((6.75)*256)),
};


const u8 gUnknown_080D5C02[2][16][3] = {
    {

        { 0x1F, 0x00, 0x1F },
        { 0x01, 0x07, 0x14 },
        { 0x01, 0x09, 0x14 },
        { 0x00, 0x0A, 0x13 },
        { 0x00, 0x0C, 0x13 },
        { 0x00, 0x0D, 0x12 },
        { 0x00, 0x0F, 0x12 },
        { 0x00, 0x10, 0x11 },
        { 0x00, 0x12, 0x10 },
        { 0x00, 0x13, 0x10 },
        { 0x00, 0x15, 0x0F },
        { 0x00, 0x16, 0x0F },
        { 0x00, 0x18, 0x0E },
        { 0x00, 0x19, 0x0E },
        { 0x00, 0x1B, 0x0D },
        { 0x1F, 0x07, 0x00 },
    },
    {

        { 0x1F, 0x00, 0x00 },
        { 0x0F, 0x00, 0x1B },
        { 0x0E, 0x00, 0x19 },
        { 0x0D, 0x01, 0x17 },
        { 0x0C, 0x01, 0x15 },
        { 0x0B, 0x02, 0x13 },
        { 0x0A, 0x02, 0x11 },
        { 0x08, 0x03, 0x0F },
        { 0x07, 0x03, 0x0D },
        { 0x06, 0x04, 0x0B },
        { 0x05, 0x04, 0x09 },
        { 0x04, 0x05, 0x07 },
        { 0x03, 0x05, 0x05 },
        { 0x02, 0x06, 0x03 },
        { 0x01, 0x06, 0x01 },
        { 0x00, 0x07, 0x00 },
    },
};

void CreateStageBg_Zone6_Acts(void)
{
    gDispCnt |= 0x0100;
    gBgCntRegs[0] = ((26) << 8) | ((3) << 2) | (3);
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 32; });;
    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (((u8*)&VRAM[0]) + (0x800 * (24))), (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(Background))/(32/8)))); };
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gStageTime = 0x380;

    if (1 || (!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        CreateStageBg_Zone6_Boss();
    }

    gBgCntRegs[3] &= ~(3);
    gBgCntRegs[3] |= (2);
}

void CreateStageBg_Zone6_Boss(void)
{
    Background *background = &gStageBackgroundsRam.unk0;
    gDispCnt |= 0x0100;
    gBgCntRegs[0] = ((26) << 8) | ((3) << 2) | (3);
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 32; });;
    { u32 tmp = (u32)(0); DmaSet(3, &tmp, (((u8*)&VRAM[0]) + (0x800 * (24))), (u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((sizeof(Background))/(32/8)))); };
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    *background = gStageCameraBgTemplates[3];
    background->tilemapId = 168;
    background->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
    background->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
    background->targetTilesX = 32;
    background->targetTilesY = 32;

    DrawBackground(background);
}



void sub_801D24C(u8 p0, s16 p1, u8 p2)
{
    s16 r6;
    u16 *hOffsets;
    s32 stageTime;
    s32 stageTime2;
    s16 i;
    s16 r4;
    s32 sl;
    s32 p1_2;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&(*(vu16 *)(REG_BASE + 0x10));
    gHBlankCopySize = 4;

    gWinRegs[5] = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    gBldRegs.bldCnt = (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) | (1 << 6) | (1 << 0));
    gBldRegs.bldAlpha = (((8) << 8) | (16));
    gBldRegs.bldY = 16 * 10;

    hOffsets = gBgOffsetsHBlankPrimary;

    stageTime = (gStageTime & 0x3FF);
    stageTime2 = ((gStageTime >> 1) & 0x3FF);



    p1_2 = p1;
    r6 = (240 - 1) - ((p1_2 * 2) + (p1_2 >> 1));

    if (r6 > (240 - 1)) {
        r6 = (240 - 1);
    }

    if (p2 != 0) {
        s16 r2;

        gBldRegs.bldAlpha = ((((16 - (p1_2 >> 4))) << 8) | (16));

        for (r4 = 0; r4 < r6; r4++) {
            *hOffsets++ = 0;
            *hOffsets++ = (-15 - r4) & 0xFF;
        }


        while (r4 < (240 - 1)) {

            s32 sin = ((int)(((gSineTable[(({ s16 clamped = (r4 * 16 + stageTime2 + stageTime) & (1024 - 1); clamped; }))])) >> 6)) >> 1;
            sin++;
            sin = (sin)-r4 * 2;
            *hOffsets++ = sin & 0xFF;

            if ((r4 - 15) < r6) {
                s32 r0 = (1 - r4);
                r0 -= (((r4 - r6) - 15) * 8);
                *hOffsets++ = r0 & 0xFE;
            } else {

                s32 sin = (((int)(((gSineTable[(({ s16 clamped = (stageTime + r4 * 4) & (1024 - 1); clamped; }))])) >> 6)) >> 1) + 1;
                sin = sin - r4;
                *hOffsets++ = (stageTime2 + sin) & 0xFF;
            }

            r4++;
        }
    } else {

        gBldRegs.bldAlpha = ((((16 - (p1_2 >> 5))) << 8) | (16));
        r4 = 0;


        for (; r4 < r6; r4++) {
            s32 sin = ((int)(((gSineTable[(({ s16 clamped = (r4 * 16 + stageTime2 + stageTime) & (1024 - 1); clamped; }))])) >> 6)) >> 1;
            sin += 1;
            sin = sin - r4 * 2;
            *hOffsets++ = sin & 0xFF;

            sin = ((int)(((gSineTable[((({ s16 clamped = (stageTime2 + r4 * 4) & (1024 - 1); clamped; })))])) >> 6)) >> 1;
            sin++;
            sin = (sin)-r4 * 2;
            *hOffsets++ = (stageTime2 + sin) & 0xFF;
        }



        while (r4 < (240 - 1)) {
            *hOffsets++ = 0;

            if ((r4 - 15) < r6) {
                *hOffsets++ = ((((r4 - r6) - 15) << 3) - (r4 - 1)) & 0xFF;
            } else {
                *hOffsets++ = ((-r4 + 1) & 0xFF);
            }

            r4++;
        }
    }


    if (p0 > 16) {
        p0 = 16;
    }


    for (i = 0; i < 16u; i++) {
        s32 b, g, r;
        r = (p0 * gUnknown_080D5C02[1][i][0]) >> 4;
        r &= 0x1F;

        g = (p0 * gUnknown_080D5C02[1][i][1]) >> 4;
        g &= 0x1F;

        b = (p0 * gUnknown_080D5C02[1][i][2]) >> 4;
        b &= 0x1F;

        gBgPalette[(15)*16u + (i)] = ((((b) << 10) | ((g) << 5) | (r)));;
    }

    gFlags |= 0x1;
}




void StageBgUpdate_Zone6Acts12(s32 x, s32 __attribute__((unused)) y)
{
    u16 r6;
    u8 r5;
    u8 r2;
    Background *bg = &gStageBackgroundsRam.unk0;

    gBgScrollRegs[3][0] = x >> 4;

    r6 = ({((0x680) != 0) ? ((s32)(gStageTime) % (s32)(0x680)) : 0;});
    r5 = 0;
    r2 = 8;

    if (r6 > gUnknown_080D5BF0[7]) {
        r5 = 7;
    } else
        while (1) {
            u32 r3;
            u32 r0 = (r2 << 24);
            r0 += (0xFF << 24);
            r2 = r0 >> 24;
            r3 = r2 << 24;
            r0 = r3 >> 24;
            if (((signed)r0 >= 0) || (r6 > gUnknown_080D5BF0[r0])) {
                break;
            }
        }

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        r5 = 5;
    }

    gBgPalette[(0)*16u + (0)] = (((0) | ((0) << 5) | ((0) << 10)));;
    gFlags |= 0x1;

    switch (r5) {
        case 0: {
            if (r6 == 1) {
                const Background *bgTemplate = gStageCameraBgTemplates;
                memcpy(bg, (bgTemplate + 3), sizeof(Background));
                bg->tilemapId = 167;
                bg->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x4000 * (3)));
                bg->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
                bg->targetTilesX = 32;
                bg->targetTilesY = 32;
                DrawBackground(bg);
            } else if (r6 > 1) {

                gDispCnt |= 0x0100;
                gBgCntRegs[0] &= ~(3);
                gBgCntRegs[0] |= (3);
                gBgCntRegs[3] &= ~(3);
                gBgCntRegs[3] |= (3);

                r2 = r6;
                if (r2 > 63)
                    r2 = 63;

                r6 /= 4u;

                sub_801D24C(r6, 63 - r2, 0);
            }
        } break;

        case 1: {
            sub_801D24C(15, 0, 0);
        } break;

        case 2: {
            u32 r0 = (r6 - 577);
            r0 <<= 16;
            r2 = (r0 << 8) >> 24;
            r6 /= 4u;
            r6 = (15 - r6);

            if (r6 != 0) {
                sub_801D24C(r6, 63 - r2, 1);
            } else {
                gFlags &= ~0x4;
                gBldRegs.bldCnt = r6;
            }
        } break;

        case 3: {
            s8 i;
            gBgCntRegs[0] &= ~(3);
            gBgCntRegs[0] |= (3);
            gBgCntRegs[3] &= ~(3);
            gBgCntRegs[3] |= (2);

            for (i = 0; i < 16; i++) {
                gBgPalette[(15)*16u + (i)] = (((0) | ((0) << 5) | ((0) << 10)));;
            }


            gFlags |= 0x1;
        } break;

        case 4: {
            s8 i;
            s32 v;

            if (r6 == 897) {
                memcpy(&gStageBackgroundsRam.unk0, &gStageCameraBgTemplates[3], sizeof(Background));
                gStageBackgroundsRam.unk0.tilemapId = 168;
                bg->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x4000 * (3)));
                bg->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (26)));
                bg->targetTilesX = 32;
                bg->targetTilesY = 32;
                DrawBackground(bg);
            } else {
                gDispCnt |= 0x0100;
                gBgCntRegs[0] |= (3);
            }


            v = r6 - 897;
            r6 = v;

            for (i = 0; i < 16; i++) {
                u32 red = ((gUnknown_080D5C02[0][i][0] * r6) >> 5) & 0x1F;
                u32 green = ((gUnknown_080D5C02[0][i][1] * r6) >> 5) & 0x1F;
                u32 blue = ((gUnknown_080D5C02[0][i][2] * r6) >> 5) & 0x1F;

                gBgPalette[(15)*16u + (i)] = ((((green) << 10) | ((blue) << 5) | (red)));;
            }


            gFlags |= 0x1;
            gBgScrollRegs[0][0] = (gBgScrollRegs[0][0] - 2) & 0xFF;
            gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] + 1) & 0xFF;
        } break;

        case 5: {

            s8 i;

            for (i = 0; i < 16; i++) {
                u32 red = gUnknown_080D5C02[0][i][0];
                u32 green = gUnknown_080D5C02[0][i][1];
                u32 blue = gUnknown_080D5C02[0][i][2];

                gBgPalette[(15)*16u + (i)] = ((((green) << 10) | ((blue) << 5) | (red)));;
            }


            gFlags |= 0x1;

            gBgScrollRegs[0][0] = (gBgScrollRegs[0][0] - 2) & 0xFF;
            gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] + 1) & 0xFF;
        } break;

        case 6: {
            s8 i;
            s32 v;

            gBgScrollRegs[0][0] = (gBgScrollRegs[0][0] - 2) & 0xFF;
            gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] + 1) & 0xFF;

            v = r6 - 1441;
            r6 = v;
            r6 = (31 - r6) / 2u;

            for (i = 0; i < 16; i++) {
                u32 red = ((gUnknown_080D5C02[0][i][0] * r6) >> 4) & 0x1F;
                u32 green = ((gUnknown_080D5C02[0][i][1] * r6) >> 4) & 0x1F;
                u32 blue = ((gUnknown_080D5C02[0][i][2] * r6) >> 4) & 0x1F;

                gBgPalette[(15)*16u + (i)] = ((((green) << 10) | ((blue) << 5) | (red)));;
            }

            gFlags |= 0x1;
        } break;

        case 7: {
            s8 i;
            for (i = 0; i < 16; i++) {
                gBgPalette[(15)*16u + (i)] = (((0) | ((0) << 5) | ((0) << 10)));;
            }
            gFlags |= 0x1;
            gDispCnt &= ~(0x0100);
        } break;
    }
}




const s16 gUnknown_080D5C62[8][2] = {
    { -((s16)((3.00)*256)), -((s16)((0.25)*256)) },
    { -((s16)((1.50)*256)), +((s16)((0.00)*256)) },

    { -((s16)((3.00)*256)), -((s16)((0.25)*256)) },
    { -((s16)((1.00)*256)), -((s16)((0.0859375)*256)) },

    { -((s16)((3.00)*256)), -((s16)((0.25)*256)) },
    { -((s16)((1.50)*256)), +((s16)((0.00)*256)) },

    { -((s16)((3.00)*256)), -((s16)((0.25)*256)) },
    { -((s16)((0.75)*256)), -((s16)((0.125)*256)) },
};

static const u16 sPalette_Zone7BgCeiling[16] = INCBIN_U16("graphics/080D5C82.gbapal");

void CreateStageBg_Zone7(void)
{
    Background *bg = &gStageBackgroundsRam.unk0;
    const Background *src;
    gDispCnt = 0x1000 | 0x0400 | 0x0200 | 0x0040 | 0x0000;

    gBgCntRegs[0] = (0x0000 | ((22) << 8) | 0x0000 | (15));

    src = gStageCameraBgTemplates;
    memcpy(bg, &src[3], sizeof(Background));

    bg->tilemapId = 209;
    bg->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x800 * (24)));
    bg->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x800 * (22)));
    bg->targetTilesX = 32;
    bg->targetTilesY = 20;
    DrawBackground(bg);

    gBgCntRegs[3] &= ~(3);
    gBgCntRegs[3] |= (3);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
}



void Zone7BgUpdate_Inside(s32 x, s32 y)
{
    u16 *dst;
    s32 someX;
    s32 lineY;
    s32 ip;
    u8 j;
    u8 r1;
    u8 r2;
    u8 r5;

    if ((gPlayer.moveState & 0x08000000) && (gSpecialRingCount >= 7)) {
        if (gBgScrollRegs[3][0] == 0)
            gBgScrollRegs[3][0] = x;

        gBgScrollRegs[3][0] += ((int)((gPlayer.qSpeedGround) >> 8));

        x = gBgScrollRegs[3][0];
    }

    gDispCnt &= ~0x0100;
    gDispCnt |= 0x0800;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&(*(vu16 *)(REG_BASE + 0x1c));
    gHBlankCopySize = 4;

    dst = (u16 *)gBgOffsetsHBlankPrimary;







    for (lineY = 0; lineY < 40; lineY++) {
        *dst++ = 8;
        *dst++ = 16;
    }


    ip = ({((400) != 0) ? ((s32)(25 * x) / (s32)(400)) : 0;}) & 0xFF;

    for (lineY = 0; lineY < 119; lineY++) {
        *dst++ = ip;
        *dst++ = 17;
    }




    j = 0;
    do {
        ip = (((gStageTime + x) / 8)) & 0xFF;

        r5 = (((100 * j) + 64) - (y >> 4));
        if (r5 < 240) {

            if (r5 > 80) {
                dst = gBgOffsetsHBlankPrimary;
                r1 = ((r5 - 80) >> 4);
                dst += (r5 - r1) << 1;

                lineY = r5;
                for (r2 = 0; ((lineY < r1 + 160) && (r2 < r1)); lineY++, r2++) {
                    *dst++ = 0;
                    *dst++ = 208 - r5;
                }
            }

            dst = gBgOffsetsHBlankPrimary;
            dst = ((void *)dst) + (r5 * 4);

            for (lineY = r5, r2 = 0; ((lineY < 240) && (r2 < 16)); lineY++, r2++) {
                *dst++ = ip;
                *dst++ = (240 - r5);
            }

            if (lineY < 80) {
                s32 r0 = (80 - lineY) >> 4;
                r1 = r0;

                for (r2 = 0; ((lineY < 240) && (r2 < r1)); lineY++, r2++) {
                    *dst++ = 0;
                    *dst++ = (184 - r5);
                }
            }
        } else {

            dst = gBgOffsetsHBlankPrimary;

            for (lineY = 255 - r5; lineY < 16; lineY++) {
                *dst++ = ip;
                *dst++ = 495 - r5;
            }


            for (r2 = 0; r2 < 4; r2++) {
                *dst++ = 0;
                *dst++ = 439 - r5;
            }
        }
    } while (++j < 2);


    ip = ((gStageTime + x) / 2) & 0xFF;

    {
        r5 = -(y >> 1);

        if (r5 < 224) {
            u8 val;
            if (r5 > 80) {
                dst = gBgOffsetsHBlankPrimary;

                val = ((r5 - 80) >> 4);
                dst += (r5 - val) << 1;

                lineY = r5, r2 = 0;
                for (; ((lineY < (160 + val)) && (r2 < val)); lineY++, r2++) {
                    *dst++ = 0;
                    *dst++ = 208 - r5;
                }
            }

            dst = gBgOffsetsHBlankPrimary;
            dst = ((void *)dst) + (r5 * 4);

            for (lineY = r5, r2 = 0; ((lineY < 240) && (r2 < 32)); lineY++, r2++) {
                *dst++ = ip;
                *dst++ = 208 - r5;
            }

            if (lineY < 80) {
                for (r1 = (80 - lineY) >> 4, r2 = 0; ((lineY < 160) && (r2 < r1)); lineY++, r2++) {
                    *dst++ = 0;
                    *dst++ = 168 - r5;
                }
            }
        } else {

            dst = gBgOffsetsHBlankPrimary;

            for (lineY = 255 - r5; lineY < 32; lineY++) {
                *dst++ = ip;
                *dst++ = 463 - r5;
            }

            for (r2 = 0; r2 < 4; r2++) {
                *dst++ = 0;
                *dst++ = 423 - r5;
            }
        }


        {
            u32 new_r1 = (x >> 4) << 16;
            const u16 *src;
            s32 r6 = 0x7;
            src = sPalette_Zone7BgCeiling;
            dst = gBgPalette;
            dst += 209;
            new_r1 >>= 16;

            for (lineY = 0; lineY < 8; new_r1--, lineY++) {
                s32 index = (new_r1 & r6) + 1;
                *dst++ = src[index];
            }
        }







    }

    gFlags = gFlags | 0x1;
}


void Zone7BgUpdate_Outside(s32 x, s32 y)
{
    u16 *cursor;
    u8 frameCount;
    int_vcount i;
    u16 sp[32];
    u32 stageTime;

    gDispCnt &= ~0x0800;
    gDispCnt |= 0x0100;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&(*(vu16 *)(REG_BASE + 0x10));
    gHBlankCopySize = 2;
    cursor = (u16 *)gBgOffsetsHBlankPrimary;

    stageTime = gStageTime;
    frameCount = ((stageTime >> 3) & 0x1F);
    if (frameCount >= 16) {
# 2077 "src/game/stage/camera.c"
    }

    for (i = 0; i < (sizeof(sp) / sizeof((sp)[0])); i++) {
        sp[i] = 0xFF & (((int)((gUnknown_080D5C62[(i & 0x7)][0] * stageTime) >> 8)) + gUnknown_080D5C62[(i & 0x7)][1]);
    }

    {
        u16 sinVal, value;
        u32 cosVal;
        u32 scrollSpeed = (((s32)((80.5)*256)) - 1);
# 2104 "src/game/stage/camera.c"
        gHBlankCopySize = 2 * sizeof(u16);

        for (i = 0; i < 240; i++) {
            const s32 gbaHLines = 160;
            s32 originalLine = (s32)(((float)i / (float)240) * (float)gbaHLines);

            if (originalLine < 80) {
                sinVal = ((int)(((gSineTable[(((gStageTime * 4) + originalLine * 2) & (1024 - 1))])) >> 6)) >> 3;
                value = (((int)(((gSineTable[(((originalLine * scrollSpeed) >> 5) & (1024 - 1)) + 256])) >> 6)) >> 4) + sinVal;
                value = (value + sp[(originalLine & 0x1F)]) & 0xFF;
                *cursor++ = value;
                *cursor++ = originalLine - i;
            } else if (originalLine < gbaHLines) {
                sinVal = ((int)(((gSineTable[(((gStageTime << 2) + originalLine * 2) & (1024 - 1))])) >> 6)) >> 3;
                cosVal = (((int)(((gSineTable[((((gbaHLines - originalLine) * scrollSpeed) >> 5) & (1024 - 1)) + 256])) >> 6)) >> 4);
                value = cosVal + sinVal;
                value = (value + sp[(originalLine & 0x1F)]) & 0xFF;
                *cursor++ = value;
                *cursor++ = originalLine - i;
            }
        }

    }
}





const u16 sZone7BgTransitionRegions[2][8] = {
    { 697, 1849, 8857, 11832, 18553, 22009, 25369, 27673 },
    { 1344, 2616, 9432, 15192, 18552, 19892, 23158, 25848 },
};

const u16 gUnknown_080D5CC2[16u] = INCBIN_U16("graphics/080D5CC2.gbapal");

void CreateStageBg_ZoneFinal_0(void)
{
    Background *bgDst;
    const Background *bgSrc;
    u8 i;

    gDispCnt = (0x1000 | 0x0100 | 0x0040 | 0x0001);
    ({ gBgSprites_Unknown1[(2)] = 0; gBgSprites_Unknown2[(2)][0] = 0; gBgSprites_Unknown2[(2)][1] = 0; gBgSprites_Unknown2[(2)][2] = 255; gBgSprites_Unknown2[(2)][3] = 32; });;

    bgDst = &gStageBackgroundsRam.unk80;
    gBgCntRegs[2] = ((26) << 8) | 0x0080 | ((2) << 2) | (1);
    bgSrc = gStageCameraBgTemplates;
    memcpy(bgDst, &bgSrc[2], sizeof(Background));

    bgDst->tilemapId = 375;
    bgDst->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x4000 * (2)));


    bgDst->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x80 * (416)));
    bgDst->targetTilesX = 10;
    bgDst->targetTilesY = 9;
    bgDst->flags |= 0x4;
    DrawBackground(bgDst);

    bgDst = &gStageBackgroundsRam.unk0;
    gBgCntRegs[0] = ((30) << 8) | 0x0000 | ((1) << 2) | (3);

    memcpy(bgDst, &bgSrc[3], sizeof(Background));

    bgDst->tilemapId = 372;
    bgDst->graphics.dest = (void *)(((u8*)&VRAM[0]) + (0x4000 * (1)));


    bgDst->layoutVram = (void *)(((u8*)&VRAM[0]) + (0x80 * (480)));
    bgDst->targetTilesX = 32;
    bgDst->targetTilesY = 20;
    bgDst->flags = (0);
    DrawBackground(bgDst);

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    for (i = 0; i < (sizeof(gUnknown_080D5CC2) / sizeof((gUnknown_080D5CC2)[0])); i++) {
        gBgPalette[(0)*16u + (i)] = (gUnknown_080D5CC2[i]);;
    }

    gFlags |= 0x1;
}




void DestroyCameraMovementTask(void)
{
    TaskDestroy(gCamera.movementTask);
    gCamera.movementTask = 
# 2201 "src/game/stage/camera.c" 3 4
                          ((void *)0)
# 2201 "src/game/stage/camera.c"
                              ;
}

void TaskDestructor_Camera(struct Task *unused)
{
    s32 i;
    gCamera.movementTask = 
# 2207 "src/game/stage/camera.c" 3 4
                          ((void *)0)
# 2207 "src/game/stage/camera.c"
                              ;

    for (i = 0; i < 4; i++) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }


    if (((gCurrentLevel) == ((7)*(3 + 1)) + (1)) && (gFlags & 0x40)) {
        gIntrTable[3] = gIntrTableTemplate[3];
        gFlags &= ~0x40;
    }


    gFlags &= ~0x4;
}

void Task_CallUpdateCamera(void)
{
    gDispCnt |= (0x0200 | 0x0400 | 0x0800 | 0x1000);



    if (((gCurrentLevel) == ((7)*(3 + 1)) + (1))) {
        gDispCnt &= ~0x0800;
    }



    if (gGameMode == 5) {
        gDispCnt &= ~0x2000;
    }

    gCurTask->main = Task_UpdateCamera;
}

void Task_UpdateCamera(void)
{
    UpdateCamera();





    gOamMatrixIndex = 4;
}


void CreateStageBg_Default(void)
{
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
}

void CreateStageBg_Dummy(void) { }


void StageBgUpdate_Dummy(s32 x, s32 y) { }



void StageBgUpdate_Zone1ActBoss(__attribute__((unused)) s32 x, __attribute__((unused)) s32 y)
{
    struct Camera *cam = &gCamera;
    if (!(!(gPlayer.moveState & 0x00000080))) {
        gStageTime--;
    }

    gBgScrollRegs[0][0] = ((gStageTime + 4) >> 3) & 0xFF;
    gBgScrollRegs[0][1] = cam->y >> 9;
    gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_801E434;
    gFlags |= 0x8;
}



void StageBgUpdate_Zone2ActBoss(__attribute__((unused)) s32 a, __attribute__((unused)) s32 b)
{
    if (!(!(gPlayer.moveState & 0x00000080))) {
        gStageTime--;
    }

    StageBgUpdate_Zone2Acts12(gStageTime, 4000);
}



void StageBgUpdate_Zone3ActBoss(__attribute__((unused)) s32 a, __attribute__((unused)) s32 b)
{
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[3][0] = 0;
}



void StageBgUpdate_Zone5ActBoss(__attribute__((unused)) s32 a, __attribute__((unused)) s32 b)
{
    gDispCnt &= ~0x0200;
    gBgScrollRegs[0][0]++;
    gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_BgUpdateZone5ActBoss;
    gFlags |= 0x8;
}



void StageBgUpdate_Zone6ActBoss(__attribute__((unused)) s32 a, __attribute__((unused)) s32 b)
{
    gBgCntRegs[0] |= (3);
    gBgCntRegs[3] &= ~(3);
    gBgCntRegs[3] |= (2);
    gBgScrollRegs[0][0] = (gBgScrollRegs[0][0] - 2) & 0xFF;
    gBgScrollRegs[0][1] = (gBgScrollRegs[0][1] + 1) & 0xFF;
}





void StageBgUpdate_Zone7Acts12(s32 x, s32 y)
{
    u32 act = !!(gCurrentLevel ^ (((6)*(3 + 1)) + (0)));
    u32 bgId = 0;
    u8 regionId = 0;

    if (x >= sZone7BgTransitionRegions[act][regionId]) {
        while (1) {
            if (++regionId >= 8) {
                break;
            }
            if (x < sZone7BgTransitionRegions[act][regionId]) {
                bgId = regionId % 2;
                break;
            }
        };
    };

    if (bgId == 0) {
        Zone7BgUpdate_Inside(x, y);
    } else {
        Zone7BgUpdate_Outside(x, y);
    }

    gPlayer.unk99[15] = bgId;
}

void StageBgUpdate_Zone7ActBoss(__attribute__((unused)) s32 x, __attribute__((unused)) s32 y)
{
    if (!(!(gPlayer.moveState & 0x00000080))) {
        gStageTime--;
    }

    Zone7BgUpdate_Inside(gStageTime, 945);
}



void StageBgUpdate_ZoneFinalActXX(__attribute__((unused)) s32 x, __attribute__((unused)) s32 y)
{
    if (!(!(gPlayer.moveState & 0x00000080))) {
        gStageTime--;
    }

    gHBlankCallbacks[gNumHBlankCallbacks++] = HBlankCB_BgUpdateZoneFinalActXX;
    gFlags |= 0x8;
}



# 1 "include/game/bosses/common.h" 1






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
# 2380 "src/game/stage/camera.c" 2
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
# 2381 "src/game/stage/camera.c" 2

void StageBgUpdate_ZoneFinalActTA53(__attribute__((unused)) s32 a, __attribute__((unused)) s32 b)
{
    u32 aBool = 0;
    int_vcount y;

    if (gActiveBossTask != 
# 2387 "src/game/stage/camera.c" 3 4
                          ((void *)0)
# 2387 "src/game/stage/camera.c"
                              ) {
        TA53Boss *boss = (void *)((gActiveBossTask)->data);
        aBool = boss->unk10 & 0x1;
    }

    if (aBool) {
        u16 *offset;
        gFlags |= 0x4;
        gHBlankCopyTarget = (void *)&(*(vu16 *)(REG_BASE + 0x14));
        gHBlankCopySize = 2;

        offset = (u16 *)gBgOffsetsHBlankPrimary;
        for (y = 0; y < 240 - 1; y++) {
            s16 val = (gSineTable[(((y + gStageTime) * 40) & (1024 - 1))]) >> 12;
            *offset++ = val;
        }
    }
}






void sub_801E3F0(void)
{
    struct Camera *cam = &gCamera;
    if (gStageTime & 0x1) {
        u16 rand = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0x70000) >> 16;
        cam->shiftY = rand - 8;
    }
}



void HBlankCB_801E434(int_vcount vcount)
{
    if (vcount == 73) {
        (*(vu16 *)(REG_BASE + 0x1c)) = gStageTime >> 4;
    }
}

void HBlankCB_801E454(int_vcount vcount)
{
    if (vcount != 0) {
        u16 *p = &((u16 *)gBgOffsetsHBlankSecondary)[vcount * 2], *q;
        q = p - 1;

        if (p[1] != *q) {
            (*(vu16 *)(REG_BASE + 0x1c)) = p[1];
        }

        q = p - 2;
        if (p[0] != q[0]) {
            (*(vu16 *)(REG_BASE + 0x10)) = p[0];
        }
    }
}

void nullsub_801E494(void) { }

void HBlankCB_BgUpdateZone5ActBoss(int_vcount vcount)
{
    if (vcount > 105) {
        (*(vu16 *)(REG_BASE + 0x1c)) = gCourseTime >> (gUnknown_080D5B50[vcount] - 1);
    }
}

void HBlankCB_BgUpdateZoneFinalActXX(int_vcount vcount)
{
    if (vcount == 88) {
        (*(vu16 *)(REG_BASE + 0x1c)) = (u8)gStageTime;
    }
}
