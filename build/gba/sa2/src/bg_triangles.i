# 0 "src/bg_triangles.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/bg_triangles.c"
# 1 "tools/agbcc/include/stdlib.h" 1
# 13 "tools/agbcc/include/stdlib.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 14 "tools/agbcc/include/stdlib.h" 2



# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/stdlib.h" 2

# 1 "tools/agbcc/include/sys/reent.h" 1
# 13 "tools/agbcc/include/sys/reent.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 14 "tools/agbcc/include/sys/reent.h" 2
# 1 "tools/agbcc/include/time.h" 1
# 21 "tools/agbcc/include/time.h"
# 1 "tools/agbcc/include/machine/time.h" 1
# 22 "tools/agbcc/include/time.h" 2
# 33 "tools/agbcc/include/time.h"
# 1 "tools/agbcc/include/machine/types.h" 1
# 34 "tools/agbcc/include/time.h" 2


typedef unsigned long clock_t;




typedef long time_t;



struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *_s, size_t _maxsize, const char *_fmt, const struct tm *_t);

char *asctime_r (const struct tm *, char *);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *, struct tm *);
struct tm *localtime_r (const time_t *, struct tm *);
# 15 "tools/agbcc/include/sys/reent.h" 2




typedef unsigned long ULong;
# 31 "tools/agbcc/include/sys/reent.h"
struct _glue
{
  struct _glue *_next;
  int _niobs;
  struct __sFILE *_iobs;
};

struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  ULong _x[1];
};







struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
};
# 64 "tools/agbcc/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};






typedef long _fpos_t;
# 102 "tools/agbcc/include/sys/reent.h"
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  void * _cookie;

  int (*_read) (void * _cookie, char *_buf, int _n);
  int (*_write) (void * _cookie, const char *_buf, int _n);
  _fpos_t (*_seek) (void * _cookie, _fpos_t _offset, int _whence);
  int (*_close) (void * _cookie);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;

  struct _reent *_data;
};
# 146 "tools/agbcc/include/sys/reent.h"
struct _reent
{

  int _errno;




  struct __sFILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _rand_next;
          char * _strtok_last;
          char _asctime_buf[26];
          struct tm _localtime_buf;
          int _gamma_signgam;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  struct __sFILE __sf[3];
};
# 225 "tools/agbcc/include/sys/reent.h"
extern struct _reent *_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 20 "tools/agbcc/include/stdlib.h" 2

typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 45 "tools/agbcc/include/stdlib.h"
extern int __mb_cur_max;




void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
long atol (const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (*_compar) (const void *, const void *))



                                                          ;
void * calloc (size_t __nmemb, size_t __size);
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *);
char * getenv (const char *__string);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size);
int mblen (const char *, size_t);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, int *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, int *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, int *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, int *);
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size);
void srand (unsigned __seed);
double strtod (const char *__n, char **_end_PTR);

float strtodf (const char *__n, char **_end_PTR);

long strtol (const char *__n, char **_end_PTR, int __base);
unsigned long strtoul (const char *_n_PTR, char **_end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *_n_PTR, char **_end_PTR, int __base);
int system (const char *__string);


void cfree (void *);
int putenv (const char *__string);
int setenv (const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);
int rand_r (unsigned *__seed);
# 119 "tools/agbcc/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);
void * _malloc_r (struct _reent *, size_t);
void * _calloc_r (struct _reent *, size_t, size_t);
void _free_r (struct _reent *, void *);
void * _realloc_r (struct _reent *, void *, size_t);
void _mstats_r (struct _reent *, char *);
int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 2 "src/bg_triangles.c" 2
# 1 "tools/agbcc/include/string.h" 1
# 23 "tools/agbcc/include/string.h"
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
# 3 "src/bg_triangles.c" 2

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
# 5 "src/bg_triangles.c" 2
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
# 6 "src/bg_triangles.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 7 "src/bg_triangles.c" 2
# 1 "include/flags.h" 1
# 8 "src/bg_triangles.c" 2


# 1 "include/bg_triangles.h" 1



typedef struct {

    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
# 24 "include/bg_triangles.h"
} TriParam1;

