.class Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field nextEntry:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

.field toRemove:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;)V
    .locals 1
    .param p1, "this$1"    # Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

    .line 365
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    invoke-static {p1}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;->access$000(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;)Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 368
    invoke-static {p1}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;->access$100(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .line 371
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;->access$100(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iget v1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 374
    return-void

    .line 372
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 378
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    .line 379
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    iget-object v1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    check-cast v0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 388
    .local v0, "entry":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 389
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 390
    invoke-virtual {v0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInValueSet()Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 391
    return-object v1

    .line 385
    .end local v0    # "entry":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 396
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;"
    invoke-direct {p0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    .line 397
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 398
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget-object v1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;->remove(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;->access$100(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 401
    return-void
.end method
