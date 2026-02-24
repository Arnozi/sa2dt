# 0 "src/platform/shared/audio/cgb_audio.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/platform/shared/audio/cgb_audio.c"
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
# 2 "src/platform/shared/audio/cgb_audio.c" 2
# 1 "include/platform/shared/audio/cgb_audio.h" 1



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
# 5 "include/platform/shared/audio/cgb_audio.h" 2

struct AudioCGB {
    u16 ch1Freq;
    u8 ch1SweepCounter;
    u8 ch1SweepCounterI;
    bool8 ch1SweepDir;
    u8 ch1SweepShift;
    u8 Vol[4];
    u8 VolI[4];
    u8 Len[4];
    u8 LenI[4];
    bool8 LenOn[4];
    u8 EnvCounter[4];
    u8 EnvCounterI[4];
    bool8 EnvDir[4];
    bool8 DAC[4];
    float WAVRAM[32];
    u16 ch4LFSR[2];
    float outBuffer[4907 * 2];
};

void cgb_audio_init(u32 rate);
void cgb_set_sweep(u8 sweep);
void cgb_set_wavram();
void cgb_toggle_length(u8 channel, bool8 state);
void cgb_set_length(u8 channel, u8 length);
void cgb_set_envelope(u8 channel, u8 envelope);
void cgb_trigger_note(u8 channel);
void cgb_audio_generate(u16 samplesPerFrame);
float *cgb_get_buffer();
# 3 "src/platform/shared/audio/cgb_audio.c" 2
# 1 "include/platform/shared/audio/cgb_tables.h" 1



const int16_t PU0[32]
    = { 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };

const int16_t PU1[32]
    = { 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };

const int16_t PU2[32] = { 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1 };

const int16_t PU3[32] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1 };

int16_t WAV[32] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1 };

