.class Lccsankotlin/LazyKt__LazyJVMKt;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u001a*\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u001a(\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u00a8\u0006\t"
    }
    d2 = {
        "lazy",
        "Lccsankotlin/Lazy;",
        "T",
        "initializer",
        "Lccsankotlin/Function0;",
        "lock",
        "",
        "mode",
        "Lccsankotlin/LazyThreadSafetyMode;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/LazyKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final lazy(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function0;)Lccsankotlin/Lazy;
    .locals 1
    .param p0, "lock"    # Ljava/lang/Object;
    .param p1, "initializer"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lccsankotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lccsankotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lccsankotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p1, p0}, Lccsankotlin/SynchronizedLazyImpl;-><init>(Lccsankotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    check-cast v0, Lccsankotlin/Lazy;

    return-object v0
.end method

.method public static final lazy(Lccsankotlin/LazyThreadSafetyMode;Lccsankotlin/jvm/functions/Function0;)Lccsankotlin/Lazy;
    .locals 3
    .param p0, "mode"    # Lccsankotlin/LazyThreadSafetyMode;
    .param p1, "initializer"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/LazyThreadSafetyMode;",
            "Lccsankotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lccsankotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lccsankotlin/LazyKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lccsankotlin/LazyThreadSafetyMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    new-instance v0, Lccsankotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lccsankotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lccsankotlin/UnsafeLazyImpl;

    invoke-direct {v0, p1}, Lccsankotlin/UnsafeLazyImpl;-><init>(Lccsankotlin/jvm/functions/Function0;)V

    check-cast v0, Lccsankotlin/Lazy;

    goto :goto_0

    .line 36
    :pswitch_1
    new-instance v0, Lccsankotlin/SafePublicationLazyImpl;

    invoke-direct {v0, p1}, Lccsankotlin/SafePublicationLazyImpl;-><init>(Lccsankotlin/jvm/functions/Function0;)V

    check-cast v0, Lccsankotlin/Lazy;

    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lccsankotlin/SynchronizedLazyImpl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lccsankotlin/SynchronizedLazyImpl;-><init>(Lccsankotlin/jvm/functions/Function0;Ljava/lang/Object;ILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lccsankotlin/Lazy;

    .line 38
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final lazy(Lccsankotlin/jvm/functions/Function0;)Lccsankotlin/Lazy;
    .locals 3
    .param p0, "initializer"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lccsankotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lccsankotlin/SynchronizedLazyImpl;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lccsankotlin/SynchronizedLazyImpl;-><init>(Lccsankotlin/jvm/functions/Function0;Ljava/lang/Object;ILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lccsankotlin/Lazy;

    return-object v0
.end method
