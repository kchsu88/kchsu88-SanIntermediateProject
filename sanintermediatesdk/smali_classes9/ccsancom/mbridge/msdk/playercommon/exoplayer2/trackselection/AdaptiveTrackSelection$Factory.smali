.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I

.field private final minTimeBetweenBufferReevaluationMs:J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;)V
    .locals 10

    .line 52
    sget-object v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    const/16 v2, 0x2710

    const/16 v3, 0x61a8

    const/16 v4, 0x61a8

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;IIIFFJLccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;IIIF)V
    .locals 10

    .line 83
    sget-object v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;IIIFFJLccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;IIIFFJLccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;

    .line 129
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 130
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 131
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 132
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 133
    iput p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 135
    iput-wide p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    .line 136
    iput-object p9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    .line 137
    return-void
.end method


# virtual methods
.method public final varargs createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection;
    .locals 17

    .line 141
    move-object/from16 v0, p0

    new-instance v16, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v5, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v7, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v9, v1

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-wide v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;JJJFFJLccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    return-object v16
.end method

.method public final bridge synthetic createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-result-object p1

    return-object p1
.end method
