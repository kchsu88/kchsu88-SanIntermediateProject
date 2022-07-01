.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForegroundNotificationUpdater"
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private notificationDisplayed:Z

.field private final notificationId:I

.field private periodicUpdatesStarted:Z

.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

.field private final updateInterval:J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;IJ)V
    .locals 0

    .line 414
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    .line 416
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->updateInterval:J

    .line 417
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Lccsanandroid/os/Handler;

    .line 418
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 448
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 449
    return-void
.end method

.method public final showNotificationIfNotAlready()V
    .locals 1

    .line 441
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 444
    :cond_0
    return-void
.end method

.method public final startPeriodicUpdates()V
    .locals 1

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    .line 422
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 423
    return-void
.end method

.method public final stopPeriodicUpdates()V
    .locals 1

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    .line 427
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public final update()V
    .locals 3

    .line 431
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->getAllTaskStates()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->getForegroundNotification([Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;)Lccsanandroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService;->startForeground(ILccsanandroid/app/Notification;)V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    .line 434
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Lccsanandroid/os/Handler;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->updateInterval:J

    invoke-virtual {v0, p0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :cond_0
    return-void
.end method
