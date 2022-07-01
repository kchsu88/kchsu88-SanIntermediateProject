.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field private final audioProcessors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

.field private final silenceSkippingAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;

.field private final sonicAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;)V
    .locals 4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    .line 124
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;

    .line 125
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;

    .line 126
    array-length v3, p1

    aput-object v1, v0, v3

    .line 127
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    .line 128
    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 4

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;

    iget-boolean v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->skipSilence:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    .line 138
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;

    iget v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    .line 139
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)F

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->pitch:F

    .line 140
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)F

    move-result v2

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->skipSilence:Z

    invoke-direct {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(FFZ)V

    .line 138
    return-object v0
.end method

.method public getAudioProcessors()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 1

    .line 146
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SonicAudioProcessor;->scaleDurationForSpeedup(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method
