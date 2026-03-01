# 0 "src/game.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game.c"
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
# 2 "src/game.c" 2
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
# 3 "src/game.c" 2
# 1 "include/save.h" 1



# 1 "include/global.h" 1
# 5 "include/save.h" 2


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
# 4 "src/game.c" 2
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
# 5 "src/game.c" 2

# 1 "include/constants/songs.h" 1
# 7 "src/game.c" 2

void sub_02001290(void);
extern u8 gUnknown_03000606;
extern u8 gUnknown_03000607;
extern u8 gUnknown_03000608;

extern u16 gUnknown_030013B0[8][2];
extern u8 gUnknown_030013D0;

typedef struct {
    u16 unk0;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    s8 unk5;
    s8 unk6;
    u8 unk7;
} UNK_30005C0_UNK10;

typedef struct {

    void *unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    s16 unkE;
    UNK_30005C0_UNK10 *unk10;
    u16 unk14;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    s8 unk1C;
    u32 unk20;
} UNK_30005C0;

typedef void (*CallbackFunc)(UNK_30005C0 *);

typedef struct {
    const u16 *unk0;
    u16 *unk4;
    u8 unk8;
    u8 unk9;
    u16 unkA;
} UNK_30013D8;

extern UNK_30005C0 gUnknown_03004400[72];
extern UNK_30005C0 gUnknown_03000610[72];

extern u8 gUnknown_03001076;
extern u8 gUnknown_03001077;
extern u8 gUnknown_03001078;

extern s8 gUnknown_03005270;

u8 gUnknown_03001030[0x45];
u8 gUnknown_030005C0[0x45];

extern s8 gUnknown_03001120[32];
extern u8 gUnknown_03001140;
extern u8 gUnknown_03001141;
extern u8 gUnknown_03001142;
extern u16 gUnknown_03001280[128];
extern s8 gUnknown_03001380[32];
extern u8 gUnknown_030013A0;
extern u8 gUnknown_030013A1;
extern u8 gUnknown_030013A2;

extern u16 gUnknown_03004E70[128][4];
extern u8 gUnknown_03001088[4][2];

extern u8 gUnknown_03001080[4];
extern u8 gUnknown_0300111C;
extern u8 gUnknown_03001148[10][2];
extern u8 gUnknown_030011D8[10];
extern u8 gUnknown_0300127A;
extern u8 gUnknown_03004E20[10];

extern u32 gRandomSeed;
extern UNK_30013D8 gUnknown_030013D8[10];
extern u8 gUnknown_030014F8;

void sub_020013DC(UNK_30005C0 *);
void DummyCallback(UNK_30005C0 *);

void sub_02000c90(void)
{
    s32 i;

    sub_02001290();
    gUnknown_03004400[0].unk0 = (void *)sub_020013DC;
    gUnknown_03004400[0].unk5 = 0;
    gUnknown_03004400[0].unk4 = 0;
    gUnknown_03004400[0].unk6 = 1;
    gUnknown_03004400[1].unk0 = (void *)DummyCallback;
    gUnknown_03004400[1].unk4 = 1;
    gUnknown_03004400[1].unk6 = 0;
    gUnknown_03004400[1].unk5 = 0;

    for (i = 0; i < 70; i++) {
        gUnknown_030005C0[i] = i + 2;
    }

    gUnknown_03000606 = gUnknown_03000607 = gUnknown_03000608 = gUnknown_03005270 = 0;
}

UNK_30005C0 *sub_02000d04(CallbackFunc arg0, UNK_30005C0 *arg1, u8 arg2)
{
    u8 idx;
    UNK_30005C0 *r2;

    if (gUnknown_03000606 > 69) {
        return ((void *)0);
    }

    idx = gUnknown_030005C0[gUnknown_03000607++];
    if (gUnknown_03000607 > 69) {
        gUnknown_03000607 = 0;
    }
    r2 = &gUnknown_03004400[idx];
    r2->unk0 = arg0;
    r2->unk4 = idx;

    if (arg2 != 0) {
        r2->unk5 = arg1->unk5;
        r2->unk6 = arg1->unk4;
        gUnknown_03004400[arg1->unk5].unk6 = idx;
        arg1->unk5 = idx;
    } else {
        r2->unk5 = arg1->unk4;
        r2->unk6 = arg1->unk6;
        gUnknown_03004400[arg1->unk6].unk5 = idx;
        arg1->unk6 = idx;
    }

    r2->unk19 = 0;
    r2->unk18 = 0;
    r2->unk17 = 0;
    r2->unk16 = 0;
    r2->unkC = 0;
    r2->unk8 = 0;
    r2->unk7 = 0;
    r2->unk1C = -1;
    gUnknown_03000606++;
    return r2;
}

void sub_02000f34(void);

void sub_02000db0(void)
{
    s16 i;

    sub_02000f34();
    CpuSet(&gUnknown_03004400, &gUnknown_03000610, 0x04000000 | ((sizeof(gUnknown_03004400))/(32/8) & 0x1FFFFF));

    for (i = 0; i < 70; i++) {
        gUnknown_03001030[i] = gUnknown_030005C0[i];
    }
    gUnknown_03001076 = gUnknown_03000606;
    gUnknown_03001077 = gUnknown_03000607;
    gUnknown_03001078 = gUnknown_03000608;
}

void sub_02000fd4(void);

