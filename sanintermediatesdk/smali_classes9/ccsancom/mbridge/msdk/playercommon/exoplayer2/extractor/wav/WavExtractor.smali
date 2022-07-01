.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    .line 66
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 67
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 82
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    if-nez p2, :cond_1

    .line 83
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    .line 84
    if-eqz p2, :cond_0

    .line 88
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->getBitrate()I

    move-result v3

    const v4, 0x8000

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->getNumChannels()I

    move-result v5

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    .line 90
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v6

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->getEncoding()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 88
    const-string v1, "audio/raw"

    invoke-static/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 92
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result p2

    if-nez p2, :cond_2

    .line 96
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeaderReader;->skipToData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;)V

    .line 97
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-interface {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 100
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const v0, 0x8000

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p2

    .line 101
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 102
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v1, p2

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 106
    :cond_3
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v1, v2

    .line 107
    if-lez v1, :cond_4

    .line 108
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v6

    .line 109
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v9, v1, p1

    .line 110
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int v10, p1, v9

    iput v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 111
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 114
    :cond_4
    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final release()V
    .locals 0

    .line 77
    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    .line 71
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 72
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/wav/WavHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
