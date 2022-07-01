.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field private final isLoadingChanged:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final playWhenReady:Z

.field private final playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

.field private final playbackStateOrPlayWhenReadyChanged:Z

.field private final positionDiscontinuity:Z

.field private final positionDiscontinuityReason:I

.field private final seekProcessed:Z

.field private final timelineChangeReason:I

.field private final timelineOrManifestChanged:Z

.field private final trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

.field private final trackSelectorResultChanged:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Ljava/util/Set;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;ZIIZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;",
            "Ljava/util/Set<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "ZIIZZZ)V"
        }
    .end annotation

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    .line 730
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    .line 731
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    .line 732
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 733
    iput p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuityReason:I

    .line 734
    iput p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->timelineChangeReason:I

    .line 735
    iput-boolean p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->seekProcessed:Z

    .line 736
    iput-boolean p9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playWhenReady:Z

    .line 737
    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p10, :cond_1

    iget p5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    iget p6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq p5, p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x1

    :goto_1
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackStateOrPlayWhenReadyChanged:Z

    .line 739
    iget-object p5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object p6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    if-ne p5, p6, :cond_3

    iget-object p5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object p6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    if-eq p5, p6, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p5, 0x1

    :goto_3
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->timelineOrManifestChanged:Z

    .line 742
    iget-boolean p5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-boolean p6, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq p5, p6, :cond_4

    const/4 p5, 0x1

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->isLoadingChanged:Z

    .line 743
    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    if-eq p2, p1, :cond_5

    const/4 p3, 0x1

    :cond_5
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelectorResultChanged:Z

    .line 745
    return-void
.end method


# virtual methods
.method public final notifyListeners()V
    .locals 5

    .line 748
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->timelineOrManifestChanged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->timelineChangeReason:I

    if-nez v0, :cond_1

    .line 749
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 750
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->timelineChangeReason:I

    invoke-interface {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V

    .line 752
    goto :goto_0

    .line 754
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 756
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->positionDiscontinuityReason:I

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onPositionDiscontinuity(I)V

    .line 757
    goto :goto_1

    .line 759
    :cond_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelectorResultChanged:Z

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 762
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->selections:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 764
    goto :goto_2

    .line 766
    :cond_3
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->isLoadingChanged:Z

    if-eqz v0, :cond_4

    .line 767
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 768
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onLoadingChanged(Z)V

    .line 769
    goto :goto_3

    .line 771
    :cond_4
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackStateOrPlayWhenReadyChanged:Z

    if-eqz v0, :cond_5

    .line 772
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 773
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playWhenReady:Z

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onPlayerStateChanged(ZI)V

    .line 774
    goto :goto_4

    .line 776
    :cond_5
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->seekProcessed:Z

    if-eqz v0, :cond_6

    .line 777
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 778
    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onSeekProcessed()V

    .line 779
    goto :goto_5

    .line 781
    :cond_6
    return-void
.end method
