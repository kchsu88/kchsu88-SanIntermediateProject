.class Lccsancom/google/common/collect/Tables$TransformedTable$3;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Tables$TransformedTable;->columnMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/util/Map<",
        "TR;TV1;>;",
        "Ljava/util/Map<",
        "TR;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Tables$TransformedTable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Tables$TransformedTable;

    .line 427
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$3;, "Lccsancom/google/common/collect/Tables$TransformedTable$3;"
    iput-object p1, p0, Lccsancom/google/common/collect/Tables$TransformedTable$3;->this$0:Lccsancom/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 427
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$3;, "Lccsancom/google/common/collect/Tables$TransformedTable$3;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Tables$TransformedTable$3;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;TV1;>;)",
            "Ljava/util/Map<",
            "TR;TV2;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransformedTable$3;, "Lccsancom/google/common/collect/Tables$TransformedTable$3;"
    .local p1, "column":Ljava/util/Map;, "Ljava/util/Map<TR;TV1;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransformedTable$3;->this$0:Lccsancom/google/common/collect/Tables$TransformedTable;

    iget-object v0, v0, Lccsancom/google/common/collect/Tables$TransformedTable;->function:Lccsancom/google/common/base/Function;

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lccsancom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
