.class final Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;
.super Lccsancom/google/common/collect/Maps$DescendingMap;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$DescendingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractNavigableMap;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/AbstractNavigableMap;)V
    .locals 0

    .line 167
    .local p0, "this":Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;, "Lccsancom/google/common/collect/AbstractNavigableMap<TK;TV;>.DescendingMap;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lccsancom/google/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/AbstractNavigableMap;Lccsancom/google/common/collect/AbstractNavigableMap$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/AbstractNavigableMap;
    .param p2, "x1"    # Lccsancom/google/common/collect/AbstractNavigableMap$1;

    .line 167
    .local p0, "this":Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;, "Lccsancom/google/common/collect/AbstractNavigableMap<TK;TV;>.DescendingMap;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;-><init>(Lccsancom/google/common/collect/AbstractNavigableMap;)V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;, "Lccsancom/google/common/collect/AbstractNavigableMap<TK;TV;>.DescendingMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lccsancom/google/common/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractNavigableMap;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method forward()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;, "Lccsancom/google/common/collect/AbstractNavigableMap<TK;TV;>.DescendingMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lccsancom/google/common/collect/AbstractNavigableMap;

    return-object v0
.end method
