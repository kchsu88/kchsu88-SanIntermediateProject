.class Lccsancom/google/common/collect/Tables$TransformedTable$1;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Tables$TransformedTable;->cellFunction()Lccsancom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Lccsancom/google/common/collect/Table$Cell<",
        "TR;TC;TV1;>;",
        "Lccsancom/google/common/collect/Table$Cell<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Tables$TransformedTable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Tables$TransformedTable;

    .line 383
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$1;, "Lccsancom/google/common/collect/Tables$TransformedTable$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/Tables$TransformedTable$1;->this$0:Lccsancom/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/google/common/collect/Table$Cell;)Lccsancom/google/common/collect/Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV1;>;)",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$1;, "Lccsancom/google/common/collect/Tables$TransformedTable$1;"
    .local p1, "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<TR;TC;TV1;>;"
    nop

    .line 387
    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Tables$TransformedTable$1;->this$0:Lccsancom/google/common/collect/Tables$TransformedTable;

    iget-object v2, v2, Lccsancom/google/common/collect/Tables$TransformedTable;->function:Lccsancom/google/common/base/Function;

    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 386
    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 383
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$1;, "Lccsancom/google/common/collect/Tables$TransformedTable$1;"
    check-cast p1, Lccsancom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Tables$TransformedTable$1;->apply(Lccsancom/google/common/collect/Table$Cell;)Lccsancom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1
.end method
