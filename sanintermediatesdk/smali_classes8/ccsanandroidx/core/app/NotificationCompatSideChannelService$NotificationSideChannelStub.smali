.class Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/NotificationCompatSideChannelService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-direct {p0}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "id",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 93
    invoke-static {}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-virtual {v2, p1, p2, p3}, Lccsanandroidx/core/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v0, v1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 98
    nop

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 98
    throw v2
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 104
    invoke-static {}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v0

    .line 106
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-virtual {v2, p1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {v0, v1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 109
    nop

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 109
    throw v2
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Lccsanandroid/app/Notification;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "notification"    # Lccsanandroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "id",
            "tag",
            "notification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Lccsanandroidx/core/app/NotificationCompatSideChannelService;

    invoke-virtual {v2, p1, p2, p3, p4}, Lccsanandroidx/core/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Lccsanandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-static {v0, v1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lccsanandroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 87
    throw v2
.end method
