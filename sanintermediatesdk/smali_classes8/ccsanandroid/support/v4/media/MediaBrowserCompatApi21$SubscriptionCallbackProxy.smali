.class Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.super Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;",
        ">",
        "Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final mSubscriptionCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    .local p1, "callback":Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;, "TT;"
    invoke-direct {p0}, Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    .line 127
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    .line 128
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsanandroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;

    .line 138
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 139
    return-void
.end method
