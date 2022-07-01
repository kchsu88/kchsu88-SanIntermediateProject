.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = true

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1


# instance fields
.field private final allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

.field private final targetBufferBytesOverwrite:I

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 190
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;)V
    .locals 8

    .line 196
    const/16 v2, 0x3a98

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;IIIIIZ)V
    .locals 9

    .line 216
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;IIIIIZLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;IIIIIZLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;)V
    .locals 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p4, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p5, v0, v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "minBufferMs"

    invoke-static {p2, p4, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p2, p5, v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "maxBufferMs"

    invoke-static {p3, p2, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    .line 250
    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 251
    int-to-long p1, p3

    mul-long p1, p1, v0

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    .line 252
    int-to-long p1, p4

    mul-long p1, p1, v0

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 253
    int-to-long p1, p5

    mul-long p1, p1, v0

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 254
    iput p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 255
    iput-boolean p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    .line 256
    iput-object p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 257
    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 368
    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 369
    return-void
.end method

.method private reset(Z)V
    .locals 3

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 358
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 361
    :cond_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 362
    if-eqz p1, :cond_1

    .line 363
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->reset()V

    .line 365
    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferSize([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)I
    .locals 3

    .line 347
    nop

    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 349
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    aget-object v2, p1, v0

    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    return v1
.end method

.method public getAllocator()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;
    .locals 1

    .line 286
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    .line 291
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 262
    return-void
.end method

.method public onReleased()V
    .locals 1

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 282
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 277
    return-void
.end method

.method public onTracksSelected([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 267
    nop

    .line 268
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 269
    invoke-virtual {p0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->calculateTargetBufferSize([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)I

    move-result p2

    goto :goto_0

    .line 270
    :cond_0
    nop

    :goto_0
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 271
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 272
    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .locals 8

    .line 301
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 303
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 304
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_1

    .line 307
    nop

    .line 308
    invoke-static {v4, v5, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v4

    .line 309
    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 311
    :cond_1
    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    .line 312
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    goto :goto_2

    .line 313
    :cond_4
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long p3, p1, v4

    if-gtz p3, :cond_5

    if-eqz v0, :cond_6

    .line 314
    :cond_5
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 316
    :cond_6
    :goto_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_8

    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eq p2, v1, :cond_8

    .line 317
    if-eqz p2, :cond_7

    .line 318
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->add(I)V

    goto :goto_3

    .line 320
    :cond_7
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 323
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->isBuffering:Z

    return p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 3

    .line 329
    invoke-static {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    .line 330
    if-eqz p4, :cond_0

    iget-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 331
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    .line 334
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 331
    :goto_2
    return p1
.end method
