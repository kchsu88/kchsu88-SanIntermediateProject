.class Lccsankotlin/sequences/USequencesKt___USequencesKt;
.super Ljava/lang/Object;
.source "_USequences.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0005\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\n0\u0002H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "sum",
        "Lccsankotlin/UInt;",
        "Lccsankotlin/sequences/Sequence;",
        "Lccsankotlin/UByte;",
        "sumOfUByte",
        "(Lccsankotlin/sequences/Sequence;)I",
        "sumOfUInt",
        "Lccsankotlin/ULong;",
        "sumOfULong",
        "(Lccsankotlin/sequences/Sequence;)J",
        "Lccsankotlin/UShort;",
        "sumOfUShort",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/sequences/USequencesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sumOfUByte(Lccsankotlin/sequences/Sequence;)I
    .locals 4
    .param p0, "$this$sum"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "Lccsankotlin/UByte;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "sum":I
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsankotlin/UByte;

    invoke-virtual {v2}, Lccsankotlin/UByte;->unbox-impl()B

    move-result v2

    .line 61
    .local v2, "element":B
    and-int/lit16 v3, v2, 0xff

    invoke-static {v3}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 60
    .end local v2    # "element":B
    goto :goto_0

    .line 63
    :cond_0
    return v0
.end method

.method public static final sumOfUInt(Lccsankotlin/sequences/Sequence;)I
    .locals 4
    .param p0, "$this$sum"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "Lccsankotlin/UInt;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "sum":I
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsankotlin/UInt;

    invoke-virtual {v2}, Lccsankotlin/UInt;->unbox-impl()I

    move-result v2

    .line 29
    .local v2, "element":I
    add-int v3, v0, v2

    invoke-static {v3}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 28
    .end local v2    # "element":I
    goto :goto_0

    .line 31
    :cond_0
    return v0
.end method

.method public static final sumOfULong(Lccsankotlin/sequences/Sequence;)J
    .locals 7
    .param p0, "$this$sum"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "Lccsankotlin/ULong;",
            ">;)J"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .local v0, "sum":J
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsankotlin/ULong;

    invoke-virtual {v3}, Lccsankotlin/ULong;->unbox-impl()J

    move-result-wide v3

    .line 45
    .local v3, "element":J
    add-long v5, v0, v3

    invoke-static {v5, v6}, Lccsankotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    .line 44
    .end local v3    # "element":J
    goto :goto_0

    .line 47
    :cond_0
    return-wide v0
.end method

.method public static final sumOfUShort(Lccsankotlin/sequences/Sequence;)I
    .locals 4
    .param p0, "$this$sum"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "Lccsankotlin/UShort;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "sum":I
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsankotlin/UShort;

    invoke-virtual {v2}, Lccsankotlin/UShort;->unbox-impl()S

    move-result v2

    .line 77
    .local v2, "element":S
    const v3, 0xffff

    and-int/2addr v3, v2

    invoke-static {v3}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 76
    .end local v2    # "element":S
    goto :goto_0

    .line 79
    :cond_0
    return v0
.end method
