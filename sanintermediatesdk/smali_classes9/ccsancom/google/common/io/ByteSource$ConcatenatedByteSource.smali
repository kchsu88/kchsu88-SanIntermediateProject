.class final Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;
.super Lccsancom/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedByteSource"
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/io/ByteSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/io/ByteSource;",
            ">;)V"
        }
    .end annotation

    .line 669
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/io/ByteSource;>;"
    invoke-direct {p0}, Lccsancom/google/common/io/ByteSource;-><init>()V

    .line 670
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    .line 671
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/io/ByteSource;

    .line 681
    .local v1, "source":Lccsancom/google/common/io/ByteSource;
    invoke-virtual {v1}, Lccsancom/google/common/io/ByteSource;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    const/4 v0, 0x0

    return v0

    .line 684
    .end local v1    # "source":Lccsancom/google/common/io/ByteSource;
    :cond_0
    goto :goto_0

    .line 685
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    new-instance v0, Lccsancom/google/common/io/MultiInputStream;

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/io/MultiInputStream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    const-wide/16 v0, 0x0

    .line 720
    .local v0, "result":J
    iget-object v2, p0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/io/ByteSource;

    .line 721
    .local v3, "source":Lccsancom/google/common/io/ByteSource;
    invoke-virtual {v3}, Lccsancom/google/common/io/ByteSource;->size()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 722
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 728
    const-wide v4, 0x7fffffffffffffffL

    return-wide v4

    .line 730
    .end local v3    # "source":Lccsancom/google/common/io/ByteSource;
    :cond_0
    goto :goto_0

    .line 731
    :cond_1
    return-wide v0
.end method

.method public sizeIfKnown()Lccsancom/google/common/base/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 696
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    const-wide/16 v1, 0x0

    .line 699
    .local v1, "result":J
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/io/ByteSource;

    .line 700
    .local v3, "source":Lccsancom/google/common/io/ByteSource;
    invoke-virtual {v3}, Lccsancom/google/common/io/ByteSource;->sizeIfKnown()Lccsancom/google/common/base/Optional;

    move-result-object v4

    .line 701
    .local v4, "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 702
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 704
    :cond_1
    invoke-virtual {v4}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 705
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gez v7, :cond_2

    .line 711
    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0

    .line 713
    .end local v3    # "source":Lccsancom/google/common/io/ByteSource;
    .end local v4    # "sizeIfKnown":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/lang/Long;>;"
    :cond_2
    goto :goto_0

    .line 714
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteSource.concat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
