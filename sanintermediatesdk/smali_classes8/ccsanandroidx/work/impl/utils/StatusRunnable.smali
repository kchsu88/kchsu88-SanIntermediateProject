.class public abstract Lccsanandroidx/work/impl/utils/StatusRunnable;
.super Ljava/lang/Object;
.source "StatusRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/utils/futures/SettableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    .local p0, "this":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/StatusRunnable;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method

.method public static forStringIds(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)Lccsanandroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanandroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 72
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lccsanandroidx/work/impl/utils/StatusRunnable$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable$1;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)V

    return-object v0
.end method

.method public static forTag(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lccsanandroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lccsanandroidx/work/impl/utils/StatusRunnable$3;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable$3;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forUUID(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)Lccsanandroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p1, "id"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/UUID;",
            ")",
            "Lccsanandroidx/work/impl/utils/StatusRunnable<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lccsanandroidx/work/impl/utils/StatusRunnable$2;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable$2;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static forUniqueWork(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lccsanandroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/WorkManagerImpl;",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 144
    new-instance v0, Lccsanandroidx/work/impl/utils/StatusRunnable$4;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable$4;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/StatusRunnable;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 46
    .local p0, "this":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/StatusRunnable;->runInternal()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/StatusRunnable;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    nop

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/StatusRunnable;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 51
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method abstract runInternal()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
