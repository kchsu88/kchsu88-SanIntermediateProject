.class Lccsanandroid/support/v4/os/IResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResultReceiver.java"

# interfaces
.implements Lccsanandroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/os/IResultReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lccsanandroid/support/v4/os/IResultReceiver;


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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lccsanandroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 87
    iget-object v0, p0, Lccsanandroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "android.support.v4.os.IResultReceiver"

    return-object v0
.end method

.method public send(ILccsanandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 97
    .local v0, "_data":Lccsanandroid/os/Parcel;
    :try_start_0
    const-string v1, "android.support.v4.os.IResultReceiver"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p2, v0, v1}, Lccsanandroid/os/Bundle;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    iget-object v1, p0, Lccsanandroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Lccsanandroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    .line 107
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lccsanandroid/support/v4/os/IResultReceiver$Stub;->getDefaultImpl()Lccsanandroid/support/v4/os/IResultReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    invoke-static {}, Lccsanandroid/support/v4/os/IResultReceiver$Stub;->getDefaultImpl()Lccsanandroid/support/v4/os/IResultReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lccsanandroid/support/v4/os/IResultReceiver;->send(ILccsanandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 109
    return-void

    .line 113
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 114
    throw v1
.end method
