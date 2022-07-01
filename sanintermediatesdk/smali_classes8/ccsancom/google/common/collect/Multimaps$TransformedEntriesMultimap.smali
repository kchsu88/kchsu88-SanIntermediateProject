.class Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.super Lccsancom/google/common/collect/AbstractMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedEntriesMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractMultimap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final fromMultimap:Lccsancom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1342
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "fromMultimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV1;>;"
    .local p2, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMultimap;-><init>()V

    .line 1343
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multimap;

    iput-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    .line 1344
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Maps$EntryTransformer;

    iput-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    .line 1345
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1370
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->clear()V

    .line 1371
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1375
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV2;>;>;"
        }
    .end annotation

    .line 1358
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    .line 1359
    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;-><init>(Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V

    .line 1358
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lccsancom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1380
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    new-instance v0, Lccsancom/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/AbstractMultimap$Entries;-><init>(Lccsancom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1401
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeys()Lccsancom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 1406
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->keys()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1448
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    .line 1449
    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->asEntryToValueFunction(Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/base/Function;

    move-result-object v1

    .line 1448
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lccsancom/google/common/base/Function;)Ljava/util/Collection;

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
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1385
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    .line 1386
    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->asEntryToEntryFunction(Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/base/Function;

    move-result-object v1

    .line 1385
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1391
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1396
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    .line 1411
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lccsancom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV2;>;)Z"
        }
    .end annotation

    .line 1421
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)Z"
        }
    .end annotation

    .line 1416
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1427
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1433
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1438
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 1443
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1348
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;, "Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV1;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Maps;->asValueToValueFunction(Lccsancom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lccsancom/google/common/base/Function;

    move-result-object v0

    .line 1349
    .local v0, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV1;TV2;>;"
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1350
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Lccsancom/google/common/collect/Lists;->transform(Ljava/util/List;Lccsancom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1352
    :cond_0
    invoke-static {p2, v0}, Lccsancom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lccsancom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
