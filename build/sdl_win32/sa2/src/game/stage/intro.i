# 0 "src/game/stage/intro.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/stage/intro.c"
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
# 2 "src/game/stage/intro.c" 2
# 1 "include/flags.h" 1



# 1 "include/global.h" 1
# 5 "include/flags.h" 2
# 23 "include/flags.h"
extern u32 gFlags;
# 3 "src/game/stage/intro.c" 2
# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 4 "src/game/stage/intro.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 5 "src/game/stage/intro.c" 2
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




# 1 "include/malloc_vram.h" 1
# 6 "include/sprite.h" 2


# 7 "include/sprite.h"
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
# 6 "include/game/sa1_sa2_shared/globals.h" 2
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
# 6 "src/game/stage/intro.c" 2
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



# 1 "include/constants/zones.h" 1
# 5 "include/game/parameters/characters.h" 2
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
# 7 "src/game/stage/intro.c" 2
# 1 "include/game/cheese.h" 1






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
# 8 "include/game/cheese.h" 2


typedef struct {
               s32 unk54;
               s32 unk58;
               s16 unk5C;
               s16 unk5E;
               s32 unk60;
               u8 unk64;
               Sprite *unk68;
} Cheese_UNK54;

typedef struct {
               s32 posX;
               s32 posY;

               u8 unk8;
               u8 unk9;
               u8 unkA;
               u16 unkC;
               s16 unkE;
               u16 unk10;
               s16 unk12;
               u32 unk14;
               struct Task *unk18;


               Sprite s;
               Hitbox reserved;
               Cheese_UNK54 unk54;
               MultiplayerPlayer *mpp;
} Cheese;

extern Cheese *gCheese;

void CreateCheese(Player *);
# 8 "src/game/stage/intro.c" 2
# 1 "include/game/stage/screen_mask.h" 1





void ScreenMask_Right_OriginBottom(s32 qX, u16);
void ScreenMask_Right_OriginTop(s32 qX, u16);
void ScreenMask_Lower_OriginLeft(int_vcount y, u16 angle);
void ScreenMask_Upper_OriginLeft(int_vcount y, u16 angle);
void ScreenMask_Lower_OriginRight(int_vcount y, u16 angle);
void ScreenMask_Upper_OriginRight(int_vcount y, u16 angle);

void ScreenMask_CreateShape(u16, u16 width, u16, s16 x, s16 y, u8);
# 9 "src/game/stage/intro.c" 2
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
# 10 "src/game/stage/intro.c" 2
# 1 "include/game/countdown.h" 1





void CreateCourseStartCountdown(bool8 playerSkippedIntro);
# 11 "src/game/stage/intro.c" 2
# 1 "include/game/boost_effect.h" 1







void sub_801561C(void);
void sub_8015750(void);
void GetPreviousPlayerPos(Vec2_32 *pos, u8 pastFrameDelta);
void CreateBoostEffectTasks(void);
void BoostEffect_StorePlayerPos(void);
void BoostEffect_StorePlayerState(void);

extern const AnimId sCharacterPalettesBoostEffect[NUM_CHARACTERS];
# 12 "src/game/stage/intro.c" 2

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
# 14 "src/game/stage/intro.c" 2
# 1 "include/game/stage/ui.h" 1
# 11 "include/game/stage/ui.h"
extern const u8 gSecondsTable[60][2];
extern const u8 gMillisUnpackTable[60][2];

extern struct Task *gStageUITask;

struct Task *CreateStageUI(void);
extern void StageUI_PrintIntegerAt(u32 value, s16 x, s16 y, u8 palId);
# 15 "src/game/stage/intro.c" 2
# 1 "include/game/stage/boss_results_transition.h" 1





extern void InitHBlankBgOffsets(u16);
extern void sub_802EF68(s16 p0, s16 p1, u8 p2);

extern const u16 gUnknown_080D6DE4[][2];
# 16 "src/game/stage/intro.c" 2
# 1 "include/game/water_effects.h" 1





typedef struct {

    u16 pal[32][16];
} WaterData;

typedef struct {



               bool8 isActive;
               u8 unk1;
               u8 unk2;
               u8 unk3;

               s16 currentWaterLevel;
               s16 targetWaterLevel;
               u32 unk8;
               u32 mask;


               struct Task *t;
               Sprite s;
} Water;

extern Water gWater;

void InitWaterPalettes(void);
void CreateRunOnWaterEffect(void);
struct Task *CreateWaterfallSurfaceHitEffect(s32 x, s32 y);
# 17 "src/game/stage/intro.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 19 "src/game/stage/intro.c" 2
# 50 "src/game/stage/intro.c"
static const u16 zoneLoadingCharacterLogos[NUM_CHARACTERS][3] = {
    [CHARACTER_SONIC] = { 9, 1114, 0 }, [CHARACTER_CREAM] = { 9, 1114, 3 },
    [CHARACTER_TAILS] = { 9, 1114, 1 }, [CHARACTER_KNUCKLES] = { 9, 1114, 2 },
    [CHARACTER_AMY] = { 9, 1114, 4 },
};

static const u16 zoneLoadingZoneNames[(9 + 1) * 4][3] = {

    { 35, 1117, 0 },
    { 20, 1117, 1 },
    { 20, 1117, 2 },
    { 35, 1117, 3 },

    { 35, 1117, 4 },
    { 20, 1117, 5 },
    { 20, 1117, 6 },
    { 35, 1117, 7 },

    { 35, 1117, 8 },
    { 20, 1117, 9 },
    { 20, 1117, 10 },
    { 35, 1117, 11 },

    { 35, 1117, 12 },
    { 20, 1117, 13 },
    { 20, 1117, 14 },
    { 35, 1117, 15 },

    { 35, 1117, 16 },
    { 20, 1117, 17 },
    { 20, 1117, 18 },
    { 35, 1117, 19 },

    { 35, 1117, 20 },
    { 20, 1117, 21 },
    { 20, 1117, 22 },
    { 35, 1117, 23 },

    { 35, 1117, 24 },
    { 20, 1117, 25 },
    { 20, 1117, 26 },
    { 35, 1117, 27 },

    { 35, 1117, 28 },
    { 20, 1117, 29 },
    { 20, 1117, 30 },
    { 35, 1117, 31 },

    { 35, 1117, 32 },
    { 20, 1117, 33 },
    { 20, 1117, 34 },
    { 35, 1117, 35 },

    { 35, 1117, 36 },
    { 20, 1117, 37 },
    { 20, 1117, 38 },
    { 35, 1117, 39 },
};



