.class Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Lccsancom/google/common/hash/Funnel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringCharsetFunnel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/hash/Funnel<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 107
    instance-of v0, p1, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;

    .line 109
    .local v0, "funnel":Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;
    iget-object v1, p0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    iget-object v2, v0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 111
    .end local v0    # "funnel":Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public funnel(Ljava/lang/CharSequence;Lccsancom/google/common/hash/PrimitiveSink;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/CharSequence;
    .param p2, "into"    # Lccsancom/google/common/hash/PrimitiveSink;

    .line 97
    iget-object v0, p0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-interface {p2, p1, v0}, Lccsancom/google/common/hash/PrimitiveSink;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lccsancom/google/common/hash/PrimitiveSink;

    .line 98
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lccsancom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->funnel(Ljava/lang/CharSequence;Lccsancom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 116
    const-class v0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Funnels.stringFunnel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 120
    new-instance v0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;

    iget-object v1, p0, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lccsancom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
