.class public abstract Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;
.super Ljava/lang/Object;
.source "BaseAudioProcessor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field protected inputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private inputEnded:Z

.field protected outputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingInputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 42
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 43
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 44
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 45
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 46
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 47
    return-void
.end method


# virtual methods
.method public final configure(Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 1
    .param p1, "inputAudioFormat"    # Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 53
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->onConfigure(Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 54
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    :goto_0
    return-object v0
.end method

.method public final flush()V
    .locals 1

    .line 85
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputEnded:Z

    .line 87
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 88
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 89
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->onFlush()V

    .line 90
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 71
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 72
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 73
    return-object v0
.end method

.method protected final hasPendingOutput()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    sget-object v1, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 2

    .line 80
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigure(Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 1
    .param p1, "inputAudioFormat"    # Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 126
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object v0
.end method

.method protected onFlush()V
    .locals 0

    .line 137
    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 0

    .line 132
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 142
    return-void
.end method

.method public final queueEndOfStream()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputEnded:Z

    .line 65
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->onQueueEndOfStream()V

    .line 66
    return-void
.end method

.method protected final replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "count"    # I

    .line 109
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 110
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 115
    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->flush()V

    .line 95
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 96
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingInputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 97
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 98
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 99
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputAudioFormat:Lccsancom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 100
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/BaseAudioProcessor;->onReset()V

    .line 101
    return-void
.end method
