.class Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator;
.super Lccsanandroidx/arch/core/internal/SafeIterableMap$ListIterator;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/arch/core/internal/SafeIterableMap$ListIterator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;",
            "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 300
    .local p0, "this":Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    .local p1, "start":Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    .local p2, "expectedEnd":Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;)V

    .line 301
    return-void
.end method


# virtual methods
.method backward(Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;)Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    .local p1, "entry":Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method forward(Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;)Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    .local p1, "entry":Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;, "Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p1, Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Lccsanandroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method