static const u16 zoneLoadingIcons[9][3] = {
    [0] = { 64, 1116, 0 },
    [1] = { 64, 1116, 1 },
    [2] = { 64, 1116, 2 },
    [3] = { 64, 1116, 3 },
    [4] = { 64, 1116, 4 },
    [5] = { 64, 1116, 5 },
    [6] = { 64, 1116, 6 },
    [7] = { 64, 1116, 7 },
    [8] = { 64, 1116, 8 },
};





static const u16 sZoneUnlockedIcons[(9 + 1)][3] = {
    [0] = { 9, 1118, 1 },
    [1] = { 9, 1118, 2 },
    [2] = { 9, 1118, 3 },
    [3] = { 9, 1118, 4 },
    [4] = { 9, 1118, 5 },
    [5] = { 9, 1118, 6 },
    [6] = { 9, 1118, 7 },
    [7] = { 9, 1118, 8 },
    [8] = { 9, 1118, 9 },
    [9] = { 9, 1118, 0 },
};

static const u16 sZoneLoadingActLetters[5][3] = {
    [0] = { 18, 1112, 0 },
    [1] = { 18, 1112, 1 },
    [2] = { 18, 1112, 2 },
    [3] = { 18, 1112, 3 },
    [4] = { 18, 1112, 4 },
};

static const TileInfo characterAnimsGettingReady[NUM_CHARACTERS] = {
    [CHARACTER_SONIC] = { 0, ((30) + CHARACTER_SONIC * (91)), 0 },
    [CHARACTER_CREAM] = { 0, ((30) + CHARACTER_CREAM * (91)), 0 },
    [CHARACTER_TAILS] = { 0, ((30) + CHARACTER_TAILS * (91)), 0 },
    [CHARACTER_KNUCKLES] = { 0, ((30) + CHARACTER_KNUCKLES * (91)), 0 },
    [CHARACTER_AMY] = { 0, ((30) + CHARACTER_AMY * (91)), 0 },
};



const TileInfo sColoredTriangle[NUM_CHARACTERS] = {
    [CHARACTER_SONIC] = { 0x54, 1113, 0 }, [CHARACTER_CREAM] = { 0x54, 1113, 4 },
    [CHARACTER_TAILS] = { 0x54, 1113, 1 }, [CHARACTER_KNUCKLES] = { 0x54, 1113, 2 },
    [CHARACTER_AMY] = { 0x54, 1113, 3 },
};

static const u8 sGettingReadyAnimationDuration[NUM_CHARACTERS]
    = { [CHARACTER_SONIC] = 40, [CHARACTER_CREAM] = 55, [CHARACTER_TAILS] = 52, [CHARACTER_KNUCKLES] = 40, [CHARACTER_AMY] = 40 };


