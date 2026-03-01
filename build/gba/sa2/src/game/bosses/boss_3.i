# 0 "src/game/bosses/boss_3.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/bosses/boss_3.c"
# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1




# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 6 "include/gba/defines.h" 2
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
# 2 "src/game/bosses/boss_3.c" 2
# 1 "include/flags.h" 1



# 1 "include/global.h" 1
# 5 "include/flags.h" 2
# 23 "include/flags.h"
extern u32 gFlags;
# 3 "src/game/bosses/boss_3.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 4 "src/game/bosses/boss_3.c" 2
# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 5 "src/game/bosses/boss_3.c" 2
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

    s32 sampleRateReciprocal;



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

    s8 pcmBuffer[1584 * 2];



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


extern char gNumMusicPlayers[];
extern char gMaxLines[];


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
# 6 "src/game/bosses/boss_3.c" 2
# 1 "include/game/sa1_sa2_shared/collision.h" 1



# 1 "include/core.h" 1




# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2
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
# 6 "include/core.h" 2



# 1 "include/sprite.h" 1




# 1 "include/malloc_vram.h" 1
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
# 5 "include/game/sa1_sa2_shared/collision.h" 2
# 1 "include/rect.h" 1



typedef struct {
               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Rect8;
# 6 "include/game/sa1_sa2_shared/collision.h" 2
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
# 7 "include/game/sa1_sa2_shared/collision.h" 2
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
# 195 "include/game/sa1_sa2_shared/player.h"
               u8 unk98;
               s8 unk99[16];

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
# 8 "include/game/sa1_sa2_shared/collision.h" 2
# 20 "include/game/sa1_sa2_shared/collision.h"
u32 Coll_Player_Entity_RectIntersection(Sprite *s, s32 sx, s32 sy, Player *p, Rect8 *rectPlayer);


u32 Coll_Player_ItemBox(Sprite *, s32, s32);

bool32 Coll_Player_Entity_HitboxN(Sprite *, s32, s32, s16, Player *, s16);
bool32 Coll_Player_Boss_Attack(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 Coll_Player_Enemy(Sprite *s, s32 sx, s32 sy, s16 hbIndex, Player *p);
bool32 Coll_Cheese_Enemy_Attack(Sprite *sprTarget, s32 sx, s32 sy, s16 hbIndex, Player *p);
u32 sub_800DA4C(Sprite *opponent, s16 oppX, s16 oppY, __attribute__((unused)) s32 param3, __attribute__((unused)) s32 param4, u8 layer);
u32 sub_800CDBC(Sprite *, s32, s32, Player *);
u32 Coll_Player_Entity_Intersection(Sprite *, s32, s32, Player *);
u32 Coll_Player_Interactable(Sprite *s, s32 sx, s32 sy, Player *p);

bool32 Coll_DamagePlayer(Player *);
void Coll_Player_Enemy_AdjustSpeed(Player *);

u32 Coll_Player_Platform(Sprite *, s32 x, s32 y, Player *);

u32 sub_800CE94(Sprite *s, s32 sx, s32 sy, Rect8 *param3, Player *p);
bool32 sub_800DD54(Player *p);
bool32 sub_800DE44(Player *p);
u32 sub_800D0A0(Sprite *s, s16 worldX, s16 worldY, s16 qSpeedX, s16 qSpeedY, u8 layer, u32 arg6);

bool32 Coll_Player_Enemy_Attack(Sprite *, s32, s32, u8);

u32 Coll_Player_Projectile(Sprite *, s32, s32);
# 7 "src/game/bosses/boss_3.c" 2
# 1 "include/game/entity.h" 1





# 1 "include/sprite.h" 1
# 7 "include/game/entity.h" 2

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


extern u32 gMultiSioRecvFuncBuf[0x40 / 4];

extern u32 gMultiSioIntrFuncBuf[0x120 / 4];


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
# 9 "include/game/entity.h" 2


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
# 12 "include/game/entity.h" 2
# 1 "include/game/player_callbacks.h" 1






struct Task *CreateSonicAmySkidAttackEffect(s32 x, s32 y, u16 p2);
void Player_SonicAmy_InitSkidAttack(Player *);
void Player_SonicAmy_InitStopNSlam(Player *);
void Player_Sonic_InitHomingAttack(Player *);
bool32 Player_Sonic_TryForwardThrust(Player *);
void Player_Cream_InitFlying(Player *);
void Player_Cream_InitChaoRollingAttack(Player *);
void Player_Cream_InitMidAirChaoAttack(Player *);
void Player_Cream_InitChaoAttack(Player *);
void Player_Cream_InitStepAttack(Player *);
void Player_Tails_InitFlying(Player *);
void Player_Tails_InitTailSwipe(Player *);
void Player_Knuckles_InitPunch(Player *);
void Player_Knuckles_InitSpiralAttack(Player *);
void Player_Knuckles_InitGlide(Player *);
void Player_Knuckles_InitDrillClaw(Player *);
void Player_Amy_InitHammerAttack(Player *);
void Player_InitHomingAttackRecoil(Player *p);
void Player_UpdateHomingPosition(s32 qX, s32 qY);
# 13 "include/game/entity.h" 2
# 1 "include/game/stage/player.h" 1







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
# 14 "include/game/entity.h" 2
# 1 "include/game/stage/camera.h" 1
# 9 "include/game/stage/camera.h"
void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 15 "include/game/entity.h" 2






typedef struct __attribute__((packed)) MapEntity { u8 x; u8 y; u8 index; union { s8 sData[4]; u8 uData[4]; } d; } MapEntity;
# 32 "include/game/entity.h"
  ;

typedef struct __attribute__((packed)) MapEntity_Itembox { u8 x; u8 y; u8 index; } MapEntity_Itembox;




  ;

typedef struct __attribute__((packed)) MapEntity_Ring { u8 x; u8 y; } MapEntity_Ring;



  ;

typedef struct {
               MapEntity *me;
               u16 regionX;
               u16 regionY;
               u8 meX;
               u8 id;
} SpriteBase;


typedef struct {
    SpriteBase base;
    Sprite s;
} EnemyBase;
# 8 "src/game/bosses/boss_3.c" 2
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
# 9 "src/game/bosses/boss_3.c" 2
# 1 "include/game/bosses/boss_3.h" 1
# 10 "include/game/bosses/boss_3.h"
extern void CreateEggTotem(void);
extern void EggTotemMove(s32, s32);
# 10 "src/game/bosses/boss_3.c" 2
# 1 "include/game/bosses/eggmobile_escape_sequence.h" 1





void CreateEggmobileEscapeSequence(s16 x, s16 y, u32 spriteFlags);
# 11 "src/game/bosses/boss_3.c" 2
# 1 "include/game/stage/boss_results_transition.h" 1





extern void InitHBlankBgOffsets(u16);
extern void sub_802EF68(s16 p0, s16 p1, u8 p2);

extern const u16 gUnknown_080D6DE4[][2];
# 12 "src/game/bosses/boss_3.c" 2
# 1 "include/game/parameters/bosses.h" 1
# 13 "src/game/bosses/boss_3.c" 2




# 1 "include/game/save.h" 1







# 1 "include/game/stage/player_controls.h" 1





struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);
# 9 "include/game/save.h" 2
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
# 18 "src/game/bosses/boss_3.c" 2
# 1 "include/game/stage/screen_shake.h" 1




# 1 "include/task.h" 1
# 6 "include/game/stage/screen_shake.h" 2

struct Task *CreateScreenShake(u32 p0, u32 p1, u32 p2, u32 p3, u32 flags);
# 19 "src/game/bosses/boss_3.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 21 "src/game/bosses/boss_3.c" 2
# 1 "include/constants/songs.h" 1
# 22 "src/game/bosses/boss_3.c" 2


typedef struct {
               s32 qWorldX;
               s32 qWorldY;
               s16 qUnk8;
               s16 qUnkA;
               u16 qUnkC;
               s16 unkE;
               u16 unk10;
               u8 unk12;
               u8 unk13;
               u8 unk14;
               u8 unk15;
               u8 unk16;
               s8 unk17;
               u8 unk18;
               u8 filler19[0x3];
} Totem3C;

typedef struct {
               s32 qWorldX;
               s32 qWorldY;
               s16 unk8;
               s16 unkA;
               Vec2_32 qWheelPos[3];
               s16 unk24[3][2];
               s16 unk30;
               u8 lives;
               u8 unk33;
               u8 unk34;
               u8 unk35;
               u8 unk36;
               u8 unk37;
               u8 unk38;
               u8 unk39;
               u8 unk3A;
               u8 unk3B;
               Totem3C unk3C[3];
               s32 qUnk90;
               s32 qUnk94;
               s16 qUnk98;
               s16 qUnk9A;
               s32 qUnk9C;
               s32 qUnkA0;
               s16 qUnkA4;
               s16 qUnkA6;
               s32 qUnkA8;
               s32 qUnkAC;
               s16 qUnkB0;
               s16 qUnkB2;
               s32 unkB4;
               s32 qUnkB8;
               s32 qUnkBC;
               Sprite2 sprC0;
               Sprite sprWheels[3];
                Sprite3 sprPlatform[3];
                Sprite sprBulletLauncher[2];
                Sprite sprPilot;
                Sprite sprTails;
                Sprite sprTailsHook;
                Sprite sprBodyEnergy;
                Sprite sprCart;
                void *tilesBullet;
} EggTotem;

typedef struct {
               s32 qScreenX;
               s32 qScreenY;
               s16 qDX;
               s16 qDY;
               EggTotem *totem;
               Sprite s;
} EggTotemBullet;

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 padding6;
} EggTotemDataA;

