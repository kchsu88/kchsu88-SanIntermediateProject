.class final Lccsankotlin/coroutines/jvm/internal/RunSuspend;
.super Ljava/lang/Object;
.source "RunSuspend.kt"

# interfaces
.implements Lccsankotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsankotlin/coroutines/Continuation<",
        "Lccsankotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u000e\u001a\u00020\u0002J\u001e\u0010\u000f\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R(\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tX\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "Lccsankotlin/coroutines/jvm/internal/RunSuspend;",
        "Lccsankotlin/coroutines/Continuation;",
        "",
        "()V",
        "context",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lccsankotlin/coroutines/CoroutineContext;",
        "result",
        "Lccsankotlin/Result;",
        "getResult-xLWZpok",
        "()Lccsankotlin/Result;",
        "setResult",
        "(Lccsankotlin/Result;)V",
        "await",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private result:Lccsankotlin/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/Result<",
            "Lccsankotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final await()V
    .locals 3

    .line 34
    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-synchronized-RunSuspend$await$1":I
    :goto_0
    nop

    .line 36
    :try_start_0
    iget-object v1, p0, Lccsankotlin/coroutines/jvm/internal/RunSuspend;->result:Lccsankotlin/Result;

    .local v1, "result":Lccsankotlin/Result;
    if-nez v1, :cond_0

    .line 37
    move-object v2, p0

    check-cast v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 35
    .end local v1    # "result":Lccsankotlin/Result;
    goto :goto_0

    .line 39
    .restart local v1    # "result":Lccsankotlin/Result;
    :cond_0
    invoke-virtual {v1}, Lccsankotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v0    # "$i$a$-synchronized-RunSuspend$await$1":I
    .end local v1    # "result":Lccsankotlin/Result;
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getContext()Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    .line 25
    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getResult-xLWZpok()Lccsankotlin/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/Result<",
            "Lccsankotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lccsankotlin/coroutines/jvm/internal/RunSuspend;->result:Lccsankotlin/Result;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$a$-synchronized-RunSuspend$resumeWith$1":I
    :try_start_0
    invoke-static {p1}, Lccsankotlin/Result;->box-impl(Ljava/lang/Object;)Lccsankotlin/Result;

    move-result-object v1

    iput-object v1, p0, Lccsankotlin/coroutines/jvm/internal/RunSuspend;->result:Lccsankotlin/Result;

    .line 31
    move-object v1, p0

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 32
    nop

    .end local v0    # "$i$a$-synchronized-RunSuspend$resumeWith$1":I
    sget-object v0, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 32
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setResult(Lccsankotlin/Result;)V
    .locals 0
    .param p1, "<set-?>"    # Lccsankotlin/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/Result<",
            "Lccsankotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lccsankotlin/coroutines/jvm/internal/RunSuspend;->result:Lccsankotlin/Result;

    return-void
.end method