extern void sub_800724C(u8 bg, TriParam1 *param1);
extern void sub_80075D0(u8 bg, u8 param1, u8 param2, s16 param3, s16 param4, u16 param5);
extern void sub_8007858(u8 param0, int_vcount minY, int_vcount maxY, u16 param3, u16 param4);
extern void sub_80078D4(u8 bg, int_vcount minY, int_vcount maxY, u16 offsetEven, u16 offsetOdd);
# 11 "src/bg_triangles.c" 2
# 22 "src/bg_triangles.c"
typedef struct {
    s16 x;
    s16 y;
} Unknown;

__attribute__((naked)) void sub_8005C54() { asm(".include " "\"asm/non_matching/engine/unused_sub_8005C54.inc\""); if (0) { }
}

__attribute__((naked)) void sub_8005FB4() { asm(".include " "\"asm/non_matching/engine/unused_sub_8005FB4.inc\""); if (0) { }
}

void sub_8006228(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    int_vcount *cursor;
    s16 r1, r2, r4, r5, r7, r8;

    gFlags |= 0x4;

    if (bg >= 2) {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)))) * 2;

        if (bg & 1) {
            cursor = (int_vcount *)gBgOffsetsHBlankPrimary + sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        } else {
            cursor = (int_vcount *)gBgOffsetsHBlankPrimary;
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    } else {
        volatile winreg_t *reg;
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
        cursor = (int_vcount *)gBgOffsetsHBlankPrimary;


        reg = &(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 1)));
        if (bg & 1) {
            gHBlankCopyTarget = (void *)reg;
        } else {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    }

    r1 = (param3 - param1);
    r4 = (param4 - param2);
    r5 = (param4 - param2);

    r2 = r1;
    r8 = ((r2) >= 0 ? (r2) : -(r2)) * 2;
    r7 = ((r4) >= 0 ? (r4) : -(r4)) * 2;

    cursor = (int_vcount *)(((u8 *)(cursor)) + (param2 * gHBlankCopySize));

    if (((r2) >= 0 ? (r2) : -(r2)) > ((r4) >= 0 ? (r4) : -(r4))) {
        r4 = -r2;

        if (r2 > 0) {
            cursor[1] = param5;

            for (r2 = 0; r2 < ((r1) >= 0 ? (r1) : -(r1)); r2++) {
                param1++;
                r4 += r7;

                if (r4 >= 0) {
                    r4 = ((r4 << 16) >> 16) - r8;
                    cursor[0] = param1;
                    cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
                    cursor[1] = param5;
                }
            }
            cursor[0] = param1;
        } else {
            cursor[0] = param1;
            cursor++;

            for (r2 = 0; r2 < ((r1) >= 0 ? (r1) : -(r1)); r2++) {
                param1--;
                r4 += r7;

                if (r4 >= 0) {
                    r4 -= r8;
                    *cursor = param5;
                    cursor = ({
                        uintptr_t r0 = (gHBlankCopySize);
                        r0 += (uintptr_t)cursor;
                        (void *)(r0 - 1);
                    });
                    *cursor = param1;

                    asm("" : "=r"(cursor));

                    cursor++;
                }
            }
            *cursor = param5;
        }

    } else {
        r4 = -r4;
        if (r2 > 0) {
            for (r2 = 0; r2 < ((r5) >= 0 ? (r5) : -(r5)); r2++) {
                *cursor = param1 + 1;
                cursor++;
                *cursor = param5;
                cursor = ({
                    uintptr_t r0 = (gHBlankCopySize);
                    r0 += (uintptr_t)cursor;
                    (void *)(r0 - 1);
                });

                r4 += r8;

                if (r4 >= 0) {
                    param1++;
                    r4 -= r7;
                }
            }
        } else {
            for (r2 = 0; r2 < ((r5) >= 0 ? (r5) : -(r5)); r2++) {
                *cursor = param1 + 1;
                cursor++;
                *cursor = param5;

                cursor = ({
                    uintptr_t r0 = (gHBlankCopySize);
                    r0 += (uintptr_t)cursor;
                    (void *)(r0 - 1);
                });

                r4 += r8;

                if (r4 >= 0) {
                    param1--;
                    r4 -= r7;
                }
            }
        }
    }
}

