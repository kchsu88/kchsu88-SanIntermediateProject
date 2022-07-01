.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_ASS:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_DVBSUB:Ljava/lang/String; = "S_DVBSUB"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP2:Ljava/lang/String; = "A_MPEG/L2"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_SEEK_FOR_CUES:I = 0x1

.field private static final FOURCC_COMPRESSION_DIVX:I = 0x58564944

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_COLOUR:I = 0x55b0

.field private static final ID_COLOUR_PRIMARIES:I = 0x55bb

.field private static final ID_COLOUR_RANGE:I = 0x55b9

.field private static final ID_COLOUR_TRANSFER:I = 0x55ba

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_LUMNINANCE_MAX:I = 0x55d9

.field private static final ID_LUMNINANCE_MIN:I = 0x55da

.field private static final ID_MASTERING_METADATA:I = 0x55d0

.field private static final ID_MAX_CLL:I = 0x55bc

.field private static final ID_MAX_FALL:I = 0x55bd

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PRIMARY_B_CHROMATICITY_X:I = 0x55d5

.field private static final ID_PRIMARY_B_CHROMATICITY_Y:I = 0x55d6

.field private static final ID_PRIMARY_G_CHROMATICITY_X:I = 0x55d3

.field private static final ID_PRIMARY_G_CHROMATICITY_Y:I = 0x55d4

.field private static final ID_PRIMARY_R_CHROMATICITY_X:I = 0x55d1

.field private static final ID_PRIMARY_R_CHROMATICITY_Y:I = 0x55d2

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final ID_WHITE_POINT_CHROMATICITY_X:I = 0x55d7

.field private static final ID_WHITE_POINT_CHROMATICITY_Y:I = 0x55d8

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_PREFIX_END_TIMECODE_OFFSET:I = 0x15