void sub_02000e28(void)
{
    s16 i;

    sub_02000fd4();
    CpuSet(&gUnknown_03000610, &gUnknown_03004400, 0x04000000 | ((sizeof(gUnknown_03004400))/(32/8) & 0x1FFFFF));

    for (i = 0; i < 70; i++) {
        gUnknown_030005C0[i] = gUnknown_03001030[i];
    }
    gUnknown_03000606 = gUnknown_03001076;
    gUnknown_03000607 = gUnknown_03001077;
    gUnknown_03000608 = gUnknown_03001078;
    gUnknown_03005270 = 0;
}

void sub_02000eac(void)
{
    u8 i = 0;
    do {
        ((CallbackFunc)gUnknown_03004400[i].unk0)(&gUnknown_03004400[i]);
        i = gUnknown_03004400[i].unk6;
    } while (i != 0);
}

void sub_02000ed4(UNK_30005C0 *arg0)
{
    gUnknown_03004400[arg0->unk5].unk6 = arg0->unk6;
    gUnknown_03004400[arg0->unk6].unk5 = arg0->unk5;

    gUnknown_030005C0[gUnknown_03000608++] = arg0->unk4;

    if (gUnknown_03000608 > 69) {
        gUnknown_03000608 = 0;
    }
    gUnknown_03000606--;
}

void DummyCallback(UNK_30005C0 *arg0) { }

void sub_02000f34(void)
{
    s16 i = 0;

    u8 *ip = &gUnknown_030013A0;
    u8 *r5 = &gUnknown_03001140;
    u8 *r8 = &gUnknown_030013A1;


    for (; i < 128; i++) {
        gUnknown_03001280[i] = gUnknown_03004E70[i][3];
    }

    for (i = 0; i < 32; i++) {
        gUnknown_03001380[i] = gUnknown_03001120[i];
    };


    *ip = *r5;
    *r8 = gUnknown_03001141;




    gUnknown_030013A2 = gUnknown_03001142;
}



__attribute__((naked)) void sub_02000fd4() { asm(".include " "\"asm/non_matching/sub_02000fd4.inc\""); if (0)
{
    s16 i;
    for (i = 0; i < 128; i++) {
        gUnknown_03004E70[i][0] = 512;
        gUnknown_03004E70[i][3] = gUnknown_03001280[i];
    };

    for (i = 0; i < 32; i++) {
        gUnknown_03001120[i] = gUnknown_03001380[i];
    };

    gUnknown_03001140 = gUnknown_030013A0;
    gUnknown_03001141 = gUnknown_030013A1;
    gUnknown_03001142 = gUnknown_030013A2;
}
}

void sub_02001088(void)
{
    u16 *r5;
    s32 ip;
    u8 r0, r6;
    UNK_30005C0 *r4;
    UNK_30005C0_UNK10 *r3;

    r5 = gUnknown_03004E70[0];
    r6 = 0x80;
    ip = 0;
    while (ip < 4) {
        r0 = gUnknown_03001088[ip][0];
        while (r0 != 0) {
            r4 = &gUnknown_03004400[gUnknown_03001088[r0][1]];
            r3 = r4->unk10;
            while (1) {
                *r5 = ((r3->unk2 | r4->unk16) << 8) | ((r3->unk6 + r4->unkE) & 0xFF);
                r5++;
                *r5 = (((r3->unk3 | r4->unk17) << 8) | ((r3->unk5 + r4->unkA) & 0x1FF));
                r5++;
                *r5 = (((r3->unk4 | r4->unk18) << 8) | (r3->unk0 + r4->unk14));
                r6 -= 1;

                if (r6 == 0) {
                    return;
                }

                r5 += 2;

                if (r3->unk7 == 0) {
                    break;
                }
                r3++;
            }
            r0 = gUnknown_03001088[r0][0];
        }
        ip += 1;
    }

    while (--r6 != (u8)-1) {
        *r5 = 512;
        r5 += 4;
    }
}

void sub_0200117c(void)
{
    s32 i;

    gUnknown_03005270 = gUnknown_0300127A;
    if (gUnknown_0300127A != 0) {
        for (i = 0; i < gUnknown_0300127A; i++) {
            gUnknown_030011D8[gUnknown_03001148[i][0]]++;
        }

        for (i = 0; i <= 160; i++) {
            u8 *p = &gUnknown_030011D8[i];
            p[1] += p[0];
        }

        for (i = gUnknown_0300127A - 1; i >= 0; i--) {
            gUnknown_03004E20[--gUnknown_030011D8[gUnknown_03001148[i][0]]] = gUnknown_03001148[i][1];
        }

        for (i = gUnknown_0300127A - 1; i >= 0; i--) {
            u8 val = gUnknown_03004E20[i];
            gUnknown_03001088[gUnknown_03001080[3]][0] = gUnknown_0300111C;
            gUnknown_03001088[gUnknown_0300111C][1] = val;
            gUnknown_03001080[3] = gUnknown_0300111C++;
        }
    }
}

void sub_02001254(s8 p0, u8 p1)
{
    gUnknown_03001088[gUnknown_03001080[p1]][0] = gUnknown_0300111C;
    gUnknown_03001088[gUnknown_0300111C][1] = p0;
    gUnknown_03001080[p1] = gUnknown_0300111C++;
}

