.class Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getItem(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$cb:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 1253
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iput-object p3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1256
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 1257
    return-void
.end method
