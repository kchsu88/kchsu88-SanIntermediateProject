.class Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;
.super Lccsancom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/StandardTable$RowMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/StandardTable<",
        "TR;TC;TV;>.TableSet<",
        "Ljava/util/Map$Entry<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/StandardTable$RowMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/StandardTable$RowMap;)V
    .locals 2
    .param p1, "this$1"    # Lccsancom/google/common/collect/StandardTable$RowMap;

    .line 764
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$RowMap;

    iget-object v0, p1, Lccsancom/google/common/collect/StandardTable$RowMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/common/collect/StandardTable$TableSet;-><init>(Lccsancom/google/common/collect/StandardTable;Lccsancom/google/common/collect/StandardTable$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 784
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 785
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 786
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 787
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$RowMap;

    iget-object v2, v2, Lccsancom/google/common/collect/StandardTable$RowMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    iget-object v2, v2, Lccsancom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 788
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lccsancom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 786
    :goto_0
    return v1

    .line 790
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    .line 767
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable$RowMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 768
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;-><init>(Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;)V

    .line 767
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 795
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 796
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 797
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 798
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$RowMap;

    iget-object v2, v2, Lccsancom/google/common/collect/StandardTable$RowMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    iget-object v2, v2, Lccsancom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 799
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 797
    :goto_0
    return v1

    .line 801
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 779
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable$RowMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
