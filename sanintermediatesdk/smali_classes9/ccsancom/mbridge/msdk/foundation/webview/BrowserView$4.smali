.class final Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4;
.super Lccsanandroid/webkit/WebChromeClient;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/webview/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-direct {p0}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lccsanandroid/webkit/WebView;I)V
    .locals 2

    .line 216
    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 217
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->e(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setProgressState(I)V

    .line 218
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    new-instance p2, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4$1;-><init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView$4;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :cond_0
    return-void
.end method
