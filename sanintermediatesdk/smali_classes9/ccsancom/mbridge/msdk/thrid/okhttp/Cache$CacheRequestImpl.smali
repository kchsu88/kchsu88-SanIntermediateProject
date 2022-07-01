.class final Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lccsancom/mbridge/msdk/thrid/okio/Sink;

.field private cacheOut:Lccsancom/mbridge/msdk/thrid/okio/Sink;

.field done:Z

.field private final editor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V
    .locals 2
    .param p2, "editor"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    .line 440
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->editor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->newSink(I)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->cacheOut:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 443
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;Lccsancom/mbridge/msdk/thrid/okio/Sink;Lccsancom/mbridge/msdk/thrid/okhttp/Cache;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->body:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 456
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    .line 459
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    .line 461
    monitor-exit v0

    return-void

    .line 463
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 464
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    iget v3, v2, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->writeAbortCount:I

    .line 465
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->cacheOut:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 468
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->editor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 471
    :goto_0
    return-void

    .line 465
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public body()Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 1

    .line 474
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;->body:Lccsancom/mbridge/msdk/thrid/okio/Sink;

    return-object v0
.end method