static const u8 gUnknown_080D6FF5[NUM_CHARACTERS + 1][16u][3] = {
    {
        { 0x00, 0x17, 0x06 },
        { 0x16, 0x16, 0x16 },
        { 0x00, 0x04, 0x13 },
        { 0x00, 0x08, 0x1D },
        { 0x00, 0x00, 0x0C },
        { 0x00, 0x13, 0x00 },
        { 0x1F, 0x1F, 0x13 },
        { 0x1F, 0x1B, 0x00 },
        { 0x13, 0x0A, 0x02 },
        { 0x1F, 0x15, 0x0A },
        { 0x15, 0x00, 0x00 },
        { 0x1F, 0x04, 0x04 },
        { 0x04, 0x04, 0x04 },
        { 0x1F, 0x1F, 0x1F },
        { 0x0E, 0x0E, 0x0E },
        { 0x00, 0x13, 0x1F },
    },
    {
        { 0x00, 0x19, 0x14 },
        { 0x19, 0x19, 0x19 },
        { 0x1F, 0x0B, 0x00 },
        { 0x1F, 0x12, 0x00 },
        { 0x19, 0x05, 0x00 },
        { 0x1C, 0x0B, 0x00 },
        { 0x13, 0x00, 0x00 },
        { 0x1F, 0x1C, 0x17 },
        { 0x1D, 0x18, 0x10 },
        { 0x13, 0x0F, 0x08 },
        { 0x1F, 0x1E, 0x00 },
        { 0x08, 0x11, 0x1F },
        { 0x02, 0x02, 0x02 },
        { 0x1F, 0x1F, 0x1F },
        { 0x0E, 0x0E, 0x0E },
        { 0x1F, 0x00, 0x1F },
    },
    {
        { 0x00, 0x17, 0x06 },
        { 0x1F, 0x00, 0x1F },
        { 0x1D, 0x11, 0x04 },
        { 0x1F, 0x17, 0x04 },
        { 0x17, 0x0A, 0x02 },
        { 0x15, 0x19, 0x1B },
        { 0x00, 0x13, 0x1F },
        { 0x04, 0x08, 0x1F },
        { 0x13, 0x13, 0x13 },
        { 0x0E, 0x0E, 0x0E },
        { 0x15, 0x00, 0x00 },
        { 0x1F, 0x04, 0x04 },
        { 0x02, 0x02, 0x02 },
        { 0x1F, 0x1F, 0x1F },
        { 0x1F, 0x00, 0x1F },
        { 0x1F, 0x00, 0x1F },
    },
    {
        { 0x00, 0x16, 0x14 },
        { 0x16, 0x16, 0x16 },
        { 0x17, 0x00, 0x00 },
        { 0x1F, 0x04, 0x00 },
        { 0x0E, 0x00, 0x00 },
        { 0x04, 0x08, 0x1F },
        { 0x1F, 0x1F, 0x13 },
        { 0x1F, 0x1B, 0x00 },
        { 0x13, 0x0A, 0x00 },
        { 0x1F, 0x15, 0x0A },
        { 0x00, 0x15, 0x02 },
        { 0x0E, 0x1F, 0x00 },
        { 0x04, 0x04, 0x04 },
        { 0x1F, 0x1F, 0x1F },
        { 0x0E, 0x0E, 0x0E },
        { 0x1F, 0x13, 0x00 },
    },
    {
        { 0x00, 0x17, 0x06 },
        { 0x15, 0x19, 0x1B },
        { 0x1D, 0x08, 0x13 },
        { 0x1F, 0x13, 0x17 },
        { 0x17, 0x04, 0x0A },
        { 0x00, 0x15, 0x00 },
        { 0x0E, 0x0E, 0x0E },
        { 0x13, 0x13, 0x13 },
        { 0x13, 0x0A, 0x00 },
        { 0x1F, 0x15, 0x0A },
        { 0x15, 0x00, 0x00 },
        { 0x1F, 0x00, 0x00 },
        { 0x00, 0x00, 0x00 },
        { 0x1F, 0x1F, 0x1F },
        { 0x1F, 0x1F, 0x13 },
        { 0x1F, 0x1F, 0x00 },
    },
    {
        { 0x00, 0x12, 0x0B },
        { 0x04, 0x06, 0x0A },
        { 0x00, 0x1F, 0x00 },
        { 0x1F, 0x1F, 0x1F },
        { 0x14, 0x1F, 0x1F },
        { 0x10, 0x1C, 0x1E },
        { 0x0C, 0x18, 0x19 },
        { 0x09, 0x14, 0x15 },
        { 0x00, 0x0E, 0x10 },
        { 0x00, 0x1F, 0x00 },
        { 0x1F, 0x16, 0x18 },
        { 0x1F, 0x0A, 0x10 },
        { 0x1F, 0x1E, 0x00 },
        { 0x19, 0x18, 0x00 },
        { 0x13, 0x0A, 0x00 },
        { 0x1F, 0x00, 0x00 },
    },
};

const u16 sZoneLoadingCharacterColors[NUM_CHARACTERS] = {
    [CHARACTER_SONIC] = ((0) | ((0) << 5) | ((31) << 10)), [CHARACTER_CREAM] = ((31) | ((18) << 5) | ((0) << 10)), [CHARACTER_TAILS] = ((31) | ((27) << 5) | ((0) << 10)),
    [CHARACTER_KNUCKLES] = ((31) | ((3) << 5) | ((0) << 10)), [CHARACTER_AMY] = ((31) | ((17) << 5) | ((21) << 10)),
};

const u16 sScreenPositions_ZoneLoadingActLetters[4][2] = {
    { 426 - 108, 240 - 63 },
    { 426 - 87, 240 - 59 },
    { 426 - 66, 240 - 55 },
    { 426 - 44, 240 - 51 },
};

const s16 gUnknown_080D7130[6] = { 10, -8, 6, -4, 2, 0 };

typedef struct {
               u32 counter;
               bool8 skippedIntro;
} IntroController;

typedef struct {
    u16 y;
    u16 angle;
} ScreenMaskValues;


typedef struct {
               IntroController *controller;
               ScreenFade fade;
               ScreenMaskValues mask1;
               ScreenMaskValues mask2;
} IntroBackgrounds;

typedef struct {
               IntroController *controller;
               Sprite sprUnlockedIcons[9];
                Sprite sprCharacterLogo;
                Sprite sprZoneName[4];
                Sprite sprLoadingWheel;
                Sprite sprLoadingWheelIcon;
                SpriteTransform transform;
} IntroUI;

typedef struct {
               IntroController *controller;
               Sprite sprZoneNames[4];
} IntroActLetters;

static void Task_IntroControllerMain(void);
static void Task_802F9F8(void);
static void Task_IntroColorAnimation(void);
static void Task_IntroZoneNameAndIconAnimations(void);
static void Task_IntroActLettersAnimations(void);
static void Task_UpdateStageLoadingScreen(void);
static void TaskDestructor_IntroController(struct Task *);
static void TaskDestructor_Dummy(struct Task *);
static void TaskDestructor_803045C(struct Task *);
static void TaskDestructor_8030474(struct Task *);

struct Task *SetupStageIntro(void)
{
    struct Task *t;
    IntroController *introController;
    struct Task *t2;
    ScreenFade *fade;
    IntroBackgrounds *introBackgrounds;

    IntroUI *introUI;
    IntroActLetters *introActLetters;

    ScreenMaskValues *mask;
    void *tilesCursor;
    Sprite *s;
    u8 i;

    gStageFlags |= 0x0001;
    gStageFlags |= 0x0100;



    if (gPlayer.spriteInfoBody)

        gPlayer.spriteInfoBody->s.frameFlags |= ((1) << (18));

    if (gPlayer.spriteInfoLimbs)

        gPlayer.spriteInfoLimbs->s.frameFlags |= ((1) << (18));

    gActiveBossTask = 
# 366 "src/game/stage/intro.c" 3 4
                     ((void *)0)
# 366 "src/game/stage/intro.c"
                         ;

    t = TaskCreate(Task_IntroControllerMain, sizeof(IntroController), 0x2200, 0, TaskDestructor_IntroController);
    introController = (void *)((t)->data);
    introController->counter = 2;
    introController->skippedIntro = 0;

