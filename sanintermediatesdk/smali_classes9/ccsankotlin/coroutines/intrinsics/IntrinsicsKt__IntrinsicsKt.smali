.class Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;
.super Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;
.source "Intrinsics.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aB\u0010\u0006\u001a\u0002H\u0007\"\u0004\u0008\u0000\u0010\u00072\u001c\u0008\u0004\u0010\u0008\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00070\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0087H\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u000b\"\u001a\u0010\u0000\u001a\u00020\u00018FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "COROUTINE_SUSPENDED",
        "",
        "getCOROUTINE_SUSPENDED$annotations",
        "()V",
        "getCOROUTINE_SUSPENDED",
        "()Ljava/lang/Object;",
        "suspendCoroutineUninterceptedOrReturn",
        "T",
        "block",
        "Lccsankotlin/Function1;",
        "Lccsankotlin/coroutines/Continuation;",
        "(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/coroutines/intrinsics/IntrinsicsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;-><init>()V

    return-void
.end method

.method public static final getCOROUTINE_SUSPENDED()Ljava/lang/Object;
    .locals 1

    .line 57
    sget-object v0, Lccsankotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lccsankotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v0
.end method

.method public static synthetic getCOROUTINE_SUSPENDED$annotations()V
    .locals 0

    return-void
.end method

.method private static final suspendCoroutineUninterceptedOrReturn(Lccsankotlin/jvm/functions/Function1;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "block"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function1<",
            "-",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lccsankotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 42
    .local p1, "$i$f$suspendCoroutineUninterceptedOrReturn":I
    nop

    .line 43
    new-instance v0, Lccsankotlin/NotImplementedError;

    const-string v1, "Implementation of suspendCoroutineUninterceptedOrReturn is intrinsic"

    invoke-direct {v0, v1}, Lccsankotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
