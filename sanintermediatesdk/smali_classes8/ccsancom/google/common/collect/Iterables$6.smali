.class final Lccsancom/google/common/collect/Iterables$6;
.super Lccsancom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    .line 867
    iput-object p1, p0, Lccsancom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lccsancom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lccsancom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 871
    check-cast v0, Ljava/util/List;

    .line 872
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lccsancom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 873
    .local v1, "toSkip":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 875
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "toSkip":I
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 877
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    iget v1, p0, Lccsancom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 884
    new-instance v1, Lccsancom/google/common/collect/Iterables$6$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/Iterables$6$1;-><init>(Lccsancom/google/common/collect/Iterables$6;Ljava/util/Iterator;)V

    return-object v1
.end method
