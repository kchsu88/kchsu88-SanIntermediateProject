.class public final enum Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/debugger/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

.field public static final enum b:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

.field public static final enum c:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

.field public static final enum d:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

.field public static final enum e:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

.field private static final synthetic i:[Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    const-string v3, "Not Supported"

    const/high16 v4, -0x10000

    const-string v5, "This network does not support test mode."

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const-string v8, "INVALID_INTEGRATION"

    const/4 v9, 0x1

    const-string v10, "Invalid Integration"

    const/high16 v11, -0x10000

    const-string v12, "Please address all the integration issue(s) marked in red above."

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->b:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const-string v14, "NOT_INITIALIZED"

    const/4 v15, 0x2

    const-string v16, "Not Initialized"

    const/high16 v17, -0x10000

    const-string v18, "Please configure this network in your MAX dashboard."

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->c:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const-string v8, "DISABLED"

    const/4 v9, 0x3

    const-string v10, "Enable"

    const v11, -0xffff01

    const-string v12, "Please re-launch the app to enable test ads."

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->d:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    new-instance v3, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const-string v14, "READY"

    const/4 v15, 0x4

    const-string v16, ""

    const v17, -0xffff01

    const-string v18, ""

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->e:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const/4 v4, 0x5

    new-array v4, v4, [Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->i:[Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->f:Ljava/lang/String;

    iput p4, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->g:I

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    return-object p0
.end method

.method public static values()[Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->i:[Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    invoke-virtual {v0}, [Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->g:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->h:Ljava/lang/String;

    return-object v0
.end method
