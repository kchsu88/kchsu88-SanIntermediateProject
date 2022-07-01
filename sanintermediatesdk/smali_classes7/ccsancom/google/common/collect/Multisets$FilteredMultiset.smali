.class final Lccsancom/google/common/collect/Multisets$FilteredMultiset;
.super Lccsancom/google/common/collect/Multisets$ViewMultiset;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteredMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Multisets$ViewMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lccsancom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lccsancom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multiset;Lccsancom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "unfiltered":Lccsancom/google/common/collect/Multiset;, "Lccsancom/google/common/collect/Multiset<TE;>;"
    .local p2, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/Multisets$ViewMultiset;-><init>(Lccsancom/google/common/collect/Multisets$1;)V

    .line 286
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multiset;

    iput-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    .line 287
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Predicate;

    iput-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lccsancom/google/common/base/Predicate;

    .line 288
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 335
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lccsancom/google/common/base/Predicate;

    .line 336
    invoke-interface {v0, p1}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lccsancom/google/common/base/Predicate;

    .line 335
    const-string v2, "Element %s does not match predicate %s"

    invoke-static {v0, v2, p1, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 324
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 325
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 327
    move-object v2, p1

    .line 328
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lccsancom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 330
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v1
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Sets;->filter(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    .line 308
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/collect/Multisets$FilteredMultiset$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/collect/Multisets$FilteredMultiset$1;-><init>(Lccsancom/google/common/collect/Multisets$FilteredMultiset;)V

    .line 307
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Sets;->filter(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 281
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 342
    .local p0, "this":Lccsancom/google/common/collect/Multisets$FilteredMultiset;, "Lccsancom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 343
    if-nez p2, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
