.class final Lccsancom/google/common/primitives/Ints$IntConverter;
.super Lccsancom/google/common/base/Converter;
.source "Ints.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/base/Converter<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/primitives/Ints$IntConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 334
    new-instance v0, Lccsancom/google/common/primitives/Ints$IntConverter;

    invoke-direct {v0}, Lccsancom/google/common/primitives/Ints$IntConverter;-><init>()V

    sput-object v0, Lccsancom/google/common/primitives/Ints$IntConverter;->INSTANCE:Lccsancom/google/common/primitives/Ints$IntConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Lccsancom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 352
    sget-object v0, Lccsancom/google/common/primitives/Ints$IntConverter;->INSTANCE:Lccsancom/google/common/primitives/Ints$IntConverter;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/Ints$IntConverter;->doBackward(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .line 343
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/Ints$IntConverter;->doForward(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 348
    const-string v0, "Ints.stringConverter()"

    return-object v0
.end method