void sub_80064A8(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    int_vcount *cursor;
    s16 r1, r2, r4, r5, r7, r8;

    gFlags |= 0x4;

    if (bg >= 2) {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)))) * 2;

        if (bg & 1) {
            cursor = (int_vcount *)gBgOffsetsHBlankPrimary + sizeof(winreg_t);
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        } else {
            cursor = (int_vcount *)gBgOffsetsHBlankPrimary;
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    } else {
        volatile winreg_t *reg;
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
        cursor = (int_vcount *)gBgOffsetsHBlankPrimary;


        reg = &(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 1)));
        if (bg & 1) {
            gHBlankCopyTarget = (void *)reg;
        } else {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    }

    r1 = (param3 - param1);
    r4 = (param4 - param2);
    r5 = (param4 - param2);

    r2 = r1;
    r8 = ((r2) >= 0 ? (r2) : -(r2)) * 2;
    r7 = ((r4) >= 0 ? (r4) : -(r4)) * 2;

    cursor = (int_vcount *)(((u8 *)(cursor)) + (param2 * gHBlankCopySize));

    if (((r2) >= 0 ? (r2) : -(r2)) > ((r4) >= 0 ? (r4) : -(r4))) {
        r4 = -r2;

        if (r2 > 0) {
            cursor[1] = param1;

            for (r2 = 0; r2 < ((r1) >= 0 ? (r1) : -(r1)); r2++) {
                param1++;
                r4 += r7;

                if (r4 >= 0) {
                    r4 -= r8;
                    cursor[0] = param5;
                    cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
                    cursor[1] = param1;
                }
            }
            cursor[0] = param5;
        } else {
            cursor[0] = param5;
            cursor++;

            for (r2 = 0; r2 < ((r1) >= 0 ? (r1) : -(r1)); r2++) {
                param1--;
                r4 += r7;

                if (r4 >= 0) {
                    r4 -= r8;
                    *cursor = param1;
                    cursor = ({
                        uintptr_t r0 = (gHBlankCopySize);
                        r0 += (uintptr_t)cursor;
                        (void *)(r0 - 1);
                    });
                    *cursor = param5;

                    asm("" : "=r"(cursor));

                    cursor++;
                }
            }
            *cursor = param1;
        }

    } else {
        r4 = -r4;
        if (r2 > 0) {
            for (r2 = 0; r2 < ((r5) >= 0 ? (r5) : -(r5)); r2++) {
                *cursor = param5;
                cursor++;
                *cursor = param1;
                cursor = ({
                    uintptr_t r0 = (gHBlankCopySize);
                    r0 += (uintptr_t)cursor;
                    (void *)(r0 - 1);
                });

                r4 += r8;

                if (r4 >= 0) {
                    param1++;
                    r4 -= r7;
                }
            }
        } else {
            for (r2 = 0; r2 < ((r5) >= 0 ? (r5) : -(r5)); r2++) {
                *cursor = param5;
                cursor++;
                *cursor = param1;

                cursor = ({
                    uintptr_t r0 = (gHBlankCopySize);
                    r0 += (uintptr_t)cursor;
                    (void *)(r0 - 1);
                });

                r4 += r8;

                if (r4 >= 0) {
                    param1--;
                    r4 -= r7;
                }
            }
        }
    }
}

__attribute__((naked)) void sub_800672C() { asm(".include " "\"asm/non_matching/engine/unused_sub_800672C.inc\""); if (0) { }
}

