.class final Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MasterElement"
.end annotation


# instance fields
.field private final elementEndPosition:J

.field private final elementId:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "elementId"    # I
    .param p2, "elementEndPosition"    # J

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    .line 252
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    .line 253
    return-void
.end method

.method synthetic constructor <init>(IJLccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 245
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    return-wide v0
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 245
    iget v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    return v0
.end method
