.class final Lccsancom/google/common/collect/Iterators$8;
.super Lccsancom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Iterators;->consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lccsancom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lccsancom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 953
    iget-object v0, p0, Lccsancom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lccsancom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 959
    .local v0, "next":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lccsancom/google/common/collect/Iterators$8;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 960
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 965
    const-string v0, "Iterators.consumingIterator(...)"

    return-object v0
.end method
