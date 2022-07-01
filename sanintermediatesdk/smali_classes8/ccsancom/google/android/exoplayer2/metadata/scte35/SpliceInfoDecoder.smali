.class public final Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Lccsancom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "SpliceInfoDecoder.java"


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

.field private timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 43
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    .line 44
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    .line 45
    return-void
.end method


# virtual methods
.method protected decode(Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lccsancom/google/android/exoplayer2/metadata/Metadata;
    .locals 10
    .param p1, "inputBuffer"    # Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 52
    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v1, p1, Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 54
    iget-wide v1, p1, Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    iget-wide v3, p1, Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 58
    .local v0, "data":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 59
    .local v1, "size":I
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 60
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v0, v1}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 63
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 64
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v4, v2

    .line 65
    .local v4, "ptsAdjustment":J
    const/16 v2, 0x20

    shl-long v6, v4, v2

    iget-object v8, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v8, v2

    or-long v4, v6, v8

    .line 67
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x14

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 68
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 69
    .local v2, "spliceCommandLength":I
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lccsancom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lccsancom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 70
    .local v6, "spliceCommandType":I
    const/4 v7, 0x0

    .line 72
    .local v7, "command":Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
    iget-object v8, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lccsancom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 73
    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 88
    :sswitch_0
    iget-object v8, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v8, v2, v4, v5}, Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;IJ)Lccsancom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v7

    .line 89
    goto :goto_0

    .line 85
    :sswitch_1
    iget-object v8, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {v8, v4, v5, v9}, Lccsancom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;JLccsancom/google/android/exoplayer2/util/TimestampAdjuster;)Lccsancom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v7

    .line 86
    goto :goto_0

    .line 81
    :sswitch_2
    iget-object v8, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lccsancom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 82
    invoke-static {v8, v4, v5, v9}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;JLccsancom/google/android/exoplayer2/util/TimestampAdjuster;)Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v7

    .line 83
    goto :goto_0

    .line 78
    :sswitch_3
    iget-object v8, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lccsancom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v8}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lccsancom/google/android/exoplayer2/util/ParsableByteArray;)Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v7

    .line 79
    goto :goto_0

    .line 75
    :sswitch_4
    new-instance v8, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v8}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    move-object v7, v8

    .line 76
    nop

    .line 94
    :goto_0
    const/4 v8, 0x0

    if-nez v7, :cond_2

    new-instance v3, Lccsancom/google/android/exoplayer2/metadata/Metadata;

    new-array v8, v8, [Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v3, v8}, Lccsancom/google/android/exoplayer2/metadata/Metadata;-><init>([Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    :cond_2
    new-instance v9, Lccsancom/google/android/exoplayer2/metadata/Metadata;

    new-array v3, v3, [Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v3, v8

    invoke-direct {v9, v3}, Lccsancom/google/android/exoplayer2/metadata/Metadata;-><init>([Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v3, v9

    :goto_1
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method
