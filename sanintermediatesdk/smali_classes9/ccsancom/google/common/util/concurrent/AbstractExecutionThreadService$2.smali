.class Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$2;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;->executor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 157
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$2;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 160
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$2;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method
