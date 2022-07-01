.class Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;
.super Lccsancom/google/common/collect/Synchronized$SynchronizedSet;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Synchronized$SynchronizedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 251
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, "delegate":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 252
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 249
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 249
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .line 249
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
