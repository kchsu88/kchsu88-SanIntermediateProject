.class final Lccsancom/applovin/impl/sdk/utils/i$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxAdRevenueListener;

.field final synthetic b:Lccsancom/applovin/mediation/MaxAd;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$13;->a:Lccsancom/applovin/mediation/MaxAdRevenueListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$13;->b:Lccsancom/applovin/mediation/MaxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$13;->a:Lccsancom/applovin/mediation/MaxAdRevenueListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$13;->b:Lccsancom/applovin/mediation/MaxAd;

    invoke-interface {v0, v1}, Lccsancom/applovin/mediation/MaxAdRevenueListener;->onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about ad revenue being paid"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
