.class Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field final mapIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field final seen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/StandardTable;)V
    .locals 1

    .line 691
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeyIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    .line 694
    iget-object v0, p1, Lccsancom/google/common/collect/StandardTable;->factory:Lccsancom/google/common/base/Supplier;

    invoke-interface {v0}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    .line 695
    iget-object p1, p1, Lccsancom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    .line 696
    invoke-static {}, Lccsancom/google/common/collect/Iterators;->emptyIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/StandardTable;Lccsancom/google/common/collect/StandardTable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/StandardTable;
    .param p2, "x1"    # Lccsancom/google/common/collect/StandardTable$1;

    .line 691
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeyIterator;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;-><init>(Lccsancom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 701
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnKeyIterator;"
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 703
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->seen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 707
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->entryIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/common/collect/StandardTable$ColumnKeyIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
