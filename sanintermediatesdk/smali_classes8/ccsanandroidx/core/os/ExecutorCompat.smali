.class public final Lccsanandroidx/core/os/ExecutorCompat;
.super Ljava/lang/Object;
.source "ExecutorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/os/ExecutorCompat$HandlerExecutor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static create(Lccsanandroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 36
    new-instance v0, Lccsanandroidx/core/os/ExecutorCompat$HandlerExecutor;

    invoke-direct {v0, p0}, Lccsanandroidx/core/os/ExecutorCompat$HandlerExecutor;-><init>(Lccsanandroid/os/Handler;)V

    return-object v0
.end method
