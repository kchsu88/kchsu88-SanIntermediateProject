.class Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lccsancom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lccsancom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Synchronized$SynchronizedObject;",
        "Lccsancom/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keys:Lccsancom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 533
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 659
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Lccsancom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 663
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 622
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->clear()V

    .line 624
    monitor-exit v0

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 566
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 552
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 559
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multimap;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 518
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 649
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 653
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 679
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 680
    const/4 v0, 0x1

    return v0

    .line 682
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 689
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 545
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 633
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keys()Lccsancom/google/common/collect/Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lccsancom/google/common/collect/Multiset;

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->keys()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->multiset(Lccsancom/google/common/collect/Multiset;Ljava/lang/Object;)Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lccsancom/google/common/collect/Multiset;

    .line 673
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lccsancom/google/common/collect/Multiset;

    monitor-exit v0

    return-object v1

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 580
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Lccsancom/google/common/collect/Multimap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multimap;->putAll(Lccsancom/google/common/collect/Multimap;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 587
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 608
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 601
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 538
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 641
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 643
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 644
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
