.class public abstract Lccsancom/google/common/collect/ForwardingSortedSetMultimap;
.super Lccsancom/google/common/collect/ForwardingSetMultimap;
.source "ForwardingSortedSetMultimap.java"

# interfaces
.implements Lccsancom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingSetMultimap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingSetMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lccsancom/google/common/collect/SetMultimap;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lccsancom/google/common/collect/SortedSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedSetMultimap;, "Lccsancom/google/common/collect/ForwardingSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
