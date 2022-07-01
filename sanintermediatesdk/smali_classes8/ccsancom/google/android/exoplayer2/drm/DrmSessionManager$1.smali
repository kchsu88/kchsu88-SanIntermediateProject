.class Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$1;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSession(Lccsanandroid/os/Looper;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/drm/DrmSession;
    .locals 4
    .param p1, "playbackLooper"    # Lccsanandroid/os/Looper;
    .param p2, "eventDispatcher"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .param p3, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 54
    iget-object v0, p3, Lccsancom/google/android/exoplayer2/Format;->drmInitData:Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    new-instance v1, Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    new-instance v2, Lccsancom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lccsancom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v3, 0x1771

    invoke-direct {v1, v2, v3}, Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/drm/ErrorStateDrmSession;-><init>(Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object v0
.end method

.method public getCryptoType(Lccsancom/google/android/exoplayer2/Format;)I
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 67
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/Format;->drmInitData:Lccsancom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic preacquireSession(Lccsanandroid/os/Looper;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$preacquireSession(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;Lccsanandroid/os/Looper;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    move-result-object p1

    return-object p1
.end method

.method public synthetic prepare()V
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$prepare(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method

.method public synthetic release()V
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$release(Lccsancom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method
