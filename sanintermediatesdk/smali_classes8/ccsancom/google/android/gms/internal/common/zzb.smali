.class public Lccsancom/google/android/gms/internal/common/zzb;
.super Lccsanandroid/os/Binder;

# interfaces
.implements Lccsanandroid/os/IInterface;


# static fields
.field private static zzc:Lccsancom/google/android/gms/internal/common/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccsancom/google/android/gms/internal/common/zzb;->zzc:Lccsancom/google/android/gms/internal/common/zzd;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    invoke-virtual {p0, p0, p1}, Lccsancom/google/android/gms/internal/common/zzb;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    .line 3
    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    .line 4
    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 5
    nop

    .line 6
    const v0, 0xffffff

    if-le p1, v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zzb;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    const/4 p1, 0x1

    return p1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/android/gms/internal/common/zzb;->zza(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method protected zza(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 p1, 0x0

    return p1
.end method
