.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CTOC"


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 4

    .line 47
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 50
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 51
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    new-array v1, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 54
    nop

    :goto_2
    if-ge v2, v0, :cond_2

    .line 55
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    const-class v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    aput-object v3, v1, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 57
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;)V
    .locals 1

    .line 38
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 41
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 42
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 44
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 76
    return v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    .line 82
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 84
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 85
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 86
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 79
    :cond_3
    :goto_1
    return v1
.end method

.method public final getSubFrame(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getSubFrameCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 91
    nop

    .line 92
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 93
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v1, v0

    .line 94
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 95
    return v1
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4

    .line 100
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    array-length p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;->subFrames:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 106
    invoke-virtual {p1, v3, v1}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method
