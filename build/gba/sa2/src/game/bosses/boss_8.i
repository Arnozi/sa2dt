# 0 "src/game/bosses/boss_8.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/bosses/boss_8.c"





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
# 7 "src/game/bosses/boss_8.c" 2
# 1 "include/flags.h" 1



# 1 "include/global.h" 1
# 5 "include/flags.h" 2
# 23 "include/flags.h"
extern u32 gFlags;
# 8 "src/game/bosses/boss_8.c" 2
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
# 9 "src/game/bosses/boss_8.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 10 "src/game/bosses/boss_8.c" 2
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
# 11 "src/game/bosses/boss_8.c" 2
# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 12 "src/game/bosses/boss_8.c" 2
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
# 13 "src/game/bosses/boss_8.c" 2
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
# 14 "src/game/bosses/boss_8.c" 2
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
# 15 "src/game/bosses/boss_8.c" 2
# 1 "include/game/sa1_sa2_shared/collision.h" 1




# 1 "include/rect.h" 1



typedef struct {
               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Rect8;
# 6 "include/game/sa1_sa2_shared/collision.h" 2

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
# 16 "src/game/bosses/boss_8.c" 2

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
# 18 "src/game/bosses/boss_8.c" 2
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
# 19 "src/game/bosses/boss_8.c" 2
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
# 9 "include/game/cheese.h" 2

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
# 20 "src/game/bosses/boss_8.c" 2
# 1 "include/game/stage/camera.h" 1
# 9 "include/game/stage/camera.h"
void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 21 "src/game/bosses/boss_8.c" 2

# 1 "include/game/stage/results.h" 1





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
# 7 "include/game/stage/results.h" 2

typedef struct {
                ScreenFade fade;
                Sprite title[3];
                Sprite sprScores[3];
                Sprite separator;
                u32 timeBonusScore;
                u32 ringBonusScore;
                u32 spRingBonusScore;
                s32 counter;
                s32 unk16C;
} StageResultsBase;

u16 CreateStageResults(u32, u16, u8);
void StageResults_AnimateSeparator(void);
void StageResults_AnimateTitle(void);

extern const u16 gAnimsGotThroughZoneAndActNames[][3];
extern const u16 gStageResultsHeadlineTexts[][3];
extern const u16 gAnimsGotThroughCharacterNames[][3];
# 23 "src/game/bosses/boss_8.c" 2
# 1 "include/game/stage/boss_results_transition.h" 1





extern void InitHBlankBgOffsets(u16);
extern void sub_802EF68(s16 p0, s16 p1, u8 p2);

extern const u16 gUnknown_080D6DE4[][2];
# 24 "src/game/bosses/boss_8.c" 2
# 1 "include/game/stage/screen_mask.h" 1





void ScreenMask_Right_OriginBottom(s32 qX, u16);
void ScreenMask_Right_OriginTop(s32 qX, u16);
void ScreenMask_Lower_OriginLeft(int_vcount y, u16 angle);
void ScreenMask_Upper_OriginLeft(int_vcount y, u16 angle);
void ScreenMask_Lower_OriginRight(int_vcount y, u16 angle);
void ScreenMask_Upper_OriginRight(int_vcount y, u16 angle);

void ScreenMask_CreateShape(u16, u16 width, u16, s16 x, s16 y, u8);
# 25 "src/game/bosses/boss_8.c" 2
# 1 "include/game/stage/screen_fade.h" 1
# 26 "src/game/bosses/boss_8.c" 2
# 1 "include/game/stage/screen_shake.h" 1






struct Task *CreateScreenShake(u32 p0, u32 p1, u32 p2, u32 p3, u32 flags);
# 27 "src/game/bosses/boss_8.c" 2

# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 29 "src/game/bosses/boss_8.c" 2
# 1 "include/constants/char_states.h" 1
# 30 "src/game/bosses/boss_8.c" 2

# 1 "include/constants/player_transitions.h" 1
# 32 "src/game/bosses/boss_8.c" 2
# 1 "include/constants/songs.h" 1
# 33 "src/game/bosses/boss_8.c" 2
# 1 "include/constants/tilemaps.h" 1
# 34 "src/game/bosses/boss_8.c" 2






typedef struct {
               Sprite s;
               SpriteTransform transform;
} BossSprite;

typedef struct {
                Vec2_32 qPos;
                u8 livesCockpit;
                u8 livesArms[2];
                u8 unkB;
                u8 unkC;
                u16 unkE;
                u16 unk10;
                u8 unk12;
                u32 unk14;
                Vec2_32 qUnk18[2];
                u16 rotation[2];
                u16 rotation2[2];
                u16 unk30[2];
                s16 qUnk34[2][2];
                u8 unk3C[2];
                u8 unk3E[2];
                u8 unk40[2];
                u8 unk42[2];
                void *tilesCloud;
                ScreenFade fade;
                BossSprite bsHead;
                BossSprite bsArms[2];
                Background body;
} SuperEggRoboZ;

typedef struct {
    u16 unk0;
    u16 unk2;
    u8 bossIndex;
    u8 unk5;
    u8 unk6;
} BossRunManager;

typedef struct {
    Sprite sprites[3][2];
    void *vram;
    Vec2_32 positions[3];
    Vec2_32 offsets[3];
    u16 unk154[3];
    u8 unk15A[3];
    u8 unk15D;
    u8 unk15E;
    u8 unk15F;
    SuperEggRoboZ *boss;
} SuperEggRoboZTowers;

typedef void (*EggRoboFn)(SuperEggRoboZ *boss, u8 arm);
typedef void (*SuperEggRoboZTowersCallback)(SuperEggRoboZTowers *, u8);

static void sub_8049F1C(SuperEggRoboZTowers *towers, u8 i);
static void sub_804A070(SuperEggRoboZTowers *towers, u8 i);
static void sub_804A1C0(SuperEggRoboZTowers *towers, u8 i);
static void sub_804A398(SuperEggRoboZTowers *towers, u8 i);
static void sub_804A53C(SuperEggRoboZTowers *towers, u8 i);
static void Task_SuperEggRoboZTowersMain(void);
static void TaskDestructor_SuperEggRoboZTowers(struct Task *);

static void Task_SuperEggRoboZMain(void);
static void TaskDestructor_SuperEggRoboZMain(struct Task *);

static void Task_BossRunManagerMain(void);
static void TaskDestructor_BossRunManager(struct Task *);

void Task_804AB24(void);
static void Task_804AD68(void);
static u8 sub_804B0EC(SuperEggRoboZ *boss, u8 arm);
static void sub_804B43C(SuperEggRoboZ *boss, u8 p1);
static void sub_804B594(SuperEggRoboZ *boss, u8 p1);
static void sub_804B734(SuperEggRoboZ *boss, u8 p1);
static void sub_804B984(SuperEggRoboZ *boss, u8 p1);
static void sub_804BAC0(SuperEggRoboZ *boss, u8 p1);
void sub_804BC44(SuperEggRoboZ *boss, u8 p1);
static void sub_804BE6C(SuperEggRoboZ *boss, u8 p1);
static void sub_804C080(SuperEggRoboZ *boss);
void sub_804C240(SuperEggRoboZ *boss, u8 p1);
static void sub_804C3AC(SuperEggRoboZ *boss);
static void sub_804C5B8(SuperEggRoboZ *boss);
static void sub_804C830(SuperEggRoboZ *boss);
static void sub_804CA08(SuperEggRoboZ *boss);
static void sub_804CA70(SuperEggRoboZ *boss);
static void Task_ShowResultsAndDelete(void);
static void sub_804CC98(SuperEggRoboZ *boss);
void sub_804AE40(SuperEggRoboZ *boss);
static void Boss8_HitCockpit(SuperEggRoboZ *boss);
static void sub_804C8F4(SuperEggRoboZ *boss);
static void sub_804CCD0(SuperEggRoboZ *boss, s32 qP1);
static bool8 sub_804C9B4(SuperEggRoboZ *boss, u8 param1);

const u16 sBossRunCameraYTriggers[] = {
    6400,
    13888,
    18016,
    23104,
    29152,
    38080,
    43091,
};

const u16 gUnknown_080D87E6[][2] = {
    { 5804, 177 }, { 13292, 177 }, { 17420, 177 }, { 22508, 177 }, { 28585, 177 }, { 37484, 201 }, { 41600, 225 }, { 41600, 225 },
};

const s32 gUnknown_080D8808[][2] = {
    { 5376, -4512 }, { 12864, -5952 }, { 17088, -2688 }, { 22080, -3552 }, { 28128, -4512 }, { 37058, -7394 }, { 42240, -3648 },
};

const s32 gUnknown_080D8840[][2] = {
    { 42869, 287 },
    { 42943, 287 },
    { 43017, 287 },
};

const u8 gUnknown_080D8858[][2] = {
    { 1, 1 }, { 2, 60 }, { 3, 120 }, { 4, 129 }, { 0, 180 }, { 0, 0 },
};

const TileInfo sTowerPiecesTileInfo[] = {
    { 0, 701, 0 },
    { 0, 702, 0 },
};

const SuperEggRoboZTowersCallback sTowerStateCallbacks[] = {
    sub_8049F1C, sub_804A070, sub_804A1C0, sub_804A398, sub_804A53C,
};

const u16 gUnknown_080D8888[2][2] = { { ((s32)((188)*256)), ((s32)((110)*256)) }, { ((s32)((162)*256)), ((s32)((110)*256)) } };

static const EggRoboFn sArmFuncs[8]
    = { sub_804B43C, sub_804B594, sub_804B734, sub_804B984, sub_804BC44, sub_804BE6C, sub_804BAC0, sub_804C240 };

const u16 sArmPalettes[2][16u] = {
    INCBIN_U16("graphics/boss_8_a.gbapal"),
    INCBIN_U16("graphics/boss_8_b.gbapal"),
};
# 195 "src/game/bosses/boss_8.c"
void CreateBossRunManager(u8 bossIndex)
{
    struct Task *t = TaskCreate(Task_BossRunManagerMain, sizeof(BossRunManager), 0x4000, 0, TaskDestructor_BossRunManager);
    BossRunManager *manager = (void *)(0x03000000 + ((t)->data));
    manager->bossIndex = bossIndex;
    manager->unk5 = 0;
    manager->unk6 = 0;
    manager->unk0 = gBossCameraYClamps[manager->bossIndex][0];
    manager->unk2 = gBossCameraYClamps[manager->bossIndex][1];

    gBossCameraClampYLower = gBossCameraYClamps[manager->bossIndex][0];
    gBossCameraClampYUpper = gBossCameraYClamps[manager->bossIndex][1];

    if (bossIndex != 0) {
        s32 x, y;
        Cheese *cheese;
        Player_DisableInputAndBossTimer();

        gPlayer.qSpeedGround = ((s32)((5)*256));


        x = gUnknown_080D87E6[bossIndex - 1][0] - ((int)((gPlayer.qWorldX) >> 8));
        y = gUnknown_080D87E6[bossIndex][1] - ((int)((gPlayer.qWorldY) >> 8));
        gPlayer.qWorldX += ((s32)((x)*256));
        gPlayer.qWorldY += ((s32)((y)*256));

        gCamera.x += x - 120;
        gCamera.y += y - 120;

        gCamera.unk20 += x - 120;
        gCamera.unk24 += y - 120;
        gCamera.unk10 += x - 120;
        gCamera.unk14 += y - 120;

        cheese = gCheese;
        if (cheese != ((void *)0)) {
            cheese->posX += ((s32)((x)*256));
            cheese->posY += ((s32)((y)*256));
        }
        manager->bossIndex--;
    }





}

static void Task_BossRunManagerMain(void)
{
    BossRunManager *manager = (void *)(0x03000000 + ((gCurTask)->data));

    register s32 r5 asm("r5");
    register s32 r1 asm("r1");
    register s32 r0 asm("r0");
    register s32 r6 asm("r6");



    s32 r4;

    if (manager->bossIndex <= 6) {
        if (manager->bossIndex == 6) {
            gBossCameraClampYLower = gBossCameraYClamps[7][0];
            gBossCameraClampYUpper = gBossCameraYClamps[7][1];
            if (gPlayer.qWorldX < ((s32)((42960)*256)) && gPlayer.qWorldX > ((s32)((gUnknown_080D8808[6][0] + 30)*256))) {
                gPlayer.moveState |= 0x00200000;
                gPlayer.qSpeedGround = ((s32)((5)*256));
                gPlayer.frameInput = 0;
                gPlayer.heldInput = 0;
                gPlayer.rotation = 0;
                if (((int)((gPlayer.qWorldX) >> 8)) - 120 != gCamera.x) {
                    if (((int)((gPlayer.qWorldX) >> 8)) - 120 > gCamera.x) {
                        gCamera.unk20++;
                        gCamera.x++;
                        gCamera.unk10++;
                    } else {
                        gCamera.unk20--;
                        gCamera.x--;
                        gCamera.unk10--;
                    }
                }
            } else if (gPlayer.qWorldX < ((s32)((42700)*256)) && gPlayer.qWorldX > ((s32)((gUnknown_080D8808[6][0] + 20)*256))) {
                if (gActiveBossTask == ((void *)0) && !(gStageFlags & 0x0100)) {
                    gPlayer.checkpointTime = gCourseTime;
                    CreateZoneBoss(7);
                    gStageFlags &= ~0x0002;
                }
            } else {
                r5 = gPlayer.qWorldX;
                if (r5 > ((s32)((42960)*256))) {
                    gPlayer.moveState &= ~0x08000000;
                    gPlayer.qSpeedGround = 0;
                    gPlayer.transition = 1;
                    manager->bossIndex++;
                    manager->unk6 = 1;
                } else if (gActiveBossTask != ((void *)0) && r5 < ((s32)((42300)*256))) {
                    r1 = gUnknown_080D8808[manager->bossIndex][0];
                    if (r1 >= 0) {
                        r0 = ((s32)((r1)*256));
                        if (r5 >= r0) {
                            r4 = gUnknown_080D8808[manager->bossIndex][1];
                            r6 = ((s32)((r4)*256));
                            r0 = r5 + r6;
                            gPlayer.qWorldX = r0;
                            gWorldSpeedX = r6;
                            sub_8039F50(r6, manager->bossIndex);
                            gBossRingsShallRespawn = 1;
                            gCamera.x += r4;
                            gCamera.unk20 += r4;
                            gCamera.unk10 += r4;
                            if (gCheese != ((void *)0)) {
                                gCheese->posX += r6;
                            }
                        }
                    }
                }
            }
        } else if (manager->bossIndex <= 5) {
            if (gCamera.unk10 > sBossRunCameraYTriggers[manager->bossIndex]) {
                gBossRingsShallRespawn = 1;
                gBossRingsRespawnCount = 10;
                gPlayer.checkpointTime = gCourseTime;
                CreateZoneBoss(++manager->bossIndex);
                gStageFlags &= ~0x0002;
            }

            if (gUnknown_080D8808[manager->bossIndex][0] >= 0 && gActiveBossTask != ((void *)0)
                && gPlayer.qWorldX >= ((s32)((gUnknown_080D8808[manager->bossIndex][0])*256))) {
                r4 = gUnknown_080D8808[manager->bossIndex][1];
                r5 = ((s32)((r4)*256));
                gPlayer.qWorldX += r5;
                gWorldSpeedX = r5;
                sub_8039F50(r5, manager->bossIndex);
                gBossRingsShallRespawn = 1;
                gCamera.x += r4;
                gCamera.unk20 += r4;
                gCamera.unk10 += r4;
                if (gCheese != ((void *)0)) {
                    gCheese->posX += r5;
                }
            }
        }
    }

    if (manager->unk5 < 7 && gCamera.unk10 > sBossRunCameraYTriggers[manager->unk5] - 600) {
        if (manager->unk5 == 6) {
            if (manager->unk6 == 0) {
                gCamera.unkC = 1;
                gCamera.unk8 = 1280;
            }
            gFinalBossActive = 1;
        } else {
            manager->unk5++;
        }
    }

    if (manager->unk0 != gBossCameraYClamps[manager->unk5][0]) {
        if (manager->unk0 < gBossCameraYClamps[manager->unk5][0]) {
            manager->unk0++;
        } else {
            manager->unk0--;
        }
    }

    if (manager->unk2 != gBossCameraYClamps[manager->unk5][1]) {
        if (manager->unk2 < gBossCameraYClamps[manager->unk5][1]) {
            manager->unk2++;
        } else {
            manager->unk2--;
        }
    }

    gBossCameraClampYLower = manager->unk0;
    gBossCameraClampYUpper = manager->unk2;
}

static void TaskDestructor_BossRunManager(struct Task *t) { }

static void CreateSuperEggRoboZTowers(void *vram, SuperEggRoboZ *boss)
{
    u8 i, j;
    struct Task *t = TaskCreate(Task_SuperEggRoboZTowersMain, sizeof(SuperEggRoboZTowers), 0x4080, 0, TaskDestructor_SuperEggRoboZTowers);
    SuperEggRoboZTowers *towers = (void *)(0x03000000 + ((t)->data));
    void *vrams[2];
    Sprite *s;

    towers->unk15D = 0;
    towers->vram = vram;
    towers->boss = boss;
    towers->unk15E = 0;
    towers->unk15F = 0;
    vrams[0] = VramMalloc(47);
    vrams[1] = vrams[0] + (15 * 32);

    for (i = 0; i < 3; i++) {
        towers->positions[i].x = ((s32)((gUnknown_080D8840[i][0])*256));
        towers->positions[i].y = ((s32)((gUnknown_080D8840[i][1])*256));
        towers->offsets[i].x = 0;
        towers->offsets[i].y = 0;
        towers->unk154[i] = (i + 2) * 300;
        towers->unk15A[i] = 0;

        for (j = 0; j < 2; j++) {
            s = &towers->sprites[i][j];
            s->x = 80;
            s->y = 80;
            s->graphics.dest = vrams[j];
            s->graphics.anim = sTowerPiecesTileInfo[j].anim; s->variant = sTowerPiecesTileInfo[j].variant; s->oamFlags = ((28) << 6); s->graphics.size = 0;; s->animCursor = 0; s->qAnimDelay = 0; s->prevVariant = -1; s->animSpeed = ((int)((float)(1.0)*0x10)); s->palId = 0; s->hitboxes[0].index = -1;;; s->frameFlags = (((1) << (12)) | (0));;
            UpdateSpriteAnimation(s);
        }
    }
}

static void Task_SuperEggRoboZTowersMain(void)
{
    u8 i;
    SuperEggRoboZTowers *towers = (void *)(0x03000000 + ((gCurTask)->data));
    if (gActiveBossTask == ((void *)0)) {
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < 3; i++) {
        sTowerStateCallbacks[towers->unk15A[i]](towers, i);
    }

    if (((int)((gPlayer.qWorldY) >> 8)) < 133) {
        Coll_DamagePlayer(&gPlayer);
    }

    if (towers->unk15F == 0 && towers->boss->livesCockpit == 0) {
        towers->unk15F = 1;
    }
}

static void sub_8049F1C(SuperEggRoboZTowers *towers, u8 towerIndex)
{
    Sprite *prop = &towers->sprites[towerIndex][0];
    Sprite *platform = &towers->sprites[towerIndex][1];

    s32 preY = -towers->offsets[towerIndex].y;

    Vec2_32 pos;

    register u8 *unk15F asm("r6") = &towers->unk15F;



    if (*unk15F == 0) {
        towers->offsets[towerIndex].y = 0;
    }

    preY += towers->offsets[towerIndex].y;

    pos.x = ((int)((towers->positions[towerIndex].x + towers->offsets[towerIndex].x) >> 8));
    pos.y = ((int)((towers->positions[towerIndex].y + towers->offsets[towerIndex].y) >> 8));

    prop->x = pos.x - gCamera.x;
    prop->y = pos.y - gCamera.y;

    if (*unk15F == 0) {

        if (--towers->unk154[towerIndex] == 0) {
            towers->unk154[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][1];
            towers->unk15A[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][0];
        }
    }

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == prop) {
        gPlayer.qWorldY += ((s32)((1)*256));
        gPlayer.qWorldY += preY;
        if (towers->unk15E == 1) {
            gPlayer.qWorldX += ((s32)((1)*256));
        }
    }

    if (!(gPlayer.moveState & 0x00400000)) {
        u32 result = Coll_Player_Platform(prop, pos.x, pos.y, &gPlayer);

        if (result & 0x10000) {
            gPlayer.qWorldY += ((s32)((result << 0x10)*256)) >> 0x10;
        }
    }

    DisplaySprite(prop);
    platform->x = prop->x;
    platform->y = prop->y + 64;

    DisplaySprite(platform);
}

