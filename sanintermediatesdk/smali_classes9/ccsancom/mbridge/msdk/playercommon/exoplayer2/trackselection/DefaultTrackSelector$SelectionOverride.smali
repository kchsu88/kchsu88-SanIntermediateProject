.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1034
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .locals 0

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 981
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 982
    array-length p2, p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 983
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 984
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 988
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 989
    new-array v0, v0, [I

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 990
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readIntArray([I)V

    .line 991
    return-void
.end method


# virtual methods
.method public final containsTrack(I)Z
    .locals 5

    .line 995
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 996
    if-ne v4, p1, :cond_0

    .line 997
    const/4 p1, 0x1

    return p1

    .line 995
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    return v2
.end method

.method public final describeContents()I
    .locals 1

    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1010
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1011
    return v0

    .line 1013
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1016
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 1017
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1014
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1005
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0

    .line 1029
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeIntArray([I)V

    .line 1032
    return-void
.end method
