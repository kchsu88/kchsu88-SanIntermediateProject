.class Lccsanandroidx/core/provider/SelfDestructiveThread$2;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Lccsanandroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/provider/SelfDestructiveThread;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$calleeHandler:Lccsanandroid/os/Handler;

.field final synthetic val$reply:Lccsanandroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# direct methods
.method constructor <init>(Lccsanandroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Lccsanandroid/os/Handler;Lccsanandroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/provider/SelfDestructiveThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callable",
            "val$calleeHandler",
            "val$reply"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$2;->this$0:Lccsanandroidx/core/provider/SelfDestructiveThread;

    iput-object p2, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$2;->val$calleeHandler:Lccsanandroid/os/Handler;

    iput-object p4, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$2;->val$reply:Lccsanandroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 148
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 151
    .local v0, "t":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object v1, v0

    .line 152
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lccsanandroidx/core/provider/SelfDestructiveThread$2;->val$calleeHandler:Lccsanandroid/os/Handler;

    new-instance v3, Lccsanandroidx/core/provider/SelfDestructiveThread$2$1;

    invoke-direct {v3, p0, v1}, Lccsanandroidx/core/provider/SelfDestructiveThread$2$1;-><init>(Lccsanandroidx/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
