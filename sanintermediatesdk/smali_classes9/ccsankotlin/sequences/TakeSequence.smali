.class public final Lccsankotlin/sequences/TakeSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;
.implements Lccsankotlin/sequences/DropTakeSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsankotlin/sequences/Sequence<",
        "TT;>;",
        "Lccsankotlin/sequences/DropTakeSequence<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/TakeSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,680:1\n1#2:681\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0096\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lccsankotlin/sequences/TakeSequence;",
        "T",
        "Lccsankotlin/sequences/Sequence;",
        "Lccsankotlin/sequences/DropTakeSequence;",
        "sequence",
        "count",
        "",
        "(Lccsankotlin/sequences/Sequence;I)V",
        "drop",
        "n",
        "iterator",
        "",
        "take",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final count:I

.field private final sequence:Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/sequences/Sequence;I)V
    .locals 3
    .param p1, "sequence"    # Lccsankotlin/sequences/Sequence;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;I)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/sequences/TakeSequence;->sequence:Lccsankotlin/sequences/Sequence;

    iput p2, p0, Lccsankotlin/sequences/TakeSequence;->count:I

    .line 402
    nop

    .line 403
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 404
    return-void

    .line 681
    :cond_1
    const/4 v0, 0x0

    .line 403
    .local v0, "$i$a$-require-TakeSequence$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count must be non-negative, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-TakeSequence$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$getCount$p(Lccsankotlin/sequences/TakeSequence;)I
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/TakeSequence;

    .line 397
    iget v0, p0, Lccsankotlin/sequences/TakeSequence;->count:I

    return v0
.end method

.method public static final synthetic access$getSequence$p(Lccsankotlin/sequences/TakeSequence;)Lccsankotlin/sequences/Sequence;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/TakeSequence;

    .line 397
    iget-object v0, p0, Lccsankotlin/sequences/TakeSequence;->sequence:Lccsankotlin/sequences/Sequence;

    return-object v0
.end method


# virtual methods
.method public drop(I)Lccsankotlin/sequences/Sequence;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .line 406
    iget v0, p0, Lccsankotlin/sequences/TakeSequence;->count:I

    if-lt p1, v0, :cond_0

    invoke-static {}, Lccsankotlin/sequences/SequencesKt;->emptySequence()Lccsankotlin/sequences/Sequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsankotlin/sequences/SubSequence;

    iget-object v2, p0, Lccsankotlin/sequences/TakeSequence;->sequence:Lccsankotlin/sequences/Sequence;

    invoke-direct {v1, v2, p1, v0}, Lccsankotlin/sequences/SubSequence;-><init>(Lccsankotlin/sequences/Sequence;II)V

    move-object v0, v1

    check-cast v0, Lccsankotlin/sequences/Sequence;

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 409
    new-instance v0, Lccsankotlin/sequences/TakeSequence$iterator$1;

    invoke-direct {v0, p0}, Lccsankotlin/sequences/TakeSequence$iterator$1;-><init>(Lccsankotlin/sequences/TakeSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 423
    return-object v0
.end method

.method public take(I)Lccsankotlin/sequences/Sequence;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .line 407
    iget v0, p0, Lccsankotlin/sequences/TakeSequence;->count:I

    if-lt p1, v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsankotlin/sequences/Sequence;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsankotlin/sequences/TakeSequence;

    iget-object v1, p0, Lccsankotlin/sequences/TakeSequence;->sequence:Lccsankotlin/sequences/Sequence;

    invoke-direct {v0, v1, p1}, Lccsankotlin/sequences/TakeSequence;-><init>(Lccsankotlin/sequences/Sequence;I)V

    check-cast v0, Lccsankotlin/sequences/Sequence;

    :goto_0
    return-object v0
.end method