static void sub_804A070(SuperEggRoboZTowers *towers, u8 towerIndex)
{
    Sprite *s = &towers->sprites[towerIndex][0];
    Sprite *s2 = &towers->sprites[towerIndex][1];

    Vec2_32 pos;

    if (towers->unk15F == 0) {
        towers->offsets[towerIndex].y = -((s32)((8)*256));
    }

    pos.x = ((int)((towers->positions[towerIndex].x + towers->offsets[towerIndex].x) >> 8));
    pos.y = ((int)((towers->positions[towerIndex].y + towers->offsets[towerIndex].y) >> 8));

    s->x = pos.x - gCamera.x;
    s->y = pos.y - gCamera.y;

    if (!(gPlayer.moveState & 0x00400000)) {
        s32 result = Coll_Player_Entity_HitboxN(s, pos.x, pos.y, 0, &gPlayer, 0);
        if (result != 0) {
            gPlayer.qWorldY -= ((s32)((8)*256));
            gPlayer.qSpeedAirY = -((s32)((3.5)*256));
            gPlayer.charState = 20;
            gPlayer.transition = 6;
        }
    }

    if (towers->unk15F == 0) {
        m4aSongNumStart(264);
        if (--towers->unk154[towerIndex] == 0) {
            towers->unk154[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][1];
            towers->unk15A[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][0];
        }
    }

    DisplaySprite(s);
    s2->x = s->x;
    s2->y = s->y + 64;

    DisplaySprite(s2);
}
static void sub_804A1C0(SuperEggRoboZTowers *towers, u8 towerIndex)
{
    u8 j;
    Sprite *s = &towers->sprites[towerIndex][0];
    Sprite *s2 = &towers->sprites[towerIndex][1];

    s32 preY = -towers->offsets[towerIndex].y;
    s32 yOffset;

    ExplosionPartsInfo info;

    Vec2_32 pos;
    if (towers->unk15F == 0) {
        towers->offsets[towerIndex].y = -((s32)((8)*256));
    }

    preY += towers->offsets[towerIndex].y;

    yOffset = 16;
    pos.x = ((int)((towers->positions[towerIndex].x + towers->offsets[towerIndex].x) >> 8));
    pos.y = ((int)((towers->positions[towerIndex].y + towers->offsets[towerIndex].y) >> 8));

    s->x = pos.x - gCamera.x;
    s->y = pos.y - gCamera.y;

    if (towers->unk15F == 0) {
        if (towers->unk154[towerIndex] == 60 || towers->unk154[towerIndex] == 50) {
            for (j = 0; j < 8; j++) {
                s16 sin = j * 32;
                sin = (gSineTable[(sin)]);
                info.spawnX = ((sin * 5) >> 0xB) + pos.x - 20;
                info.rotation = 768;
                info.spawnY = pos.y - yOffset;
                info.velocity = ((s32)((0.1875)*256));

                info.speed = ((s32)((1)*256));

                info.vram = towers->vram;
                info.anim = 707;
                info.variant = 0;
                info.unk4 = 0;
                CreateBossParticleStatic(&info, &towers->unk15D);
            }
        }

        if (--towers->unk154[towerIndex] == 0) {
            towers->unk154[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][1];
            towers->unk15A[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][0];
        }
    }

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        gPlayer.qWorldY += preY + ((s32)((1)*256));

        if (towers->unk15E == 1) {
            gPlayer.qWorldX += ((s32)((1)*256));
        }
    }

    if (!(gPlayer.moveState & 0x00400000)) {
        u32 result = Coll_Player_Platform(s, pos.x, pos.y, &gPlayer);

        if (result & 0x10000) {
            gPlayer.qWorldY += ((s32)((result << 0x10)*256)) >> 0x10;
        }
    }

    DisplaySprite(s);
    s2->x = s->x;
    s2->y = s->y + 64;

    DisplaySprite(s2);
}