    gPlayer.moveState |= 0x00100000;

    t2 = TaskCreate(Task_802F9F8, sizeof(IntroBackgrounds), 0x2210, 0, TaskDestructor_Dummy);
    introBackgrounds = (void *)((t2)->data);
    introBackgrounds->controller = introController;

    fade = &introBackgrounds->fade;
    fade->window = 0;
    fade->brightness = 0;
    fade->flags = (1 << 1);
    fade->speed = 0;
    fade->bldCnt = ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)) | ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) | (2 << 6) | (1 << 6);
    fade->bldAlpha = 0;
    UpdateScreenFade(fade);

    t2 = TaskCreate(Task_IntroColorAnimation, sizeof(IntroBackgrounds), 0x2220, 0, TaskDestructor_Dummy);
    introBackgrounds = (void *)((t2)->data);
    introBackgrounds->controller = introController;

    mask = &introBackgrounds->mask1;
    mask->y = 0;
    mask->angle = 0;

    mask = &introBackgrounds->mask2;
    mask->y = 0;
    mask->angle = 0;

    t2 = TaskCreate(Task_IntroZoneNameAndIconAnimations, sizeof(IntroUI), 0x2230, 0, TaskDestructor_803045C);
    introUI = (void *)((t2)->data);
    introUI->controller = introController;

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        tilesCursor = VramMalloc(
            zoneLoadingCharacterLogos[gSelectedCharacter][0] + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 0][0]
            + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 1][0] + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 2][0]
            + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 3][0]
            + ({ zoneLoadingIcons[((gCurrentLevel) >> 2)][0] + 0x24; }) + (sZoneUnlockedIcons[0][0] * (7 + 2)));
    } else {
        tilesCursor = VramMalloc(
            zoneLoadingCharacterLogos[gSelectedCharacter][0] + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 0][0]
            + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 1][0] + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 2][0]
            + zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + 3][0]
            + ({ zoneLoadingIcons[((gCurrentLevel) >> 2)][0] + 0x24; }));
    }


    s = &introUI->sprCharacterLogo;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = tilesCursor;


    tilesCursor += zoneLoadingCharacterLogos[gSelectedCharacter][0] * 32;

    s->oamFlags = ((4) << 6);
    s->graphics.size = 0;
    s->graphics.anim = zoneLoadingCharacterLogos[gSelectedCharacter][1];
    s->variant = zoneLoadingCharacterLogos[gSelectedCharacter][2];
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        s->palId = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;
    }

    s->hitboxes[0].index = -1;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 4; i++) {
        u32 nameIndex;

        s = &introUI->sprZoneName[i];
        s->x = 0;
        s->y = 0;

        if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
            s->graphics.dest = tilesCursor;

            nameIndex = (32 + i);
            tilesCursor += zoneLoadingZoneNames[nameIndex][0] * 32;
            s->graphics.anim = zoneLoadingZoneNames[nameIndex][1];
            s->variant = zoneLoadingZoneNames[nameIndex][2];
        } else if ((gCurrentLevel & 0x3) == 2) {
            s->graphics.dest = tilesCursor;

            nameIndex = (36 + i);
            tilesCursor += zoneLoadingZoneNames[nameIndex][0] * 32;
            s->graphics.anim = zoneLoadingZoneNames[nameIndex][1];
            s->variant = zoneLoadingZoneNames[nameIndex][2];
        } else {
            s->graphics.dest = tilesCursor;

            tilesCursor += zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + i][0] * 32;
            s->graphics.anim = zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + i][1];
            s->variant = zoneLoadingZoneNames[((gCurrentLevel) >> 2) * 4 + i][2];
        }
        s->oamFlags = ((4) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((0) << (12));
    }


    s = &introUI->sprLoadingWheel;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = tilesCursor;
    tilesCursor += 36 * 32;

    s->oamFlags = ((4) << 6);
    s->graphics.size = 0;
    s->graphics.anim = 1115;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(2.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((0) << (12));
    UpdateSpriteAnimation(s);


    s = &introUI->sprLoadingWheelIcon;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = tilesCursor;

    tilesCursor += zoneLoadingIcons[((gCurrentLevel) >> 2)][0] * 32;
    s->graphics.anim = zoneLoadingIcons[((gCurrentLevel) >> 2)][1];
    s->variant = zoneLoadingIcons[((gCurrentLevel) >> 2)][2];

    if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
        s->graphics.anim = zoneLoadingIcons[8][1];
        s->variant = zoneLoadingIcons[8][2];
    }

    s->oamFlags = ((4) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant |= -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = (gOamMatrixIndex++ | ((1) << (5)));
    UpdateSpriteAnimation(s);


    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        for (i = 0; i < 9; i++) {
            s = &introUI->sprUnlockedIcons[i];
            s->x = 0;
            s->y = -32;
            s->graphics.dest = tilesCursor;
            tilesCursor += sZoneUnlockedIcons[0][0] * 32;

            if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
                if (i == 8) {


                    s->graphics.anim = sZoneUnlockedIcons[9][1];
                    s->variant = sZoneUnlockedIcons[9][2];
                } else {
                    s->graphics.anim = sZoneUnlockedIcons[i][1];
                    s->variant = sZoneUnlockedIcons[i][2];
                }
            } else if (i == ((gCurrentLevel) >> 2)) {
                s->graphics.anim = sZoneUnlockedIcons[9][1];
                s->variant = sZoneUnlockedIcons[9][2];
            } else {
                s->graphics.anim = sZoneUnlockedIcons[i][1];
                s->variant = sZoneUnlockedIcons[i][2];
            }

            s->oamFlags = ((4) << 6);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = ((int)((float)(1.0)*0x10));
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = ((0) << (12));
            UpdateSpriteAnimation(s);
        }
    }


    t2 = TaskCreate(Task_IntroActLettersAnimations, sizeof(IntroActLetters), 0x2240, 0, TaskDestructor_8030474);
    introActLetters = (void *)((t2)->data);
    introActLetters->controller = introController;
    tilesCursor = VramMalloc(sZoneLoadingActLetters[0][0] * 4);

    for (i = 0; i < 4; i++) {
        s = &introActLetters->sprZoneNames[i];
        s->x = 0;
        s->y = -32;

        s->graphics.anim = sZoneLoadingActLetters[i][1];
        s->variant = sZoneLoadingActLetters[i][2];


        if ((i == 3) && ((((gCurrentLevel) & ((3 + 1) - 1)) & 1) != 0)) {
            s->graphics.anim = sZoneLoadingActLetters[4][1];
            s->variant = sZoneLoadingActLetters[4][2];
        }

        s->graphics.dest = tilesCursor;
        tilesCursor += sZoneLoadingActLetters[0][0] * 32;

        s->oamFlags = ((2) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((0) << (12));
        UpdateSpriteAnimation(s);
    }

    t2 = TaskCreate(Task_UpdateStageLoadingScreen, sizeof(IntroBackgrounds), 0x22F0, 0, TaskDestructor_Dummy);
    introBackgrounds = (void *)((t2)->data);
    introBackgrounds->controller = introController;

    return t;
}

