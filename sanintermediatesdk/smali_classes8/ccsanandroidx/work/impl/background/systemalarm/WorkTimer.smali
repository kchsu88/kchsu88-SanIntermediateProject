.class Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;
.super Ljava/lang/Object;
.source "WorkTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;,
        Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "WorkTimer"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$1;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$1;-><init>(Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mBackgroundThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    return-void
.end method


# virtual methods
.method getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 120
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method declared-synchronized getListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 115
    .end local p0    # "this":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTimerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 110
    .end local p0    # "this":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onDestroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 106
    :cond_0
    return-void
.end method

.method startTimer(Ljava/lang/String;JLccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;)V
    .locals 6
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "processingTimeMillis"    # J
    .param p4, "listener"    # Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;

    .line 75
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->TAG:Ljava/lang/String;

    const-string v3, "Starting timer for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->stopTimer(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;Ljava/lang/String;)V

    .line 80
    .local v1, "runnable":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 83
    nop

    .end local v1    # "runnable":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopTimer(Ljava/lang/String;)V
    .locals 7
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    .line 89
    .local v1, "removed":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->TAG:Ljava/lang/String;

    const-string v4, "Stopping timer for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v1    # "removed":Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    :cond_0
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