static void sub_804A398(SuperEggRoboZTowers *towers, u8 towerIndex)
{
    Sprite *s = &towers->sprites[towerIndex][0];
    Sprite *s2 = &towers->sprites[towerIndex][1];

    Vec2_32 pos;

    s32 preY = -towers->offsets[towerIndex].y;

    if (towers->unk15F == 0) {
        towers->offsets[towerIndex].y -= (((gSineTable[(towers->unk154[towerIndex] * 2) + 256]) * 3) >> 7);
    }
    preY += towers->offsets[towerIndex].y;

    pos.x = ((int)((towers->positions[towerIndex].x + towers->offsets[towerIndex].x) >> 8));
    pos.y = ((int)((towers->positions[towerIndex].y + towers->offsets[towerIndex].y) >> 8));

    s->x = pos.x - gCamera.x;
    s->y = pos.y - gCamera.y;

    if (towers->unk15F == 0) {
        if (--towers->unk154[towerIndex] == 0) {
            towers->unk154[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][1];
            towers->unk15A[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][0];
        }
    }

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        gPlayer.qWorldY += preY + ((s32)((1)*256));

        if (towers->unk15E == 1) {
            gPlayer.qWorldX += ((s32)((1)*256));
        }
    }

    if (!(gPlayer.moveState & 0x00400000)) {
        u32 result = Coll_Player_Platform(s, pos.x, pos.y, &gPlayer);

        if (result & 0x10000) {
            gPlayer.qWorldY += ((s32)((result << 0x10)*256)) >> 0x10;
        }
    }

    DisplaySprite(s);
    s2->x = s->x;
    s2->y = s->y + 64;
    DisplaySprite(s2);
    s2->y = s->y + 128;
    DisplaySprite(s2);
    s2->y = s->y + 192;
    DisplaySprite(s2);
}

static void sub_804A53C(SuperEggRoboZTowers *towers, u8 towerIndex)
{
    Sprite *s = &towers->sprites[towerIndex][0];
    Sprite *s2 = &towers->sprites[towerIndex][1];

    Vec2_32 pos;

    s32 preY = -towers->offsets[towerIndex].y;

    if (towers->unk15F == 0) {
        towers->offsets[towerIndex].y += ((s32)((1)*256));
    }
    preY += towers->offsets[towerIndex].y;

    pos.x = ((int)((towers->positions[towerIndex].x + towers->offsets[towerIndex].x) >> 8));
    pos.y = ((int)((towers->positions[towerIndex].y + towers->offsets[towerIndex].y) >> 8));

    s->x = pos.x - gCamera.x;
    s->y = pos.y - gCamera.y;

    if (towers->unk15F == 0) {
        if (--towers->unk154[towerIndex] == 0) {
            towers->unk154[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][1];
            towers->unk15A[towerIndex] = gUnknown_080D8858[towers->unk15A[towerIndex]][0];
        }
    }

    if (gPlayer.moveState & 0x00000008 && gPlayer.stoodObj == s) {
        gPlayer.qWorldY += preY + ((s32)((2)*256));

        if (towers->unk15E == 1) {
            gPlayer.qWorldX += ((s32)((1)*256));
        }
    }

    if (!(gPlayer.moveState & 0x00400000)) {
        u32 result = Coll_Player_Platform(s, pos.x, pos.y, &gPlayer);

        if (result & 0x10000) {
            gPlayer.qWorldY += ((s32)((result << 0x10)*256)) >> 0x10;
        }
    }

    DisplaySprite(s);
    s2->x = s->x;
    s2->y = s->y + 64;
    DisplaySprite(s2);
    s2->y = s->y + 128;
    DisplaySprite(s2);
    s2->y = s->y + 192;
    DisplaySprite(s2);
}

