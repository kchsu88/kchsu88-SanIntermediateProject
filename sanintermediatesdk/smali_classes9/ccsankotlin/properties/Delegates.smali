.class public final Lccsankotlin/properties/Delegates;
.super Ljava/lang/Object;
.source "Delegates.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0001J\u0080\u0001\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0007\u001a\u0002H\u00052Q\u0008\u0004\u0010\u0008\u001aK\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u0011H\u0005\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u0011H\u0005\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\tH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J\u0080\u0001\u0010\u0012\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0007\u001a\u0002H\u00052Q\u0008\u0004\u0010\u0008\u001aK\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u0011H\u0005\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u0011H\u0005\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00130\tH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "Lccsankotlin/properties/Delegates;",
        "",
        "()V",
        "notNull",
        "Lccsankotlin/properties/ReadWriteProperty;",
        "T",
        "observable",
        "initialValue",
        "onChange",
        "Lccsankotlin/Function3;",
        "Lccsankotlin/reflect/KProperty;",
        "Lccsankotlin/ParameterName;",
        "name",
        "property",
        "oldValue",
        "newValue",
        "",
        "(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function3;)Lccsankotlin/properties/ReadWriteProperty;",
        "vetoable",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/properties/Delegates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lccsankotlin/properties/Delegates;

    invoke-direct {v0}, Lccsankotlin/properties/Delegates;-><init>()V

    sput-object v0, Lccsankotlin/properties/Delegates;->INSTANCE:Lccsankotlin/properties/Delegates;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notNull()Lccsankotlin/properties/ReadWriteProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsankotlin/properties/ReadWriteProperty<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lccsankotlin/properties/NotNullVar;

    invoke-direct {v0}, Lccsankotlin/properties/NotNullVar;-><init>()V

    check-cast v0, Lccsankotlin/properties/ReadWriteProperty;

    return-object v0
.end method

.method public final observable(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function3;)Lccsankotlin/properties/ReadWriteProperty;
    .locals 2
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "onChange"    # Lccsankotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsankotlin/jvm/functions/Function3<",
            "-",
            "Lccsankotlin/reflect/KProperty<",
            "*>;-TT;-TT;",
            "Lccsankotlin/Unit;",
            ">;)",
            "Lccsankotlin/properties/ReadWriteProperty<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$observable":I
    const-string v1, "onChange"

    invoke-static {p2, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lccsankotlin/properties/Delegates$observable$1;

    invoke-direct {v1, p2, p1, p1}, Lccsankotlin/properties/Delegates$observable$1;-><init>(Lccsankotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v1, Lccsankotlin/properties/ReadWriteProperty;

    .line 35
    return-object v1
.end method

.method public final vetoable(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function3;)Lccsankotlin/properties/ReadWriteProperty;
    .locals 2
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "onChange"    # Lccsankotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsankotlin/jvm/functions/Function3<",
            "-",
            "Lccsankotlin/reflect/KProperty<",
            "*>;-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lccsankotlin/properties/ReadWriteProperty<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$vetoable":I
    const-string v1, "onChange"

    invoke-static {p2, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lccsankotlin/properties/Delegates$vetoable$1;

    invoke-direct {v1, p2, p1, p1}, Lccsankotlin/properties/Delegates$vetoable$1;-><init>(Lccsankotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v1, Lccsankotlin/properties/ReadWriteProperty;

    .line 53
    return-object v1
.end method