const float freqTable[2048] = { 32,
                                32.0156326331216,
                                32.0312805474096,
                                32.0469437652812,
                                32.0626223091976,
                                32.0783162016642,
                                32.0940254652302,
                                32.109750122489,
                                32.1254901960784,
                                32.1412457086807,
                                32.1570166830226,
                                32.1728031418753,
                                32.188605108055,
                                32.2044226044226,
                                32.220255653884,
                                32.2361042793901,
                                32.251968503937,
                                32.2678483505662,
                                32.2837438423645,
                                32.2996550024643,
                                32.3155818540434,
                                32.3315244203256,
                                32.3474827245805,
                                32.3634567901235,
                                32.3794466403162,
                                32.3954522985665,
                                32.4114737883284,
                                32.4275111331024,
                                32.4435643564356,
                                32.4596334819217,
                                32.4757185332012,
                                32.4918195339613,
                                32.5079365079365,
                                32.5240694789082,
                                32.5402184707051,
                                32.5563835072032,
                                32.572564612326,
                                32.5887618100448,
                                32.6049751243781,
                                32.6212045793927,
                                32.6374501992032,
                                32.6537120079721,
                                32.6699900299103,
                                32.6862842892768,
                                32.7025948103792,
                                32.7189216175736,
                                32.7352647352647,
                                32.751624187906,
                                32.768,
                                32.784392196098,
                                32.8008008008008,
                                32.8172258387581,
                                32.8336673346693,
                                32.8501253132832,
                                32.8665997993982,
                                32.8830908178625,
                                32.8995983935743,
                                32.9161225514817,
                                32.9326633165829,
                                32.9492207139266,
                                32.9657947686117,
                                32.9823855057876,
                                32.9989929506546,
                                33.0156171284635,
                                33.0322580645161,
                                33.0489157841654,
                                33.0655903128153,
                                33.0822816759213,
                                33.0989898989899,
                                33.1157150075796,
                                33.1324570273003,
                                33.1492159838139,
                                33.165991902834,
                                33.1827848101266,
                                33.1995947315096,
                                33.2164216928535,
                                33.2332657200811,
                                33.2501268391679,
                                33.2670050761421,
                                33.2839004570848,
                                33.3008130081301,
                                33.3177427554652,
                                33.3346897253306,
                                33.3516539440204,
                                33.3686354378819,
                                33.3856342333164,
                                33.4026503567788,
                                33.4196838347782,
                                33.4367346938776,
                                33.4538029606942,
                                33.4708886618999,
                                33.4879918242207,
                                33.5051124744376,
                                33.5222506393862,
                                33.539406345957,
                                33.5565796210957,
                                33.5737704918033,
                                33.5909789851358,
                                33.6082051282051,
                                33.6254489481786,
                                33.6427104722793,
                                33.6599897277863,
                                33.6772867420349,
                                33.6946015424164,
                                33.7119341563786,
                                33.7292846114256,
                                33.7466529351184,
                                33.7640391550747,
                                33.7814432989691,
                                33.7988653945333,
                                33.8163054695562,
                                33.8337635518844,
                                33.8512396694215,
                                33.8687338501292,
                                33.8862461220269,
                                33.9037765131919,
                                33.9213250517598,
                                33.9388917659244,
                                33.9564766839378,
                                33.9740798341109,
                                33.9917012448133,
                                34.0093409444733,
                                34.0269989615784,
                                34.0446753246753,
                                34.0623700623701,
                                34.0800832033281,
                                34.0978147762747,
                                34.1155648099948,
                                34.1333333333333,
                                34.1511203751954,
                                34.1689259645464,
                                34.1867501304121,
                                34.2045929018789,
                                34.222454308094,
                                34.2403343782654,
                                34.2582331416623,
                                34.2761506276151,
                                34.2940868655154,
                                34.3120418848168,
                                34.330015715034,
                                34.3480083857442,
                                34.3660199265863,
                                34.3840503672613,
                                34.4020997375328,
                                34.4201680672269,
                                34.4382553862323,
                                34.4563617245005,
                                34.4744871120463,
                                34.4926315789474,
                                34.5107951553449,
                                34.5289778714436,
                                34.5471797575119,
                                34.5654008438819,
                                34.5836411609499,
                                34.6019007391763,
                                34.6201796090861,
                                34.6384778012685,
                                34.6567953463776,
                                34.6751322751323,
                                34.6934886183166,
                                34.7118644067797,
                                34.7302596714361,
                                34.7486744432662,
                                34.7671087533156,
                                34.7855626326964,
                                34.8040361125863,
                                34.8225292242295,
                                34.8410419989367,
                                34.8595744680851,
                                34.8781266631187,
                                34.8966986155485,
                                34.9152903569526,
                                34.9339019189765,
                                34.9525333333333,
                                34.9711846318036,
                                34.989855846236,
                                35.008547008547,
                                35.0272581507215,
                                35.0459893048128,
                                35.0647405029427,
                                35.0835117773019,
                                35.10230316015,
                                35.1211146838156,
                                35.1399463806971,
                                35.1587982832618,
                                35.1776704240472,
                                35.1965628356606,
                                35.2154755507792,
                                35.2344086021505,
                                35.2533620225928,
                                35.2723358449946,
                                35.2913301023156,
                                35.3103448275862,
                                35.3293800539084,
                                35.3484358144552,
                                35.3675121424717,
                                35.3866090712743,
                                35.4057266342518,
                                35.4248648648649,
                                35.4440237966468,
                                35.4632034632035,
                                35.4824038982133,
                                35.501625135428,
                                35.5208672086721,
                                35.5401301518438,
                                35.5594139989148,
                                35.5787187839305,
                                35.5980445410103,
                                35.6173913043478,
                                35.636759108211,
                                35.6561479869423,
                                35.6755579749592,
                                35.6949891067538,
                                35.7144414168937,
                                35.7339149400218,
                                35.7534097108565,
                                35.7729257641921,
                                35.792463134899,
                                35.8120218579235,
                                35.8316019682887,
                                35.8512035010941,
                                35.8708264915161,
                                35.8904709748083,
                                35.9101369863014,
                                35.9298245614035,
                                35.9495337356007,
                                35.9692645444566,
                                35.9890170236134,
                                36.0087912087912,
                                36.0285871357889,
                                36.048404840484,
                                36.0682443588332,
                                36.0881057268722,
                                36.1079889807162,
                                36.1278941565601,
                                36.1478212906784,
                                36.167770419426,
                                36.187741579238,
                                36.2077348066298,
                                36.2277501381979,
                                36.2477876106195,
                                36.267847260653,
                                36.2879291251384,
                                36.3080332409972,
                                36.3281596452328,
                                36.3483083749307,
                                36.3684794672586,
                                36.388672959467,
                                36.4088888888889,
                                36.4291272929405,
                                36.4493882091212,
                                36.4696716750139,
                                36.4899777282851,
                                36.5103064066852,
                                36.5306577480491,
                                36.5510317902956,
                                36.5714285714286,
                                36.5918481295366,
                                36.6122905027933,
                                36.6327557294578,
                                36.6532438478747,
                                36.6737548964745,
                                36.6942889137738,
                                36.7148459383753,
                                36.7354260089686,
                                36.7560291643298,
                                36.7766554433221,
                                36.7973048848961,
                                36.8179775280899,
                                36.8386734120292,
                                36.859392575928,
                                36.8801350590884,
                                36.9009009009009,
                                36.9216901408451,
                                36.9425028184893,
                                36.9633389734913,
                                36.9841986455982,
                                37.0050818746471,
                                37.025988700565,
                                37.0469191633691,
                                37.0678733031674,
                                37.0888511601585,
                                37.1098527746319,
                                37.1308781869688,
                                37.1519274376417,
                                37.173000567215,
                                37.1940976163451,
                                37.2152186257808,
                                37.2363636363636,
                                37.2575326890279,
                                37.2787258248009,
                                37.2999430848036,
                                37.3211845102506,
                                37.3424501424501,
                                37.363740022805,
                                37.3850541928123,
                                37.4063926940639,
                                37.4277555682467,
                                37.4491428571429,
                                37.4705546026301,
                                37.4919908466819,
                                37.5134516313681,
                                37.5349369988545,
                                37.556446991404,
                                37.5779816513761,
                                37.5995410212278,
                                37.6211251435132,
                                37.6427340608845,
                                37.664367816092,
                                37.6860264519839,
                                37.7077100115075,
                                37.7294185377087,
                                37.7511520737327,
                                37.7729106628242,
                                37.7946943483276,
                                37.8165031736872,
                                37.838337182448,
                                37.8601964182553,
                                37.8820809248555,
                                37.903990746096,
                                37.9259259259259,
                                37.9478865083961,
                                37.9698725376593,
                                37.991884057971,
                                38.0139211136891,
                                38.0359837492745,
                                38.0580720092915,
                                38.0801859384079,
                                38.1023255813953,
                                38.1244909831297,
                                38.1466821885914,
                                38.1688992428655,
                                38.1911421911422,
                                38.2134110787172,
                                38.2357059509918,
                                38.2580268534734,
                                38.2803738317757,
                                38.3027469316189,
                                38.3251461988304,
                                38.3475716793446,
                                38.3700234192037,
                                38.3925014645577,
                                38.4150058616647,
                                38.4375366568915,
                                38.4600938967136,
                                38.4826776277158,
                                38.5052878965922,
                                38.527924750147,
                                38.5505882352941,
                                38.5732783990583,
                                38.5959952885748,
                                38.6187389510902,
                                38.6415094339623,
                                38.6643067846608,
                                38.6871310507674,
                                38.7099822799764,
                                38.7328605200946,
                                38.755765819042,
                                38.7786982248521,
                                38.801657785672,
                                38.824644549763,
                                38.8476585655009,
                                38.870699881376,
                                38.8937685459941,
                                38.916864608076,
                                38.9399881164587,
                                38.9631391200951,
                                38.9863176680547,
                                39.0095238095238,
                                39.0327575938058,
                                39.0560190703218,
                                39.0793082886106,
                                39.1026252983294,
                                39.1259701492537,
                                39.1493428912784,
                                39.1727435744172,
                                39.1961722488038,
                                39.2196289646918,
                                39.2431137724551,
                                39.2666267225884,
                                39.2901678657074,
                                39.3137372525495,
                                39.3373349339736,
                                39.360960960961,
                                39.3846153846154,
                                39.4082982561636,
                                39.4320096269555,
                                39.4557495484648,
                                39.4795180722892,
                                39.5033152501507,
                                39.5271411338963,
                                39.5509957754979,
                                39.5748792270531,
                                39.5987915407855,
                                39.6227327690447,
                                39.6467029643073,
                                39.6707021791768,
                                39.694730466384,
                                39.7187878787879,
                                39.7428744693754,
                                39.7669902912621,
                                39.7911353976928,
                                39.8153098420413,
                                39.8395136778115,
                                39.8637469586375,
                                39.8880097382836,
                                39.9123020706455,
                                39.9366240097502,
                                39.9609756097561,
                                39.9853569249542,
                                40.009768009768,
                                40.0342089187538,
                                40.0586797066015,
                                40.0831804281346,
                                40.1077111383109,
                                40.1322718922229,
                                40.156862745098,
                                40.1814837522992,
                                40.2061349693252,
                                40.2308164518109,
                                40.2555282555283,
                                40.280270436386,
                                40.3050430504305,
                                40.3298461538462,
                                40.3546798029557,
                                40.3795440542206,
                                40.4044389642417,
                                40.4293645897594,
                                40.4543209876543,
                                40.4793082149475,
                                40.504326328801,
                                40.5293753865182,
                                40.5544554455446,
                                40.5795665634675,
                                40.6047087980174,
                                40.6298822070676,
                                40.6550868486352,
                                40.6803227808814,
                                40.7055900621118,
                                40.7308887507769,
                                40.7562189054726,
                                40.7815805849409,
                                40.8069738480697,
                                40.8323987538941,
                                40.857855361596,
                                40.8833437305053,
                                40.9088639200999,
                                40.9344159900062,
                                40.96,
                                40.9856160100063,
                                41.0112640801001,
                                41.0369442705072,
                                41.062656641604,
                                41.0884012539185,
                                41.1141781681305,
                                41.1399874450722,
                                41.1658291457287,
                                41.1917033312382,
                                41.2176100628931,
                                41.2435494021397,
                                41.2695214105793,
                                41.2955261499685,
                                41.3215636822194,
                                41.3476340694006,
                                41.3737373737374,
                                41.3998736576121,
                                41.4260429835651,
                                41.4522454142948,
                                41.4784810126582,
                                41.504749841672,
                                41.531051964512,
                                41.5573874445149,
                                41.5837563451777,
                                41.6101587301587,
                                41.6365946632783,
                                41.6630642085188,
                                41.6895674300254,
                                41.7161043921069,
                                41.7426751592357,
                                41.7692797960484,
                                41.7959183673469,
                                41.8225909380983,
                                41.8492975734355,
                                41.8760383386582,
                                41.9028132992327,
                                41.9296225207934,
                                41.9564660691421,
                                41.9833440102498,
                                42.0102564102564,
                                42.0372033354715,
                                42.0641848523748,
                                42.0912010276172,
                                42.1182519280206,
                                42.1453376205788,
                                42.1724581724582,
                                42.1996136509981,
                                42.2268041237113,
                                42.254029658285,
                                42.2812903225807,
                                42.3085861846352,
                                42.3359173126615,
                                42.3632837750485,
                                42.3906856403622,
                                42.4181229773463,
                                42.4455958549223,
                                42.4731043421905,
                                42.5006485084306,
                                42.5282284231019,
                                42.5558441558442,
                                42.5834957764782,
                                42.6111833550065,
                                42.6389069616135,
                                42.6666666666667,
                                42.6944625407166,
                                42.722294654498,
                                42.7501630789302,
                                42.7780678851175,
                                42.8060091443501,
                                42.8339869281046,
                                42.8620013080445,
                                42.890052356021,
                                42.9181401440733,
                                42.9462647444299,
                                42.9744262295082,
                                43.002624671916,
                                43.0308601444517,
                                43.0591327201051,
                                43.0874424720579,
                                43.1157894736842,
                                43.1441737985517,
                                43.1725955204216,
                                43.2010547132498,
                                43.2295514511873,
                                43.2580858085809,
                                43.2866578599736,
                                43.3152676801057,
                                43.3439153439153,
                                43.3726009265387,
                                43.4013245033113,
                                43.4300861497681,
                                43.4588859416446,
                                43.4877239548772,
                                43.5166002656043,
                                43.5455149501661,
                                43.5744680851064,
                                43.6034597471723,
                                43.6324900133156,
                                43.6615589606929,
                                43.6906666666667,
                                43.7198132088059,
                                43.7489986648865,
                                43.7782231128925,
                                43.807486631016,
                                43.8367892976589,
                                43.8661311914324,
                                43.8955123911587,
                                43.9249329758713,
                                43.9543930248156,
                                43.9838926174497,
                                44.0134318334453,
                                44.0430107526882,
                                44.0726294552791,
                                44.1022880215343,
                                44.1319865319865,
                                44.1617250673855,
                                44.1915037086986,
                                44.221322537112,
                                44.2511816340311,
                                44.2810810810811,
                                44.3110209601082,
                                44.34100135318,
                                44.3710223425863,
                                44.4010840108401,
                                44.431186440678,
                                44.4613297150611,
                                44.4915139171758,
                                44.5217391304348,
                                44.5520054384772,
                                44.5823129251701,
                                44.6126616746086,
                                44.6430517711172,
                                44.6734832992502,
                                44.7039563437926,
                                44.7344709897611,
                                44.7650273224044,
                                44.7956254272044,
                                44.8262653898769,
                                44.8569472963724,
                                44.8876712328767,
                                44.9184372858122,
                                44.9492455418381,
                                44.9800960878518,
                                45.010989010989,
                                45.0419243986254,
                                45.0729023383769,
                                45.1039229181005,
                                45.1349862258953,
                                45.1660923501034,
                                45.1972413793103,
                                45.2284334023465,
                                45.2596685082873,
                                45.2909467864547,
                                45.3222683264177,
                                45.3536332179931,
                                45.3850415512465,
                                45.4164934164934,
                                45.4479889042996,
                                45.4795281054823,
                                45.5111111111111,
                                45.5427380125087,
                                45.5744089012517,
                                45.6061238691719,
                                45.6378830083566,
                                45.6696864111498,
                                45.7015341701534,
                                45.7334263782275,
                                45.7653631284916,
                                45.7973445143256,
                                45.8293706293706,
                                45.8614415675297,
                                45.8935574229692,
                                45.9257182901191,
                                45.9579242636746,
                                45.9901754385965,
                                46.0224719101124,
                                46.0548137737175,
                                46.0872011251758,
                                46.1196340605208,
                                46.1521126760563,
                                46.184637068358,
                                46.2172073342736,
                                46.2498235709245,
                                46.2824858757062,
                                46.3151943462898,
                                46.3479490806223,
                                46.3807501769285,
                                46.4135977337111,
                                46.446491849752,
                                46.4794326241135,
                                46.5124201561391,
                                46.5454545454545,
                                46.5785358919687,
                                46.6116642958748,
                                46.6448398576513,
                                46.6780626780627,
                                46.7113328581611,
                                46.7446504992867,
                                46.7780157030692,
                                46.8114285714286,
                                46.8448892065761,
                                46.8783977110157,
                                46.9119541875447,
                                46.945558739255,
                                46.9792114695341,
                                47.012912482066,
                                47.0466618808327,
                                47.0804597701149,
                                47.1143062544932,
                                47.1482014388489,
                                47.1821454283657,
                                47.2161383285303,
                                47.2501802451334,
                                47.2842712842713,
                                47.3184115523466,
                                47.3526011560694,
                                47.3868402024584,
                                47.4211287988423,
                                47.4554670528602,
                                47.4898550724638,
                                47.5242929659173,
                                47.5587808417997,
                                47.5933188090051,
                                47.6279069767442,
                                47.6625454545455,
                                47.6972343522562,
                                47.7319737800437,
                                47.7667638483965,
                                47.8016046681255,
                                47.836496350365,
                                47.8714390065741,
                                47.906432748538,
                                47.9414776883687,
                                47.9765739385066,
                                48.0117216117216,
                                48.0469208211144,
                                48.0821716801174,
                                48.1174743024963,
                                48.1528288023512,
                                48.1882352941176,
                                48.2236938925681,
                                48.259204712813,
                                48.2947678703021,
                                48.330383480826,
                                48.3660516605166,
                                48.4017725258493,
                                48.4375461936438,
                                48.4733727810651,
                                48.5092524056255,
                                48.5451851851852,
                                48.581171237954,
                                48.6172106824926,
                                48.6533036377134,
                                48.6894502228826,
                                48.7256505576208,
                                48.7619047619048,
                                48.7982129560685,
                                48.8345752608048,
                                48.8709917971663,
                                48.9074626865672,
                                48.9439880507842,
                                48.9805680119582,
                                49.0172026925954,
                                49.0538922155689,
                                49.0906367041199,
                                49.1274362818591,
                                49.1642910727682,
                                49.2012012012012,
                                49.2381667918858,
                                49.2751879699248,
                                49.3122648607976,
                                49.3493975903615,
                                49.3865862848531,
                                49.4238310708899,
                                49.4611320754717,
                                49.4984894259819,
                                49.535903250189,
                                49.5733736762481,
                                49.6109008327025,
                                49.6484848484849,
                                49.6861258529189,
                                49.7238239757208,
                                49.7615793470008,
                                49.7993920972644,
                                49.8372623574145,
                                49.8751902587519,
                                49.9131759329779,
                                49.9512195121951,
                                49.9893211289092,
                                50.0274809160305,
                                50.0656990068755,
                                50.1039755351682,
                                50.1423106350421,
                                50.1807044410413,
                                50.2191570881226,
                                50.2576687116564,
                                50.296239447429,
                                50.3348694316436,
                                50.3735588009224,
                                50.4123076923077,
                                50.451116243264,
                                50.4899845916795,
                                50.5289128758674,
                                50.5679012345679,
                                50.6069498069498,
                                50.6460587326121,
                                50.6852281515855,
                                50.7244582043344,
                                50.7637490317583,
                                50.8031007751938,
                                50.8425135764158,
                                50.8819875776397,
                                50.9215229215229,
                                50.9611197511664,
                                51.0007782101167,
                                51.0404984423676,
                                51.0802805923617,
                                51.1201248049922,
                                51.160031225605,
                                51.2,
                                51.2400312744331,
                                51.2801251956182,
                                51.3202819107283,
                                51.3605015673981,
                                51.4007843137255,
                                51.4411302982732,
                                51.4815396700707,
                                51.5220125786164,
                                51.5625491738788,
                                51.6031496062992,
                                51.6438140267928,
                                51.6845425867508,
                                51.7253354380426,
                                51.7661927330174,
                                51.8071146245059,
                                51.8481012658228,
                                51.889152810768,
                                51.9302694136292,
                                51.9714512291832,
                                52.0126984126984,
                                52.0540111199365,
                                52.0953895071542,
                                52.1368337311058,
                                52.1783439490446,
                                52.2199203187251,
                                52.2615629984051,
                                52.3032721468476,
                                52.3450479233227,
                                52.3868904876099,
                                52.4288,
                                52.470776621297,
                                52.5128205128205,
                                52.5549318364074,
                                52.5971107544141,
                                52.6393574297189,
                                52.6816720257235,
                                52.7240547063556,
                                52.7665056360709,
                                52.809024979855,
                                52.8516129032258,
                                52.8942695722357,
                                52.9369951534734,
                                52.9797898140663,
                                53.0226537216829,
                                53.0655870445344,
                                53.1085899513776,
                                53.1516626115166,
                                53.1948051948052,
                                53.2380178716491,
                                53.2813008130081,
                                53.3246541903987,
                                53.3680781758958,
                                53.4115729421353,
                                53.4551386623165,
                                53.4987755102041,
                                53.5424836601307,
                                53.5862632869992,
                                53.6301145662848,
                                53.6740376740377,
                                53.7180327868852,
                                53.7621000820345,
                                53.8062397372742,
                                53.8504519309778,
                                53.8947368421053,
                                53.9390946502058,
                                53.9835255354201,
                                54.0280296784831,
                                54.0726072607261,
                                54.1172584640793,
                                54.1619834710744,
                                54.206782464847,
                                54.2516556291391,
                                54.2966031483016,
                                54.3416252072969,
                                54.3867219917012,
                                54.4318936877076,
                                54.477140482128,
                                54.522462562396,
                                54.5678601165695,
                                54.6133333333333,
                                54.6588824020017,
                                54.7045075125209,
                                54.750208855472,
                                54.7959866220736,
                                54.8418410041841,
                                54.8877721943049,
                                54.9337803855826,
                                54.9798657718121,
                                55.0260285474391,
                                55.072268907563,
                                55.1185870479394,
                                55.1649831649832,
                                55.2114574557709,
                                55.2580101180438,
                                55.304641350211,
                                55.3513513513514,
                                55.3981403212172,
                                55.4450084602369,
                                55.4919559695174,
                                55.5389830508475,
                                55.5860899067006,
                                55.6332767402377,
                                55.6805437553101,
                                55.7278911564626,
                                55.7753191489362,
                                55.8228279386712,
                                55.8704177323103,
                                55.9180887372014,
                                55.9658411614005,
                                56.0136752136752,
                                56.0615911035073,
                                56.1095890410959,
                                56.1576692373608,
                                56.2058319039451,
                                56.2540772532189,
                                56.3024054982818,
                                56.3508168529665,
                                56.3993115318417,
                                56.4478897502153,
                                56.4965517241379,
                                56.5452976704055,
                                56.594127806563,
                                56.6430423509075,
                                56.6920415224914,
                                56.7411255411255,
                                56.790294627383,
                                56.8395490026019,
                                56.8888888888889,
                                56.9383145091225,
                                56.9878260869565,
                                57.0374238468233,
                                57.0871080139373,
                                57.1368788142982,
                                57.1867364746946,
                                57.2366812227074,
                                57.2867132867133,
                                57.336832895888,
                                57.3870402802102,
                                57.4373356704645,
                                57.4877192982456,
                                57.5381913959614,
                                57.5887521968366,
                                57.6394019349165,
                                57.6901408450704,
                                57.7409691629956,
                                57.7918871252205,
                                57.8428949691086,
                                57.8939929328622,
                                57.9451812555261,
                                57.9964601769912,
                                58.0478299379982,
                                58.0992907801418,
                                58.150842945874,
                                58.202486678508,
                                58.2542222222222,
                                58.3060498220641,
                                58.3579697239537,
                                58.4099821746881,
                                58.4620874219447,
                                58.5142857142857,
                                58.5665773011618,
                                58.6189624329159,
                                58.6714413607878,
                                58.7240143369176,
                                58.7766816143498,
                                58.8294434470377,
                                58.8823000898473,
                                58.9352517985612,
                                58.988298829883,
                                59.0414414414414,
                                59.0946798917944,
                                59.1480144404332,
                                59.2014453477868,
                                59.254972875226,
                                59.3085972850679,
                                59.3623188405797,
                                59.4161378059837,
                                59.470054446461,
                                59.5240690281562,
                                59.5781818181818,
                                59.6323930846224,
                                59.6867030965392,
                                59.7411121239745,
                                59.7956204379562,
                                59.8502283105023,
                                59.9049360146252,
                                59.9597438243367,
                                60.014652014652,
                                60.0696608615949,
                                60.1247706422018,
                                60.1799816345271,
                                60.2352941176471,
                                60.2907083716651,
                                60.3462246777164,
                                60.4018433179724,
                                60.4575645756458,
                                60.5133887349954,
                                60.5693160813309,
                                60.6253469010176,
                                60.6814814814815,
                                60.7377201112141,
                                60.7940630797774,
                                60.8505106778087,
                                60.907063197026,
                                60.9637209302326,
                                61.0204841713222,
                                61.0773532152843,
                                61.134328358209,
                                61.1914098972923,
                                61.2485981308411,
                                61.3058933582788,
                                61.3632958801498,
                                61.4208059981256,
                                61.4784240150094,
                                61.5361502347418,
                                61.593984962406,
                                61.6519285042333,
                                61.7099811676083,
                                61.7681432610745,
                                61.8264150943396,
                                61.8847969782814,
                                61.9432892249527,
                                62.0018921475875,
                                62.0606060606061,
                                62.1194312796209,
                                62.1783681214421,
                                62.2374169040836,
                                62.2965779467681,
                                62.3558515699334,
                                62.4152380952381,
                                62.4747378455672,
                                62.5343511450382,
                                62.5940783190067,
                                62.6539196940727,
                                62.7138755980861,
                                62.7739463601533,
                                62.8341323106424,
                                62.89443378119,
                                62.954851104707,
                                63.0153846153846,
                                63.0760346487007,
                                63.1368015414258,
                                63.1976856316297,
                                63.2586872586873,
                                63.319806763285,
                                63.3810444874275,
                                63.4424007744434,
                                63.5038759689923,
                                63.5654704170708,
                                63.6271844660194,
                                63.6890184645287,
                                63.7509727626459,
                                63.8130477117819,
                                63.8752436647174,
                                63.9375609756098,
                                64,
                                64.0625610948192,
                                64.1252446183953,
                                64.1880509304603,
                                64.2509803921569,
                                64.3140333660451,
                                64.37721021611,
                                64.440511307768,
                                64.503937007874,
                                64.5674876847291,
                                64.6311637080868,
                                64.6949654491609,
                                64.7588932806324,
                                64.8229475766568,
                                64.8871287128713,
                                64.9514370664024,
                                65.015873015873,
                                65.0804369414101,
                                65.1451292246521,
                                65.2099502487562,
                                65.2749003984064,
                                65.3399800598205,
                                65.4051896207585,
                                65.4705294705295,
                                65.536,
                                65.6016016016016,
                                65.6673346693387,
                                65.7331995987964,
                                65.7991967871486,
                                65.8653266331658,
                                65.9315895372234,
                                65.9979859013092,
                                66.0645161290323,
                                66.1311806256307,
                                66.1979797979798,
                                66.2649140546006,
                                66.331983805668,
                                66.3991894630193,
                                66.4665314401623,
                                66.5340101522843,
                                66.6016260162602,
                                66.6693794506612,
                                66.7372708757637,
                                66.8053007135576,
                                66.8734693877551,
                                66.9417773237998,
                                67.0102249488753,
                                67.078812691914,
                                67.1475409836066,
                                67.2164102564103,
                                67.2854209445585,
                                67.3545734840699,
                                67.4238683127572,
                                67.4933058702369,
                                67.5628865979382,
                                67.6326109391125,
                                67.702479338843,
                                67.7724922440538,
                                67.8426501035197,
                                67.9129533678757,
                                67.9834024896266,
                                68.0539979231568,
                                68.1247401247401,
                                68.1956295525494,
                                68.2666666666667,
                                68.3378519290928,
                                68.4091858037578,
                                68.4806687565308,
                                68.5523012552301,
                                68.6240837696335,
                                68.6960167714885,
                                68.7681007345226,
                                68.8403361344538,
                                68.9127234490011,
                                68.9852631578947,
                                69.0579557428872,
                                69.1308016877637,
                                69.2038014783527,
                                69.276955602537,
                                69.3502645502646,
                                69.4237288135593,
                                69.4973488865324,
                                69.5711252653928,
                                69.6450584484591,
                                69.7191489361702,
                                69.7933972310969,
                                69.8678038379531,
                                69.9423692636073,
                                70.017094017094,
                                70.0919786096257,
                                70.1670235546039,
                                70.2422293676313,
                                70.3175965665236,
                                70.3931256713212,
                                70.4688172043011,
                                70.5446716899892,
                                70.6206896551724,
                                70.6968716289105,
                                70.7732181425486,
                                70.8497297297297,
                                70.9264069264069,
                                71.0032502708559,
                                71.0802603036876,
                                71.157437567861,
                                71.2347826086957,
                                71.3122959738847,
                                71.3899782135076,
                                71.4678298800436,
                                71.5458515283843,
                                71.624043715847,
                                71.7024070021882,
                                71.7809419496166,
                                71.859649122807,
                                71.9385290889133,
                                72.0175824175824,
                                72.0968096809681,
                                72.1762114537445,
                                72.2557883131202,
                                72.3355408388521,
                                72.4154696132597,
                                72.4955752212389,
                                72.5758582502769,
                                72.6563192904656,
                                72.7369589345172,
                                72.8177777777778,
                                72.8987764182425,
                                72.9799554565702,
                                73.0613154960981,
                                73.1428571428571,
                                73.2245810055866,
                                73.3064876957494,
                                73.3885778275476,
                                73.4708520179372,
                                73.5533108866442,
                                73.6359550561798,
                                73.718785151856,
                                73.8018018018018,
                                73.8850056369786,
                                73.9683972911964,
                                74.0519774011299,
                                74.1357466063348,
                                74.2197055492639,
                                74.3038548752835,
                                74.3881952326901,
                                74.4727272727273,
                                74.5574516496018,
                                74.6423690205011,
                                74.72748004561,
                                74.8127853881279,
                                74.8982857142857,
                                74.9839816933639,
                                75.0698739977091,
                                75.1559633027523,
                                75.2422502870264,
                                75.3287356321839,
                                75.415420023015,
                                75.5023041474654,
                                75.5893886966551,
                                75.6766743648961,
                                75.764161849711,
                                75.8518518518518,
                                75.9397450753187,
                                76.0278422273782,
                                76.116144018583,
                                76.2046511627907,
                                76.2933643771828,
                                76.3822843822844,
                                76.4714119019837,
                                76.5607476635514,
                                76.6502923976608,
                                76.7400468384075,
                                76.8300117233294,
                                76.9201877934272,
                                77.0105757931845,
                                77.1011764705882,
                                77.1919905771496,
                                77.2830188679245,
                                77.3742621015348,
                                77.4657210401891,
                                77.5573964497041,
                                77.6492890995261,
                                77.7413997627521,
                                77.833729216152,
                                77.9262782401902,
                                78.0190476190476,
                                78.1120381406436,
                                78.2052505966587,
                                78.2986857825568,
                                78.3923444976077,
                                78.4862275449102,
                                78.5803357314149,
                                78.6746698679472,
                                78.7692307692308,
                                78.864019253911,
                                78.9590361445783,
                                79.0542822677925,
                                79.1497584541063,
                                79.2454655380895,
                                79.3414043583535,
                                79.4375757575758,
                                79.5339805825243,
                                79.6306196840826,
                                79.7274939172749,
                                79.8246041412911,
                                79.9219512195122,
                                80.019536019536,
                                80.1173594132029,
                                80.2154222766218,
                                80.3137254901961,
                                80.4122699386503,
                                80.5110565110565,
                                80.610086100861,
                                80.7093596059113,
                                80.8088779284834,
                                80.9086419753086,
                                81.008652657602,
                                81.1089108910891,
                                81.2094175960347,
                                81.3101736972705,
                                81.4111801242236,
                                81.5124378109453,
                                81.6139476961395,
                                81.715710723192,
                                81.8177278401998,
                                81.92,
                                82.0225281602002,
                                82.125313283208,
                                82.228356336261,
                                82.3316582914573,
                                82.4352201257862,
                                82.5390428211587,
                                82.6431273644388,
                                82.7474747474748,
                                82.8520859671302,
                                82.9569620253165,
                                83.0621039290241,
                                83.1675126903553,
                                83.2731893265565,
                                83.3791348600509,
                                83.4853503184713,
                                83.5918367346939,
                                83.698595146871,
                                83.8056265984655,
                                83.9129321382842,
                                84.0205128205128,
                                84.1283697047497,
                                84.2365038560411,
                                84.3449163449163,
                                84.4536082474227,
                                84.5625806451613,
                                84.671834625323,
                                84.7813712807245,
                                84.8911917098446,
                                85.0012970168612,
                                85.1116883116883,
                                85.222366710013,
                                85.3333333333333,
                                85.4445893089961,
                                85.556135770235,
                                85.6679738562091,
                                85.7801047120419,
                                85.8925294888598,
                                86.005249343832,
                                86.1182654402102,
                                86.2315789473684,
                                86.3451910408432,
                                86.4591029023747,
                                86.5733157199472,
                                86.6878306878307,
                                86.8026490066225,
                                86.9177718832891,
                                87.0332005312085,
                                87.1489361702128,
                                87.2649800266312,
                                87.3813333333333,
                                87.497997329773,
                                87.6149732620321,
                                87.7322623828648,
                                87.8498659517426,
                                87.9677852348993,
                                88.0860215053763,
                                88.2045760430686,
                                88.3234501347709,
                                88.442645074224,
                                88.5621621621622,
                                88.68200270636,
                                88.8021680216802,
                                88.9226594301221,
                                89.0434782608696,
                                89.1646258503401,
                                89.2861035422343,
                                89.4079126875853,
                                89.5300546448087,
                                89.6525307797538,
                                89.7753424657534,
                                89.8984910836763,
                                90.021978021978,
                                90.1458046767538,
                                90.2699724517906,
                                90.3944827586207,
                                90.5193370165746,
                                90.6445366528354,
                                90.7700831024931,
                                90.8959778085992,
                                91.0222222222222,
                                91.1488178025035,
                                91.2757660167131,
                                91.4030683403068,
                                91.5307262569833,
                                91.6587412587413,
                                91.7871148459384,
                                91.9158485273492,
                                92.0449438202247,
                                92.1744022503516,
                                92.3042253521127,
                                92.4344146685472,
                                92.5649717514124,
                                92.6958981612447,
                                92.8271954674221,
                                92.958865248227,
                                93.0909090909091,
                                93.2233285917497,
                                93.3561253561254,
                                93.4893009985735,
                                93.6228571428572,
                                93.7567954220315,
                                93.89111747851,
                                94.025824964132,
                                94.1609195402299,
                                94.2964028776978,
                                94.4322766570605,
                                94.5685425685426,
                                94.7052023121387,
                                94.8422575976845,
                                94.9797101449275,
                                95.1175616835994,
                                95.2558139534884,
                                95.3944687045124,
                                95.533527696793,
                                95.6729927007299,
                                95.812865497076,
                                95.9531478770132,
                                96.0938416422287,
                                96.2349486049927,
                                96.3764705882353,
                                96.5184094256259,
                                96.6607669616519,
                                96.8035450516987,
                                96.9467455621302,
                                97.0903703703704,
                                97.2344213649852,
                                97.3789004457652,
                                97.5238095238095,
                                97.6691505216095,
                                97.8149253731343,
                                97.9611360239163,
                                98.1077844311377,
                                98.2548725637181,
                                98.4024024024024,
                                98.5503759398496,
                                98.6987951807229,
                                98.8476621417798,
                                98.9969788519637,
                                99.1467473524962,
                                99.2969696969697,
                                99.4476479514416,
                                99.5987841945289,
                                99.7503805175038,
                                99.9024390243902,
                                100.054961832061,
                                100.207951070336,
                                100.361408882083,
                                100.515337423313,
                                100.669738863287,
                                100.824615384615,
                                100.979969183359,
                                101.135802469136,
                                101.292117465224,
                                101.448916408669,
                                101.606201550388,
                                101.76397515528,
                                101.922239502333,
                                102.080996884735,
                                102.240249609984,
                                102.4,
                                102.560250391236,
                                102.721003134796,
                                102.882260596546,
                                103.044025157233,
                                103.206299212598,
                                103.369085173502,
                                103.532385466035,
                                103.696202531646,
                                103.860538827258,
                                104.025396825397,
                                104.190779014308,
                                104.356687898089,
                                104.52312599681,
                                104.690095846645,
                                104.8576,
                                105.025641025641,
                                105.194221508828,
                                105.363344051447,
                                105.533011272142,
                                105.703225806452,
                                105.873990306947,
                                106.045307443366,
                                106.217179902755,
                                106.38961038961,
                                106.562601626016,
                                106.736156351792,
                                106.910277324633,
                                107.084967320261,
                                107.26022913257,
                                107.436065573771,
                                107.612479474548,
                                107.789473684211,
                                107.96705107084,
                                108.145214521452,
                                108.323966942149,
                                108.503311258278,
                                108.683250414594,
                                108.863787375415,
                                109.044925124792,
                                109.226666666667,
                                109.409015025042,
                                109.591973244147,
                                109.77554438861,
                                109.959731543624,
                                110.144537815126,
                                110.329966329966,
                                110.516020236088,
                                110.702702702703,
                                110.890016920474,
                                111.077966101695,
                                111.266553480475,
                                111.455782312925,
                                111.645655877342,
                                111.836177474403,
                                112.02735042735,
                                112.219178082192,
                                112.41166380789,
                                112.604810996564,
                                112.798623063683,
                                112.993103448276,
                                113.188255613126,
                                113.384083044983,
                                113.580589254766,
                                113.777777777778,
                                113.975652173913,
                                114.174216027875,
                                114.373472949389,
                                114.573426573427,
                                114.77408056042,
                                114.975438596491,
                                115.177504393673,
                                115.380281690141,
                                115.583774250441,
                                115.787985865724,
                                115.992920353982,
                                116.198581560284,
                                116.404973357016,
                                116.612099644128,
                                116.819964349376,
                                117.028571428571,
                                117.237924865832,
                                117.448028673835,
                                117.658886894075,
                                117.870503597122,
                                118.082882882883,
                                118.296028880866,
                                118.509945750452,
                                118.724637681159,
                                118.940108892922,
                                119.156363636364,
                                119.373406193078,
                                119.591240875912,
                                119.80987202925,
                                120.029304029304,
                                120.249541284404,
                                120.470588235294,
                                120.692449355433,
                                120.915129151292,
                                121.138632162662,
                                121.362962962963,
                                121.588126159555,
                                121.814126394052,
                                122.040968342644,
                                122.268656716418,
                                122.497196261682,
                                122.7265917603,
                                122.956848030019,
                                123.187969924812,
                                123.419962335217,
                                123.652830188679,
                                123.886578449906,
                                124.121212121212,
                                124.356736242884,
                                124.593155893536,
                                124.830476190476,
                                125.068702290076,
                                125.307839388145,
                                125.547892720307,
                                125.78886756238,
                                126.030769230769,
                                126.273603082852,
                                126.517374517375,
                                126.762088974855,
                                127.007751937985,
                                127.254368932039,
                                127.501945525292,
                                127.750487329435,
                                128,
                                128.250489236791,
                                128.501960784314,
                                128.75442043222,
                                129.007874015748,
                                129.262327416174,
                                129.517786561265,
                                129.774257425743,
                                130.031746031746,
                                130.290258449304,
                                130.549800796813,
                                130.810379241517,
                                131.072,
                                131.334669338677,
                                131.598393574297,
                                131.863179074447,
                                132.129032258065,
                                132.39595959596,
                                132.663967611336,
                                132.933062880325,
                                133.20325203252,
                                133.474541751527,
                                133.74693877551,
                                134.020449897751,
                                134.295081967213,
                                134.570841889117,
                                134.847736625514,
                                135.125773195876,
                                135.404958677686,
                                135.685300207039,
                                135.966804979253,
                                136.24948024948,
                                136.533333333333,
                                136.818371607516,
                                137.10460251046,
                                137.392033542977,
                                137.680672268908,
                                137.970526315789,
                                138.261603375527,
                                138.553911205074,
                                138.847457627119,
                                139.142250530786,
                                139.43829787234,
                                139.735607675906,
                                140.034188034188,
                                140.334047109208,
                                140.635193133047,
                                140.937634408602,
                                141.241379310345,
                                141.546436285097,
                                141.852813852814,
                                142.160520607375,
                                142.469565217391,
                                142.779956427015,
                                143.091703056769,
                                143.404814004376,
                                143.719298245614,
                                144.035164835165,
                                144.352422907489,
                                144.671081677704,
                                144.991150442478,
                                145.312638580931,
                                145.635555555556,
                                145.95991091314,
                                146.285714285714,
                                146.612975391499,
                                146.941704035874,
                                147.27191011236,
                                147.603603603604,
                                147.936794582393,
                                148.27149321267,
                                148.607709750567,
                                148.945454545455,
                                149.284738041002,
                                149.625570776256,
                                149.967963386728,
                                150.311926605505,
                                150.657471264368,
                                151.004608294931,
                                151.353348729792,
                                151.703703703704,
                                152.055684454756,
                                152.409302325581,
                                152.764568764569,
                                153.121495327103,
                                153.480093676815,
                                153.840375586854,
                                154.202352941176,
                                154.566037735849,
                                154.931442080378,
                                155.298578199052,
                                155.667458432304,
                                156.038095238095,
                                156.410501193317,
                                156.784688995215,
                                157.16067146283,
                                157.538461538462,
                                157.918072289157,
                                158.299516908213,
                                158.682808716707,
                                159.067961165049,
                                159.45498783455,
                                159.843902439024,
                                160.234718826406,
                                160.627450980392,
                                161.022113022113,
                                161.418719211823,
                                161.817283950617,
                                162.217821782178,
                                162.620347394541,
                                163.024875621891,
                                163.431421446384,
                                163.84,
                                164.250626566416,
                                164.663316582915,
                                165.078085642317,
                                165.49494949495,
                                165.913924050633,
                                166.335025380711,
                                166.758269720102,
                                167.183673469388,
                                167.611253196931,
                                168.041025641026,
                                168.473007712082,
                                168.907216494845,
                                169.343669250646,
                                169.782383419689,
                                170.223376623377,
                                170.666666666667,
                                171.11227154047,
                                171.560209424084,
                                172.010498687664,
                                172.463157894737,
                                172.918205804749,
                                173.375661375661,
                                173.835543766578,
                                174.297872340426,
                                174.762666666667,
                                175.229946524064,
                                175.699731903485,
                                176.172043010753,
                                176.646900269542,
                                177.124324324324,
                                177.60433604336,
                                178.086956521739,
                                178.572207084469,
                                179.060109289618,
                                179.550684931507,
                                180.043956043956,
                                180.539944903581,
                                181.038674033149,
                                181.540166204986,
                                182.044444444444,
                                182.551532033426,
                                183.061452513966,
                                183.574229691877,
                                184.089887640449,
                                184.608450704225,
                                185.129943502825,
                                185.654390934844,
                                186.181818181818,
                                186.712250712251,
                                187.245714285714,
                                187.78223495702,
                                188.32183908046,
                                188.864553314121,
                                189.410404624277,
                                189.959420289855,
                                190.511627906977,
                                191.067055393586,
                                191.625730994152,
                                192.187683284457,
                                192.752941176471,
                                193.321533923304,
                                193.89349112426,
                                194.46884272997,
                                195.047619047619,
                                195.629850746269,
                                196.215568862275,
                                196.804804804805,
                                197.397590361446,
                                197.993957703928,
                                198.593939393939,
                                199.197568389058,
                                199.804878048781,
                                200.415902140673,
                                201.030674846626,
                                201.649230769231,
                                202.271604938272,
                                202.897832817337,
                                203.527950310559,
                                204.16199376947,
                                204.8,
                                205.442006269592,
                                206.088050314465,
                                206.738170347003,
                                207.392405063291,
                                208.050793650794,
                                208.713375796178,
                                209.380191693291,
                                210.051282051282,
                                210.726688102894,
                                211.406451612903,
                                212.090614886731,
                                212.779220779221,
                                213.472312703583,
                                214.169934640523,
                                214.872131147541,
                                215.578947368421,
                                216.290429042904,
                                217.006622516556,
                                217.727574750831,
                                218.453333333333,
                                219.183946488294,
                                219.919463087248,
                                220.659932659933,
                                221.405405405405,
                                222.15593220339,
                                222.91156462585,
                                223.672354948805,
                                224.438356164384,
                                225.209621993127,
                                225.986206896552,
                                226.768166089965,
                                227.555555555556,
                                228.348432055749,
                                229.146853146853,
                                229.950877192982,
                                230.760563380282,
                                231.575971731449,
                                232.397163120567,
                                233.224199288256,
                                234.057142857143,
                                234.89605734767,
                                235.741007194245,
                                236.592057761733,
                                237.449275362319,
                                238.312727272727,
                                239.182481751825,
                                240.058608058608,
                                240.941176470588,
                                241.830258302583,
                                242.725925925926,
                                243.628252788104,
                                244.537313432836,
                                245.453183520599,
                                246.375939849624,
                                247.305660377358,
                                248.242424242424,
                                249.186311787072,
                                250.137404580153,
                                251.095785440613,
                                252.061538461538,
                                253.034749034749,
                                254.015503875969,
                                255.003891050584,
                                256,
                                257.003921568627,
                                258.015748031496,
                                259.03557312253,
                                260.063492063492,
                                261.099601593625,
                                262.144,
                                263.196787148594,
                                264.258064516129,
                                265.327935222672,
                                266.406504065041,
                                267.49387755102,
                                268.590163934426,
                                269.695473251029,
                                270.809917355372,
                                271.933609958506,
                                273.066666666667,
                                274.20920502092,
                                275.361344537815,
                                276.523206751055,
                                277.694915254237,
                                278.876595744681,
                                280.068376068376,
                                281.270386266094,
                                282.48275862069,
                                283.705627705628,
                                284.939130434783,
                                286.183406113537,
                                287.438596491228,
                                288.704845814978,
                                289.982300884956,
                                291.271111111111,
                                292.571428571429,
                                293.883408071749,
                                295.207207207207,
                                296.542986425339,
                                297.890909090909,
                                299.251141552511,
                                300.623853211009,
                                302.009216589862,
                                303.407407407407,
                                304.818604651163,
                                306.242990654206,
                                307.680751173709,
                                309.132075471698,
                                310.597156398104,
                                312.07619047619,
                                313.569377990431,
                                315.076923076923,
                                316.599033816425,
                                318.135922330097,
                                319.687804878049,
                                321.254901960784,
                                322.837438423645,
                                324.435643564356,
                                326.049751243781,
                                327.68,
                                329.326633165829,
                                330.989898989899,
                                332.670050761421,
                                334.367346938775,
                                336.082051282051,
                                337.814432989691,
                                339.564766839378,
                                341.333333333333,
                                343.120418848168,
                                344.926315789474,
                                346.751322751323,
                                348.595744680851,
                                350.459893048128,
                                352.344086021505,
                                354.248648648649,
                                356.173913043478,
                                358.120218579235,
                                360.087912087912,
                                362.077348066298,
                                364.088888888889,
                                366.122905027933,
                                368.179775280899,
                                370.25988700565,
                                372.363636363636,
                                374.491428571429,
                                376.64367816092,
                                378.820809248555,
                                381.023255813953,
                                383.251461988304,
                                385.505882352941,
                                387.786982248521,
                                390.095238095238,
                                392.431137724551,
                                394.795180722892,
                                397.187878787879,
                                399.609756097561,
                                402.061349693252,
                                404.543209876543,
                                407.055900621118,
                                409.6,
                                412.176100628931,
                                414.784810126582,
                                417.426751592357,
                                420.102564102564,
                                422.812903225807,
                                425.558441558442,
                                428.339869281046,
                                431.157894736842,
                                434.013245033113,
                                436.906666666667,
                                439.838926174497,
                                442.810810810811,
                                445.823129251701,
                                448.876712328767,
                                451.972413793103,
                                455.111111111111,
                                458.293706293706,
                                461.521126760563,
                                464.794326241135,
                                468.114285714286,
                                471.482014388489,
                                474.898550724638,
                                478.36496350365,
                                481.882352941176,
                                485.451851851852,
                                489.074626865672,
                                492.751879699248,
                                496.484848484849,
                                500.274809160305,
                                504.123076923077,
                                508.031007751938,
                                512,
                                516.031496062992,
                                520.126984126984,
                                524.288,
                                528.516129032258,
                                532.813008130081,
                                537.180327868852,
                                541.619834710744,
                                546.133333333333,
                                550.72268907563,
                                555.389830508475,
                                560.136752136752,
                                564.965517241379,
                                569.878260869565,
                                574.877192982456,
                                579.964601769912,
                                585.142857142857,
                                590.414414414414,
                                595.781818181818,
                                601.247706422018,
                                606.814814814815,
                                612.485981308411,
                                618.264150943396,
                                624.152380952381,
                                630.153846153846,
                                636.271844660194,
                                642.509803921569,
                                648.871287128713,
                                655.36,
                                661.979797979798,
                                668.734693877551,
                                675.628865979381,
                                682.666666666667,
                                689.852631578947,
                                697.191489361702,
                                704.688172043011,
                                712.347826086956,
                                720.175824175824,
                                728.177777777778,
                                736.359550561798,
                                744.727272727273,
                                753.287356321839,
                                762.046511627907,
                                771.011764705882,
                                780.190476190476,
                                789.590361445783,
                                799.219512195122,
                                809.086419753086,
                                819.2,
                                829.569620253165,
                                840.205128205128,
                                851.116883116883,
                                862.315789473684,
                                873.813333333333,
                                885.621621621622,
                                897.753424657534,
                                910.222222222222,
                                923.042253521127,
                                936.228571428571,
                                949.797101449275,
                                963.764705882353,
                                978.149253731343,
                                992.969696969697,
                                1008.24615384615,
                                1024,
                                1040.25396825397,
                                1057.03225806452,
                                1074.36065573771,
                                1092.26666666667,
                                1110.77966101695,
                                1129.93103448276,
                                1149.75438596491,
                                1170.28571428571,
                                1191.56363636364,
                                1213.62962962963,
                                1236.52830188679,
                                1260.30769230769,
                                1285.01960784314,
                                1310.72,
                                1337.4693877551,
                                1365.33333333333,
                                1394.3829787234,
                                1424.69565217391,
                                1456.35555555556,
                                1489.45454545455,
                                1524.09302325581,
                                1560.38095238095,
                                1598.43902439024,
                                1638.4,
                                1680.41025641026,
                                1724.63157894737,
                                1771.24324324324,
                                1820.44444444444,
                                1872.45714285714,
                                1927.52941176471,
                                1985.93939393939,
                                2048,
                                2114.06451612903,
                                2184.53333333333,
                                2259.86206896552,
                                2340.57142857143,
                                2427.25925925926,
                                2520.61538461538,
                                2621.44,
                                2730.66666666667,
                                2849.39130434783,
                                2978.90909090909,
                                3120.7619047619,
                                3276.8,
                                3449.26315789474,
                                3640.88888888889,
                                3855.05882352941,
                                4096,
                                4369.06666666667,
                                4681.14285714286,
                                5041.23076923077,
                                5461.33333333333,
                                5957.81818181818,
                                6553.6,
                                7281.77777777778,
                                8192,
                                9362.28571428571,
                                10922.6666666667,
                                13107.2,
                                16384,
                                21845.3333333333,
                                32768,
                                65536 };

