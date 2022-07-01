.class public final Lccsanokhttp3/MultipartBody;
.super Lccsanokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/MultipartBody$Builder;,
        Lccsanokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lccsanokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lccsanokhttp3/MediaType;

.field public static final FORM:Lccsanokhttp3/MediaType;

.field public static final MIXED:Lccsanokhttp3/MediaType;

.field public static final PARALLEL:Lccsanokhttp3/MediaType;


# instance fields
.field private final boundary:Lccsanokio/ByteString;

.field private contentLength:J

.field private final contentType:Lccsanokhttp3/MediaType;

.field private final originalType:Lccsanokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lccsanokhttp3/MediaType;->get(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/MultipartBody;->MIXED:Lccsanokhttp3/MediaType;

    .line 42
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lccsanokhttp3/MediaType;->get(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/MultipartBody;->ALTERNATIVE:Lccsanokhttp3/MediaType;

    .line 49
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lccsanokhttp3/MediaType;->get(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/MultipartBody;->DIGEST:Lccsanokhttp3/MediaType;

    .line 55
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lccsanokhttp3/MediaType;->get(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/MultipartBody;->PARALLEL:Lccsanokhttp3/MediaType;

    .line 62
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lccsanokhttp3/MediaType;->get(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/MultipartBody;->FORM:Lccsanokhttp3/MediaType;

    .line 64
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsanokhttp3/MultipartBody;->COLONSPACE:[B

    .line 65
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lccsanokhttp3/MultipartBody;->CRLF:[B

    .line 66
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lccsanokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lccsanokio/ByteString;Lccsanokhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .param p1, "boundary"    # Lccsanokio/ByteString;
    .param p2, "type"    # Lccsanokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokio/ByteString;",
            "Lccsanokhttp3/MediaType;",
            "Ljava/util/List<",
            "Lccsanokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/MultipartBody$Part;>;"
    invoke-direct {p0}, Lccsanokhttp3/RequestBody;-><init>()V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsanokhttp3/MultipartBody;->contentLength:J

    .line 75
    iput-object p1, p0, Lccsanokhttp3/MultipartBody;->boundary:Lccsanokio/ByteString;

    .line 76
    iput-object p2, p0, Lccsanokhttp3/MultipartBody;->originalType:Lccsanokhttp3/MediaType;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanokhttp3/MediaType;->get(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/MultipartBody;->contentType:Lccsanokhttp3/MediaType;

    .line 78
    invoke-static {p3}, Lccsanokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 79
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .line 203
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 206
    .local v3, "ch":C
    sparse-switch v3, :sswitch_data_0

    .line 217
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :sswitch_0
    const-string v4, "%22"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    goto :goto_1

    .line 211
    :sswitch_1
    const-string v4, "%0D"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto :goto_1

    .line 208
    :sswitch_2
    const-string v4, "%0A"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    nop

    .line 204
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lccsanokio/BufferedSink;Z)J
    .locals 16
    .param p1, "sink"    # Lccsanokio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 127
    .local v1, "byteCount":J
    const/4 v3, 0x0

    .line 128
    .local v3, "byteCountBuffer":Lccsanokio/Buffer;
    if-eqz p2, :cond_0

    .line 129
    new-instance v4, Lccsanokio/Buffer;

    invoke-direct {v4}, Lccsanokio/Buffer;-><init>()V

    move-object v3, v4

    .end local p1    # "sink":Lccsanokio/BufferedSink;
    .local v4, "sink":Lccsanokio/BufferedSink;
    goto :goto_0

    .line 128
    .end local v4    # "sink":Lccsanokio/BufferedSink;
    .restart local p1    # "sink":Lccsanokio/BufferedSink;
    :cond_0
    move-object/from16 v4, p1

    .line 132
    .end local p1    # "sink":Lccsanokio/BufferedSink;
    .restart local v4    # "sink":Lccsanokio/BufferedSink;
    :goto_0
    const/4 v5, 0x0

    .local v5, "p":I
    iget-object v6, v0, Lccsanokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "partCount":I
    :goto_1
    if-ge v5, v6, :cond_6

    .line 133
    iget-object v7, v0, Lccsanokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanokhttp3/MultipartBody$Part;

    .line 134
    .local v7, "part":Lccsanokhttp3/MultipartBody$Part;
    iget-object v8, v7, Lccsanokhttp3/MultipartBody$Part;->headers:Lccsanokhttp3/Headers;

    .line 135
    .local v8, "headers":Lccsanokhttp3/Headers;
    iget-object v9, v7, Lccsanokhttp3/MultipartBody$Part;->body:Lccsanokhttp3/RequestBody;

    .line 137
    .local v9, "body":Lccsanokhttp3/RequestBody;
    sget-object v10, Lccsanokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v4, v10}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 138
    iget-object v10, v0, Lccsanokhttp3/MultipartBody;->boundary:Lccsanokio/ByteString;

    invoke-interface {v4, v10}, Lccsanokio/BufferedSink;->write(Lccsanokio/ByteString;)Lccsanokio/BufferedSink;

    .line 139
    sget-object v10, Lccsanokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v4, v10}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 141
    if-eqz v8, :cond_1

    .line 142
    const/4 v10, 0x0

    .local v10, "h":I
    invoke-virtual {v8}, Lccsanokhttp3/Headers;->size()I

    move-result v11

    .local v11, "headerCount":I
    :goto_2
    if-ge v10, v11, :cond_1

    .line 143
    invoke-virtual {v8, v10}, Lccsanokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    move-result-object v12

    sget-object v13, Lccsanokhttp3/MultipartBody;->COLONSPACE:[B

    .line 144
    invoke-interface {v12, v13}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    move-result-object v12

    .line 145
    invoke-virtual {v8, v10}, Lccsanokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    move-result-object v12

    sget-object v13, Lccsanokhttp3/MultipartBody;->CRLF:[B

    .line 146
    invoke-interface {v12, v13}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 150
    .end local v10    # "h":I
    .end local v11    # "headerCount":I
    :cond_1
    invoke-virtual {v9}, Lccsanokhttp3/RequestBody;->contentType()Lccsanokhttp3/MediaType;

    move-result-object v10

    .line 151
    .local v10, "contentType":Lccsanokhttp3/MediaType;
    if-eqz v10, :cond_2

    .line 152
    const-string v11, "Content-Type: "

    invoke-interface {v4, v11}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    move-result-object v11

    .line 153
    invoke-virtual {v10}, Lccsanokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    move-result-object v11

    sget-object v12, Lccsanokhttp3/MultipartBody;->CRLF:[B

    .line 154
    invoke-interface {v11, v12}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 157
    :cond_2
    invoke-virtual {v9}, Lccsanokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    .line 158
    .local v11, "contentLength":J
    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    if-eqz v15, :cond_3

    .line 159
    const-string v13, "Content-Length: "

    invoke-interface {v4, v13}, Lccsanokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsanokio/BufferedSink;

    move-result-object v13

    .line 160
    invoke-interface {v13, v11, v12}, Lccsanokio/BufferedSink;->writeDecimalLong(J)Lccsanokio/BufferedSink;

    move-result-object v13

    sget-object v14, Lccsanokhttp3/MultipartBody;->CRLF:[B

    .line 161
    invoke-interface {v13, v14}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    goto :goto_3

    .line 162
    :cond_3
    if-eqz p2, :cond_4

    .line 164
    invoke-virtual {v3}, Lccsanokio/Buffer;->clear()V

    .line 165
    return-wide v13

    .line 168
    :cond_4
    :goto_3
    sget-object v13, Lccsanokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v4, v13}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 170
    if-eqz p2, :cond_5

    .line 171
    add-long/2addr v1, v11

    goto :goto_4

    .line 173
    :cond_5
    invoke-virtual {v9, v4}, Lccsanokhttp3/RequestBody;->writeTo(Lccsanokio/BufferedSink;)V

    .line 176
    :goto_4
    invoke-interface {v4, v13}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 132
    .end local v7    # "part":Lccsanokhttp3/MultipartBody$Part;
    .end local v8    # "headers":Lccsanokhttp3/Headers;
    .end local v9    # "body":Lccsanokhttp3/RequestBody;
    .end local v10    # "contentType":Lccsanokhttp3/MediaType;
    .end local v11    # "contentLength":J
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 179
    .end local v5    # "p":I
    .end local v6    # "partCount":I
    :cond_6
    sget-object v5, Lccsanokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v4, v5}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 180
    iget-object v6, v0, Lccsanokhttp3/MultipartBody;->boundary:Lccsanokio/ByteString;

    invoke-interface {v4, v6}, Lccsanokio/BufferedSink;->write(Lccsanokio/ByteString;)Lccsanokio/BufferedSink;

    .line 181
    invoke-interface {v4, v5}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 182
    sget-object v5, Lccsanokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v4, v5}, Lccsanokio/BufferedSink;->write([B)Lccsanokio/BufferedSink;

    .line 184
    if-eqz p2, :cond_7

    .line 185
    invoke-virtual {v3}, Lccsanokio/Buffer;->size()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 186
    invoke-virtual {v3}, Lccsanokio/Buffer;->clear()V

    .line 189
    :cond_7
    return-wide v1
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lccsanokhttp3/MultipartBody;->boundary:Lccsanokio/ByteString;

    invoke-virtual {v0}, Lccsanokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lccsanokhttp3/MultipartBody;->contentLength:J

    .line 109
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 110
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lccsanokhttp3/MultipartBody;->writeOrCountBytes(Lccsanokio/BufferedSink;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lccsanokhttp3/MultipartBody;->contentLength:J

    return-wide v2
.end method

.method public contentType()Lccsanokhttp3/MediaType;
    .locals 1

    .line 104
    iget-object v0, p0, Lccsanokhttp3/MultipartBody;->contentType:Lccsanokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lccsanokhttp3/MultipartBody$Part;
    .locals 1
    .param p1, "index"    # I

    .line 99
    iget-object v0, p0, Lccsanokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lccsanokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 91
    iget-object v0, p0, Lccsanokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lccsanokhttp3/MediaType;
    .locals 1

    .line 82
    iget-object v0, p0, Lccsanokhttp3/MultipartBody;->originalType:Lccsanokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lccsanokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lccsanokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanokhttp3/MultipartBody;->writeOrCountBytes(Lccsanokio/BufferedSink;Z)J

    .line 115
    return-void
.end method
