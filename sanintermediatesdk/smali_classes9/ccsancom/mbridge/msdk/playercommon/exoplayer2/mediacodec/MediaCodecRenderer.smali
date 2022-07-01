.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$ReinitializationState;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$ReconfigurationState;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$KeepCodecResult;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_MODE_ALWAYS:I = 0x2

.field private static final ADAPTATION_WORKAROUND_MODE_NEVER:I = 0x0

.field private static final ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION:I = 0x1

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field protected static final KEEP_CODEC_RESULT_NO:I = 0x0

.field protected static final KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION:I = 0x1

.field protected static final KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION:I = 0x3

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

.field private codec:Lccsanandroid/media/MediaCodec;

.field private codecAdaptationWorkaroundMode:I

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

.field private drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

.field private format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private final formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;-><init>(I)V

    .line 279
    sget p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 280
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    .line 281
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    .line 282
    iput-boolean p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    .line 283
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    .line 284
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    .line 285
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    .line 286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 287
    new-instance p1, Lccsanandroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Lccsanandroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    .line 288
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 289
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 290
    return-void
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .locals 2

    .line 1264
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 1265
    const-string v1, "SM-T585"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 1266
    const-string v1, "SM-A520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    :cond_0
    const/4 p1, 0x2

    return p1

    .line 1268
    :cond_1
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 1269
    const-string v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1270
    const-string v0, "flounder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1271
    const-string v0, "grouper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1272
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 1274
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z
    .locals 2

    .line 1289
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1290
    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1289
    :goto_0
    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1327
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1328
    const-string v1, "hb2000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1329
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1330
    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1327
    :goto_0
    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1345
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosPropagationWorkaround(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 3

    .line 1306
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1307
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_0

    .line 1308
    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1309
    const-string v1, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 1310
    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1307
    :goto_0
    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1243
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_0

    .line 1245
    const-string v0, "OMX.SEC.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 1246
    const-string v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 1243
    :goto_1
    return p0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z
    .locals 3

    .line 1362
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    if-ne p1, v1, :cond_0

    .line 1363
    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1362
    :goto_0
    return v1
.end method

.method private deviceNeedsDrmKeysToConfigureCodecWorkaround()Z
    .locals 2

    .line 1226
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 1227
    const-string v1, "AFTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 1228
    const-string v1, "AFTB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1226
    :goto_0
    return v0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1017
    move-object/from16 v13, p0

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_a

    .line 1019
    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    .line 1021
    :try_start_0
    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/media/MediaCodec;->dequeueOutputBuffer(Lccsanandroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1025
    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1029
    :cond_0
    return v15

    .line 1032
    :cond_1
    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/media/MediaCodec;->dequeueOutputBuffer(Lccsanandroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 1036
    :goto_0
    if-ltz v0, :cond_5

    .line 1038
    iget-boolean v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_2

    .line 1039
    iput-boolean v15, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1040
    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Lccsanandroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1041
    return v14

    .line 1042
    :cond_2
    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Lccsanandroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_3

    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Lccsanandroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 1045
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1046
    return v15

    .line 1048
    :cond_3
    iput v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 1049
    invoke-direct {v13, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1052
    if-eqz v0, :cond_4

    .line 1053
    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Lccsanandroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1054
    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Lccsanandroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Lccsanandroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1056
    :cond_4
    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v13, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer(J)Z

    move-result v0

    iput-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    goto :goto_1

    .line 1058
    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 1059
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputFormat()V

    .line 1060
    return v14

    .line 1061
    :cond_6
    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    .line 1062
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffersChanged()V

    .line 1063
    return v14

    .line 1065
    :cond_7
    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_8

    iget v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1068
    :cond_8
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1070
    :cond_9
    return v15

    .line 1075
    :cond_a
    :goto_1
    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_c

    .line 1077
    :try_start_1
    iget-object v6, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget-object v7, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v8, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 1078
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLccsanandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1094
    goto :goto_2

    .line 1087
    :catch_1
    move-exception v0

    .line 1088
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1089
    iget-boolean v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_b

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1093
    :cond_b
    return v15

    .line 1096
    :cond_c
    iget-object v6, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget-object v7, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v8, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 1097
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLccsanandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    .line 1108
    :goto_2
    if-eqz v0, :cond_f

    .line 1109
    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1110
    iget-object v0, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Lccsanandroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Lccsanandroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    .line 1111
    :goto_3
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 1112
    if-nez v0, :cond_e

    .line 1113
    return v14

    .line 1115
    :cond_e
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1118
    :cond_f
    return v15
.end method

.method private feedInputBuffer()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 645
    :cond_0
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_2

    .line 646
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lccsanandroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 647
    if-gez v0, :cond_1

    .line 648
    return v1

    .line 650
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 651
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 654
    :cond_2
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 657
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 660
    :cond_3
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 661
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Lccsanandroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 662
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 664
    :goto_0
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 665
    return v1

    .line 668
    :cond_4
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    .line 669
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 670
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 671
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lccsanandroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 672
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 673
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 674
    return v2

    .line 678
    :cond_5
    nop

    .line 679
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_6

    .line 681
    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_2

    .line 685
    :cond_6
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_8

    .line 686
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 687
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 688
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    :cond_7
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 692
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 693
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    .line 696
    :goto_2
    const/4 v5, -0x3

    if-ne v0, v5, :cond_9

    .line 697
    return v1

    .line 699
    :cond_9
    const/4 v5, -0x5

    if-ne v0, v5, :cond_b

    .line 700
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_a

    .line 703
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 704
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 706
    :cond_a
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 707
    return v2

    .line 711
    :cond_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 712
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_c

    .line 716
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 717
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 719
    :cond_c
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 720
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_d

    .line 721
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 722
    return v1

    .line 725
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v0, :cond_e

    goto :goto_3

    .line 728
    :cond_e
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 729
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Lccsanandroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 730
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V
    :try_end_0
    .catch Lccsanandroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_3
    nop

    .line 735
    return v1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 737
    :cond_f
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    if-nez v0, :cond_11

    .line 738
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 739
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_10

    .line 742
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 744
    :cond_10
    return v2

    .line 746
    :cond_11
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    .line 747
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 748
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldWaitForKeys(Z)Z

    move-result v3

    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 749
    if-eqz v3, :cond_12

    .line 750
    return v1

    .line 752
    :cond_12
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v3, :cond_14

    if-nez v0, :cond_14

    .line 753
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 754
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_13

    .line 755
    return v2

    .line 757
    :cond_13
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 760
    :cond_14
    :try_start_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v9, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 761
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 762
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_15
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 766
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 768
    if-eqz v0, :cond_16

    .line 769
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;I)Lccsanandroid/media/MediaCodec$CryptoInfo;

    move-result-object v8

    .line 771
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lccsanandroid/media/MediaCodec;->queueSecureInputBuffer(IILccsanandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 772
    goto :goto_4

    .line 773
    :cond_16
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v7, 0x0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lccsanandroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 775
    :goto_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 776
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 777
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 778
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I
    :try_end_1
    .catch Lccsanandroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    nop

    .line 782
    return v2

    .line 779
    :catch_1
    move-exception v0

    .line 780
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 642
    :cond_17
    :goto_5
    return v1
.end method

.method private getCodecBuffers()V
    .locals 2

    .line 786
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 787
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 788
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 790
    :cond_0
    return-void
.end method

.method private static getFrameworkCryptoInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;I)Lccsanandroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 831
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfoV16()Lccsanandroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    .line 832
    if-nez p1, :cond_0

    .line 833
    return-object p0

    .line 838
    :cond_0
    iget-object v0, p0, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    .line 839
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 841
    :cond_1
    iget-object v0, p0, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 842
    return-object p0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 800
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 801
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 803
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 808
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 809
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 811
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private hasOutputBuffer()Z
    .locals 1

    .line 816
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1198
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1200
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1201
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_0

    .line 1203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 1204
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    .line 1206
    :goto_0
    return-void
.end method

.method private processOutputBuffersChanged()V
    .locals 2

    .line 1143
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1144
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 1146
    :cond_0
    return-void
.end method

.method private processOutputFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->getOutputFormat()Lccsanandroid/media/MediaFormat;

    move-result-object v0

    .line 1126
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1127
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lccsanandroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    .line 1128
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lccsanandroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1130
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1131
    return-void

    .line 1133
    :cond_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_1

    .line 1134
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1136
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lccsanandroid/media/MediaCodec;Lccsanandroid/media/MediaFormat;)V

    .line 1137
    return-void
.end method

.method private resetCodecBuffers()V
    .locals 2

    .line 793
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 795
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 797
    :cond_0
    return-void
.end method

.method private resetInputBuffer()V
    .locals 2

    .line 820
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 821
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 822
    return-void
.end method

.method private resetOutputBuffer()V
    .locals 1

    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 827
    return-void
.end method

.method private shouldSkipOutputBuffer(J)Z
    .locals 6

    .line 1211
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1212
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1213
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 1214
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1215
    const/4 p1, 0x1

    return p1

    .line 1212
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1218
    :cond_1
    return v1
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getState()I

    move-result p1

    .line 850
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 853
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 851
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 847
    :cond_3
    :goto_0
    return v1
.end method

.method private throwDecoderInitError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method protected canKeepCodec(Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 0

    .line 984
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract configureCodec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsanandroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected flushCodec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 605
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 606
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 607
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    .line 609
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 610
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 611
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 612
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 613
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 614
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 621
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_1

    .line 624
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v2}, Lccsanandroid/media/MediaCodec;->flush()V

    .line 625
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    goto :goto_1

    .line 615
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 616
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 627
    :goto_1
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-eqz v1, :cond_3

    .line 630
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 632
    :cond_3
    return-void
.end method

.method protected final getCodec()Lccsanandroid/media/MediaCodec;
    .locals 1

    .line 458
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    return-object v0
.end method

.method protected final getCodecInfo()Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1

    .line 462
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method protected getDecoderInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 332
    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    .line 1008
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .line 989
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 5

    .line 994
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    .line 996
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 999
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 994
    :goto_0
    return v0
.end method

.method protected final maybeInitCodec()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 353
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 354
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 355
    nop

    .line 356
    nop

    .line 357
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 358
    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getMediaCrypto()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;

    .line 359
    if-nez v1, :cond_2

    .line 360
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_1

    .line 368
    move-object v5, v3

    const/4 v1, 0x0

    goto :goto_0

    .line 366
    :cond_1
    return-void

    .line 369
    :cond_2
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Lccsanandroid/media/MediaCrypto;

    move-result-object v5

    .line 370
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v1

    .line 372
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->deviceNeedsDrmKeysToConfigureCodecWorkaround()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 373
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    invoke-interface {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getState()I

    move-result v6

    .line 374
    if-eq v6, v4, :cond_3

    .line 376
    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    .line 378
    return-void

    .line 375
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 357
    :cond_4
    move-object v5, v3

    const/4 v1, 0x0

    .line 383
    :cond_5
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    if-nez v6, :cond_7

    .line 385
    :try_start_0
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, v6, v7, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v6

    iput-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    .line 386
    if-nez v6, :cond_6

    if-eqz v1, :cond_6

    .line 391
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, v6, v7, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    .line 392
    if-eqz v2, :cond_6

    .line 393
    const-string v2, "MediaCodecRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drm session requires secure decoder for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_6
    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const v7, -0xc34e

    invoke-direct {v2, v6, v0, v1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 402
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    if-nez v0, :cond_7

    .line 403
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const v6, -0xc34f

    invoke-direct {v0, v2, v3, v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 409
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 410
    return-void

    .line 413
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 414
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 415
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 416
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 417
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 418
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 419
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 420
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 422
    :try_start_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 424
    invoke-static {v0}, Lccsanandroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Lccsanandroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    .line 425
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSection()V

    .line 426
    const-string v6, "configureCodec"

    invoke-static {v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 427
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, v6, v7, v8, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->configureCodec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsanandroid/media/MediaCrypto;)V

    .line 428
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSection()V

    .line 429
    const-string v5, "startCodec"

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v5}, Lccsanandroid/media/MediaCodec;->start()V

    .line 431
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSection()V

    .line 432
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 433
    sub-long v10, v8, v2

    move-object v6, p0

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;JJ)V

    .line 435
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecBuffers()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    goto :goto_2

    .line 436
    :catch_1
    move-exception v2

    .line 437
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-direct {v3, v5, v2, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 440
    :goto_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 441
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_3

    :cond_9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 442
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 443
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 444
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForFirstSyncFrame:Z

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    .line 446
    return-void

    .line 350
    :cond_a
    :goto_4
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 0

    .line 869
    return-void
.end method

.method protected onDisabled()V
    .locals 4

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 486
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_0

    .line 487
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    :cond_0
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 492
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    :cond_1
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    nop

    .line 498
    nop

    .line 499
    nop

    .line 500
    return-void

    .line 495
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    throw v1

    .line 490
    :catchall_1
    move-exception v1

    .line 491
    :try_start_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 492
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 495
    :cond_2
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    nop

    .line 498
    throw v1

    .line 495
    :catchall_2
    move-exception v1

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    throw v1

    .line 485
    :catchall_3
    move-exception v1

    .line 486
    :try_start_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    .line 487
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 491
    :cond_3
    :try_start_5
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_4

    .line 492
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 495
    :cond_4
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    nop

    .line 498
    nop

    .line 499
    throw v1

    .line 495
    :catchall_4
    move-exception v1

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    throw v1

    .line 490
    :catchall_5
    move-exception v1

    .line 491
    :try_start_6
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_5

    .line 492
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 495
    :cond_5
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    nop

    .line 498
    throw v1

    .line 495
    :catchall_6
    move-exception v1

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 496
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 497
    throw v1
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 467
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    .line 468
    return-void
.end method

.method protected onInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 879
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 881
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 882
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    :goto_0
    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 883
    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 884
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_2

    .line 885
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_1

    .line 889
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-interface {p1, v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->acquireSession(Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 890
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-ne p1, v1, :cond_3

    .line 891
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 886
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    .line 886
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 894
    :cond_2
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 898
    :cond_3
    :goto_1
    nop

    .line 899
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    if-eqz p1, :cond_6

    .line 900
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, p1, v1, v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->canKeepCodec(Lccsanandroid/media/MediaCodec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 918
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 908
    :pswitch_1
    nop

    .line 909
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 910
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 911
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 916
    const/4 v3, 0x1

    goto :goto_2

    .line 905
    :pswitch_2
    nop

    .line 906
    const/4 v3, 0x1

    nop

    .line 922
    :cond_6
    :goto_2
    :pswitch_3
    if-nez v3, :cond_8

    .line 923
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz p1, :cond_7

    .line 925
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    goto :goto_3

    .line 928
    :cond_7
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 929
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 932
    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onOutputFormatChanged(Lccsanandroid/media/MediaCodec;Lccsanandroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 946
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 472
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 473
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 474
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 477
    :cond_0
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    .line 968
    return-void
.end method

.method protected onQueueInputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0

    .line 957
    return-void
.end method

.method protected onStarted()V
    .locals 0

    .line 548
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .line 553
    return-void
.end method

.method protected abstract processOutputBuffer(JJLccsanandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 4

    .line 503
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 504
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 505
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 507
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 508
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 509
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecBuffers()V

    .line 510
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;

    .line 511
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 512
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 513
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 514
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 515
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 516
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 517
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 518
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 519
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 520
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 521
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 522
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 523
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 524
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 527
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 530
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    .line 533
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v2, v0, :cond_0

    .line 535
    :try_start_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    goto :goto_0

    .line 537
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    throw v0

    .line 541
    :cond_0
    :goto_0
    goto :goto_4

    .line 532
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    .line 533
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v3, v2, :cond_1

    .line 535
    :try_start_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 537
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    goto :goto_1

    .line 537
    :catchall_2
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    throw v0

    .line 540
    :cond_1
    :goto_1
    throw v0

    .line 529
    :catchall_3
    move-exception v0

    .line 530
    :try_start_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v2}, Lccsanandroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 532
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    .line 533
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v3, v2, :cond_2

    .line 535
    :try_start_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 537
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    goto :goto_2

    .line 537
    :catchall_4
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    throw v0

    .line 541
    :cond_2
    :goto_2
    throw v0

    .line 532
    :catchall_5
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    .line 533
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    if-eq v3, v2, :cond_3

    .line 535
    :try_start_6
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 537
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    goto :goto_3

    .line 537
    :catchall_6
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    .line 538
    throw v0

    .line 540
    :cond_3
    :goto_3
    throw v0

    .line 543
    :cond_4
    :goto_4
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 557
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    .line 559
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 563
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 564
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    .line 565
    if-ne v0, v2, :cond_1

    .line 566
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    goto :goto_0

    .line 567
    :cond_1
    if-ne v0, v1, :cond_2

    .line 569
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 570
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 571
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 572
    return-void

    .line 575
    :cond_2
    return-void

    .line 579
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 580
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Lccsanandroid/media/MediaCodec;

    if-eqz v0, :cond_6

    .line 581
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 582
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 583
    :cond_4
    :goto_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 584
    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3

    .line 586
    :cond_6
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    iget p4, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 591
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 592
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    .line 593
    if-ne p1, v2, :cond_7

    .line 594
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    goto :goto_3

    .line 595
    :cond_7
    if-ne p1, v1, :cond_8

    .line 596
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 597
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 598
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 601
    :cond_8
    :goto_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 602
    return-void
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1190
    return-void
.end method

.method protected shouldInitCodec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 0

    .line 454
    const/4 p1, 0x1

    return p1
.end method

.method public final supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 300
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0, v0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I

    move-result p1
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 301
    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 294
    const/16 v0, 0x8

    return v0
.end method
