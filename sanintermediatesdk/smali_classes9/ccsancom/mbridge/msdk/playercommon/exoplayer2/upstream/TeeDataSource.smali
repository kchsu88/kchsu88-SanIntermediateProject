.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# instance fields
.field private bytesRemaining:J

.field private final dataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

.field private dataSinkNeedsClosing:Z

.field private final upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 40
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    .line 41
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    if-eqz v1, :cond_0

    .line 92
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->close()V

    .line 96
    :cond_0
    return-void

    .line 91
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    if-eqz v2, :cond_1

    .line 92
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->close()V

    .line 95
    :cond_1
    throw v1
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v2

    iput-wide v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    .line 46
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 47
    return-wide v4

    .line 49
    :cond_0
    iget-wide v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 51
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v8, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    iget-wide v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    iget-object v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->flags:I

    move-object v7, v2

    move/from16 v16, v1

    invoke-direct/range {v7 .. v16}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;-><init>(Lccsanandroid/net/Uri;JJJLjava/lang/String;I)V

    move-object v1, v2

    .line 60
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSinkNeedsClosing:Z

    .line 61
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)V

    .line 62
    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    return-wide v1
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 68
    const/4 p1, -0x1

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->upstream:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p3

    .line 71
    if-lez p3, :cond_1

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->dataSink:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;->write([BII)V

    .line 74
    iget-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 75
    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TeeDataSource;->bytesRemaining:J

    .line 78
    :cond_1
    return p3
.end method