const float freqTableNSE[256] = {
    524288, 262144, 131072, 87381.3333333333, 65536, 52428.8, 43690.6666666667, 37449.1428571429,
    524288, 262144, 131072, 87381.3333333333, 65536, 52428.8, 43690.6666666667, 37449.1428571429,
    262144, 131072, 65536, 43690.6666666667, 32768, 26214.4, 21845.3333333333, 18724.5714285714,
    262144, 131072, 65536, 43690.6666666667, 32768, 26214.4, 21845.3333333333, 18724.5714285714,
    131072, 65536, 32768, 21845.3333333333, 16384, 13107.2, 10922.6666666667, 9362.28571428571,
    131072, 65536, 32768, 21845.3333333333, 16384, 13107.2, 10922.6666666667, 9362.28571428571,
    65536, 32768, 16384, 10922.6666666667, 8192, 6553.6, 5461.33333333333, 4681.14285714286,
    65536, 32768, 16384, 10922.6666666667, 8192, 6553.6, 5461.33333333333, 4681.14285714286,
    32768, 16384, 8192, 5461.33333333333, 4096, 3276.8, 2730.66666666667, 2340.57142857143,
    32768, 16384, 8192, 5461.33333333333, 4096, 3276.8, 2730.66666666667, 2340.57142857143,
    16384, 8192, 4096, 2730.66666666667, 2048, 1638.4, 1365.33333333333, 1170.28571428571,
    16384, 8192, 4096, 2730.66666666667, 2048, 1638.4, 1365.33333333333, 1170.28571428571,
    8192, 4096, 2048, 1365.33333333333, 1024, 819.2, 682.666666666667, 585.142857142857,
    8192, 4096, 2048, 1365.33333333333, 1024, 819.2, 682.666666666667, 585.142857142857,
    4096, 2048, 1024, 682.666666666667, 512, 409.6, 341.333333333333, 292.571428571429,
    4096, 2048, 1024, 682.666666666667, 512, 409.6, 341.333333333333, 292.571428571429,
    2048, 1024, 512, 341.333333333333, 256, 204.8, 170.666666666667, 146.285714285714,
    2048, 1024, 512, 341.333333333333, 256, 204.8, 170.666666666667, 146.285714285714,
    1024, 512, 256, 170.666666666667, 128, 102.4, 85.3333333333333, 73.1428571428571,
    1024, 512, 256, 170.666666666667, 128, 102.4, 85.3333333333333, 73.1428571428571,
    512, 256, 128, 85.3333333333333, 64, 51.2, 42.6666666666667, 36.5714285714286,
    512, 256, 128, 85.3333333333333, 64, 51.2, 42.6666666666667, 36.5714285714286,
    256, 128, 64, 42.6666666666667, 32, 25.6, 21.3333333333333, 18.2857142857143,
    256, 128, 64, 42.6666666666667, 32, 25.6, 21.3333333333333, 18.2857142857143,
    128, 64, 32, 21.3333333333333, 16, 12.8, 10.6666666666667, 9.14285714285714,
    128, 64, 32, 21.3333333333333, 16, 12.8, 10.6666666666667, 9.14285714285714,
    64, 32, 16, 10.6666666666667, 8, 6.4, 5.33333333333333, 4.57142857142857,
    64, 32, 16, 10.6666666666667, 8, 6.4, 5.33333333333333, 4.57142857142857,
    32, 16, 8, 5.33333333333333, 4, 3.2, 2.66666666666667, 2.28571428571429,
    32, 16, 8, 5.33333333333333, 4, 3.2, 2.66666666666667, 2.28571428571429,
    16, 8, 4, 2.66666666666667, 2, 1.6, 1.33333333333333, 1.14285714285714,
    16, 8, 4, 2.66666666666667, 2, 1.6, 1.33333333333333, 1.14285714285714,
};
# 4 "src/platform/shared/audio/cgb_audio.c" 2

