.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    .line 54
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 55
    return-void
.end method


# virtual methods
.method public compareTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;)I
    .locals 4

    .line 59
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    sub-long/2addr v0, v2

    .line 60
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->compareTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;)I

    move-result p1

    return p1
.end method