static void Task_IntroControllerMain(void)
{
    IntroController *introController = (void *)((gCurTask)->data);
    u32 frameCounter = introController->counter;
    frameCounter++;


    if ((((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) && !((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        if (gPressedKeys & (0x0001 | 0x0002)) {
            gPlayer.moveState &= ~0x00100000;
            gPlayer.moveState &= ~0x00400000;
            frameCounter = 200;
            introController->skippedIntro = 1;
        }
    }
    introController->counter = frameCounter;

    gPlayerBodyPSI.s.frameFlags &= ~(((3) << (7)));

    if (frameCounter < 150) {
        gPlayer.moveState |= 0x00100000;
        gPlayer.moveState |= 0x00400000;
    } else if (frameCounter == 151) {
        gPlayer.moveState &= ~0x00100000;
    } else if (frameCounter >= 150 && frameCounter <= 166) {
        gPlayer.moveState &= ~0x00400000;
    }


    if ((frameCounter == (200 - sGettingReadyAnimationDuration[gSelectedCharacter])) && (gBossIndex == 0)
        && (((gCurrentLevel) & ((3 + 1) - 1)) != 2)) {
        Player *p = &gPlayer;
        p->anim = characterAnimsGettingReady[gSelectedCharacter].anim;
        p->variant = characterAnimsGettingReady[gSelectedCharacter].variant;
        p->unk6C = 1;



        if (p->spriteInfoBody != 
# 650 "src/game/stage/intro.c" 3 4
                                ((void *)0)
# 650 "src/game/stage/intro.c"
                                    )

        {
            p->spriteInfoBody->s.frameFlags |= 0x00040000;


            if (p->spriteInfoLimbs != 
# 656 "src/game/stage/intro.c" 3 4
                                     ((void *)0)
# 656 "src/game/stage/intro.c"
                                         )

            {
                p->spriteInfoLimbs->s.frameFlags |= 0x00040000;
            }

            if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
                p->spriteInfoBody->s.palId = ((volatile struct SioMultiCnt *)(REG_BASE + 0x128))->id;
            } else {
                p->spriteInfoBody->s.palId = 0;
            }
        }
    }


    if (frameCounter > 200) {
        gStageFlags &= ~0x0100;

        if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
            if (gCurrentLevel == ((7)*(3 + 1)) + (0)) {

                if (gBossIndex == 0) {
                    CreateZoneBoss(BOSS_EGG_HAMMER_TANK_II);
                }
            } else if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
                CreateZoneBoss(BOSS_TRUE_AREA_53_BOSS);
                gDispCnt |= 0x0200;
            } else {
                CreateZoneBoss(((gCurrentLevel) >> 2));
            }

            gPlayer.moveState &= ~0x00200000;
            gStageFlags &= ~0x0001;
        } else {
            if (gBossIndex == 0) {
                CreateCourseStartCountdown(introController->skippedIntro);
            } else {
                gPlayer.moveState &= ~0x00200000;
                gStageFlags &= ~0x0001;
            }
        }
        if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
            sub_8018818();
        } else {
            gPlayerBodyPSI.s.frameFlags &= ~((1) << (18));
        }
        CreateStageUI();
        TaskDestroy(gCurTask);
        CreateBoostEffectTasks();
    }
}

