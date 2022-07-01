.class public final Lccsancom/google/common/collect/LinkedHashMultiset;
.super Lccsancom/google/common/collect/AbstractMapBasedMultiset;
.source "LinkedHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractMapBasedMultiset<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "distinctElements"    # I

    .line 69
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;-><init>(I)V

    .line 70
    return-void
.end method

.method public static create()Lccsancom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 41
    const/4 v0, 0x3

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedHashMultiset;->create(I)Lccsancom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lccsancom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .param p0, "distinctElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lccsancom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lccsancom/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/LinkedHashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lccsancom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Multisets;->inferDistinctElements(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedHashMultiset;->create(I)Lccsancom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 64
    .local v0, "multiset":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 65
    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method init(I)V
    .locals 1
    .param p1, "distinctElements"    # I

    .line 74
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0, p1}, Lccsancom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    .line 75
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultiset;, "Lccsancom/google/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method
