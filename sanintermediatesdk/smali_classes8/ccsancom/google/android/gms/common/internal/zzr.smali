.class public final Lccsancom/google/android/gms/common/internal/zzr;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/internal/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lccsancom/google/android/gms/common/internal/zzs;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/internal/zzs;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/zzr;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lccsancom/google/android/gms/common/internal/zzr;->zzg:I

    .line 3
    return-void
.end method


# virtual methods
.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 4
    nop

    .line 5
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result p2

    .line 6
    iget v0, p0, Lccsancom/google/android/gms/common/internal/zzr;->zzg:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 8
    return-void
.end method
