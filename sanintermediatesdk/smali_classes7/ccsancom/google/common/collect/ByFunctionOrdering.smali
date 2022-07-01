.class final Lccsancom/google/common/collect/ByFunctionOrdering;
.super Lccsancom/google/common/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Ordering<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Lccsancom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Function;Lccsancom/google/common/collect/Ordering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Function<",
            "TF;+TT;>;",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TF;+TT;>;"
    .local p2, "ordering":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/Ordering;-><init>()V

    .line 37
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Function;

    iput-object v0, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    .line 38
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Ordering;

    iput-object v0, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->ordering:Lccsancom/google/common/collect/Ordering;

    .line 39
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .line 43
    .local p0, "this":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TF;"
    .local p2, "right":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->ordering:Lccsancom/google/common/collect/Ordering;

    iget-object v1, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    invoke-interface {v1, p1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    invoke-interface {v2, p2}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 48
    .local p0, "this":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 49
    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lccsancom/google/common/collect/ByFunctionOrdering;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    move-object v1, p1

    check-cast v1, Lccsancom/google/common/collect/ByFunctionOrdering;

    .line 53
    .local v1, "that":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<**>;"
    iget-object v3, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    iget-object v4, v1, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    invoke-interface {v3, v4}, Lccsancom/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->ordering:Lccsancom/google/common/collect/Ordering;

    iget-object v4, v1, Lccsancom/google/common/collect/ByFunctionOrdering;->ordering:Lccsancom/google/common/collect/Ordering;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 55
    .end local v1    # "that":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<**>;"
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 60
    .local p0, "this":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->ordering:Lccsancom/google/common/collect/Ordering;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    .local p0, "this":Lccsancom/google/common/collect/ByFunctionOrdering;, "Lccsancom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->ordering:Lccsancom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/collect/ByFunctionOrdering;->function:Lccsancom/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
