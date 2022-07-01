.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private clippingTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private manifest:Ljava/lang/Object;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;J)V
    .locals 9

    .line 153
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;JJZZZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;JJ)V
    .locals 9

    .line 104
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;JJZZZ)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;JJZ)V
    .locals 9

    .line 134
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;JJZZZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;JJZZZ)V
    .locals 3

    .line 201
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 202
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 203
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 204
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->startUs:J

    .line 205
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->endUs:J

    .line 206
    iput-boolean p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    .line 207
    iput-boolean p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    .line 208
    iput-boolean p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 209
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 210
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    .line 211
    return-void
.end method

.method private refreshClippedTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V
    .locals 15

    .line 268
    move-object v1, p0

    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    .line 269
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v5

    .line 270
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    iget-wide v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v2, v5

    .line 291
    iget-wide v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    .line 292
    goto :goto_0

    .line 293
    :cond_1
    iget-wide v7, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_4

    .line 271
    :cond_2
    :goto_1
    iget-wide v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->startUs:J

    .line 272
    iget-wide v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->endUs:J

    .line 273
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v13

    .line 275
    add-long/2addr v9, v13

    .line 276
    add-long/2addr v11, v13

    .line 278
    :cond_3
    add-long v13, v5, v9

    iput-wide v13, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    .line 279
    nop

    .line 280
    iget-wide v13, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    .line 281
    goto :goto_2

    .line 282
    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    .line 283
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 284
    nop

    :goto_3
    if-ge v2, v0, :cond_5

    .line 285
    iget-object v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v7, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v3, v5, v6, v7, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 287
    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    .line 296
    :goto_4
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;JJ)V

    iput-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    nop

    .line 301
    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->manifest:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->refreshSourceInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 302
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    iput-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 299
    return-void
.end method


# virtual methods
.method public final createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
    .locals 8

    .line 229
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 231
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;ZJJ)V

    .line 235
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v7
.end method

.method protected final bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J
    .locals 6

    .line 306
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 307
    return-wide v0

    .line 309
    :cond_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->startUs:J

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    .line 310
    const-wide/16 v2, 0x0

    sub-long/2addr p2, v0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 311
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->endUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    .line 312
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 314
    :cond_1
    return-wide p1
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 225
    return-void

    .line 222
    :cond_0
    throw v0
.end method

.method protected final bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Void;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->manifest:Ljava/lang/Object;

    .line 262
    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->refreshClippedTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 263
    return-void
.end method

.method public final prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Z)V

    .line 216
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->prepareChildSource(Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 217
    return-void
.end method

.method public final releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 242
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 243
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez p1, :cond_0

    .line 244
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->refreshClippedTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 246
    :cond_0
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 1

    .line 250
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 252
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .line 253
    return-void
.end method