void sub_02001290(void)
{
    s32 i;

    register u8 *r5 asm("r5") = &gUnknown_03001140;
    register u8 *r4 asm("r4") = &gUnknown_03001141;


    for (i = 0; i < 128; i++) {
        gUnknown_03004E70[i][0] = 0x200;
    }

    for (i = 0; i < 32; i++) {
        gUnknown_03001120[i] = i * 2;
    }

    gUnknown_03001142 = 0;

    *r4 = 0;
    *r5 = 0;




}

void sub_020012e0(void) { CpuFastSet(gUnknown_03004E70, (void *)0x7000000, ((sizeof(gUnknown_03004E70))/(32/8) & 0x1FFFFF)); }

s8 sub_020012f8(void)
{
    s8 ret;

    if (gUnknown_03001140 > 0x1F) {
        return -1;
    }

    ret = gUnknown_03001120[gUnknown_03001141++];
    gUnknown_03001141 = gUnknown_03001141 & 0x1F;
    gUnknown_03001140 += 1;
    return ret;
}

void sub_0200133c(s8 arg0)
{
    gUnknown_03001120[gUnknown_03001142++] = arg0;
    gUnknown_03001142 &= 0x1F;
    gUnknown_03001140 -= 1;
}

void sub_02001374(void)
{
    s32 i;
    for (i = 0; i <= 160 + 1; i++) {
        gUnknown_030011D8[i] = 0;
    }
    gUnknown_0300127A = 0;
}

void sub_02001398(u8 arg0, u8 arg1)
{
    if (arg1 > 160 + 48) {
        arg1 = 0;
    } else if (arg1 > 160 + 1) {
        arg1 = 160 + 1;
    }
    gUnknown_03001148[gUnknown_0300127A][0] = arg1;
    gUnknown_03001148[gUnknown_0300127A++][1] = arg0;
}

void sub_020013DC(UNK_30005C0 *unused)
{
    s32 var_r2;

    for (var_r2 = 0; var_r2 < 4; var_r2++) {
        gUnknown_03001080[var_r2] = var_r2;
        gUnknown_03001088[var_r2][0] = 0;
    }

    gUnknown_0300111C = var_r2;

    for (; var_r2 <= 0x49; var_r2++) {
        gUnknown_03001088[var_r2][0] = 0;
    }
}

void sub_02001420(void)
{
    u16 *p;
    const u16 *unk0;
    s32 j;

    while (gUnknown_030014F8 != 0) {
        gUnknown_030014F8 -= 1;
        unk0 = gUnknown_030013D8[gUnknown_030014F8].unk0;
        if (unk0 == ((void *)0)) {
            if (gUnknown_030013D8[gUnknown_030014F8].unk8 != (u8)-1) {
                u16 *r2 = gUnknown_030013D8[gUnknown_030014F8].unk4;
                u8 r4 = gUnknown_030013D8[gUnknown_030014F8].unk8;
                u8 i = gUnknown_030013D8[gUnknown_030014F8].unk9;
                u16 r5 = gUnknown_030013D8[gUnknown_030014F8].unkA;
                while (--i != (u8)-1) {
                    p = r2;
                    for (j = 0; j < r4; j++) {
                        *p++ = r5;
                    }
                    r2 += 32;
                }
            } else {
                { vu32 tmp = (vu32)(gUnknown_030013D8[gUnknown_030014F8].unkA); CpuFastSet((void *)&tmp, gUnknown_030013D8[gUnknown_030014F8].unk4, 0x01000000 | ((0x800)/(32/8) & 0x1FFFFF)); };
            }
        } else {
            u16 *r2 = gUnknown_030013D8[gUnknown_030014F8].unk4;
            u8 temp_r5 = gUnknown_030013D8[gUnknown_030014F8].unk8;
            u8 i = gUnknown_030013D8[gUnknown_030014F8].unk9;
            u16 r7 = gUnknown_030013D8[gUnknown_030014F8].unkA;
            while (--i != (u8)-1) {
                p = r2;
                for (j = 0; j < temp_r5; j++) {
                    *p++ = r7 + *unk0++;
                }
                r2 += 32;
            }
        }
    }
}




u32 sub_0200151c(void) { return gRandomSeed; }

void sub_02001528(u32 val) { gRandomSeed = val; }

s16 sub_02001534(void)
{
    gRandomSeed = gRandomSeed * 0x41c64e6d + 0x3039;
    return (gRandomSeed * 2) >> 0x11;
}

s16 sub_02001554(u16 arg0)
{
    u32 temp_r0;
    gRandomSeed = (gRandomSeed * 0x41C64E6D) + 0x3039;
    temp_r0 = gRandomSeed * 2;
    return Mod(temp_r0 >> 0x11, arg0);
}



u8 sub_02001588(s32 p0, u8 *arg1, u8 arg2)
{
    s32 i;
    u8 r0;

    arg1 += arg2;
    i = arg2;
    while (i > 0) {

        register u32 rem asm("r1");

        if (p0 <= 9) {
            *--arg1 = p0;
            break;
        }
        p0 = Div(p0, 10);



        *--arg1 = rem;

        i -= 1;
    }

    r0 = 0;
    while (i > 1) {
        *--arg1 = 0;
        r0++;
        i -= 1;
    }

    return r0;
}

