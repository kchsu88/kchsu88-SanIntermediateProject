.class public final synthetic Lccsancom/google/android/exoplayer2/extractor/TrackOutput$-CC;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# direct methods
.method public static $default$sampleData(Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/upstream/DataReader;IZI)I

    move-result v0

    return v0
.end method

.method public static $default$sampleData(Lccsancom/google/android/exoplayer2/extractor/TrackOutput;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/extractor/TrackOutput;
    .param p1, "data"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .line 161
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lccsancom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 162
    return-void
.end method
