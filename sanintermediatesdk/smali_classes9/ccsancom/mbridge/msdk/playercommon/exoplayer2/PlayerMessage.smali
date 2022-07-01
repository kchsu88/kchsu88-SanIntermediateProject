.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private deleteAfterDelivery:Z

.field private handler:Lccsanandroid/os/Handler;

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;

.field private final target:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;

.field private final timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

.field private type:I

.field private windowIndex:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;ILccsanandroid/os/Handler;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->sender:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;

    .line 90
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->target:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;

    .line 91
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 92
    iput-object p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->handler:Lccsanandroid/os/Handler;

    .line 93
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->windowIndex:I

    .line 94
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->positionMs:J

    .line 95
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    .line 96
    return-void
.end method


# virtual methods
.method public final declared-synchronized blockUntilDelivered()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 283
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 284
    const-wide/16 v0, 0x1f4

    .line 285
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 286
    nop

    .line 287
    :goto_1
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isProcessed:Z

    if-nez v4, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    .line 288
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 289
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_1

    .line 291
    :cond_1
    if-eqz v4, :cond_2

    .line 294
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 292
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Message delivery time out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized cancel()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isCanceled:Z

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-object p0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDeleteAfterDelivery()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public final getHandler()Lccsanandroid/os/Handler;
    .locals 1

    .line 159
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->handler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/Object;
    .locals 1

    .line 141
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPositionMs()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public final getTarget()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->target:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;

    return-object v0
.end method

.method public final getTimeline()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 123
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->type:I

    return v0
.end method

.method public final getWindowIndex()I
    .locals 1

    .line 208
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->windowIndex:I

    return v0
.end method

.method public final declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized markAsProcessed(Z)V
    .locals 1

    monitor-enter p0

    .line 306
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isDelivered:Z

    .line 307
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isProcessed:Z

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 6

    .line 240
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 241
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 242
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 244
    :cond_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    .line 245
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->sender:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;->sendMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;)V

    .line 246
    return-object p0
.end method

.method public final setDeleteAfterDelivery(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    .line 221
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 222
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    .line 223
    return-object p0
.end method

.method public final setHandler(Lccsanandroid/os/Handler;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    .line 152
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 153
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->handler:Lccsanandroid/os/Handler;

    .line 154
    return-object p0
.end method

.method public final setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    .line 134
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 135
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    .line 136
    return-object p0
.end method

.method public final setPosition(IJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 4

    .line 196
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 197
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 198
    if-ltz p1, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 201
    :cond_1
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->windowIndex:I

    .line 202
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->positionMs:J

    .line 203
    return-object p0

    .line 199
    :cond_2
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method public final setPosition(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    .line 171
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 172
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->positionMs:J

    .line 173
    return-object p0
.end method

.method public final setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    .line 116
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 117
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->type:I

    .line 118
    return-object p0
.end method
