.class public Lccsansan/co/IncentiveSDK$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final unifiedDownload:Lccsanorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/co/IncentiveSDK$1;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/IncentiveSDK$1;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "HTMLResource"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/IncentiveSDK$1;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    .line 2
    const-string v1, "creativeType"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method removeDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/IncentiveSDK$1;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "IFrameResource"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/IncentiveSDK$1;->unifiedDownload:Lccsanorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
