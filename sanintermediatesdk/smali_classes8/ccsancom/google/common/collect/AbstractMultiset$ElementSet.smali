.class Lccsancom/google/common/collect/AbstractMultiset$ElementSet;
.super Lccsancom/google/common/collect/Multisets$ElementSet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Multisets$ElementSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMultiset;

    .line 147
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$ElementSet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    invoke-direct {p0}, Lccsancom/google/common/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$ElementSet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMultiset;->elementIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lccsancom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$ElementSet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    return-object v0
.end method
