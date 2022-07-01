.class public abstract Lccsancom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/base/Equivalence$Identity;,
        Lccsancom/google/common/base/Equivalence$Equals;,
        Lccsancom/google/common/base/Equivalence$EquivalentToPredicate;,
        Lccsancom/google/common/base/Equivalence$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals()Lccsancom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lccsancom/google/common/base/Equivalence$Equals;->INSTANCE:Lccsancom/google/common/base/Equivalence$Equals;

    return-object v0
.end method

.method public static identity()Lccsancom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 325
    sget-object v0, Lccsancom/google/common/base/Equivalence$Identity;->INSTANCE:Lccsancom/google/common/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 67
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equivalentTo(Ljava/lang/Object;)Lccsancom/google/common/base/Predicate;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/google/common/base/Equivalence$EquivalentToPredicate;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/base/Equivalence$EquivalentToPredicate;-><init>(Lccsancom/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onResultOf(Lccsancom/google/common/base/Function;)Lccsancom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lccsancom/google/common/base/Equivalence<",
            "TF;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lccsancom/google/common/base/FunctionalEquivalence;

    invoke-direct {v0, p1, p0}, Lccsancom/google/common/base/FunctionalEquivalence;-><init>(Lccsancom/google/common/base/Function;Lccsancom/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final pairwise()Lccsancom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    new-instance v0, Lccsancom/google/common/base/PairwiseEquivalence;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/PairwiseEquivalence;-><init>(Lccsancom/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final wrap(Ljava/lang/Object;)Lccsancom/google/common/base/Equivalence$Wrapper;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(TS;)",
            "Lccsancom/google/common/base/Equivalence$Wrapper<",
            "TS;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TS;"
    new-instance v0, Lccsancom/google/common/base/Equivalence$Wrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/common/base/Equivalence$Wrapper;-><init>(Lccsancom/google/common/base/Equivalence;Ljava/lang/Object;Lccsancom/google/common/base/Equivalence$1;)V

    return-object v0
.end method
