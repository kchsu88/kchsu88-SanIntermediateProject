.class Lccsancom/applovin/impl/adview/k$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lccsancom/applovin/impl/adview/k$a;

.field private final c:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/k$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lccsancom/applovin/impl/adview/k$b;->c:J

    iput-object p4, p0, Lccsancom/applovin/impl/adview/k$b;->b:Lccsancom/applovin/impl/adview/k$a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;Lccsancom/applovin/impl/adview/k$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/applovin/impl/adview/k$b;-><init>(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/k$b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/k$b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()J
    .locals 2

    iget-wide v0, p0, Lccsancom/applovin/impl/adview/k$b;->c:J

    return-wide v0
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/k$b;)Lccsancom/applovin/impl/adview/k$a;
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/k$b;->c()Lccsancom/applovin/impl/adview/k$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/k$b;)J
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/k$b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()Lccsancom/applovin/impl/adview/k$a;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k$b;->b:Lccsancom/applovin/impl/adview/k$a;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lccsancom/applovin/impl/adview/k$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lccsancom/applovin/impl/adview/k$b;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/k$b;->a:Ljava/lang/String;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/k$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/k$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountdownProxy{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/k$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", countdownStepMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/applovin/impl/adview/k$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
