.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;
    .locals 1
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 41
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    move-result-object v0

    return-object v0
.end method

.method public static varargs get([Ljava/security/cert/X509Certificate;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;
    .locals 2
    .param p0, "caCerts"    # [Ljava/security/cert/X509Certificate;

    .line 45
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/BasicCertificateChainCleaner;

    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/BasicTrustRootIndex;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/BasicCertificateChainCleaner;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/TrustRootIndex;)V

    return-object v0
.end method


# virtual methods
.method public abstract clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
