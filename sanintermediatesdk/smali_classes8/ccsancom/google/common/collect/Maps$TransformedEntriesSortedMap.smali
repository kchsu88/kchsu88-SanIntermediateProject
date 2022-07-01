.class Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;
.super Lccsancom/google/common/collect/Maps$TransformedEntriesMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedEntriesSortedMap"
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
        "Lccsancom/google/common/collect/Maps$TransformedEntriesMap<",
        "TK;TV1;TV2;>;",
        "Ljava/util/SortedMap<",
        "TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lccsancom/google/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1950
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p2, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lccsancom/google/common/collect/Maps$EntryTransformer;)V

    .line 1951
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1955
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1960
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fromMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV1;>;"
        }
    .end annotation

    .line 1945
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1965
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1970
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1975
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1980
    .local p0, "this":Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;, "Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$TransformedEntriesSortedMap;->transformer:Lccsancom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
