.class Lccsancom/google/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
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


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 565
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    .line 566
    return-void
.end method

.method constructor <init>([III)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 568
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 569
    iput-object p1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    .line 570
    iput p2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .line 571
    iput p3, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    .line 572
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 593
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v3, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/common/primitives/Ints;->access$000([IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 641
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 642
    return v0

    .line 644
    :cond_0
    instance-of v1, p1, Lccsancom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v1, :cond_4

    .line 645
    move-object v1, p1

    check-cast v1, Lccsancom/google/common/primitives/Ints$IntArrayAsList;

    .line 646
    .local v1, "that":Lccsancom/google/common/primitives/Ints$IntArrayAsList;
    invoke-virtual {p0}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    .line 647
    .local v2, "size":I
    invoke-virtual {v1}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1

    .line 648
    return v4

    .line 650
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 651
    iget-object v5, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v6, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v6, v3

    aget v5, v5, v6

    iget-object v6, v1, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v7, v1, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v7, v3

    aget v6, v6, v7

    if-eq v5, v6, :cond_2

    .line 652
    return v4

    .line 650
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 655
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 657
    .end local v1    # "that":Lccsancom/google/common/primitives/Ints$IntArrayAsList;
    .end local v2    # "size":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "index"    # I

    .line 586
    invoke-virtual {p0}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 587
    iget-object v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 557
    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 662
    const/4 v0, 0x1

    .line 663
    .local v0, "result":I
    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 664
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v1

    invoke-static {v3}, Lccsancom/google/common/primitives/Ints;->hashCode(I)I

    move-result v3

    add-int v0, v2, v3

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 599
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v3, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/common/primitives/Ints;->access$000([IIII)I

    move-result v0

    .line 601
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 602
    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 605
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 611
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v3, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/common/primitives/Ints;->access$100([IIII)I

    move-result v0

    .line 613
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 614
    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    return v1

    .line 617
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Integer;

    .line 622
    invoke-virtual {p0}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 623
    iget-object v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int v2, v1, p1

    aget v2, v0, v2

    .line 625
    .local v2, "oldValue":I
    add-int/2addr v1, p1

    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 626
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 557
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 576
    iget v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
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

    .line 631
    invoke-virtual {p0}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 632
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lccsancom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 633
    if-ne p1, p2, :cond_0

    .line 634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 636
    :cond_0
    new-instance v1, Lccsancom/google/common/primitives/Ints$IntArrayAsList;

    iget-object v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int v4, v3, p1

    add-int/2addr v3, p2

    invoke-direct {v1, v2, v4, v3}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    return-object v1
.end method

.method toIntArray()[I
    .locals 3

    .line 680
    iget-object v0, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 672
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    iget v1, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 674
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/common/primitives/Ints$IntArrayAsList;->array:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
