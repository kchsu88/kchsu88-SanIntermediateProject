.class Lccsansan/k/IncentiveDownloadUtils$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/k/IncentiveDownloadUtils;->removeDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsansan/k/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3
    move-object p1, p2

    check-cast p1, Ljava/util/HashMap;

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    const-string p2, "statusCode"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void
.end method