void sub_020015cc(s32 p0, u8 *arg1, u8 arg2, u8 arg3)
{
    s32 i, j;
    u8 r0;
    u8 *arr;

    arr = arg1;
    arr += arg2;
    i = arg2;
    while (i > 0) {

        register u32 rem asm("r1");

        if (p0 <= 9) {
            *--arr = p0;
            break;
        }
        p0 = Div(p0, 10);



        *--arr = rem;

        i -= 1;
    }

    r0 = 0;
    while (i > 1) {
        *--arr = 0;
        r0++;
        i -= 1;
    }

    arg1 += r0;
    for (j = 0; j < arg2 - r0; j++) {
        *arg1 += arg3;
        arg1 += 1;
    }
}

void sub_0200163c(u16 *arg0, u8 arg1)
{
    while (--arg1 != (u8)-1) {
        u16 idx = *arg0++;


        *(u16 *)(0x4000000 + idx) = *arg0;
        arg0++;
    }
}

void sub_02001670(void) { gUnknown_030013D0 = 0; }

bool32 sub_02001698(u16, u16);

void sub_0200167c(u16 p1, u16 p2)
{
    gUnknown_030013D0 = 0;
    sub_02001698(p1, p2);
}

bool32 sub_02001698(u16 arg0, u16 arg1)
{
    u8 temp_r0;

    if (gUnknown_030013D0 > 7) {
        return 0;
    }
    gUnknown_030013B0[gUnknown_030013D0][0] = arg0;
    gUnknown_030013B0[gUnknown_030013D0++][1] = arg1;
    return 1;
}

void sub_020016d8(void)
{
    while (gUnknown_030013D0 != 0) {
        gUnknown_030013D0--;
        *(u16 *)(0x4000000 + gUnknown_030013B0[gUnknown_030013D0][0]) = gUnknown_030013B0[gUnknown_030013D0][1];
    }
}

void sub_02001718(u16 *arg0, u16 *arg1, u8 arg2, u8 arg3, u16 arg4)
{
    u16 *p;
    s32 j;

    while (--arg3 != (u8)-1) {
        p = arg1;
        for (j = 0; j < arg2; j++) {
            *p = *arg0 + arg4;
            arg0++;
            p++;
        }
        arg1 += 32;
    }
}

void sub_02001760(u16 *arg0, u8 arg2, u8 arg3, u16 arg4)
{
    u16 *p;
    s32 j;

    while (--arg3 != (u8)-1) {
        p = arg0;
        for (j = 0; j < arg2; j++) {
            *p = arg4;
            p++;
        }
        arg0 += 32;
    }
}

void sub_020017a4(void) { gUnknown_030014F8 = 0; }

bool32 sub_020017b0(const u16 *arg0, u16 *arg1, u8 arg2, u8 arg3, u16 arg4)
{
    if (gUnknown_030014F8 > 0x17) {
        return 0;
    }

    gUnknown_030013D8[gUnknown_030014F8].unk0 = arg0;
    gUnknown_030013D8[gUnknown_030014F8].unk4 = arg1;
    gUnknown_030013D8[gUnknown_030014F8].unk8 = arg2;
    gUnknown_030013D8[gUnknown_030014F8].unk9 = arg3;
    gUnknown_030013D8[gUnknown_030014F8++].unkA = arg4;
    return 1;
}

extern const s16 gUnknown_0201FB74[];
extern const s16 gUnknown_0201FD74[];

s32 sub_0200182c(u8 p1) { return gUnknown_0201FB74[p1]; }

s32 sub_02001840(u8 index) { return gUnknown_0201FB74[(index + 0xC0) & 0xFF]; }

u16 sub_0200185c(u8 *arg0, s32 arg1)
{
    u16 result = 0xFFFF;

    while (--arg1 != -1) {
        u32 thing = (result >> 8);
        u8 idx = result ^ *arg0;
        result = gUnknown_0201FD74[idx] ^ thing;
        arg0 += 1;
    }
    return (u16)~result;
}

void sub_020018B4(void);

extern void SetVBlankIntr(IntrFunc func);
void sub_020018a0(void)

{
    m4aSoundInit();
    SetVBlankIntr(sub_020018B4);
}

void sub_020018B4(void)
{
    m4aSoundVSync();
    gUnknown_03003330.unkE = 0;
}



# 1 "include/joy_bus.h" 1





void JoyBusInit(void);
void sub_02000590(void);
# 697 "src/game.c" 2

extern UNK_30005C0 *gUnknown_03001510;
extern UNK_30005C0 *gUnknown_0300150C;
extern UNK_30005C0 gUnknown_03004400[72];

extern void sub_020017a4(void);
extern void sub_02001c60(void);

extern void sub_02001D68(void);
extern void sub_0200218c(UNK_30005C0 *);
extern void sub_02003424(UNK_30005C0 *);
extern void sub_020035CC(UNK_30005C0 *);
extern void sub_02003e04(UNK_30005C0 *);
extern void sub_020041E0(UNK_30005C0 *);
extern void sub_020074c0(UNK_30005C0 *);
extern void sub_02007500(UNK_30005C0 *);
extern void sub_02008324(UNK_30005C0 *);
extern void sub_020083e4(UNK_30005C0 *);
extern void sub_020088b0(UNK_30005C0 *);
extern void sub_020089B0(UNK_30005C0 *);
extern void sub_020089D4(UNK_30005C0 *);
extern void sub_02008A04(UNK_30005C0 *);
extern void sub_020088f8(UNK_30005C0 *);

