.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 360
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    iput p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->val$streamId:I

    iput-wide p5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 363
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->writer:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Writer;

    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->val$streamId:I

    iget-wide v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Writer;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$2;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->access$000(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
