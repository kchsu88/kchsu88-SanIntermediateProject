.class Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 57
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 60
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->cleanup(J)J

    move-result-wide v0

    .line 61
    .local v0, "waitNanos":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 62
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 63
    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 64
    .local v4, "waitMillis":J
    mul-long v2, v2, v4

    sub-long v2, v0, v2

    .line 65
    .end local v0    # "waitNanos":J
    .local v2, "waitNanos":J
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    monitor-enter v6

    .line 67
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    long-to-int v1, v2

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 70
    :goto_1
    :try_start_1
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 72
    .end local v2    # "waitNanos":J
    .end local v4    # "waitMillis":J
    :cond_1
    :goto_3
    goto :goto_0
.end method
