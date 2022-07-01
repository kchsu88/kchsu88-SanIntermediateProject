.class public final Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Lccsancom/google/android/exoplayer2/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final dataSpec:Lccsancom/google/android/exoplayer2/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Lccsancom/google/android/exoplayer2/Format;

.field private final loadErrorHandlingPolicy:Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

.field private final timeline:Lccsancom/google/android/exoplayer2/Timeline;

.field private transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;JLccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V
    .locals 19
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "subtitleConfiguration"    # Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .param p3, "dataSourceFactory"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "durationUs"    # J
    .param p6, "loadErrorHandlingPolicy"    # Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p7, "treatLoadErrorsAsEndOfStream"    # Z
    .param p8, "tag"    # Ljava/lang/Object;

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 154
    move-object/from16 v2, p3

    iput-object v2, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 155
    move-wide/from16 v11, p4

    iput-wide v11, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    .line 156
    move-object/from16 v13, p6

    iput-object v13, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 157
    move/from16 v14, p7

    iput-boolean v14, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 158
    new-instance v3, Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v3}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    sget-object v4, Lccsanandroid/net/Uri;->EMPTY:Lccsanandroid/net/Uri;

    .line 160
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    iget-object v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Lccsanandroid/net/Uri;

    .line 161
    invoke-virtual {v4}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    .line 162
    invoke-static/range {p2 .. p2}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    .line 163
    move-object/from16 v15, p8

    invoke-virtual {v3, v15}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v10

    iput-object v10, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

    .line 165
    new-instance v3, Lccsancom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lccsancom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 167
    move-object/from16 v9, p1

    invoke-virtual {v3, v9}, Lccsancom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 168
    const-string/jumbo v5, "text/x-unknown"

    invoke-static {v4, v5}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 170
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 171
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 172
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/Format$Builder;->build()Lccsancom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 174
    new-instance v3, Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v3}, Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Lccsanandroid/net/Uri;

    .line 176
    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v3

    .line 177
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v3

    iput-object v3, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    .line 179
    new-instance v8, Lccsancom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v8

    move-wide/from16 v4, p4

    move-object/from16 v18, v8

    move/from16 v8, v16

    move-object/from16 v9, v17

    invoke-direct/range {v3 .. v10}, Lccsancom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lccsancom/google/android/exoplayer2/MediaItem;)V

    move-object/from16 v3, v18

    iput-object v3, v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;JLccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .param p3, "x2"    # Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/Object;
    .param p9, "x7"    # Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource$1;

    .line 38
    invoke-direct/range {p0 .. p8}, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;JLccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 11
    .param p1, "id"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lccsancom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 209
    new-instance v10, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 216
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Lccsancom/google/android/exoplayer2/upstream/DataSpec;Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;Lccsancom/google/android/exoplayer2/upstream/TransferListener;Lccsancom/google/android/exoplayer2/Format;JLccsancom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V

    .line 209
    return-object v10
.end method

.method public getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 193
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lccsancom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 205
    return-void
.end method

.method protected prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "mediaTransferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 198
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 199
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 200
    return-void
.end method

.method public releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 222
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->release()V

    .line 223
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    .line 228
    return-void
.end method
