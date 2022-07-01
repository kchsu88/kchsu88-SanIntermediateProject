.class final Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;
.super Lccsancom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothBursty"
.end annotation


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V
    .locals 1
    .param p1, "stopwatch"    # Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .param p2, "maxBurstSeconds"    # D

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lccsancom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 282
    iput-wide p2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    .line 283
    return-void
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .locals 2

    .line 307
    iget-wide v0, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->stableIntervalMicros:D

    return-wide v0
.end method

.method doSetRate(DD)V
    .locals 6
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .line 287
    iget-wide v0, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    .line 288
    .local v0, "oldMaxPermits":D
    iget-wide v2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    mul-double v2, v2, p1

    iput-wide v2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    .line 289
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 291
    iget-wide v2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    iput-wide v2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    goto :goto_1

    .line 293
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    iget-wide v4, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    mul-double v2, v2, v4

    div-double/2addr v2, v0

    :goto_0
    iput-wide v2, p0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    .line 298
    :goto_1
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 2
    .param p1, "storedPermits"    # D
    .param p3, "permitsToTake"    # D

    .line 302
    const-wide/16 v0, 0x0

    return-wide v0
.end method
