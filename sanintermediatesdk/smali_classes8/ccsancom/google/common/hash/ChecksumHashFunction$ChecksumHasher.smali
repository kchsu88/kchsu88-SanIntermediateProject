.class final Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;
.super Lccsancom/google/common/hash/AbstractByteHasher;
.source "ChecksumHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/ChecksumHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChecksumHasher"
.end annotation


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field final synthetic this$0:Lccsancom/google/common/hash/ChecksumHashFunction;


# direct methods
.method private constructor <init>(Lccsancom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;)V
    .locals 0
    .param p2, "checksum"    # Ljava/util/zip/Checksum;

    .line 62
    iput-object p1, p0, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->this$0:Lccsancom/google/common/hash/ChecksumHashFunction;

    invoke-direct {p0}, Lccsancom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 63
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/Checksum;

    iput-object p1, p0, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;Lccsancom/google/common/hash/ChecksumHashFunction$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/hash/ChecksumHashFunction;
    .param p2, "x1"    # Ljava/util/zip/Checksum;
    .param p3, "x2"    # Lccsancom/google/common/hash/ChecksumHashFunction$1;

    .line 59
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;-><init>(Lccsancom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public hash()Lccsancom/google/common/hash/HashCode;
    .locals 4

    .line 78
    iget-object v0, p0, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 79
    .local v0, "value":J
    iget-object v2, p0, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->this$0:Lccsancom/google/common/hash/ChecksumHashFunction;

    invoke-static {v2}, Lccsancom/google/common/hash/ChecksumHashFunction;->access$100(Lccsancom/google/common/hash/ChecksumHashFunction;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 85
    long-to-int v2, v0

    invoke-static {v2}, Lccsancom/google/common/hash/HashCode;->fromInt(I)Lccsancom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2

    .line 87
    :cond_0
    invoke-static {v0, v1}, Lccsancom/google/common/hash/HashCode;->fromLong(J)Lccsancom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method

.method protected update(B)V
    .locals 1
    .param p1, "b"    # B

    .line 68
    iget-object v0, p0, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    .line 69
    return-void
.end method

.method protected update([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 73
    iget-object v0, p0, Lccsancom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 74
    return-void
.end method
