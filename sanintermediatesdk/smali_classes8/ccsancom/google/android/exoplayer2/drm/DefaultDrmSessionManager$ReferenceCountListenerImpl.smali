.class Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferenceCountListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;

    .line 908
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method static synthetic lambda$onReferenceCountDecremented$0(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1
    .param p0, "session"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->release(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReferenceCountDecremented(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;I)V
    .locals 6
    .param p1, "session"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
    .param p2, "newReferenceCount"    # I

    .line 921
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$800(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 925
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 930
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v4}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 927
    invoke-virtual {v0, v1, p1, v2, v3}, Lccsanandroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 931
    :cond_0
    if-nez p2, :cond_3

    .line 933
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$400(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 934
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$900(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_1

    .line 935
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2, v3}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$902(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 937
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1000(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 938
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2, v3}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1002(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 940
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1100(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onSessionFullyReleased(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 941
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    .line 942
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 943
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 946
    :cond_3
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1200(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    .line 947
    return-void
.end method

.method public onReferenceCountIncremented(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;I)V
    .locals 5
    .param p1, "session"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
    .param p2, "newReferenceCount"    # I

    .line 912
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 914
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 915
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 917
    :cond_0
    return-void
.end method
