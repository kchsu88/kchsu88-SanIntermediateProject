.class Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multimaps$MapMultimap$1;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    .line 1016
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;, "Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1021
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;, "Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;"
    iget v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->this$0:Lccsancom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    iget-object v1, v1, Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1026
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;, "Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->i:I

    .line 1030
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->this$0:Lccsancom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    iget-object v1, v1, Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1035
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;, "Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;"
    iget v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 1036
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->i:I

    .line 1037
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->this$0:Lccsancom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lccsancom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lccsancom/google/common/collect/Multimaps$MapMultimap$1;

    iget-object v1, v1, Lccsancom/google/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    return-void
.end method