static void Task_803F3E8(void);
static void sub_803F4B8(EggTotem *);
static void sub_803F5E0(EggTotem *);
static void sub_803F698(EggTotem *);
static bool32 sub_803F878(EggTotem *totem);
static void sub_803FB88(EggTotem *);
void sub_803FC14(EggTotem *);
void sub_803FF44(EggTotem *);
static bool32 sub_8040B30(EggTotem *totem, u8 i);
static void sub_804063C(EggTotem *);
static void sub_80407A4(EggTotem *);
static void sub_80408C4(EggTotem *);
static void sub_8040A00(EggTotem *);
static void sub_8040D74(EggTotem *);
static void sub_8040E78(EggTotem *);
static void sub_8040F14(EggTotem *);
static void Task_80411CC(void);
static void Task_CallTaskDestroyTotem(void);
static void Totem_UpdateWorldPos(EggTotem *);
static void sub_8041264(EggTotem *);
static void sub_80412B4(EggTotem *);
static void Task_EggTotemMain(void);
static void Task_8041138(void);
static void CreateEggTotemBullet(EggTotem *totem, s32 qX, s32 qY, u16 qSpeed);
static void TaskDestructor_EggTotemMain(struct Task *t);
static void Task_EggTotemBullet(void);

const TileInfo sTileInfoWheels[] = {
    { 16, 652, 0 },
    { 16, 653, 0 },
    { 4, 654, 0 },
};

const TileInfo sTileInfoBulletLauncher[] = {
    { 6, 657, 0 },
    { 3, 657, 1 },
};

const u8 sWheelsOamOrderIds[] = { 21, 25, 24 };

const s16 gUnknown_080D7BDC[3] = { ((s32)((22)*256)), ((s32)((13)*256)), -((s32)((16)*256)) };

const s16 sTotemDiscYs[3] = { -((s32)((32)*256)), -((s32)((48)*256)), -((s32)((64)*256)) };

const EggTotemDataA gUnknown_080D7BE8[] = {
    { 0x1, 0x200, 0x200, 0 }, { 0x20, 0, 0, 0 }, { 0x40, 0, 0x100, 0 }, { 0x3c, 0, 0, 0 }, { 0x1, 0x200, 0x100, 0 },
    { 0x3f, 0, 0x100, 0 }, { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0x1, 0x200, 0x280, 0 }, { 0x20, 0, 0, 0 },
    { 0x60, 0, 0x140, 0 }, { 0x3c, 0, 0, 0 }, { 0x1, 0x200, 0x140, 0 }, { 0x5f, 0, 0x140, 0 }, { 0x20, 0, 0, 0 },
    { 0, 0, 0, 0 }, { 0x1, 0x200, 0x280, 0 }, { 0x20, 0, 0, 0 }, { 0x80, 0, 0x140, 0 }, { 0x3c, 0, 0, 0 },
    { 0x1, 0x200, 0x140, 0 }, { 0x7f, 0, 0x140, 0 }, { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0x1, 0x200, 0x200, 0 },
    { 0x20, 0, 0, 0 }, { 0x80, 0, 0x100, 0 }, { 0x3c, 0, 0, 0 }, { 0x1, 0x200, 0x100, 0 }, { 0x7f, 0, 0x100, 0 },
    { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0x1, 0x200, 0x190, 0 }, { 0x20, 0, 0, 0 }, { 0x80, 0, 0x90, 0 },
    { 0x40, 0x8, 0xc8, 0 }, { 0x80, 0, 0x90, 0 }, { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0x1, 0x200, 0x190, 0 },
    { 0x20, 0, 0, 0 }, { 0x80, 0, 0x120, 0 }, { 0x40, 0x3f8, 0xca, 0 }, { 0x80, 0, 0x120, 0 }, { 0x20, 0, 0, 0 },
    { 0, 0, 0, 0 }, { 0x1, 0x200, 0x190, 0 }, { 0x20, 0, 0, 0 }, { 0x40, 0, 0xb8, 0 }, { 0x80, 0, 0, 0 },
    { 0x1, 0x100, 0, 0 }, { 0x14, 0, 0xc8, 0 }, { 0x80, 0, 0, 0 }, { 0x1, 0x100, 0, 0 }, { 0x40, 0, 0xb8, 0 },
    { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0x1, 0x200, 0x190, 0 }, { 0x20, 0, 0, 0 }, { 0xc0, 0, 0xb8, 0 },
    { 0x1, 0x300, 0, 0 }, { 0x14, 0, 0xd0, 0 }, { 0x1, 0x300, 0, 0 }, { 0xc0, 0, 0xb8, 0 }, { 0x20, 0, 0, 0 },
    { 0, 0, 0, 0 }, { 0x1, 0x200, 0x1b0, 0 }, { 0x20, 0, 0, 0 }, { 0xc0, 0, 0xd8, 0 }, { 0x1, 0x200, 0xd8, 0 },
    { 0x96, 0, 0, 0 }, { 0xbf, 0, 0xd8, 0 }, { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0x1, 0x200, 0x190, 0 },
    { 0x20, 0, 0, 0 }, { 0xc0, 0, 0x80, 0 }, { 0x1, 0x200, 0x80, 0 }, { 0x96, 0, 0, 0 }, { 0xbf, 0, 0x80, 0 },
    { 0x20, 0, 0, 0 }, { 0, 0, 0, 0 },
};

const EggTotemDataA *const gUnknown_080D7E78[10] = {
    &gUnknown_080D7BE8[0 * 8], &gUnknown_080D7BE8[1 * 8], &gUnknown_080D7BE8[2 * 8], &gUnknown_080D7BE8[3 * 8],
    &gUnknown_080D7BE8[4 * 8], &gUnknown_080D7BE8[5 * 8 - 1], &gUnknown_080D7BE8[6 * 8 - 2], &gUnknown_080D7BE8[7 * 8 + 1],
    &gUnknown_080D7BE8[8 * 8 + 2], &gUnknown_080D7BE8[9 * 8 + 2],
};

const u8 gUnknown_080D7EA0[0x34]
    = { 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x02, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x01,
        0x01, 0x00, 0x02, 0x01, 0x01, 0x02, 0x01, 0x02, 0x02, 0x01, 0x00, 0x03, 0x01, 0x01, 0x03, 0x01, 0x02, 0x03,
        0x02, 0x00, 0x04, 0x02, 0x05, 0x02, 0x01, 0x06, 0x02, 0x07, 0x02, 0x00, 0x08, 0x01, 0x09, 0x00 };

