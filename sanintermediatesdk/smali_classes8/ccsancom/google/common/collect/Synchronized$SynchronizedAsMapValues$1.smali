.class Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;
.super Lccsancom/google/common/collect/TransformedIterator;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TransformedIterator<",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    .line 1260
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;, "Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;"
    .local p2, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->this$0:Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1260
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;, "Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;"
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1263
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;, "Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;"
    .local p1, "from":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->this$0:Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    iget-object v0, v0, Lccsancom/google/common/collect/Synchronized$SynchronizedAsMapValues;->mutex:Ljava/lang/Object;

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
