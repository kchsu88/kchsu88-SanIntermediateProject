.class final Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;
.super Lccsancom/google/common/collect/TreeRangeSet;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubRangeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TreeRangeSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final restriction:Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeSet;Lccsancom/google/common/collect/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 867
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p2, "restriction":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    .line 868
    new-instance v0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 870
    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v1

    iget-object p1, p1, Lccsancom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/Range;Ljava/util/NavigableMap;Lccsancom/google/common/collect/TreeRangeSet$1;)V

    .line 868
    invoke-direct {p0, v0, v2}, Lccsancom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lccsancom/google/common/collect/TreeRangeSet$1;)V

    .line 871
    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    .line 872
    return-void
.end method


# virtual methods
.method public add(Lccsancom/google/common/collect/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 895
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "rangeToAdd":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    .line 896
    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    .line 895
    const-string v2, "Cannot add range %s to subRangeSet(%s)"

    invoke-static {v0, v2, p1, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    invoke-super {p0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->add(Lccsancom/google/common/collect/Range;)V

    .line 901
    return-void
.end method

.method public clear()V
    .locals 2

    .line 917
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/TreeRangeSet;->remove(Lccsancom/google/common/collect/Range;)V

    .line 918
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 912
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public encloses(Lccsancom/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 876
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->access$600(Lccsancom/google/common/collect/TreeRangeSet;Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 878
    .local v0, "enclosing":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, v2}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 880
    .end local v0    # "enclosing":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    :cond_1
    return v1
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 886
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 887
    return-object v1

    .line 889
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 890
    .local v0, "result":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public remove(Lccsancom/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 905
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "rangeToRemove":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lccsancom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/TreeRangeSet;->remove(Lccsancom/google/common/collect/Range;)V

    .line 908
    :cond_0
    return-void
.end method

.method public subRangeSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 922
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;, "Lccsancom/google/common/collect/TreeRangeSet<TC;>.SubRangeSet;"
    .local p1, "view":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    return-object p0

    .line 924
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    new-instance v0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lccsancom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lccsancom/google/common/collect/TreeRangeSet;Lccsancom/google/common/collect/Range;)V

    return-object v0

    .line 927
    :cond_1
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->of()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method
