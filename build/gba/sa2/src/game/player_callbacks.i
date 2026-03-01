# 0 "src/game/player_callbacks.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/player_callbacks.c"
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
# 2 "src/game/player_callbacks.c" 2
# 1 "include/trig.h" 1



# 1 "include/global.h" 1
# 5 "include/trig.h" 2

extern const s16 gSineTable[1280];
# 3 "src/game/player_callbacks.c" 2
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
# 4 "src/game/player_callbacks.c" 2
# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 5 "src/game/player_callbacks.c" 2

# 1 "include/game/amy_attack_heart_effect.h" 1
# 11 "include/game/amy_attack_heart_effect.h"
extern void CreateAmyAttackHeartEffect(u16);
# 7 "src/game/player_callbacks.c" 2
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
# 8 "src/game/player_callbacks.c" 2
# 1 "include/game/sa1_sa2_shared/collision.h" 1




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
# 9 "src/game/player_callbacks.c" 2
# 1 "include/game/stage/dust_effect_braking.h" 1





struct Task *CreateBrakingDustEffect(s32, s32);
void CreateBrakingDustEffectRelatedTask(void);
void DestroyBrakingDustEffectRelatedTask(void);

typedef struct {
               u16 x;
               u16 y;
               u16 unk4;
               u16 unk6;
               Sprite s;
} BrakeDustEffect;

typedef struct {
    s8 unk0;
    struct Task *t;
} DustEffectBraking;

extern DustEffectBraking gDustEffectBrakingTask;
# 10 "src/game/player_callbacks.c" 2
# 1 "include/game/stage/mp_sprite_task.h" 1




# 1 "include/sprite.h" 1
# 6 "include/game/stage/mp_sprite_task.h" 2

typedef struct {
               s32 x;
               s32 y;
               s16 unk8;
               s16 unkA;
               u8 fillerC[0x4];
               s16 unk10;
               u16 unk12;
               u16 unk14;
               AnimId playerAnim;
               u16 playerVariant;
               u8 mpPlayerID;
               Sprite s;
               SpriteTransform transform;
} MultiplayerSpriteTask;

extern struct Task *CreateMultiplayerSpriteTask(s16, s16, u8, s8, TaskMain, TaskDestructor);
extern void TaskDestructor_MultiplayerSpriteTask(struct Task *);

void CreateGrindEffect2(void);

struct Task *CreateStageGoalBonusPointsAnim(s32, s32, u16);
void Task_UpdateMpSpriteTaskSprite(void);
# 11 "src/game/player_callbacks.c" 2
# 1 "include/game/stage/player_controls.h" 1





struct ButtonConfig {
    u16 jump;
    u16 attack;
    u16 trick;
};

extern struct ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);
# 12 "src/game/player_callbacks.c" 2
# 1 "include/game/boost_effect.h" 1





# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 7 "include/game/boost_effect.h" 2

void sub_801561C(void);
void sub_8015750(void);
void GetPreviousPlayerPos(Vec2_32 *pos, u8 pastFrameDelta);
void CreateBoostEffectTasks(void);
void BoostEffect_StorePlayerPos(void);
void BoostEffect_StorePlayerState(void);

extern const AnimId sCharacterPalettesBoostEffect[NUM_CHARACTERS];
# 13 "src/game/player_callbacks.c" 2
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
# 14 "src/game/player_callbacks.c" 2

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
# 16 "src/game/player_callbacks.c" 2
# 1 "include/game/stage/player.h" 1
# 9 "include/game/stage/player.h"
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
# 17 "src/game/player_callbacks.c" 2
# 1 "include/game/stage/camera.h" 1
# 9 "include/game/stage/camera.h"
void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 18 "src/game/player_callbacks.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 20 "src/game/player_callbacks.c" 2
# 1 "include/constants/char_states.h" 1
# 21 "src/game/player_callbacks.c" 2
# 1 "include/constants/player_transitions.h" 1
# 22 "src/game/player_callbacks.c" 2
# 1 "include/constants/songs.h" 1
# 23 "src/game/player_callbacks.c" 2




typedef struct {
               s32 px[5];
               s32 py[5];
               u16 prevFrameNum;
               Sprite s;
} TrickBound;







void Player_SonicAmy_WindupSkidAttack(Player *);
void Player_SonicAmy_SkidAttack(Player *);
void Task_SonicBoundMotionFrames(void);
void Player_80123D0(Player *);
void Player_Tails_TailSwipe(Player *p);
void Player_SonicAmy_WindupStopNSlam(Player *);
void Player_SonicAmy_StopNSlam_AfterGroundCollision(Player *);
void Player_SonicAmy_StopNSlam_FallAfterCollision(Player *p);
void TaskDestructor_SonicBoundMotionFrames(struct Task *);
void Player_Sonic_HomingAttack(Player *p);
void Player_Cream_Flying(Player *p);
void Player_Cream_ChaoAttack(Player *p);
void Player_Cream_StepAttack(Player *p);
void Player_Cream_ChaoRollingAttack(Player *p);
void Player_Cream_WindupMidAirChaoAttack(Player *p);
void Player_Tails_8012C2C(Player *p);
void Player_8012D1C(Player *p);
void Player_Knuckles_PunchLeft(Player *p);
void Player_Knuckles_PunchRight(Player *p);
void Player_Knuckles_SpiralAttack(Player *p);
s32 sub_8013644(Player *p);
void sub_801394C(Player *p);
void Player_8013B6C(Player *p);
void Player_Knuckles_Glide(Player *p);
void Player_Knuckles_FallAfterGlide(Player *p);
void Player_Knuckles_GlideSoftLanding(Player *p);
void Player_Knuckles_GlideHardLanding(Player *p);
void Player_Knuckles_Climb(Player *p);
void Player_Knuckles_InitClimbPullUpEdge(Player *p);
void sub_8013CA0(Player *p);

void sub_8022318(Player *p);
void sub_8022838(Player *p);
void sub_80232D0(Player *p);

void Player_AirInputControls(Player *p);
void Player_UpdatePosition(Player *p);
void PlayerFn_Cmd_UpdateAirFallSpeed(Player *p);

const __attribute__((aligned(4))) u16 gUnknown_080D5518[3][3] = {
    { 15, ((16) + CHARACTER_SONIC * (91)), 3 },
    { 16, ((17) + CHARACTER_SONIC * (91)), 1 },
    { 16, ((51) + CHARACTER_SONIC * (91)), 3 },
};

const __attribute__((aligned(4))) s16 creamBoostMinFlySpeedTable[6] = { ((s32)((2.0)*256)), ((s32)((4.0)*256)), ((s32)((6.0)*256)), ((s32)((8.0)*256)), ((s32)((10.0)*256)), 0 };

static const s8 sKnucklesTurnFrameToCharstate[4] = { 96, 97,
                                                     98, 99 };

static const u16 sKnucklesAnimData_FX[2][3] = {
    { 30, ((16) + CHARACTER_KNUCKLES * (91)), 2 },
    { 25, ((51) + CHARACTER_KNUCKLES * (91)), 3 },
};



