.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;
.super Ljava/lang/Object;
.source "DefaultDrmSessionEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

.field final synthetic val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmKeysRemoved()V

    .line 125
    return-void
.end method
