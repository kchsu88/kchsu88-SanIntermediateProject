.class public final Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Schedule"
.end annotation


# instance fields
.field private final delay:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-wide p1, p0, Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->delay:J

    .line 583
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->unit:Ljava/util/concurrent/TimeUnit;

    .line 584
    return-void
.end method

.method static synthetic access$800(Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;

    .line 572
    iget-wide v0, p0, Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->delay:J

    return-wide v0
.end method

.method static synthetic access$900(Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;

    .line 572
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$Schedule;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