struct Task *CreateSonicAmySkidAttackEffect(s32 x, s32 y, u16 p2)
{
    MultiplayerSpriteTask *ts;
    struct Task *t;
    Sprite *s;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        return ((void *)0);
    }

    t = CreateMultiplayerSpriteTask(x, y, 0xE8, gPlayer.playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
    ts = (void *)(0x03000000 + ((t)->data));

    switch (p2) {
        case 0: {
            ts->playerAnim = gPlayer.anim;
            ts->playerVariant = gPlayer.variant;
        } break;

        case 1:
        case 2: {
            ts->playerAnim = sCharStateAnimInfo[gPlayer.charState][0];
            ts->playerVariant = sCharStateAnimInfo[gPlayer.charState][1];

            if (gPlayer.charState < 80) {
                AnimId idle = gPlayerCharacterIdleAnims[gPlayer.character];
                ts->playerAnim += idle;
            }
        } break;
    }

    s = &ts->s;

    s->graphics.dest = VramMalloc(gUnknown_080D5518[p2][0]);
    s->graphics.anim = gUnknown_080D5518[p2][1];
    s->variant = gUnknown_080D5518[p2][2];
    s->oamFlags = ((8) << 6);
    s->frameFlags = ((2) << (12));

    return t;
}


struct Task *CreateSonicBoundEffect(s32 x, s32 y)
{
    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        return ((void *)0);
    } else {
        struct Task *t = TaskCreate(Task_SonicBoundMotionFrames, sizeof(TrickBound), 0x4001, 0, TaskDestructor_SonicBoundMotionFrames);

        TrickBound *bound = (void *)(0x03000000 + ((t)->data));
        Sprite *s = &bound->s;

        s16 i;
        for (i = 0; i < 5; i++) {
            bound->px[i] = x;
            bound->py[i] = y;
        }

        bound->prevFrameNum = 0;
        s->graphics.dest = VramMalloc(16);
        s->graphics.size = 0;
        s->graphics.anim = ((51) + CHARACTER_SONIC * (91));
        s->variant = 3;
        s->prevVariant = -1;
        s->oamFlags = ((17) << 6);
        s->qAnimDelay = 0;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->frameFlags = ((2) << (12));

        return t;
    }
}


void Player_SonicAmy_InitSkidAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

    p->moveState |= 0x20000000;

    if (!p->isBoosting) {
        if (p->moveState & 0x00000001) {
            p->qSpeedGround = -((s32)((3.0)*256));
        } else {
            p->qSpeedGround = +((s32)((3.0)*256));
        }

        p->charState = 15;
    } else {
        p->charState = 17;
    }

    m4aSongNumStart(121);

    { gPlayer.callback = Player_SonicAmy_WindupSkidAttack;; Player_SonicAmy_WindupSkidAttack(p);; };
}

void Player_SonicAmy_WindupSkidAttack(Player *p)
{
    s32 grndSpeed = p->qSpeedGround;
    if (grndSpeed > 0) {
        p->qSpeedGround = ((grndSpeed - 8) > 0) ? (grndSpeed - 8) : 0;
    } else if (grndSpeed < 0) {
        if ((grndSpeed + 8) <= 0)
            p->qSpeedGround = (grndSpeed + 8);
        else
            p->qSpeedGround = 0;
    }

    sub_8029C84(p);

    if (p->spriteInfoBody->s.frameFlags & 0x00004000) {
        if (p->moveState & 0x00000002) {
            p->charState = 50;
            p->transition = 5;
        } else {
            p->variant = 1;
            p->unk6C = 1;

            gPlayer.callback = Player_SonicAmy_SkidAttack;;

            if (!p->isBoosting) {
                if (p->moveState & 0x00000001) {
                    p->qSpeedGround = -((s32)((4.0)*256));
                } else {
                    p->qSpeedGround = +((s32)((4.0)*256));
                }
            } else {
                CreateSonicAmySkidAttackEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 0);
            }

            p->unk72 = 32;
            m4aSongNumStart(111);
        }
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_SonicAmy_SkidAttack(Player *p)
{
    s32 grndSpeed = p->qSpeedGround;
    if (grndSpeed > 0) {
        p->qSpeedGround = ((grndSpeed - ((s32)((0.125)*256))) > 0) ? (grndSpeed - ((s32)((0.125)*256))) : 0;
    } else if (grndSpeed < 0) {
        if ((grndSpeed + ((s32)((0.125)*256))) <= 0)
            p->qSpeedGround = (grndSpeed + ((s32)((0.125)*256)));
        else
            p->qSpeedGround = 0;
    }

    sub_8029C84(p);

    if (--p->unk72 == -1) {
        if (p->moveState & 0x00000002) {
            p->charState = 50;
            p->transition = 5;
        } else {
            p->variant = 2;
            p->unk6C = 1;

            gPlayer.callback = Player_80123D0;;
        }
    }

    Player_HandlePhysicsWithAirInput(p);

    if (!(p->moveState & 0x00000002)) {
        sub_8029FA4(p);
    }
}



void Player_SonicAmy_InitStopNSlam(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

    p->moveState |= 0x20000000;

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->isBoosting = 0;
    p->charState = 36;

    if (p->character == CHARACTER_AMY) {
        m4aSongNumStart(131);
    }


    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;


    { gPlayer.callback = Player_SonicAmy_WindupStopNSlam;; Player_SonicAmy_WindupStopNSlam(p);; };
}




void Player_SonicAmy_StopNSlam(Player *p)
{
    p->qSpeedAirY += ((s32)((0.21875)*256));

    sub_80283C4(p);

    if ((p->moveState & (0x00004000 | 0x00000002)) != 0x00000002) {
        s32 bounceSpeed;
        s32 rot;
        s32 sinValue;
        s32 bounceImpactAccel = -((s32)((6.0)*256));


        u8 *rotPtr = &p->rotation;
        rotPtr++;
        rotPtr--;



        sinValue = ((int)(((gSineTable[(rot = p->rotation * 4)])) >> 6));
        p->qSpeedAirX = -((int)((bounceImpactAccel * sinValue) >> 8));
        bounceSpeed = ((int)((bounceImpactAccel * (((int)(((gSineTable[((rot)) + 256])) >> 6)))) >> 8));
        p->qSpeedAirY = -((bounceSpeed) >= 0 ? (bounceSpeed) : -(bounceSpeed));

        p->qSpeedAirX = (p->qSpeedAirX = (p->qSpeedAirX >> 1));

        gPlayer.callback = Player_SonicAmy_StopNSlam_AfterGroundCollision;;

        p->moveState |= 0x00000002;

        if (p->character == CHARACTER_SONIC) {
            m4aSongNumStart(223);
        }

        p->charState = -1;
    }
}

void Task_SonicBoundMotionFrames(void)
{
    TrickBound *bound = (void *)(0x03000000 + ((gCurTask)->data));
    Sprite *s = &bound->s;
    Vec2_32 pos;

    if ((gPlayer.moveState & 0x00000080) || (gPlayer.qSpeedAirY < ((s32)((2.0)*256))) || (gPlayer.charState != 36)) {
        TaskDestroy(gCurTask);
    } else {
        UpdateSpriteAnimation(s);

        bound->prevFrameNum = ((bound->prevFrameNum - 1) & 0x6);



        GetPreviousPlayerPos(&pos, bound->prevFrameNum);
        s->x = ((int)((pos.x) >> 8)) - gCamera.x;
        s->y = ((int)((pos.y) >> 8)) - gCamera.y;

        DisplaySprite(s);
    }
}

void Player_SonicForwardThrust(Player *p)
{
    if (p->moveState & 0x00000010) {
        if (p->heldInput & 0x0020)
            p->moveState |= 0x00000001;

        if (p->heldInput & 0x0010)
            p->moveState &= ~0x00000001;
    }

    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState |= 0x00000002;
    p->moveState &= ~(0x01000000 | 0x00000020 | 0x00000004);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 80;

    if (p->moveState & 0x00000001)
        p->qSpeedAirX -= ((s32)((2.25)*256));
    else
        p->qSpeedAirX += ((s32)((2.25)*256));

    p->qSpeedAirY = 0;
    p->rotation = 0;
    p->unk70 = 0;
    p->unk71 = 0;

    m4aSongNumStart(112);

    p->unk6E = 0;
    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
    p->rotation = 0;

    { gPlayer.callback = Player_Uncurl;; Player_Uncurl(p);; };
}

void Player_Sonic_InitHomingAttack(Player *p)
{
    s16 angle = gHomingTarget.angle;
    s32 six = ((s32)((6.0)*256));
    s32 cosVal, sinVal;

    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState |= (0x20000000 | 0x02000000 | 0x00000002);
    p->moveState &= ~(0x01000000 | 0x00000020);

    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

    p->charState = 19;

    cosVal = ((int)(((gSineTable[(angle) + 256])) >> 6));
    sinVal = ((int)(((gSineTable[(angle)])) >> 6));
    p->qSpeedAirX = ((int)((cosVal * six) >> 8));
    p->qSpeedAirY = ((int)((sinVal * six) >> 8)) - ((s32)((0.5)*256));

    p->rotation = 0;
    p->unk70 = 0;
    p->unk71 = 0;
    p->unk6E = 0;
    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
    p->rotation = 0;
    p->unk72 = 60;

    m4aSongNumStart(112);

    { gPlayer.callback = Player_Sonic_HomingAttack;; Player_Sonic_HomingAttack(p);; };
}

void Player_InitHomingAttackRecoil(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);
    p->moveState |= (0x00000100 | 0x00000002);
    p->moveState &= ~(0x20000000 | 0x01000000 | 0x00000020);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->charState = 14;

    p->qSpeedAirX = 0;
    p->qSpeedAirY = -((s32)((4.0)*256));
    p->rotation = 0;

    p->unk70 = 1;
    p->unk71 = 0;
    p->unk6E = 0;
    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));
    p->rotation = 0;

    { gPlayer.callback = Player_Uncurl;; Player_Uncurl(p);; };
}