.field private static final SSA_TIMECODE_EMPTY:[B

.field private static final SSA_TIMECODE_FORMAT:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field private static final SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x2710L

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_EMPTY:[B

.field private static final SUBRIP_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MatroskaExtractor"

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

.field private cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final encryptionSubsampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private final nalLength:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 232
    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    .line 244
    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    .line 259
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 268
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 285
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    .line 307
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .line 381
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 384
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;I)V

    .line 385
    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;I)V
    .locals 4

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 328
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 329
    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 330
    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 344
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 345
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 346
    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 388
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;

    .line 389
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;)V

    .line 390
    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 391
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    .line 392
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    .line 393
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 394
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 395
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 396
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 397
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 398
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 399
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 400
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 401
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 402
    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 62
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .line 62
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;
    .locals 12

    .line 1294
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    if-eqz v0, :cond_3

    .line 1295
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    if-eqz v0, :cond_3

    .line 1296
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->size()I

    move-result v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1302
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->size()I

    move-result v0

    .line 1303
    new-array v1, v0, [I

    .line 1304
    new-array v3, v0, [J

    .line 1305
    new-array v4, v0, [J

    .line 1306
    new-array v5, v0, [J

    .line 1307
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    .line 1308
    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-virtual {v8, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 1309
    iget-wide v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-virtual {v10, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    .line 1307
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1311
    :cond_1
    nop

    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    .line 1312
    add-int/lit8 v7, v6, 0x1

    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v1, v6

    .line 1313
    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    .line 1311
    move v6, v7

    goto :goto_1

    .line 1315
    :cond_2
    iget-wide v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v1, v7

    .line 1317
    iget-wide v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    .line 1318
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    .line 1319
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    .line 1320
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v0, v1, v3, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v0

    .line 1298
    :cond_3
    :goto_2
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    .line 1299
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    .line 1300
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 15

    .line 1000
    move-object v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    move-wide/from16 v9, p2

    invoke-virtual {v0, v8, v9, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    goto :goto_1

    .line 1003
    :cond_0
    move-wide/from16 v9, p2

    iget-object v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    .line 1018
    :cond_2
    :goto_0
    iget-object v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget v11, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget v12, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    const/4 v13, 0x0

    iget-object v14, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1020
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    .line 1021
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->resetSample()V

    .line 1022
    return-void
.end method

.method private commitSubtitleSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V
    .locals 9

    .line 1226
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->setSampleDuration([BJLjava/lang/String;IJ[B)V

    .line 1230
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1231
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1232
    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1

    .line 1393
    if-nez p0, :cond_0

    .line 1394
    new-array p0, p1, [I

    return-object p0

    .line 1395
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 1396
    return-object p0

    .line 1399
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1357
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    const-string v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1359
    const-string v0, "V_MPEG2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1361
    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1362
    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1363
    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1364
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1366
    const-string v0, "V_THEORA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1367
    const-string v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1368
    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    const-string v0, "A_AAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    const-string v0, "A_MPEG/L2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1371
    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    const-string v0, "A_AC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1373
    const-string v0, "A_EAC3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1374
    const-string v0, "A_TRUEHD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1375
    const-string v0, "A_DTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1376
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1378
    const-string v0, "A_FLAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1379
    const-string v0, "A_MS/ACM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1380
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1381
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1383
    const-string v0, "S_VOBSUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1385
    const-string v0, "S_DVBSUB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 1357
    :goto_1
    return p0
.end method

.method private maybeSeekForCues(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;J)Z
    .locals 5

    .line 1333
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1334
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1335
    iget-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    .line 1336
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    .line 1337
    return v1

    .line 1341
    :cond_0
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    .line 1342
    iput-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;->position:J

    .line 1343
    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1344
    return v1

    .line 1346
    :cond_1
    return v2
.end method

.method private readScratch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1044
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1047
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 1048
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 1047
    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1050
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1051
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1052
    return-void
.end method

.method private readToOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 1276
    if-lez v0, :cond_0

    .line 1277
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1278
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_0

    .line 1280
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    .line 1282
    :goto_0
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr p2, p1

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1283
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p2, p1

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1284
    return p1
.end method

.method private readToTarget(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1260
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1261
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1262
    if-lez v0, :cond_0

    .line 1263
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1265
    :cond_0
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr p1, p4

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1266
    return-void
.end method

.method private resetSample()V
    .locals 1

    .line 1025
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1026
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1027
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1028
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1029
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1030
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1031
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1032
    iput-byte v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1033
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1034
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 1035
    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1350
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 1353
    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1351
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static setSampleDuration([BJLjava/lang/String;IJ[B)V
    .locals 11

    .line 1238
    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1239
    move-object/from16 v1, p7

    goto :goto_0

    .line 1241
    :cond_0
    const-wide v1, 0xd693a400L

    div-long v1, p1, v1

    long-to-int v2, v1

    .line 1242
    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    .line 1243
    const-wide/32 v7, 0x3938700

    div-long v7, v3, v7

    long-to-int v1, v7

    .line 1244
    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 1245
    div-long v7, v3, v5

    long-to-int v8, v7

    .line 1246
    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 1247
    div-long v3, v3, p5

    long-to-int v4, v3

    .line 1248
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 1249
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1248
    move-object v1, p3

    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1251
    :goto_0
    move-object/from16 v2, p7

    array-length v2, v2

    move-object v3, p0

    move v4, p4

    invoke-static {v1, v0, p0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    return-void
.end method

.method private writeSampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1056
    iget-object v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    sget-object p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1058
    return-void

    .line 1059
    :cond_0
    iget-object v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    sget-object p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;[BI)V

    .line 1061
    return-void

    .line 1064
    :cond_1
    iget-object v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 1065
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_10

    .line 1066
    iget-boolean v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_e

    .line 1069
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1070
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 1071
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1072
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1073
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 1076
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1077
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    .line 1074
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1079
    :cond_3
    :goto_0
    iget-byte v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 1080
    :goto_1
    if-eqz v7, :cond_f

    .line 1081
    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1082
    :goto_2
    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1083
    iget-boolean v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v7, :cond_7

    .line 1084
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1085
    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v8

    iput v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1086
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1088
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 1089
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1090
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1091
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1093
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1094
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1095
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1097
    :cond_7
    if-eqz v1, :cond_f

    .line 1098
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_8

    .line 1099
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1100
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1101
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1102
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1103
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1105
    :cond_8
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v1, v1, 0x4

    .line 1106
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1107
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1108
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v1

    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1109
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    .line 1110
    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 1111
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 1112
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 1113
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1115
    :cond_a
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1116
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1123
    nop

    .line 1124
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_4
    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v8, :cond_c

    .line 1125
    nop

    .line 1126
    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 1127
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 1128
    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1131
    :cond_b
    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1124
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 1134
    :cond_c
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1135
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    .line 1136
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1138
    :cond_d
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1139
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1141
    :goto_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1142
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1143
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v6

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_7

    .line 1146
    :cond_e
    iget-object v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_f

    .line 1148
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v6, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v7, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    goto :goto_8

    .line 1146
    :cond_f
    :goto_7
    nop

    .line 1150
    :goto_8
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1152
    :cond_10
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr p3, v1

    .line 1154
    iget-object v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_b

    .line 1186
    :cond_11
    iget-object v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v1, :cond_13

    .line 1187
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1188
    iget-object v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    invoke-virtual {v1, p1, v3, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->startSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;II)V

    .line 1190
    :cond_13
    :goto_a
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, p3, :cond_17

    .line 1191
    sub-int v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readToOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;I)I

    goto :goto_a

    .line 1159
    :cond_14
    :goto_b
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1160
    aput-byte v5, v1, v5

    .line 1161
    aput-byte v5, v1, v4

    .line 1162
    aput-byte v5, v1, v3

    .line 1163
    iget v3, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1164
    iget v4, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1168
    :goto_c
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, p3, :cond_16

    .line 1169
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_15

    .line 1171
    invoke-direct {p0, p1, v1, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readToTarget(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;[BII)V

    .line 1173
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1174
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1176
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1177
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1178
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_c

    .line 1181
    :cond_15
    nop

    .line 1182
    invoke-direct {p0, p1, v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readToOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_c

    .line 1185
    :cond_16
    nop

    .line 1195
    :cond_17
    iget-object p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1202
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1203
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1204
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1206
    :cond_18
    return-void
.end method

.method private writeSubtitleSampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1210
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1211
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1214
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    goto :goto_0

    .line 1216
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1218
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1219
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1222
    return-void
.end method


# virtual methods
.method final binaryElement(IILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 835
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 995
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    :sswitch_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v2, [B

    iput-object v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 848
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v3, v1, v4, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 849
    goto/16 :goto_d

    .line 843
    :sswitch_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v2, [B

    iput-object v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 844
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v1, v4, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 845
    goto/16 :goto_d

    .line 837
    :sswitch_2
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 838
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v5, v2, 0x4

    invoke-interface {v3, v1, v5, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 839
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 840
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 841
    goto/16 :goto_d

    .line 856
    :sswitch_3
    new-array v1, v2, [B

    .line 857
    invoke-interface {v3, v1, v4, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 858
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-direct {v3, v5, v1, v4, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 860
    goto/16 :goto_d

    .line 852
    :sswitch_4
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v5, v2, [B

    iput-object v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 853
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v3, v1, v4, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 854
    goto/16 :goto_d

    .line 868
    :sswitch_5
    iget v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v7, 0x8

    if-nez v6, :cond_0

    .line 869
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v6, v3, v4, v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v8

    long-to-int v6, v8

    iput v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 870
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->getLastLength()I

    move-result v6

    iput v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    .line 871
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 872
    iput v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 873
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset()V

    .line 876
    :cond_0
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v6, v8}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 879
    if-nez v6, :cond_1

    .line 880
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 881
    iput v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 882
    return-void

    .line 885
    :cond_1
    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v9, 0xa3

    if-ne v8, v5, :cond_15

    .line 887
    const/4 v8, 0x3

    invoke-direct {v0, v3, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)V

    .line 888
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v10, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v5

    .line 889
    const/16 v12, 0xff

    if-nez v10, :cond_2

    .line 890
    iput v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 891
    iget-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    invoke-static {v10, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v10

    iput-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 892
    iget v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v13

    sub-int/2addr v2, v8

    aput v2, v10, v4

    goto/16 :goto_6

    .line 894
    :cond_2
    if-ne v1, v9, :cond_14

    .line 899
    const/4 v13, 0x4

    invoke-direct {v0, v3, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)V

    .line 900
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v14, v14, v8

    and-int/2addr v14, v12

    add-int/2addr v14, v5

    iput v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 901
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 902
    invoke-static {v15, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 903
    if-ne v10, v11, :cond_3

    .line 904
    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v13

    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    div-int/2addr v2, v8

    .line 906
    invoke-static {v14, v4, v8, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 907
    goto/16 :goto_6

    :cond_3
    if-ne v10, v5, :cond_6

    .line 908
    nop

    .line 909
    nop

    .line 910
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v8, v15, :cond_5

    .line 911
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v4, v14, v8

    .line 914
    :cond_4
    add-int/2addr v13, v5

    invoke-direct {v0, v3, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)V

    .line 915
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    .line 916
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v16, v15, v8

    add-int v16, v16, v14

    aput v16, v15, v8

    .line 917
    if-eq v14, v12, :cond_4

    .line 918
    aget v14, v15, v8

    add-int/2addr v10, v14

    .line 910
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 920
    :cond_5
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    sub-int/2addr v14, v5

    iget v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v8, v14

    .line 922
    goto/16 :goto_6

    :cond_6
    if-ne v10, v8, :cond_13

    .line 923
    nop

    .line 924
    nop

    .line 925
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    iget v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v8, v15, :cond_e

    .line 926
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v4, v14, v8

    .line 927
    add-int/lit8 v13, v13, 0x1

    invoke-direct {v0, v3, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)V

    .line 928
    iget-object v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_d

    .line 931
    const-wide/16 v16, 0x0

    .line 932
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v7, :cond_a

    .line 933
    rsub-int/lit8 v18, v14, 0x7

    shl-int v18, v5, v18

    .line 934
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v9, v9, v15

    and-int v9, v9, v18

    if-eqz v9, :cond_9

    .line 935
    nop

    .line 936
    add-int/2addr v13, v14

    .line 937
    invoke-direct {v0, v3, v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)V

    .line 938
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v9, v9, v15

    and-int/2addr v9, v12

    xor-int/lit8 v15, v18, -0x1

    and-int/2addr v9, v15

    int-to-long v4, v9

    move-wide/from16 v19, v4

    move/from16 v4, v16

    move-wide/from16 v16, v19

    .line 939
    :goto_3
    if-ge v4, v13, :cond_7

    .line 940
    shl-long v15, v16, v7

    .line 941
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v9, v4, 0x1

    aget-byte v4, v5, v4

    and-int/2addr v4, v12

    int-to-long v4, v4

    or-long/2addr v4, v15

    move-wide/from16 v16, v4

    move v4, v9

    goto :goto_3

    .line 944
    :cond_7
    if-lez v8, :cond_8

    .line 945
    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v4, 0x1

    shl-long v14, v4, v14

    sub-long/2addr v14, v4

    sub-long v16, v16, v14

    move-wide/from16 v4, v16

    goto :goto_4

    .line 944
    :cond_8
    move-wide/from16 v4, v16

    goto :goto_4

    .line 932
    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v9, 0xa3

    goto :goto_2

    :cond_a
    move-wide/from16 v4, v16

    .line 950
    :goto_4
    const-wide/32 v14, -0x80000000

    cmp-long v9, v4, v14

    if-ltz v9, :cond_c

    const-wide/32 v14, 0x7fffffff

    cmp-long v9, v4, v14

    if-gtz v9, :cond_c

    .line 953
    long-to-int v5, v4

    .line 954
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-nez v8, :cond_b

    .line 955
    goto :goto_5

    :cond_b
    add-int/lit8 v9, v8, -0x1

    aget v9, v4, v9

    add-int/2addr v5, v9

    :goto_5
    aput v5, v4, v8

    .line 956
    aget v4, v4, v8

    add-int/2addr v10, v4

    .line 925
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v9, 0xa3

    goto/16 :goto_1

    .line 951
    :cond_c
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 929
    :cond_d
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 958
    :cond_e
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v5, 0x1

    sub-int/2addr v14, v5

    iget v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v4, v14

    .line 960
    nop

    .line 966
    :goto_6
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    shl-int/2addr v2, v7

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/2addr v4, v12

    or-int/2addr v2, v4

    .line 967
    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v8, v2

    invoke-direct {v0, v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    iput-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 968
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v11

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    .line 969
    :goto_7
    iget v4, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    if-eq v4, v11, :cond_11

    const/16 v4, 0xa3

    if-ne v1, v4, :cond_10

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v11

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_10

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v4, 0x1

    .line 971
    :goto_9
    nop

    .line 972
    if-eqz v2, :cond_12

    const/high16 v2, -0x80000000

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    :goto_a
    or-int/2addr v2, v4

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 973
    iput v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 974
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_b

    .line 962
    :cond_13
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected lacing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_14
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 977
    :cond_15
    :goto_b
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_17

    .line 979
    :goto_c
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    if-ge v1, v2, :cond_16

    .line 980
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 981
    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v5, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v4, v4, v5

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 983
    invoke-direct {v0, v6, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 984
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    .line 985
    goto :goto_c

    .line 986
    :cond_16
    const/4 v1, 0x0

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_d

    .line 990
    :cond_17
    const/4 v1, 0x0

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 993
    nop

    .line 997
    :goto_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_5
        0xa3 -> :sswitch_5
        0x4255 -> :sswitch_4
        0x47e2 -> :sswitch_3
        0x53ab -> :sswitch_2
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_0
    .end sparse-switch
.end method

.method final endMasterElement(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 527
    :sswitch_0
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_8

    .line 528
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->buildSeekMap()Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 529
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto/16 :goto_0

    .line 568
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 572
    goto/16 :goto_0

    .line 569
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :sswitch_2
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 512
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 514
    :cond_1
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    .line 515
    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_0

    .line 556
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 557
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_8

    .line 548
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    if-eqz p1, :cond_3

    .line 551
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    new-array v1, v1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v1, v0

    invoke-direct {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    goto :goto_0

    .line 549
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :sswitch_5
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 522
    const v2, 0x1c53bb6b

    if-ne p1, v2, :cond_8

    .line 523
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto :goto_0

    .line 520
    :cond_4
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :sswitch_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 562
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;I)V

    .line 563
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 566
    goto :goto_0

    .line 535
    :sswitch_7
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    .line 537
    return-void

    .line 540
    :cond_6
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    if-nez p1, :cond_7

    .line 541
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 543
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {p1, v1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    invoke-direct {p0, p1, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 544
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 545
    nop

    .line 576
    :cond_8
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_7
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_5
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_3
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_1
        0x1c53bb6b -> :sswitch_0
    .end sparse-switch
.end method

.method final floatElement(ID)V
    .locals 0

    .line 772
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 807
    :sswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 808
    goto :goto_0

    .line 804
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 805
    goto :goto_0

    .line 801
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 802
    goto :goto_0

    .line 798
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 799
    goto :goto_0

    .line 795
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 796
    goto :goto_0

    .line 792
    :sswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 793
    goto :goto_0

    .line 789
    :sswitch_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 790
    goto :goto_0

    .line 786
    :sswitch_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 787
    goto :goto_0

    .line 783
    :sswitch_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 784
    goto :goto_0

    .line 780
    :sswitch_9
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 781
    goto :goto_0

    .line 774
    :sswitch_a
    double-to-long p1, p2

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 775
    goto :goto_0

    .line 777
    :sswitch_b
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-int p2, p2

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 778
    nop

    .line 812
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_b
        0x4489 -> :sswitch_a
        0x55d1 -> :sswitch_9
        0x55d2 -> :sswitch_8
        0x55d3 -> :sswitch_7
        0x55d4 -> :sswitch_6
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_4
        0x55d7 -> :sswitch_3
        0x55d8 -> :sswitch_2
        0x55d9 -> :sswitch_1
        0x55da -> :sswitch_0
    .end sparse-switch
.end method

.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 412
    return-void
.end method

.method final integerElement(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const-string v6, " not supported"

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 598
    :sswitch_0
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 599
    goto/16 :goto_0

    .line 628
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    .line 629
    goto/16 :goto_0

    .line 640
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 641
    goto/16 :goto_0

    .line 634
    :sswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 635
    goto/16 :goto_0

    .line 631
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 632
    goto/16 :goto_0

    .line 764
    :sswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 765
    goto/16 :goto_0

    .line 761
    :sswitch_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 762
    goto/16 :goto_0

    .line 713
    :sswitch_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 714
    long-to-int p1, p2

    packed-switch p1, :pswitch_data_0

    .line 728
    :pswitch_0
    goto/16 :goto_0

    .line 725
    :pswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 726
    goto/16 :goto_0

    .line 722
    :pswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 723
    goto/16 :goto_0

    .line 716
    :pswitch_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 717
    goto/16 :goto_0

    .line 732
    :sswitch_8
    long-to-int p1, p2

    sparse-switch p1, :sswitch_data_1

    .line 745
    goto/16 :goto_0

    .line 742
    :sswitch_9
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 p2, 0x7

    iput p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 743
    goto/16 :goto_0

    .line 739
    :sswitch_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 740
    goto/16 :goto_0

    .line 736
    :sswitch_b
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 737
    goto/16 :goto_0

    .line 749
    :sswitch_c
    long-to-int p1, p2

    packed-switch p1, :pswitch_data_1

    .line 757
    goto/16 :goto_0

    .line 754
    :pswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 755
    goto/16 :goto_0

    .line 751
    :pswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 752
    goto/16 :goto_0

    .line 622
    :sswitch_d
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v0, p2, v4

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    .line 623
    goto/16 :goto_0

    .line 610
    :sswitch_e
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 611
    goto/16 :goto_0

    .line 613
    :sswitch_f
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 614
    goto/16 :goto_0

    .line 607
    :sswitch_10
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 608
    goto/16 :goto_0

    .line 694
    :sswitch_11
    long-to-int p1, p2

    .line 695
    sparse-switch p1, :sswitch_data_2

    .line 709
    goto/16 :goto_0

    .line 706
    :sswitch_12
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 707
    goto/16 :goto_0

    .line 703
    :sswitch_13
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 704
    goto/16 :goto_0

    .line 700
    :sswitch_14
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 701
    goto/16 :goto_0

    .line 697
    :sswitch_15
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 698
    goto/16 :goto_0

    .line 595
    :sswitch_16
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 596
    goto/16 :goto_0

    .line 653
    :sswitch_17
    cmp-long p1, p2, v4

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 654
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 647
    :sswitch_18
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 648
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 671
    :sswitch_19
    cmp-long p1, p2, v4

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 672
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 665
    :sswitch_1a
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 666
    :cond_4
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 582
    :sswitch_1b
    cmp-long p1, p2, v4

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 583
    :cond_5
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :sswitch_1c
    cmp-long p1, p2, v4

    if-ltz p1, :cond_6

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_6

    goto/16 :goto_0

    .line 589
    :cond_6
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 659
    :sswitch_1d
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 660
    :cond_7
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 643
    :sswitch_1e
    iput-boolean v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    .line 644
    goto :goto_0

    .line 679
    :sswitch_1f
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez p1, :cond_9

    .line 683
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->add(J)V

    .line 684
    iput-boolean v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    .line 688
    :sswitch_20
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 689
    goto :goto_0

    .line 616
    :sswitch_21
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    .line 617
    goto :goto_0

    .line 604
    :sswitch_22
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 605
    goto :goto_0

    .line 676
    :sswitch_23
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->add(J)V

    .line 677
    goto :goto_0

    .line 601
    :sswitch_24
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 602
    goto :goto_0

    .line 637
    :sswitch_25
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 638
    goto :goto_0

    .line 691
    :sswitch_26
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 692
    goto :goto_0

    .line 619
    :sswitch_27
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v0, p2, v4

    if-nez v0, :cond_8

    const/4 v3, 0x1

    :cond_8
    iput-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 620
    goto :goto_0

    .line 625
    :sswitch_28
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    .line 626
    nop

    .line 769
    :cond_9
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_28
        0x88 -> :sswitch_27
        0x9b -> :sswitch_26
        0x9f -> :sswitch_25
        0xb0 -> :sswitch_24
        0xb3 -> :sswitch_23
        0xba -> :sswitch_22
        0xd7 -> :sswitch_21
        0xe7 -> :sswitch_20
        0xf1 -> :sswitch_1f
        0xfb -> :sswitch_1e
        0x4254 -> :sswitch_1d
        0x4285 -> :sswitch_1c
        0x42f7 -> :sswitch_1b
        0x47e1 -> :sswitch_1a
        0x47e8 -> :sswitch_19
        0x5031 -> :sswitch_18
        0x5032 -> :sswitch_17
        0x53ac -> :sswitch_16
        0x53b8 -> :sswitch_11
        0x54b0 -> :sswitch_10
        0x54b2 -> :sswitch_f
        0x54ba -> :sswitch_e
        0x55aa -> :sswitch_d
        0x55b9 -> :sswitch_c
        0x55ba -> :sswitch_8
        0x55bb -> :sswitch_7
        0x55bc -> :sswitch_6
        0x55bd -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_b
        0x6 -> :sswitch_b
        0x7 -> :sswitch_b
        0x10 -> :sswitch_a
        0x12 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_15
        0x1 -> :sswitch_14
        0x3 -> :sswitch_13
        0xf -> :sswitch_12
    .end sparse-switch
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    .line 435
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 436
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    if-nez v3, :cond_1

    .line 437
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;->read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    .line 438
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    return v1

    .line 442
    :cond_1
    if-nez v2, :cond_3

    .line 443
    nop

    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 444
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_2
    const/4 p1, -0x1

    return p1

    .line 448
    :cond_3
    return v0
.end method

.method public final release()V
    .locals 0

    .line 429
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 416
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 417
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 418
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;->reset()V

    .line 419
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 420
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->resetSample()V

    .line 421
    nop

    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    invoke-virtual {p2}, Lccsanandroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 422
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Lccsanandroid/util/SparseArray;

    invoke-virtual {p2, p1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->reset()V

    .line 421
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 406
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/Sniffer;->sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

.method final startMasterElement(IJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 474
    :sswitch_0
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_3

    .line 476
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_0

    .line 478
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_1

    .line 482
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 483
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_1

    .line 467
    :sswitch_1
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    .line 468
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    .line 469
    goto :goto_1

    .line 455
    :sswitch_2
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    cmp-long p1, v3, p2

    if-nez p1, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_2
    :goto_0
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 460
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    .line 461
    goto :goto_1

    .line 492
    :sswitch_3
    goto :goto_1

    .line 500
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 501
    goto :goto_1

    .line 494
    :sswitch_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    .line 495
    goto :goto_1

    .line 463
    :sswitch_6
    const/4 p1, -0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 464
    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    .line 465
    goto :goto_1

    .line 471
    :sswitch_7
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    .line 472
    goto :goto_1

    .line 497
    :sswitch_8
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    .line 498
    goto :goto_1

    .line 488
    :sswitch_9
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    .line 489
    nop

    .line 505
    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_9
        0xae -> :sswitch_8
        0xbb -> :sswitch_7
        0x4dbb -> :sswitch_6
        0x5035 -> :sswitch_5
        0x55d0 -> :sswitch_4
        0x6240 -> :sswitch_3
        0x18538067 -> :sswitch_2
        0x1c53bb6b -> :sswitch_1
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method final stringElement(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 815
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 826
    :sswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$202(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    goto :goto_0

    .line 818
    :sswitch_1
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 823
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 824
    nop

    .line 831
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_2
        0x4282 -> :sswitch_1
        0x22b59c -> :sswitch_0
    .end sparse-switch
.end method