static void TaskDestructor_SuperEggRoboZTowers(struct Task *t)
{
    SuperEggRoboZTowers *towers = (void *)(0x03000000 + ((t)->data));
    VramFree(towers->sprites[0]->graphics.dest);
}

void CreateSuperEggRoboZ(void)
{
    struct Task *t;
    SuperEggRoboZ *boss;
    ScreenFade *fade;
    Sprite *s;
    Background *body;
    u8 arm;

    gBgCntRegs[0] = (0xC000 | ((20) << 8) | ((3) << 2) | (2));
    gBgCntRegs[2] = (0x0000 | ((31) << 8) | ((0) << 2) | (1));
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    ({ gBgSprites_Unknown1[(0)] = 0; gBgSprites_Unknown2[(0)][0] = 0; gBgSprites_Unknown2[(0)][1] = 0; gBgSprites_Unknown2[(0)][2] = 255; gBgSprites_Unknown2[(0)][3] = 64; });
    gPlayer.moveState |= 0x00200000;
    sub_8039ED4();
    gPseudoRandom = gStageTime;
    gPlayerBodyPSI.s.frameFlags &= ~((3) << (12));
    gPlayerBodyPSI.s.frameFlags |= ((1) << (12));
    gPlayerLimbsPSI.s.frameFlags &= ~((3) << (12));
    gPlayerLimbsPSI.s.frameFlags |= ((1) << (12));

    t = TaskCreate(Task_SuperEggRoboZMain, sizeof(SuperEggRoboZ), 0x4000, 0, TaskDestructor_SuperEggRoboZMain);
    gActiveBossTask = t;
    boss = (void *)(0x03000000 + ((t)->data));
    fade = &boss->fade;

    if (gDifficultyLevel != 0) {
        boss->livesCockpit = 6;
        boss->livesArms[0] = 4;
        boss->livesArms[1] = 4;
    } else {
        boss->livesCockpit = 8;
        boss->livesArms[0] = 6;
        boss->livesArms[1] = 6;
    }

    boss->qPos.x = ((s32)((42876)*256));
    boss->qPos.y = ((s32)((370)*256));
    boss->unkE = 360;
    boss->unk10 = 512;
    boss->unkB = 0;
    boss->unkC = 0;
    boss->unk14 = 30;
    boss->tilesCloud = VramMalloc(32);
    CreateSuperEggRoboZTowers(boss->tilesCloud, boss);

    for (arm = 0; arm < 2; arm++) {
        boss->rotation[arm] = (1024 / 2);
        boss->rotation2[arm] = (1024 / 2);
        boss->qUnk18[arm].x = ((s32)((0.0)*256));
        boss->qUnk18[arm].y = ((s32)((0.0)*256));
        boss->unk3C[arm] = 0;
        boss->unk30[arm] = arm * 360 + 360;
        boss->unk3E[arm] = ((s32)((0.0)*256));
        boss->unk40[arm] = ((s32)((0.0)*256));
        boss->unk42[arm] = ((s32)((0.0)*256));
        boss->qUnk34[arm][0] = ((s32)((0.0)*256));
        boss->qUnk34[arm][1] = ((s32)((0.0)*256));

        s = &boss->bsArms[arm].s;
        s->x = 0;
        s->y = 0;

        if (arm != 0) {
            s->graphics.dest = VramMalloc(8 * 8);
            s->graphics.anim = 704;
            s->variant = 0;
        } else {
            s->graphics.dest = VramMalloc(8 * 8);
            s->graphics.anim = 703;
            s->variant = 0;
        }

        s->oamFlags = ((27 + (arm * 4)) << 6);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = ((int)((float)(1.0)*0x10));
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = ((1) << (12));
    }

    fade->window = 0;
    fade->brightness = 0;
    fade->flags = (1 << 1);
    fade->speed = 0;
    fade->bldCnt = ((((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) & ~(1 << 11)) | (2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)));
    fade->bldAlpha = 0;

    body = &boss->body;
    body->graphics.dest = (void *)(0x6000000 + ((3) << 14));
    body->graphics.anim = 0;
    body->layoutVram = (void *)(0x6000000 + (0x800 * (20)));
    body->unk18 = 0;
    body->unk1A = 0;
    body->tilemapId = 368;
    body->unk1E = 0;
    body->unk20 = 0;
    body->unk22 = 0;
    body->unk24 = 0;
    body->targetTilesX = 30;
    body->targetTilesY = 20;
    body->paletteOffset = 0;
    body->flags = 0;
    DrawBackground(body);

    s = &boss->bsHead.s;
    s->x = 0;
    s->y = 0;
    s->graphics.dest = VramMalloc(8 * 8);
    s->graphics.anim = 705;
    s->variant = 0;
    s->oamFlags = ((31) << 6);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = ((3) << (12));
    gMusicManagerState.fadeoutSpeed = 200;
    gStageFlags |= 0x0020;
}

static void Task_804A9D8(void)
{
    SuperEggRoboZ *boss = (void *)(0x03000000 + ((gCurTask)->data));

    if (boss->unk14 > 60) {
        boss->qPos.y -= ((s32)((1.0)*256));

        if ((gStageTime % 32u) == 0) {
            m4aSongNumStart(260);
        }

        if ((gStageTime % 8u) == 0) {
            CreateScreenShake(0x100, 0x10, 0x80, 0x14, (0x80 | 0x3));
        }

        if (Mod(boss->unk14, 30) == 0) {
            s8 v;
            gPlayer.moveState = 0;
            v = ((boss->unk14 - 60) / 30) - 2;

            if (v > 3) {
                v = 3;
            }

            if (v >= 0 && v <= 3) {
                gPlayer.charState = 70 - v;
                gPlayer.prevCharState = -1;
            }
        }
    }

    boss->unkB = 1;
    sub_804C3AC(boss);

    gPlayer.moveState |= (0x00200000 | 0x00400000);

    if (--boss->unk14 == 0) {
        gStageFlags &= ~0x0020;
        gPlayer.moveState &= ~(0x00200000 | 0x00400000);

        m4aSongNumStart(260);

        gMusicManagerState.unk0 = 0;
        gMusicManagerState.unk1 = 0x12;
        gCamera.minX = 42820;
        boss->unkB = 0;
        gPlayer.moveState &= ~(0x00200000);

        gPlayerBodyPSI.s.frameFlags &= ~((3) << (12));
        gPlayerBodyPSI.s.frameFlags |= ((1) << (12));
        gPlayerLimbsPSI.s.frameFlags &= ~((3) << (12));
        gPlayerLimbsPSI.s.frameFlags |= ((1) << (12));
        gCurTask->main = Task_804AB24;
    }
}