void Player_UpdateHomingPosition(s32 qX, s32 qY)
{
    s32 vecTargetX, vecTargetY;
    s32 sqTargetX, sqTargetY, sqDistance;

    vecTargetX = ((int)((gPlayer.qWorldX - qX) >> 8));
    vecTargetY = ((int)((gPlayer.qWorldY - qY) >> 8));
    sqTargetX = vecTargetX * vecTargetX;
    sqTargetY = vecTargetY * vecTargetY;
    sqDistance = sqTargetX + sqTargetY;

    if (gPlayer.character == CHARACTER_SONIC) {
        if (sqDistance < gHomingTarget.squarePlayerDistance) {
            if (gPlayer.moveState & 0x00000001) {
                u16 angle = ({ s16 clamped = (sub_8004418(vecTargetX, vecTargetY) - (1024 / 4)) & (1024 - 1); clamped; });
                if (angle <= ((int)((((double)(110)) / 360.0) * 1024))) {
                    angle = ({ s16 clamped = ((1024 / 2) - angle) & (1024 - 1); clamped; });

                    gHomingTarget.squarePlayerDistance = sqDistance;
                    gHomingTarget.angle = angle;
                }
            } else {
                u16 angle = sub_8004418(-vecTargetY, -vecTargetX);
                if (angle <= ((int)((((double)(110)) / 360.0) * 1024))) {
                    gHomingTarget.squarePlayerDistance = sqDistance;
                    gHomingTarget.angle = angle;
                }
            }
        }
    } else if (gPlayer.character == CHARACTER_CREAM) {
        struct Task *t = gCurTask;

        if (sqDistance < gCheeseTarget.squarePlayerDistance) {
            if (((gPlayer.moveState & 0x00000001) && (vecTargetX >= 0))
                || ((!(gPlayer.moveState & 0x00000001)) && (vecTargetX <= 0))) {
                gCheeseTarget.squarePlayerDistance = sqDistance;
                gCheeseTarget.task = t;
            }

            if (t->unk15) {
                t->unk16 = ((int)((qX) >> 8));
                t->unk18 = ((int)((qY) >> 8));
            }
        }
    }
}

void Player_80123D0(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        gPlayer.callback = Player_TouchGround;;
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_SonicAmy_WindupStopNSlam(Player *p)
{
    sub_80283C4(p);

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        p->variant++;

        p->qSpeedAirY = ((s32)((2.0)*256));
        gPlayer.callback = Player_SonicAmy_StopNSlam;;

        if (p->character == CHARACTER_SONIC) {
            CreateSonicBoundEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)));
        } else if (p->character == CHARACTER_AMY) {
            CreateAmyAttackHeartEffect(3);
        }
    }
}

void Player_SonicAmy_StopNSlam_AfterGroundCollision(Player *p)
{
    p->qSpeedAirY += ((s32)((0.21875)*256));

    if (p->qSpeedAirY >= 0) {
        p->variant++;
        p->unk6C = 1;
        gPlayer.callback = Player_SonicAmy_StopNSlam_FallAfterCollision;;
    }

    sub_80283C4(p);
}

void Player_SonicAmy_StopNSlam_FallAfterCollision(Player *p)
{
    Player_HandlePhysicsWithAirInput(p);

    if (!(p->moveState & 0x00000002)) {
        p->transition = 1;
    }
}

void TaskDestructor_SonicBoundMotionFrames(struct Task *t)
{
    TrickBound *strc = (void *)(0x03000000 + ((t)->data));
    Sprite *s = &strc->s;
    VramFree(s->graphics.dest);
}

void Player_Sonic_HomingAttack(Player *p)
{
    if (--p->unk72 == -1) {
        p->charState = 14;
        p->moveState &= ~0x02000000;
    }

    Player_HandlePhysicsWithAirInput(p);

    if (!(p->moveState & 0x00000002)) {

        p->transition = 1;
    }
}

bool32 Player_Sonic_TryForwardThrust(Player *p)
{
    if (p->character == CHARACTER_SONIC) {
        if (p->unk71 == 1) {
            Player_SonicForwardThrust(p);
            return 1;
        }
    }

    return 0;
}



void Player_Cream_InitChaoAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= 0x20000000;

    if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((0.25)*256))) {
        p->qSpeedGround = 0;
        p->charState = 15;
    } else {
        p->charState = 87;
    }

    { gPlayer.callback = Player_Cream_ChaoAttack;; Player_Cream_ChaoAttack(p);; };
}

void UpdateCreamFlying(Player *p)
{
    if (p->w.cf.flyingDuration == 0) {
        if (p->charState == 85)
            m4aSongNumStop(227);

        p->charState = 85;
    } else {
        if (((p->heldInput & 0x0020) && !(p->moveState & 0x00000001))
            || ((p->heldInput & 0x0010) && (p->moveState & 0x00000001))) {
            p->charState = 84;
        } else if (p->charState == 84) {
            if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
                p->charState = 83;
            }
        } else {
            p->charState = 83;
        }

        m4aSongNumStartOrChange(227);
    }
}

void Player_Cream_InitFlying(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    if (p->moveState & 0x00000004) {
        p->moveState &= ~0x00000004;

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
    }

    p->w.cf.flyingDuration = (int)(((0 * 60.) + 4) * 60);
    p->unk61 = 1;
    p->isBoosting = 0;
    p->boostSpeed = 0;
    gPlayer.moveState |= 0x10000000;
    { gPlayer.callback = Player_Cream_Flying;; Player_Cream_Flying(p);; };
}

