.class final Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$1;

    .line 279
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lccsancom/google/android/exoplayer2/extractor/SeekMap;
    .locals 3

    .line 293
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 2
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 283
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startSeek(J)V
    .locals 0
    .param p1, "targetGranule"    # J

    .line 289
    return-void
.end method
