.class public final Lccsancom/mbridge/msdk/foundation/same/d/a;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->a:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->c:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->b:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/same/d/a;->c:J

    return-wide v0
.end method
