.class public Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub;
.super Lccsancom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lccsancom/google/android/gms/dynamic/IObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/dynamic/IObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 3
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub$zza;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub$zza;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method
