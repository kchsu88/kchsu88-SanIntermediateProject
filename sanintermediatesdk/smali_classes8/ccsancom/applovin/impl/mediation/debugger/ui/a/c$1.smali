.class Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, ""

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected c(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->a(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
