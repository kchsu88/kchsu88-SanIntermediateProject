.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private final byteLimit:I

.field private byteOffset:I

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    .line 41
    array-length p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    .line 42
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 125
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 127
    return-void
.end method


# virtual methods
.method public final bitsLeft()I
    .locals 2

    .line 120
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteLimit:I

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getPosition()I
    .locals 2

    .line 102
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final readBit()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 60
    return v0
.end method

.method public final readBits(I)I
    .locals 6

    .line 70
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 71
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 72
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    .line 73
    :goto_0
    if-ge v1, p1, :cond_0

    .line 74
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 75
    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 78
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 79
    return v0
.end method

.method public final reset()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 49
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 50
    return-void
.end method

.method public final setPosition(I)V
    .locals 1

    .line 111
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 112
    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 113
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->assertValidOffset()V

    .line 114
    return-void
.end method

.method public final skipBits(I)V
    .locals 3

    .line 88
    div-int/lit8 v0, p1, 0x8

    .line 89
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 90
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 91
    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 93
    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 95
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ogg/VorbisBitArray;->assertValidOffset()V

    .line 96
    return-void
.end method
