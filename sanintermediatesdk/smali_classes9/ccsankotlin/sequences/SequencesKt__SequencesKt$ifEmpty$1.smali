.class final Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
.super Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt__SequencesKt;->ifEmpty(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function0;)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lccsankotlin/jvm/functions/Function2<",
        "Lccsankotlin/sequences/SequenceScope<",
        "-TT;>;",
        "Lccsankotlin/coroutines/Continuation<",
        "-",
        "Lccsankotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lccsankotlin/sequences/SequenceScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lccsankotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1"
    f = "Sequences.kt"
    i = {}
    l = {
        0x45,
        0x47
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $defaultValue:Lccsankotlin/jvm/functions/Function0;

.field final synthetic $this_ifEmpty:Lccsankotlin/sequences/Sequence;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function0;Lccsankotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$this_ifEmpty:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$defaultValue:Lccsankotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILccsankotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lccsankotlin/coroutines/Continuation<",
            "*>;)",
            "Lccsankotlin/coroutines/Continuation<",
            "Lccsankotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;

    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$this_ifEmpty:Lccsankotlin/sequences/Sequence;

    iget-object v2, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$defaultValue:Lccsankotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, p2}, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;-><init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function0;Lccsankotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lccsankotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;

    sget-object p2, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    invoke-virtual {p1, p2}, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lccsankotlin/sequences/SequenceScope;

    .line 67
    .local v2, "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$this_ifEmpty:Lccsankotlin/sequences/Sequence;

    invoke-interface {v3}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 68
    .local v3, "iterator":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const/4 v4, 0x1

    iput v4, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->label:I

    invoke-virtual {v2, v3, v1}, Lccsankotlin/sequences/SequenceScope;->yieldAll(Ljava/util/Iterator;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    .end local v3    # "iterator":Ljava/util/Iterator;
    if-ne v2, v0, :cond_0

    .line 66
    return-object v0

    .line 69
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .restart local v0    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    :goto_0
    goto :goto_2

    .line 71
    .end local v0    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .restart local v1    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    :cond_1
    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->$defaultValue:Lccsankotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsankotlin/sequences/Sequence;

    const/4 v4, 0x2

    iput v4, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;->label:I

    invoke-virtual {v2, v3, v1}, Lccsankotlin/sequences/SequenceScope;->yieldAll(Lccsankotlin/sequences/Sequence;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 66
    return-object v0

    .line 71
    :cond_2
    move-object v0, v1

    .line 72
    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    .restart local v0    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1;
    :goto_1
    nop

    .line 73
    :goto_2
    sget-object v1, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
