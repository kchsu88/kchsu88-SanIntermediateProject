.class Lccsancom/google/common/collect/ArrayTable$Row;
.super Lccsancom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ArrayTable$ArrayMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field final rowIndex:I

.field final synthetic this$0:Lccsancom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ArrayTable;I)V
    .locals 1
    .param p2, "rowIndex"    # I

    .line 670
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Row;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iput-object p1, p0, Lccsancom/google/common/collect/ArrayTable$Row;->this$0:Lccsancom/google/common/collect/ArrayTable;

    .line 671
    invoke-static {p1}, Lccsancom/google/common/collect/ArrayTable;->access$600(Lccsancom/google/common/collect/ArrayTable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ArrayTable$1;)V

    .line 672
    iput p2, p0, Lccsancom/google/common/collect/ArrayTable$Row;->rowIndex:I

    .line 673
    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .line 677
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Row;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    const-string v0, "Column"

    return-object v0
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 682
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Row;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lccsancom/google/common/collect/ArrayTable$Row;->this$0:Lccsancom/google/common/collect/ArrayTable;

    iget v1, p0, Lccsancom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-virtual {v0, v1, p1}, Lccsancom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Row;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/ArrayTable$Row;->this$0:Lccsancom/google/common/collect/ArrayTable;

    iget v1, p0, Lccsancom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
