.class final Lccsankotlin/DeepRecursiveScopeImpl;
.super Lccsankotlin/DeepRecursiveScope;
.source "DeepRecursive.kt"

# interfaces
.implements Lccsankotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lccsankotlin/DeepRecursiveScope<",
        "TT;TR;>;",
        "Lccsankotlin/coroutines/Continuation<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004BK\u00129\u0010\u0005\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u0012\u0006\u0010\t\u001a\u00028\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0019\u0010\u0015\u001a\u00028\u00012\u0006\u0010\t\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016Jc\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000429\u0010\u0018\u001a5\u0008\u0001\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a2\u0006\u0002\u0008\u00082\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0013H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u000b\u0010\u001d\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u001eJ5\u0010\u0015\u001a\u0002H\u001f\"\u0004\u0008\u0002\u0010 \"\u0004\u0008\u0003\u0010\u001f*\u000e\u0012\u0004\u0012\u0002H \u0012\u0004\u0012\u0002H\u001f0!2\u0006\u0010\t\u001a\u0002H H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"R\u0018\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fRF\u0010\u0010\u001a5\u0008\u0001\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a2\u0006\u0002\u0008\u0008X\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u001e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0013X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006#"
    }
    d2 = {
        "Lccsankotlin/DeepRecursiveScopeImpl;",
        "T",
        "R",
        "Lccsankotlin/DeepRecursiveScope;",
        "Lccsankotlin/coroutines/Continuation;",
        "block",
        "Lccsankotlin/Function3;",
        "",
        "Lccsankotlin/ExtensionFunctionType;",
        "value",
        "(Lccsankotlin/jvm/functions/Function3;Ljava/lang/Object;)V",
        "cont",
        "context",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lccsankotlin/coroutines/CoroutineContext;",
        "function",
        "Lccsankotlin/jvm/functions/Function3;",
        "result",
        "Lccsankotlin/Result;",
        "Ljava/lang/Object;",
        "callRecursive",
        "(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "crossFunctionCompletion",
        "currentFunction",
        "(Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;",
        "resumeWith",
        "",
        "(Ljava/lang/Object;)V",
        "runCallLoop",
        "()Ljava/lang/Object;",
        "S",
        "U",
        "Lccsankotlin/DeepRecursiveFunction;",
        "(Lccsankotlin/DeepRecursiveFunction;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private cont:Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private function:Lccsankotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function3<",
            "-",
            "Lccsankotlin/DeepRecursiveScope<",
            "**>;",
            "Ljava/lang/Object;",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lccsankotlin/jvm/functions/Function3;Ljava/lang/Object;)V
    .locals 1
    .param p1, "block"    # Lccsankotlin/jvm/functions/Function3;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function3<",
            "-",
            "Lccsankotlin/DeepRecursiveScope<",
            "TT;TR;>;-TT;-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;TT;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    nop

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsankotlin/DeepRecursiveScope;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->function:Lccsankotlin/jvm/functions/Function3;

    .line 141
    iput-object p2, p0, Lccsankotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    .line 144
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/Continuation;

    iput-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    .line 147
    invoke-static {}, Lccsankotlin/DeepRecursiveKt;->access$getUNDEFINED_RESULT$p()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getCont$p(Lccsankotlin/DeepRecursiveScopeImpl;)Lccsankotlin/coroutines/Continuation;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/DeepRecursiveScopeImpl;

    .line 133
    iget-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final synthetic access$getFunction$p(Lccsankotlin/DeepRecursiveScopeImpl;)Lccsankotlin/jvm/functions/Function3;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/DeepRecursiveScopeImpl;

    .line 133
    iget-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->function:Lccsankotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public static final synthetic access$getResult$p-d1pmJ48(Lccsankotlin/DeepRecursiveScopeImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/DeepRecursiveScopeImpl;

    .line 133
    iget-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$setCont$p(Lccsankotlin/DeepRecursiveScopeImpl;Lccsankotlin/coroutines/Continuation;)V
    .locals 0
    .param p0, "$this"    # Lccsankotlin/DeepRecursiveScopeImpl;
    .param p1, "<set-?>"    # Lccsankotlin/coroutines/Continuation;

    .line 133
    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    return-void
.end method

.method public static final synthetic access$setFunction$p(Lccsankotlin/DeepRecursiveScopeImpl;Lccsankotlin/jvm/functions/Function3;)V
    .locals 0
    .param p0, "$this"    # Lccsankotlin/DeepRecursiveScopeImpl;
    .param p1, "<set-?>"    # Lccsankotlin/jvm/functions/Function3;

    .line 133
    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->function:Lccsankotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final synthetic access$setResult$p(Lccsankotlin/DeepRecursiveScopeImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lccsankotlin/DeepRecursiveScopeImpl;
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    return-void
.end method

.method private final crossFunctionCompletion(Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 2
    .param p1, "currentFunction"    # Lccsankotlin/jvm/functions/Function3;
    .param p2, "cont"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function3<",
            "-",
            "Lccsankotlin/DeepRecursiveScope<",
            "**>;",
            "Ljava/lang/Object;",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Lccsankotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 185
    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    new-instance v1, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;

    invoke-direct {v1, v0, p0, p1, p2}, Lccsankotlin/DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/DeepRecursiveScopeImpl;Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)V

    check-cast v1, Lccsankotlin/coroutines/Continuation;

    .line 191
    return-object v1
.end method


# virtual methods
.method public callRecursive(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 157
    move-object v0, p2

    .local v0, "cont":Lccsankotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 159
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-DeepRecursiveScopeImpl$callRecursive$2":I
    if-eqz v0, :cond_1

    iput-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    .line 160
    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    .line 161
    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .end local v0    # "cont":Lccsankotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-DeepRecursiveScopeImpl$callRecursive$2":I
    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lccsankotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lccsankotlin/coroutines/Continuation;)V

    .line 162
    :cond_0
    return-object v0

    .line 159
    .restart local v0    # "cont":Lccsankotlin/coroutines/Continuation;
    .restart local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-DeepRecursiveScopeImpl$callRecursive$2":I
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public callRecursive(Lccsankotlin/DeepRecursiveFunction;Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "$this$callRecursive"    # Lccsankotlin/DeepRecursiveFunction;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "$completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/DeepRecursiveFunction<",
            "TU;TS;>;TU;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 164
    move-object v0, p3

    .local v0, "cont":Lccsankotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 166
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-DeepRecursiveScopeImpl$callRecursive$4":I
    invoke-virtual {p1}, Lccsankotlin/DeepRecursiveFunction;->getBlock$kotlin_stdlib()Lccsankotlin/jvm/functions/Function3;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 167
    .local v2, "function":Lccsankotlin/jvm/functions/Function3;
    move-object v3, p0

    check-cast v3, Lccsankotlin/DeepRecursiveScopeImpl;

    .local v3, "$this$with":Lccsankotlin/DeepRecursiveScopeImpl;
    const/4 v4, 0x0

    .line 168
    .local v4, "$i$a$-with-DeepRecursiveScopeImpl$callRecursive$4$1":I
    iget-object v5, v3, Lccsankotlin/DeepRecursiveScopeImpl;->function:Lccsankotlin/jvm/functions/Function3;

    .line 169
    .local v5, "currentFunction":Lccsankotlin/jvm/functions/Function3;
    const-string v6, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-eq v2, v5, :cond_1

    .line 171
    iput-object v2, v3, Lccsankotlin/DeepRecursiveScopeImpl;->function:Lccsankotlin/jvm/functions/Function3;

    .line 172
    if-eqz v0, :cond_0

    invoke-direct {v3, v5, v0}, Lccsankotlin/DeepRecursiveScopeImpl;->crossFunctionCompletion(Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object v6

    iput-object v6, v3, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    :cond_1
    if-eqz v0, :cond_3

    iput-object v0, v3, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    .line 176
    :goto_0
    nop

    .line 177
    iput-object p2, v3, Lccsankotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    .line 178
    .end local v5    # "currentFunction":Lccsankotlin/jvm/functions/Function3;
    nop

    .line 167
    .end local v3    # "$this$with":Lccsankotlin/DeepRecursiveScopeImpl;
    .end local v4    # "$i$a$-with-DeepRecursiveScopeImpl$callRecursive$4$1":I
    nop

    .line 179
    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 164
    .end local v0    # "cont":Lccsankotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-DeepRecursiveScopeImpl$callRecursive$4":I
    .end local v2    # "function":Lccsankotlin/jvm/functions/Function3;
    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {p3}, Lccsankotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lccsankotlin/coroutines/Continuation;)V

    .line 180
    :cond_2
    return-object v0

    .line 175
    .restart local v0    # "cont":Lccsankotlin/coroutines/Continuation;
    .restart local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-DeepRecursiveScopeImpl$callRecursive$4":I
    .restart local v2    # "function":Lccsankotlin/jvm/functions/Function3;
    .restart local v3    # "$this$with":Lccsankotlin/DeepRecursiveScopeImpl;
    .restart local v4    # "$i$a$-with-DeepRecursiveScopeImpl$callRecursive$4$1":I
    .restart local v5    # "currentFunction":Lccsankotlin/jvm/functions/Function3;
    :cond_3
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 166
    .end local v2    # "function":Lccsankotlin/jvm/functions/Function3;
    .end local v3    # "$this$with":Lccsankotlin/DeepRecursiveScopeImpl;
    .end local v4    # "$i$a$-with-DeepRecursiveScopeImpl$callRecursive$4$1":I
    .end local v5    # "currentFunction":Lccsankotlin/jvm/functions/Function3;
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.DeepRecursiveFunctionBlock /* = suspend kotlin.DeepRecursiveScope<*, *>.(kotlin.Any?) -> kotlin.Any? */"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getContext()Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    .line 150
    sget-object v0, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lccsankotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lccsankotlin/coroutines/Continuation;

    iput-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    .line 154
    iput-object p1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public final runCallLoop()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 195
    :goto_0
    nop

    .line 197
    iget-object v0, p0, Lccsankotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    .line 198
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lccsankotlin/DeepRecursiveScopeImpl;->cont:Lccsankotlin/coroutines/Continuation;

    if-eqz v1, :cond_3

    .line 201
    .local v1, "cont":Lccsankotlin/coroutines/Continuation;
    invoke-static {}, Lccsankotlin/DeepRecursiveKt;->access$getUNDEFINED_RESULT$p()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lccsankotlin/Result;->equals-impl0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    nop

    .line 205
    :try_start_0
    iget-object v2, p0, Lccsankotlin/DeepRecursiveScopeImpl;->function:Lccsankotlin/jvm/functions/Function3;

    iget-object v3, p0, Lccsankotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lccsankotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsankotlin/jvm/functions/Function3;

    invoke-interface {v2, p0, v3, v1}, Lccsankotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    nop

    .line 211
    .local v2, "r":Ljava/lang/Object;
    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 212
    sget-object v3, Lccsankotlin/Result;->Companion:Lccsankotlin/Result$Companion;

    invoke-static {v2}, Lccsankotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .end local v2    # "r":Ljava/lang/Object;
    goto :goto_1

    .line 205
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type (R, P, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "cont":Lccsankotlin/coroutines/Continuation;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .restart local v0    # "result":Ljava/lang/Object;
    .restart local v1    # "cont":Lccsankotlin/coroutines/Continuation;
    :catchall_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lccsankotlin/Result;->Companion:Lccsankotlin/Result$Companion;

    invoke-static {v2}, Lccsankotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lccsankotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 208
    goto :goto_0

    .line 215
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lccsankotlin/DeepRecursiveKt;->access$getUNDEFINED_RESULT$p()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lccsankotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    .line 216
    invoke-interface {v1, v0}, Lccsankotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 217
    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "cont":Lccsankotlin/coroutines/Continuation;
    :cond_2
    :goto_1
    nop

    .line 195
    goto :goto_0

    .line 199
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_3
    invoke-static {v0}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0
.end method
