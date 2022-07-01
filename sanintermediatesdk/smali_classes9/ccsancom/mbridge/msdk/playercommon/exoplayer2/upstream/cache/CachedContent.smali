.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# static fields
.field private static final VERSION_MAX:I = 0x7fffffff

.field private static final VERSION_METADATA_INTRODUCED:I = 0x2


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private locked:Z

.field private metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 76
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 77
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 78
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 79
    return-void
.end method

.method public static readFromStream(ILjava/io/DataInputStream;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;)V

    .line 57
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    .line 59
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 60
    invoke-static {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataInternal;->setContentLength(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;J)V

    .line 61
    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->applyMetadataMutations(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->readFromStream(Ljava/io/DataInputStream;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p0

    iput-object p0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 65
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final addSpan(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public final applyMetadataMutations(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 105
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->copyWithMutationsApplied(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 106
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 241
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 242
    return v0

    .line 244
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;

    .line 248
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->id:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->id:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 250
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 251
    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 245
    :cond_3
    :goto_1
    return v1
.end method

.method public final getCachedBytesLength(JJ)J
    .locals 10

    .line 154
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->isHoleSpan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->isOpenEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-wide p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    :goto_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    .line 159
    :cond_1
    add-long v1, p1, p3

    .line 160
    iget-wide v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v3, v5

    .line 161
    cmp-long v5, v3, v1

    if-gez v5, :cond_4

    .line 162
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 163
    iget-wide v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    cmp-long v8, v6, v3

    if-lez v8, :cond_2

    .line 165
    goto :goto_2

    .line 169
    :cond_2
    iget-wide v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v8, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 170
    cmp-long v5, v3, v1

    if-ltz v5, :cond_3

    .line 172
    goto :goto_2

    .line 174
    :cond_3
    goto :goto_1

    .line 176
    :cond_4
    :goto_2
    sub-long/2addr v3, p1

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getMetadata()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    return-object v0
.end method

.method public final getSpan(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 6

    .line 134
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 136
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    .line 137
    return-object v1

    .line 139
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 140
    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-wide v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v2, p1

    invoke-static {v1, p1, p2, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    .line 140
    :goto_0
    return-object p1
.end method

.method public final getSpans()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 234
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->headerHashCode(I)I

    move-result v0

    .line 235
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    return v0
.end method

.method public final headerHashCode(I)I
    .locals 5

    .line 221
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 222
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 224
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataInternal;->getContentLength(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v1

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    const/16 p1, 0x20

    ushr-long v3, v1, p1

    xor-long/2addr v1, v3

    long-to-int p1, v1

    add-int/2addr v0, p1

    .line 226
    goto :goto_0

    .line 227
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    .line 229
    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->locked:Z

    return v0
.end method

.method public final removeSpan(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 211
    const/4 p1, 0x1

    return p1

    .line 213
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setLocked(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->locked:Z

    .line 117
    return-void
.end method

.method public final touch(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 191
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->copyWithUpdatedLastAccessTime(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 193
    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 199
    return-object v0

    .line 194
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renaming of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final writeToStream(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContent;->metadata:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/DefaultContentMetadata;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 91
    return-void
.end method
