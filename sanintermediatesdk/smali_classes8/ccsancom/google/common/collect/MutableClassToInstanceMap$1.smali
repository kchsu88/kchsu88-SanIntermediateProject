.class final Lccsancom/google/common/collect/MutableClassToInstanceMap$1;
.super Lccsancom/google/common/collect/ForwardingMapEntry;
.source "MutableClassToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/MutableClassToInstanceMap;->checkedEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ForwardingMapEntry<",
        "Ljava/lang/Class<",
        "+TB;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lccsancom/google/common/collect/MutableClassToInstanceMap$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lccsancom/google/common/collect/MutableClassToInstanceMap$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TB;"
        }
    .end annotation

    .line 84
    .local p1, "value":Ljava/lang/Object;, "TB;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap$1;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lccsancom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
