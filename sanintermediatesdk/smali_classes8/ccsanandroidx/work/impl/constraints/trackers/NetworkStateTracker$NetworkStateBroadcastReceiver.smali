.class Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;->this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 174
    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 178
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Network broadcast received"

    invoke-virtual {v0, v1, v3, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;->this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Lccsanandroidx/work/impl/constraints/NetworkState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->setState(Ljava/lang/Object;)V

    .line 185
    :cond_1
    return-void

    .line 179
    :cond_2
    :goto_0
    return-void
.end method
