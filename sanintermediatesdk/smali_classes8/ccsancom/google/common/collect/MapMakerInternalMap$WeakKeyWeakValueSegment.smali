.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyWeakValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2165
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    .line 2158
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2159
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 2166
    return-void
.end method

.method static synthetic access$400(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .line 2156
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    .line 2156
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2156
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2186
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    return-object v0
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 2175
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 2180
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2192
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->getValueReference()Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 2222
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2223
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 2216
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2217
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2218
    return-void
.end method

.method public newWeakValueReferenceForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2198
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2156
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->self()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2170
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 2205
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "valueReference":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object v0

    .line 2207
    .local v0, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    move-object v1, p2

    .line 2209
    .local v1, "newValueReference":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;>;"
    invoke-static {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->access$700(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v2

    .line 2210
    .local v2, "previous":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;>;"
    invoke-static {v0, v1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->access$702(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 2211
    invoke-interface {v2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 2212
    return-void
.end method
