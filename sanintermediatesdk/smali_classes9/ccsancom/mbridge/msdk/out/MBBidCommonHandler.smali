.class public abstract Lccsancom/mbridge/msdk/out/MBBidCommonHandler;
.super Ljava/lang/Object;
.source "MBBidCommonHandler.java"


# instance fields
.field protected context:Lccsanandroid/content/Context;

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidCommonHandler;->properties:Ljava/util/Map;

    .line 14
    iput-object p2, p0, Lccsancom/mbridge/msdk/out/MBBidCommonHandler;->context:Lccsanandroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract bidLoad(Ljava/lang/String;)V
.end method

.method public abstract bidRelease()V
.end method
