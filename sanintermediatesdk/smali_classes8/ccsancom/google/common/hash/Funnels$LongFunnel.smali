.class final enum Lccsancom/google/common/hash/Funnels$LongFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lccsancom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LongFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/hash/Funnels$LongFunnel;",
        ">;",
        "Lccsancom/google/common/hash/Funnel<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/hash/Funnels$LongFunnel;

.field public static final enum INSTANCE:Lccsancom/google/common/hash/Funnels$LongFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    new-instance v0, Lccsancom/google/common/hash/Funnels$LongFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/hash/Funnels$LongFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lccsancom/google/common/hash/Funnels$LongFunnel;

    .line 214
    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/google/common/hash/Funnels$LongFunnel;

    aput-object v0, v1, v2

    sput-object v1, Lccsancom/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lccsancom/google/common/hash/Funnels$LongFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/hash/Funnels$LongFunnel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 214
    const-class v0, Lccsancom/google/common/hash/Funnels$LongFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/hash/Funnels$LongFunnel;
    .locals 1

    .line 214
    sget-object v0, Lccsancom/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lccsancom/google/common/hash/Funnels$LongFunnel;

    invoke-virtual {v0}, [Lccsancom/google/common/hash/Funnels$LongFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/Long;Lccsancom/google/common/hash/PrimitiveSink;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/Long;
    .param p2, "into"    # Lccsancom/google/common/hash/PrimitiveSink;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lccsancom/google/common/hash/PrimitiveSink;->putLong(J)Lccsancom/google/common/hash/PrimitiveSink;

    .line 220
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lccsancom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 214
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/hash/Funnels$LongFunnel;->funnel(Ljava/lang/Long;Lccsancom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 224
    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method