const u8 *const gUnknown_080D7ED4[] = {
    &gUnknown_080D7EA0[0 * 3], &gUnknown_080D7EA0[1 * 3], &gUnknown_080D7EA0[2 * 3], &gUnknown_080D7EA0[3 * 3],
    &gUnknown_080D7EA0[4 * 3], &gUnknown_080D7EA0[5 * 3], &gUnknown_080D7EA0[6 * 3], &gUnknown_080D7EA0[7 * 3],
    &gUnknown_080D7EA0[8 * 3], &gUnknown_080D7EA0[9 * 3], &gUnknown_080D7EA0[10 * 3], &gUnknown_080D7EA0[11 * 3],
    &gUnknown_080D7EA0[12 * 3], &gUnknown_080D7EA0[13 * 3 + 0x2], &gUnknown_080D7EA0[14 * 3 + 0x4],
};

const s8 gUnknown_080D7F10[3] = { 14, 14, 8 };

const s16 gUnknown_080D7F14[2][16u] = {
    INCBIN_U16("graphics/boss_3_a.gbapal"),
    INCBIN_U16("graphics/boss_3_b.gbapal"),
};

void CreateEggTotem(void)
{

    s32 temp;

    struct Task *t;
    EggTotem *totem;
    Sprite *s;
    u8 i;
    void *tiles;

    gPlayer.stoodObj = ((void *)0);
    gPlayer.moveState &= ~0x00000008;
    gPlayer.moveState |= 0x00200000;

    sub_8039ED4();

    gPseudoRandom = gStageTime;

    t = TaskCreate(Task_EggTotemMain, sizeof(EggTotem), 0x4000, 0, TaskDestructor_EggTotemMain);
    totem = (void *)(0x03000000 + ((t)->data));

    if ((gDifficultyLevel != 0 && gGameMode != 2)) {
        totem->lives = 6;
    } else {
        totem->lives = 8;
    }

    if (((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {
        totem->lives = totem->lives /= 2u;
    }

    if (((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {

        totem->qWorldX = ((s32)((13714)*256));
        totem->qWorldY = ((s32)((170)*256));

        for (i = 0; i < (sizeof(totem->qWheelPos) / sizeof((totem->qWheelPos)[0])); i++) {
            totem->qWheelPos[i].x = ((s32)((13714)*256));
            totem->qWheelPos[i].y = ((s32)((170)*256));
        }


        for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
            totem->unk3C[i].qWorldX = ((s32)((13714)*256));
            totem->unk3C[i].qWorldY = ((s32)((170)*256)) + sTotemDiscYs[i];

            totem->unk3C[i].qUnk8 = 0;
            totem->unk3C[i].qUnkA = 0;
            totem->unk3C[i].qUnkC = ((s32)((3)*256));
            totem->unk3C[i].unk12 = 0;
            totem->unk3C[i].unk13 = 0;
            totem->unk3C[i].unkE = 0;
            totem->unk3C[i].unk10 = 0;


            if (((gCurrentLevel) == ((7)*(3 + 1)) + (0))) {
                totem->unk3C[i].unk14 = 1;
            }

            totem->unk3C[i].unk17 = 0;
            totem->unk3C[i].unk15 = 0;
            totem->unk3C[i].unk16 = 0;
        }
    } else {

        totem->qWorldX = ((s32)((680)*256));
        totem->qWorldY = ((s32)((170)*256));

        for (i = 0; i < (sizeof(totem->qWheelPos) / sizeof((totem->qWheelPos)[0])); i++) {
            totem->qWheelPos[i].x = ((s32)((680)*256));
            totem->qWheelPos[i].y = ((s32)((170)*256));
        }


        for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
            totem->unk3C[i].qWorldX = ((s32)((680)*256));
            totem->unk3C[i].qWorldY = ((s32)((170)*256)) + sTotemDiscYs[i];

            totem->unk3C[i].qUnk8 = 0;
            totem->unk3C[i].qUnkA = 0;
            totem->unk3C[i].qUnkC = ((s32)((3)*256));
            totem->unk3C[i].unk12 = 0;
            totem->unk3C[i].unk13 = 0;
            totem->unk3C[i].unkE = 0;
            totem->unk3C[i].unk10 = 0;

            if ((gDifficultyLevel != 0 && gGameMode != 2)) {
                totem->unk3C[i].unk14 = 1;
            } else {
                totem->unk3C[i].unk14 = 3;
            }

            totem->unk3C[i].unk17 = 0;
            totem->unk3C[i].unk15 = 0;
            totem->unk3C[i].unk16 = 0;
        }
    }

    totem->unk8 = ((s32)((5)*256));
    totem->unkA = 0;
    totem->unk33 = 240;
    totem->unk30 = 0;
    totem->unk34 = 0;
    totem->unk35 = 0;
    totem->unk36 = 0;

    totem->unkB4 = 120;
    totem->tilesBullet = VramMalloc(4 * 2);

    s = &totem->sprC0.s;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(10 * 12);
    tiles = s->graphics.dest + 32 * 32;
    s->graphics.anim = 651; s->variant = 0; s->oamFlags = ((23) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;

    s = &totem->sprCart;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = tiles;
    tiles += 36 * 32;
    s->graphics.anim = 650; s->variant = 0; s->oamFlags = ((23) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;

    s = &totem->sprBodyEnergy;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = tiles;
    tiles += 68 * 32;
    s->graphics.anim = 660; s->variant = 0; s->oamFlags = ((23) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;

    for (i = 0; i < (sizeof(totem->sprWheels) / sizeof((totem->sprWheels)[0])); i++) {
        s = &totem->sprWheels[i];
        s->x = 0;
        s->y = 0;
        s->graphics.dest = VramMalloc(sTileInfoWheels[i].numTiles); s->graphics.anim = sTileInfoWheels[i].anim; s->variant = sTileInfoWheels[i].variant; s->oamFlags = ((sWheelsOamOrderIds[i]) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;
    }


    for (i = 0; i < (sizeof(totem->sprPlatform) / sizeof((totem->sprPlatform)[0])); i++) {
        s = &totem->sprPlatform[i].s;
        s->x = 0;
        s->y = 0;
        s->graphics.dest = VramMalloc(10 * 3); s->graphics.anim = 655; s->variant = 0; s->oamFlags = ((20) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((2) << (12)) | (0));;;
    }


    for (i = 0; i < (sizeof(totem->sprBulletLauncher) / sizeof((totem->sprBulletLauncher)[0])); i++) {
        s = &totem->sprBulletLauncher[i];
        s->x = 0;
        s->y = 0;


        s->graphics.dest = VramMalloc(sTileInfoBulletLauncher[i].numTiles);
        s->graphics.anim = sTileInfoBulletLauncher[i].anim;
        temp = ((int)((float)(1.0)*0x10));
        s->variant = sTileInfoBulletLauncher[i].variant;
        s->oamFlags = ((21) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((2) << (12));




    }

    s = &totem->sprPilot;
    s->x = 0;
    s->y = 0;


    s->graphics.dest = VramMalloc(12);
    s->graphics.anim = 629;
    s->variant = 0;
    s->oamFlags = ((22) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = temp;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((2) << (12));





    if (!((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && gSelectedCharacter == CHARACTER_SONIC
        && gLoadedSaveGame->unlockedLevels[CHARACTER_SONIC] <= gCurrentLevel) {

        s = &totem->sprTails;
        s->x = 0;
        s->y = 0;


        s->graphics.dest = VramMalloc(5 * 6);
        s->graphics.anim = 222;
        s->variant = 0;
        s->oamFlags = ((20) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = temp;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((2) << (12));




        s = &totem->sprTailsHook;
        s->x = 0;
        s->y = 0;


        s->graphics.dest = VramMalloc(4 * 5);
        s->graphics.anim = 656;
        s->variant = 0;
        s->oamFlags = ((21) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = temp;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((2) << (12));




    } else {
        totem->sprTails.graphics.dest = ((void *)0);
        totem->sprTailsHook.graphics.dest = ((void *)0);
    }

    gActiveBossTask = t;
}

void Task_803F3E8(void)
{
    EggTotem *totem = (void *)(0x03000000 + ((gCurTask)->data));

    if (totem->unk33 > 0) {
        totem->unk33--;
    } else {
        totem->unk33 = 80;
        sub_804063C(totem);
    }

    sub_803FB88(totem);
    sub_80407A4(totem);
    sub_8041264(totem);
    sub_80408C4(totem);
    sub_8040A00(totem);
    sub_803F5E0(totem);
    sub_8040E78(totem);
    sub_803F698(totem);
    sub_8040F14(totem);

    if (totem->lives == 0) {
        Player_DisableInputAndBossTimer();

        if (gPlayer.stoodObj != ((void *)0) || gPlayer.moveState & 0x00000008) {
            gPlayer.stoodObj = ((void *)0);

            gPlayer.moveState &= ~0x00000008;
            gPlayer.moveState |= 0x00000002;
        }

        sub_803F4B8(totem);
        totem->unk37 = 0;
        totem->unk38 = 5;
        totem->unk39 = 0;
        totem->unk3A = 0;

        gCurTask->main = Task_8041138;
    }
}

void sub_803F4B8(EggTotem *totem)
{
    u8 i;

    totem->qWheelPos[0].x = totem->qWorldX + gUnknown_080D7BDC[0];
    totem->qWheelPos[0].y = totem->qWorldY - ((s32)((12)*256));

    totem->unk24[0][0] = +((s32)((5)*256));
    totem->unk24[0][1] = -((s32)((3)*256));

    totem->qWheelPos[1].x = totem->qWorldX + gUnknown_080D7BDC[1];
    totem->qWheelPos[1].y = totem->qWorldY - ((s32)((12)*256));

    totem->unk24[1][0] = +((s32)((5)*256));
    totem->unk24[1][1] = -((s32)((3)*256));

    totem->qWheelPos[2].x = totem->qWorldX + gUnknown_080D7BDC[2];
    totem->qWheelPos[2].y = totem->qWorldY - ((s32)((6)*256));

    totem->unk24[2][0] = +((s32)((5)*256));
    totem->unk24[2][1] = -((s32)((3)*256));

    totem->qUnk9C = totem->qWorldX;
    totem->qUnkA0 = totem->qWorldY;
    totem->qUnkA4 = +((s32)((5)*256));
    totem->qUnkA6 = -((s32)((2)*256));

    totem->qUnk90 = totem->qWorldX;
    totem->qUnk94 = totem->qWorldY;
    totem->qUnk98 = +((s32)((5)*256));
    totem->qUnk9A = -((s32)((1)*256));

    totem->qUnkA8 = totem->qWorldX;
    totem->qUnkAC = totem->qWorldY - ((s32)((26)*256));
    totem->qUnkB0 = +((s32)((5)*256));
    totem->qUnkB2 = -((s32)((0)*256));

    for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
        Totem3C *t3c = &totem->unk3C[i];
        t3c->qUnk8 = +((s32)((5)*256));
        t3c->qUnkA = -((s32)((1)*256));
        t3c->unk18 = i * 12 + 1;
    }

    if (totem->sprTails.graphics.dest != ((void *)0)) {
        Sprite *s = &totem->sprTails;

        totem->qUnkB8 = totem->qWorldX - ((s32)((40)*256));
        totem->qUnkBC = totem->qWorldY - ((s32)((98)*256));

        s->graphics.anim = 222;
        s->variant = 1;
    }
}

void sub_803F5E0(EggTotem *totem)
{
    Sprite *s = &totem->sprC0.s;

    s32 worldX = ((int)((totem->qWorldX) >> 8));
    s32 worldY = ((int)((totem->qWorldY) >> 8));

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    Coll_Player_Enemy(s, worldX, worldY, 1, &gPlayer);

    if (Coll_Player_Boss_Attack(s, worldX, worldY, 0, &gPlayer) == 1) {
        sub_8040D74(totem);
    } else if (Coll_Player_Enemy(s, worldX, worldY, 0, &gPlayer) == 1) {
        sub_80412B4(totem);
    }

    Player_UpdateHomingPosition(totem->qWorldX, totem->qWorldY - ((s32)((80.0)*256)));

    if (totem->unk35 == 0) {
        if (Coll_Cheese_Enemy_Attack(s, worldX, worldY, 0, &gPlayer) == 1) {
            sub_8040D74(totem);
        }
    }
}

void sub_803F698(EggTotem *totem)
{
    u8 i;

    Sprite *s = &totem->sprC0.s;
    s->x = ((int)((totem->qWorldX) >> 8)) - gCamera.x;
    s->y = ((int)((totem->qWorldY) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &totem->sprPilot;
    s->x = ((int)((totem->qWorldX) >> 8)) - gCamera.x;
    s->y = ((int)((totem->qWorldY) >> 8)) - gCamera.y - 82;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    for (i = 0; i < (sizeof(totem->sprWheels) / sizeof((totem->sprWheels)[0])); i++) {
        s = &totem->sprWheels[i];
        s->x = ((int)((totem->qWheelPos[i].x) >> 8)) - gCamera.x;
        s->y = ((int)((totem->qWheelPos[i].y) >> 8)) - gCamera.y - 14;

        if (i == 2) {
            s->y += 6;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
        Totem3C *t3c = &totem->unk3C[i];
        s = &totem->sprPlatform[i].s;
        s->x = ((int)((t3c->qWorldX) >> 8)) - gCamera.x;
        s->y = ((int)((t3c->qWorldY) >> 8)) - gCamera.y;
        s->animSpeed = (((int)(((gSineTable[(t3c->qUnkC)])) >> 6)) >> 3) + 0x20;

        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (t3c->unk17 != 0) {
            s8 r3;
            s = (t3c->unk14 != 0) ? &totem->sprBulletLauncher[0] : &totem->sprBulletLauncher[1];

            if (t3c->unk17 > 0) {
                r3 = 0;
                (s)->frameFlags &= ~(((1) << (11)));
            } else {
                r3 = -1;
                (s)->frameFlags |= (((1) << (11)));
            }

            s->x = ((int)((t3c->qWorldX) >> 8)) - gCamera.x;
            s->y = ((int)((t3c->qWorldY) >> 8)) - gCamera.y + t3c->unk17 + r3;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }

    if (totem->sprTails.graphics.dest != ((void *)0)) {
        s = &totem->sprTailsHook;

        s->x = ((int)((totem->qWorldX) >> 8)) - gCamera.x - 16;
        s->y = ((int)((totem->qWorldY) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s = &totem->sprTails;
        s->x = ((int)((totem->qWorldX) >> 8)) - gCamera.x - 40;
        s->y = ((int)((totem->qWorldY) >> 8)) - gCamera.y - 98;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

bool32 sub_803F878(EggTotem *totem)
{
    Sprite *s;
    u8 i;
    bool32 result;

    for (i = 0; i < (sizeof(totem->sprWheels) / sizeof((totem->sprWheels)[0])); i++) {
        s = &totem->sprWheels[i];

        s->x = ((int)((totem->qWheelPos[i].x) >> 8)) - gCamera.x;
        s->y = ((int)((totem->qWheelPos[i].y) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    result = 0;

    if (totem->unk37 == 0) {
        s = &totem->sprBodyEnergy;
        s->x = ((int)((totem->qUnkA8) >> 8)) - gCamera.x;
        s->y = ((int)((totem->qUnkAC) >> 8)) - gCamera.y;

        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            result = 1;
            totem->unk37 = 1;
        }

        DisplaySprite(s);
    }

    s = &totem->sprCart;
    s->x = ((int)((totem->qUnk9C) >> 8)) - gCamera.x;
    s->y = ((int)((totem->qUnkA0) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &totem->sprC0.s;
    s->graphics.anim = 649;
    s->variant = 0;
    s->prevVariant = -1;
    s->x = ((int)((totem->qUnk90) >> 8)) - gCamera.x;
    s->y = ((int)((totem->qUnk94) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (totem->unk3A == 0) {
        s = &totem->sprPilot;
        s->x = ((int)((totem->qUnk90) >> 8)) - gCamera.x;
        s->y = ((int)((totem->qUnk94) >> 8)) - gCamera.y - 81;

        if (s->x < 50) {
            CreateEggmobileEscapeSequence(((int)((totem->qUnk90) >> 8)) - gCamera.x - 4, ((int)((totem->qUnk94) >> 8)) - gCamera.y - 79, 0x2000);

            totem->unk3A = 1;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    for (i = 0; i < (sizeof(totem->sprPlatform) / sizeof((totem->sprPlatform)[0])); i++) {
        Totem3C *t3c = &totem->unk3C[i];

        s = &totem->sprPlatform[i].s;
        s->x = ((int)((t3c->qWorldX) >> 8)) - gCamera.x;
        s->y = ((int)((t3c->qWorldY) >> 8)) - gCamera.y;
        DisplaySprite(s);
    }

    if (totem->sprTails.graphics.dest != ((void *)0)) {
        s = &totem->sprTails;
        s->x = ((int)((totem->qUnkB8) >> 8)) - gCamera.x;
        s->y = ((int)((totem->qUnkBC) >> 8)) - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    return result;
}

void EggTotemMove(s32 dx, s32 dy)
{
    EggTotem *totem = (void *)(0x03000000 + ((gActiveBossTask)->data));
    u8 i;

    totem->qWorldX += dx;
    totem->qWorldY += dy;

    for (i = 0; i < (sizeof(totem->qWheelPos) / sizeof((totem->qWheelPos)[0])); i++) {
        totem->qWheelPos[i].x += dx;
        totem->qWheelPos[i].y += dy;
    }

    for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
        totem->unk3C[i].qWorldX += dx;
        totem->unk3C[i].qWorldY += dy;
    }

    totem->qUnk9C += dx;
    totem->qUnkA0 += dy;

    totem->qUnk90 += dx;
    totem->qUnk94 += dy;

    totem->qUnkA8 += dx;
    totem->qUnkAC += dy;

    totem->qUnkB8 += dx;
    totem->qUnkBC += dy;
}

void sub_803FB88(EggTotem *totem)
{
    s32 discY;
    s32 res;
    u8 i;

    Totem_UpdateWorldPos(totem);

    discY = 0;

    for (i = 0; i < (sizeof(totem->qWheelPos) / sizeof((totem->qWheelPos)[0])); i++) {
        totem->qWheelPos[i].x = totem->qWorldX + gUnknown_080D7BDC[i];

        if (i == 0) {
            totem->qWheelPos[i].y += 6;
        }

        res = totem->qWheelPos[i].y;
        discY += res;

        totem->qWheelPos[i].y += ((s32)((sub_801F100(((int)((res) >> 8)) - 1, ((int)((totem->qWheelPos[i].x) >> 8)), 1, +8, sub_801EC3C) + 1)*256));
    }

    res = Div(discY, 3) - ((s32)((2.0)*256));
    totem->unk30 = totem->qWorldY - res;
    totem->qWorldY = res;
}

void sub_803FC14(EggTotem *totem)
{
    u8 i, j;
    ExplosionPartsInfo info;
    s32 divRes;

    for (i = 0; i < (sizeof(totem->qWheelPos) / sizeof((totem->qWheelPos)[0])); i++) {
        totem->qWheelPos[i].x += totem->unk24[i][0];
    }

    totem->qUnk9C += totem->qUnkA4;
    totem->qUnk90 += totem->qUnk98;

    if (Mod(gStageTime, 14) == 0) {
        s32 rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        info.spawnX = (((int)((totem->qUnk90) >> 8)) - gCamera.x) + (rnd % 64u) - 31;

        rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        info.spawnY = ((((int)((totem->qUnk94) >> 8)) - gCamera.y) + (rnd % 32u)) - 75;

        info.velocity = 0;
        info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
        info.speed = ({ ((s32)((5.50)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
        info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
        info.anim = 619;
        info.variant = 0;
        info.unk4 = 0;

        CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
    }


    if (Mod(gStageTime, 13) == 0) {
        s32 rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        info.spawnX = (((int)((totem->qUnk9C) >> 8)) - gCamera.x) + (rnd % 64u) - 31;

        rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        info.spawnY = ((((int)((totem->qUnkA0) >> 8)) - gCamera.y) + (rnd % 32u)) - 0x10;

        info.velocity = 0;
        info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });

        info.speed = ({ ((s32)((5.50)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
        info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
        info.anim = 619;
        info.variant = 0;
        info.unk4 = 0;

        CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
    }


    totem->qUnkA8 += totem->qUnkB0;

    for (i = 0; i < 3; i++) {


        Totem3C *t3c = &totem->unk3C[i];

        if (t3c->unk18 == 0) {
            t3c->qUnkA += 0x20;
        } else if (--t3c->unk18 == 0) {



            for (j = 0; j < 4; j++) {
                s32 rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                info.spawnX = ((((int)((t3c->qWorldX) >> 8)) - gCamera.x) + (rnd % 64u)) - 31;
                rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                info.spawnY = ((((int)((t3c->qWorldY) >> 8)) - gCamera.y) + (rnd % 8u)) - 3;
                info.velocity = 0;
                info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
                info.speed = ({ ((s32)((5.50)*256)) - ((s32)((1.5)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
                info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
                info.anim = 619;
                info.variant = 0;
                info.unk4 = 0;

                CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
            }
        }


        t3c->qWorldX += t3c->qUnk8;
        t3c->qWorldY += t3c->qUnkA;

        divRes = sub_801F100(((int)((t3c->qWorldY) >> 8)) + 3, ((int)((t3c->qWorldX) >> 8)), 1, +8, sub_801EC3C);
        if (divRes < 0) {
            s32 v;
            t3c->qWorldY += ((s32)((divRes)*256));


            v = t3c->qUnkA * 35;
            t3c->qUnkA = Div(-(v * 2), 100);

            if (t3c->qUnk8 > 0) {
                t3c->qUnk8 -= ((s32)((1.0)*256));
            }
        }
    }
}

void sub_803FF44(EggTotem *totem)
{
    u8 i, j;
    s32 res;
    ExplosionPartsInfo info;

    if (totem->unk38 == 0) {

        for (i = 0; i < 3; i++) {
            totem->unk24[i][1] += ((s32)((0.125)*256));
            totem->qWheelPos[i].x += totem->unk24[i][0];
            totem->qWheelPos[i].y += totem->unk24[i][1];

            res = sub_801F100(((int)((totem->qWheelPos[i].y) >> 8)) + gUnknown_080D7F10[i] - 1, ((int)((totem->qWheelPos[i].x) >> 8)), 1, +8, sub_801EC3C);

            if (res < 0) {

                totem->qWheelPos[i].y += ((s32)((res)*256));

                totem->unk24[i][1] = Div(-(totem->unk24[i][1] * 80), 100);

                if (totem->unk24[i][1] > -((s32)((1.0)*256))) {
                    totem->unk24[i][1] = 0;
                }

                if (totem->unk24[i][0] > 0) {
                    totem->unk24[i][0] -= 0x20;
                    totem->unk24[i][0] -= i * 4;
                }
            }

        }


        totem->qUnkA6 += 0x20;
        totem->qUnk9C += totem->qUnkA4;
        totem->qUnkA0 += totem->qUnkA6;

        res = sub_801F100(((int)((totem->qUnkA0) >> 8)) - 8, ((int)((totem->qUnk9C) >> 8)), 1, +8, sub_801EC3C);

        if (res < 0) {
            totem->qUnkA0 += ((s32)((res)*256));

            totem->qUnkA6 = Div(-(totem->qUnkA6 * 80), 100);

            if (totem->qUnkA6 > -((s32)((1.0)*256))) {
                totem->qUnkA6 = 0;
            } else if (totem->qUnkA6 < -((s32)((1.4375)*256))) {
                CreateScreenShake(0x400, 0x20, 0x80, 0x14, 0x80 | 0x3);
            }

            if (totem->qUnkA4 > 0) {
                totem->qUnkA4 -= ((s32)((0.1875)*256));
            }
        }

        totem->qUnk90 = totem->qUnk9C;
        totem->qUnk94 = totem->qUnkA0 + ((s32)((50)*256));

        if (Mod(gStageTime, 6) == 0) {
            s32 rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            info.spawnX = ((int)((totem->qUnk9C) >> 8)) - gCamera.x + (rnd32 % 64u) - 31;

            rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            info.spawnY = ((int)((totem->qUnkA0) >> 8)) - gCamera.y + (rnd32 % 64u) - 45;

            info.velocity = 0;
            info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
            info.speed = ({ ((s32)((5.50)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
            info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
            info.anim = 619;
            info.variant = 0;
            info.unk4 = 0;

            CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
        }
    } else {


        for (i = 0; i < 3; i++) {
            totem->qWheelPos[i].x += totem->unk24[i][0];
        }

        totem->qUnk9C += totem->qUnkA4;
        totem->qUnk9A += ((s32)((0.125)*256));
        totem->qUnk90 += totem->qUnk98;
        totem->qUnk94 += totem->qUnk9A;

        res = sub_801F100(((int)((totem->qUnk94) >> 8)) - 50, ((int)((totem->qUnk90) >> 8)), 1, +8, sub_801EC3C);

        if (res < 0) {

            if (--totem->unk38 == 0) {
                for (j = 0; j < 9; j++) {
                    s32 rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                    info.spawnX = ((int)((totem->qUnk9C) >> 8)) - gCamera.x + (rnd32 % 64u) - 31;

                    rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                    info.spawnY = ((int)((totem->qUnkA0) >> 8)) - gCamera.y + (rnd32 % 64u) - 45;

                    info.velocity = 0;

                    info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
                    info.speed = ({ ((s32)((6.0)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
                    info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
                    info.anim = 619;
                    info.variant = 0;
                    info.unk4 = 0;

                    CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
                }
            }

            if (totem->unk38 >= 3) {
                CreateScreenShake(0x400, 0x20, 0x80, 0x14, 0x80 | 0x3);
            }


            totem->qUnk94 += ((s32)((res)*256));


            totem->qUnk9A = Div(-(totem->qUnk9A * 60), 100);
        }


        if (Mod(gStageTime, 14) == 0) {
            s32 rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            info.spawnX = ((int)((totem->qUnk90) >> 8)) - gCamera.x + (rnd32 % 64u) - 31;

            rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            info.spawnY = ((int)((totem->qUnk94) >> 8)) - gCamera.y + (rnd32 % 32u) - 75;

            info.velocity = 0;

            info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
            info.speed = ({ ((s32)((5.50)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
            info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
            info.anim = 619;
            info.variant = 0;
            info.unk4 = 0;

            CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
        }


        if (Mod(gStageTime, 13) == 0) {
            s32 rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            info.spawnX = ((int)((totem->qUnk9C) >> 8)) - gCamera.x + (rnd32 % 64u) - 31;

            rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
            info.spawnY = ((int)((totem->qUnkA0) >> 8)) - gCamera.y + (rnd32 % 32u) - 16;

            info.velocity = 0;

            info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
            info.speed = ({ ((s32)((5.50)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
            info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
            info.anim = 619;
            info.variant = 0;
            info.unk4 = 0;

            CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
        }
    }


    for (i = 0; i < 3; i++) {
        Totem3C *t3c = &totem->unk3C[i];

        if (t3c->unk18 == 0) {
            t3c->qUnkA += ((s32)((0.125)*256));
        } else if (--t3c->unk18 == 0) {
            for (j = 0; j < 4; j++) {
                s32 rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                info.spawnX = ((int)((t3c->qWorldX) >> 8)) - gCamera.x + (rnd32 % 64u) - 31;

                rnd32 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                info.spawnY = ((int)((t3c->qWorldY) >> 8)) - gCamera.y + (rnd32 % 8u) - 3;

                info.velocity = 0;

                info.rotation = ({ 1000 - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 64u); });
                info.speed = ({ ((s32)((4.0)*256)) - (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 512u); });
                info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
                info.anim = 619;
                info.variant = 0;
                info.unk4 = 0;

                CreateBossParticleWithExplosionUpdate(&info, &totem->unk39);
            }
        }

        t3c->qWorldX += t3c->qUnk8;
        t3c->qWorldY += t3c->qUnkA;

        res = sub_801F100(((int)((t3c->qWorldY) >> 8)) + 4, ((int)((t3c->qWorldX) >> 8)), 1, +8, sub_801EC3C);
        if (res < 0) {
            s32 v;
            t3c->qWorldY += ((s32)((res)*256));


            v = t3c->qUnkA * 35;
            t3c->qUnkA = Div(-(v * 2), 100);

            if (t3c->qUnk8 > 0) {
                t3c->qUnk8 -= ((s32)((1.0)*256));
            }
        }
    }
}

void sub_804063C(EggTotem *totem)
{
    Totem3C *t3c;
    s8 r2;
    const u8 *bp;
    s8 r6;

    u8 rnd = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
    s8 v = Mod(rnd, 3);
    s8 r4 = gStageTime % 4u;

    t3c = &totem->unk3C[v];

    if (t3c->unk13 == 0) {
        m4aSongNumStart(246);

        r2 = r4 * 3 + v;

        if ((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 2u) != 0) {
            if ((v == 0) && (totem->unk3C[3 - 1].unk13 == 0)) {
                r2 = 12;
            } else if ((v == 1) && (totem->unk3C[3 - 1].unk13 == 0)) {
                r2 = 13;
            } else if ((v == 0) && (totem->unk3C[3 - 2].unk13 == 0)) {
                r2 = 14;
            }
        }

        bp = gUnknown_080D7ED4[r2];
        r6 = *bp++;

        while ((--r6) >= 0) {
            const EggTotemDataA *totemDataA;
            v = *bp++;
            r4 = *bp++;
            totemDataA = gUnknown_080D7E78[r4];
            t3c = &totem->unk3C[v];
            t3c->unk13 = 1;
            t3c->unk12 = r4;
            t3c->unk10 = totemDataA->unk2;
            totemDataA++;

            t3c->unkE = totemDataA->unk0;
            t3c->qUnk8 = (((gSineTable[(t3c->unk10) + 256]) * totemDataA->unk4) >> 14);
            t3c->qUnkA = (((gSineTable[(t3c->unk10)]) * totemDataA->unk4) >> 14);
            t3c->qUnkC = ((s32)((3)*256));
        }
    }
}

void sub_80407A4(EggTotem *totem)
{
    u8 i;

    for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
        Totem3C *t3c = &totem->unk3C[i];

        if (t3c->unk13 != 0) {
            const EggTotemDataA *ptr = gUnknown_080D7E78[t3c->unk12];
            ptr = &ptr[t3c->unk13];

            if (--t3c->unkE != 0) {
                t3c->unk10 = ({ s16 clamped = (t3c->unk10 + ptr->unk2) & (1024 - 1); clamped; });
                t3c->qUnk8 = (((gSineTable[(t3c->unk10) + 256]) * ptr->unk4) >> 14);
                t3c->qUnkA = (((gSineTable[(t3c->unk10)]) * ptr->unk4) >> 14);

                if (ptr->unk0 == 32 && ptr->unk2 == 0 && ptr->unk4 == 0) {

                    t3c->qUnkC = ({ s16 clamped = (t3c->qUnkC + ((s32)((0.0625)*256))) & (1024 - 1); clamped; });
                }
            } else if ((++ptr)->unk0 == 0) {
                t3c->unkE = 0;
                t3c->unk13 = 0;
                t3c->unk12 = 0;
                t3c->unk10 = 0;
                t3c->qUnk8 = 0;
                t3c->qUnkA = 0;
            } else {
                t3c->unk13++;
                t3c->unkE = ptr->unk0;

                t3c->unk10 = ({ s16 clamped = (t3c->unk10 + ptr->unk2) & (1024 - 1); clamped; });
                t3c->qUnk8 = (((gSineTable[(t3c->unk10) + 256]) * ptr->unk4) >> 14);
                t3c->qUnkA = (((gSineTable[(t3c->unk10)]) * ptr->unk4) >> 14);
            }

            t3c->qWorldX += ((s32)((5)*256)) + t3c->qUnk8;
            t3c->qWorldY += t3c->qUnkA - totem->unk30;
        }
    }
}

void sub_80408C4(EggTotem *totem)
{
    u8 i;

    for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
        Totem3C *t3c = &totem->unk3C[i];

        if (t3c->unk13 != 0) {
            const EggTotemDataA *ptr = gUnknown_080D7E78[t3c->unk12];
            ptr = &ptr[t3c->unk13];

            if (ptr->unk0 == 60 && ptr->unk2 == 0 && ptr->unk4 == 0) {

                if ((u16)t3c->unkE == 60) {
                    if (gPlayer.qWorldY < t3c->qWorldY) {
                        t3c->unk15 = 1;
                    } else {
                        t3c->unk15 = 0;
                    }

                    t3c->unk16 |= 0x80;
                }

                if ((u16)t3c->unkE >= 48) {
                    if (t3c->unk15 != 0) {
                        t3c->unk17--;
                    } else {
                        t3c->unk17++;
                    }
                } else if ((u16)t3c->unkE == 30 && t3c->unk14 != 0) {
                    if (t3c->unk16 & 0x80) {
                        if ((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) % 2u) == 0) {
                            s32 qx = t3c->qWorldX;
                            s32 qy = t3c->qWorldY + ((s32)((t3c->unk17)*256));
                            qy -= ((s32)((t3c->unk15 * 3)*256));
                            CreateEggTotemBullet(totem, qx, qy, ((s32)((2.0)*256)));
                        }
                    }
                    t3c->unk16 &= ~0x80;
                } else if ((u16)t3c->unkE < 18) {
                    if (t3c->unk17 != 0) {
                        if (t3c->unk15 != 0) {
                            t3c->unk17++;
                        } else {
                            t3c->unk17--;
                        }
                    }
                }

                if ((t3c->unk17 != 0) && (totem->unk36 == 0) && (sub_8040B30(totem, i) << 24 != 0)) {
                    t3c->unk16 &= ~0x80;
                    totem->unk36 = 30;
                }
            }
        }
    }
}

void sub_8040A00(EggTotem *totem)
{
    u8 i;
    Sprite *s;
    Totem3C *t3c;

    if (totem->lives == 0) {
        return;
    }

    for (i = 0; i < 3; i++) {
        u32 coll;
        bool32 r7;

        s = &totem->sprPlatform[i].s;
        t3c = &totem->unk3C[i];

        if (Coll_Player_Enemy(s, ((int)((t3c->qWorldX) >> 8)), ((int)((t3c->qWorldY) >> 8)), 1, &gPlayer) == 0
            && Coll_Player_Enemy(s, ((int)((t3c->qWorldX) >> 8)), ((int)((t3c->qWorldY) >> 8)), 2, &gPlayer) == 0) {

            register Player *p asm("r5");



            u32 moveState = (gPlayer.moveState & 0x00000008);
            s32 x, y;
            r7 = 0;

            if (moveState && (gPlayer.stoodObj == s)) {
                r7 = 1;
            }

            x = ((int)((t3c->qWorldX) >> 8));
            y = ((int)((t3c->qWorldY) >> 8));
            p = &gPlayer;
            coll = Coll_Player_Platform(s, x, y, p);

            if ((p->moveState & 0x00000008) && (coll & 0x00010000)) {
                p->qWorldX += t3c->qUnk8 + ((s32)((5)*256));
                p->qWorldY += ((s32)((2)*256)) + (s16)((s32)((coll)*256));

                if (!r7) {
                    p->qSpeedAirX -= ((s32)((5)*256));
                }
            } else if (r7) {
                gPlayer.moveState &= ~0x00000008;
                gPlayer.stoodObj = ((void *)0);

                if (!(gPlayer.moveState & 0x00000100)) {
                    gPlayer.moveState &= ~0x00000100;
                    gPlayer.moveState |= 0x00000002;
                }
            }
        }
    }
}

bool32 sub_8040B30(EggTotem *totem, u8 i)
{
    ExplosionPartsInfo info, info2;
    Sprite *s;
    Totem3C *t3c;

    bool32 result = 0;


    register s32 val asm("r8");


    s16 t3CX, t3CY;

    if (i > (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0]))) {
        return 0;
    }

    t3c = &totem->unk3C[i];
    if ((t3c->unk14 == 0) || (totem->lives == 0)) {
        return 0;
    }


    s = &totem->sprBulletLauncher[0];
    t3CX = ((int)((t3c->qWorldX) >> 8));
    t3CY = ((int)((t3c->qWorldY) >> 8)) + t3c->unk17;

    if (Coll_Player_Boss_Attack(s, t3CX, t3CY, 0, &gPlayer) == 1) {
        t3c->unk14 -= 1;


        val = 0xFF;


        if (t3c->unk14 == 0) {
            info.spawnX = t3CX - gCamera.x;
            info.spawnY = t3CY - gCamera.y;
            info.velocity = 0;
            info.rotation = ((int)((((double)(337.5)) / 360.0) * 1024));
            info.speed = ((s32)((6.0)*256));
            info.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
            info.anim = 619;
            info.variant = 0;
            info.unk4 = 0;

            CreateBossParticleWithExplosionUpdate(&info, &t3c->unk16);

            {
                s32 divResA, divResB;
                s32 oldScore = gLevelScore;
                gLevelScore += 500;

                divResA = Div(gLevelScore, 50000);
                divResB = Div(oldScore, 50000);

                if ((divResA != divResB) && (gGameMode == 0)) {
                    u16 lives = divResA - divResB;
                    lives += gNumLives;

                    gNumLives = ({
                        if (lives > 255)
                            lives = val;
                        lives;
                    });

                    gMusicManagerState.unk3 = 16;
                }
            }



            m4aSongNumStart(144);
        } else {

            m4aSongNumStart(143);
        }

        result = 1;
    }


    Player_UpdateHomingPosition(((s32)((t3CX)*256)), ((s32)((t3CY)*256)));

    if (Coll_Cheese_Enemy_Attack(s, t3CX, t3CY, 0, &gPlayer) == 1) {
        t3c->unk14--;

        val = 0xFF;

        if (t3c->unk14 == 0) {

            info2.spawnX = t3CX - gCamera.x;
            info2.spawnY = t3CY - gCamera.y;
            info2.velocity = 0;
            info2.rotation = ((int)((((double)(337.5)) / 360.0) * 1024));
            info2.speed = ((s32)((6.0)*256));
            info2.vram = (void *)((u8*)(0x6000000 + 0x10000) + 0x2980);
            info2.anim = 619;
            info2.variant = 0;
            info2.unk4 = 0;

            CreateBossParticleWithExplosionUpdate(&info2, &t3c->unk16);

            {
                s32 divResA, divResB;
                s32 oldScore = gLevelScore;
                gLevelScore += 500;

                divResA = Div(gLevelScore, 50000);
                divResB = Div(oldScore, 50000);

                if ((divResA != divResB) && (gGameMode == 0)) {
                    u16 lives = divResA - divResB;
                    lives += gNumLives;

                    gNumLives = ({
                        if (lives > 255)
                            lives = val;
                        lives;
                    });

                    gMusicManagerState.unk3 = 16;
                }
            }




            m4aSongNumStart(144);

            Coll_Player_Enemy_AdjustSpeed(&gPlayer);
            gCheeseTarget.task->unk15 = 0;
        } else {
            m4aSongNumStart(143);
        }

        result = 1;
    }

    return result;
}

void sub_8040D74(EggTotem *totem)
{
    Sprite *s = &totem->sprPilot;

    if (totem->unk35 == 0) {

        u32 a = totem->lives;

        if (a > 0) {
            totem->lives = a - 1;

            if (((a - 1) % 2u) != 0) {
                m4aSongNumStart(143);
            } else {
                m4aSongNumStart(235);
            }

            totem->unk35 = 30;

            if (totem->lives == 0) {
                s->graphics.anim = 629;
                s->variant = 3;
                { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += 1000; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (1) gMusicManagerState.unk3 = 0x10 | 0x0; } };
            } else {
                s->graphics.anim = 629;
                s->variant = 2;
            }

            s->prevVariant = -1;
        }

        if (!((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && (totem->lives == 4)) {
            gMusicManagerState.unk1 = 0x11;
        }
    }
}

void sub_8040E78(EggTotem *totem)
{
    Sprite *s = &totem->sprPilot;

    if (totem->unk35 > 0) {
        totem->unk34 = 0;

        if (--totem->unk35 == 0) {
            if (totem->lives == 0) {
                s->graphics.anim = 629;
                s->variant = 3;
            } else {
                s->graphics.anim = 629;
                s->variant = 0;
            }

            s->prevVariant = -1;
        }
    } else if (totem->unk34 > 0) {
        if (--totem->unk34 == 0) {
            s->graphics.anim = 629;
            s->variant = 0;
            s->prevVariant = -1;
        }
    }
}

void sub_8040F14(EggTotem *totem)
{
    u8 i;

    if (totem->unk35 != 0) {
        for (i = 0; i < 16u; i++) {
            gObjPalette[(8)*16u + (i)] = (gUnknown_080D7F14[((gStageTime & 0x2) / 2u)][i]);;
        }
    } else {
        for (i = 0; i < 16u; i++) {
            gObjPalette[(8)*16u + (i)] = (gUnknown_080D7F14[1][i]);;
        }
    }

    if (totem->unk36 > 0) {
        totem->unk36--;

        for (i = 0; i < 16u; i++) {
            gObjPalette[(11)*16u + (i)] = (gUnknown_080D7F14[((gStageTime & 0x2) / 2u)][i]);;
        }
    } else {
        for (i = 0; i < 16u; i++) {
            gObjPalette[(11)*16u + (i)] = (gUnknown_080D7F14[1][i]);;
        }
    }

    gFlags |= 0x2;
}

void TaskDestructor_EggTotemMain(struct Task *t)
{
    u8 i;
    EggTotem *totem = (void *)(0x03000000 + ((t)->data));

    VramFree(totem->sprC0.s.graphics.dest);

    for (i = 0; i < (sizeof(totem->sprWheels) / sizeof((totem->sprWheels)[0])); i++) {
        VramFree(totem->sprWheels[i].graphics.dest);
    }

    for (i = 0; i < (sizeof(totem->sprPlatform) / sizeof((totem->sprPlatform)[0])); i++) {
        VramFree(totem->sprPlatform[i].s.graphics.dest);
    }

    VramFree(totem->sprBulletLauncher[0].graphics.dest);
    VramFree(totem->sprBulletLauncher[1].graphics.dest);

    VramFree(totem->tilesBullet);

    VramFree(totem->sprPilot.graphics.dest);

    if (totem->sprTailsHook.graphics.dest != ((void *)0)) {
        VramFree(totem->sprTailsHook.graphics.dest);
    }

    if (totem->sprTails.graphics.dest != ((void *)0)) {
        VramFree(totem->sprTails.graphics.dest);
    }

    gActiveBossTask = ((void *)0);
}

void Task_EggTotemMain(void)
{
    EggTotem *totem = (void *)(0x03000000 + ((gCurTask)->data));

    totem->qWorldX += ((s32)((3.8125)*256));

    sub_803FB88(totem);
    sub_8041264(totem);
    sub_8040E78(totem);
    sub_803F698(totem);

    if (--totem->unkB4 == 0) {
        gCurTask->main = Task_803F3E8;
    }
}

void Task_8041138(void)
{
    bool8 res;
    EggTotem *totem = (void *)(0x03000000 + ((gCurTask)->data));

    if (Mod(gStageTime, 13) == 0) {
        m4aSongNumStart(144);
    }

    if (totem->sprTails.graphics.dest != ((void *)0)) {
        totem->qUnkB8 += ((s32)((5)*256));

        if (totem->qUnkBC > -((s32)((48)*256))) {
            totem->qUnkBC -= ((s32)((3)*256));
        }
    }

    sub_803FC14(totem);
    sub_8040E78(totem);

    res = sub_803F878(totem);
    if (res != 0) {
        gCurTask->main = Task_80411CC;
    }
}

void Task_80411CC(void)
{
    EggTotem *totem = (void *)(0x03000000 + ((gCurTask)->data));

    if (Mod(gStageTime, 13) == 0) {
        m4aSongNumStart(144);
    }

    sub_803FF44(totem);
    sub_8040E78(totem);
    sub_803F878(totem);

    if (totem->sprC0.s.x < -200) {
        sub_802EF68(-40, 150, 2);

        gCurTask->main = Task_CallTaskDestroyTotem;
    }
}

void Task_CallTaskDestroyTotem(void) { TaskDestroy(gCurTask); }

void Totem_UpdateWorldPos(EggTotem *totem)
{
    totem->qWorldX += totem->unk8;
    totem->qWorldY += totem->unkA;
}

void sub_8041264(EggTotem *totem)
{
    u8 i;

    for (i = 0; i < (sizeof(totem->unk3C) / sizeof((totem->unk3C)[0])); i++) {
        if (totem->unk3C[i].unk13 == 0) {
            totem->unk3C[i].qWorldX = totem->qWorldX;
            totem->unk3C[i].qWorldY = totem->qWorldY + sTotemDiscYs[i];
        }
    }
}

void sub_80412B4(EggTotem *totem)
{
    Sprite *s = &totem->sprPilot;

    totem->unk34 = 30;

    if (totem->unk35 == 0) {
        s->graphics.anim = 629;
        s->variant = 1;
        s->prevVariant = -1;
    }
}

void CreateEggTotemBullet(EggTotem *totem, s32 qX, s32 qY, u16 qSpeed)
{
    Sprite *s;
    u16 sinIndex;

    struct Task *t = TaskCreate(Task_EggTotemBullet, sizeof(EggTotemBullet), 0x6100, 0, ((void *)0));

    EggTotemBullet *bullet = (void *)(0x03000000 + ((t)->data));

    bullet->qScreenX = qX - ((s32)((gCamera.x)*256));
    bullet->qScreenY = qY - ((s32)((gCamera.y)*256));

    sinIndex = sub_8004418(((int)((gPlayer.qWorldY) >> 8)) - ((int)((qY) >> 8)), ((int)((gPlayer.qWorldX) >> 8)) - ((int)((qX) >> 8)));
    bullet->qDX = (((gSineTable[(sinIndex) + 256]) * qSpeed) >> 14);
    bullet->qDX += ((s32)((5.00)*256));
    bullet->qDY = (((gSineTable[(sinIndex)]) * qSpeed) >> 14);
    bullet->totem = totem;

    s = &bullet->s;

    s->x = ((int)((qX) >> 8));
    s->y = ((int)((qY) >> 8));
    s->graphics.dest = totem->tilesBullet;
    s->graphics.anim = 658;
    s->variant = 0;
    s->oamFlags = ((16) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((2) << (12));
}

void Task_EggTotemBullet(void)
{
    EggTotem *totem;
    EggTotemBullet *bullet = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &bullet->s;

    if (!(!(gPlayer.moveState & 0x00000080))) {
        bullet->qScreenX += bullet->qDX;
        bullet->qScreenX -= ((s32)((5.00)*256));
        bullet->qScreenY += bullet->qDY;
    } else {
        bullet->qScreenX += (bullet->qDX + ((s32)((gCamera.dx)*256)));
        bullet->qScreenY += (bullet->qDY + ((s32)((gCamera.dy)*256)));
    }

    s->x = ((int)((bullet->qScreenX) >> 8));
    s->y = ((int)((bullet->qScreenY) >> 8));




    if ((s->x < -32 && bullet->qDX < 0) || ((s->x > (240 + 32)) && bullet->qDX > 0) || (s->y < -32 && bullet->qDY < 0)
        || ((s->y > (160 + 32)) && bullet->qDY > 0) || (s->x < -((s32)((2)*256))) || s->x > 752) {
        TaskDestroy(gCurTask);
        return;
    }

    if (bullet->totem->lives != 0) {
        bool32 res;

        res = Coll_Player_Enemy(s, ((int)((bullet->qScreenX) >> 8)) + gCamera.x, ((int)((bullet->qScreenY) >> 8)) + gCamera.y, 0, &gPlayer);

        if (res == 1 && bullet->totem->unk35 == 0) {
            Sprite *s2;
            totem = bullet->totem;
            s2 = &totem->sprPilot;
            totem->unk34 = 30;
            s2->graphics.anim = 629;
            s2->variant = res;
            s2->prevVariant = -1;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