void sub_8006DB4(u8 bg, u8 *arg1, s32 unused, s32 arg3)
{
    s16 sp0[2];
    s16 sp4[2] = { 1, 1 };
    s16 sp8[2];
    s16 spC[2] = { 0 };
    s16 sp10[2] = { 0 };
    u8 sp14[2];
    s16 maxVal2;
    s32 var_r0_5;
    u8 var_r0_6;
    u8 maxVal;
    u8 minVal;
    int_vcount *cursor;

    gFlags |= 0x4;

    if (bg >= 2) {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)))) * 2;

        if (bg & 1) {
            cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[2];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        } else {
            cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[0];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    } else {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
        cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[0];

        if (bg & 1) {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 1)));
        } else {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    }

    minVal = (((arg1[1]) < (arg1[5])) ? (arg1[1]) : (arg1[5]));
    maxVal = (((arg1[1]) > (arg1[5])) ? (arg1[1]) : (arg1[5]));

    cursor = (int_vcount *)(((u8 *)(cursor)) + (minVal * gHBlankCopySize));
    sp0[0] = (arg1[2] - arg1[0]);
    sp4[0] = (arg1[3] - arg1[1]);
    spC[0] = (((sp0[0]) >= 0 ? (sp0[0]) : -(sp0[0])) * 2);
    sp10[0] = (((sp4[0]) >= 0 ? (sp4[0]) : -(sp4[0])) * 2);
    sp0[1] = (arg1[6] - arg1[4]);
    sp4[1] = (arg1[7] - arg1[5]);

    spC[1] = (((sp0[1]) >= 0 ? (sp0[1]) : -(sp0[1])) * 2);
    var_r0_5 = ((sp4[1]) >= 0 ? (sp4[1]) : -(sp4[1]));
    sp10[1] = (var_r0_5 * 2);
    sp14[0] = arg1[0];
    sp14[1] = arg1[4];
    sp8[0] = -sp4[0];
    sp8[1] = -sp4[1];

    if ((minVal != maxVal) && (arg1[1] < arg1[5])) {
        while (minVal < maxVal) {
            cursor[0] = arg3;
            cursor[1] = sp14[0];
            sp8[0] += spC[0];

            while (sp8[0] >= 0) {
                if (sp0[0] > 0) {
                    if (arg3 > sp14[0]) {
                        sp14[0]++;
                    }
                    sp8[0] -= sp10[0];
                } else {
                    if (sp14[0] != 0) {
                        sp14[0]--;
                    }

                    sp8[0] -= sp10[0];
                    if (sp8[0] >= 0) {
                        cursor[1] = sp14[0];
                    }
                }
                asm("");
            }

            cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
            minVal++;
        }
    } else {
        while (minVal < maxVal) {
            cursor[0] = sp14[1];
            cursor[1] = 0;
            sp8[1] += spC[1];
            if (sp8[1] >= 0) {
                while (sp8[1] >= 0) {
                    if (sp0[1] > 0) {
                        if (arg3 > sp14[1]) {
                            sp14[1]++;
                        }

                        sp8[1] -= sp10[1];
                        if (sp8[1] >= 0) {
                            cursor[0] = (sp14[1] + 1);
                        }
                    } else {
                        if (sp14[1] != 0) {
                            sp14[1]--;
                        }
                        sp8[1] -= sp10[1];
                    }

                    asm("");
                }
            }

            cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
            minVal++;
        }
    }

    maxVal = (((arg1[3]) < (arg1[7])) ? (arg1[3]) : (arg1[7]));

    while (minVal < maxVal) {
        cursor[0] = sp14[1];
        cursor[1] = sp14[0];
        sp8[0] += spC[0];
        sp8[1] += spC[1];

        while (sp8[0] >= 0) {
            if (sp0[0] > 0) {
                if (arg3 > sp14[0]) {
                    sp14[0]++;
                }
                sp8[0] -= sp10[0];
            } else {
                if (sp14[0] != 0) {
                    sp14[0]--;
                }

                sp8[0] -= sp10[0];
                if (sp8[0] >= 0) {
                    cursor[1] = sp14[0];
                }
            }
            asm("");
        }
        while (sp8[1] >= 0) {
            if (sp0[1] > 0) {
                if (arg3 > sp14[1]) {
                    sp14[1]++;
                }

                sp8[1] -= sp10[1];
                if (sp8[1] >= 0) {
                    cursor[0] = (sp14[1] + 1);
                }
            } else {
                if (sp14[1] != 0) {
                    sp14[1]--;
                }
                sp8[1] -= sp10[1];
            }
            asm("");
        }

        cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
        minVal++;
    }

    maxVal = (((arg1[3]) > (arg1[7])) ? (arg1[3]) : (arg1[7]));

    if (arg1[3] <= arg1[7]) {
        while (minVal < maxVal) {
            cursor[0] = sp14[1];
            cursor[1] = 0;
            sp8[1] += spC[1];

            while (sp8[1] >= 0) {
                if (sp0[1] > 0) {
                    if (arg3 > sp14[1]) {
                        sp14[1]++;
                    }
                    sp8[1] -= sp10[1];
                    if (sp8[1] >= 0) {
                        cursor[0] = (sp14[1] + 1);
                    }
                } else {
                    if (sp14[1] != 0) {
                        sp14[1]--;
                    }
                    sp8[1] -= sp10[1];
                }
                asm("");
            }

            cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
            minVal++;
        }
    } else {
        while (minVal < maxVal) {
            cursor[0] = arg3;
            cursor[1] = sp14[0];
            sp8[0] += spC[0];

            while (sp8[0] >= 0) {
                if (sp0[0] > 0) {
                    if (arg3 > sp14[0]) {
                        sp14[0]++;
                    }
                    sp8[0] = (sp8[0] - sp10[0]);
                } else {
                    if (sp14[0] != 0) {
                        sp14[0]--;
                    }
                    sp8[0] -= sp10[0];
                    if (sp8[0] >= 0) {
                        cursor[1] = sp14[0];
                    }
                }
                asm("");
            }

            cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
            minVal++;
        }
    }
}