static struct AudioCGB gb;
static float soundChannelPos[4];
static const s16 *PU1Table;
static const s16 *PU2Table;
static u32 apuFrame;
static u8 apuCycle;
static u32 sampleRate;
static u16 lfsrMax[2];
float ch4Samples;

void cgb_audio_init(u32 rate)
{
    gb.ch1Freq = 0;
    gb.ch1SweepCounter = 0;
    gb.ch1SweepCounterI = 0;
    gb.ch1SweepDir = 0;
    gb.ch1SweepShift = 0;
    for (u8 ch = 0; ch < 4; ch++) {
        gb.Vol[ch] = 0;
        gb.VolI[ch] = 0;
        gb.Len[ch] = 0;
        gb.LenI[ch] = 0;
        gb.LenOn[ch] = 0;
        gb.EnvCounter[ch] = 0;
        gb.EnvCounterI[ch] = 0;
        gb.EnvDir[ch] = 0;
        gb.DAC[ch] = 0;
        soundChannelPos[ch] = 0;
    }
    soundChannelPos[1] = 1;
    PU1Table = PU0;
    PU2Table = PU0;
    sampleRate = rate;
    gb.ch4LFSR[0] = 0x8000;
    gb.ch4LFSR[1] = 0x80;
    lfsrMax[0] = 0x8000;
    lfsrMax[1] = 0x80;
    ch4Samples = 0.0f;
}