extern const u16 gUnknown_02021BC4[];
extern const u8 gUnknown_02024618[];
extern s8 gUnknown_03001500;
extern u8 gUnknown_03001501;
extern s8 gUnknown_03001509;
extern u16 gUnknown_0300152A;
extern s8 gUnknown_0300152D;
extern u8 gUnknown_0300152F;
extern u8 gUnknown_03001530;
extern u8 gUnknown_0300159A;
extern u8 gUnknown_0300159B;
extern u8 gUnknown_030015A8[4][2];

extern u16 gUnknown_02020E9C[];
extern u16 gUnknown_02020EDC[];

u16 gUnknown_03001538[7];



void InitGarden(void)
{
    s32 i;
    UNK_30005C0 *temp_r0;

    sub_02001c60();
    sub_020017a4();
    { vu32 tmp = (vu32)(0); CpuFastSet((void *)&tmp, (void *)(0x6000000 + (0x800 * (28))), 0x01000000 | ((0x2000)/(32/8) & 0x1FFFFF)); };
    LZ77UnCompWram(&gUnknown_02024618, (void *)0x0203F800);

    if (gUnknown_03003330.unk10 == 0) {
        sub_02001718((u16 *)(void *)0x0203F800, (u16 *)(0x6000000 + (0x800 * (30))), 9, 0x14, 0xE0);
    } else {
        sub_02001718((u16 *)((void *)0x0203F800 + 0x168), (u16 *)(0x6000000 + (0x800 * (30))), 9, 0x14, 0xE0);
    }

    sub_02001718((u16 *)gUnknown_02021BC4, (u16 *)(0x6000000 + (0x800 * (31))), 0x16, 0x14, 0x200);

    gUnknown_030015A8[3][0] = 0;
    gUnknown_030015A8[1][0] = 0;
    gUnknown_030015A8[2][0] = 0;
    gUnknown_030015A8[0][0] = 0;
    sub_02000c90();
    sub_02000d04(&sub_02003424, &gUnknown_03004400[1], 1);
    gUnknown_0300159B = 0;

    for (i = 0; i < 16; i++) {
        if (gSaveGameState.unk36[i][1] != 0) {
            temp_r0 = sub_02000d04(&sub_020035CC, &gUnknown_03004400[1], 1);
            temp_r0->unk1A = i;
            gUnknown_0300159B += 1;
        }
    }

    gUnknown_0300152F = gSaveGameState.unk58;
    temp_r0 = sub_02000d04(&sub_020074c0, &gUnknown_03004400[0], 0);
    temp_r0->unk1A = 1;
    temp_r0 = sub_02000d04(&sub_020074c0, &gUnknown_03004400[0], 0);
    temp_r0->unk1A = 0;
    gUnknown_0300152D = 0;
    gUnknown_03001510 = sub_02000d04(&sub_020041E0, &gUnknown_03004400[0], 0);
    sub_02000d04(&sub_020089B0, &gUnknown_03004400[0], 0);

    for (i = 0; i < 3; i++) {
        if (gSaveGameState.unk30[i][1] != 0) {
            temp_r0 = sub_02000d04(&sub_020083e4, &gUnknown_03004400[0], 0);
            temp_r0->unk1A = i;
        }
    }

    gUnknown_0300159A = 0;
    for (i = 0; i < 8; i++) {
        if (gSaveGameState.unk5A[i] != 0xFF) {
            temp_r0 = sub_02000d04(&sub_02008324, &gUnknown_03004400[0], 0);
            temp_r0->unk19 = i;
            temp_r0->unk1A = gSaveGameState.unk5A[i];
            gUnknown_0300159A += 1;
        }
    }

    gUnknown_03001530 = 0xFF;
    if (gSaveGameState.unk59 != 0xFF) {
        temp_r0 = sub_02000d04(&sub_02003e04, &gUnknown_03004400[0], 0);
        temp_r0->unk1A = gSaveGameState.unk59;
    }

    sub_02000d04(&sub_02007500, &gUnknown_03004400[0], 0);
    gUnknown_0300150C = sub_02000d04(&sub_02008A04, &gUnknown_03004400[0], 0);
    sub_02000d04(&sub_0200218c, &gUnknown_03004400[0], 0);
    sub_02000d04(&sub_020089D4, &gUnknown_03004400[0], 0);
    temp_r0 = sub_02000d04(&sub_020088b0, &gUnknown_03004400[0], 0);
    temp_r0->unk1A = 16;
    gUnknown_03001509 = 0;
    gUnknown_0300152A = 0x1F40;
    sub_0200167c(0, gUnknown_0300152A);
    m4aSongNumStart(1);
    gUnknown_03003330.unkF = 1;
    gUnknown_03003330.unk0 = &sub_02001D68;
    gUnknown_03001500 = gUnknown_03001501 = 0;
}

void sub_02001b58(void)
{
    s16 *var_r2;
    s32 i;

    sub_0200163c(gUnknown_02020E9C, 0xD);
    sub_0200163c(gUnknown_02020EDC, 3);
    i = 0;
    for (i = 0; i < 7; i++) {
        gUnknown_03001538[i] = gSaveGameState.unk6A[i] + 0x2AF;
    }
    sub_02001718(gUnknown_03001538, (void *)0x0600F042, 7, 1, 0xA000);
    sub_02000d04(sub_020088f8, gUnknown_03004400, 0)->unk1A = 0x10;
    gUnknown_0300152A = 0x1F40;
    sub_0200167c(0, gUnknown_0300152A);
    gUnknown_03003330.unkF = 1;
    gUnknown_03003330.unk0 = &sub_02001D68;
}