void sub_800724C(u8 bg, TriParam1 *arg1)
{
    s16 sp0[2];
    s16 sp4[2] = { 1, 1 };
    s16 sp8[2];
    s16 spC[2] = { 0 };
    s16 sp10[2] = { 0 };
    int_vcount sp14[2];
    int_vcount *cursor;
    int_vcount minVal;
    int_vcount maxVal;

    gFlags |= 0x4;

    if (bg >= 2) {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)))) * 2;

        if (bg & 1) {
            cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[2];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        } else {
            cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[0];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    } else {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
        cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[0];

        if (bg & 1) {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 1)));
        } else {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    }

    minVal = (((arg1->unk1) < (arg1->unk5)) ? (arg1->unk1) : (arg1->unk5));
    maxVal = (((arg1->unk1) > (arg1->unk5)) ? (arg1->unk1) : (arg1->unk5));

    cursor = (int_vcount *)(((u8 *)(cursor)) + (minVal * gHBlankCopySize));
    sp0[0] = (arg1->unk2 - arg1->unk0);
    sp4[0] = (arg1->unk3 - arg1->unk1);
    spC[0] = (((sp0[0]) >= 0 ? (sp0[0]) : -(sp0[0])) * 2);
    sp10[0] = (((sp4[0]) >= 0 ? (sp4[0]) : -(sp4[0])) * 2);
    sp0[1] = (arg1->unk6 - arg1->unk4);
    sp4[1] = (arg1->unk7 - arg1->unk5);

    spC[1] = (((sp0[1]) >= 0 ? (sp0[1]) : -(sp0[1])) * 2);
    sp10[1] = (((sp4[1]) >= 0 ? (sp4[1]) : -(sp4[1])) * 2);
    sp14[0] = arg1->unk0;
    sp14[1] = arg1->unk4;
    sp8[0] = -sp4[0];
    sp8[1] = -sp4[1];

    if ((minVal != maxVal) && (arg1->unk1 < arg1->unk5)) {
        while (minVal < maxVal) {
            cursor[0] = 240;
            cursor[1] = sp14[0];
            sp8[0] += spC[0];

            while (sp8[0] >= 0) {
                if (sp0[0] > 0) {
                    sp14[0]++;
                    sp8[0] -= sp10[0];
                } else {
                    sp14[0]--;

                    sp8[0] -= sp10[0];
                    if (sp8[0] >= 0) {
                        cursor[1] = sp14[0];
                    }
                }
                asm("");
            }

            cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
            minVal++;
        }
    } else {
        while (minVal < maxVal) {
            cursor[0] = sp14[1];
            cursor[1] = 0;
            sp8[1] += spC[1];
            if (sp8[1] >= 0) {
                while (sp8[1] >= 0) {
                    if (sp0[1] > 0) {
                        sp14[1]++;

                        sp8[1] -= sp10[1];
                        if (sp8[1] >= 0) {
                            cursor[0] = (sp14[1] + 1);
                        }
                    } else {
                        sp14[1]--;
                        sp8[1] -= sp10[1];
                    }

                    asm("");
                }
            }

            cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
            minVal++;
        }
    }

    maxVal = (((arg1->unk3) < (arg1->unk7)) ? (arg1->unk3) : (arg1->unk7));

    while (minVal < maxVal) {
        cursor[0] = sp14[1];
        cursor[1] = sp14[0];
        sp8[0] += spC[0];
        sp8[1] += spC[1];

        while (sp8[0] >= 0) {
            if (sp0[0] > 0) {
                sp14[0]++;
                sp8[0] -= sp10[0];
            } else {
                sp14[0]--;

                sp8[0] -= sp10[0];
                if (sp8[0] >= 0) {
                    cursor[1] = sp14[0];
                }
            }
            asm("");
        }

        while (sp8[1] >= 0) {
            if (sp0[1] > 0) {
                sp14[1]++;

                sp8[1] -= sp10[1];
                if (sp8[1] >= 0) {
                    cursor[0] = (sp14[1] + 1);
                }
            } else {
                sp14[1]--;
                sp8[1] -= sp10[1];
            }
            asm("");
        }

        cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize));
        minVal++;
    }
}

