.class Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"

# interfaces
.implements Lccsanandroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lccsanandroid/support/v4/app/INotificationSideChannel;


# instance fields
.field private mRemote:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 131
    iget-object v0, p0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
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

    .line 170
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v1, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p3}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    .line 177
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    invoke-static {}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lccsanandroid/support/v4/app/INotificationSideChannel;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 179
    return-void

    .line 183
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 184
    throw v1
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "_data":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v1, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    .line 196
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 197
    invoke-static {}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v2

    invoke-interface {v2, p1}, Lccsanandroid/support/v4/app/INotificationSideChannel;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 198
    return-void

    .line 202
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 203
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    return-object v0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Lccsanandroid/app/Notification;)V
    .locals 4
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

    .line 142
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v1, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v0, p3}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 149
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {p4, v0, v1}, Lccsanandroid/app/Notification;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_0
    iget-object v1, p0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    .line 156
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    invoke-static {}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lccsanandroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Lccsanandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 158
    return-void

    .line 162
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 163
    throw v1
.end method
