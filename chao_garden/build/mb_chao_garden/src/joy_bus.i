# 0 "src/joy_bus.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/joy_bus.c"
# 1 "include/global.h" 1



# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1



# 1 "../tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 5 "include/gba/defines.h" 2
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "../tools/agbcc/include/stdint.h" 1
# 31 "../tools/agbcc/include/stdint.h"
# 1 "../tools/agbcc/include/limits.h" 1
# 32 "../tools/agbcc/include/stdint.h" 2



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
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

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
} OamData;
# 128 "include/gba/types.h"
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
# 182 "include/gba/types.h"
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
# 207 "include/gba/types.h"
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
# 235 "include/gba/types.h"
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
void SoftReset(u32 resetFlags);
void SoftResetRom(u32 resetFlags);
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

s32 Mod(s32 num, s32 denom);

void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
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
# 5 "include/global.h" 2





# 1 "include/functions.h" 1



void IntrMain(void);
void IntrDummy(void);
# 11 "include/global.h" 2
# 91 "include/global.h"
typedef void (*HBlankFunc)(u8 vcount);
typedef void (*IntrFunc)(void);
typedef u32 (*SpriteUpdateFunc)(void);

extern u8 IntrMain_RAM[0x80];
extern IntrFunc gIntrTable[4];

extern u16 gUnknown_03003B70;

struct GameConfig {
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

extern struct GameConfig gUnknown_02000008;

struct UNK_03003330 {

    void (*unk0)(void);

    void (*unk4)(void);

    u32 unk8;

    s16 unkC;
    u8 unkE;
    u8 unkF;
    u8 unk10;
};

extern struct UNK_03003330 gUnknown_03003330;

extern u8 gSaveSectorNum;
extern u32 gSaveVersion;

extern u32 gUnknown_03005274;



extern void sub_02001528(u32);
extern void InitGarden(void);
extern void sub_0200be24(void);
extern void sub_0200d27c(void);
extern void sub_020018a0(void);
extern void GetInput(void);
# 2 "src/joy_bus.c" 2
# 1 "include/m4a.h" 1



# 1 "include/gba/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/gba/m4a_internal.h" 2
# 39 "include/gba/m4a_internal.h"
struct WaveData
{
    u16 type;
    u16 status;
    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};
# 57 "include/gba/m4a_internal.h"
struct ToneData
{
    u8 type;
    u8 key;
    u8 length;
    u8 pan_sweep;
    struct WaveData *wav;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
};

struct CgbChannel
{
    u8 sf;
    u8 ty;
    u8 rightVolume;
    u8 leftVolume;
    u8 at;
    u8 de;
    u8 su;
    u8 re;
    u8 ky;
    u8 ev;
    u8 eg;
    u8 ec;
    u8 echoVolume;
    u8 echoLength;
    u8 d1;
    u8 d2;
    u8 gt;
    u8 mk;
    u8 ve;
    u8 pr;
    u8 rp;
    u8 d3[3];
    u8 d5;
    u8 sg;
    u8 n4;
    u8 pan;
    u8 panMask;
    u8 mo;
    u8 le;
    u8 sw;
    u32 fr;
    u32 *wp;
    u32 cp;
    u32 tp;
    u32 pp;
    u32 np;
    u8 d4[8];
};

struct MusicPlayerTrack;

struct SoundChannel
{
    u8 status;
    u8 type;
    u8 rightVolume;
    u8 leftVolume;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
    u8 ky;
    u8 ev;
    u8 er;
    u8 el;
    u8 echoVolume;
    u8 echoLength;
    u8 d1;
    u8 d2;
    u8 gt;
    u8 mk;
    u8 ve;
    u8 pr;
    u8 rp;
    u8 d3[3];
    u32 ct;
    u32 fw;
    u32 freq;
    struct WaveData *wav;
    u32 cp;
    struct MusicPlayerTrack *track;
    u32 pp;
    u32 np;
    u32 d4;
    u16 xpi;
    u16 xpc;
};





struct MusicPlayerInfo;

typedef void (*MPlayFunc)();
typedef void (*PlyNoteFunc)(u32, struct MusicPlayerInfo *, struct MusicPlayerTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MusicPlayerInfo *);


struct SoundInfo
{




