.class public final Lccsancom/mbridge/msdk/mbbanner/common/c/c;
.super Ljava/lang/Object;
.source "BannerShowManager.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private A:Lccsanandroid/view/View$OnClickListener;

.field private B:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

.field private C:Lccsancom/mbridge/msdk/mbsignalcommon/b/b;

.field a:Lccsancom/mbridge/msdk/click/a;

.field private c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

.field private d:Z

.field private e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private f:Lccsancom/mbridge/msdk/out/MBBannerView;

.field private g:Lccsanandroid/widget/ImageView;

.field private h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

.field private i:Lccsanandroid/widget/ImageView;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:J

.field private v:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

.field private w:Lccsanandroid/os/Handler;

.field private x:Lccsancom/mbridge/msdk/foundation/same/e/a;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "BannerShowManager"

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/out/MBBannerView;Lccsancom/mbridge/msdk/mbbanner/common/b/c;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/b/d;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->u:J

    .line 84
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->w:Lccsanandroid/os/Handler;

    .line 96
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$4;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$4;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->x:Lccsancom/mbridge/msdk/foundation/same/e/a;

    .line 114
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$5;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$5;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->A:Lccsanandroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$6;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->B:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 762
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->C:Lccsancom/mbridge/msdk/mbsignalcommon/b/b;

    .line 196
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d:Z

    .line 197
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 198
    iput-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->r:Ljava/lang/String;

    .line 200
    new-instance p1, Lccsancom/mbridge/msdk/mbbanner/common/b/g;

    invoke-direct {p1, p2, p6}, Lccsancom/mbridge/msdk/mbbanner/common/b/g;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/b/c;Lccsancom/mbridge/msdk/b/d;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    .line 201
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;F)F
    .locals 0

    .line 60
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->y:F

    return p1
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 626
    if-eqz p1, :cond_0

    .line 627
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 629
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 630
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    goto :goto_0

    .line 634
    :catchall_0
    move-exception p1

    .line 635
    sget-object p2, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_0
    nop

    .line 637
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 397
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->w:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->x:Lccsancom/mbridge/msdk/foundation/same/e/a;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a(Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/d;->b(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 749
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 750
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->e(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->g(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a(I)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a(Z)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    .line 751
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/d/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/a/a;Ljava/lang/String;)V

    .line 753
    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->p:Z

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->o:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;F)F
    .locals 0

    .line 60
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->z:F

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;
    .locals 4

    .line 366
    nop

    .line 367
    const-string v0, ""

    if-eqz p1, :cond_5

    .line 368
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result p1

    const-string v2, "file:////"

    if-eqz p1, :cond_2

    .line 372
    nop

    .line 374
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    nop

    .line 384
    goto :goto_0

    .line 379
    :catch_0
    move-exception p1

    .line 380
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 385
    :cond_1
    move-object v0, v1

    :goto_0
    goto :goto_1

    .line 386
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 393
    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 369
    :cond_4
    move-object v0, v1

    .line 393
    :cond_5
    :goto_1
    return-object v0
.end method

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 641
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 644
    :catchall_0
    move-exception p1

    .line 645
    sget-object p2, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :cond_0
    :goto_0
    nop

    .line 647
    :goto_1
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 4

    .line 60
    nop

    .line 6506
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6507
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeView(Lccsanandroid/view/View;)V

    .line 6509
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6510
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 6511
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeView(Lccsanandroid/view/View;)V

    .line 6513
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6514
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeView(Lccsanandroid/view/View;)V

    .line 6515
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 6518
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->e(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->f(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a(Z)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object v0

    .line 6519
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    .line 7168
    if-eqz v0, :cond_4

    .line 7169
    const-string v2, "2000069"

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    .line 7170
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7171
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7173
    :cond_3
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 6520
    :cond_4
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->inserCloseId(Ljava/lang/String;Ljava/util/List;)V

    .line 6521
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz p0, :cond_5

    .line 6522
    invoke-interface {p0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->e()V

    .line 60
    :cond_5
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->l:Z

    return p1
.end method

.method private c()V
    .locals 3

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeView(Lccsanandroid/view/View;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    .line 296
    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v1

    new-instance v2, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    invoke-virtual {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    goto :goto_0

    .line 338
    :cond_2
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;)V

    .line 340
    :goto_0
    goto :goto_1

    .line 341
    :cond_3
    const-string v0, "banner show failed because banner view is exception"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;)V

    .line 343
    :goto_1
    return-void
.end method

.method private c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 650
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c$11;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$11;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 663
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 664
    const/4 v6, 0x0

    .line 665
    const/4 v7, 0x1

    .line 666
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 668
    :cond_0
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->k()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    const/4 v5, 0x0

    .line 670
    const/4 v6, 0x0

    .line 671
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->k()[Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 673
    :cond_1
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 2

    .line 60
    nop

    .line 7564
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7565
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 7566
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 7567
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7568
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeView(Lccsanandroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->n:Z

    return p1
.end method

.method private d()V
    .locals 24

    .line 416
    move-object/from16 v1, p0

    const-string v2, "true"

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->l:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->m:Z

    if-nez v0, :cond_0

    .line 417
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 418
    iput-boolean v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->m:Z

    .line 419
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->w:Lccsanandroid/os/Handler;

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->x:Lccsancom/mbridge/msdk/foundation/same/e/a;

    invoke-virtual {v0, v4}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallbacked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCallbacked(Z)V

    .line 422
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a(Ljava/util/List;)V

    .line 423
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v4

    iget-object v5, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;ILjava/lang/String;)V

    .line 428
    :cond_0
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->l:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->j:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->k:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->m:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_f

    .line 429
    nop

    .line 3407
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 3408
    goto :goto_0

    .line 3411
    :cond_1
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/z;->a(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->o:Z

    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 429
    :goto_1
    nop

    .line 431
    const-wide/16 v6, 0x3e8

    if-nez v5, :cond_3

    .line 432
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_3

    .line 433
    new-instance v8, Lccsancom/mbridge/msdk/mbbanner/common/c/c$10;

    invoke-direct {v8, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$10;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    invoke-virtual {v0, v8, v6, v7}, Lccsancom/mbridge/msdk/out/MBBannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :cond_3
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->n:Z

    if-eqz v0, :cond_6

    if-eqz v5, :cond_6

    .line 443
    const/4 v8, 0x2

    new-array v9, v8, [I

    .line 444
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/out/MBBannerView;->getLocationInWindow([I)V

    .line 445
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    aget v10, v9, v4

    int-to-float v10, v10

    aget v11, v9, v3

    int-to-float v11, v11

    .line 4027
    const-string v12, "BannerCallJS"

    const-string v13, "fireOnBannerWebViewShow"

    invoke-static {v12, v13}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    :try_start_0
    new-instance v14, Lccsanorg/json/JSONObject;

    invoke-direct {v14}, Lccsanorg/json/JSONObject;-><init>()V

    .line 4031
    const-string v15, "startX"

    float-to-double v6, v10

    invoke-virtual {v14, v15, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 4032
    const-string v6, "startY"

    float-to-double v10, v11

    invoke-virtual {v14, v6, v10, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 4033
    const-string v6, "scale"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v7

    float-to-double v10, v7

    invoke-virtual {v14, v6, v10, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 4034
    invoke-virtual {v14}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v8}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 4035
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v7

    const-string v10, "webviewshow"

    invoke-virtual {v7, v0, v10, v6}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4038
    goto :goto_2

    .line 4036
    :catchall_0
    move-exception v0

    .line 4037
    invoke-static {v12, v13, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    :goto_2
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    aget v6, v9, v4

    aget v7, v9, v3

    iget-object v9, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 447
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/out/MBBannerView;->getWidth()I

    move-result v9

    iget-object v10, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/out/MBBannerView;->getHeight()I

    move-result v10

    .line 446
    nop

    .line 4061
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v11

    .line 4062
    invoke-virtual {v11}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 4063
    new-instance v13, Lccsanorg/json/JSONObject;

    invoke-direct {v13}, Lccsanorg/json/JSONObject;-><init>()V

    .line 4065
    const-string v14, "orientation"

    .line 4066
    if-ne v11, v8, :cond_4

    const-string v8, "landscape"

    goto :goto_3

    :cond_4
    if-ne v11, v3, :cond_5

    const-string v8, "portrait"

    goto :goto_3

    :cond_5
    const-string v8, "undefined"

    .line 4065
    :goto_3
    invoke-virtual {v13, v14, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4067
    const-string v8, "locked"

    invoke-virtual {v13, v8, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4069
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 4070
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v11

    int-to-float v11, v11

    .line 4072
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v14

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lccsancom/mbridge/msdk/foundation/tools/m;->j(Lccsanandroid/content/Context;)Ljava/util/HashMap;

    move-result-object v14

    .line 4073
    const-string v15, "width"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4074
    const-string v3, "height"

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4076
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 4077
    const-string v4, "placementType"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v23, v5

    :try_start_2
    const-string v5, "inline"

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    const-string v4, "state"

    const-string v5, "default"

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    const-string v4, "viewable"

    invoke-virtual {v14, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    const-string v2, "currentAppOrientation"

    invoke-virtual {v14, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4082
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v16

    int-to-float v2, v6

    int-to-float v4, v7

    int-to-float v5, v9

    int-to-float v6, v10

    move-object/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;FFFF)V

    .line 4083
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v16

    move-object/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;FFFF)V

    .line 4084
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    invoke-virtual {v2, v0, v8, v11}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;FF)V

    .line 4085
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    int-to-float v4, v15

    int-to-float v3, v3

    invoke-virtual {v2, v0, v4, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;FF)V

    .line 4086
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    invoke-virtual {v2, v0, v14}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/util/Map;)V

    .line 4087
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4090
    goto :goto_5

    .line 4088
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move/from16 v23, v5

    .line 4089
    :goto_4
    const-string v2, "transInfoForMraid"

    invoke-static {v12, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    :goto_5
    const/4 v2, 0x0

    iput-boolean v2, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->n:Z

    goto :goto_6

    .line 442
    :cond_6
    move/from16 v23, v5

    .line 451
    :goto_6
    if-eqz v23, :cond_e

    .line 452
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    const-string v2, "banner"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 453
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_c

    .line 454
    nop

    .line 4617
    if-eqz v0, :cond_7

    .line 4618
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 4619
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 4620
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 455
    :cond_7
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 456
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 459
    :cond_8
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 460
    nop

    .line 461
    nop

    .line 463
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x0

    :goto_7
    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_b

    .line 464
    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result v3

    if-nez v3, :cond_a

    .line 465
    if-eqz v4, :cond_9

    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v3

    if-nez v3, :cond_a

    .line 466
    :cond_9
    nop

    .line 467
    nop

    .line 468
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v5}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 469
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 470
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    move v0, v4

    const/16 v22, 0x1

    .line 463
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 475
    :cond_b
    if-eqz v22, :cond_c

    .line 476
    iget-object v2, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 477
    iget-object v2, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 482
    :cond_c
    :goto_8
    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->p:Z

    .line 484
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_d

    .line 485
    iget-object v2, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 488
    :cond_d
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->w:Lccsanandroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 489
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 491
    :cond_e
    iget-object v0, v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 494
    :cond_f
    :goto_9
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f()V

    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d()V

    return-void
.end method

.method private declared-synchronized e()Z
    .locals 3

    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v0

    .line 499
    if-nez v0, :cond_0

    .line 500
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_0
    monitor-exit p0

    return v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 4

    .line 547
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->A:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_1

    .line 554
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 555
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 556
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 557
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 561
    :cond_1
    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c()V

    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    return-object p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)F
    .locals 0

    .line 60
    iget p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->y:F

    return p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)F
    .locals 0

    .line 60
    iget p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->z:F

    return p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsanandroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 3

    .line 60
    nop

    .line 8527
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 8528
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_0

    .line 8529
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setVisibility(I)V

    .line 8531
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8532
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 8535
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_2

    .line 8536
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8537
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8538
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    sget-object v2, Lccsanandroid/widget/ImageView$ScaleType;->FIT_XY:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 8539
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8540
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, p0, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 574
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 575
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    .line 577
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 580
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->C:Lccsancom/mbridge/msdk/mbsignalcommon/b/b;

    if-eqz v0, :cond_2

    .line 581
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->C:Lccsancom/mbridge/msdk/mbsignalcommon/b/b;

    .line 583
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 586
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 587
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 589
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_5

    .line 590
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->removeAllViews()V

    .line 592
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-eqz v0, :cond_6

    .line 593
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->release()V

    .line 595
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->v:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    if-eqz v0, :cond_7

    .line 596
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->a()V

    .line 598
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->B:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v0, :cond_8

    .line 599
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->B:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 601
    :cond_8
    return-void
.end method

.method public final a(IIII)V
    .locals 2

    .line 756
    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 757
    return-void

    .line 759
    :cond_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 6042
    const-string p4, "BannerCallJS"

    const-string v0, "fireOnBannerViewSizeChange"

    invoke-static {p4, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6045
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p3, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6048
    goto :goto_0

    .line 6046
    :catchall_0
    move-exception p1

    .line 6047
    invoke-static {p4, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 760
    :goto_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 7

    .line 676
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->p:Z

    if-nez v0, :cond_0

    .line 677
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a:Lccsancom/mbridge/msdk/click/a;

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Lccsancom/mbridge/msdk/click/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a:Lccsancom/mbridge/msdk/click/a;

    .line 683
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a:Lccsancom/mbridge/msdk/click/a;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/c/c$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c$2;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 736
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 738
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 739
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    .line 740
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 5180
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->g()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5181
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->g()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 743
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz p1, :cond_3

    .line 744
    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a()V

    .line 746
    :cond_3
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 9

    .line 221
    nop

    .line 1355
    nop

    .line 1356
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    .line 1358
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1359
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_0

    .line 1362
    :cond_0
    const/4 p1, 0x0

    :goto_0
    nop

    .line 221
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 222
    if-nez p1, :cond_1

    .line 223
    const-string p1, "banner show failed because campain is exception"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;)V

    .line 224
    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->w:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->x:Lccsancom/mbridge/msdk/foundation/same/e/a;

    invoke-virtual {p1, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    nop

    .line 2346
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d:Z

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    if-nez p1, :cond_2

    .line 2347
    new-instance p1, Lccsanandroid/widget/ImageView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    .line 2348
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "ccsan_mbridge_banner_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2349
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 2350
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->i:Lccsanandroid/widget/ImageView;

    const-string v2, "closeButton"

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    :cond_2
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->l:Z

    .line 229
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->m:Z

    .line 230
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->p:Z

    .line 232
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 233
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->e(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a(Z)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    move-result-object p1

    .line 234
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    .line 3145
    if-eqz p1, :cond_5

    .line 3146
    const-string v3, "2000067"

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    .line 3147
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3148
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 3150
    :cond_4
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 237
    :cond_5
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->w:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->x:Lccsancom/mbridge/msdk/foundation/same/e/a;

    iget-wide v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->u:J

    invoke-virtual {p1, v2, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    nop

    .line 3247
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    move-result-object v4

    .line 3248
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v8, 0x2

    if-nez p1, :cond_c

    .line 3249
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz p1, :cond_b

    .line 3250
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    if-nez p1, :cond_6

    .line 3251
    new-instance p1, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    .line 3252
    new-instance v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 3254
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    new-instance v2, Lccsancom/mbridge/msdk/mbbanner/view/a;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->B:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    invoke-direct {v2, v3, v5, v6}, Lccsancom/mbridge/msdk/mbbanner/view/a;-><init>(Ljava/lang/String;Ljava/util/List;Lccsancom/mbridge/msdk/mbbanner/common/b/a;)V

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 3256
    :cond_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 3257
    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 3259
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 3260
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setVisibility(I)V

    .line 3262
    :cond_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_9

    .line 3263
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->addView(Lccsanandroid/view/View;)V

    .line 3266
    :cond_9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f()V

    .line 3268
    new-instance p1, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->f:Lccsancom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->r:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->v:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    .line 3269
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->s:Ljava/util/List;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->a(Ljava/util/List;)V

    .line 3270
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->v:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->B:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/a;)V

    .line 3271
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->v:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->t:I

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->a(I)V

    .line 3272
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->C:Lccsancom/mbridge/msdk/mbsignalcommon/b/b;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 3273
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->v:Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->setObject(Ljava/lang/Object;)V

    .line 3274
    const-string p1, "file"

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 3275
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3277
    :cond_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h:Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/mbbanner/view/MBBannerWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 3280
    :cond_b
    const-string p1, "banner render failed because banner view is null"

    invoke-direct {p0, p1, v8}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;I)V

    .line 3281
    const-string p1, "banner show failed because banner view is exception"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;)V

    .line 3283
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    .line 3285
    :cond_c
    nop

    .line 238
    :goto_3
    if-nez v0, :cond_f

    .line 239
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 240
    :cond_d
    const-string p1, "banner render failed because res load failed"

    invoke-direct {p0, p1, v8}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Ljava/lang/String;I)V

    .line 242
    :cond_e
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c()V

    .line 244
    :cond_f
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d:Z

    .line 218
    return-void
.end method

.method public final a(ZI)V
    .locals 2

    .line 204
    iput p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->t:I

    .line 205
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 206
    goto :goto_0

    .line 208
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    .line 209
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 210
    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->c()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d:Z

    .line 214
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 7

    .line 604
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->j:Z

    .line 605
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d()V

    .line 606
    if-nez p1, :cond_0

    .line 607
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->q:Ljava/lang/String;

    .line 5088
    if-eqz p1, :cond_0

    .line 5089
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5090
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5091
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 5092
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    .line 5093
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    .line 5092
    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5094
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/c;->b(Ljava/lang/String;)V

    .line 609
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 612
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->k:Z

    .line 613
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d()V

    .line 614
    return-void
.end method
