.class final Lccsancom/google/common/graph/ImmutableNetwork$3;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/ImmutableNetwork;->adjacentNodeFn(Lccsancom/google/common/graph/Network;Ljava/lang/Object;)Lccsancom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TE;TN;>;"
    }
.end annotation


# instance fields
.field final synthetic val$network:Lccsancom/google/common/graph/Network;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Network;Ljava/lang/Object;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lccsancom/google/common/graph/ImmutableNetwork$3;->val$network:Lccsancom/google/common/graph/Network;

    iput-object p2, p0, Lccsancom/google/common/graph/ImmutableNetwork$3;->val$node:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 137
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/graph/ImmutableNetwork$3;->val$network:Lccsancom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/graph/ImmutableNetwork$3;->val$node:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