void Player_Cream_Flying(Player *p)
{
    if (p->w.cf.flyingDuration != 0) {
        p->w.cf.flyingDuration--;

        if (p->heldInput & gPlayerControls.attack) {
            p->charState = 86;
            p->transition = 5;

            m4aSongNumStop(227);
            return;
        }
    }

    if (p->unk61 != 1) {
        if (p->qSpeedAirY >= -((s32)((0.75)*256))) {
            p->qSpeedAirY -= ((s32)((0.09375)*256));

            if (++p->unk61 == 32) {
                p->unk61 = 1;
            }
        } else {
            p->unk61 = 1;
        }
    } else {
        if ((p->frameInput & gPlayerControls.jump) && (p->qSpeedAirY >= -((s32)((0.75)*256))) && (p->w.cf.flyingDuration != 0)) {
            p->unk61 = 2;
        }

        p->qSpeedAirY += ((s32)(((0.033))*256));
    }

    if (p->qWorldY < ((s32)((gCamera.minY)*256))) {
        p->qWorldY = ((s32)((gCamera.minY)*256));

        if (p->qSpeedAirY < 0)
            p->qSpeedAirY = 0;
    }

    UpdateCreamFlying(p);

    {
        s16 speed = creamBoostMinFlySpeedTable[p->boostThreshold];
        if (((p->qSpeedAirX) >= 0 ? (p->qSpeedAirX) : -(p->qSpeedAirX)) > speed) {
            if (p->qSpeedAirX > 0)
                p->qSpeedAirX -= p->acceleration * 2;
            else
                p->qSpeedAirX += p->acceleration * 2;
        }
    }

    sub_80282EC(p);

    if (!(p->moveState & 0x00000002)) {
        p->transition = 1;
    } else if (p->moveState & 0x00000040) {
        p->charState = 14;
        p->transition = 5;
    }
}

void Player_Cream_ChaoAttack(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        if (p->moveState & 0x00000002) {
            p->charState = 9;
            p->transition = 5;
        } else {
            p->transition = 1;
        }
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_Cream_InitStepAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= 0x20000000;

    p->charState = 17;

    { gPlayer.callback = Player_Cream_StepAttack;; Player_Cream_StepAttack(p);; };
}

void Player_Cream_InitChaoRollingAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= (0x20000000 | 0x00000100 | 0x00000002);

    p->charState = 18;

    { gPlayer.callback = Player_Cream_ChaoRollingAttack;; Player_Cream_ChaoRollingAttack(p);; };
}

void Player_Cream_InitMidAirChaoAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= (0x20000000 | 0x00000100 | 0x00000002);

    p->charState = 19;

    { gPlayer.callback = Player_Cream_WindupMidAirChaoAttack;; Player_Cream_WindupMidAirChaoAttack(p);; };
}

void Player_Cream_StepAttack(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        if (p->moveState & 0x00000002) {
            p->charState = 50;
            p->transition = 5;
        } else {
            p->transition = 1;
        }
    }

    Player_HandlePhysicsWithAirInput(p);
}


void Player_Cream_ChaoRollingAttack(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        if ((p->anim == ((17) + CHARACTER_CREAM * (91))) && p->variant == 0) {
            p->variant++;
        }
    }

    Player_HandlePhysicsWithAirInput(p);

    if (!(p->moveState & 0x00000002)) {
        p->transition = 1;
    }
}

void Player_Cream_WindupMidAirChaoAttack(Player *p)
{
    Player_HandlePhysicsWithAirInput(p);

    if (!(p->moveState & 0x00000002)) {
        p->transition = 1;
    }
}



struct Task *CreateTailsTailSwipeEffect(s32 x, s32 y)
{
    struct Task *result;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        result = ((void *)0);
    } else {
        struct Task *t;
        MultiplayerSpriteTask *ts;
        Sprite *s;
        t = CreateMultiplayerSpriteTask(x, y, 232, gPlayer.playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
        ts = (void *)(0x03000000 + ((t)->data));
        ts->playerAnim = gPlayerCharacterIdleAnims[gPlayer.character];


        ts->playerAnim += sCharStateAnimInfo[gPlayer.charState][0];
        ts->playerVariant = sCharStateAnimInfo[gPlayer.charState][1];

        s = &ts->s;

        if (!gPlayer.isBoosting) {
            s->graphics.dest = VramMalloc(15);
            s->graphics.anim = 845;
            s->variant = 0;
        } else {
            s->graphics.dest = VramMalloc(24);
            s->graphics.anim = 198;
            s->variant = 1;
        }

        s->oamFlags = ((8) << 6);
        s->frameFlags = ((2) << (12));

        result = t;
    }

    return result;
}

void Player_Tails_InitUnusedJump(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->charState = 91;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= (0x20000000 | 0x00000100 | 0x00000002);

    p->qSpeedAirY = -((s32)((4.0)*256));

    if (p->moveState & 0x00000040) {
        p->qSpeedAirY >>= 1;
    }

    m4aSongNumStart(116);

    { gPlayer.callback = Player_8012D1C;; Player_8012D1C(p);; };
}

void sub_8012B44(Player *p)
{
    if (p->w.tf.flyingDuration == 0) {
        p->charState = 90;
        m4aSongNumStop(120);
    } else {
        if (((p->heldInput & 0x0020) && !(p->moveState & 0x00000001))
            || ((p->heldInput & 0x0010) && (p->moveState & 0x00000001))) {
            p->charState = 89;
        } else if ((p->charState == 89)) {
            if ((p->spriteInfoBody->s.frameFlags & ((1) << (14))))
                p->charState = 88;
        } else {
            p->charState = 88;
        }

        m4aSongNumStartOrChange(120);
    }
}

void Player_Tails_InitFlying(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    if (p->moveState & 0x00000004) {
        p->moveState &= ~0x00000004;

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };
    }

    p->w.tf.flyingDuration = ((int)(((0 * 60.) + 8) * 60) / 2);
    p->unk61 = 1;
    p->isBoosting = 0;
    p->boostSpeed = 0;

    gPlayer.moveState |= 0x10000000;
    { gPlayer.callback = Player_Tails_8012C2C;; Player_Tails_8012C2C(p);; };
}

void Player_Tails_8012C2C(Player *p)
{


    if ((gStageTime & 0x1) && (p->w.tf.flyingDuration != 0)) {
        p->w.tf.flyingDuration--;
    }

    if (p->unk61 != 1) {
        if (p->qSpeedAirY >= -((s32)((0.75)*256))) {
            p->qSpeedAirY -= ((s32)((0.09375)*256));

            if (++p->unk61 == 32) {
                p->unk61 = 1;
            }
        } else {
            p->unk61 = 1;
        }
    } else {
        if ((p->frameInput & gPlayerControls.jump) && (p->qSpeedAirY >= -((s32)((0.75)*256))) && (p->w.tf.flyingDuration != 0)) {
            p->unk61 = 2;
        }

        p->qSpeedAirY += ((s32)(((0.033))*256));
    }

    if (p->qWorldY < ((s32)((gCamera.minY)*256))) {
        p->qWorldY = ((s32)((gCamera.minY)*256));

        if (p->qSpeedAirY < 0)
            p->qSpeedAirY = 0;
    }

    sub_8012B44(p);

    p->maxSpeed = ((s32)((6.0)*256));
    p->acceleration = 0x10;

    sub_80282EC(p);

    if (!(p->moveState & 0x00000002)) {
        p->transition = 1;
    } else if (p->moveState & 0x00000040) {
        p->charState = 14;
        p->transition = 5;
    }
}

