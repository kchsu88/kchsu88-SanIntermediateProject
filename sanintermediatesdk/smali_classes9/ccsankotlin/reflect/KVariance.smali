.class public final enum Lccsankotlin/reflect/KVariance;
.super Ljava/lang/Enum;
.source "KVariance.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlin/reflect/KVariance;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lccsankotlin/reflect/KVariance;",
        "",
        "(Ljava/lang/String;I)V",
        "INVARIANT",
        "IN",
        "OUT",
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
.field private static final synthetic $VALUES:[Lccsankotlin/reflect/KVariance;

.field public static final enum IN:Lccsankotlin/reflect/KVariance;

.field public static final enum INVARIANT:Lccsankotlin/reflect/KVariance;

.field public static final enum OUT:Lccsankotlin/reflect/KVariance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lccsankotlin/reflect/KVariance;

    new-instance v1, Lccsankotlin/reflect/KVariance;

    const-string v2, "INVARIANT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVariance;->INVARIANT:Lccsankotlin/reflect/KVariance;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/reflect/KVariance;

    const-string v2, "IN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVariance;->IN:Lccsankotlin/reflect/KVariance;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/reflect/KVariance;

    const-string v2, "OUT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVariance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVariance;->OUT:Lccsankotlin/reflect/KVariance;

    aput-object v1, v0, v3

    sput-object v0, Lccsankotlin/reflect/KVariance;->$VALUES:[Lccsankotlin/reflect/KVariance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlin/reflect/KVariance;
    .locals 1

    const-class v0, Lccsankotlin/reflect/KVariance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsankotlin/reflect/KVariance;

    return-object p0
.end method

.method public static values()[Lccsankotlin/reflect/KVariance;
    .locals 1

    sget-object v0, Lccsankotlin/reflect/KVariance;->$VALUES:[Lccsankotlin/reflect/KVariance;

    invoke-virtual {v0}, [Lccsankotlin/reflect/KVariance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsankotlin/reflect/KVariance;

    return-object v0
.end method
