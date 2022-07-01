.class Lccsancom/google/common/primitives/ImmutableIntArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableIntArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/primitives/ImmutableIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lccsancom/google/common/primitives/ImmutableIntArray;


# direct methods
.method private constructor <init>(Lccsancom/google/common/primitives/ImmutableIntArray;)V
    .locals 0
    .param p1, "parent"    # Lccsancom/google/common/primitives/ImmutableIntArray;

    .line 420
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 421
    iput-object p1, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/primitives/ImmutableIntArray;Lccsancom/google/common/primitives/ImmutableIntArray$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/primitives/ImmutableIntArray;
    .param p2, "x1"    # Lccsancom/google/common/primitives/ImmutableIntArray$1;

    .line 417
    invoke-direct {p0, p1}, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;-><init>(Lccsancom/google/common/primitives/ImmutableIntArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 438
    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 458
    instance-of v0, p1, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;

    if-eqz v0, :cond_0

    .line 459
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;

    .line 460
    .local v0, "that":Lccsancom/google/common/primitives/ImmutableIntArray$AsList;
    iget-object v1, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    iget-object v2, v0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v1, v2}, Lccsancom/google/common/primitives/ImmutableIntArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 463
    .end local v0    # "that":Lccsancom/google/common/primitives/ImmutableIntArray$AsList;
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 464
    return v1

    .line 466
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 467
    .local v0, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 468
    return v1

    .line 470
    :cond_2
    iget-object v2, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-static {v2}, Lccsancom/google/common/primitives/ImmutableIntArray;->access$100(Lccsancom/google/common/primitives/ImmutableIntArray;)I

    move-result v2

    .line 472
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 473
    .local v4, "element":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-static {v5}, Lccsancom/google/common/primitives/ImmutableIntArray;->access$000(Lccsancom/google/common/primitives/ImmutableIntArray;)[I

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget v2, v5, v2

    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_3

    move v2, v6

    goto :goto_1

    .line 476
    .end local v4    # "element":Ljava/lang/Object;
    :cond_3
    move v2, v6

    goto :goto_0

    .line 474
    .end local v6    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "element":Ljava/lang/Object;
    :cond_4
    :goto_1
    return v1

    .line 477
    .end local v4    # "element":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "index"    # I

    .line 433
    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v0, p1}, Lccsancom/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 483
    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v0}, Lccsancom/google/common/primitives/ImmutableIntArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 443
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/primitives/ImmutableIntArray;->indexOf(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 448
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/primitives/ImmutableIntArray;->lastIndexOf(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 428
    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v0}, Lccsancom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/primitives/ImmutableIntArray;->subArray(II)Lccsancom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/primitives/ImmutableIntArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lccsancom/google/common/primitives/ImmutableIntArray$AsList;->parent:Lccsancom/google/common/primitives/ImmutableIntArray;

    invoke-virtual {v0}, Lccsancom/google/common/primitives/ImmutableIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
