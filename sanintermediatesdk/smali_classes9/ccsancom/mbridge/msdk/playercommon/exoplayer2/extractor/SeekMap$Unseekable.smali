.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field private final durationUs:J

.field private final startSeekPoints:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 38
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 39
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    .line 48
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 49
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;->START:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;->startSeekPoints:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 50
    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 0

    .line 64
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;->startSeekPoints:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    return-object p1
.end method

.method public final isSeekable()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method