void sub_02001BF8(void)
{
    sub_02001c60();
    gUnknown_030015A8[0][0] = gUnknown_030015A8[1][0];
    gUnknown_030015A8[2][0] = gUnknown_030015A8[3][0];
    gUnknown_03001530 = 0xFF;
    sub_02000d04(&sub_020088b0, gUnknown_03004400, 0)->unk1A = 0x10;
    gUnknown_0300152A = 0x1F40;
    sub_0200167c(0, gUnknown_0300152A);
    m4aSongNumStart(1);
    gUnknown_03003330.unkF = 1;
    gUnknown_03003330.unk0 = &sub_02001D68;
}

extern u16 gUnknown_02020ED0[];
extern u8 gUnknown_020233FC[];
extern u8 gUnknown_020235FC[];
extern u8 gUnknown_020235FC[];
extern u8 gUnknown_02022C44[];
extern u8 gUnknown_020220EC[];
extern u8 gUnknown_020211C8[];
extern u8 gUnknown_020246E4[];
extern u8 gUnknown_02024C24[];
extern u8 gUnknown_020268B4[];
extern u16 gUnknown_030015B0[32];
extern u16 gUnknown_020248E4[][16];
extern u16 gUnknown_02024AA4[][16];

void sub_02001c60(void)
{
    s32 j, k, i;
    s32 *var_r3, *var_r6;

    sub_0200163c(gUnknown_02020E9C, 0xD);
    sub_0200163c(gUnknown_02020ED0, 3);
    { vu32 tmp = (vu32)(0); CpuFastSet((void *)&tmp, (void *)0x6000000, 0x01000000 | ((64)/(32/8) & 0x1FFFFF)); };
    CpuFastSet(&gUnknown_020233FC, (void *)0x5000000, ((0x200)/(32/8) & 0x1FFFFF));
    LZ77UnCompVram(&gUnknown_020235FC, (void *)0x6000000 + 0x1C00);
    LZ77UnCompVram(&gUnknown_02022C44, (void *)0x6000000 + 0x41E0);
    LZ77UnCompVram(&gUnknown_020220EC, (void *)0x6000000 + 0x55E0);
    LZ77UnCompVram(&gUnknown_020211C8, (void *)0x6000000 + 0x8000);
    var_r6 = (void *)0x6000000 + 0xF80;
    for (i = 0; i < 10; i++) {
        CpuFastSet((void *)0x6000000 + 0x2980, (void *)0x6000000 + 0xF80 + (i * 0x140), 0x50);
        var_r3 = (void *)0x6000000 + 0x2AC0 + (i * 32);
        for (j = 0; j < 10; j++) {
            for (k = 0; k < 8; k++) {
                *var_r6++ |= *var_r3++;
            }
            var_r3 -= 8;
        }
    };
    CpuFastSet(&gUnknown_020246E4, (void *)(0x5000000 + 0x200), 0x80);
    LZ77UnCompVram(&gUnknown_02024C24, (void *)(0x6000000 + 0x10000) + 0x2D80);
    LZ77UnCompVram(&gUnknown_020268B4, (void *)(0x6000000 + 0x10000) + 0x1580);
}

void sub_02001D68(void)
{
    sub_020016d8();
    sub_020012e0();
    sub_02001420();

    if (gUnknown_030015A8[0][0] != 0) {
        gUnknown_030015A8[0][0] = 0;
        gUnknown_030015A8[1][0] = 1;
        if (gUnknown_030015A8[0][1] > 13) {
            CpuSet(gUnknown_030015B0, (void *)(0x5000000 + 0x200), 0x00000000 | (((sizeof(gUnknown_030015B0) / sizeof((gUnknown_030015B0)[0])))/(16/8) & 0x1FFFFF));
        } else {
            CpuSet(gUnknown_020248E4[gUnknown_030015A8[0][1]], (void *)(0x5000000 + 0x200), 0x00000000 | ((32)/(16/8) & 0x1FFFFF));
        }
    }

    if (gUnknown_030015A8[2][0] != 0) {
        gUnknown_030015A8[2][0] = 0;
        gUnknown_030015A8[3][0] = 1;
        CpuSet(gUnknown_02024AA4[gUnknown_030015A8[2][1]], (void *)(0x5000000 + 0x200) + 0x1C0, 0x00000000 | ((32)/(16/8) & 0x1FFFFF));
    }

    sub_02000590();
    sub_02001374();
    sub_02000eac();
    sub_0200117c();
    sub_02001088();
}

void sub_02001e00(void)
{
    (*(vu16 *)(0x4000000 + 0x50)) = 0x8BF;
    (*(vu16 *)(0x4000000 + 0x54)) = ++gUnknown_03003330.unkC;
    (*(vu16 *)(0x4000000 + 0x52)) = (((0x10 - gUnknown_03003330.unkC) & 0xFE) << 7) | gUnknown_03003330.unkC;

    if (gUnknown_03003330.unkC > 0xF) {
        void *r4 = gUnknown_03003330.unk4;
        if (r4 == ((void *)0)) {
            m4aMPlayAllStop();
            m4aSoundMain();
            VBlankIntrWait();
            m4aSoundVSyncOff();
            (*(vu16 *)(0x4000000 + 0x208)) = 0;
            (*(vu16 *)(0x4000000 + 0x200)) = 0;
            SoftResetRom(0x20);
            return;
        }
        gUnknown_03003330.unk0 = r4;
    }
}

