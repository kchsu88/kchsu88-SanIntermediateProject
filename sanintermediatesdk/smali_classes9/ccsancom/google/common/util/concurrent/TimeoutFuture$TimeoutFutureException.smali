.class final Lccsancom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;
.super Ljava/util/concurrent/TimeoutException;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/TimeoutFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeoutFutureException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lccsancom/google/common/util/concurrent/TimeoutFuture$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lccsancom/google/common/util/concurrent/TimeoutFuture$1;

    .line 136
    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 143
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-object p0

    .line 142
    .end local p0    # "this":Lccsancom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
