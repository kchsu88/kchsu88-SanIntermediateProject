.class final Lccsancom/google/android/exoplayer2/audio/AudioCapabilities$Api29;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectPlaybackSupportedEncodings()[I
    .locals 9

    .line 195
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->builder()Lccsancom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 196
    .local v0, "supportedEncodingsListBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    invoke-static {}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;->access$000()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 197
    .local v5, "encoding":I
    new-instance v6, Lccsanandroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Lccsanandroid/media/AudioFormat$Builder;-><init>()V

    const/16 v7, 0xc

    .line 199
    invoke-virtual {v6, v7}, Lccsanandroid/media/AudioFormat$Builder;->setChannelMask(I)Lccsanandroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 200
    invoke-virtual {v6, v5}, Lccsanandroid/media/AudioFormat$Builder;->setEncoding(I)Lccsanandroid/media/AudioFormat$Builder;

    move-result-object v6

    const v7, 0xbb80

    .line 201
    invoke-virtual {v6, v7}, Lccsanandroid/media/AudioFormat$Builder;->setSampleRate(I)Lccsanandroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 202
    invoke-virtual {v6}, Lccsanandroid/media/AudioFormat$Builder;->build()Lccsanandroid/media/AudioFormat;

    move-result-object v6

    new-instance v7, Lccsanandroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Lccsanandroid/media/AudioAttributes$Builder;-><init>()V

    .line 204
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lccsanandroid/media/AudioAttributes$Builder;->setUsage(I)Lccsanandroid/media/AudioAttributes$Builder;

    move-result-object v7

    const/4 v8, 0x3

    .line 205
    invoke-virtual {v7, v8}, Lccsanandroid/media/AudioAttributes$Builder;->setContentType(I)Lccsanandroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 206
    invoke-virtual {v7, v3}, Lccsanandroid/media/AudioAttributes$Builder;->setFlags(I)Lccsanandroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 207
    invoke-virtual {v7}, Lccsanandroid/media/AudioAttributes$Builder;->build()Lccsanandroid/media/AudioAttributes;

    move-result-object v7

    .line 197
    invoke-static {v6, v7}, Lccsanandroid/media/AudioTrack;->isDirectPlaybackSupported(Lccsanandroid/media/AudioFormat;Lccsanandroid/media/AudioAttributes;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 196
    .end local v5    # "encoding":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 212
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    return-object v1
.end method
