.class final Lccsancom/google/android/gms/common/internal/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/internal/BinderWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 5
    nop

    .line 6
    new-instance v0, Lccsancom/google/android/gms/common/internal/BinderWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/gms/common/internal/BinderWrapper;-><init>(Lccsanandroid/os/Parcel;Lccsancom/google/android/gms/common/internal/zza;)V

    .line 7
    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    nop

    .line 3
    new-array p1, p1, [Lccsancom/google/android/gms/common/internal/BinderWrapper;

    .line 4
    return-object p1
.end method