void sub_80075D0(u8 bg, u8 param1, u8 param2, s16 param3, s16 param4, u16 param5)
{
    int_vcount *cursor;
    s16 r1;
    u16 sb = (param5 * param5);

    gFlags |= 0x4;

    if (bg >= 2) {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)))) * 2;

        if (bg & 1) {
            cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[2];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        } else {
            cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[0];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    } else {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
        cursor = &((int_vcount *)gBgOffsetsHBlankPrimary)[0];

        if (bg & 1) {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 1)));
        } else {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    }

    r1 = param4;

    if ((r1 - param1) > param5) {
        param1 = (param4 - param5);
    }

    if ((param2 - r1) > param5) {
        param2 = (param4 + param5);
    }

    cursor = (int_vcount *)(((u8 *)(cursor)) + (param1 * gHBlankCopySize));

    for (; param1 < param2; param1++) {
        s16 num = param1 - param4;
        s16 sqrtRes;

        num = num * num;
        sqrtRes = Sqrt(sb - num);

        r1 = param3 + sqrtRes;
        if (r1 < 0) {
            *cursor = 0;
            cursor++;
        } else if (r1 > 240) {
            *cursor = 240;
            cursor++;
        } else {
            *cursor = r1;
            cursor++;
        }

        r1 = param3 - sqrtRes;
        if (r1 > 240) {
            *cursor = 240;
            cursor++;
        } else if (r1 < 0) {
            *cursor = 0;
            cursor++;
        } else {
            *cursor = r1;
            cursor++;
        }

        cursor = (int_vcount *)(((u8 *)(cursor)) + (gHBlankCopySize - sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))))));
    }
}

void sub_8007738(u8 bg, int_vcount minY, int_vcount maxY, u16 param3, u8 param4, u8 param5, u16 param6, u8 param7, u8 param8,
                            s16 param9, s16 param10)
{
    u16 *cursor;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&((u8 *)&(*(vu16 *)(0x4000000 + 0x10)))[bg * 4];
    gHBlankCopySize = 2 * sizeof((*(vu16 *)(0x4000000 + 0x10)));

    cursor = &((u16 *)gBgOffsetsHBlankPrimary)[minY * 2];

    while (minY < maxY) {
        *cursor = ((((gSineTable[(param3 & (1024 - 1))]) * param4) >> 14) + param9) & 0x1FF;
        cursor++;
        *cursor = ((((gSineTable[(param6 & (1024 - 1))]) * param7) >> 14) + param10) & 0x1FF;
        cursor++;

        param3 += param5;
        param6 += param8;

        minY++;
    }
}

void sub_8007858(u8 param0, int_vcount minY, int_vcount maxY, u16 param3, u16 param4)
{
    u16 *cursor;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&((u8 *)&(*(vu16 *)(0x4000000 + 0x10)))[param0 * 4];
    gHBlankCopySize = 2 * sizeof((*(vu16 *)(0x4000000 + 0x10)));

    cursor = &((u16 *)gBgOffsetsHBlankPrimary)[minY * 2];

    param4 = (param4 - minY) & 0x1FF;
    param3 &= 0x1FF;

    while (minY < maxY) {
        *cursor = param3;
        cursor++;
        *cursor = param4--;
        cursor++;

        minY++;
    }
}



