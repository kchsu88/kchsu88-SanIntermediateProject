.class Lccsancom/google/common/collect/AbstractBiMap$KeySet;
.super Lccsancom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ForwardingSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/AbstractBiMap;)V
    .locals 0

    .line 199
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lccsancom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/AbstractBiMap;Lccsancom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/AbstractBiMap;
    .param p2, "x1"    # Lccsancom/google/common/collect/AbstractBiMap$1;

    .line 199
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lccsancom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 207
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lccsancom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractBiMap;->clear()V

    .line 208
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 198
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 198
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lccsancom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lccsancom/google/common/collect/AbstractBiMap;->access$100(Lccsancom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lccsancom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 212
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lccsancom/google/common/collect/AbstractBiMap;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/AbstractBiMap;->access$200(Lccsancom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 221
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    .local p1, "keysToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    .local p0, "this":Lccsancom/google/common/collect/AbstractBiMap$KeySet;, "Lccsancom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    .local p1, "keysToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/AbstractBiMap$KeySet;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
