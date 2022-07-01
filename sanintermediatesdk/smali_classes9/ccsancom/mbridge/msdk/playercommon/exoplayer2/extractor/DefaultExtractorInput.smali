.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE_SIZE:I = 0x1000


# instance fields
.field private final dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;JJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 51
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 52
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    .line 53
    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 54
    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    .line 55
    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4

    .line 276
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 277
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 279
    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 3

    .line 183
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 184
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 185
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 189
    :cond_0
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    .line 261
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 262
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 263
    return p2

    .line 265
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 267
    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private readFromPeekBuffer([BII)I
    .locals 2

    .line 212
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    return v1

    .line 215
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 216
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 218
    return p3
.end method

.method private skipFromPeekBuffer(I)I
    .locals 1

    .line 198
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 199
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 200
    return p1
.end method

.method private updatePeekBuffer(I)V
    .locals 5

    .line 227
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 229
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 230
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 231
    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    new-array v3, v3, [B

    goto :goto_0

    .line 230
    :cond_0
    move-object v3, v2

    .line 233
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 235
    return-void
.end method


# virtual methods
.method public final advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 149
    return-void
.end method

.method public final advancePeekPosition(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 133
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v0

    .line 134
    :cond_0
    if-ge v5, p1, :cond_1

    .line 135
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    .line 137
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    .line 138
    const/4 p1, 0x0

    return p1

    .line 141
    :cond_1
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 142
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 143
    const/4 p1, 0x1

    return p1
.end method

.method public final getLength()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public final getPeekPosition()J
    .locals 4

    .line 158
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getPosition()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public final peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 127
    return-void
.end method

.method public final peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    .line 117
    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    const/4 p1, 0x1

    return p1
.end method

.method public final read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 63
    :cond_0
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 64
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 82
    return-void
.end method

.method public final readFully([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    .line 71
    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    .line 72
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 75
    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final resetPeekPosition()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 154
    return-void
.end method

.method public final setRetryPosition(JLjava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 174
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 175
    throw p3
.end method

.method public final skip(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 89
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 91
    :cond_0
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 92
    return v0
.end method

.method public final skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 111
    return-void
.end method

.method public final skipFully(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    .line 99
    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 101
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    .line 102
    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 105
    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