void cgb_set_sweep(u8 sweep)
{
    gb.ch1SweepDir = (sweep & 0x08) >> 3;
    gb.ch1SweepCounter = gb.ch1SweepCounterI = (sweep & 0x70) >> 4;
    gb.ch1SweepShift = (sweep & 0x07);
}

void cgb_set_wavram()
{
    for (u8 wavi = 0; wavi < 0x10; wavi++) {
        gb.WAVRAM[(wavi << 1)] = (((*((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x30) + wavi)) & 0xF0) >> 4) / 7.5f - 1.0f;
        gb.WAVRAM[(wavi << 1) + 1] = (((*((REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x30) + wavi)) & 0x0F)) / 7.5f - 1.0f;
    }
}

void cgb_toggle_length(u8 channel, bool8 state) { gb.LenOn[channel] = state; }

void cgb_set_length(u8 channel, u8 length) { gb.Len[channel] = gb.LenI[channel] = length; }

void cgb_set_envelope(u8 channel, u8 envelope)
{
    if (channel == 2) {
        switch ((envelope & 0xE0)) {
            case 0x00:
                gb.Vol[2] = gb.VolI[2] = 0;
                break;
            case 0x20:
                gb.Vol[2] = gb.VolI[2] = 4;
                break;
            case 0x40:
                gb.Vol[2] = gb.VolI[2] = 2;
                break;
            case 0x60:
                gb.Vol[2] = gb.VolI[2] = 1;
                break;
            case 0x80:
                gb.Vol[2] = gb.VolI[2] = 3;
                break;
        }
    } else {
        gb.DAC[channel] = (envelope & 0xF8) > 0;
        gb.Vol[channel] = gb.VolI[channel] = (envelope & 0xF0) >> 4;
        gb.EnvDir[channel] = (envelope & 0x08) >> 3;
        gb.EnvCounter[channel] = gb.EnvCounterI[channel] = (envelope & 0x07);
    }
}

