.class public final Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;,
        Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;
    }
.end annotation


# instance fields
.field private final resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

.field private final upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

.field private upstreamOpened:Z


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/upstream/DataSource;Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V
    .locals 0
    .param p1, "upstreamDataSource"    # Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "resolver"    # Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    .line 95
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    .line 96
    return-void
.end method


# virtual methods
.method public addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 100
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 102
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    .line 132
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 134
    :cond_0
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 2

    .line 119
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, "reportedUri":Lccsanandroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    invoke-interface {v1, v0}, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;->resolveReportedUri(Lccsanandroid/net/Uri;)Lccsanandroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public open(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 3
    .param p1, "dataSpec"    # Lccsancom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->resolver:Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;->resolveDataSpec(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 107
    .local v0, "resolvedDataSpec":Lccsancom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamOpened:Z

    .line 108
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->open(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v1

    return-wide v1
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/ResolvingDataSource;->upstreamDataSource:Lccsancom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
