.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 50
    return-void
.end method


# virtual methods
.method public final consume(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 7

    .line 78
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 82
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 84
    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 85
    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 89
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 90
    const/16 v1, 0x49

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 91
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 97
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    .line 94
    return-void

    .line 101
    :cond_3
    :goto_1
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 103
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 104
    return-void
.end method

.method public final createTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 3

    .line 59
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 60
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 61
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 63
    return-void
.end method

.method public final packetFinished()V
    .locals 8

    .line 108
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v5, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    .line 113
    return-void

    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public final packetStarted(JZ)V
    .locals 0

    .line 67
    if-nez p3, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    .line 71
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleTimeUs:J

    .line 72
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    .line 73
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 74
    return-void
.end method

.method public final seek()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    .line 55
    return-void
.end method
