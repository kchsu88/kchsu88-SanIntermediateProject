.class public abstract Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;
.super Lccsancom/google/android/exoplayer2/source/BaseMediaSource;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;,
        Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/android/exoplayer2/source/BaseMediaSource;"
    }
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private eventHandler:Lccsanandroid/os/Handler;

.field private mediaTransferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 44
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    .line 46
    return-void
.end method


# virtual methods
.method protected final disableChildSource(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 143
    .local v0, "disabledChild":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->disable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 144
    return-void
.end method

.method protected disableInternal()V
    .locals 4

    .line 74
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 75
    .local v1, "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->disable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 76
    .end local v1    # "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method protected final enableChildSource(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 133
    .local v0, "enabledChild":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->enable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 134
    return-void
.end method

.method protected enableInternal()V
    .locals 4

    .line 66
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 67
    .local v1, "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->enable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 68
    .end local v1    # "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0
    .param p2, "mediaTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 198
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    return-wide p2
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0
    .param p2, "windowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 167
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    return p2
.end method

.method public synthetic lambda$prepareChildSource$0$com-google-android-exoplayer2-source-CompositeMediaSource(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "source"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p3, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 115
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 59
    .local v1, "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 60
    .end local v1    # "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method protected abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            "Lccsancom/google/android/exoplayer2/Timeline;",
            ")V"
        }
    .end annotation
.end method

.method protected final prepareChildSource(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p2, "mediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 114
    new-instance v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 116
    .local v0, "caller":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    new-instance v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;-><init>(Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 117
    .local v1, "eventListener":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    new-instance v3, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v0, v1}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->eventHandler:Lccsanandroid/os/Handler;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Handler;

    invoke-interface {p2, v2, v1}, Lccsancom/google/android/exoplayer2/source/MediaSource;->addEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 119
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->eventHandler:Lccsanandroid/os/Handler;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Handler;

    invoke-interface {p2, v2, v1}, Lccsancom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 120
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->mediaTransferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {p2, v0, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 121
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-interface {p2, v0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->disable(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "mediaTransferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 51
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->mediaTransferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 52
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Lccsanandroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->eventHandler:Lccsanandroid/os/Handler;

    .line 53
    return-void
.end method

.method protected final releaseChildSource(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    .local p1, "id":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 153
    .local v0, "removedChild":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 154
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 155
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 156
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 4

    .line 82
    .local p0, "this":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;

    .line 83
    .local v1, "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 84
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v2, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 85
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v2, v3}, Lccsancom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 86
    .end local v1    # "childSource":Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 88
    return-void
.end method
