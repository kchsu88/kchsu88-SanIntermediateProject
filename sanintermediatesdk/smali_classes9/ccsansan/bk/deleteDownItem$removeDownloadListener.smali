.class Lccsansan/bk/deleteDownItem$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/bk/deleteDownItem;


# direct methods
.method constructor <init>(Lccsansan/bk/deleteDownItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bk/deleteDownItem$removeDownloadListener;->unifiedDownload:Lccsansan/bk/deleteDownItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bk/deleteDownItem$removeDownloadListener;->unifiedDownload:Lccsansan/bk/deleteDownItem;

    invoke-virtual {v0}, Lccsansan/bk/deleteDownItem;->unifiedDownload()V

    return-void
.end method
