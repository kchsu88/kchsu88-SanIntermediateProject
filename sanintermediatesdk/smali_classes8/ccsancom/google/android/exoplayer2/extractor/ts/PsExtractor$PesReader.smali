.class final Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private seenFirstDts:Z

.field private timeUs:J

.field private final timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "pesPayloadReader"    # Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .param p2, "timestampAdjuster"    # Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 326
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 327
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    .line 328
    return-void
.end method

.method private parseHeader()V
    .locals 3

    .line 366
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 367
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    .line 368
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    .line 371
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 372
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    .line 373
    return-void
.end method

.method private parseHeaderExtension()V
    .locals 10

    .line 376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 377
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 379
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 380
    .local v3, "pts":J
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 381
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 382
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 383
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 384
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 385
    iget-boolean v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    .line 386
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 387
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 388
    .local v0, "dts":J
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 389
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 390
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 391
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 392
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 398
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 399
    iput-boolean v6, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 401
    .end local v0    # "dts":J
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 403
    .end local v3    # "pts":J
    :cond_1
    return-void
.end method


# virtual methods
.method public consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 4
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 350
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 351
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    .line 352
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 353
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 354
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    .line 355
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 356
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 358
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 359
    return-void
.end method

.method public seek()V
    .locals 1

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 339
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    .line 340
    return-void
.end method