void Task_804AB24(void)
{
    s32 speed;
    SuperEggRoboZ *boss = (void *)(0x03000000 + ((gCurTask)->data));
    ScreenFade *fade = &boss->fade;
    Player *p;

    sub_804CC98(boss);
    sub_804CA08(boss);
    sub_804AE40(boss);

    sArmFuncs[boss->unk3C[0]](boss, 0);
    sArmFuncs[boss->unk3C[1]](boss, 1);

    sub_804C5B8(boss);
    sub_804C830(boss);
    sub_804CA70(boss);


    p = &gPlayer;
    if ((((int)((p->qWorldY) >> 8)) > 184) && (((int)((p->qWorldX) >> 8)) >= 43034)) {
        Coll_DamagePlayer(p);



        asm("mov r1, %2\n"
            "ldrsh %0, [%1, r1]"
            : "=r"(speed)
            : "r"(p), "I"(((size_t)&((Player *)0)->qSpeedAirX)));



        if (speed > 0) {
            speed = -speed;
            p->qSpeedAirX = speed;
        }


        asm("mov r1, %2\n"
            "ldrsh %0, [%1, r1]"
            : "=r"(speed)
            : "r"(p), "I"(((size_t)&((Player *)0)->qSpeedGround)));



        if (speed > 0) {
            p->qSpeedGround = -speed;
        }
    }


    p = &gPlayer;
    if (((int)((p->qWorldX) >> 8)) >= 43088) {
        Coll_DamagePlayer(p);

        asm("mov r1, %2\n"
            "ldrsh %0, [%1, r1]"
            : "=r"(speed)
            : "r"(p), "I"(((size_t)&((Player *)0)->qSpeedAirX)));



        if (speed > 0) {
            p->qSpeedAirX = -speed;
        }


        asm("mov r1, %2\n"
            "ldrsh %0, [%1, r1]"
            : "=r"(speed)
            : "r"(p), "I"(((size_t)&((Player *)0)->qSpeedGround)));



        if (speed > 0) {
            p->qSpeedGround = -speed;
        }
    }



    if (boss->livesCockpit == 0) {
        u8 arm;


        gFlags &= ~0x4;
        gCurTask->main = Task_804AD68;
        boss->unk14 = 0xFF;

        Player_DisableInputAndBossTimer_FinalBoss();

        gPlayer.moveState |= 0x00200000;
        gPlayer.heldInput = 0;
        gPlayer.frameInput = 0;

        if (gPlayer.moveState & (0x00000008 | 0x00000002)) {
            gPlayer.charState = 50;
            gPlayer.qSpeedAirX = -((s32)((2)*256));
            gPlayer.qSpeedAirY = -((s32)((0)*256));
            gPlayer.transition = 5;
        } else {

            gPlayer.qSpeedGround = ((s32)((0)*256));
            gPlayer.qSpeedAirX = ((s32)((0)*256));
            gPlayer.qSpeedAirY = ((s32)((0)*256));
        }


        fade->window = 0;
        fade->brightness = 0;
        fade->flags = (1 << 0);
        fade->speed = 16;
        fade->bldCnt = (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12) | (1 << 13)) | (2 << 6) | ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5)));
        fade->bldAlpha = 0;

        for (arm = 0; arm < 2; arm++) {
            Sprite *sprArm;
            u16 anim;

            boss->qUnk18[arm].x += ((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6;
            boss->qUnk18[arm].y += ((gSineTable[(boss->rotation[arm])]) * 15) >> 6;

            boss->qUnk34[arm][0] = -((s32)((1.5)*256));
            boss->qUnk34[arm][1] = -((s32)((3)*256));

            boss->unk3C[arm] = 7;
            boss->unk30[arm] = 60;

            { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
        }
    }
}

static void Task_804AD68(void)
{
    SuperEggRoboZ *boss = (void *)(0x03000000 + ((gCurTask)->data));

    if (UpdateScreenFade(&boss->fade) == 1) {
        TasksDestroyInPriorityRange(0x5010, 0x5011);
        TasksDestroyInPriorityRange(0x5431, 0x5434);

        gStageFlags |= 0x0400;

        gPlayer.moveState |= 0x00100000;
        gPlayer.moveState |= 0x00400000;
        gCurTask->main = Task_ShowResultsAndDelete;
    } else {
        sub_804CC98(boss);
        sub_804CA08(boss);

        sArmFuncs[boss->unk3C[0]](boss, 0);
        sArmFuncs[boss->unk3C[1]](boss, 1);

        sub_804C5B8(boss);
        sub_804CA70(boss);
        sub_804C080(boss);
    }
}

void sub_804AE40(SuperEggRoboZ *boss)
{
    Sprite *s;

    if (gPlayer.moveState & 0x00000080) {
        if (boss->unkE == 0) {
            gBldRegs.bldY = 0;
            boss->fade.brightness = 0;
            gFlags &= ~0x4;
        }
        boss->unkE = 2;
    }

    if (boss->unkE > 0) {
        if (--boss->unkE == 0) {
            boss->unk12 = 120;
        }
    } else {


        if (boss->unkB > 0) {
            if (boss->unk12 > 0) {
                boss->unk12 = 120;

                boss->fade.brightness = ((s32)((32)*256));
                UpdateScreenFade(&boss->fade);
            }


            gFlags &= ~0x4;
        } else {

            if (--boss->unk12 == 0) {
                u32 livesCockpit;
                gFlags &= ~0x4;

                boss->fade.brightness = ((s32)((32)*256));
                UpdateScreenFade(&boss->fade);

                livesCockpit = boss->livesCockpit;
                boss->unkE = (livesCockpit <= 4) ? 140 : 360;

                s = &boss->bsHead.s;
                s->graphics.anim = 705;
                s->variant = 0;
                s->prevVariant = -1;
            } else {

                s32 r6;
                s32 r8;

                r8 = ((int)((boss->qPos.x + ((s32)((190)*256))) >> 8));
                r8 += (((gSineTable[(boss->unk10) + 256]) * 11) >> 14);
                r8 -= gCamera.x;

                r6 = ((int)((boss->qPos.y + ((s32)((40)*256))) >> 8));
                r6 += (((gSineTable[(boss->unk10)]) * 11) >> 14);
                r6 -= gCamera.y;

                if (boss->unk12 > 90) {
                    s32 val;
                    s32 rand;
                    InitHBlankBgOffsets(0);

                    sub_80075D0(0, 0, 160, r8, r6, ({
                                    rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                                    ((int)(((gSineTable[(((boss->unk12 - 90) * 8) % 256u)])) >> 8))
                                    +(rand % 8u);
                                }));

                    boss->fade.brightness = (boss->unk12 - 90) * 273;
                    UpdateScreenFade(&boss->fade);
                } else {
                    s16 r4;

                    if (boss->unk12 == 90) {

                        s = &boss->bsHead.s;
                        s->graphics.anim = 705;
                        s->variant = 1;
                        s->prevVariant = -1;
                        m4aSongNumStart(261);
                    }


                    if (boss->unk12 < 70) {
                        s32 rand = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }));
                        r4 = (boss->unk12 >> 1) + ((rand % 8u) + 8);

                        if (boss->unk12 > 60) {
                            sub_804CCD0(boss, ((s32)((r4 - 10)*256)));
                        }
                    } else {

                        s32 rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
                        r4 = ((116 - boss->unk12) >> 2) + ((rand % 8u) + 30);
                    }





                    asm("ldrh r0, [%3, #0x10]\n\t"
                        "mov r1, %0\n\t"
                        "lsl r3, r1, #0x10\n\t"
                        "asr r3, r3, #0x10\n\t"
                        "add r1, %1, #1\n\t"
                        "lsl r1, r1, #0x10\n\t"
                        "asr r1, r1, #0x10\n\t"
                        "str r1, [sp]\n\t"
                        "mov r1, #0x20\n\t"
                        "str r1, [sp, #4]\n\t"
                        "add r1, %2, #0\n\t"
                        "mov r2, #6\n\t"
                        "bl ScreenMask_CreateShape"
                        :
                        : "r"(r8), "r"(r6), "r"(r4), "r"(boss));




                    boss->fade.brightness = ((s32)((32)*256)) - (boss->unk12 * 91);
                    UpdateScreenFade(&boss->fade);
                }
            }
        }
    }
}

static u8 sub_804B0EC(SuperEggRoboZ *boss, u8 arm)
{
    u8 result = 0;
    s32 sp04, ip;
    s32 r3;
    s32 r4;
    s32 r5;
    s32 r6;
    s32 r7;


    register s32 sl asm("sl");




    if (boss->unk3E[arm] > 0) {
        return result;
    }

    sp04 = boss->qPos.x + boss->qUnk18[arm].x;
    sl = gUnknown_080D8888[arm][0];
    r5 = sp04 + sl;

    ip = boss->qPos.y + boss->qUnk18[arm].y;
    r7 = gUnknown_080D8888[arm][1];
    r4 = ip + r7;

    r6 = (gSineTable[(boss->rotation[arm]) + 256]);
    r5 += (r6 * 190) >> 9;

    r3 = (gSineTable[(boss->rotation[arm])]);
    r4 += (r3 * 190) >> 9;

    r5 = (gPlayer.qWorldX - r5) >> 8;
    r4 = (gPlayer.qWorldY - r4) >> 8;

    r5 = ((r5) * (r5));
    r4 = ((r4) * (r4));

    if ((r5 + r4) < 200) {
        Coll_DamagePlayer(&gPlayer);

        boss->unk40[arm] = 1;

        if (boss->unk3C[arm] == 3) {
            m4aSongNumStart(263);
        }

        return result;
    } else {
        s32 r0, r1;
        Sprite *s = &gPlayer.spriteInfoBody->s;

        r5 = sp04 + sl;
        r4 = ip + r7;

        r1 = ((r6 * 95) >> 9);
        r0 = ((r3 * 95) >> 9);
        r6 = r5 + r1;
        r7 = r4 + r0;

        if (gSelectedCharacter != CHARACTER_SONIC) {
            Player_UpdateHomingPosition(r6, r7);
        }

        if ((!(gPlayer.moveState & 0x00000080)) && ((s->hitboxes[1]).index != -1)) {
            r5 = ((int)((gPlayer.qWorldX - r6) >> 8));
            r4 = ((int)((gPlayer.qWorldY - r7) >> 8));

            r5 = ((r5) * (r5));
            r4 = ((r4) * (r4));
            if ((r5 + r4) < 376) {
                s32 speed;
                result = sub_804C9B4(boss, arm);

                speed = -gPlayer.qSpeedAirX;
                gPlayer.qSpeedAirX = speed;

                speed = -gPlayer.qSpeedAirY;
                gPlayer.qSpeedAirY = speed;

                speed = -gPlayer.qSpeedGround;
                gPlayer.qSpeedGround = speed;

                return result;
            }
        }

        if ((gCheese != ((void *)0)) && ((gCheese->reserved).index != -1)) {
            r6 -= gCheese->posX;
            r6 = (r6) >> 8;
            r7 -= gCheese->posY;
            r7 = (r7) >> 8;

            if ((((r6) * (r6)) + ((r7) * (r7))) < 376) {
                result = sub_804C9B4(boss, arm);

                gCheeseTarget.task->unk15 = 0;
            }
        }
    }

    return result;
}

