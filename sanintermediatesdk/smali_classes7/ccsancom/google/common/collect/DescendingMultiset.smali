.class abstract Lccsancom/google/common/collect/DescendingMultiset;
.super Lccsancom/google/common/collect/ForwardingMultiset;
.source "DescendingMultiset.java"

# interfaces
.implements Lccsancom/google/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMultiset<",
        "TE;>;",
        "Lccsancom/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient elementSet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMultiset;-><init>()V

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

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingMultiset;->comparator:Ljava/util/Comparator;

    .line 42
    .local v0, "result":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/DescendingMultiset;->comparator:Ljava/util/Comparator;

    return-object v1

    .line 45
    :cond_0
    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/DescendingMultiset$1EntrySetImpl;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/DescendingMultiset$1EntrySetImpl;-><init>(Lccsancom/google/common/collect/DescendingMultiset;)V

    return-object v0
.end method

.method protected delegate()Lccsancom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingMultiset;->elementSet:Ljava/util/NavigableSet;

    .line 53
    .local v0, "result":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-direct {v1, p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lccsancom/google/common/collect/SortedMultiset;)V

    iput-object v1, p0, Lccsancom/google/common/collect/DescendingMultiset;->elementSet:Ljava/util/NavigableSet;

    return-object v1

    .line 56
    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingMultiset;->entrySet:Ljava/util/Set;

    .line 114
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->createEntrySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/DescendingMultiset;->entrySet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public firstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->lastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method abstract forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Multisets;->iteratorImpl(Lccsancom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->firstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->pollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->pollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "fromBoundType"    # Lccsancom/google/common/collect/BoundType;
    .param p4, "toBoundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            "TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 78
    invoke-interface {v0, p3, p4, p1, p2}, Lccsancom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 145
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/DescendingMultiset;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 155
    .local p0, "this":Lccsancom/google/common/collect/DescendingMultiset;, "Lccsancom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
