.class public Lccsancom/iab/omid/library/vungle/publisher/b;
.super Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;


# instance fields
.field private a:Lccsanandroid/webkit/WebView;

.field private b:Ljava/lang/Long;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/iab/omid/library/vungle/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/iab/omid/library/vungle/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->b:Ljava/lang/Long;

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->c:Ljava/util/Map;

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lccsancom/iab/omid/library/vungle/publisher/b;)Lccsanandroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->a:Lccsanandroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a()V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/publisher/b;->j()V

    return-void
.end method

.method public a(Lccsancom/iab/omid/library/vungle/adsession/a;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;)V
    .locals 5

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->getInjectedResourcesMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/iab/omid/library/vungle/adsession/VerificationScriptResource;

    invoke-static {v0, v3, v4}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lccsancom/iab/omid/library/vungle/publisher/b;->a(Lccsancom/iab/omid/library/vungle/adsession/a;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public b()V
    .locals 7

    invoke-super {p0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b()V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->b:Ljava/lang/Long;

    const-wide/16 v1, 0xfa0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lccsancom/iab/omid/library/vungle/d/d;->a()J

    move-result-wide v3

    iget-object v5, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    :goto_0
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Lccsanandroid/os/Handler;

    invoke-direct {v2}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v3, Lccsancom/iab/omid/library/vungle/publisher/b$1;

    invoke-direct {v3, p0}, Lccsancom/iab/omid/library/vungle/publisher/b$1;-><init>(Lccsancom/iab/omid/library/vungle/publisher/b;)V

    invoke-virtual {v2, v3, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->a:Lccsanandroid/webkit/WebView;

    return-void
.end method

.method j()V
    .locals 5

    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/d;->a()Lccsancom/iab/omid/library/vungle/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/b/d;->b()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->a:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->a:Lccsanandroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lccsancom/iab/omid/library/vungle/publisher/b;->a(Lccsanandroid/webkit/WebView;)V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/e;->a()Lccsancom/iab/omid/library/vungle/b/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->a:Lccsanandroid/webkit/WebView;

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/iab/omid/library/vungle/b/e;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/iab/omid/library/vungle/adsession/VerificationScriptResource;

    invoke-virtual {v2}, Lccsancom/iab/omid/library/vungle/adsession/VerificationScriptResource;->getResourceUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/e;->a()Lccsancom/iab/omid/library/vungle/b/e;

    move-result-object v3

    iget-object v4, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->a:Lccsanandroid/webkit/WebView;

    invoke-virtual {v3, v4, v2, v1}, Lccsancom/iab/omid/library/vungle/b/e;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/iab/omid/library/vungle/d/d;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/publisher/b;->b:Ljava/lang/Long;

    return-void
.end method
