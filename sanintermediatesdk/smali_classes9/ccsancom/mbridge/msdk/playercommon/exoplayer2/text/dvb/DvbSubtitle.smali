.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;
.super Ljava/lang/Object;
.source "DvbSubtitle.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;->cues:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbSubtitle;->cues:Ljava/util/List;

    return-object p1
.end method

.method public final getEventTime(I)J
    .locals 2

    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getEventTimeCount()I
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 0

    .line 36
    const/4 p1, -0x1

    return p1
.end method
