.class Lccsancom/applovin/impl/adview/q$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/q;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lccsancom/applovin/impl/adview/q;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/q;I)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q$6;->b:Lccsancom/applovin/impl/adview/q;

    iput p2, p0, Lccsancom/applovin/impl/adview/q$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$6;->b:Lccsancom/applovin/impl/adview/q;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$6;->b:Lccsancom/applovin/impl/adview/q;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lccsancom/applovin/impl/adview/q$6;->a:I

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method
