.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_RENDERER:I = 0x1

.field public static final TYPE_SOURCE:I = 0x0

.field public static final TYPE_UNEXPECTED:I = 0x2


# instance fields
.field public final rendererIndex:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    .line 101
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 102
    return-void
.end method

.method public static createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
    .locals 3

    .line 74
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForSource(Ljava/io/IOException;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
    .locals 4

    .line 84
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method static createForUnexpected(Ljava/lang/RuntimeException;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
    .locals 4

    .line 94
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public final getRendererException()Ljava/lang/Exception;
    .locals 2

    .line 120
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 121
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public final getSourceException()Ljava/io/IOException;
    .locals 1

    .line 110
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 111
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public final getUnexpectedException()Ljava/lang/RuntimeException;
    .locals 2

    .line 130
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 131
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method
