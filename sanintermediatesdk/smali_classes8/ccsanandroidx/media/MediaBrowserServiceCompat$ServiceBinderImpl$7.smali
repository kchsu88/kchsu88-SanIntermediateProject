.class Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1034
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1037
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 1038
    .local v0, "b":Lccsanandroid/os/IBinder;
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1039
    .local v1, "old":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    if-eqz v1, :cond_0

    .line 1040
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lccsanandroid/os/IBinder;->unlinkToDeath(Lccsanandroid/os/IBinder$DeathRecipient;I)Z

    .line 1042
    :cond_0
    return-void
.end method
