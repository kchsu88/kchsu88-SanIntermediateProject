.class public abstract Lccsancom/google/common/collect/ForwardingListMultimap;
.super Lccsancom/google/common/collect/ForwardingMultimap;
.source "ForwardingListMultimap.java"

# interfaces
.implements Lccsancom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMultimap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lccsancom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingListMultimap;->delegate()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingListMultimap;->delegate()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingListMultimap;->delegate()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ForwardingListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingListMultimap;->delegate()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ForwardingListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsancom/google/common/collect/ForwardingListMultimap;, "Lccsancom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingListMultimap;->delegate()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
