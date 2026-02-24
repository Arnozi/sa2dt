# 0 "src/multi_sio.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/multi_sio.c"
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
# 2 "src/multi_sio.c" 2
# 1 "include/multi_sio.h" 1



# 1 "include/global.h" 1
# 5 "include/multi_sio.h" 2
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
# 3 "src/multi_sio.c" 2
# 1 "include/sio32_multi_load.h" 1



# 1 "include/multi_sio.h" 1
# 5 "include/sio32_multi_load.h" 2
# 59 "include/sio32_multi_load.h"
struct Sio32MultiLoadArea {
    u8 type;
    u8 state;
    u8 frameCounter;
    u8 downloadSuccessFlag;

    u32 *datap;
    s32 dataCounter;

    u32 checkSum;
    u32 checkSumTmp;
    s32 checkSumCounter;
};

extern struct Sio32MultiLoadArea gSio32MultiLoadArea;






extern void Sio32MultiLoadInit(u32 type, void *datap);
# 106 "include/sio32_multi_load.h"
extern u32 Sio32MultiLoadMain(u32 *progressCounterp);
# 131 "include/sio32_multi_load.h"
extern void Sio32MultiLoadIntr(void);
# 4 "src/multi_sio.c" 2

static const char sMultiSioLibVer[] = "MultiSio4Sio32Load010528";





struct MultiSioArea gMultiSioArea = {};


__attribute__((unused)) u32 gUnusedMultiSioSpace[2] = {};
# 24 "src/multi_sio.c"
extern u32 MultiSioRecvBufChange(void);

void MultiSioInit(u32 connectedFlags)
{
    s32 i;

    (*(vu16 *)(REG_BASE + 0x208)) = 0;
    (*(vu16 *)(REG_BASE + 0x200)) &= ~((1 << 7)
                | ((1 << 3) << 3));
    (*(vu16 *)(REG_BASE + 0x208)) = 1;
    (*(vu16 *)(REG_BASE + 0x134)) = 0;
    *(vu32 *)(REG_BASE + 0x128) = 0x2000;
    (*(vu16 *)(REG_BASE + 0x128)) |= 0x4000 | 0x0003;
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &gMultiSioArea, 0x04000000 | 0x01000000 | ((sizeof(struct MultiSioArea))/(32/8) & 0x1FFFFF)); }
                                          ;




    gMultiSioArea.connectedFlags = connectedFlags;
    gMultiSioArea.sendBufCounter = 13;
    gMultiSioArea.nextSendBufp = (u16 *)&gMultiSioArea.sendBuf[0];
    gMultiSioArea.currentSendBufp = (u16 *)&gMultiSioArea.sendBuf[1];
    for (i = 0; i < 4; ++i) {
        gMultiSioArea.currentRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][0];
        gMultiSioArea.lastRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][1];
        gMultiSioArea.recvCheckBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][2];
    }
    (*(vu16 *)(REG_BASE + 0x208)) = 0;
    (*(vu16 *)(REG_BASE + 0x200)) |= (1 << 7);
    (*(vu16 *)(REG_BASE + 0x208)) = 1;
}





