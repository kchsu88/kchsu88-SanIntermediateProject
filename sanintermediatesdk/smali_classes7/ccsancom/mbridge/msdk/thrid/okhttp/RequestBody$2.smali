.class final Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;
.super Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;->create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;[BII)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;I[BI)V
    .locals 0

    .line 88
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$contentType:Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    iput p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$content:[B

    iput p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 94
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$contentType:Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$content:[B

    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$offset:I

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->write([BII)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 99
    return-void
.end method
