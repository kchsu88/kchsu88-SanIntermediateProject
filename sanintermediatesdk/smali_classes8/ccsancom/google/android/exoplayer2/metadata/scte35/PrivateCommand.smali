.class public final Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;
.super Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
.source "PrivateCommand.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final commandBytes:[B

.field public final identifier:J

.field public final ptsAdjustment:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0
    .param p1, "identifier"    # J
    .param p3, "commandBytes"    # [B
    .param p4, "ptsAdjustment"    # J

    .line 33
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 34
    iput-wide p4, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 35
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    .line 36
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    .line 37
    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 40
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 41
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    .line 42
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/os/Parcel;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;

    .line 24
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;IJ)Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 10
    .param p0, "sectionData"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "commandLength"    # I
    .param p2, "ptsAdjustment"    # J

    .line 47
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 48
    .local v6, "identifier":J
    add-int/lit8 v0, p1, -0x4

    new-array v8, v0, [B

    .line 49
    .local v8, "privateBytes":[B
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 50
    new-instance v9, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-object v0, v9

    move-wide v1, v6

    move-object v3, v8

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object v9
.end method


# virtual methods
.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeByteArray([B)V

    .line 60
    return-void
.end method
