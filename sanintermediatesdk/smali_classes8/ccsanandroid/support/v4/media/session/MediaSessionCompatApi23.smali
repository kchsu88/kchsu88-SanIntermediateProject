.class Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;,
        Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static createCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;

    .line 28
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    return-object v0
.end method