    u32 ident;

    vu8 pcmDmaCounter;


    u8 reverb;
    u8 maxChans;
    u8 masterVolume;
    u8 freq;

    u8 mode;
    u8 c15;
    u8 pcmDmaPeriod;
    u8 maxLines;
    u8 gap[3];
    s32 pcmSamplesPerVBlank;
    s32 pcmFreq;
    s32 divFreq;
    struct CgbChannel *cgbChans;
    u32 func;
    u32 intp;
    void (*CgbSound)(void);
    void (*CgbOscOff)(u8);
    u32 (*MidiKeyToCgbFreq)(u8, u8, u8);
    u32 MPlayJumpTable;
    u32 plynote;
    u32 ExtVolPit;
    u8 gap2[16];
    struct SoundChannel chans[12];
    s8 pcmBuffer[1584 * 2];
};

struct SongHeader
{
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct ToneData *tone;
    u8 *part[1];
};

struct PokemonCrySong
{
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct ToneData *tone;
    u8 *part[2];
    u8 gap;
    u8 part0;
    u8 tuneValue;
    u8 gotoCmd;
    u32 gotoTarget;
    u8 part1;
    u8 tuneValue2;
    u8 cont[2];
    u8 volCmd;
    u8 volumeValue;
    u8 unkCmd0D[2];
    u32 unkCmd0DParam;
    u8 xreleCmd[2];
    u8 releaseValue;
    u8 panCmd;
    u8 panValue;
    u8 tieCmd;
    u8 tieKeyValue;
    u8 tieVelocityValue;
    u8 unkCmd0C[2];
    u16 unkCmd0CParam;
    u8 end[2];
};
# 252 "include/gba/m4a_internal.h"
struct MusicPlayerTrack
{
    u8 flags;
    u8 wait;
    u8 patternLevel;
    u8 repN;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    u8 keyM;
    u8 pitM;
    s8 keyShift;
    s8 keyShiftX;
    s8 tune;
    u8 pitX;
    s8 bend;
    u8 bendRange;
    u8 volMR;
    u8 volML;
    u8 vol;
    u8 volX;
    s8 pan;
    s8 panX;
    s8 modM;
    u8 mod;
    u8 modT;
    u8 lfoSpeed;
    u8 lfoSpeedC;
    u8 lfoDelay;
    u8 lfoDelayC;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;
    struct SoundChannel *chan;
    struct ToneData tone;
    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};
# 305 "include/gba/m4a_internal.h"
struct MusicPlayerInfo
{
    struct SongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    u8 unk_B;
    u32 clock;
    u8 gap[8];
    u8 *memAccArea;
    u16 tempoD;
    u16 tempoU;
    u16 tempoI;
    u16 tempoC;
    u16 fadeOI;
    u16 fadeOC;
    u16 fadeOV;
    struct MusicPlayerTrack *tracks;
    struct ToneData *tone;
    u32 ident;
    u32 func;
    u32 intp;
};

struct MusicPlayer
{
    struct MusicPlayerInfo *info;
    struct MusicPlayerTrack *track;
    u8 unk_8;
    u16 unk_A;
};

struct Song
{
    struct SongHeader *header;
    u16 ms;
    u16 me;
};

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];



extern u8 gMPlayMemAccArea[];

extern char SoundMainRAM[];

extern MPlayFunc gMPlayJumpTable[];

typedef void (*XcmdFunc)(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
extern const XcmdFunc gXcmdTable[];

extern struct CgbChannel gCgbChans[];
extern const u8 gCgb3Vol[];

extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];

extern const struct PokemonCrySong gPokemonCrySongTemplate;

extern const struct ToneData voicegroup_pokemon_cry;

extern char gNumMusicPlayers[];
extern char gMaxLines[];




