.class final Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstPostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/google/common/graph/Traverser$TreeTraverser<",
            "TN;>.DepthFirstPostOrderIterator.NodeAndChildren;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 619
    .local p0, "this":Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPostOrderIterator;"
    .local p2, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->this$0:Lccsancom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    .line 617
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    .line 620
    new-instance v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;-><init>(Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 621
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 625
    .local p0, "this":Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPostOrderIterator;"
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    .line 627
    .local v0, "top":Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPostOrderIterator.NodeAndChildren;"
    iget-object v1, v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->childIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->childIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 629
    .local v1, "child":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->withChildren(Ljava/lang/Object;)Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 630
    .end local v1    # "child":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 631
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 632
    iget-object v1, v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->node:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;->node:Ljava/lang/Object;

    return-object v1

    .line 636
    .end local v0    # "top":Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPostOrderIterator.NodeAndChildren;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method withChildren(Ljava/lang/Object;)Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lccsancom/google/common/graph/Traverser$TreeTraverser<",
            "TN;>.DepthFirstPostOrderIterator.NodeAndChildren;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPostOrderIterator;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;

    iget-object v1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;->this$0:Lccsancom/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v1}, Lccsancom/google/common/graph/Traverser$TreeTraverser;->access$200(Lccsancom/google/common/graph/Traverser$TreeTraverser;)Lccsancom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator$NodeAndChildren;-><init>(Lccsancom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
