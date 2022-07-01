.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;


# instance fields
.field protected final dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field public final endTimeUs:J

.field public final startTimeUs:J

.field public final trackFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final type:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 89
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 90
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->type:I

    .line 91
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->trackFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 92
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    .line 93
    iput-object p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    .line 94
    iput-wide p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 95
    iput-wide p9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 96
    return-void
.end method


# virtual methods
.method public abstract bytesLoaded()J
.end method

.method public final getDurationUs()J
    .locals 4

    .line 102
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
