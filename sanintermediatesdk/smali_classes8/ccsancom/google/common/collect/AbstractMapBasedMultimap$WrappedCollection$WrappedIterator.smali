.class Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final originalDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1
    .param p1, "this$1"    # Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    .line 430
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iget-object v0, p1, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 431
    iget-object v0, p1, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-static {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$100(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 432
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "this$1"    # Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    .line 434
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    .local p2, "delegateIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iget-object v0, p1, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 435
    iput-object p2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 436
    return-void
.end method


# virtual methods
.method getDelegateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 469
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 450
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 451
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 457
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 462
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 463
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 464
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 465
    return-void
.end method

.method validateIterator()V
    .locals 2

    .line 442
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 443
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    .line 446
    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
