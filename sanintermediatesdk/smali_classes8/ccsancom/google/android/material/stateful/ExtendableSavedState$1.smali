.class final Lccsancom/google/android/material/stateful/ExtendableSavedState$1;
.super Ljava/lang/Object;
.source "ExtendableSavedState.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/stateful/ExtendableSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$ClassLoaderCreator<",
        "Lccsancom/google/android/material/stateful/ExtendableSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/stateful/ExtendableSavedState;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 103
    new-instance v0, Lccsancom/google/android/material/stateful/ExtendableSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lccsancom/google/android/material/stateful/ExtendableSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;Lccsancom/google/android/material/stateful/ExtendableSavedState$1;)V

    return-object v0
.end method

.method public createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsancom/google/android/material/stateful/ExtendableSavedState;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 97
    new-instance v0, Lccsancom/google/android/material/stateful/ExtendableSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lccsancom/google/android/material/stateful/ExtendableSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;Lccsancom/google/android/material/stateful/ExtendableSavedState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/stateful/ExtendableSavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/stateful/ExtendableSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/stateful/ExtendableSavedState$1;->createFromParcel(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)Lccsancom/google/android/material/stateful/ExtendableSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/stateful/ExtendableSavedState;
    .locals 1
    .param p1, "size"    # I

    .line 109
    new-array v0, p1, [Lccsancom/google/android/material/stateful/ExtendableSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/stateful/ExtendableSavedState$1;->newArray(I)[Lccsancom/google/android/material/stateful/ExtendableSavedState;

    move-result-object p1

    return-object p1
.end method
