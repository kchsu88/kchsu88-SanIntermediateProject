.class public final Lccsankotlin/reflect/KTypeProjection;
.super Ljava/lang/Object;
.source "KTypeProjection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/reflect/KTypeProjection$Companion;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lccsankotlin/reflect/KTypeProjection;",
        "",
        "variance",
        "Lccsankotlin/reflect/KVariance;",
        "type",
        "Lccsankotlin/reflect/KType;",
        "(Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;)V",
        "getType",
        "()Lccsankotlin/reflect/KType;",
        "getVariance",
        "()Lccsankotlin/reflect/KVariance;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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
.field public static final Companion:Lccsankotlin/reflect/KTypeProjection$Companion;

.field public static final star:Lccsankotlin/reflect/KTypeProjection;


# instance fields
.field private final type:Lccsankotlin/reflect/KType;

.field private final variance:Lccsankotlin/reflect/KVariance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsankotlin/reflect/KTypeProjection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/reflect/KTypeProjection$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/reflect/KTypeProjection;->Companion:Lccsankotlin/reflect/KTypeProjection$Companion;

    .line 54
    new-instance v0, Lccsankotlin/reflect/KTypeProjection;

    invoke-direct {v0, v1, v1}, Lccsankotlin/reflect/KTypeProjection;-><init>(Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;)V

    sput-object v0, Lccsankotlin/reflect/KTypeProjection;->star:Lccsankotlin/reflect/KTypeProjection;

    return-void
.end method

.method public constructor <init>(Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;)V
    .locals 4
    .param p1, "variance"    # Lccsankotlin/reflect/KVariance;
    .param p2, "type"    # Lccsankotlin/reflect/KType;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    iput-object p2, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    .line 34
    nop

    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$a$-require-KTypeProjection$1":I
    if-nez p1, :cond_3

    .line 37
    const-string v1, "Star projection must have no type specified."

    goto :goto_3

    .line 39
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The projection variance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requires type to be specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    nop

    .line 35
    .end local v0    # "$i$a$-require-KTypeProjection$1":I
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 41
    :cond_4
    return-void
.end method

.method public static final contravariant(Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;
    .locals 1
    .annotation runtime Lccsankotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lccsankotlin/reflect/KTypeProjection;->Companion:Lccsankotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v0, p0}, Lccsankotlin/reflect/KTypeProjection$Companion;->contravariant(Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copy$default(Lccsankotlin/reflect/KTypeProjection;Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;ILjava/lang/Object;)Lccsankotlin/reflect/KTypeProjection;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lccsankotlin/reflect/KTypeProjection;->copy(Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0
.end method

.method public static final covariant(Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;
    .locals 1
    .annotation runtime Lccsankotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lccsankotlin/reflect/KTypeProjection;->Companion:Lccsankotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v0, p0}, Lccsankotlin/reflect/KTypeProjection$Companion;->covariant(Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;

    move-result-object v0

    return-object v0
.end method

.method public static final invariant(Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;
    .locals 1
    .annotation runtime Lccsankotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lccsankotlin/reflect/KTypeProjection;->Companion:Lccsankotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v0, p0}, Lccsankotlin/reflect/KTypeProjection$Companion;->invariant(Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lccsankotlin/reflect/KVariance;
    .locals 1

    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    return-object v0
.end method

.method public final component2()Lccsankotlin/reflect/KType;
    .locals 1

    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    return-object v0
.end method

.method public final copy(Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;)Lccsankotlin/reflect/KTypeProjection;
    .locals 1

    new-instance v0, Lccsankotlin/reflect/KTypeProjection;

    invoke-direct {v0, p1, p2}, Lccsankotlin/reflect/KTypeProjection;-><init>(Lccsankotlin/reflect/KVariance;Lccsankotlin/reflect/KType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lccsankotlin/reflect/KTypeProjection;

    if-eqz v0, :cond_0

    check-cast p1, Lccsankotlin/reflect/KTypeProjection;

    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    iget-object v1, p1, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    invoke-static {v0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    iget-object p1, p1, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    invoke-static {v0, p1}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getType()Lccsankotlin/reflect/KType;
    .locals 1

    .line 31
    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    return-object v0
.end method

.method public final getVariance()Lccsankotlin/reflect/KVariance;
    .locals 1

    .line 27
    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->variance:Lccsankotlin/reflect/KVariance;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "*"

    goto :goto_0

    .line 43
    :cond_0
    sget-object v1, Lccsankotlin/reflect/KTypeProjection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lccsankotlin/reflect/KVariance;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Lccsankotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lccsankotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lccsankotlin/reflect/KTypeProjection;->type:Lccsankotlin/reflect/KType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
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
