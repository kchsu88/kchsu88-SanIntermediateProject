.class Lccsancom/google/common/collect/Multisets$2$1;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Multisets$2;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIterator<",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Multisets$2;

.field final synthetic val$iterator1:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multisets$2;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Multisets$2;

    .line 473
    iput-object p1, p0, Lccsancom/google/common/collect/Multisets$2$1;->this$0:Lccsancom/google/common/collect/Multisets$2;

    iput-object p2, p0, Lccsancom/google/common/collect/Multisets$2$1;->val$iterator1:Ljava/util/Iterator;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 476
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$2$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$2$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    .line 478
    .local v0, "entry1":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 479
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    iget-object v3, p0, Lccsancom/google/common/collect/Multisets$2$1;->this$0:Lccsancom/google/common/collect/Multisets$2;

    iget-object v3, v3, Lccsancom/google/common/collect/Multisets$2;->val$multiset2:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v3, v1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 480
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 481
    invoke-static {v1, v2}, Lccsancom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v3

    return-object v3

    .line 483
    .end local v0    # "entry1":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v2    # "count":I
    :cond_0
    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    return-object v0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 473
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$2$1;->computeNext()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
