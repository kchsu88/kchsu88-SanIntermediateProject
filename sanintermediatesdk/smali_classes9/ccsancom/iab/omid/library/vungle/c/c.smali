.class public Lccsancom/iab/omid/library/vungle/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/iab/omid/library/vungle/c/a;


# instance fields
.field private final a:Lccsancom/iab/omid/library/vungle/c/a;


# direct methods
.method public constructor <init>(Lccsancom/iab/omid/library/vungle/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/c/c;->a:Lccsancom/iab/omid/library/vungle/c/a;

    return-void
.end method


# virtual methods
.method a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/b/a;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v2}, Lccsancom/iab/omid/library/vungle/adsession/a;->d()Lccsanandroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lccsancom/iab/omid/library/vungle/d/f;->c(Lccsanandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lccsancom/iab/omid/library/vungle/d/f;->a(Lccsanandroid/view/View;)F

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-lez v5, :cond_1

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/view/View;

    invoke-static {v6}, Lccsancom/iab/omid/library/vungle/d/f;->a(Lccsanandroid/view/View;)F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(Lccsanandroid/view/View;)Lccsanorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Lccsancom/iab/omid/library/vungle/d/b;->a(IIII)Lccsanorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lccsanandroid/view/View;Lccsanorg/json/JSONObject;Lccsancom/iab/omid/library/vungle/c/a$a;Z)V
    .locals 1

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/c/c;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lccsanandroid/view/View;

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/c/c;->a:Lccsancom/iab/omid/library/vungle/c/a;

    invoke-interface {p3, p4, v0, p2}, Lccsancom/iab/omid/library/vungle/c/a$a;->a(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/c/a;Lccsanorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method
