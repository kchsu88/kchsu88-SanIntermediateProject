.class public final Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;
.super Lccsancom/google/android/exoplayer2/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final drmSessionManager:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final loadableLoadErrorHandlingPolicy:Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private final mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

.field private final progressiveMediaExtractorFactory:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;I)V
    .locals 2
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "dataSourceFactory"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "progressiveMediaExtractorFactory"    # Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;
    .param p4, "drmSessionManager"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p5, "loadableLoadErrorHandlingPolicy"    # Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "continueLoadingCheckIntervalBytes"    # I

    .line 274
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 275
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/MediaItem;->localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 276
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

    .line 277
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->dataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 278
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    .line 279
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 280
    iput-object p5, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 281
    iput p6, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 283
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ILccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "x2"    # Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;
    .param p4, "x3"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p5, "x4"    # Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$1;

    .line 49
    invoke-direct/range {p0 .. p6}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;-><init>(Lccsancom/google/android/exoplayer2/MediaItem;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method private notifySourceInfoRefreshed()V
    .locals 9

    .line 358
    new-instance v8, Lccsancom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lccsancom/google/android/exoplayer2/MediaItem;)V

    .line 366
    .local v0, "timeline":Lccsancom/google/android/exoplayer2/Timeline;
    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$1;-><init>(Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V

    move-object v0, v1

    .line 387
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 388
    return-void
.end method


# virtual methods
.method public createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 15
    .param p1, "id"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lccsancom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 305
    move-object v12, p0

    iget-object v0, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->dataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v13

    .line 306
    .local v13, "dataSource":Lccsancom/google/android/exoplayer2/upstream/DataSource;
    iget-object v0, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v13, v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 309
    :cond_0
    new-instance v14, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v0, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Lccsanandroid/net/Uri;

    iget-object v0, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    .line 312
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;->createProgressiveMediaExtractor()Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    move-result-object v3

    iget-object v4, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 314
    invoke-virtual/range {p0 .. p1}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->createDrmEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v5

    iget-object v6, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 316
    invoke-virtual/range {p0 .. p1}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v0, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v10, v0, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v11, v12, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, v14

    move-object v2, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;-><init>(Lccsanandroid/net/Uri;Lccsancom/google/android/exoplayer2/upstream/DataSource;Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;Lccsancom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    .line 309
    return-object v14
.end method

.method public getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 288
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 301
    return-void
.end method

.method public onSourceInfoRefreshed(JZZ)V
    .locals 3
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isLive"    # Z

    .line 338
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 339
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    .line 344
    return-void

    .line 346
    :cond_1
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 347
    iput-boolean p3, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 348
    iput-boolean p4, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsLive:Z

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 350
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    .line 351
    return-void
.end method

.method protected prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "mediaTransferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 293
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 294
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 295
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    .line 296
    return-void
.end method

.method public releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 325
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->release()V

    .line 326
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 330
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource;->drmSessionManager:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    .line 331
    return-void
.end method
