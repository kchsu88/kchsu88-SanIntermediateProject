.class Lccsancom/google/common/util/concurrent/SequentialExecutor$1;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/SequentialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/SequentialExecutor;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/SequentialExecutor;

    .line 117
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/SequentialExecutor$1;->this$0:Lccsancom/google/common/util/concurrent/SequentialExecutor;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void
.end method
