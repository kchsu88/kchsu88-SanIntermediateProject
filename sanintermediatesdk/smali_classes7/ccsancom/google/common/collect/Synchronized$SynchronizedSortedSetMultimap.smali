.class Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lccsancom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.source "Synchronized.java"

# interfaces
.implements Lccsancom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Synchronized$SynchronizedSetMultimap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 806
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/SortedSetMultimap;, "Lccsancom/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;Ljava/lang/Object;)V

    .line 807
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lccsancom/google/common/collect/SetMultimap;
    .locals 1

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lccsancom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 811
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/SortedSetMultimap;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 816
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 825
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 803
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 830
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 832
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 837
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 839
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
