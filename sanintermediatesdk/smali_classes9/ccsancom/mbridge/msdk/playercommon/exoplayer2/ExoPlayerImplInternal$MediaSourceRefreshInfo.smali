.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final manifest:Ljava/lang/Object;

.field public final source:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field public final timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->source:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 1703
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 1704
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->manifest:Ljava/lang/Object;

    .line 1705
    return-void
.end method
