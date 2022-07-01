.class public Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Lccsanandroidx/lifecycle/LifecycleService;
.source "SystemAlarmService.java"

# interfaces
.implements Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field private mIsShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "SystemAlarmService"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method

.method private initializeDispatcher()V
    .locals 1

    .line 93
    new-instance v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 94
    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->setCompletedListener(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onAllCommandsCompleted()V
    .locals 4

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    .line 83
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "All commands completed in dispatcher"

    invoke-virtual {v0, v1, v3, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 85
    invoke-static {}, Lccsanandroidx/work/impl/utils/WakeLocks;->checkWakeLocks()V

    .line 88
    invoke-virtual {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->stopSelf()V

    .line 89
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 44
    invoke-super {p0}, Lccsanandroidx/lifecycle/LifecycleService;->onCreate()V

    .line 45
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->initializeDispatcher()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    invoke-super {p0}, Lccsanandroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    .line 53
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onDestroy()V

    .line 54
    return-void
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 58
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/lifecycle/LifecycleService;->onStartCommand(Lccsanandroid/content/Intent;II)I

    .line 59
    iget-boolean v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    const-string v4, "Re-initializing SystemAlarmDispatcher after a request to shut-down."

    invoke-virtual {v0, v1, v4, v3}, Lccsanandroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onDestroy()V

    .line 66
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->initializeDispatcher()V

    .line 68
    iput-boolean v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mIsShutdown:Z

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0, p1, p3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Lccsanandroid/content/Intent;I)Z

    .line 76
    :cond_1
    const/4 v0, 0x3

    return v0
.end method
