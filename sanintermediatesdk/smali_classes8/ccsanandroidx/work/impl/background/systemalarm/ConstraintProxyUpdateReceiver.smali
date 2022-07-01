.class public Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "ConstraintProxyUpdateReceiver.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "androidx.work.impl.background.systemalarm.UpdateProxies"

.field static final KEY_BATTERY_CHARGING_PROXY_ENABLED:Ljava/lang/String; = "KEY_BATTERY_CHARGING_PROXY_ENABLED"

.field static final KEY_BATTERY_NOT_LOW_PROXY_ENABLED:Ljava/lang/String; = "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

.field static final KEY_NETWORK_STATE_PROXY_ENABLED:Ljava/lang/String; = "KEY_NETWORK_STATE_PROXY_ENABLED"

.field static final KEY_STORAGE_NOT_LOW_PROXY_ENABLED:Ljava/lang/String; = "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "ConstrntProxyUpdtRecvr"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static newConstraintProxyUpdateIntent(Lccsanandroid/content/Context;ZZZZ)Lccsanandroid/content/Intent;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "batteryNotLowProxyEnabled"    # Z
    .param p2, "batteryChargingProxyEnabled"    # Z
    .param p3, "storageNotLowProxyEnabled"    # Z
    .param p4, "networkStateProxyEnabled"    # Z

    .line 68
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Lccsanandroid/content/Intent;
    new-instance v1, Lccsanandroid/content/ComponentName;

    const-class v2, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v1, p0, v2}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "name":Lccsanandroid/content/ComponentName;
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 73
    const-string v2, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v0, v2, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    move-result-object v2

    .line 74
    const-string v3, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v2, v3, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    move-result-object v2

    .line 75
    const-string v3, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v2, v3, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    move-result-object v2

    .line 76
    const-string v3, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v2, v3, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 78
    return-object v0
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v1, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Ignoring unknown action %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->goAsync()Lccsanandroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 88
    .local v1, "pendingResult":Lccsanandroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    .line 89
    .local v2, "workManager":Lccsanandroidx/work/impl/WorkManagerImpl;
    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v3

    .line 90
    .local v3, "taskExecutor":Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    new-instance v4, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$1;

    invoke-direct {v4, p0, p2, p1, v1}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$1;-><init>(Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;Lccsanandroid/content/Intent;Lccsanandroid/content/Context;Lccsanandroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v3, v4}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 132
    .end local v1    # "pendingResult":Lccsanandroid/content/BroadcastReceiver$PendingResult;
    .end local v2    # "workManager":Lccsanandroidx/work/impl/WorkManagerImpl;
    .end local v3    # "taskExecutor":Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    :goto_1
    return-void
.end method
