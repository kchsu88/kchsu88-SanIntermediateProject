.class Lccsancom/google/common/io/ByteSource$AsCharSource;
.super Lccsancom/google/common/io/CharSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsCharSource"
.end annotation


# instance fields
.field final charset:Ljava/nio/charset/Charset;

.field final synthetic this$0:Lccsancom/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lccsancom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/io/ByteSource;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 444
    iput-object p1, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-direct {p0}, Lccsancom/google/common/io/CharSource;-><init>()V

    .line 445
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    .line 446
    return-void
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lccsancom/google/common/io/ByteSource;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 450
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->this$0:Lccsancom/google/common/io/ByteSource;

    return-object v0

    .line 453
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/common/io/CharSource;->asByteSource(Ljava/nio/charset/Charset;)Lccsancom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lccsancom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public read()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lccsancom/google/common/io/ByteSource;->read()[B

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->this$0:Lccsancom/google/common/io/ByteSource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".asCharSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
