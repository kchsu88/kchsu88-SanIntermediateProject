.class Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->source(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

.field final synthetic val$source:Lccsancom/mbridge/msdk/thrid/okio/Source;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;Lccsancom/mbridge/msdk/thrid/okio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 232
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "throwOnTimeout":Z
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    .line 256
    throw v1
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 4
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    .line 237
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-interface {v1, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .local v1, "result":J
    const/4 v0, 0x1

    .line 239
    nop

    .line 243
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    .line 239
    return-wide v1

    .line 243
    .end local v1    # "result":J
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p1    # "sink":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .end local p2    # "byteCount":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p1    # "sink":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit(Z)V

    .line 244
    throw v1
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->this$0:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;->val$source:Lccsancom/mbridge/msdk/thrid/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
