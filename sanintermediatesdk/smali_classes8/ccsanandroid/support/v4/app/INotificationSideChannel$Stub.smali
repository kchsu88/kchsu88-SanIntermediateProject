.class public abstract Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;
.super Lccsanandroid/os/Binder;
.source "INotificationSideChannel.java"

# interfaces
.implements Lccsanandroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/app/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.app.INotificationSideChannel"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_cancelAll:I = 0x3

.field static final TRANSACTION_notify:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static asInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/support/v4/app/INotificationSideChannel;
    .locals 2
    .param p0, "obj"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Lccsanandroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lccsanandroid/support/v4/app/INotificationSideChannel;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Lccsanandroid/support/v4/app/INotificationSideChannel;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lccsanandroid/support/v4/app/INotificationSideChannel;
    .locals 1

    .line 224
    sget-object v0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->sDefaultImpl:Lccsanandroid/support/v4/app/INotificationSideChannel;

    return-object v0
.end method

.method public static setDefaultImpl(Lccsanandroid/support/v4/app/INotificationSideChannel;)Z
    .locals 2
    .param p0, "impl"    # Lccsanandroid/support/v4/app/INotificationSideChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 214
    sget-object v0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->sDefaultImpl:Lccsanandroid/support/v4/app/INotificationSideChannel;

    if-nez v0, :cond_1

    .line 217
    if-eqz p0, :cond_0

    .line 218
    sput-object p0, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->sDefaultImpl:Lccsanandroid/support/v4/app/INotificationSideChannel;

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    .line 65
    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Lccsanandroid/os/Parcel;
    .param p3, "reply"    # Lccsanandroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "android.support.v4.app.INotificationSideChannel"

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 74
    :sswitch_0
    invoke-virtual {p3, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 110
    :sswitch_1
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->cancelAll(Ljava/lang/String;)V

    .line 114
    return v1

    .line 98
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg1":I
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    return v1

    .line 79
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    sget-object v5, Lccsanandroid/app/Notification;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/app/Notification;

    .local v5, "_arg3":Lccsanandroid/app/Notification;
    goto :goto_0

    .line 91
    .end local v5    # "_arg3":Lccsanandroid/app/Notification;
    :cond_0
    const/4 v5, 0x0

    .line 93
    .restart local v5    # "_arg3":Lccsanandroid/app/Notification;
    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->notify(Ljava/lang/String;ILjava/lang/String;Lccsanandroid/app/Notification;)V

    .line 94
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
