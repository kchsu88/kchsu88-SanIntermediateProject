.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;I)V
    .locals 0

    .line 768
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    .line 770
    return-void
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 764
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public final isReady()Z
    .locals 2

    .line 774
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public final maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    .line 780
    return-void
.end method

.method public final readData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 785
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->readData(ILccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public final skipData(J)I
    .locals 2

    .line 790
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method
