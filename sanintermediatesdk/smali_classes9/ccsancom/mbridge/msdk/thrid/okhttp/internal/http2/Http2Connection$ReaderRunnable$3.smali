.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 813
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 815
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;->onSettings(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V

    .line 816
    return-void
.end method