extern u8 gUnknown_020202B6[][10][7];
extern u8 gUnknown_0202071C;



void sub_02001e74(void)
{
    s32 r3;
    s32 i;
    bool32 temp_r4;
    u32 r4;

    u8 *p, *var_r2_2;
    u8 sp0[5];

    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gSaveGameState.unk6A, 0x00000000 | 0x01000000 | ((0x7EE)/(16/8) & 0x1FFFFF)); };
    gSaveGameState.unk6A[8] = gSaveGameState.unk59;
    gUnknown_03001501 = gSaveGameState.unk59 = 0xFF;
    gUnknown_0300152F = gSaveGameState.unk62 = gSaveGameState.unk69 = 0;
    gSaveGameState.unk58 = 0;
    gUnknown_0300152D = 9;

    temp_r4 = gUnknown_03003330.unk10 != 0;
    r3 = sub_02001554(0xA);

    for (i = 0; i < 7; i++) {
        gSaveGameState.unk6A[i] = gUnknown_020202B6[temp_r4][r3][i];
    }

    gSaveGameState.unk74 = 0x64;
    gSaveGameState.unk73 = 0x64;

    switch (sub_02001554(3)) {
        case 0:
            for (i = 0; i < 5; i++) {
                sp0[i] = i;
            }
            for (i = 0; i < 4; i++) {
                r3 = sub_02001554((5 - i));
                *(i + gSaveGameState.unk80) = sp0[r3];
                for (; r3 <= 3; r3++) {
                    sp0[r3] = sp0[r3 + 1];
                }
            }
            gSaveGameState.unk80[4] = sp0[0];
            break;
        case 1:
            for (i = 0; i < 5; i++) {
                *(i + gSaveGameState.unk80) = sub_02001554(3) + 1;
            }
            break;
        case 2: {
            u8 r4_2;
            for (i = 0; i < 5; i++) {
                *(i + gSaveGameState.unk80) = 0;
            }

            r4_2 = 12;
            while (1) {

                for (i = 0; i < 5; i++) {
                    if (*(i + gSaveGameState.unk80) > 4) {
                        continue;
                    }

                    if (r4_2 > 4) {
                        r3 = sub_02001554(6);
                    } else {
                        r3 = sub_02001554(r4_2 + 1);
                    }

                    if (*(i + gSaveGameState.unk80) + r3 > 5) {
                        continue;
                    }
                    *(i + gSaveGameState.unk80) += r3;
                    r4_2 -= r3;

                    if (r4_2 == 0) {

                        goto brk;


                    }
                }



            }
        }
    }
brk:

    for (i = 0; i < 3; i++) {
        i[gSaveGameState.unk80 + 5] = 0xFF;
    }

    for (i = 0; i < 8; i++) {
        i[gSaveGameState.unk80 + 8] = 1;
    }

    var_r2_2 = &gUnknown_0202071C;
    p = gSaveGameState.unkD8;
    for (i = 0; i < 0x780; i++) {
        *p++ = *var_r2_2++;
    };

    r4 = (sub_02001534() << 0x10) + sub_02001534() + gUnknown_03003330.unk8;
    gSaveGameState.unkE8 = (s8)(r4 >> 0x18);
    gSaveGameState.unkE9 = (s8)(r4 >> 0x10);
    gSaveGameState.unkEA = (s8)(r4 >> 8);
    gSaveGameState.unkEB = r4;
    r4 = (sub_02001534() << 0x10) + sub_02001534() + gUnknown_03003330.unk8;
    gSaveGameState.unkEC = (s8)(r4 >> 0x18);
    gSaveGameState.unkED = (s8)(r4 >> 0x10);
    gSaveGameState.unkEE = (s8)(r4 >> 8);
    gSaveGameState.unkEF = r4;
    r4 = (sub_02001534() << 0x10) + sub_02001534() + gUnknown_03003330.unk8;
    gSaveGameState.unkF0 = (s8)(r4 >> 0x18);
    gSaveGameState.unkF1 = (s8)(r4 >> 0x10);
    gSaveGameState.unkF2 = (s8)(r4 >> 8);
    gSaveGameState.unkF3 = r4;
    r4 = (sub_02001534() << 0x10) + sub_02001534() + gUnknown_03003330.unk8;
    gSaveGameState.unkF4 = (s8)(r4 >> 0x18);
    gSaveGameState.unkF5 = (s8)(r4 >> 0x10);
    gSaveGameState.unkF6 = (s8)(r4 >> 8);
    gSaveGameState.unkF7 = r4;
    r4 = (sub_02001534() + gUnknown_03003330.unk8) << 0x10;
    gSaveGameState.unkF8 = (s8)(r4 >> 0x18);
    gSaveGameState.unkF9 = (s8)(r4 >> 0x10);
    gSaveGameState.unkFA = (s8)(r4 >> 8);
    gSaveGameState.unkFB = r4;
    gSaveGameState.unk132 = gSaveGameState.unk528 = gSaveGameState.unk529 = gSaveGameState.unk72;

    for (i = 0; i < 5; i++) {
        u8 *tmp = (i + gSaveGameState.unk80);
        gSaveGameState.unk4EC[i][0] = gSaveGameState.unk4EC[i][1] = *tmp;
    }
}