u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest)
{
    struct SioMultiCnt sioCntBak;
    __attribute__((unused)) s32 i, ii;

    sioCntBak = *(struct SioMultiCnt *)(REG_BASE + 0x128);
    switch (gMultiSioArea.state) {
        case 0:
            if (!sioCntBak.id) {
                if (!sioCntBak.sd || sioCntBak.enable)
                    break;
                if (!sioCntBak.si && gMultiSioArea.sendBufCounter == 13) {
                    (*(vu16 *)(REG_BASE + 0x208)) = 0;
                    (*(vu16 *)(REG_BASE + 0x200)) &= ~(1 << 7);
                    (*(vu16 *)(REG_BASE + 0x200)) |= ((1 << 3) << 3);
                    (*(vu16 *)(REG_BASE + 0x208)) = 1;
                    ((struct SioMultiCnt *)(REG_BASE + 0x128))->ifEnable = 0;
                    (*(vu16 *)(REG_BASE + 0x202)) = (1 << 7) | ((1 << 3) << 3);
                    (*(vu32 *)((REG_BASE + 0x100) + (3 * 4))) = (0x10000 - ((16 * 1024 * 1024) / 60 / ((2 + 4 + 20 + 6) / (16 / 8))));
                    gMultiSioArea.type = 0x0008;
                    ((struct SioMultiCnt *)(REG_BASE + 0x128))->enable = 1;
                }
            }
            gMultiSioArea.state = 1;

        case 1:
            MultiSioRecvDataCheck(recvp);
            MultiSioSendDataSet(sendp, loadRequest);
            break;
    }
    ++gMultiSioArea.sendFrameCounter;
    return gMultiSioArea.recvSuccessFlags | gMultiSioArea.loadEnable << 4 | gMultiSioArea.loadRequest << 5
        | gMultiSioArea.loadSuccessFlag << 6 | (gMultiSioArea.type == 0x0008) << 7 | gMultiSioArea.connectedFlags << 8
        | (gMultiSioArea.hardError != 0) << 12 | (sioCntBak.id >= 4) << 13;
}





void MultiSioSendDataSet(void *sendp, u32 loadRequest)
{
    s32 checkSum = 0;
    s32 i;

    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->loadRequest = loadRequest;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->downloadSuccessFlag = gSio32MultiLoadArea.downloadSuccessFlag;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->loadSuccessFlag = gMultiSioArea.loadSuccessFlag;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->frameCounter = (u8)gMultiSioArea.sendFrameCounter;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->recvErrorFlags = gMultiSioArea.connectedFlags ^ gMultiSioArea.recvSuccessFlags;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = 0;
    CpuSet(sendp, &gMultiSioArea.nextSendBufp[2], 0x04000000 | ((20)/(32/8) & 0x1FFFFF))
                                   ;
    for (i = 0; i < sizeof(struct MultiSioPacket) / 2 - 2; ++i)
        checkSum += gMultiSioArea.nextSendBufp[i];
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = ~checkSum;
    if (gMultiSioArea.type)
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0;
    gMultiSioArea.sendBufCounter = -1;
    if (gMultiSioArea.type && gMultiSioArea.startFlag)
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0x00 | 0x40 | 0x80;
}





u32 MultiSioRecvDataCheck(void *recvp)
{



    s32 checkSum;
    vu32 __attribute__((unused)) recvCheck = 0;
    u8 syncRecvFlagBak[4];
    s32 i, ii;




    (*(vu16 *)(REG_BASE + 0x208)) = 0;
    for (i = 0; i < 4; ++i) {
        u16 *bufpTmp = gMultiSioArea.recvCheckBufp[i];
        gMultiSioArea.recvCheckBufp[i] = gMultiSioArea.lastRecvBufp[i];
        gMultiSioArea.lastRecvBufp[i] = bufpTmp;
    }
    (*(vu16 *)(REG_BASE + 0x208)) = 1;

    gMultiSioArea.recvSuccessFlags = 0;
    for (i = 0; i < 4; ++i) {
        checkSum = 0;
        for (ii = 0; ii < sizeof(struct MultiSioPacket) / 2 - 2; ++ii)
            checkSum += gMultiSioArea.recvCheckBufp[i][ii];
        if (syncRecvFlagBak[i])
            if ((s16)checkSum == -1) {
                gMultiSioArea.recvSuccessFlags |= 1 << i;
                gMultiSioArea.downloadSuccessFlags |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[i])->downloadSuccessFlag << i;
                CpuSet(&((u8 *)gMultiSioArea.recvCheckBufp[i])[4], &((u8 *)recvp)[i * 20], 0x04000000 | ((20)/(32/8) & 0x1FFFFF));
            }
        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, &((u8 *)gMultiSioArea.recvCheckBufp[i])[4], 0x04000000 | 0x01000000 | ((20)/(32/8) & 0x1FFFFF)); };
    }
    gMultiSioArea.connectedFlags |= gMultiSioArea.recvSuccessFlags;
    if (gMultiSioArea.recvSuccessFlags & 1) {

        if (gMultiSioArea.type == 0x0008) {
            if (gMultiSioArea.recvSuccessFlags & 0x3)
                if (gMultiSioArea.recvSuccessFlags == gMultiSioArea.connectedFlags)
                    gMultiSioArea.loadEnable = 1;
            if ((gMultiSioArea.downloadSuccessFlags & 0xe) == (gMultiSioArea.connectedFlags & 0xe))
                gMultiSioArea.loadSuccessFlag = 1;
        } else
            gMultiSioArea.loadSuccessFlag |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[0])->loadSuccessFlag;
        gMultiSioArea.loadRequest |= ((struct MultiSioPacket *)gMultiSioArea.recvCheckBufp[0])->loadRequest;
    }
    return gMultiSioArea.recvSuccessFlags;
}





