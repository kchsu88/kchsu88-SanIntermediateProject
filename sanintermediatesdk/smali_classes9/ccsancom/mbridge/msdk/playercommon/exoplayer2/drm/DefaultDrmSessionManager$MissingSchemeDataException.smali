.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;
.super Ljava/lang/Exception;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissingSchemeDataException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media does not support uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;)V

    return-void
.end method