void sub_020021F4(UNK_30005C0 *);

void sub_0200218c(UNK_30005C0 *arg0)
{
    if (!(gUnknown_03003330.unkF & -(0x81))) {
        if (((arg0->unk19 == 0) || ((--arg0->unk19 == 0))) && (8 & gInput.unk4)) {
            m4aMPlayAllStop();
            m4aSongNumStart(0xE);
            arg0->unkE = 0;
            arg0->unk19 = 8U;
            arg0->unk0 = (void *)&sub_020021F4;
            gUnknown_03003330.unkF |= 0x80;
        } else {
            gUnknown_03003330.unkF &= ~0x80;
        }
    }
}

extern const u16 gUnknown_0202003E[][96];
extern const u16 gUnknown_020201BE[2][2][24];
extern const u16 gUnknown_0202027E[][4];

extern void sub_02008940(void);

void sub_020021F4(UNK_30005C0 *arg0)
{
    const u16 *var_r2;
    u32 temp_r0_5;

    if (((arg0->unk19 == 0) || (--arg0->unk19 == 0)) && (gInput.unk4 & (0x0008 | 0x0001 | 0x0002))) {
        u16 song;
        if (gInput.unk0 & 2) {
            song = 0xD;
        } else if (arg0->unkE != 0) {
            m4aSongNumStart(0xC);
            arg0->unk19 = 0x2DU;
            arg0->unk0 = (void *)&sub_02008940;
            return;
        } else {
            song = 0xC;
        }
        m4aMPlayAllContinue();
        m4aSongNumStart(song);
        arg0->unk19 = 8U;
        arg0->unk0 = (void *)&sub_0200218c;
        sub_020017b0(((void *)0), (void *)0x6000000 + 0xE000, 0xFF, 0, 0);
        return;
    }

    if (gInput.unk4 & 0x80) {
        if (++arg0->unkE > 1) {
            arg0->unkE = 1;
        } else {
            m4aSongNumStart(0xB);
        }
    } else if (0x40 & gInput.unk4) {
        if (--arg0->unkE < 0) {
            arg0->unkE = 0;
        } else {
            m4aSongNumStart(0xB);
        }
    }
    temp_r0_5 = gUnknown_03003330.unk10 != 0;
    sub_020017b0(gUnknown_020201BE[temp_r0_5][arg0->unkE], (void *)0x6000000 + 0xE014 + ((arg0->unkE * 2) + 1) * 64, 0xC, 2, 0x416B);
    var_r2 = gUnknown_0202027E[0];
    if (!(gUnknown_03003330.unk8 & 0x10)) {
        var_r2 = gUnknown_0202027E[1];
    }
    sub_020017b0(var_r2, (void *)0x6000000 + 0xE010 + ((arg0->unkE * 2) + 1) * 64, 2, 2, 0x31E5);
    sub_020017b0(gUnknown_0202003E[temp_r0_5], (void *)0x6000000 + 0xE00E, 0x10, 6, 0x316B);
}

extern u8 gUnknown_020277C0[];
extern u8 *gUnknown_02027798[][2];
extern u8 *gUnknown_0202A2DC[][3];

void sub_02002364(u8 arg0, u8 *arg1, s8 *arg2)
{
    s32 j, i, k;

    u8 r5, r7;

    s16 r8;
    s32 r6;

    s16 *p2, *p3;
    u8 *p1;

    for (i = 0; i < 5; i++) {
        if (gUnknown_020277C0[i] == arg0) {
            break;
        }
    }

    if (i > 4) {

        while (1) { }
    }

    if (gUnknown_03003330.unk10 <= 1) {
        p1 = gUnknown_02027798[i][gUnknown_03003330.unk10];
    } else {
        p1 = gUnknown_0202A2DC[i][gUnknown_03003330.unk10 - 2];
    }
    r5 = *p1++;
    r7 = *p1++;

    p2 = (s16 *)(void *)0x0203F800;
    *p2++ = 0x1ED;
    for (i = 0; i < r5; i++) {
        *p2++ = 0x1EE;
    }
    *p2++ = 0x5ED;

    for (j = 0; j < r7; j++) {
        *p2++ = 0x1EF;
        for (i = 0; i < r5; i++) {
            *p2++ = 0x1F0;
        }
        *p2++ = 0x5EF;
    }

    *p2++ = 0x9ED;

    for (i = 0; i < r5; i++) {
        *p2++ = 0x9EE;
    }

    *p2 = 0xDED;

    r5 += 2;
    r8 = 0;
    r6 = 0;
    for (k = 0; k < r7; k++) {
        j = (k + 1) * r5;
        p3 = (s16 *)(void *)0x0203F800 + j + 1;

        while (1) {
            u8 r3 = *p1++;
            if (r3 == 0x5F) {
                r3 = *p1++;
                if ((s8)r3 < 0) {
                    break;
                }
                r8 = r3 * 4096;
            } else if (r3 == 0xFF) {
                s32 j_2 = 0;
                if (r6 == 0) {
                    j_2 = 0x100;
                }
                r6 = j_2;
            } else {
                s32 temp = r6 + r3;
                temp += 0x2AF;
                *p3++ = temp + r8;
            }
        }
    }

    *arg1 = r5;
    *arg2 = r7 + 2;
}
