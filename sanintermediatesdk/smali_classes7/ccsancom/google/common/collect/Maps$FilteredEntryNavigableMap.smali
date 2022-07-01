.class Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;
.super Lccsancom/google/common/collect/AbstractNavigableMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredEntryNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractNavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final entryPredicate:Lccsancom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final filteredDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final unfiltered:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Lccsancom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2927
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p2, "entryPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 2928
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    .line 2929
    iput-object p2, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    .line 2930
    new-instance v0, Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {v0, p1, p2}, Lccsancom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Predicate;)V

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    .line 2931
    return-void
.end method

.method static synthetic access$500(Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;)Lccsancom/google/common/base/Predicate;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;

    .line 2915
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;

    .line 2915
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 3006
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3007
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2935
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 2986
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2965
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3026
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lccsancom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2960
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3011
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2981
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3038
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lccsancom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 2975
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2940
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap$1;

    invoke-direct {v0, p0, p0}, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap$1;-><init>(Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3016
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3021
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lccsancom/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2991
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3001
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3002
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2996
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 2970
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3032
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    .line 3033
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    .line 3032
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lccsancom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3043
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lccsancom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
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

    .line 2955
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/Maps$FilteredMapValues;

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    iget-object v2, p0, Lccsancom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lccsancom/google/common/base/Predicate;

    invoke-direct {v0, p0, v1, v2}, Lccsancom/google/common/collect/Maps$FilteredMapValues;-><init>(Ljava/util/Map;Ljava/util/Map;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method
