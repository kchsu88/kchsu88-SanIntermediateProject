.class final Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;
.super Lccsanokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PingRunnable"
.end annotation


# instance fields
.field final payload1:I

.field final payload2:I

.field final reply:Z

.field final synthetic this$0:Lccsanokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/http2/Http2Connection;ZII)V
    .locals 3
    .param p1, "this$0"    # Lccsanokhttp3/internal/http2/Http2Connection;
    .param p2, "reply"    # Z
    .param p3, "payload1"    # I
    .param p4, "payload2"    # I

    .line 374
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    .line 375
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Lccsanokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, v1, v0}, Lccsanokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    iput-boolean p2, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    .line 377
    iput p3, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    .line 378
    iput p4, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    .line 379
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 382
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iget v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iget v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    invoke-virtual {v0, v1, v2, v3}, Lccsanokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 383
    return-void
.end method