bool8 sub_804B2EC(SuperEggRoboZ *boss, u8 arm)
{
    u8 result = 0;
    s32 x, y;
    s32 r6, r0;
    Sprite *s;

    if (boss->unk3E[arm] > 0) {
        return result;
    }

    s = &gPlayer.spriteInfoBody->s;




    r0 = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
    r6 = boss->qPos.x + boss->qUnk18[arm].x;
    r0 = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];


    x = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
    y = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];

    if (gSelectedCharacter != CHARACTER_SONIC) {
        Player_UpdateHomingPosition(x, y);
    }

    if ((!(gPlayer.moveState & 0x00000080)) && ((s->hitboxes[1]).index != -1)) {
        r6 = ((int)((gPlayer.qWorldX - x) >> 8));
        r0 = ((int)((gPlayer.qWorldY - y) >> 8));

        r6 = ((r6) * (r6));
        r0 = ((r0) * (r0));
        if ((r6 + r0) < 376) {
            s32 speed;
            result = sub_804C9B4(boss, arm);

            speed = -gPlayer.qSpeedAirX;
            gPlayer.qSpeedAirX = speed;

            speed = -gPlayer.qSpeedAirY;
            gPlayer.qSpeedAirY = speed;

            speed = -gPlayer.qSpeedGround;
            gPlayer.qSpeedGround = speed;

            return result;
        }
    }

    if ((gCheese != ((void *)0)) && ((gCheese->reserved).index != -1)) {
        x -= gCheese->posX;
        x = (x) >> 8;
        y -= gCheese->posY;
        y = (y) >> 8;

        if ((((x) * (x)) + ((y) * (y))) < 376) {
            result = sub_804C9B4(boss, arm);

            gCheeseTarget.task->unk15 = 0;
        }
    }

    return result;
}

static void sub_804B43C(SuperEggRoboZ *boss, u8 arm)
{
    boss->qUnk18[arm].x = 0;
    boss->qUnk18[arm].y = 0;

    if (boss->unk30[arm] == 300) {
        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 0; } else { s->graphics.anim = 703; s->variant = 0; } s->prevVariant = -1; };
    }

    if (--boss->unk30[arm] == 0) {
        boss->unk3C[arm] = 1;
        boss->unk30[arm] = 180;
        boss->unk40[arm] = 0;
    }

    if (sub_804B0EC(boss, arm) != 0) {
        boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
        boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

        boss->qUnk34[arm][0] = -((s32)((1.5)*256));
        boss->qUnk34[arm][1] = -((s32)((3.0)*256));
        boss->unk3C[arm] = 7;
        boss->unk30[arm] = 60;

        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
    }
}

static void sub_804B594(SuperEggRoboZ *boss, u8 arm)
{
    u16 angle;
    Vec2_32 pos;

    boss->qUnk18[arm].x = 0;
    boss->qUnk18[arm].y = 0;



    pos.x = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
    pos.y = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];

    angle = sub_8004418(((int)((gPlayer.qWorldY - pos.y) >> 8)), ((int)((gPlayer.qWorldX - pos.x) >> 8)));

    if (angle != boss->rotation[arm]) {
        if (angle < boss->rotation[arm]) {
            boss->rotation[arm]--;
        } else {
            boss->rotation[arm]++;
        }
    }

    if (--boss->unk30[arm] == 0) {
        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 1; } else { s->graphics.anim = 703; s->variant = 1; } s->prevVariant = -1; };
        boss->unk3C[arm] = 2;
        boss->unk30[arm] = 30;
    }

    if (sub_804B0EC(boss, arm) != 0) {
        boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
        boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

        boss->qUnk34[arm][0] = -((s32)((1.5)*256));
        boss->qUnk34[arm][1] = -((s32)((3.0)*256));
        boss->unk3C[arm] = 7;
        boss->unk30[arm] = 60;

        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
    }
}

static void sub_804B734(SuperEggRoboZ *boss, u8 arm)
{
    ExplosionPartsInfo info;
    s32 speed0;
    s32 x, y;
    u8 i, j;

    boss->qUnk18[arm].x = 0;
    boss->qUnk18[arm].y = 0;

    if (--boss->unk30[arm] == 0) {
        x = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
        y = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];

        for (i = 0; i < 3; i++) {
            for (j = 0; j < 3; j++) {
                s32 index;

                index = (boss->rotation[arm] - (1024 / 4));
                info.spawnX = ((int)((x) >> 8)) - (((gSineTable[(index & (1024 - 1)) + 256]) * (i - 1)) >> 11);
                index = (boss->rotation[arm] - (1024 / 4));
                info.spawnY = ((int)((y) >> 8)) - (((gSineTable[(index & (1024 - 1))]) * (i - 1)) >> 11);

                info.velocity = 0;
                info.rotation = (boss->rotation[arm] + (1024 / 2)) & (1024 - 1);
                speed0 = (((s32)((2)*256)) + (j * ((s32)((0.5)*256))));

                if ((1 - i) >= 0) {
                    s32 speedI = ((1 - i) * 3);
                    info.speed = speed0 - (speedI * ((s32)((0.125)*256)));
                } else {
                    s32 speedI = ((i - 1) * 3);
                    info.speed = speed0 - (speedI * ((s32)((0.125)*256)));
                }

                info.vram = boss->tilesCloud;
                info.anim = 707;
                info.variant = 0;
                info.unk4 = 0;

                CreateBossParticleStatic(&info, &boss->unkC);
            }
        }

        boss->unk3C[arm] = 3;
        boss->unk30[arm] = 10;
        m4aSongNumStart(262);
    }

    if (sub_804B0EC(boss, arm) != 0) {
        boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
        boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

        boss->qUnk34[arm][0] = -((s32)((1.5)*256));
        boss->qUnk34[arm][1] = -((s32)((3.0)*256));
        boss->unk3C[arm] = 7;
        boss->unk30[arm] = 60;

        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
    }
}

static void sub_804B984(SuperEggRoboZ *boss, u8 arm)
{
    boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 5) >> 5);
    boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 5) >> 5);

    if (--boss->unk30[arm] == 0) {
        boss->unk3C[arm] = 6;
        boss->unk30[arm] = 30;
    }

    if (sub_804B0EC(boss, arm) != 0) {
        boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
        boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

        boss->qUnk34[arm][0] = -((s32)((1.5)*256));
        boss->qUnk34[arm][1] = -((s32)((3.0)*256));
        boss->unk3C[arm] = 7;
        boss->unk30[arm] = 60;

        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
    }
}

