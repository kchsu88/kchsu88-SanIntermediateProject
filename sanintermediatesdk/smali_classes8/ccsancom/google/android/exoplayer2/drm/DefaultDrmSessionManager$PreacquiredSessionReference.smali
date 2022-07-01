.class Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreacquiredSessionReference"
.end annotation


# instance fields
.field private final eventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private isReleased:Z

.field private session:Lccsancom/google/android/exoplayer2/drm/DrmSession;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0
    .param p2, "eventDispatcher"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 983
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 985
    return-void
.end method


# virtual methods
.method public acquire(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 993
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lccsancom/google/android/exoplayer2/Format;)V

    .line 994
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    return-void
.end method

.method public synthetic lambda$acquire$0$com-google-android-exoplayer2-drm-DefaultDrmSessionManager$PreacquiredSessionReference(Lccsancom/google/android/exoplayer2/Format;)V
    .locals 4
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 996
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$800(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1003
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1400(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/Looper;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v3, 0x0

    .line 1002
    invoke-static {v0, v1, v2, p1, v3}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1500(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsanandroid/os/Looper;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;Z)Lccsancom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    .line 1007
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1300(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1008
    return-void

    .line 999
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$release$1$com-google-android-exoplayer2-drm-DefaultDrmSessionManager$PreacquiredSessionReference()V
    .locals 2

    .line 1018
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/drm/DrmSession;->release(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1024
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1300(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    .line 1026
    return-void
.end method

.method public release()V
    .locals 2

    .line 1015
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1016
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    .line 1015
    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/util/Util;->postOrRun(Lccsanandroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 1027
    return-void
.end method
