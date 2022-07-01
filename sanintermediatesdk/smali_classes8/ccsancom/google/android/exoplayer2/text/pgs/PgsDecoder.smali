.class public final Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;
.super Lccsancom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
    }
.end annotation


# static fields
.field private static final INFLATE_HEADER:B = 0x78t

.field private static final SECTION_TYPE_BITMAP_PICTURE:I = 0x15

.field private static final SECTION_TYPE_END:I = 0x80

.field private static final SECTION_TYPE_IDENTIFIER:I = 0x16

.field private static final SECTION_TYPE_PALETTE:I = 0x14


# instance fields
.field private final buffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilder:Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

.field private final inflatedBuffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

.field private inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    const-string v0, "PgsDecoder"

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 52
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 53
    new-instance v0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->cueBuilder:Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    .line 54
    return-void
.end method

.method private maybeInflateData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 2
    .param p1, "buffer"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 72
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 76
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lccsancom/google/android/exoplayer2/util/Util;->inflate(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->inflatedBuffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 80
    :cond_1
    return-void
.end method

.method private static readNextSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;)Lccsancom/google/android/exoplayer2/text/Cue;
    .locals 5
    .param p0, "buffer"    # Lccsancom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "cueBuilder"    # Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    .line 84
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    .line 85
    .local v0, "limit":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 86
    .local v1, "sectionType":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 88
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 89
    .local v3, "nextSectionPosition":I
    if-le v3, v0, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 91
    const/4 v4, 0x0

    return-object v4

    .line 94
    :cond_0
    const/4 v4, 0x0

    .line 95
    .local v4, "cue":Lccsancom/google/android/exoplayer2/text/Cue;
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 106
    :sswitch_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->build()Lccsancom/google/android/exoplayer2/text/Cue;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 108
    goto :goto_0

    .line 103
    :sswitch_1
    invoke-static {p1, p0, v2}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->access$200(Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 104
    goto :goto_0

    .line 100
    :sswitch_2
    invoke-static {p1, p0, v2}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->access$100(Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 101
    goto :goto_0

    .line 97
    :sswitch_3
    invoke-static {p1, p0, v2}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->access$000(Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lccsancom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 98
    nop

    .line 113
    :goto_0
    invoke-virtual {p0, v3}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 114
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected decode([BIZ)Lccsancom/google/android/exoplayer2/text/Subtitle;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 59
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->maybeInflateData(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 60
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->cueBuilder:Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/google/android/exoplayer2/text/Cue;>;"
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 63
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->buffer:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->cueBuilder:Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;

    invoke-static {v1, v2}, Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder;->readNextSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;Lccsancom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;)Lccsancom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    .line 64
    .local v1, "cue":Lccsancom/google/android/exoplayer2/text/Cue;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v1    # "cue":Lccsancom/google/android/exoplayer2/text/Cue;
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Lccsancom/google/android/exoplayer2/text/pgs/PgsSubtitle;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/text/pgs/PgsSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method
