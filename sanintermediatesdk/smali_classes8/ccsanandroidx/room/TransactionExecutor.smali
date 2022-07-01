.class Lccsanandroidx/room/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private mActive:Ljava/lang/Runnable;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsanandroidx/room/TransactionExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 38
    iput-object p1, p0, Lccsanandroidx/room/TransactionExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/room/TransactionExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lccsanandroidx/room/TransactionExecutor$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/room/TransactionExecutor$1;-><init>(Lccsanandroidx/room/TransactionExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lccsanandroidx/room/TransactionExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lccsanandroidx/room/TransactionExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local p0    # "this":Lccsanandroidx/room/TransactionExecutor;
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    .end local p1    # "command":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/room/TransactionExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lccsanandroidx/room/TransactionExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lccsanandroidx/room/TransactionExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local p0    # "this":Lccsanandroidx/room/TransactionExecutor;
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
