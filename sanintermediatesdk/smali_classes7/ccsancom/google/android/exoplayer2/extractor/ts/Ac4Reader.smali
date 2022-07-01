.class public final Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lccsancom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private hasCRC:Z

.field private final headerScratchBits:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

.field private final headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

.field private output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    .line 85
    new-instance v1, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 87
    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 88
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 89
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 90
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 91
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private continueRead(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2
    .param p1, "source"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .line 171
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    .local v0, "bytesToRead":I
    iget v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 173
    iget v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 174
    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseHeader()V
    .locals 5
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 204
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/audio/Ac4Util;->parseAc4SyncframeInfo(Lccsancom/google/android/exoplayer2/util/ParsableBitArray;)Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 205
    .local v0, "frameInfo":Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lccsancom/google/android/exoplayer2/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_0

    iget v1, v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lccsancom/google/android/exoplayer2/Format;

    iget v3, v3, Lccsancom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lccsancom/google/android/exoplayer2/Format;

    iget v3, v3, Lccsancom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lccsancom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    :cond_0
    new-instance v1, Lccsancom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v3}, Lccsancom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 213
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 214
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 215
    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/Format$Builder;->build()Lccsancom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 217
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->format(Lccsancom/google/android/exoplayer2/Format;)V

    .line 219
    :cond_1
    iget v1, v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    .line 222
    const-wide/32 v1, 0xf4240

    iget v3, v0, Lccsancom/google/android/exoplayer2/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v3, v3

    mul-long v3, v3, v1

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lccsancom/google/android/exoplayer2/Format;

    iget v1, v1, Lccsancom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v1, v1

    div-long/2addr v3, v1

    iput-wide v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    .line 223
    return-void
.end method

.method private skipToNextSync(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 185
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 186
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 188
    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 191
    .local v0, "secondByte":I
    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 192
    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_3

    goto :goto_2

    .line 196
    .end local v0    # "secondByte":I
    :cond_3
    goto :goto_0

    .line 193
    .restart local v0    # "secondByte":I
    :cond_4
    :goto_2
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 194
    return v3

    .line 197
    .end local v0    # "secondByte":I
    :cond_6
    return v1
.end method


# virtual methods
.method public consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 10
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 119
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    .line 121
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 151
    goto :goto_0

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 140
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 141
    iget v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 142
    iget v7, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v7, :cond_0

    .line 143
    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 144
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 145
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 147
    :cond_1
    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 131
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->continueRead(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->parseHeader()V

    .line 133
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 134
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v2, v3}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 135
    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->skipToNextSync(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 125
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/16 v4, -0x54

    aput-byte v4, v3, v2

    .line 126
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-boolean v3, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x41

    goto :goto_1

    :cond_2
    const/16 v3, 0x40

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 127
    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    .line 154
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTracks(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 105
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Lccsancom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 108
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .line 159
    return-void
.end method

.method public packetStarted(JI)V
    .locals 3
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 112
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 113
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 115
    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 97
    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 98
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 99
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 100
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 101
    return-void
.end method
