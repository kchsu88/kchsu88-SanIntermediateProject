.class Lccsancom/applovin/impl/adview/activity/b/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/f;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lccsancom/applovin/impl/adview/activity/b/f;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;ZJ)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->c:Lccsancom/applovin/impl/adview/activity/b/f;

    iput-boolean p2, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->a:Z

    iput-wide p3, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->c:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->c(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/v;

    move-result-object v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->b:J

    invoke-static {v0, v2, v3, v1}, Lccsancom/applovin/impl/sdk/utils/o;->a(Lccsanandroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->c:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->c(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/v;

    move-result-object v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/f$5;->b:J

    invoke-static {v0, v2, v3, v1}, Lccsancom/applovin/impl/sdk/utils/o;->b(Lccsanandroid/view/View;JLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method
