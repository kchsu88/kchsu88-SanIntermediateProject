.class final Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;
.super Ljava/lang/Object;
.source "VideoCommunication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->openURL(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;->c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;->a:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;->c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;->a:Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$11;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->s(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    return-void
.end method
