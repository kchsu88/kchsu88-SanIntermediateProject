.class public final Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;
.super Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceNullCommand.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 28
    return-void
.end method
