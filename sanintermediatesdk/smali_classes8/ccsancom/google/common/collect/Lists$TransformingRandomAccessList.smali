.class Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;
.super Ljava/util/AbstractList;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end field

.field final function:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lccsancom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Lccsancom/google/common/base/Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 580
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    .local p1, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p2, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 581
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 582
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Function;

    iput-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lccsancom/google/common/base/Function;

    .line 583
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 587
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 588
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lccsancom/google/common/base/Function;

    iget-object v1, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 612
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    new-instance v0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList$1;

    iget-object v1, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList$1;-><init>(Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 617
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lccsancom/google/common/base/Function;

    iget-object v1, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 622
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;, "Lccsancom/google/common/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
