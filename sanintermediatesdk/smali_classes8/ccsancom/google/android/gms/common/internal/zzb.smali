.class public final Lccsancom/google/android/gms/common/internal/zzb;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/internal/zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzcz:Lccsanandroid/os/Bundle;

.field zzda:[Lccsancom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lccsancom/google/android/gms/common/internal/zzc;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/internal/zzc;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/zzb;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Bundle;[Lccsancom/google/android/gms/common/Feature;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/zzb;->zzcz:Lccsanandroid/os/Bundle;

    .line 3
    iput-object p2, p0, Lccsancom/google/android/gms/common/internal/zzb;->zzda:[Lccsancom/google/android/gms/common/Feature;

    .line 4
    return-void
.end method


# virtual methods
.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4

    .line 6
    nop

    .line 7
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/zzb;->zzcz:Lccsanandroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Lccsanandroid/os/Parcel;ILccsanandroid/os/Bundle;Z)V

    .line 9
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/zzb;->zzda:[Lccsancom/google/android/gms/common/Feature;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Lccsanandroid/os/Parcel;I[Lccsanandroid/os/Parcelable;IZ)V

    .line 10
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 11
    return-void
.end method
