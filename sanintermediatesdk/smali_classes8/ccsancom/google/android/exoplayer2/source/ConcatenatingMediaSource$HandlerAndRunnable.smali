.class final Lccsancom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndRunnable"
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "handler"    # Lccsanandroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->handler:Lccsanandroid/os/Handler;

    .line 1035
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->runnable:Ljava/lang/Runnable;

    .line 1036
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    .line 1039
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1040
    return-void
.end method