static void Task_802F9F8(void)
{
    IntroBackgrounds *introBackgrounds = (void *)((gCurTask)->data);
    IntroController *controller = introBackgrounds->controller;
    ScreenFade *fade = &introBackgrounds->fade;
    s32 frameCounter = controller->counter;
    u8 i;
    u8 r, g, b;

    gDispCnt &= ~(0x2000 | 0x4000 | 0x8000);

    if ((unsigned)frameCounter >= 150) {
        frameCounter -= 150;

        if ((unsigned)frameCounter >= (166 - 150)) {
            frameCounter = 16;
        }
        fade->brightness = frameCounter << 9;

        if (((frameCounter << 25) >> 16) >= 0x2000) {
            fade->brightness = 0x2000;
        }


        if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {

            for (i = 0; i < 16u; i++) {
                r = gUnknown_080D6FF5[gSelectedCharacter][i][0];
                r = (r * frameCounter) / 16u;
                g = ((gUnknown_080D6FF5[gSelectedCharacter][i][1] * frameCounter) / 16u);
                b = ((gUnknown_080D6FF5[gSelectedCharacter][i][2] * frameCounter) / 16u);

                gObjPalette[(0)*16u + (i)] = ((((b) << 10) | ((g) << 5) | (r)));;

                if (gCheese != 
# 742 "src/game/stage/intro.c" 3 4
                              ((void *)0)
# 742 "src/game/stage/intro.c"
                                  ) {
                    r = gUnknown_080D6FF5[5][i][0];
                    r = (r * frameCounter) / 16u;
                    g = ((gUnknown_080D6FF5[5][i][1] * frameCounter) / 16u);
                    b = ((gUnknown_080D6FF5[5][i][2] * frameCounter) / 16u);

                    gObjPalette[(14)*16u + (i)] = ((((b) << 10) | ((g) << 5) | (r)));;
                }
            }
        } else {

            u8 sid;

            for (sid = 0; sid < 4; sid++) {
                if ((((gMultiplayerConnections) >> (sid)) & 1)) {
                    for (i = 0; i < 16u; i++) {
                        r = gUnknown_080D6FF5[(gMultiplayerCharacters)[sid]][i][0];
                        r = (r * frameCounter) / 16u;
                        g = ((gUnknown_080D6FF5[(gMultiplayerCharacters)[sid]][i][1] * frameCounter) / 16u);
                        b = ((gUnknown_080D6FF5[(gMultiplayerCharacters)[sid]][i][2] * frameCounter) / 16u);

                        gObjPalette[(sid)*16u + (i)] = ((((b) << 10) | ((g) << 5) | (r)));;
                    }
                }
            }

            if (gCheese != 
# 768 "src/game/stage/intro.c" 3 4
                          ((void *)0)
# 768 "src/game/stage/intro.c"
                              ) {
                for (i = 0; i < 16u; i++) {
                    r = gUnknown_080D6FF5[5][i][0];
                    r = (r * frameCounter) / 16u;
                    g = ((gUnknown_080D6FF5[5][i][1] * frameCounter) / 16u);
                    b = ((gUnknown_080D6FF5[5][i][2] * frameCounter) / 16u);

                    gObjPalette[(14)*16u + (i)] = ((((b) << 10) | ((g) << 5) | (r)));;
                }
            }
        }

        gFlags |= 0x2;
        fade->bldCnt = 0x3FCF;
        UpdateScreenFade(fade);


        gWinRegs[4] = 0x1F3F;
        gWinRegs[5] = 0x1F;

    } else {

        fade->bldCnt = 0x30EF;
        UpdateScreenFade(fade);

        gWinRegs[4] = ((((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)) | (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11)) | (1 << 12) | (1 << 13)));
        gWinRegs[5] = ((1 << 4) | (1 << 12));
    }

    if (gCurrentLevel == ((7)*(3 + 1)) + (1)) {
        gWinRegs[4] &= ~((1 << 1) | (1 << 2));
    }



    if (controller->counter >= 200) {
        gBldRegs.bldY = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;

        gWinRegs[0] = (((426) << 16) | (426));
        gWinRegs[2] = (((240) << 16) | (240));
        gWinRegs[1] = (((426) << 16) | (426));
        gWinRegs[3] = (((240) << 16) | (240));
        gWinRegs[4] = 0;
        gWinRegs[5] = 0;

        if (gCurrentLevel != ((7)*(3 + 1)) + (1)) {
            gDispCnt &= ~(0x2000 | 0x4000 | 0x8000);
        } else {

            gDispCnt &= ~(0x2000 | 0x4000 | 0x0200 | 0x0400);
            gWinRegs[5] = ((1 << 12) | (1 << 13) | (1 << 8) | (1 << 9) | (1 << 10)
                                       | (1 << 4) | (1 << 5) | (1 << 0) | (1 << 2));

            gBldRegs.bldCnt
                = ((1 << 12) | (1 << 8) | (1 << 9) | (1 << 6) | (1 << 1) | (1 << 2));
            gBldRegs.bldAlpha = 1028;

            gBldRegs.bldY = 32;



        }

        TaskDestroy(gCurTask);
    }
}

static void Task_IntroColorAnimation(void)
{
    IntroBackgrounds *introBackgrounds = (void *)((gCurTask)->data);

    IntroController *controller = introBackgrounds->controller;
    ScreenMaskValues *mask1 = &introBackgrounds->mask1;
    ScreenMaskValues *mask2 = &introBackgrounds->mask2;
    u32 counter = controller->counter;

    if (counter > 1) {
        u32 innerCount = counter - 1;

        mask1->angle = ((int)((((double)(0)) / 360.0) * 1024));
        mask1->y = 240;
        mask2->angle = ((int)((((double)(180)) / 360.0) * 1024));
        mask2->y = 0;

        if (innerCount < 10) {

            mask1->angle = -(innerCount * (426 / 10)) + (426 + ((int)((((double)(5.625)) / 360.0) * 1024)));
            mask1->y = (240 / 2) + 8;

            if (innerCount >= 7) {

                innerCount = counter - 7;

                mask2->angle = ((int)((((double)(180)) / 360.0) * 1024));
                mask2->y = innerCount * 5;
            }
        } else if (counter < 120) {


            mask1->angle = ((int)((((double)(190.546875)) / 360.0) * 1024));
            mask1->y = 240 - 23;
            mask2->angle = ((int)((((double)(180)) / 360.0) * 1024));
            mask2->y = 16;
        } else if (counter < 136) {

            innerCount = counter - 120;

            mask1->angle = ((int)((((double)(190.546875)) / 360.0) * 1024)) - (innerCount * ((int)((((double)(6.328125)) / 360.0) * 1024)));
            mask1->y = -(innerCount * 2) + (240 - 23);
            mask2->angle = ((int)((((double)(180)) / 360.0) * 1024)) - (innerCount * ((int)((((double)(5.625)) / 360.0) * 1024)));
            mask2->y = counter - 104;
        } else if (counter >= 150) {

            gFlags &= ~0x4;

            TaskDestroy(gCurTask);
            return;
        } else {



            innerCount = counter - 136;
            mask1->angle = ((int)((((double)(191.25)) / 360.0) * 1024)) - (innerCount * ((int)((((double)(2.109375)) / 360.0) * 1024)));
            mask1->y = innerCount * ((240 - 62) / 14);
            mask2->angle = 0;
        }
    }

    gHBlankCopySize = sizeof(winreg_t);
    gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(REG_BASE + (0x40 + sizeof(winreg_t) * 0)));

    gFlags |= 0x4;

    InitHBlankBgOffsets(426);

    if (counter > 10) {
        ScreenMask_Lower_OriginRight(mask1->y, mask1->angle);
        ScreenMask_Upper_OriginRight(mask2->y, mask2->angle);

    } else {
        ScreenMask_Lower_OriginLeft(mask1->y, mask1->angle);
        ScreenMask_Upper_OriginRight(mask2->y, mask2->angle);
    }
}

