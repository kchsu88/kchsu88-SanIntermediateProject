.class Lccsancom/google/common/collect/FluentIterable$3$1;
.super Lccsancom/google/common/collect/AbstractIndexedListIterator;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/FluentIterable$3;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIndexedListIterator<",
        "Ljava/util/Iterator<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/FluentIterable$3;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/FluentIterable$3;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/FluentIterable$3;
    .param p2, "size"    # I

    .line 296
    iput-object p1, p0, Lccsancom/google/common/collect/FluentIterable$3$1;->this$0:Lccsancom/google/common/collect/FluentIterable$3;

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/FluentIterable$3$1;->get(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Iterator;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lccsancom/google/common/collect/FluentIterable$3$1;->this$0:Lccsancom/google/common/collect/FluentIterable$3;

    iget-object v0, v0, Lccsancom/google/common/collect/FluentIterable$3;->val$inputs:[Ljava/lang/Iterable;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