void Player_8012D1C(Player *p)
{
    if (!(p->moveState & 0x00000002)) {
        p->transition = 1;
    }

    sub_8028204(p);
}

void Player_Tails_InitTailSwipe(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->charState = 15;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= 0x20000000;

    CreateTailsTailSwipeEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)));

    m4aSongNumStart(121);

    { gPlayer.callback = Player_Tails_TailSwipe;; Player_Tails_TailSwipe(p);; };
}



void Player_Tails_TailSwipe(Player *p)
{
    s32 halfUnk4C = p->deceleration >> 1;

    s32 speed = p->qSpeedGround;
    if (speed > 0) {
        speed = (((0) > (speed - halfUnk4C)) ? (0) : (speed - halfUnk4C));
    } else {
        speed = (((0) < (speed + halfUnk4C)) ? (0) : (speed + halfUnk4C));
    }
    p->qSpeedGround = speed;

    sub_8029C84(p);

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        gPlayer.callback = Player_TouchGround;;
    }

    Player_HandlePhysicsWithAirInput(p);
}



struct Task *CreateKnucklesFireEffect(s32 x, s32 y, u16 p2)
{
    struct Task *result;

    if ((!(((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))))) {
        result = ((void *)0);
    } else {
        MultiplayerSpriteTask *ts;
        Sprite *s;
        struct Task *t;
        t = CreateMultiplayerSpriteTask(x, y, 232, gPlayer.playerID, Task_UpdateMpSpriteTaskSprite, TaskDestructor_MultiplayerSpriteTask);
        ts = (void *)(0x03000000 + ((t)->data));

        ts->playerAnim = sCharStateAnimInfo[gPlayer.charState][0];
        ts->playerVariant = sCharStateAnimInfo[gPlayer.charState][1];

        if (gPlayer.charState < 80) {
            ts->playerAnim += gPlayerCharacterIdleAnims[gPlayer.character];
        }

        s = &ts->s;

        s->graphics.dest = VramMalloc(sKnucklesAnimData_FX[p2][0]);
        s->graphics.anim = sKnucklesAnimData_FX[p2][1];
        s->variant = sKnucklesAnimData_FX[p2][2];

        s->oamFlags = ((8) << 6);
        s->frameFlags = ((2) << (12));

        result = t;
    }

    return result;
}

void Player_Knuckles_InitPunch(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->charState = 15;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= 0x20000000;

    if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((3.0)*256))) {
        if (p->moveState & 0x00000001) {
            p->qSpeedGround = -((s32)((3.0)*256));
        } else {
            p->qSpeedGround = +((s32)((3.0)*256));
        }
    }

    { gPlayer.callback = Player_Knuckles_PunchLeft;; Player_Knuckles_PunchLeft(p);; };
}

void Player_Knuckles_PunchLeft(Player *p)
{
    s32 speed = p->qSpeedGround;
    if (speed > 0) {
        if ((speed -= ((s32)((0.375)*256))) < 0)
            speed = 0;

        p->qSpeedGround = speed;
    } else if (speed < 0) {
        if ((speed += ((s32)((0.375)*256))) > 0)
            speed = 0;

        p->qSpeedGround = speed;
    }

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        if (p->moveState & 0x00000002) {
            p->charState = 50;
            p->transition = 5;
        } else {
            p->variant++;
            p->unk6C = 1;

            if (((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround)) < ((s32)((3.0)*256))) {
                if (p->moveState & 0x00000001) {
                    p->qSpeedGround = -((s32)((3.0)*256));
                } else {
                    p->qSpeedGround = +((s32)((3.0)*256));
                }
            }

            gPlayer.callback = Player_Knuckles_PunchRight;;
        }
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_Knuckles_PunchRight(Player *p)
{
    s32 speed = p->qSpeedGround;
    if (speed > 0) {
        if ((speed -= ((s32)((0.375)*256))) < 0)
            speed = 0;

        p->qSpeedGround = speed;
    } else if (speed < 0) {
        if ((speed += ((s32)((0.375)*256))) > 0)
            speed = 0;

        p->qSpeedGround = speed;
    }

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        if (p->moveState & 0x00000002) {
            p->charState = 50;
            p->transition = 5;
        } else {
            p->transition = 1;
        }
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_Knuckles_InitSpiralAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->charState = 17;

    { Player_HandleSpriteYOffsetChange(p, 9); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 9; } };

    p->moveState |= 0x20000000;

    CreateKnucklesFireEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 0);

    p->unk72 = 32;

    m4aSongNumStart(225);

    { gPlayer.callback = Player_Knuckles_SpiralAttack;; Player_Knuckles_SpiralAttack(p);; };
}

