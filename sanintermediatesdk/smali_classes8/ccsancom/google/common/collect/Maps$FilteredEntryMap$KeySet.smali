.class Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Lccsancom/google/common/collect/Maps$KeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    .line 2783
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lccsancom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    .line 2784
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 2785
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2789
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lccsancom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    const/4 v0, 0x1

    return v0

    .line 2793
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2798
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lccsancom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1, p1}, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->removeAllKeys(Ljava/util/Map;Lccsancom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2803
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lccsancom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lccsancom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1, p1}, Lccsancom/google/common/collect/Maps$FilteredEntryMap;->retainAllKeys(Ljava/util/Map;Lccsancom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2809
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lccsancom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

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

    .line 2814
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lccsancom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