static void StageIntroUpdateIcons(void)
{
    IntroUI *introUI = (void *)((gCurTask)->data);
    u32 counter = introUI->controller->counter;
    Sprite *s;
    SpriteTransform *transform;
    s32 i;
    s32 sineVal;


    s = &introUI->sprCharacterLogo;
    DisplaySprite(s);


    for (i = 0; i < (sizeof(introUI->sprZoneName) / sizeof((introUI->sprZoneName)[0])); i++) {
        s = &introUI->sprZoneName[i];
        s->prevVariant = -1;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }


    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        for (i = 0; i < (sizeof(introUI->sprUnlockedIcons) / sizeof((introUI->sprUnlockedIcons)[0])); i++) {
            s = &introUI->sprUnlockedIcons[i];
            DisplaySprite(s);
        }
    }


    s = &introUI->sprLoadingWheel;
    if (counter >= 30) {
        if (counter == 30) {
            s->graphics.anim = 1115;
            s->variant = 1;
            s->prevVariant = -1;
        }
        UpdateSpriteAnimation(s);
    }
    DisplaySprite(s);


    s = &introUI->sprLoadingWheelIcon;
    transform = &introUI->transform;
    sineVal = ((int)(((gSineTable[((counter * 24) & (1024 - 1))])) >> 6));

    if (sineVal == ((s32)((1.0)*256))) {
        sineVal = ((s32)((1.0)*256)) - 1;
    }
    if (sineVal == ((s32)((0.0)*256))) {
        sineVal = ((s32)((0.0)*256)) + 4;
    }

    transform->rotation = 0;
    transform->qScaleX = sineVal;
    transform->qScaleY = ((s32)((1.0)*256));
    transform->x = s->x;
    transform->y = s->y;

    TransformSprite(s, transform);
    DisplaySprite(s);
}

static inline int InlineIconsCalc(u8 arg0, int arg1) { return (arg0 * arg1) - 22; }