void Player_Knuckles_SpiralAttack(Player *p)
{
    s32 speed = p->qSpeedGround;
    s32 addend = p->deceleration >> 1;
    if (speed > 0) {
        if ((speed -= addend) < 0)
            speed = 0;

        p->qSpeedGround = speed;
    } else if (speed < 0) {
        if ((speed += addend) > 0)
            speed = 0;

        p->qSpeedGround = speed;
    }

    sub_8029C84(p);

    if (--p->unk72 == -1) {
        p->variant++;
        p->unk6C = 1;
        gPlayer.callback = Player_8013B6C;;
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_Knuckles_Glide_UpdateFrames(Player *p)
{
    s8 xOffset = p->w.kf.shift;
    p->moveState &= ~0x00000020;
    p->moveState &= ~0x00000001;

    if (!(xOffset & 0x7F)) {
        p->charState = 92;

        if ((u8)xOffset == 0x80) {
            p->moveState |= 0x00000001;
        }
    } else {
        if (xOffset < 0) {
            xOffset = -xOffset;
        }
        p->charState = sKnucklesTurnFrameToCharstate[(xOffset & 0x7F) >> 5];
    }
}

void Player_Knuckles_Glide_MainUpdate(Player *p)
{
    type8029A28 result;
    u8 someFlags;
    sub_8022838(p);

    someFlags = p->w.kf.flags;

    if (!(someFlags & 0x00000002)) {
        u8 temp;
        if (p->qSpeedAirX <= 0) {
            p->moveState |= 0x00000001;
        } else {
            p->moveState &= ~0x00000001;
        }

        temp = -((p->rotation + ((s32)((0.125)*256))) & -((s32)((0.25)*256)));
        if (temp != 0) {
            s8 shift = p->w.kf.shift + ((s32)((0.25)*256));
            if (shift <= 0) {
                p->moveState |= 0x00000001;
            } else {
                p->moveState &= ~0x00000001;
            }

            p->qSpeedAirY = 0;

            sub_8022318(p);

            p->transition = 1;
        } else {
            gPlayer.callback = Player_Knuckles_GlideHardLanding;;
            p->charState = 95;
            m4aSongNumStart(111);
        }
    } else {
        u32 temp = 0x20;
        temp &= someFlags;
        if (temp) {
            type8029A28 sp08;

            if (p->w.kf.unkAE >= 0) {
                s8 temp = p->w.kf.shift + ((s32)((0.25)*256));
                if (temp <= 0) {
                    p->moveState |= 0x00000001;
                    result = sub_8029A28(p, ((void *)0), &sp08);

                    if (result != sp08) {
                        gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                        p->charState = 93;
                        p->spriteOffsetX = 6;
                        p->spriteOffsetY = 14;
                        p->w.kf.flags |= 0x00000002;
                        return;
                    }

                    if (result != 0) {
                        u16 gravInv = (gStageFlags & 0x0080);
                        if (gravInv) {
                            s32 playerBottomX;
                            s32 playerBottomY = ((int)((p->qWorldY) >> 8));
                            playerBottomY -= 1;
                            playerBottomY -= p->spriteOffsetY;

                            playerBottomX = ((int)((p->qWorldX) >> 8));
                            playerBottomX -= 1;
                            playerBottomX -= p->spriteOffsetX;

                            if (sub_801E4E4(playerBottomY, playerBottomX, p->layer, -8, ((void *)0), sub_801EE64) < 0) {
                                gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                                p->charState = 93;
                                p->spriteOffsetX = 6;
                                p->spriteOffsetY = 14;
                                p->w.kf.flags |= 0x00000002;
                                return;
                            }
                        } else {
                            s32 playerBottomX;
                            s32 playerBottomY = ((int)((p->qWorldY) >> 8));
                            playerBottomY += 1;
                            playerBottomY += p->spriteOffsetY;

                            playerBottomX = ((int)((p->qWorldX) >> 8));
                            playerBottomX -= 1;
                            playerBottomX -= p->spriteOffsetX;

                            if (sub_801E4E4(playerBottomY, playerBottomX, p->layer, +8, ((void *)0), sub_801EE64) < 0) {
                                gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                                p->charState = 93;
                                p->spriteOffsetX = 6;
                                p->spriteOffsetY = 14;
                                p->w.kf.flags |= 0x00000002;
                                return;
                            }
                        }

                        p->qWorldX -= ((s32)((result)*256));
                    }
                } else {
                    p->moveState &= ~0x00000001;

                    result = sub_8029A74(p, 0, &sp08);
                    if (result != sp08) {
                        gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                        p->charState = 93;
                        p->spriteOffsetX = 6;
                        p->spriteOffsetY = 14;
                        p->w.kf.flags |= 0x00000002;
                        return;
                    } else if (result != 0) {
                        if (!(gStageFlags & 0x0080)) {
                            s32 playerBottomX;
                            s32 playerBottomY = ((int)((p->qWorldY) >> 8));
                            playerBottomY += 1;
                            playerBottomY += p->spriteOffsetY;

                            playerBottomX = ((int)((p->qWorldX) >> 8));
                            playerBottomX += 1;
                            playerBottomX += p->spriteOffsetX;

                            if (sub_801E4E4(playerBottomY, playerBottomX, p->layer, +8, ((void *)0), sub_801EE64) < 0) {
                                gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                                p->charState = 93;
                                p->spriteOffsetX = 6;
                                p->spriteOffsetY = 14;
                                p->w.kf.flags |= 0x00000002;
                                return;
                            }
                        }
                        p->qWorldX += ((s32)((result)*256));
                    }
                }

                p->qSpeedGround = 0;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;

                gPlayer.callback = Player_Knuckles_Climb;;

                p->w.kf.shift = 3;

                p->charState = 100;
                p->moveState |= 0x10000000;

                { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 10; };

                return;
            }

            gPlayer.callback = Player_Knuckles_FallAfterGlide;;
            p->charState = 93;
            p->spriteOffsetX = 6;
            p->spriteOffsetY = 14;
            p->w.kf.flags |= 0x00000002;
        } else {
            if (!(p->heldInput & gPlayerControls.jump) || (p->moveState & 0x00000040)) {
                gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                p->charState = 93;

                if (p->qSpeedAirX <= 0) {
                    p->moveState |= 0x00000001;
                } else {
                    p->moveState &= ~0x00000001;
                }

                p->qSpeedAirX >>= 2;
                p->spriteOffsetX = 6;
                p->spriteOffsetY = 14;
            } else {
                Player_Knuckles_Glide_UpdateFrames(p);
            }
        }
    }
}

void Player_Knuckles_GlideSoftFall(Player *p)
{
    u8 someFlags;

    Player_AirInputControls(p);
    PlayerFn_Cmd_UpdateAirFallSpeed(p);
    sub_8022838(p);

    if (!(p->w.kf.flags & 0x2)) {
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;

        p->spriteOffsetX = 6;
        p->spriteOffsetY = 14;

        sub_8022318(p);

        if ((p->rotation + ((s32)((0.125)*256))) & ((s32)((0.75)*256))) {
            p->transition = 1;
        } else {
            p->unk2A = 15;
            p->charState = 94;
            gPlayer.callback = Player_Knuckles_GlideSoftLanding;;
        }
    }
}

void Player_Knuckles_GlideHardLandingUpdateAnim(Player *p)
{
    u8 rot;
    s32 p2;
    s32 res;

    if ((gStageTime & 0x3) == 0) {
        s32 offsetY = p->spriteOffsetY;

        if ((gStageFlags & 0x0080))
            offsetY = -offsetY;

        CreateBrakingDustEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)) + offsetY);
    }

    sub_8022838(p);

    res = sub_8029B88(p, &rot, &p2);

    if (res < 12) {
        if ((gStageFlags & 0x0080)) {
            res = -res;
        }

        p->qWorldY += ((s32)((res)*256));
        p->rotation = rot;
    } else if (!(p->moveState & 0x00000008)) {
        gPlayer.callback = Player_Knuckles_FallAfterGlide;;

        { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

        p->w.tf.flags |= 0x2;
    }
}

void sub_80135BC(Player *p)
{
    if (p->heldInput & gPlayerControls.jump) {
        if (p->qSpeedAirX <= 0) {
            p->qSpeedAirX += ((s32)((0.09375)*256));

            if (p->qSpeedAirX < 0) {
                Player_Knuckles_GlideHardLandingUpdateAnim(p);
                return;
            }
        } else {
            p->qSpeedAirX -= ((s32)((0.09375)*256));

            if (p->qSpeedAirX > 0) {
                Player_Knuckles_GlideHardLandingUpdateAnim(p);
                return;
            }
        }
    }

    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;

    {
        s32 offsetY;
        offsetY = p->spriteOffsetY - 14;

        if ((gStageFlags & 0x0080))
            offsetY = -offsetY;

        p->qWorldY += ((s32)((offsetY)*256));
    }

    sub_8022318(p);

    p->unk2A = 15;
    p->transition = 1;
}

s32 sub_8013644(Player *p)
{
    s32 result;
    u8 rot;

    if (p->moveState & 0x00000001) {
        s32 pX;
        s32 pY;

        pX = ((int)((p->qWorldX) >> 8));
        pX -= 2;
        pX -= p->spriteOffsetX;

        pY = ((int)((p->qWorldY) >> 8));

        result = sub_801E4E4(pX, pY, p->layer, -8, &rot, sub_801ED24);

        if (rot & 0x1) {
            p->rotation = ((s32)((0.25)*256));
        } else {
            p->rotation = rot;
        }
    } else {
        s32 pX;
        s32 pY;
        pX = ((int)((p->qWorldX) >> 8));
        pX += 2;
        pX += p->spriteOffsetX;

        pY = ((int)((p->qWorldY) >> 8));

        result = sub_801E4E4(pX, pY, p->layer, +8, &rot, sub_801ED24);

        if (!(rot & 0x1)) {
            p->rotation = rot;
        } else {
            p->rotation = ((s32)((0.75)*256));
        }
    }

    return result;
}

