.class Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Lccsanandroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 104
    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 105
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Lccsanandroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 108
    invoke-virtual {p2}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Lccsanandroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 113
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Lccsanandroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-boolean v0, v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Lccsanandroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Lccsanandroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lccsanandroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Lccsanandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-virtual {v0}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    .line 120
    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v0, v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Lccsanandroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v1, v1, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Lccsanandroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lccsanandroid/view/GestureDetector$OnGestureListener;->onShowPress(Lccsanandroid/view/MotionEvent;)V

    .line 116
    nop

    .line 136
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