const u16 gUnknown_080984F8[] = {

    0x2430, 0x0000, 0x0004, 0x0024,


    0x0300, 0x0080, 0x0200, 0x0098,


    0x2430, 0x0000, 0x0004, 0x0024,


    0x0300, 0x0080, 0x0200, 0x0098,


    0x2430, 0x0000, 0x0004, 0x0024,


    0x0300, 0x0080, 0x0200, 0x0098,


    0x2430, 0x0000, 0x0004, 0x0024,


    0x0300, 0x0080, 0x0200, 0x0098
};


void sub_80078D4(u8 bg, int_vcount minY, int_vcount maxY, u16 offsetEven, u16 offsetOdd)
{
    s32 fillVal;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&((u8 *)&(*(vu16 *)(0x4000000 + 0x10)))[bg * 4];
    gHBlankCopySize = 2 * sizeof((*(vu16 *)(0x4000000 + 0x10)));

    if (minY < maxY) {
        fillVal = (offsetEven %= 512u) | ((offsetOdd % 512u) << 16);

        { vu32 tmp = (vu32)(fillVal); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(&((u16 *)gBgOffsetsHBlankPrimary)[minY * 2]); dmaRegs[2] = (vu32)((u32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | (((maxY - minY) * 4)/(32/8)))); dmaRegs[2]; }; };
    }
}


void sub_8007958(u8 bg, int_vcount minY, int_vcount maxY, s16 param3, s8 param4, u16 param5, u16 param6)
{
    u16 *cursor;

    gFlags |= 0x4;

    gHBlankCopyTarget = (void *)&((u8 *)&(*(vu16 *)(0x4000000 + 0x10)))[bg * 4];
    gHBlankCopySize = 2 * sizeof((*(vu16 *)(0x4000000 + 0x10)));

    cursor = &((u16 *)gBgOffsetsHBlankPrimary)[minY * 2];

    while (minY < maxY) {
        *cursor = (param3 + param5) & 0x1FF;
        cursor++;
        *cursor = param6;
        cursor++;

        param3 = -(param3 + param4);
        param4 = -param4;

        minY++;
    }
}

void sub_8007A08(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4)
{
    u8 *cursor;

    gFlags |= 0x4;

    if (bg >= 2) {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)))) * 2;

        if (bg & 1) {
            cursor = &((u8 *)gBgOffsetsHBlankPrimary)[2];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        } else {
            cursor = &((u8 *)gBgOffsetsHBlankPrimary)[0];
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    } else {
        gHBlankCopySize = sizeof((*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0))));
        cursor = &((u8 *)gBgOffsetsHBlankPrimary)[0];

        if (bg & 1) {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 1)));
        } else {
            gHBlankCopyTarget = (void *)&(*(volatile winreg_t *)(0x4000000 + (0x40 + sizeof(winreg_t) * 0)));
        }
    }

    cursor += param2 * gHBlankCopySize;
    while (param2 < param4) {

        register u8 v asm("r0");



        u8 *p;
        *cursor = param3;
        cursor++;

        *cursor = param1;

        v = gHBlankCopySize;

        asm("add %0, %0, %2" : "=r"(p) : "r"(v), "r"(cursor));



        cursor = p - 1;

        param2++;
    }
}


void sub_8007AC0(u8 affineBg, int_vcount minY, int_vcount maxY)
{
    u16 *cursor;
    u16 affine;
    void **ptr;
    u32 bg = affineBg;

    gFlags |= 0x4;

    ptr = &gHBlankCopyTarget;

    bg *= 16;

    asm("sub %0, #0x20" ::"r"(bg));



    *ptr = (void *)((0x4000000 + 0x20) + bg);

    gHBlankCopySize = sizeof((*(vu16 *)(0x4000000 + 0x20)));

    cursor = &((u16 *)gBgOffsetsHBlankPrimary)[minY];





    affine = gBgAffineRegs[affineBg].pa;

    while (minY < maxY) {
        *cursor = affine + ((maxY - minY) * 4);

        cursor++;
        minY++;
    }
}
