.class Lccsancom/google/common/graph/AbstractNetwork$2;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lccsancom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/AbstractNetwork;->connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Predicate<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/graph/AbstractNetwork;

.field final synthetic val$nodePresent:Ljava/lang/Object;

.field final synthetic val$nodeToCheck:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/AbstractNetwork;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/graph/AbstractNetwork;

    .line 181
    .local p0, "this":Lccsancom/google/common/graph/AbstractNetwork$2;, "Lccsancom/google/common/graph/AbstractNetwork$2;"
    iput-object p1, p0, Lccsancom/google/common/graph/AbstractNetwork$2;->this$0:Lccsancom/google/common/graph/AbstractNetwork;

    iput-object p2, p0, Lccsancom/google/common/graph/AbstractNetwork$2;->val$nodePresent:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/google/common/graph/AbstractNetwork$2;->val$nodeToCheck:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 184
    .local p0, "this":Lccsancom/google/common/graph/AbstractNetwork$2;, "Lccsancom/google/common/graph/AbstractNetwork$2;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/graph/AbstractNetwork$2;->this$0:Lccsancom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lccsancom/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/graph/AbstractNetwork$2;->val$nodePresent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/graph/AbstractNetwork$2;->val$nodeToCheck:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
