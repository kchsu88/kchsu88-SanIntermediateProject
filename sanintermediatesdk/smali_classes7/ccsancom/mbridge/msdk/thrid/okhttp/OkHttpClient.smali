.class public Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Call$Factory;
.implements Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

.field final cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final callTimeout:I

.field final certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

.field final dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

.field final dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

.field final eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    const/4 v0, 0x2

    new-array v1, v0, [Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_2:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 129
    new-array v0, v0, [Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->MODERN_TLS:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->CLEARTEXT:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 133
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 230
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;)V

    .line 231
    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;)V
    .locals 4
    .param p1, "builder"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    .line 235
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 236
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 237
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 238
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 239
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 240
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    .line 241
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 242
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 243
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    .line 244
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 245
    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "isTLS":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    .line 249
    .local v2, "spec":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    if-nez v1, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->isTls()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v1, v3

    .line 250
    .end local v2    # "spec":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_3

    .line 256
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 257
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 258
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    goto :goto_4

    .line 253
    .end local v0    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :goto_3
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 254
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    .line 261
    :goto_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 262
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 265
    :cond_5
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 266
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;->withCertificateChainCleaner(Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;)Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 268
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 269
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 270
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 271
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    .line 272
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 273
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followRedirects:Z

    .line 274
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 275
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->callTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->callTimeout:I

    .line 276
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectTimeout:I

    .line 277
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->readTimeout:I

    .line 278
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->writeTimeout:I

    .line 279
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->pingInterval:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->pingInterval:I

    .line 281
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 284
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 287
    return-void

    .line 285
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null network interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 291
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 292
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 293
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 294
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public authenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;
    .locals 1

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    return-object v0
.end method

.method public cache()Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 337
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    return-object v0
.end method

.method public callTimeoutMillis()I
    .locals 1

    .line 301
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->callTimeout:I

    return v0
.end method

.method public certificatePinner()Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;
    .locals 1

    .line 361
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 306
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .locals 1

    .line 373
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;
    .locals 1

    .line 333
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;
    .locals 1

    .line 389
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    return-object v0
.end method

.method public dns()Lccsancom/mbridge/msdk/thrid/okhttp/Dns;
    .locals 1

    .line 345
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
    .locals 1

    .line 419
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 357
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;
    .locals 1

    .line 341
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1

    .line 439
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .locals 1
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 426
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->newRealCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;Z)Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public newWebSocket(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;)Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
    .locals 7
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "listener"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    .line 433
    new-instance v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->pingInterval:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;Ljava/util/Random;J)V

    .line 434
    .local v0, "webSocket":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->connect(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V

    .line 435
    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    .line 321
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 325
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;
    .locals 1

    .line 369
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 329
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 311
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 349
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 316
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->writeTimeout:I

    return v0
.end method
