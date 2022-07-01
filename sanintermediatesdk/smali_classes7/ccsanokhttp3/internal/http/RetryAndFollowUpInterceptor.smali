.class public final Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lccsanokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lccsanokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    .line 69
    return-void
.end method

.method private followUpRequest(Lccsanokhttp3/Response;Lccsanokhttp3/Route;)Lccsanokhttp3/Request;
    .locals 10
    .param p1, "userResponse"    # Lccsanokhttp3/Response;
    .param p2, "route"    # Lccsanokhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    if-eqz p1, :cond_11

    .line 216
    invoke-virtual {p1}, Lccsanokhttp3/Response;->code()I

    move-result v0

    .line 218
    .local v0, "responseCode":I
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "method":Ljava/lang/String;
    const-string v2, "GET"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 325
    return-object v3

    .line 311
    :sswitch_0
    invoke-virtual {p1}, Lccsanokhttp3/Response;->priorResponse()Lccsanokhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {p1}, Lccsanokhttp3/Response;->priorResponse()Lccsanokhttp3/Response;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/Response;->code()I

    move-result v2

    const/16 v4, 0x1f7

    if-ne v2, v4, :cond_0

    .line 314
    return-object v3

    .line 317
    :cond_0
    const v2, 0x7fffffff

    invoke-direct {p0, p1, v2}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lccsanokhttp3/Response;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 319
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 322
    :cond_1
    return-object v3

    .line 288
    :sswitch_1
    iget-object v2, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v2

    if-nez v2, :cond_2

    .line 290
    return-object v3

    .line 293
    :cond_2
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v2

    .line 294
    .local v2, "requestBody":Lccsanokhttp3/RequestBody;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lccsanokhttp3/RequestBody;->isOneShot()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    return-object v3

    .line 298
    :cond_3
    invoke-virtual {p1}, Lccsanokhttp3/Response;->priorResponse()Lccsanokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 299
    invoke-virtual {p1}, Lccsanokhttp3/Response;->priorResponse()Lccsanokhttp3/Response;

    move-result-object v4

    invoke-virtual {v4}, Lccsanokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x198

    if-ne v4, v5, :cond_4

    .line 301
    return-object v3

    .line 304
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lccsanokhttp3/Response;I)I

    move-result v4

    if-lez v4, :cond_5

    .line 305
    return-object v3

    .line 308
    :cond_5
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v3

    return-object v3

    .line 221
    .end local v2    # "requestBody":Lccsanokhttp3/RequestBody;
    :sswitch_2
    if-eqz p2, :cond_6

    .line 222
    invoke-virtual {p2}, Lccsanokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    goto :goto_0

    .line 223
    :cond_6
    iget-object v2, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v2

    :goto_0
    nop

    .line 224
    .local v2, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_7

    .line 227
    iget-object v3, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lccsanokhttp3/OkHttpClient;->proxyAuthenticator()Lccsanokhttp3/Authenticator;

    move-result-object v3

    invoke-interface {v3, p2, p1}, Lccsanokhttp3/Authenticator;->authenticate(Lccsanokhttp3/Route;Lccsanokhttp3/Response;)Lccsanokhttp3/Request;

    move-result-object v3

    return-object v3

    .line 225
    :cond_7
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v2    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_3
    iget-object v2, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->authenticator()Lccsanokhttp3/Authenticator;

    move-result-object v2

    invoke-interface {v2, p2, p1}, Lccsanokhttp3/Authenticator;->authenticate(Lccsanokhttp3/Route;Lccsanokhttp3/Response;)Lccsanokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 236
    :sswitch_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "HEAD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 237
    return-object v3

    .line 245
    :cond_8
    :sswitch_5
    iget-object v4, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lccsanokhttp3/OkHttpClient;->followRedirects()Z

    move-result v4

    if-nez v4, :cond_9

    return-object v3

    .line 247
    :cond_9
    const-string v4, "Location"

    invoke-virtual {p1, v4}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "location":Ljava/lang/String;
    if-nez v4, :cond_a

    return-object v3

    .line 249
    :cond_a
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lccsanokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v5

    .line 252
    .local v5, "url":Lccsanokhttp3/HttpUrl;
    if-nez v5, :cond_b

    return-object v3

    .line 255
    :cond_b
    invoke-virtual {v5}, Lccsanokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lccsanokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 256
    .local v6, "sameScheme":Z
    if-nez v6, :cond_c

    iget-object v7, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v7}, Lccsanokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v7

    if-nez v7, :cond_c

    return-object v3

    .line 259
    :cond_c
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lccsanokhttp3/Request;->newBuilder()Lccsanokhttp3/Request$Builder;

    move-result-object v7

    .line 260
    .local v7, "requestBuilder":Lccsanokhttp3/Request$Builder;
    invoke-static {v1}, Lccsanokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 261
    invoke-static {v1}, Lccsanokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v8

    .line 262
    .local v8, "maintainBody":Z
    invoke-static {v1}, Lccsanokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 263
    invoke-virtual {v7, v2, v3}, Lccsanokhttp3/Request$Builder;->method(Ljava/lang/String;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/Request$Builder;

    goto :goto_1

    .line 265
    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v3

    :cond_e
    move-object v2, v3

    .line 266
    .local v2, "requestBody":Lccsanokhttp3/RequestBody;
    invoke-virtual {v7, v1, v2}, Lccsanokhttp3/Request$Builder;->method(Ljava/lang/String;Lccsanokhttp3/RequestBody;)Lccsanokhttp3/Request$Builder;

    .line 268
    .end local v2    # "requestBody":Lccsanokhttp3/RequestBody;
    :goto_1
    if-nez v8, :cond_f

    .line 269
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v7, v2}, Lccsanokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 270
    const-string v2, "Content-Length"

    invoke-virtual {v7, v2}, Lccsanokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 271
    const-string v2, "Content-Type"

    invoke-virtual {v7, v2}, Lccsanokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 278
    .end local v8    # "maintainBody":Z
    :cond_f
    invoke-virtual {p1}, Lccsanokhttp3/Response;->request()Lccsanokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v2

    invoke-static {v2, v5}, Lccsanokhttp3/internal/Util;->sameConnection(Lccsanokhttp3/HttpUrl;Lccsanokhttp3/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 279
    const-string v2, "Authorization"

    invoke-virtual {v7, v2}, Lccsanokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 282
    :cond_10
    invoke-virtual {v7, v5}, Lccsanokhttp3/Request$Builder;->url(Lccsanokhttp3/HttpUrl;)Lccsanokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v2

    return-object v2

    .line 215
    .end local v0    # "responseCode":I
    .end local v1    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "url":Lccsanokhttp3/HttpUrl;
    .end local v6    # "sameScheme":Z
    .end local v7    # "requestBuilder":Lccsanokhttp3/Request$Builder;
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x12e -> :sswitch_5
        0x12f -> :sswitch_5
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x191 -> :sswitch_3
        0x197 -> :sswitch_2
        0x198 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 179
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    return v1

    .line 185
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 186
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 191
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 195
    return v1

    .line 198
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 200
    return v1

    .line 206
    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lccsanokhttp3/internal/connection/Transmitter;ZLccsanokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "transmitter"    # Lccsanokhttp3/internal/connection/Transmitter;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Lccsanokhttp3/Request;

    .line 156
    iget-object v0, p0, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p4}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lccsanokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 162
    :cond_1
    invoke-direct {p0, p1, p3}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 165
    :cond_2
    invoke-virtual {p2}, Lccsanokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 168
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private requestIsOneShot(Ljava/io/IOException;Lccsanokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "userRequest"    # Lccsanokhttp3/Request;

    .line 172
    invoke-virtual {p2}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v0

    .line 173
    .local v0, "requestBody":Lccsanokhttp3/RequestBody;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private retryAfter(Lccsanokhttp3/Response;I)I
    .locals 2
    .param p1, "userResponse"    # Lccsanokhttp3/Response;
    .param p2, "defaultDelay"    # I

    .line 330
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 333
    return p2

    .line 338
    :cond_0
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 342
    :cond_1
    const v1, 0x7fffffff

    return v1
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 14
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v0

    .line 73
    .local v0, "request":Lccsanokhttp3/Request;
    move-object v1, p1

    check-cast v1, Lccsanokhttp3/internal/http/RealInterceptorChain;

    .line 74
    .local v1, "realChain":Lccsanokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v1}, Lccsanokhttp3/internal/http/RealInterceptorChain;->transmitter()Lccsanokhttp3/internal/connection/Transmitter;

    move-result-object v2

    .line 76
    .local v2, "transmitter":Lccsanokhttp3/internal/connection/Transmitter;
    const/4 v3, 0x0

    .line 77
    .local v3, "followUpCount":I
    const/4 v4, 0x0

    .line 79
    .local v4, "priorResponse":Lccsanokhttp3/Response;
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lccsanokhttp3/internal/connection/Transmitter;->prepareToConnect(Lccsanokhttp3/Request;)V

    .line 81
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_d

    .line 86
    const/4 v5, 0x0

    .line 88
    .local v5, "success":Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2, v7}, Lccsanokhttp3/internal/http/RealInterceptorChain;->proceed(Lccsanokhttp3/Request;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;)Lccsanokhttp3/Response;

    move-result-object v6
    :try_end_0
    .catch Lccsanokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .local v6, "response":Lccsanokhttp3/Response;
    const/4 v5, 0x1

    .line 103
    if-nez v5, :cond_1

    .line 104
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    .line 109
    :cond_1
    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {v6}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v8

    .line 111
    invoke-virtual {v4}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v9

    .line 112
    invoke-virtual {v9, v7}, Lccsanokhttp3/Response$Builder;->body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Lccsanokhttp3/Response$Builder;->priorResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;

    move-result-object v8

    .line 114
    invoke-virtual {v8}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v6

    .line 117
    :cond_2
    sget-object v8, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v8, v6}, Lccsanokhttp3/internal/Internal;->exchange(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/connection/Exchange;

    move-result-object v8

    .line 118
    .local v8, "exchange":Lccsanokhttp3/internal/connection/Exchange;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lccsanokhttp3/internal/connection/Exchange;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v7

    invoke-virtual {v7}, Lccsanokhttp3/internal/connection/RealConnection;->route()Lccsanokhttp3/Route;

    move-result-object v7

    .line 119
    .local v7, "route":Lccsanokhttp3/Route;
    :cond_3
    invoke-direct {p0, v6, v7}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lccsanokhttp3/Response;Lccsanokhttp3/Route;)Lccsanokhttp3/Request;

    move-result-object v9

    .line 121
    .local v9, "followUp":Lccsanokhttp3/Request;
    if-nez v9, :cond_5

    .line 122
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lccsanokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 123
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    .line 125
    :cond_4
    return-object v6

    .line 128
    :cond_5
    invoke-virtual {v9}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v10

    .line 129
    .local v10, "followUpBody":Lccsanokhttp3/RequestBody;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lccsanokhttp3/RequestBody;->isOneShot()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 130
    return-object v6

    .line 133
    :cond_6
    invoke-virtual {v6}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v11

    invoke-static {v11}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 135
    invoke-virtual {v8}, Lccsanokhttp3/internal/connection/Exchange;->detachWithViolence()V

    .line 138
    :cond_7
    add-int/lit8 v3, v3, 0x1

    const/16 v11, 0x14

    if-gt v3, v11, :cond_8

    .line 142
    move-object v0, v9

    .line 143
    move-object v4, v6

    .line 144
    .end local v5    # "success":Z
    .end local v6    # "response":Lccsanokhttp3/Response;
    .end local v7    # "route":Lccsanokhttp3/Route;
    .end local v8    # "exchange":Lccsanokhttp3/internal/connection/Exchange;
    .end local v9    # "followUp":Lccsanokhttp3/Request;
    .end local v10    # "followUpBody":Lccsanokhttp3/RequestBody;
    goto :goto_0

    .line 139
    .restart local v5    # "success":Z
    .restart local v6    # "response":Lccsanokhttp3/Response;
    .restart local v7    # "route":Lccsanokhttp3/Route;
    .restart local v8    # "exchange":Lccsanokhttp3/internal/connection/Exchange;
    .restart local v9    # "followUp":Lccsanokhttp3/Request;
    .restart local v10    # "followUpBody":Lccsanokhttp3/RequestBody;
    :cond_8
    new-instance v11, Ljava/net/ProtocolException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Too many follow-up requests: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 103
    .end local v6    # "response":Lccsanokhttp3/Response;
    .end local v7    # "route":Lccsanokhttp3/Route;
    .end local v8    # "exchange":Lccsanokhttp3/internal/connection/Exchange;
    .end local v9    # "followUp":Lccsanokhttp3/Request;
    .end local v10    # "followUpBody":Lccsanokhttp3/RequestBody;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 96
    :catch_0
    move-exception v7

    .line 98
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    instance-of v8, v7, Lccsanokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v8, :cond_9

    const/4 v6, 0x1

    .line 99
    .local v6, "requestSendStarted":Z
    :cond_9
    invoke-direct {p0, v7, v2, v6, v0}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lccsanokhttp3/internal/connection/Transmitter;ZLccsanokhttp3/Request;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_a

    .line 103
    if-nez v5, :cond_0

    .line 104
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_0

    .line 99
    .end local v0    # "request":Lccsanokhttp3/Request;
    .end local v1    # "realChain":Lccsanokhttp3/internal/http/RealInterceptorChain;
    .end local v2    # "transmitter":Lccsanokhttp3/internal/connection/Transmitter;
    .end local v3    # "followUpCount":I
    .end local v4    # "priorResponse":Lccsanokhttp3/Response;
    .end local v5    # "success":Z
    .end local p1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    :cond_a
    :try_start_2
    throw v7

    .line 90
    .end local v6    # "requestSendStarted":Z
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v0    # "request":Lccsanokhttp3/Request;
    .restart local v1    # "realChain":Lccsanokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "transmitter":Lccsanokhttp3/internal/connection/Transmitter;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "priorResponse":Lccsanokhttp3/Response;
    .restart local v5    # "success":Z
    .restart local p1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    :catch_1
    move-exception v7

    .line 92
    .local v7, "e":Lccsanokhttp3/internal/connection/RouteException;
    invoke-virtual {v7}, Lccsanokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v8

    invoke-direct {p0, v8, v2, v6, v0}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lccsanokhttp3/internal/connection/Transmitter;ZLccsanokhttp3/Request;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_b

    .line 103
    if-nez v5, :cond_0

    .line 104
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_0

    .line 93
    :cond_b
    :try_start_3
    invoke-virtual {v7}, Lccsanokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v6

    .end local v0    # "request":Lccsanokhttp3/Request;
    .end local v1    # "realChain":Lccsanokhttp3/internal/http/RealInterceptorChain;
    .end local v2    # "transmitter":Lccsanokhttp3/internal/connection/Transmitter;
    .end local v3    # "followUpCount":I
    .end local v4    # "priorResponse":Lccsanokhttp3/Response;
    .end local v5    # "success":Z
    .end local p1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    .end local v7    # "e":Lccsanokhttp3/internal/connection/RouteException;
    .restart local v0    # "request":Lccsanokhttp3/Request;
    .restart local v1    # "realChain":Lccsanokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "transmitter":Lccsanokhttp3/internal/connection/Transmitter;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "priorResponse":Lccsanokhttp3/Response;
    .restart local v5    # "success":Z
    .restart local p1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    :goto_1
    if-nez v5, :cond_c

    .line 104
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    :cond_c
    throw v6

    .line 82
    .end local v5    # "success":Z
    :cond_d
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v5

    :goto_3
    goto :goto_2
.end method
