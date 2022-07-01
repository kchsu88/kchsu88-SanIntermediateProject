.class public Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Lccsanandroid/media/AudioAttributes;
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 200
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Lccsanandroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Lccsanandroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 217
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Lccsanandroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 204
    invoke-static {p0}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Lccsanandroid/media/AudioAttributes;

    move-result-object v0

    .line 205
    .local v0, "attrs":Lccsanandroid/media/AudioAttributes;
    invoke-static {v0}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Lccsanandroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 213
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Lccsanandroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 196
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Lccsanandroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 209
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Lccsanandroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v0

    return v0
.end method

.method private static toLegacyStreamType(Lccsanandroid/media/AudioAttributes;)I
    .locals 4
    .param p0, "aa"    # Lccsanandroid/media/AudioAttributes;

    .line 228
    invoke-virtual {p0}, Lccsanandroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 230
    const/4 v0, 0x7

    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 233
    const/4 v0, 0x6

    return v0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    .line 261
    return v3

    .line 244
    :pswitch_0
    return v1

    .line 252
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 258
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 250
    :pswitch_3
    return v2

    .line 248
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 246
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 242
    :pswitch_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