void Player_Knuckles_Climb_80136E8(Player *p)
{
    u8 rot;
    s32 r2;

    if (p->w.tf.unkAE >= 0) {
        if (p->moveState & 0x00000008) {
            sub_8013CA0(p);
            return;
        }

        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;

        if (p->charState != 100) {
            p->charState = 101;
        }

        if (p->heldInput & 0x0040) {
            s32 offsetY = ((s32)((p->spriteOffsetY)*256));

            if ((gStageFlags & 0x0080)) {
                offsetY = -offsetY;
            }

            p->qWorldY -= offsetY;
            r2 = sub_8013644(p);
            p->qWorldY += offsetY;

            if (r2 > 2) {
                Player_Knuckles_InitClimbPullUpEdge(p);
                return;
            } else if (r2 > 0) {




                p->rotation = rot;

                p->qSpeedGround = 0;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;

                sub_8022318(p);
                gPlayer.callback = Player_Knuckles_FallAfterGlide;;

                p->charState = 93;
                return;
            } else if (r2 < 0) {
                sub_801394C(p);
                return;
            } else {
                s32 offsetY = ((s32)((9.0)*256));
                if ((gStageFlags & 0x0080)) {
                    offsetY = -offsetY;
                }

                p->qWorldY -= offsetY;
                r2 = sub_8029AC0(p, &rot, ((void *)0));
                p->qWorldY += offsetY;

                if (r2 < 0) {
                    p->charState = 102;
                    p->qWorldY -= ((s32)((r2)*256));
                } else {
                    s32 speed;
                    p->charState = 102;
                    speed = ((s32)((0.75)*256));
                    if (p->moveState & 0x40) {
                        speed = ((s32)((0.5)*256));
                    }
                    p->qSpeedAirY = -speed;
                }
            }
        } else if (p->heldInput & 0x0080) {
            s32 speed;
            s32 offsetY = ((s32)((p->spriteOffsetY)*256));
            if ((gStageFlags & 0x0080)) {
                offsetY = -offsetY;
            }

            p->qWorldY += offsetY;
            r2 = sub_8013644(p);
            p->qWorldY -= offsetY;

            if (r2 > 0) {
                sub_8013CA0(p);
                return;
            }

            if ((gStageFlags & 0x0080)) {
                r2 = sub_8029AC0(p, &rot, ((void *)0));
            } else {
                r2 = sub_8029B0C(p, &rot, ((void *)0));
            }

            if (r2 < 0) {
                if ((gStageFlags & 0x0080)) {
                    p->qWorldY -= ((s32)((r2)*256));
                } else {
                    p->qWorldY += ((s32)((r2)*256));
                }

                p->rotation = rot;

                p->qSpeedGround = 0;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;

                sub_8022318(p);
                gPlayer.callback = Player_Knuckles_FallAfterGlide;;
                p->charState = 93;
                return;
            } else {
                p->charState = 103;
                speed = ((s32)((0.75)*256));
                if (p->moveState & 0x00000040) {
                    speed = ((s32)((0.5)*256));
                }
                p->qSpeedAirY = speed;
            }
        } else {
            r2 = sub_8013644(p);
            if (r2 > 0) {
                sub_8013CA0(p);
                return;
            }
        }

        r2 = 1;
        if (!(p->heldInput & (0x0080 | 0x0040))) {
            r2 = sub_8029B0C(p, &rot, ((void *)0));
            if (r2 < 0) {
                p->qWorldY += ((s32)((r2)*256));
                p->rotation = rot;

                p->qSpeedGround = 0;
                p->qSpeedAirX = 0;
                p->qSpeedAirY = 0;

                sub_8022318(p);

                p->charState = 93;
                return;
            }
        }

        if (r2 != 0 && --p->w.tf.shift == 0) {
            p->w.tf.shift = 3;
        }

        sub_801394C(p);
    } else {
        sub_8013CA0(p);
    }
}

void sub_801394C(Player *p)
{
    if (p->frameInput & gPlayerControls.jump) {
        p->qSpeedAirY = -((s32)((2.625)*256));
        p->qSpeedAirX = +((s32)((3.0)*256));
        p->moveState ^= 0x00000001;

        if (p->moveState & 0x00000001)
            p->qSpeedAirX = -p->qSpeedAirX;

        p->moveState |= 0x00000004;
        p->moveState |= 0x00000002;
        p->moveState |= 0x00000100;

        p->spriteOffsetX = 6;
        p->spriteOffsetY = 9;
        p->charState = 50;
        p->transition = 4;
    }
}




__attribute__((naked)) void Knuckles_Glide_UpdateSpeed(Player *player) { asm(".include " "\"asm/non_matching/game/player__sub_80139B0.inc\""); if (0)
{
    s32 speedGrnd = ((player->qSpeedGround) >= 0 ? (player->qSpeedGround) : -(player->qSpeedGround));
    s8 shift = player->w.kf.shift;

    if (speedGrnd < ((s32)((3.0)*256))) {
        speedGrnd += ((s32)((6.0 / 256.0)*256));
    } else if (speedGrnd < ((s32)((15.0)*256))) {
        if ((player->w.kf.shift & 0x7F) == 0)
            speedGrnd += ((s32)((3.0 / 256.0)*256));
    }

    if (player->moveState & 0x00000040) {
        if (speedGrnd > ((s32)((3.0)*256))) {
            speedGrnd -= ((s32)((9.0 / 256.0)*256));
            speedGrnd = speedGrnd < ((s32)((3.0)*256)) ? ((s32)((3.0)*256)) : speedGrnd;
        }
    }

    {
        s8 shift = player->w.kf.shift + ((s32)((0.25)*256));
        if (shift <= 0) {
            player->qSpeedGround = -speedGrnd;
        } else {
            player->qSpeedGround = +speedGrnd;
        }
    }

    {
        if (player->heldInput & 0x0020) {
            if ((u8)shift != 128) {
                if (shift < 0)
                    shift = -shift;
                shift += 2;
            }
            player->w.kf.shift = shift;
        } else if (player->heldInput & 0x0010) {
            if (shift != 0) {
                if (shift > 0)
                    shift = -shift;
                shift += 2;
            }
            player->w.kf.shift = shift;
        } else {
            if (shift & 0x7F) {
                shift += 2;
            }
            player->w.kf.shift = shift;
        }

        player->qSpeedAirX = ((int)((((int)(((gSineTable[(shift << 2) + 256])) >> 6)) * speedGrnd) >> 8));

        if (player->qSpeedAirY < ((s32)((0.5)*256))) {
            player->qSpeedAirY += ((s32)((0.09375)*256));
        } else {
            player->qSpeedAirY -= ((s32)((0.09375)*256));
        }

        if (gCamera.unk4C > 0) {
            gCamera.unk4C -= 2;
        } else if (gCamera.unk4C < 0) {
            gCamera.unk4C += 4;
        }
    }
}
}

void Player_Knuckles_InitGlide(Player *p)
{
    p->moveState &= ~0x00000004;
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 6;

    p->qSpeedAirY += ((s32)((1.5)*256));

    if (p->qSpeedAirY < 0)
        p->qSpeedAirY = 0;

    p->qSpeedGround = ((s32)((3.0)*256));

    if (p->moveState & 0x00000040)
        p->qSpeedGround /= 2;

    if (p->moveState & 0x00000001) {
        p->qSpeedGround = -p->qSpeedGround;
        p->qSpeedAirX = p->qSpeedGround;
        p->w.kf.shift = 0x80;
    } else {
        p->qSpeedAirX = p->qSpeedGround;
        p->w.kf.shift = 0;
    }

    p->rotation = 0;

    {
        u8 *tFlags = &p->w.kf.flags;
        *tFlags = 0;
        p->isBoosting = 0;
        *tFlags |= 0x2;
    }

    { gPlayer.callback = Player_Knuckles_Glide;; Player_Knuckles_Glide(p);; };
}

