.class Lccsanandroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;
.super Ljava/lang/Thread;
.source "RequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/provider/RequestExecutor$DefaultThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessPriorityThread"
.end annotation


# instance fields
.field private final mPriority:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "name",
            "priority"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 179
    iput p3, p0, Lccsanandroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;->mPriority:I

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 184
    iget v0, p0, Lccsanandroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;->mPriority:I

    invoke-static {v0}, Lccsanandroid/os/Process;->setThreadPriority(I)V

    .line 185
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 186
    return-void
.end method
