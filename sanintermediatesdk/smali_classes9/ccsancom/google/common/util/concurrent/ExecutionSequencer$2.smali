.class Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/util/concurrent/AsyncCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/ExecutionSequencer;

.field final synthetic val$callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

.field final synthetic val$runningState:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Ljava/util/concurrent/atomic/AtomicReference;Lccsancom/google/common/util/concurrent/AsyncCallable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    .line 97
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;->this$0:Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;->val$runningState:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;->val$callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;->val$runningState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    sget-object v2, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->STARTED:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lccsancom/google/common/util/concurrent/Futures;->immediateCancelledFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;->val$callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/AsyncCallable;->call()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;->val$callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
