.class final enum Lccsancom/google/common/hash/Funnels$IntegerFunnel;
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
    name = "IntegerFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/hash/Funnels$IntegerFunnel;",
        ">;",
        "Lccsancom/google/common/hash/Funnel<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/hash/Funnels$IntegerFunnel;

.field public static final enum INSTANCE:Lccsancom/google/common/hash/Funnels$IntegerFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    new-instance v0, Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/hash/Funnels$IntegerFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/hash/Funnels$IntegerFunnel;->INSTANCE:Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    aput-object v0, v1, v2

    sput-object v1, Lccsancom/google/common/hash/Funnels$IntegerFunnel;->$VALUES:[Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/hash/Funnels$IntegerFunnel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const-class v0, Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/hash/Funnels$IntegerFunnel;
    .locals 1

    .line 147
    sget-object v0, Lccsancom/google/common/hash/Funnels$IntegerFunnel;->$VALUES:[Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    invoke-virtual {v0}, [Lccsancom/google/common/hash/Funnels$IntegerFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/Integer;Lccsancom/google/common/hash/PrimitiveSink;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/Integer;
    .param p2, "into"    # Lccsancom/google/common/hash/PrimitiveSink;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lccsancom/google/common/hash/PrimitiveSink;->putInt(I)Lccsancom/google/common/hash/PrimitiveSink;

    .line 153
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lccsancom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/hash/Funnels$IntegerFunnel;->funnel(Ljava/lang/Integer;Lccsancom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "Funnels.integerFunnel()"

    return-object v0
.end method