static void sub_804BAC0(SuperEggRoboZ *boss, u8 arm)
{
    if (--boss->unk30[arm] == 0) {
        boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
        boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

        if (boss->unk40[arm] != 0) {
            boss->rotation2[arm] = boss->rotation[arm];
            boss->unk3C[arm] = 4;
            boss->unk30[arm] = 50;
        } else {
            boss->unk3C[arm] = 5;
            boss->unk30[arm] = 160;
        }

        { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
    } else {
        if (sub_804B0EC(boss, arm) != 0) {
            boss->qUnk18[arm].x += (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
            boss->qUnk18[arm].y += (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

            boss->qUnk34[arm][0] = -((s32)((1.5)*256));
            boss->qUnk34[arm][1] = -((s32)((3.0)*256));
            boss->unk3C[arm] = 7;
            boss->unk30[arm] = 60;

            { Sprite *s = &boss->bsArms[arm].s; if (arm != 0) { s->graphics.anim = 704; s->variant = 2; } else { s->graphics.anim = 703; s->variant = 2; } s->prevVariant = -1; };
        }
    }
}

void sub_804BC44(SuperEggRoboZ *boss, u8 arm)
{
    ExplosionPartsInfo info;
    s32 x, y;
    u8 i, j;

    boss->qUnk18[arm].x -= (((gSineTable[(boss->rotation2[arm]) + 256]) * 31) >> 10);
    boss->qUnk18[arm].y -= (((gSineTable[(boss->rotation2[arm])]) * 31) >> 10);

    boss->rotation[arm] = (boss->rotation[arm] + boss->unk30[arm] * 4) & (1024 - 1);

    if (--boss->unk30[arm] == 0) {
        x = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
        y = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];

        x -= (((gSineTable[(boss->rotation2[arm]) + 256]) * 15) >> 6);
        y -= (((gSineTable[(boss->rotation2[arm])]) * 15) >> 6);

        for (i = 0; i < 3; i++) {
            for (j = 0; j < 3; j++) {
                info.spawnX = ((int)((x) >> 8)) - (((gSineTable[((boss->rotation2[arm] - (1024 / 4)) & (1024 - 1)) + 256]) * (i - 1)) >> 11);
                info.spawnY = ((int)((y) >> 8)) - (((gSineTable[((boss->rotation2[arm] - (1024 / 4)) & (1024 - 1))]) * (i - 1)) >> 11);
                info.velocity = 0;
                info.rotation = (boss->rotation2[arm] + 576 - ((i * 2) + i + j) * (32)) & (1024 - 1);
                info.speed = (((s32)((2)*256)) + (j * ((s32)((0.5)*256)))) - ((((1 - i) >= 0 ? (1 - i) : -(1 - i)) * 3) * ((s32)((0.125)*256)));
                info.vram = boss->tilesCloud;
                info.anim = 707;
                info.variant = 0;
                info.unk4 = 0;

                CreateBossParticleStatic(&info, &boss->unkC);
            }
        }

        boss->rotation[arm] = boss->rotation2[arm];
        boss->unk3C[arm] = 0;
        boss->unk30[arm] = 300;
    }
}

static void sub_804BE6C(SuperEggRoboZ *boss, u8 arm)
{
    ExplosionPartsInfo info;
    s32 qX, qY;
    u8 i, j;

    boss->qUnk18[arm].x -= (((gSineTable[(boss->rotation[arm]) + 256]) * 5) >> 9);
    boss->qUnk18[arm].y -= (((gSineTable[(boss->rotation[arm])]) * 5) >> 9);

    if (--boss->unk30[arm] == 0) {
        qX = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
        qY = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];

        qX -= (((gSineTable[(boss->rotation[arm]) + 256]) * 15) >> 6);
        qY -= (((gSineTable[(boss->rotation[arm])]) * 15) >> 6);

        for (i = 0; i < 3; i++) {
            for (j = 0; j < 3; j++) {
                s32 index;
                index = (gSineTable[((boss->rotation[arm] - (1024 / 4)) & (1024 - 1)) + 256]);
                info.spawnX = ((int)((qX) >> 8)) - ((index * (i - 1)) >> 11);
                index = (gSineTable[((boss->rotation[arm] - (1024 / 4)) & (1024 - 1))]);
                info.spawnY = ((int)((qY) >> 8)) - ((index * (i - 1)) >> 11);

                info.velocity = ((s32)((18. / 256.)*256));
                info.rotation = (boss->rotation[arm] + (1024 / 2)) & (1024 - 1);

                {
                    s32 speed;
                    speed = ((j * ((s32)((0.375)*256))) + ((s32)((0.5)*256)));
                    info.speed = ((1 - i) >= 0) ? speed - ((1 - i) * ((s32)((0.125)*256))) : speed - ((i - 1) * ((s32)((0.125)*256)));
                }

                info.vram = boss->tilesCloud;
                info.anim = 707;
                info.variant = 0;
                info.unk4 = 0;

                CreateBossParticleStatic(&info, &boss->unkC);
            }
        }

        boss->unk3C[arm] = 0;
        boss->unk30[arm] = 300;
    } else if (sub_804B2EC(boss, arm)) {
        boss->qUnk34[arm][0] = -((s32)((1.5)*256));
        boss->qUnk34[arm][1] = -((s32)((3.0)*256));
        boss->unk3C[arm] = 7;
        boss->unk30[arm] = 60;
    }
}

static void sub_804C080(SuperEggRoboZ *boss)
{
    ExplosionPartsInfo info;

    if ((gStageTime & 0x7) == 0) {
        s32 rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        info.spawnX = gCamera.x + (rand & 0xFF);
        info.spawnY = gCamera.y + (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xFF);
        info.velocity = ((s32)((18. / 256.)*256));
        info.rotation = (((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((-0) + (1024 - 1))) + (0)));

        info.speed = rand = (((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((-((s32)((2)*256))) + (((s32)((4)*256)) - 1))) + (((s32)((2)*256)))));
        info.vram = ((u8*)(0x6000000 + 0x10000) + 0x2980);
        info.anim = 619;
        info.variant = 0;
        info.unk4 = 0;

        CreateBossParticleStatic(&info, &boss->unkC);
        m4aSongNumStart(144);
        m4aMPlayImmInit(&gMPlayInfo_SE3);
    }

    m4aMPlayVolumeControl(&gMPlayInfo_SE3, 0xFFFF, boss->unk14);

    if ((boss->unk14 > 0) && (gStageTime & 0x1)) {
        --boss->unk14;
    }

    if (((gStageTime + 3) & 0x7) == 0) {
        s32 rand;
        u8 r4 = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        r4 &= 0xF;
        r4 -= Div(r4, 6) * 6;

        rand = ({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; });
        info.spawnX = gCamera.x + (rand & 0xFF);
        info.spawnY = gCamera.y + (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & 0xFF);
        info.velocity = ((s32)((0.125)*256));
        info.rotation = (({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & (1024 - 1));
        info.speed = ((s32)((2)*256));

        info.vram = ((u8*)(0x6000000 + 0x10000) + (gTileInfoBossScrews[r4][0] * 32));
        info.anim = gTileInfoBossScrews[r4][1];
        info.variant = gTileInfoBossScrews[r4][2];
        info.unk4 = 0;
        CreateBossParticleStatic(&info, &boss->unkC);
    }
}

void sub_804C240(SuperEggRoboZ *boss, u8 arm)
{
    ExplosionPartsInfo info;
    s32 chance;

    if (boss->unk42[arm] != 0) {
        return;
    }

    if (((int)((boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1]) >> 8)) > 300) {
        boss->unk42[arm] = 1;
        return;
    }

    chance = 0x1F;
    boss->rotation[arm] = (boss->rotation[arm] + 800) & (1024 - 1);
    boss->qUnk34[arm][1] += ((s32)((0.125)*256));
    boss->qUnk18[arm].x += boss->qUnk34[arm][0];
    boss->qUnk18[arm].y += boss->qUnk34[arm][1];

    if ((gStageTime & 0x3) == 0) {
        s32 x, y;

        s32 one = 1;


        x = boss->qPos.x + boss->qUnk18[arm].x + gUnknown_080D8888[arm][0];
        y = boss->qPos.y + boss->qUnk18[arm].y + gUnknown_080D8888[arm][1];
        info.spawnX = ((int)((x) >> 8));
        info.spawnY = ((int)((y) >> 8));
        info.velocity = 0;
        info.rotation = sub_8004418(-(boss->qUnk34[arm][1] >> 3), -(boss->qUnk34[arm][0] >> 3));

        info.rotation = ({ ((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & chance) + info.rotation) - 0x10; })

            & (1024 - one);



        info.speed = ((int)(((gSineTable[((gStageTime * 16) & (1024 - 1))])) >> 6)) + ((s32)((3)*256));
        info.vram = ((u8*)(0x6000000 + 0x10000) + 0x2980);
        info.anim = 619;
        info.variant = 0;
        info.unk4 = 0;
        CreateBossParticleStatic(&info, &boss->unkC);
    }
}

static void sub_804C3AC(SuperEggRoboZ *boss)
{
    Sprite *s;
    SpriteTransform *tf;
    u8 i;

    Vec2_32 sp00;
    Vec2_32 sp08;

    sp08.x = ((s32)((((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((- -3) + (5 - 1))) + (-3)))*256));
    sp08.y = ((s32)((((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((- -3) + (5 - 1))) + (-3)))*256));

    gBgScrollRegs[0][0] = gCamera.x - ((int)((boss->qPos.x + sp08.x) >> 8));
    gBgScrollRegs[0][1] = gCamera.y - ((int)((boss->qPos.y + sp08.y) >> 8));

    sp00.x = ((int)((boss->qPos.x + ((s32)((190)*256))) >> 8)) - gCamera.x;

    if ((sp00.x + 50) > 330u) {
        gDispCnt &= ~0x0100;
    } else {
        gDispCnt |= 0x0100;
    }

    s = &boss->bsHead.s;
    tf = &boss->bsHead.transform;

    sp00.x = boss->qPos.x + sp08.x + ((s32)((190)*256));
    sp00.y = boss->qPos.y + sp08.y + ((s32)((40)*256));

    s->x = ((int)((sp00.x) >> 8)) - gCamera.x;
    s->y = ((int)((sp00.y) >> 8)) - gCamera.y;

    s->frameFlags
        = (gOamMatrixIndex++ | (((3) << (12)) | ((1) << (5)) | ((1) << (6))));

    tf->rotation = boss->unk10;
    tf->qScaleX = ((s32)((1)*256));
    tf->qScaleY = ((s32)((1)*256));
    tf->x = s->x;
    tf->y = s->y;

    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    for (i = 0; i < 2; i++) {
        s = &boss->bsArms[i].s;
        tf = &boss->bsArms[i].transform;

        sp00.x = boss->qPos.x + sp08.x + boss->qUnk18[i].x + gUnknown_080D8888[i][0];
        sp00.y = boss->qPos.y + sp08.y + boss->qUnk18[i].y + gUnknown_080D8888[i][1];

        s->x = ((int)((sp00.x) >> 8)) - gCamera.x;
        s->y = ((int)((sp00.y) >> 8)) - gCamera.y;

        s->frameFlags
            = (gOamMatrixIndex++ | (((1) << (12)) | ((1) << (5)) | ((1) << (6))));

        tf->rotation = boss->rotation[i];
        tf->qScaleX = ((s32)((1)*256));
        tf->qScaleY = ((s32)((1)*256));
        tf->x = s->x;
        tf->y = s->y;

        UpdateSpriteAnimation(s);
        TransformSprite(s, tf);
        DisplaySprite(s);
    }
}

static void sub_804C5B8(SuperEggRoboZ *boss)
{
    Sprite *s;
    SpriteTransform *tf;
    u8 r3;
    u8 i;

    Vec2_32 sp00;
    Vec2_32 sp08;

    if (boss->unkB > 0) {
        if (boss->unkB < 32) {
            sp08.x = ((s32)((((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((- -3) + (5 - 1))) + (-3)))*256));
            sp08.y = ((s32)((((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((- -3) + (5 - 1))) + (-3)))*256));
        } else {
            sp08.x = ((s32)((((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((- -7) + (9 - 1))) + (-7)))*256));
            sp08.y = ((s32)((((({ gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F; gPseudoRandom; }) & ((- -7) + (9 - 1))) + (-7)))*256));
        }
    } else {
        sp08.x = 0;
        sp08.y = 0;
    }

    gBgScrollRegs[0][0] = gCamera.x - ((int)((boss->qPos.x + sp08.x) >> 8));
    gBgScrollRegs[0][1] = gCamera.y - ((int)((boss->qPos.y + sp08.y) >> 8));

    sp00.x = ((int)((boss->qPos.x + ((s32)((190)*256))) >> 8)) - gCamera.x;

    if ((sp00.x + 50) > 330u) {
        gDispCnt &= ~0x0100;
    } else {
        gDispCnt |= 0x0100;
    }

    s = &boss->bsHead.s;
    tf = &boss->bsHead.transform;

    if (boss->unkB < 32) {
        r3 = boss->unkB >> 3;
    } else {
        r3 = (64 - boss->unkB) >> 3;
    }

    sp00.x = boss->qPos.x + sp08.x + ((s32)((190)*256));
    sp00.y = boss->qPos.y + sp08.y + ((s32)((40)*256));

    s->x = ((int)((sp00.x) >> 8)) - gCamera.x;
    s->y = ((int)((sp00.y) >> 8)) - gCamera.y + r3;

    s->frameFlags
        = (gOamMatrixIndex++ | (((3) << (12)) | ((1) << (5)) | ((1) << (6))));

    tf->rotation = boss->unk10;
    tf->qScaleX = ((s32)((1)*256));
    tf->qScaleY = ((s32)((1)*256));
    tf->x = s->x;
    tf->y = s->y;

    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);

    for (i = 0; i < 2; i++) {
        if (boss->unk42[i] != 0) {
            continue;
        }

        s = &boss->bsArms[i].s;
        tf = &boss->bsArms[i].transform;

        sp00.x = boss->qPos.x + sp08.x + boss->qUnk18[i].x + gUnknown_080D8888[i][0];
        sp00.y = boss->qPos.y + sp08.y + boss->qUnk18[i].y + gUnknown_080D8888[i][1];

        s->x = ((int)((sp00.x) >> 8)) - gCamera.x;
        s->y = ((int)((sp00.y) >> 8)) - gCamera.y;

        s->frameFlags
            = (gOamMatrixIndex++ | (((1) << (12)) | ((1) << (5)) | ((1) << (6))));

        tf->rotation = boss->rotation[i];
        tf->qScaleX = ((s32)((1)*256));
        tf->qScaleY = ((s32)((1)*256));
        tf->x = s->x;
        tf->y = s->y;

        UpdateSpriteAnimation(s);
        TransformSprite(s, tf);
        DisplaySprite(s);
    }
}

static void sub_804C830(SuperEggRoboZ *boss)
{
    Sprite *s;
    Player *p;
    Vec2_32 headPos;







    if (boss->unkB == 0) {
        headPos.x = ((int)((boss->qPos.x + ((s32)((190)*256))) >> 8));
        headPos.y = ((int)((boss->qPos.y + ((s32)((40)*256))) >> 8));


        s = &boss->bsHead.s;
        p = &gPlayer;
        if (Coll_Cheese_Enemy_Attack(s, headPos.x, headPos.y, 0, p) == 1) {
            Boss8_HitCockpit(boss);
            return;
        } else if (Coll_Player_Boss_Attack(s, headPos.x, headPos.y, 0, p) == 1) {
            Boss8_HitCockpit(boss);

            {
                s32 speed = p->qSpeedAirX;
                if (speed > 0) {
                    p->qSpeedAirX = -((speed) >= 0 ? (speed) : -(speed));
                }
            }
        } else if (Coll_Player_Enemy(s, headPos.x, headPos.y, 0, p) == 1) {
            s32 speed = p->qSpeedAirX;
            if (speed > 0) {
                p->qSpeedAirX = -speed;
            }
        }
    }

    if (gSelectedCharacter != CHARACTER_SONIC) {
        Player_UpdateHomingPosition(((s32)((headPos.x)*256)), ((s32)((headPos.y)*256)));
    }
}

static void Boss8_HitCockpit(SuperEggRoboZ *boss)
{
    Sprite *s = &boss->bsHead.s;

    if ((--boss->livesCockpit & 0xFF) & 0x1) {
        m4aSongNumStart(143);
    } else {
        m4aSongNumStart(235);
    }

    if (boss->livesCockpit == 3) {
        gMusicManagerState.unk1 = 0x10 | 0x3;
    }

    if (boss->livesCockpit == 0) {
        { s32 divResA, divResB; s32 oldScore = gLevelScore; gLevelScore += 1000; divResA = Div(gLevelScore, 50000); divResB = Div(oldScore, 50000); if ((divResA != divResB) && (gGameMode == 0)) { u16 lives = divResA - divResB; lives += gNumLives;; ({ if ((lives) > 255) (lives) = 255; gNumLives = (lives); }); if (0) gMusicManagerState.unk3 = 0x10 | 0x0; } }

        gMusicManagerState.unk1 = 0x10 | 0x20;
    }

    boss->unkB = 64;

    s->graphics.anim = 705;
    s->variant = 2;
    s->prevVariant = -1;
}

static bool8 sub_804C9B4(SuperEggRoboZ *boss, u8 arm)
{
    if (boss->livesArms[arm] > 0) {
        if ((--boss->livesArms[arm] & 0xFF) & 0x1) {
            m4aSongNumStart(143);
        } else {
            m4aSongNumStart(235);
        }

        boss->unk3E[arm] = 64;
    }

    return (boss->livesArms[arm] == 0) ? 1 : 0;
}

static void sub_804CA08(SuperEggRoboZ *boss)
{
    if ((boss->unkB != 0) && (--boss->unkB == 0)) {
        Sprite *s = &boss->bsHead.s;
        if (boss->livesCockpit > 0) {
            s->graphics.anim = 705;
            s->variant = 0;
        } else {
            s->graphics.anim = 705;
            s->variant = 3;
        }
        s->prevVariant = -1;
    }

    if (boss->unk3E[0] > 0) {
        boss->unk3E[0]--;
    }

    if (boss->unk3E[1] > 0) {
        boss->unk3E[1]--;
    }
}

static void sub_804CA70(SuperEggRoboZ *boss)
{
    s32 pal = (gStageTime & 0x2) >> 1;
    u8 i;

    if (boss->unkB != 0) {
        for (i = 0; i < (sizeof(sArmPalettes[0]) / sizeof((sArmPalettes[0])[0])); i++) {
            gObjPalette[(8)*16u + (i)] = (sArmPalettes[pal][i]);;
        }
    } else {
        for (i = 0; i < (sizeof(sArmPalettes[0]) / sizeof((sArmPalettes[0])[0])); i++) {
            gObjPalette[(8)*16u + (i)] = (sArmPalettes[0][i]);;
        }
    }

    if (boss->unk3E[0] > 0) {
        for (i = 0; i < (sizeof(sArmPalettes[0]) / sizeof((sArmPalettes[0])[0])); i++) {
            gObjPalette[(9)*16u + (i)] = (sArmPalettes[pal][i]);;
        }
    } else {
        for (i = 0; i < (sizeof(sArmPalettes[0]) / sizeof((sArmPalettes[0])[0])); i++) {
            gObjPalette[(9)*16u + (i)] = (sArmPalettes[0][i]);;
        }
    }

    if (boss->unk3E[1] > 0) {
        for (i = 0; i < (sizeof(sArmPalettes[0]) / sizeof((sArmPalettes[0])[0])); i++) {
            gObjPalette[(12)*16u + (i)] = (sArmPalettes[pal][i]);;
        }
    } else {
        for (i = 0; i < (sizeof(sArmPalettes[0]) / sizeof((sArmPalettes[0])[0])); i++) {
            gObjPalette[(12)*16u + (i)] = (sArmPalettes[0][i]);;
        }
    }

    gFlags |= 0x2;
}

static void Task_SuperEggRoboZMain(void)
{
    SuperEggRoboZ *boss = (void *)(0x03000000 + ((gCurTask)->data));
    sub_804C5B8(boss);

    gPlayer.moveState |= 0x00200000;

    if ((gPlayer.qSpeedGround == 0) && (--boss->unk14 == 0)) {
        boss->unk14 = 300;
        gCurTask->main = Task_804A9D8;
        m4aSongNumStart(260);
        gPlayer.charState = 0;
        gPlayer.transition = 1;
    }
}

static void Task_ShowResultsAndDelete(void)
{
    SuperEggRoboZ *boss = (void *)(0x03000000 + ((gCurTask)->data));
    boss->fade.brightness = ((s32)((32)*256));
    UpdateScreenFade(&boss->fade);

    CreateStageResults(gCourseTime, gRingCount, gSpecialRingCount);
    m4aSongNumStop(144);
    m4aMPlayVolumeControl(&gMPlayInfo_SE3, 0xFFFF, 0xFF);
    TaskDestroy(gCurTask);
}

static void sub_804CC98(SuperEggRoboZ *boss)
{
    u32 unkB = boss->unkB;

    if (unkB != 0) {
        s32 sin = (gSineTable[(unkB * 8)]);
        s32 val = (sin >> 7);
        boss->unk10 = (val + (1024 / 2)) & (1024 - 1);
    } else {
        boss->unk10 = (1024 / 2);
    }
}

static void sub_804CCD0(SuperEggRoboZ *boss, s32 qP1)
{
    Vec2_32 pos = { boss->qPos.x + ((s32)((190)*256)), boss->qPos.y + ((s32)((40)*256)) };

    if ((((int)((gPlayer.qWorldY) >> 8)) < pos.x) && (gPlayer.qWorldY >= (pos.y - qP1)) && (gPlayer.qWorldY <= (qP1 + pos.y))) {
        Coll_DamagePlayer(&gPlayer);
    }
}

static void TaskDestructor_SuperEggRoboZMain(struct Task *t)
{
    SuperEggRoboZ *boss = (void *)(0x03000000 + ((t)->data));
    VramFree(boss->tilesCloud);

    VramFree(boss->bsArms[0].s.graphics.dest);
    VramFree(boss->bsArms[1].s.graphics.dest);
    VramFree(boss->bsHead.s.graphics.dest);

    gActiveBossTask = ((void *)0);
}
