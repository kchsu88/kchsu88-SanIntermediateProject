.class final Lccsancom/google/common/collect/Sets$5;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Sets;->combinations(Ljava/util/Set;I)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$index:Lccsancom/google/common/collect/ImmutableMap;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(ILccsancom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 1543
    iput p1, p0, Lccsancom/google/common/collect/Sets$5;->val$size:I

    iput-object p2, p0, Lccsancom/google/common/collect/Sets$5;->val$index:Lccsancom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1546
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1547
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 1548
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    iget v3, p0, Lccsancom/google/common/collect/Sets$5;->val$size:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lccsancom/google/common/collect/Sets$5;->val$index:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1550
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1555
    new-instance v0, Lccsancom/google/common/collect/Sets$5$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Sets$5$1;-><init>(Lccsancom/google/common/collect/Sets$5;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1621
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$5;->val$index:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iget v1, p0, Lccsancom/google/common/collect/Sets$5;->val$size:I

    invoke-static {v0, v1}, Lccsancom/google/common/math/IntMath;->binomial(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sets.combinations("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/collect/Sets$5;->val$index:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/google/common/collect/Sets$5;->val$size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
