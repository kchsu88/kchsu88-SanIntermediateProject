.class final Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;
.super Ljava/lang/Object;
.source "BannerDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/util/a;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;->c:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/util/a;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/b/b;->b(Ljava/lang/String;Z)V

    .line 68
    :cond_0
    return-void
.end method