void Player_8013B6C(Player *p)
{
    sub_8029C84(p);

    if ((p->spriteInfoBody->s.frameFlags) & ((1) << (14))) {
        if (p->moveState & 0x00000002) {
            p->charState = 50;
            p->transition = 5;
        } else {
            p->transition = 1;
        }
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_Knuckles_Glide(Player *p)
{
    Knuckles_Glide_UpdateSpeed(p);
    sub_80232D0(p);
    Player_UpdatePosition(p);
    Player_Knuckles_Glide_MainUpdate(p);
}

void Player_Knuckles_FallAfterGlide(Player *p)
{
    sub_80232D0(p);
    Player_UpdatePosition(p);
    Player_Knuckles_GlideSoftFall(p);
}

void Player_Knuckles_GlideSoftLanding(Player *p)
{
    if ((p->spriteInfoBody->s.frameFlags) & ((1) << (14))) {
        p->transition = 1;
    }

    Player_HandlePhysicsWithAirInput(p);
}

void Player_Knuckles_GlideHardLanding(Player *p)
{
    sub_80135BC(p);
    sub_80232D0(p);
    Player_UpdatePosition(p);
}

void Player_Knuckles_Climb(Player *p)
{
    Player_Knuckles_Climb_80136E8(p);
    sub_80232D0(p);
    Player_UpdatePosition(p);
}

void Player_Knuckles_ClimbPullUpEdge(Player *p);

void Player_Knuckles_InitClimbPullUpEdge(Player *p)
{
    p->charState = 104;

    if ((gStageFlags & 0x0080)) {
        p->qWorldY += ((s32)((p->spriteOffsetY)*256));
    } else {
        p->qWorldY -= ((s32)((p->spriteOffsetY)*256));
    }

    gPlayer.callback = Player_Knuckles_ClimbPullUpEdge;;

    p->w.tf.shift = 0;
}

void sub_8013CA0(Player *p)
{
    gPlayer.callback = Player_Knuckles_FallAfterGlide;;

    p->spriteOffsetX = 6;
    p->spriteOffsetY = 14;

    p->charState = 93;
}


void sub_8013CC0(Player *p)
{
    s32 speedGrnd = ((p->qSpeedGround) >= 0 ? (p->qSpeedGround) : -(p->qSpeedGround));

    if (speedGrnd < ((s32)((3.0)*256))) {
        if (p->moveState & 0x00000001) {
            p->qSpeedGround = -((s32)((3.0)*256));
        } else {
            p->qSpeedGround = +((s32)((3.0)*256));
        }
    }
}


void sub_8013CF4(Player *p)
{
    s32 speedGrnd = p->qSpeedGround;

    if (speedGrnd > 0) {
        if ((speedGrnd - ((s32)((0.375)*256))) < 0) {
            speedGrnd = 0;
        } else {
            speedGrnd -= ((s32)((0.375)*256));
        }

        p->qSpeedGround = speedGrnd;
    } else if (speedGrnd < 0) {
        if ((speedGrnd + ((s32)((0.375)*256))) > 0) {
            speedGrnd = 0;
        } else {
            speedGrnd += ((s32)((0.375)*256));
        }

        p->qSpeedGround = speedGrnd;
    }
}

void Player_Knuckles_WindupDrillClaw(Player *p);

void Player_Knuckles_InitDrillClaw(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= (0x20000000 | 0x00000100);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->charState = 106;


    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;


    m4aSongNumStart(226);

    { gPlayer.callback = Player_Knuckles_WindupDrillClaw;; Player_Knuckles_WindupDrillClaw(p);; };
}

void sub_8013D7C(Player *p)
{
    gPlayer.callback = Player_Knuckles_FallAfterGlide;;
    p->charState = 93;
    p->spriteOffsetX = 6;
    p->spriteOffsetY = 14;
    p->w.kf.flags |= 0x2;
}

void Player_Knuckles_DrillClaw(Player *p);

void Player_Knuckles_WindupDrillClaw(Player *p)
{
    sub_80283C4(p);

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        p->charState = 107;
        p->qSpeedAirX = ((s32)((0.0)*256));
        p->qSpeedAirY = ((s32)((1.0)*256));

        CreateKnucklesFireEffect(((int)((p->qWorldX) >> 8)), ((int)((p->qWorldY) >> 8)), 1);

        { gPlayer.callback = Player_Knuckles_DrillClaw;; Player_Knuckles_DrillClaw(p);; };
    }
}

void Player_Knuckles_DrillClawLanding(Player *p);

void Player_Knuckles_DrillClaw(Player *p)
{
    p->qSpeedAirY += ((s32)((42.0 / 256.0)*256));

    sub_80283C4(p);

    if (!(p->moveState & 0x00000002)) {
        gPlayer.callback = Player_Knuckles_DrillClawLanding;;

        p->charState = 108;
        p->qSpeedAirY = 0;
    }
}

void Player_Knuckles_DrillClawLanding(Player *p)
{
    Player_HandlePhysicsWithAirInput(p);

    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        p->transition = 1;
    }
}

void Player_Knuckles_ClimbPullUpEdge(Player *p)
{
    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        p->rotation = 0;

        if ((gStageFlags & 0x0080)) {
            p->qWorldY += ((s32)((p->spriteOffsetY)*256));
        } else {
            p->qWorldY -= ((s32)((p->spriteOffsetY)*256));
        }

        if (p->moveState & 0x00000001) {
            p->qWorldX -= ((s32)((16.0)*256));
        } else {
            p->qWorldX += ((s32)((16.0)*256));
        }

        Player_TouchGround(p);;
    } else {
        sub_80232D0(p);
        Player_UpdatePosition(p);
    }
}





void sub_8013EE0(Player *p)
{
    s32 speedGrnd = p->qSpeedGround;

    if (speedGrnd > 0) {
        if ((speedGrnd - ((s32)((0.375)*256))) < 0) {
            speedGrnd = 0;
        } else {
            speedGrnd -= ((s32)((0.375)*256));
        }

        p->qSpeedGround = speedGrnd;
    } else if (speedGrnd < 0) {
        if ((speedGrnd + ((s32)((0.375)*256))) > 0) {
            speedGrnd = 0;
        } else {
            speedGrnd += ((s32)((0.375)*256));
        }

        p->qSpeedGround = speedGrnd;
    }
}

void Player_Amy_HammerAttack(Player *p);

void Player_Amy_InitHammerAttack(Player *p)
{
    Player_TransitionCancelFlyingAndBoost(p);

    p->spriteInfoBody->s.frameFlags &= ~((1) << (14));

    p->charState = 15;

    { Player_HandleSpriteYOffsetChange(p, 14); { (p)->spriteOffsetX = 6; (p)->spriteOffsetY = 14; } };

    p->moveState |= 0x20000000;

    CreateAmyAttackHeartEffect(0);

    { gPlayer.callback = Player_Amy_HammerAttack;; Player_Amy_HammerAttack(p);; };
}

void Player_Amy_HammerAttack(Player *p)
{
    s32 speed = p->qSpeedGround;
    if (speed > 0) {
        if ((speed -= ((s32)((0.375)*256))) < 0)
            speed = 0;

        p->qSpeedGround = speed;
    } else if (speed < 0) {
        if ((speed += ((s32)((0.375)*256))) > 0)
            speed = 0;

        p->qSpeedGround = speed;
    }

    if (p->spriteInfoBody->s.frameFlags & ((1) << (14))) {
        gPlayer.callback = Player_TouchGround;;
    }

    Player_HandlePhysicsWithAirInput(p);
}
