.class final Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.java"

# interfaces
.implements Lccsanokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

.field private final timeout:Lccsanokio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)V
    .locals 1

    .line 348
    iput-object p1, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Lccsanokio/ForwardingTimeout;

    invoke-static {p1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lccsanokio/BufferedSink;->timeout()Lccsanokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsanokio/ForwardingTimeout;-><init>(Lccsanokio/Timeout;)V

    iput-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->timeout:Lccsanokio/ForwardingTimeout;

    .line 349
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 372
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->closed:Z

    .line 373
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    .line 374
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v1, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->timeout:Lccsanokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$300(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;Lccsanokio/ForwardingTimeout;)V

    .line 375
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$402(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 370
    .end local p0    # "this":Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 367
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lccsanokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 365
    .end local p0    # "this":Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 352
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->timeout:Lccsanokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 3
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-boolean v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->closed:Z

    if-nez v0, :cond_1

    .line 357
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lccsanokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lccsanokio/BufferedSink;

    .line 360
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    .line 361
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsanokio/BufferedSink;->write(Lccsanokio/Buffer;J)V

    .line 362
    iget-object v0, p0, Lccsanokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->this$0:Lccsanokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lccsanokhttp3/internal/http1/Http1ExchangeCodec;->access$200(Lccsanokhttp3/internal/http1/Http1ExchangeCodec;)Lccsanokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v1}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    .line 363
    return-void

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
