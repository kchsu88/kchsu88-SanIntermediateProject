.class final Lccsancom/google/common/collect/Multisets$4;
.super Lccsancom/google/common/collect/Multisets$ViewMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Multisets;->difference(Lccsancom/google/common/collect/Multiset;Lccsancom/google/common/collect/Multiset;)Lccsancom/google/common/collect/Multiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Multisets$ViewMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$multiset1:Lccsancom/google/common/collect/Multiset;

.field final synthetic val$multiset2:Lccsancom/google/common/collect/Multiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multiset;Lccsancom/google/common/collect/Multiset;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lccsancom/google/common/collect/Multisets$4;->val$multiset1:Lccsancom/google/common/collect/Multiset;

    iput-object p2, p0, Lccsancom/google/common/collect/Multisets$4;->val$multiset2:Lccsancom/google/common/collect/Multiset;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Multisets$ViewMultiset;-><init>(Lccsancom/google/common/collect/Multisets$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 590
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$4;->val$multiset1:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 591
    .local v0, "count1":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lccsancom/google/common/collect/Multisets$4;->val$multiset2:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v2, p1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method distinctElements()I
    .locals 1

    .line 638
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$4;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$4;->val$multiset1:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 602
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lccsancom/google/common/collect/Multisets$4$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/Multisets$4$1;-><init>(Lccsancom/google/common/collect/Multisets$4;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$4;->val$multiset1:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 620
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lccsancom/google/common/collect/Multisets$4$2;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/Multisets$4$2;-><init>(Lccsancom/google/common/collect/Multisets$4;Ljava/util/Iterator;)V

    return-object v1
.end method
