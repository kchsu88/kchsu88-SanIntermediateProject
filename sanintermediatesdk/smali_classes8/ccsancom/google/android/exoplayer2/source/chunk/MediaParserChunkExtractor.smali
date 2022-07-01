.class public final Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
    }
.end annotation


# static fields
.field public static final FACTORY:Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;

.field private static final TAG:Ljava/lang/String; = "MediaPrsrChunkExtractor"


# instance fields
.field private final dummyTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

.field private final inputReaderAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Lccsanandroid/media/MediaParser;

.field private final outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

.field private pendingSeekUs:J

.field private sampleFormats:[Lccsancom/google/android/exoplayer2/Format;

.field private trackOutputProvider:Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

.field private final trackOutputProviderAdapter:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->FACTORY:Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;

    return-void
.end method

.method public constructor <init>(ILccsancom/google/android/exoplayer2/Format;Ljava/util/List;)V
    .locals 6
    .param p1, "primaryTrackType"    # I
    .param p2, "manifestFormat"    # Lccsancom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    const/4 v1, 0x1

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 93
    invoke-direct {v0, p2, p1, v1}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;-><init>(Lccsancom/google/android/exoplayer2/Format;IZ)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    .line 96
    new-instance v1, Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    .line 97
    iget-object v1, p2, Lccsancom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string v3, "android.media.mediaparser.MatroskaParser"

    goto :goto_0

    .line 101
    :cond_0
    const-string v3, "android.media.mediaparser.FragmentedMp4Parser"

    :goto_0
    nop

    .line 102
    .local v3, "parserName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 103
    invoke-static {v3, v0}, Lccsanandroid/media/MediaParser;->createByName(Ljava/lang/String;Lccsanandroid/media/MediaParser$OutputConsumer;)Lccsanandroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Lccsanandroid/media/MediaParser;

    .line 104
    const-string v4, "android.media.mediaparser.matroska.disableCuesSeeking"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 105
    const-string v4, "android.media.mediaparser.inBandCryptoInfo"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 106
    const-string v4, "android.media.mediaparser.includeSupplementalData"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 107
    const-string v4, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 108
    const-string v4, "android.media.mediaparser.exposeDummySeekMap"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 109
    const-string v4, "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 110
    const-string v4, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    invoke-virtual {v0, v4, v2}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "closedCaptionMediaFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/media/MediaFormat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 113
    nop

    .line 114
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/android/exoplayer2/Format;

    invoke-static {v4}, Lccsancom/google/android/exoplayer2/source/mediaparser/MediaParserUtil;->toCaptionsMediaFormat(Lccsancom/google/android/exoplayer2/Format;)Lccsanandroid/media/MediaFormat;

    move-result-object v4

    .line 113
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Lccsanandroid/media/MediaParser;

    const-string v4, "android.media.mediaParser.exposeCaptionFormats"

    invoke-virtual {v2, v4, v0}, Lccsanandroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroid/media/MediaParser;

    .line 117
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v2, p3}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setMuxedCaptionFormats(Ljava/util/List;)V

    .line 118
    new-instance v2, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;)V

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProviderAdapter:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    .line 119
    new-instance v2, Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v2}, Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v2, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    .line 120
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    .line 121
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 51
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 51
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Lccsancom/google/android/exoplayer2/extractor/DummyTrackOutput;

    return-object v0
.end method

.method static synthetic access$302(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;[Lccsancom/google/android/exoplayer2/Format;)[Lccsancom/google/android/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
    .param p1, "x1"    # [Lccsancom/google/android/exoplayer2/Format;

    .line 51
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Lccsancom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$400(Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 51
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    return-object v0
.end method

.method static synthetic lambda$static$0(ILccsancom/google/android/exoplayer2/Format;ZLjava/util/List;Lccsancom/google/android/exoplayer2/extractor/TrackOutput;)Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .locals 2
    .param p0, "primaryTrackType"    # I
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "enableEventMessageTrack"    # Z
    .param p3, "closedCaptionFormats"    # Ljava/util/List;
    .param p4, "playerEmsgTrackOutput"    # Lccsancom/google/android/exoplayer2/extractor/TrackOutput;

    .line 62
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    invoke-direct {v0, p0, p1, p3}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;-><init>(ILccsancom/google/android/exoplayer2/Format;Ljava/util/List;)V

    return-object v0

    .line 67
    :cond_0
    const-string v0, "MediaPrsrChunkExtractor"

    const-string v1, "Ignoring an unsupported text track."

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeExecutePendingSeek()V
    .locals 6

    .line 161
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getDummySeekMap()Lccsanandroid/media/MediaParser$SeekMap;

    move-result-object v0

    .line 162
    .local v0, "dummySeekMap":Lccsanandroid/media/MediaParser$SeekMap;
    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 163
    iget-object v5, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Lccsanandroid/media/MediaParser;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/media/MediaParser$SeekMap;->getSeekPoints(J)Lccsanandroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lccsanandroid/media/MediaParser$SeekPoint;

    invoke-virtual {v5, v1}, Lccsanandroid/media/MediaParser;->seek(Lccsanandroid/media/MediaParser$SeekPoint;)V

    .line 164
    iput-wide v3, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public getChunkIndex()Lccsancom/google/android/exoplayer2/extractor/ChunkIndex;
    .locals 1

    .line 149
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getChunkIndex()Lccsancom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v0

    return-object v0
.end method

.method public getSampleFormats()[Lccsancom/google/android/exoplayer2/Format;
    .locals 1

    .line 155
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Lccsancom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public init(Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
    .locals 2
    .param p1, "trackOutputProvider"    # Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J

    .line 128
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Lccsancom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    .line 129
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p4, p5}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSampleTimestampUpperLimitFilterUs(J)V

    .line 130
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->trackOutputProviderAdapter:Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Lccsancom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 131
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    .line 132
    return-void
.end method

.method public read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 3
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->maybeExecutePendingSeek()V

    .line 142
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setDataReader(Lccsancom/google/android/exoplayer2/upstream/DataReader;J)V

    .line 143
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Lccsanandroid/media/MediaParser;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Lccsancom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, v1}, Lccsanandroid/media/MediaParser;->advance(Lccsanandroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 136
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->mediaParser:Lccsanandroid/media/MediaParser;

    invoke-virtual {v0}, Lccsanandroid/media/MediaParser;->release()V

    .line 137
    return-void
.end method