u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void);
void TrackStop(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayMain(void);
void RealClearChain(void *x);

void MPlayContinue(struct MusicPlayerInfo *mplayInfo);
void MPlayStart(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader);
void MPlayStop(struct MusicPlayerInfo *mplayInfo);
void FadeOutBody(struct MusicPlayerInfo *mplayInfo);
void TrkVolPitSet(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void ClearChain(void *x);
void Clear64byte(void *addr);
void SoundInit(struct SoundInfo *soundInfo);
void MPlayExtender(struct CgbChannel *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track, u8 a3);
void CgbSound(void);
void CgbOscOff(u8);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(MPlayFunc *mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void ClearModM(struct MusicPlayerTrack *track);
void m4aMPlayModDepthSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed);


void ply_fine(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_goto(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_patt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_rept(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_memacc(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_prio(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tempo(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_keysh(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_voice(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_vol(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pan(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bendr(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfos(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfodl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_mod(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_modt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tune(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_port(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_endtie(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_note(struct MusicPlayerInfo *, struct MusicPlayerTrack *);


void ply_xxx(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xwave(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xtype(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xatta(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xdeca(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xsust(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xrele(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecv(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xleng(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xswee(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd_0C(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd_0D(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
# 5 "include/m4a.h" 2

extern struct SoundInfo gSoundInfo;

extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16);
void m4aSongNumStop(u16 n);
void m4aMPlayAllContinue(void);
void m4aMPlayAllStop(void);
void m4aMPlayContinue(struct MusicPlayerInfo *mplayInfo);
void m4aMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MusicPlayerInfo *mplayInfo);

void m4aMPlayTempoControl(struct MusicPlayerInfo *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan);
# 3 "src/joy_bus.c" 2
# 1 "include/joy_bus.h" 1



# 1 "include/global.h" 1
# 5 "include/joy_bus.h" 2

void JoyBusInit(void);
void sub_02000590(void);
# 4 "src/joy_bus.c" 2
# 1 "include/input.h" 1





typedef struct {

    u16 unk0;
    u16 unk2;

    u16 unk4;

    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
} UNK_30043F0;

extern UNK_30043F0 gInput;

void GetInput(void);
void InputInit(void);
# 5 "src/joy_bus.c" 2
# 1 "include/save.h" 1






struct TCG_SaveSectorHeader {
    u16 checksum;
    u16 unk2;
    u32 unk4;
};

struct TCG_SaveSectorData {
    struct TCG_SaveSectorHeader header;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    u8 unk20;
    u8 filler21[0xF];
    u8 unk30[3][2];
    u8 unk36[16][2];
    u8 unk56;
    u8 unk57;
    u8 unk58;
    u8 unk59;
    u8 unk5A[4];
    u8 unk5E;
    u8 unk5F;
    u8 unk60;
    u8 unk61;
    u8 unk62;
    u8 unk63;
    u32 unk64;
    u8 unk68;
    u8 unk69;



    u8 unk6A[6];
    u8 unk70;
    u8 unk71;
    u8 unk72;
    u8 unk73;
    u8 unk74;
    u8 filler75[0xB];
    u8 unk80[15];
    u8 filler90[0x49];



    u8 unkD8[0x10];
    u8 unkE8;
    u8 unkE9;
    u8 unkEA;
    u8 unkEB;
    u8 unkEC;
    u8 unkED;
    u8 unkEE;
    u8 unkEF;
    u8 unkF0;
    u8 unkF1;
    u8 unkF2;
    u8 unkF3;
    u8 unkF4;
    u8 unkF5;
    u8 unkF6;
    u8 unkF7;
    u8 unkF8;
    u8 unkF9;
    u8 unkFA;
    u8 unkFB;
    u8 fillerFC[0x36];
    u8 unk132;
    u8 filler133[0x3b9];
    u8 unk4EC[4][2];
    u8 filler4ED[0x34];
    u8 unk528;
    u8 unk529;
    u8 filler52A[0x32E];
};

extern struct TCG_SaveSectorData gSaveGameState;

void LoadGameState(void);
# 6 "src/joy_bus.c" 2

extern s32 gUnknown_030005A8;
extern s32 gUnknown_030005AC;
extern vu8 gUnknown_030005B0;
extern vu8 gUnknown_030005B1;
extern s32 gUnknown_030005BC;
extern vu8 gUnknown_030043D8;
extern vu8 gUnknown_030043DC;
extern vu8 gUnknown_030043E4;
extern vu8 gUnknown_030043E8;
extern vu8 gUnknown_030043EC;

extern IntrFunc gJoyBusIntrRAM;
extern u8 *gUnknown_030005B4;
extern u16 gUnknown_030005B8;
extern u16 gUnknown_030005BA;


extern s8 gUnknown_03003350;

extern s32 gUnknown_030043E0;

s32 sub_02000988(s32);
s32 sub_02000a40(s32);
void sub_02000b0c(u32);
void sub_02000b64(u32);
void sub_02000bb0(void);

void JoyBusIntr(void);

void JoyBusInit(void)
{
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    (*(vu16 *)(0x4000000 + 0x200)) &= ~0x80;
    (*(vu16 *)(0x4000000 + 0x134)) = 0xC000;
    (*(vu16 *)(0x4000000 + 0x158)) = 0;

    (*(vu32 *)(0x4000000 + 0x150));
    (*(vu32 *)(0x4000000 + 0x154)) = 0;
    (*(vu16 *)(0x4000000 + 0x140)) = 0x47;

    CpuSet(&JoyBusIntr, &gJoyBusIntrRAM, 0x04000000 | ((0x520)/(32/8) & 0x1FFFFF));
    gIntrTable[0] = (void *)&gJoyBusIntrRAM + 1;



    gUnknown_030043DC = 0;
    gUnknown_030043EC = 0;
    gUnknown_030005B1 = 0xA;
    gUnknown_030043E8 = 0;
    gUnknown_030043D8 = gUnknown_030043E4 = 0;
    gUnknown_030005B0 = 0;
    gUnknown_030005BC = 0;
    gUnknown_030005A8 = (*(u8 *)0x080000AF << 0x18) | 0x4F5341;
    gUnknown_030005AC = (*(u8 *)0x080000AF << 0x18) | 0x425347;
    (*(vu16 *)(0x4000000 + 0x202)) = 0x80;
    (*(vu16 *)(0x4000000 + 0x200)) |= 0x80;
    (*(vu16 *)(0x4000000 + 0x208)) = 1;
}

void sub_02000590(void)
{
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    if (gUnknown_030005B1 < 10) {
        gUnknown_030005B1++;
    } else if (gUnknown_030043EC != 0) {
        u32 before = (*(vu16 *)(0x4000000 + 0x208));
        (*(vu16 *)(0x4000000 + 0x208)) = 0;
        (*(vu16 *)(0x4000000 + 0x134)) = 0x8000;
        (*(vu16 *)(0x4000000 + 0x134)) = 0xC000;
        (*(vu16 *)(0x4000000 + 0x158)) = 0;
        (*(vu32 *)(0x4000000 + 0x150));
        (*(vu32 *)(0x4000000 + 0x154)) = 0;
        (*(vu16 *)(0x4000000 + 0x140)) = 0x47;
        gUnknown_030043DC = 0;
        gUnknown_030043EC = 0;
        gUnknown_030005B1 = 10;
        gUnknown_030043E8 = 0;
        gUnknown_030005B0 = 0;
        gUnknown_030005BC = 0;
        (*(vu16 *)(0x4000000 + 0x202)) = 0x80;
        (*(vu16 *)(0x4000000 + 0x208)) = before;
    } else if (gUnknown_030005B0 < 11) {
        gUnknown_030005B0++;
    } else {
        u32 before = (*(vu16 *)(0x4000000 + 0x208));
        (*(vu16 *)(0x4000000 + 0x208)) = 0;
        (*(vu16 *)(0x4000000 + 0x134)) = 0x8000;
        (*(vu16 *)(0x4000000 + 0x134)) = 0xC000;
        (*(vu16 *)(0x4000000 + 0x158)) = 0;
        (*(vu32 *)(0x4000000 + 0x150));
        (*(vu32 *)(0x4000000 + 0x154)) = 0;
        (*(vu16 *)(0x4000000 + 0x140)) = 0x47;
        gUnknown_030043DC = 0;
        gUnknown_030043EC = 0;
        gUnknown_030005B1 = 10;
        gUnknown_030043E8 = 0;
        gUnknown_030005B0 = 0;
        gUnknown_030005BC = 0;
        (*(vu16 *)(0x4000000 + 0x202)) = 0x80;
        (*(vu16 *)(0x4000000 + 0x208)) = before;
    }
    (*(vu16 *)(0x4000000 + 0x208)) = 1;
}

void JoyBusIntr(void)
{
    s32 r4;
    u16 joyCnt;

    joyCnt = (*(vu16 *)(0x4000000 + 0x140));

    switch (gUnknown_030043DC) {
        case 0:
        default:
            if ((joyCnt & 1)) {
                sub_02000bb0();
                gUnknown_030043DC += 1;
            }
            break;
        case 1:
            if (!(joyCnt & 4)) {
                if ((joyCnt & 1)) {
                    sub_02000bb0();
                } else {
                    gUnknown_030043DC = 0;
                }
            } else {
                gUnknown_030043DC++;
            }
            break;
        case 2:
            if (joyCnt & 2) {
                if ((*(vu32 *)(0x4000000 + 0x150)) == gUnknown_030005AC) {
                    (*(vu16 *)(0x4000000 + 0x158)) = 0x30;
                    gUnknown_030043DC++;
                    break;
                }
                gUnknown_030043DC = 0;
                break;
            }
            if ((joyCnt & 1)) {
                sub_02000bb0();
                gUnknown_030043DC = 1;
            } else {
                gUnknown_030043DC = 0;
            }
            break;
        case 3:
            gUnknown_030043DC++;
            break;
        case 4:
            if ((joyCnt & 4)) {
                (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005BC;
            } else if ((2 & joyCnt)) {
                r4 = (*(vu32 *)(0x4000000 + 0x150));
                if (r4 == 0x6F616843) {
                    gUnknown_030005B1 = 0;
                    gUnknown_030043EC = 1;
                } else {
                    r4 = 0;
                }
                (*(vu32 *)(0x4000000 + 0x154)) = r4;
                gUnknown_030005BC = r4;
            }
            break;
        case 5:;
            if ((joyCnt & 4) != 0) {
                (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005BC;
                break;
            }
            if ((2 & joyCnt)) {
                r4 = (*(vu32 *)(0x4000000 + 0x150));
                if (r4 == 0x6F616843) {
                    u16 a;
                    gUnknown_030005B1 = 0;
                    gUnknown_030043E8 = 0;
                    a = gInput.unk0;
                    r4 = ((0xFF00 & a) << 8) | 0x4B43 | ((a << 0x18));
                } else if (r4 == 0x4F414843) {
                    u16 a;
                    gUnknown_030005B1 = 0;
                    gUnknown_030043E8 = 1;
                    a = gInput.unk0;
                    r4 = ((0xFF00 & a) << 8) | 0x4B43 | ((a << 0x18));
                } else {
                    if ((r4 & 0xFF) == 0x2A) {
                        sub_02000b0c(r4);
                        gUnknown_030043DC = 6;
                    } else if ((r4 & 0xFF) == 0x22) {
                        sub_02000b64(r4);
                        gUnknown_030043DC = 8;
                    } else {
                        r4 = 0;
                    }
                }
                (*(vu32 *)(0x4000000 + 0x154)) = r4;
                gUnknown_030005BC = r4;
            }
            break;
        case 6:
            if (!(joyCnt & 4)) {
                if ((joyCnt & 2)) {
                    r4 = (*(vu32 *)(0x4000000 + 0x150));
                    if (!(r4 & 0xFFFF)) {
                        r4 = sub_02000988(r4);
                        gUnknown_030043DC = 7;
                    } else if ((r4 & 0xFF) == 0x2A) {
                        sub_02000b0c(r4);
                    } else {
                        r4 = 0;
                    }
                    (*(vu32 *)(0x4000000 + 0x154)) = r4;
                    gUnknown_030005BC = r4;
                }
            } else {
                (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005BC;
                break;
            }
            break;
        case 7:
            if (!(joyCnt & 4)) {
                if (joyCnt & 2) {
                    r4 = sub_02000988((*(vu32 *)(0x4000000 + 0x150)));
                    (*(vu32 *)(0x4000000 + 0x154)) = r4;
                    gUnknown_030005BC = r4;
                }
            } else {
                (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005BC;
                break;
            }
            break;
        case 8:
            if (!(joyCnt & 4)) {
                if (joyCnt & 2) {
                    r4 = (*(vu32 *)(0x4000000 + 0x150));
                    if ((r4 & 0xFF) == 0x22) {
                        sub_02000b64(r4);
                    } else if ((r4 & 0xFF) == 0x26) {
                        r4 = sub_02000a40(r4);
                        gUnknown_030043DC = 9;
                    } else {
                        r4 = 0;
                    }
                    (*(vu32 *)(0x4000000 + 0x154)) = r4;
                    gUnknown_030005BC = r4;
                }
            } else {
                (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005BC;
                break;
            }
            break;
        case 9:
            if ((joyCnt & 4)) {
                (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005BC;
                break;
            }

            if (joyCnt & 2) {
                r4 = sub_02000a40((*(vu32 *)(0x4000000 + 0x150)));
                (*(vu32 *)(0x4000000 + 0x154)) = r4;
                gUnknown_030005BC = r4;
                break;
            }
            break;
    }
    gUnknown_030005B0 = 0;
    (*(vu16 *)(0x4000000 + 0x140)) = joyCnt;
}

s32 sub_02000988(s32 in)
{
    u32 ret = in;
    if ((gUnknown_030005B8 == (gUnknown_030005BA + 1)) && (ret == 0x6F616843)) {
        gUnknown_030005B1 = 0;
        ret = ({
            u16 a = gInput.unk0;
            ((0xFF00 & a) << 8) | 0x4B43 | (a << 0x18);
        });
        gUnknown_030043DC = 5;
        gUnknown_030043D8 = 2;
    } else {
        u16 r2 = ((ret & 0xff) << 8) | ((ret >> 8) & 0xff);
        if ((r2 - gUnknown_030005BA) == 1) {
            gUnknown_030005BA = r2;
            gUnknown_030005B4 += 2;
        }
        if (r2 == gUnknown_030005BA) {
            gUnknown_030005B1 = 0;
            gUnknown_030005B4[0] = ret >> 0x10;
            gUnknown_030005B4[1] = ret >> 0x18;
        } else {
            ret = 0;
        }
    }
    return ret;
}

s32 sub_02000a40(s32 in)
{
    s32 ret = in;

    if (gUnknown_030005B8 == (gUnknown_030005BA + 1) && gUnknown_030005BC == ret) {
        gUnknown_030005B1 = 0;
        ret = ({
            u16 a = gInput.unk0;
            ((0xFF00 & a) << 8) | 0x4B43 | (a << 0x18);
        });
        gUnknown_030043DC = 5;
        gUnknown_030043E4 = 2;
    } else {
        if (gUnknown_030005BC == ret) {
            gUnknown_030005B1 = 0;
            gUnknown_030005BA += 1;
            gUnknown_030005B4 += 2;
        }
        ret = (gUnknown_030005B4[0] << 0x10) | (gUnknown_030005B4[1] << 0x18) | ((u16)gUnknown_030005BA >> 8)
            | ((0xFF & gUnknown_030005BA) << 8);
    }

    return ret;
}

void sub_02000af0(u8 p)
{
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    gUnknown_030043DC = p;
    (*(vu16 *)(0x4000000 + 0x208)) = 1;
}

void sub_02000b0c(u32 arg0)
{
    gUnknown_030005B1 = 0;

    gUnknown_030005B4 = &gUnknown_03003350;
    gUnknown_030005B8 = ((arg0 >> 8) & 0xFF00) | (arg0 >> 0x18);
    gUnknown_030005BA = 0;
    gUnknown_030043E0 = gUnknown_030005B8 * 2;
    gUnknown_030043D8 = 1;
}

void sub_02000b64(u32 p1)
{
    gUnknown_030005B1 = 0;
    gUnknown_030005B4 = &gSaveGameState.unk58;
    gUnknown_030005B8 = ((p1 >> 8) & 0xFF00) | (p1 >> 0x18);
    gUnknown_030005BA = 0;
    gUnknown_030043E4 = 1;
}

void sub_02000bb0(void)
{
    (*(vu32 *)(0x4000000 + 0x150));
    (*(vu32 *)(0x4000000 + 0x154)) = gUnknown_030005A8;
    (*(vu16 *)(0x4000000 + 0x158)) = 0x20;
}
