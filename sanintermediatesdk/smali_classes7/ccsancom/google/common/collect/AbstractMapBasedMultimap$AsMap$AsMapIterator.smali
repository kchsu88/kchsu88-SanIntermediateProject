.class Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 1
    .param p1, "this$1"    # Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 1365
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iget-object v0, p1, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1371
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1365
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1376
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1377
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 1378
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 3

    .line 1383
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 1384
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1385
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, v1, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v1

    iget-object v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lccsancom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 1386
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 1388
    return-void
.end method
