.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$3;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat;

    .line 522
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$3;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method
