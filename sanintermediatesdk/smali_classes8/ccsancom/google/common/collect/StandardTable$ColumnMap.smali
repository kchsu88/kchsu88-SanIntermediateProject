.class Lccsancom/google/common/collect/StandardTable$ColumnMap;
.super Lccsancom/google/common/collect/Maps$ViewCachingAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;,
        Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$ViewCachingAbstractMap<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/StandardTable;)V
    .locals 0

    .line 815
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/StandardTable;Lccsancom/google/common/collect/StandardTable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/StandardTable;
    .param p2, "x1"    # Lccsancom/google/common/collect/StandardTable$1;

    .line 815
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/StandardTable$ColumnMap;-><init>(Lccsancom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 826
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    .line 836
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;-><init>(Lccsancom/google/common/collect/StandardTable$ColumnMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 846
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;-><init>(Lccsancom/google/common/collect/StandardTable$ColumnMap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 814
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/StandardTable$ColumnMap;->get(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 841
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lccsancom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 814
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/StandardTable$ColumnMap;->remove(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 831
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/StandardTable;->access$900(Lccsancom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
