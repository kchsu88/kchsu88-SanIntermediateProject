.class Lccsancom/google/common/collect/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 655
    .local p0, "this":Lccsancom/google/common/collect/Lists$Partition;, "Lccsancom/google/common/collect/Lists$Partition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 656
    iput-object p1, p0, Lccsancom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    .line 657
    iput p2, p0, Lccsancom/google/common/collect/Lists$Partition;->size:I

    .line 658
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 651
    .local p0, "this":Lccsancom/google/common/collect/Lists$Partition;, "Lccsancom/google/common/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Lists$Partition;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/List;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lccsancom/google/common/collect/Lists$Partition;, "Lccsancom/google/common/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Lists$Partition;->size()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 663
    iget v0, p0, Lccsancom/google/common/collect/Lists$Partition;->size:I

    mul-int v1, p1, v0

    .line 664
    .local v1, "start":I
    add-int/2addr v0, v1

    iget-object v2, p0, Lccsancom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 665
    .local v0, "end":I
    iget-object v2, p0, Lccsancom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 675
    .local p0, "this":Lccsancom/google/common/collect/Lists$Partition;, "Lccsancom/google/common/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 3

    .line 670
    .local p0, "this":Lccsancom/google/common/collect/Lists$Partition;, "Lccsancom/google/common/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lccsancom/google/common/collect/Lists$Partition;->size:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lccsancom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v0

    return v0
.end method
