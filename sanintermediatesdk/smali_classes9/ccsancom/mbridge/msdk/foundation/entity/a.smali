.class public final Lccsancom/mbridge/msdk/foundation/entity/a;
.super Ljava/lang/Object;
.source "AtfEntity.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/a;->a:I

    .line 9
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/entity/a;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 13
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/a;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/a;->b:Ljava/lang/String;

    return-object v0
.end method