static void Task_IntroZoneNameAndIconAnimations(void)
{
    IntroUI *introUI = (void *)((gCurTask)->data);
    u32 counter = introUI->controller->counter;
    Sprite *s;
    u32 i;
    u8 counterByte;

    if (counter - 10 > 124) {
        if (counter >= 200) {
            TaskDestroy(gCurTask);
            return;
        }

        if (counter >= 150) {

            s = &introUI->sprCharacterLogo;

            if (counter == 150) {
                s->graphics.anim = sColoredTriangle[gSelectedCharacter].anim;
                s->variant = sColoredTriangle[gSelectedCharacter].variant;
                s->palId = 0;
                s->prevVariant = -1;
                s->x = 426;
                s->y = 240;
                s->frameFlags = ((0) << (12));
            } else if (counter >= 190) {
                s->x += 4;
                s->y += 4;
            }

            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
        return;
    }


    counter -= 9;

    s = &introUI->sprCharacterLogo;

    if (counter <= 12) {
        s->x = 254 - (((counter * 75) << 6) >> 8);
        s->y = ((240 / 2) + 41) - (((counter * 123) << 3) >> 8);

    } else if (counter <= 100) {

        s->x = 254 - (((13 * 75) << 6) >> 8) + 13;
        s->y = ((240 / 2) + 41) - (((13 * 123) << 3) >> 8) + 2;
    } else {

        u32 innerCount = counter - (100 - 12);
        s->x = 254 - (((innerCount * 75) << 6) >> 8);
        s->y = ((240 / 2) + 41) - (((innerCount * 123) << 3) >> 8);
    }


    for (i = 0; i < (sizeof(introUI->sprZoneName) / sizeof((introUI->sprZoneName)[0])); i++) {
        s = &introUI->sprZoneName[i];

        if (counter <= 12) {
            s->x = 284 - (((counter * 75) << 6) >> 8);
            s->y = ((240 / 2) + 47) - (((counter * 123) << 3) >> 8);
        } else if (counter <= 100) {
            s->x = 284 - (((13 * 75) << 6) >> 8) + 13;
            s->y = ((240 / 2) + 47) - (((13 * 123) << 3) >> 8) + 2;
        } else {
            s->x = 284 - ((((counter - (100 - 12)) * 75) << 6) >> 8);
            s->y = ((240 / 2) + 47) - ((((counter - (100 - 12)) * 123) << 3) >> 8);
        }



        if (i == 3) {
            s->x -= 24;
        }
    }


    counterByte = counter;
    for (i = 0; i < (sizeof(introUI->sprUnlockedIcons) / sizeof((introUI->sprUnlockedIcons)[0])); i++) {
        s32 x, y;




        u32 lastIconIndex;

        lastIconIndex = (((sizeof(introUI->sprUnlockedIcons) / sizeof((introUI->sprUnlockedIcons)[0])) - 1) - i);
        s = &introUI->sprUnlockedIcons[lastIconIndex];

        x = (426 - ((sizeof(introUI->sprUnlockedIcons) / sizeof((introUI->sprUnlockedIcons)[0])) * 17) - (((sizeof(introUI->sprUnlockedIcons) / sizeof((introUI->sprUnlockedIcons)[0])) + 1) * 2))
            + lastIconIndex * 17;
        s->x = x;

        y = -22;
        s->y = y;

        if (counterByte < 50) {
            if (counterByte >= i * 2) {
                if (!(i & 1)) {
                    s32 offset = i * -20;
                    if (counterByte + (i * -2) < 5) {
                        s->y = InlineIconsCalc(counterByte, 10) + offset;
                    } else {
                        s->y = 20;
                    }
                } else {

                    if ((counterByte + (i * -2)) < 5) {
                        s->y = ((counterByte + (i * -2)) * 6) - 22;
                    } else {
                        s->y = 12;
                    }
                }
            }
        } else if (counter < 100) {

            if (!(i & 1)) {
                s->y = 20;
            } else {
                s->y = 12;
            }
        } else {

            if (!(i & 1)) {
                s->y = 20 - (counter - 100) * 6;

            } else {
                s->y = 12 - (counter - 100) * 6;
            }
        }
    }


    s = &introUI->sprLoadingWheel;
    s->x = 36;

    if (counter <= 16) {
        s->y = -48;
    } else if (counter <= 25) {
        counterByte = counter - 16;
        s->y = (counterByte * 8) - 40;
    } else if (counter <= 100) {
        s->y = 32;
    } else {
        counterByte = counter - 100;
        s->y = 32 - (counterByte * 8);
    }



    s = &introUI->sprLoadingWheelIcon;
    s->frameFlags = (gOamMatrixIndex++ | ((1) << (5)));
    s->x = 35;

    if (counter <= 16) {
        s->y = -49;
    } else if (counter <= 25) {
        counterByte = counter - 16;
        s->y = (counterByte * 8) - 41;
    } else if (counter <= 100) {
        s->x = 35;
        s->y = 32;
    } else {
        counterByte = counter - 100;
        s->y = 32 - (counterByte * 8);
    }

    StageIntroUpdateIcons();
}

static inline void sub_8030488_inline()
{
    if ((((gCurrentLevel) & ((3 + 1) - 1)) != 2) && (((gCurrentLevel) >> 2) != 7)) {
        IntroActLetters *introActLetters = (void *)((gCurTask)->data);
        u8 i;

        for (i = 0; i < (sizeof(introActLetters->sprZoneNames) / sizeof((introActLetters->sprZoneNames)[0])); i++) {
            if ((i * 3) < (introActLetters->controller->counter - 150)) {
                Sprite *s = &introActLetters->sprZoneNames[i];
                DisplaySprite(s);
            }
        }
    }
}

void Task_IntroActLettersAnimations(void)
{
    IntroActLetters *introActLetters = (void *)((gCurTask)->data);
    u32 counter = introActLetters->controller->counter;
    Sprite *s;
    u32 i;
    s32 y;

    if ((counter - 151) >= 40) {
        if (counter >= 200) {
            TaskDestroy(gCurTask);
            return;
        }
    } else {
        counter -= 150;

        if (counter < 14) {
            for (i = 0; i < (sizeof(introActLetters->sprZoneNames) / sizeof((introActLetters->sprZoneNames)[0])); i++) {
                s = &introActLetters->sprZoneNames[i];

                y = counter - i * 3;
                if (y >= 4)
                    y = 4;

                y *= 8;

                s->x = sScreenPositions_ZoneLoadingActLetters[i][0];

                y = (y - 32);
                s->y = y + sScreenPositions_ZoneLoadingActLetters[i][1];
            }
        } else if (counter < 18) {
            counter -= 13;

            y = gUnknown_080D7130[counter];

            for (i = 0; i < (sizeof(introActLetters->sprZoneNames) / sizeof((introActLetters->sprZoneNames)[0])); i++) {
                s = &introActLetters->sprZoneNames[i];
                s->x = sScreenPositions_ZoneLoadingActLetters[i][0];
                s->y = sScreenPositions_ZoneLoadingActLetters[i][1] + y;
            }
        } else {
            for (i = 0; i < (sizeof(introActLetters->sprZoneNames) / sizeof((introActLetters->sprZoneNames)[0])); i++) {
                s = &introActLetters->sprZoneNames[i];
                s->x = sScreenPositions_ZoneLoadingActLetters[i][0];
                s->y = sScreenPositions_ZoneLoadingActLetters[i][1];
            }
        }

        sub_8030488_inline();
    }
}

static void TaskDestructor_IntroController(struct Task *t)
{
    if (gCurrentLevel == ((0)*(3 + 1)) + (0)) {
        InitWaterPalettes();
    }

    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        gStageFlags &= ~0x0020;
    }
}

static void Task_UpdateStageLoadingScreen(void)
{
    IntroBackgrounds *introBackgrounds = (void *)((gCurTask)->data);
    u32 counter = introBackgrounds->controller->counter;

    gBgPalette[(0)*16u + (0)] = (sZoneLoadingCharacterColors[gSelectedCharacter]);;

    gFlags |= 0x1;

    if (counter >= 200) {
        TaskDestroy(gCurTask);
        return;
    }
}

static void TaskDestructor_Dummy(struct Task *t) { }

static void TaskDestructor_803045C(struct Task *t)
{
    IntroUI *introUI = (void *)((t)->data);
    VramFree(introUI->sprCharacterLogo.graphics.dest);
}

static void TaskDestructor_8030474(struct Task *t)
{
    IntroActLetters *introActLetters = (void *)((t)->data);
    VramFree(introActLetters->sprZoneNames[0].graphics.dest);
}




static void sub_8030488(void)
{
# 1279 "src/game/stage/intro.c"
    sub_8030488_inline();

}
