.class Lccsancom/google/android/exoplayer2/drm/DrmInitData$1;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/exoplayer2/drm/DrmInitData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/drm/DrmInitData;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 228
    new-instance v0, Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/drm/DrmInitData;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/drm/DrmInitData$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/exoplayer2/drm/DrmInitData;
    .locals 1
    .param p1, "size"    # I

    .line 233
    new-array v0, p1, [Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/drm/DrmInitData$1;->newArray(I)[Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    return-object p1
.end method
