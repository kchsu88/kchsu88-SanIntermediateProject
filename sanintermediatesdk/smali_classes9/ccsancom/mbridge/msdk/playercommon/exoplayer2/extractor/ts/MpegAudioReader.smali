.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private formatId:Ljava/lang/String;

.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

.field private final headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasFF:Z

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 65
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 66
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 67
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    .line 68
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private findHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 125
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 126
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 127
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 128
    nop

    :goto_0
    if-ge v1, v2, :cond_3

    .line 129
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 130
    :goto_1
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 131
    :goto_2
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 132
    if-eqz v4, :cond_2

    .line 133
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 135
    iput-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 136
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    .line 137
    const/4 p1, 0x2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 138
    iput v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 139
    return-void

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 143
    return-void
.end method

.method private readFrameRemainder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 7

    .line 207
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 208
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 209
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 210
    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge p1, v4, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 216
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    .line 217
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 218
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 219
    return-void
.end method

.method private readHeaderRemainder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 20

    .line 162
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 163
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 164
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v2, v1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 165
    if-ge v2, v3, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 171
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;)Z

    move-result v1

    .line 172
    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 174
    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 175
    iput v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 176
    return-void

    .line 179
    :cond_1
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    .line 180
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v1, :cond_2

    .line 181
    const-wide/32 v5, 0xf4240

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v7, v1

    mul-long v7, v7, v5

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v5, v1

    div-long/2addr v7, v5

    iput-wide v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 182
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget-object v10, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x1000

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v14, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->channels:I

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;

    iget v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v9 .. v19}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    .line 185
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 186
    iput-boolean v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 189
    :cond_2
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 190
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 191
    const/4 v1, 0x2

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 192
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    .line 92
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 101
    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->readFrameRemainder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    .line 98
    :pswitch_1
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 99
    goto :goto_1

    .line 95
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->findHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 96
    nop

    .line 102
    :goto_1
    goto :goto_0

    .line 105
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 80
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 81
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 83
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    .line 110
    return-void
.end method

.method public final packetStarted(JZ)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    .line 88
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 74
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 75
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 76
    return-void
.end method
