.class Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private final maxIndex:I

.field final synthetic this$0:Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    .line 123
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    .line 125
    invoke-virtual {p1}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->maxIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 123
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;"
    iget v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    iget v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    iget v1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->maxIndex:I

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->this$0:Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1

    .line 129
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->index:I

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
