.class final Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NodeAndSuccessors"
.end annotation


# instance fields
.field final node:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final successorIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 0
    .param p1    # Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 476
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator.NodeAndSuccessors;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    .local p3, "successors":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->this$1:Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p2, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    .line 478
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    .line 479
    return-void
.end method