void cgb_trigger_note(u8 channel)
{
    gb.Vol[channel] = gb.VolI[channel];
    gb.Len[channel] = gb.LenI[channel];
    if (channel != 2)
        gb.EnvCounter[channel] = gb.EnvCounterI[channel];
    if (channel == 3) {
        gb.ch4LFSR[0] = 0x8000;
        gb.ch4LFSR[1] = 0x80;
    }
}

void cgb_audio_generate(u16 samplesPerFrame)
{
    float *outBuffer = gb.outBuffer;
    switch ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x2)) & 0xC0) {
        case 0x00:
            PU1Table = PU0;
            break;
        case 0x40:
            PU1Table = PU1;
            break;
        case 0x80:
            PU1Table = PU2;
            break;
        case 0xC0:
            PU1Table = PU3;
            break;
    }

    switch ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x8)) & 0xC0) {
        case 0x00:
            PU2Table = PU0;
            break;
        case 0x40:
            PU2Table = PU1;
            break;
        case 0x80:
            PU2Table = PU2;
            break;
        case 0xC0:
            PU2Table = PU3;
            break;
    }

    for (u16 i = 0; i < samplesPerFrame; i++, outBuffer += 2) {
        apuFrame += 512;
        if (apuFrame >= sampleRate) {
            apuFrame -= sampleRate;
            apuCycle++;

            if ((apuCycle & 1) == 0) {
                for (u8 ch = 0; ch < 4; ch++) {
                    if (gb.Len[ch]) {
                        if (--gb.Len[ch] == 0 && gb.LenOn[ch]) {
                            (*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) &= (0xFF ^ (1 << ch));
                        }
                    }
                }
            }

            if ((apuCycle & 7) == 7) {
                for (u8 ch = 0; ch < 4; ch++) {
                    if (ch == 2)
                        continue;
                    if (gb.EnvCounter[ch]) {
                        if (--gb.EnvCounter[ch] == 0) {
                            if (gb.Vol[ch] && !gb.EnvDir[ch]) {
                                gb.Vol[ch]--;
                                gb.EnvCounter[ch] = gb.EnvCounterI[ch];
                            } else if (gb.Vol[ch] < 0x0F && gb.EnvDir[ch]) {
                                gb.Vol[ch]++;
                                gb.EnvCounter[ch] = gb.EnvCounterI[ch];
                            }
                        }
                    }
                }
            }

            if ((apuCycle & 3) == 2) {
                if (gb.ch1SweepCounterI && gb.ch1SweepShift) {
                    if (--gb.ch1SweepCounter == 0) {
                        gb.ch1Freq = (*(vu16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4)) & 0x7FF;
                        if (gb.ch1SweepDir) {
                            gb.ch1Freq -= gb.ch1Freq >> gb.ch1SweepShift;
                            if (gb.ch1Freq & 0xF800)
                                gb.ch1Freq = 0;
                        } else {
                            gb.ch1Freq += gb.ch1Freq >> gb.ch1SweepShift;
                            if (gb.ch1Freq & 0xF800) {
                                gb.ch1Freq = 0;
                                gb.EnvCounter[0] = 0;
                                gb.Vol[0] = 0;
                            }
                        }
                        (*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4)) = gb.ch1Freq & 0xFF;
                        (*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5)) &= 0xF8;
                        (*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x5)) += (gb.ch1Freq >> 8) & 0x07;
                        gb.ch1SweepCounter = gb.ch1SweepCounterI;
                    }
                }
            }
        }

        soundChannelPos[0] += freqTable[(*(vu16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x4)) & 0x7FF] / (sampleRate / 32);
        soundChannelPos[1] += freqTable[(*(vu16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0xC)) & 0x7FF] / (sampleRate / 32);
        soundChannelPos[2] += freqTable[(*(vu16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x14)) & 0x7FF] / (sampleRate / 32);
        while (soundChannelPos[0] >= 32)
            soundChannelPos[0] -= 32;
        while (soundChannelPos[1] >= 32)
            soundChannelPos[1] -= 32;
        while (soundChannelPos[2] >= 32)
            soundChannelPos[2] -= 32;
        float outputL = 0;
        float outputR = 0;
        if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x80) {
            if ((gb.DAC[0]) && ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x01)) {
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x10)
                    outputL += gb.Vol[0] * PU1Table[(int)(soundChannelPos[0])] / 15.0f;
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x01)
                    outputR += gb.Vol[0] * PU1Table[(int)(soundChannelPos[0])] / 15.0f;
            }
            if ((gb.DAC[1]) && ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x02)) {
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x20)
                    outputL += gb.Vol[1] * PU2Table[(int)(soundChannelPos[1])] / 15.0f;
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x02)
                    outputR += gb.Vol[1] * PU2Table[(int)(soundChannelPos[1])] / 15.0f;
            }
            if (((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x10)) & 0x80) && ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x04)) {
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x40)
                    outputL += gb.Vol[2] * gb.WAVRAM[(int)(soundChannelPos[2])] / 4.0f;
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x04)
                    outputR += gb.Vol[2] * gb.WAVRAM[(int)(soundChannelPos[2])] / 4.0f;
            }
            if ((gb.DAC[3]) && ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x24)) & 0x08)) {
                bool32 lfsrMode = (((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1c)) & 0x08) == 8);
                ch4Samples += freqTableNSE[(*(vu16 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x1c)) & 0xFF] / sampleRate;
                int ch4Out = 0;
                if (gb.ch4LFSR[lfsrMode] & 1) {
                    ch4Out++;
                } else {
                    ch4Out--;
                }
                int avgDiv = 1;
                while (ch4Samples >= 1) {
                    avgDiv++;
                    bool8 lfsrCarry = 0;
                    if (gb.ch4LFSR[lfsrMode] & 2)
                        lfsrCarry ^= 1;
                    gb.ch4LFSR[lfsrMode] >>= 1;
                    if (gb.ch4LFSR[lfsrMode] & 2)
                        lfsrCarry ^= 1;
                    if (lfsrCarry)
                        gb.ch4LFSR[lfsrMode] |= lfsrMax[lfsrMode];
                    if (gb.ch4LFSR[lfsrMode] & 1) {
                        ch4Out++;
                    } else {
                        ch4Out--;
                    }
                    ch4Samples--;
                }
                float sample = ch4Out;
                if (avgDiv > 1)
                    sample /= avgDiv;
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x80)
                    outputL += gb.Vol[3] * sample / 15.0f;
                if ((*(vu8 *)(REG_BASE + ((((0x40 + sizeof(winreg_t) * 6) + 4) + 2) + 2) + 2 + 10 + 0x21)) & 0x08)
                    outputR += gb.Vol[3] * sample / 15.0f;
            }
        }
        outBuffer[0] = outputL * 0.25f;
        outBuffer[1] = outputR * 0.25f;
    }
}

float *cgb_get_buffer() { return gb.outBuffer; }
