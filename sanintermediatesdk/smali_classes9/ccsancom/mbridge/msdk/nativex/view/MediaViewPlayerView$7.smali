.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$7;
.super Ljava/util/TimerTask;
.source "MediaViewPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$7;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 763
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$7;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    goto :goto_0

    .line 764
    :catchall_0
    move-exception v0

    .line 765
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaViewPlayerView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    :goto_0
    return-void
.end method
