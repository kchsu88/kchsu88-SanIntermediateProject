.class final Lccsancom/google/common/collect/Iterators$6;
.super Lccsancom/google/common/collect/TransformedIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TransformedIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lccsancom/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)V
    .locals 0

    .line 783
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TF;>;"
    iput-object p2, p0, Lccsancom/google/common/collect/Iterators$6;->val$function:Lccsancom/google/common/base/Function;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 786
    .local p1, "from":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lccsancom/google/common/collect/Iterators$6;->val$function:Lccsancom/google/common/base/Function;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
