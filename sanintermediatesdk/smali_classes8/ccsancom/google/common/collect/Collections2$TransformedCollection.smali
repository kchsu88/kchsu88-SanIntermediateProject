.class Lccsancom/google/common/collect/Collections2$TransformedCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final fromCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
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
.method constructor <init>(Ljava/util/Collection;Lccsancom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TF;>;",
            "Lccsancom/google/common/base/Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lccsancom/google/common/collect/Collections2$TransformedCollection;, "Lccsancom/google/common/collect/Collections2$TransformedCollection<TF;TT;>;"
    .local p1, "fromCollection":Ljava/util/Collection;, "Ljava/util/Collection<TF;>;"
    .local p2, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 263
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    .line 264
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Function;

    iput-object v0, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->function:Lccsancom/google/common/base/Function;

    .line 265
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 269
    .local p0, "this":Lccsancom/google/common/collect/Collections2$TransformedCollection;, "Lccsancom/google/common/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 270
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 274
    .local p0, "this":Lccsancom/google/common/collect/Collections2$TransformedCollection;, "Lccsancom/google/common/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lccsancom/google/common/collect/Collections2$TransformedCollection;, "Lccsancom/google/common/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->function:Lccsancom/google/common/base/Function;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 284
    .local p0, "this":Lccsancom/google/common/collect/Collections2$TransformedCollection;, "Lccsancom/google/common/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