void MultiSioStart(void)
{
    if (gMultiSioArea.type)
        gMultiSioArea.startFlag = 1;
}





void MultiSioStop(void)
{
    (*(vu16 *)(REG_BASE + 0x208)) = 0;
    (*(vu16 *)(REG_BASE + 0x200)) &= ~((1 << 7) | ((1 << 3) << 3));
    (*(vu16 *)(REG_BASE + 0x208)) = 1;
    (*(vu16 *)(REG_BASE + 0x128)) = 0x2000 | 0x0003;
    (*(vu32 *)((REG_BASE + 0x100) + (3 * 4))) = (0x10000 - ((16 * 1024 * 1024) / 60 / ((2 + 4 + 20 + 6) / (16 / 8))));
    (*(vu16 *)(REG_BASE + 0x202)) = (1 << 7) | ((1 << 3) << 3);
    gMultiSioArea.startFlag = 0;
}






void MultiSioIntr(void)
{
    u16 recvTmp[4];
    u16 *bufpTmp;
    s32 i;
    __attribute__((unused)) s32 ii;


    *(u64 *)recvTmp = *(u64 *)(REG_BASE + 0x120);

    gMultiSioArea.hardError = ((struct SioMultiCnt *)(REG_BASE + 0x128))->error;

    if (gMultiSioArea.sendBufCounter == -1) {
        ((struct SioMultiCnt *)(REG_BASE + 0x128))->data = 0xfefe;
        bufpTmp = gMultiSioArea.currentSendBufp;
        gMultiSioArea.currentSendBufp = gMultiSioArea.nextSendBufp;
        gMultiSioArea.nextSendBufp = bufpTmp;
    } else if (gMultiSioArea.sendBufCounter >= 0) {
        ((struct SioMultiCnt *)(REG_BASE + 0x128))->data = gMultiSioArea.currentSendBufp[gMultiSioArea.sendBufCounter];
    }
    if (gMultiSioArea.sendBufCounter < (s32)(sizeof(struct MultiSioPacket) / 2 - 1))
        ++gMultiSioArea.sendBufCounter;

    for (i = 0; i < 4; ++i) {
        if (recvTmp[i] == 0xfefe && gMultiSioArea.recvBufCounter[i] > (s32)(sizeof(struct MultiSioPacket) / 2 - 3)) {
            gMultiSioArea.recvBufCounter[i] = -1;
        } else {
            gMultiSioArea.currentRecvBufp[i][gMultiSioArea.recvBufCounter[i]] = recvTmp[i];

            if (gMultiSioArea.recvBufCounter[i] == (s32)(sizeof(struct MultiSioPacket) / 2 - 3)) {
                bufpTmp = gMultiSioArea.lastRecvBufp[i];
                gMultiSioArea.lastRecvBufp[i] = gMultiSioArea.currentRecvBufp[i];
                gMultiSioArea.currentRecvBufp[i] = bufpTmp;
                gMultiSioArea.syncRecvFlag[i] = 1;
            }
        }
        if (gMultiSioArea.recvBufCounter[i] < (s32)(sizeof(struct MultiSioPacket) / 2 - 1))
            ++gMultiSioArea.recvBufCounter[i];
    }

    if (gMultiSioArea.type == 0x0008) {
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0;
        (*(vu16 *)(REG_BASE + 0x128)) |= 0x0080;
        (*(vu16 *)((REG_BASE + 0x102) + (3 * 4))) = 0x00 | 0x40 | 0x80;
    }
}
