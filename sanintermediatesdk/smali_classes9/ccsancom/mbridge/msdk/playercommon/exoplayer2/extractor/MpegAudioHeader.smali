.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio/mpeg-L1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "audio/mpeg-L2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    .line 37
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 43
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 7

    .line 53
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_0

    .line 54
    return v2

    .line 57
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    .line 58
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 59
    return v2

    .line 62
    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    .line 63
    if-nez v4, :cond_2

    .line 64
    return v2

    .line 67
    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 68
    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    .line 73
    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    .line 74
    if-ne v6, v1, :cond_4

    .line 75
    return v2

    .line 78
    :cond_4
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    .line 79
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 81
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 82
    :cond_5
    if-nez v0, :cond_6

    .line 84
    div-int/lit8 v2, v2, 0x4

    .line 88
    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    .line 89
    if-ne v4, v1, :cond_8

    .line 91
    if-ne v0, v1, :cond_7

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    .line 92
    :goto_1
    mul-int/lit16 v0, v0, 0x2ee0

    div-int/2addr v0, v2

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    .line 95
    :cond_8
    if-ne v0, v1, :cond_a

    .line 96
    if-ne v4, v6, :cond_9

    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    :cond_9
    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_2

    .line 99
    :cond_a
    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    .line 103
    :goto_2
    const v6, 0x23280

    if-ne v0, v1, :cond_b

    .line 105
    mul-int v5, v5, v6

    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    .line 108
    :cond_b
    if-ne v4, v3, :cond_c

    const v6, 0x11940

    :cond_c
    mul-int v6, v6, v5

    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    .line 70
    :cond_d
    :goto_3
    return v2
.end method

.method public static populateHeader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;)Z
    .locals 11

    .line 121
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 122
    return v2

    .line 125
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/lit8 v4, v0, 0x3

    .line 126
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 127
    return v2

    .line 130
    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v1

    .line 131
    if-nez v3, :cond_2

    .line 132
    return v2

    .line 135
    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 136
    if-eqz v5, :cond_e

    if-ne v5, v6, :cond_3

    goto/16 :goto_7

    .line 141
    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    .line 142
    if-ne v6, v1, :cond_4

    .line 143
    return v2

    .line 146
    :cond_4
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    .line 147
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 149
    div-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_0

    .line 150
    :cond_5
    if-nez v4, :cond_6

    .line 152
    div-int/lit8 v2, v2, 0x4

    move v7, v2

    goto :goto_0

    .line 150
    :cond_6
    move v7, v2

    .line 155
    :goto_0
    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v0

    .line 157
    if-ne v3, v1, :cond_8

    .line 159
    if-ne v4, v1, :cond_7

    sget-object v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_1

    :cond_7
    sget-object v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    .line 160
    :goto_1
    mul-int/lit16 v8, v5, 0x2ee0

    div-int/2addr v8, v7

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x4

    .line 161
    const/16 v2, 0x180

    const/16 v10, 0x180

    goto :goto_5

    .line 164
    :cond_8
    const/16 v8, 0x480

    if-ne v4, v1, :cond_a

    .line 166
    if-ne v3, v6, :cond_9

    sget-object v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    goto :goto_2

    :cond_9
    sget-object v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    .line 167
    :goto_2
    nop

    .line 168
    goto :goto_3

    .line 171
    :cond_a
    sget-object v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    .line 172
    if-ne v3, v0, :cond_b

    const/16 v8, 0x240

    .line 173
    :cond_b
    if-ne v3, v0, :cond_c

    const v9, 0x11940

    goto :goto_4

    :cond_c
    :goto_3
    const v9, 0x23280

    :goto_4
    mul-int v9, v9, v5

    div-int/2addr v9, v7

    add-int/2addr v9, v2

    move v10, v8

    move v8, v9

    .line 177
    :goto_5
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    .line 178
    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_d

    const/4 p0, 0x1

    goto :goto_6

    :cond_d
    const/4 p0, 0x2

    .line 179
    :goto_6
    mul-int/lit16 v9, v5, 0x3e8

    move-object v3, p1

    move-object v5, v2

    move v6, v8

    move v8, p0

    invoke-direct/range {v3 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    .line 181
    return v0

    .line 138
    :cond_e
    :goto_7
    return v2
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0

    .line 201
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->version:I

    .line 202
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 203
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 204
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 205
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->channels:I

    .line 206
    iput p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    .line 207
    iput p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 208
    return-void
.end method
