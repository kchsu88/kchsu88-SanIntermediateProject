.class Lccsanokhttp3/internal/http2/Http2Connection$5;
.super Lccsanokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/http2/Http2Connection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lccsanokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/http2/Http2Connection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 928
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    iput-object p5, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lccsanokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 930
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lccsanokhttp3/internal/http2/Http2Connection;->pushObserver:Lccsanokhttp3/internal/http2/PushObserver;

    iget v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Lccsanokhttp3/internal/http2/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 932
    .local v0, "cancel":Z
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lccsanokhttp3/internal/http2/Http2Connection;->writer:Lccsanokhttp3/internal/http2/Http2Writer;

    iget v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    sget-object v3, Lccsanokhttp3/internal/http2/ErrorCode;->CANCEL:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lccsanokhttp3/internal/http2/Http2Writer;->rstStream(ILccsanokhttp3/internal/http2/ErrorCode;)V

    goto :goto_0

    .line 938
    :catch_0
    move-exception v1

    goto :goto_1

    .line 933
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$inFinished:Z

    if-eqz v1, :cond_2

    .line 934
    :cond_1
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :try_start_1
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->this$0:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lccsanokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v3, p0, Lccsanokhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v1

    .line 939
    :cond_2
    goto :goto_1

    .line 936
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cancel":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 940
    .restart local v0    # "cancel":Z
    :goto_1
    return-void
.end method
