.class public final Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;


# instance fields
.field private final extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLccsancom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "startOffset"    # J
    .param p3, "extractorOutput"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    .line 39
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 31
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 49
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 50
    return-void
.end method

.method public seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 2
    .param p1, "seekMap"    # Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    .line 54
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 74
    return-void
.end method

.method public track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 44
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method
