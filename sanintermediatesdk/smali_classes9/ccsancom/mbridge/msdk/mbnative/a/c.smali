.class public final Lccsancom/mbridge/msdk/mbnative/a/c;
.super Ljava/lang/Object;
.source "NativeCacheFactory.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lccsancom/mbridge/msdk/mbnative/a/b<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/a/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(I)Lccsancom/mbridge/msdk/mbnative/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/mbridge/msdk/mbnative/a/b<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;>;"
        }
    .end annotation

    .line 16
    nop

    .line 17
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/a/c;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/a/c;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/mbnative/a/b;

    return-object p0

    .line 20
    :cond_0
    nop

    .line 24
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/a/a;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbnative/a/a;-><init>(I)V

    .line 27
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/a/c;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-object v0
.end method
