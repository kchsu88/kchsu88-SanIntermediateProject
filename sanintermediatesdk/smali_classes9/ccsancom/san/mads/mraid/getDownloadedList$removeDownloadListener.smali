.class Lccsancom/san/mads/mraid/getDownloadedList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/getDownloadedList;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Bundle;Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedList;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedList;

    invoke-static {p1}, Lccsancom/san/mads/mraid/getDownloadedList;->addDownloadListener(Lccsancom/san/mads/mraid/getDownloadedList;)Lccsanandroid/widget/ImageButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsanandroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedList;

    invoke-virtual {p1, p2}, Lccsancom/san/mads/mraid/unifiedDownload;->getDownloadingList(Z)V

    return p2
.end method
