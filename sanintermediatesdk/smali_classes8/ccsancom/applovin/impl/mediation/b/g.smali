.class public Lccsancom/applovin/impl/mediation/b/g;
.super Lccsancom/applovin/impl/sdk/e/aa;


# instance fields
.field private final a:Lccsancom/applovin/impl/mediation/a/c;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskValidateMaxReward"

    invoke-direct {p0, v0, p2}, Lccsancom/applovin/impl/sdk/e/aa;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/mvr"

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    invoke-super {p0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const-string p1, "rejected"

    goto :goto_0

    :cond_0
    const-string p1, "network_timeout"

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/a/c;->a(Lccsancom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method protected a(Lccsancom/applovin/impl/sdk/b/c;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/a/c;->a(Lccsancom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method protected a(Lccsanorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getPlacement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_MCODE"

    :goto_0
    const-string v1, "mcode"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "NO_BCODE"

    :goto_1
    const-string v1, "bcode"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/g;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->z()Z

    move-result v0

    return v0
.end method
