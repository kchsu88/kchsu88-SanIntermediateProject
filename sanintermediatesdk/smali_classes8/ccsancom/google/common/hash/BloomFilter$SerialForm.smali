.class Lccsancom/google/common/hash/BloomFilter$SerialForm;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[J

.field final funnel:Lccsancom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/hash/Funnel<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final numHashFunctions:I

.field final strategy:Lccsancom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method constructor <init>(Lccsancom/google/common/hash/BloomFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 470
    .local p0, "this":Lccsancom/google/common/hash/BloomFilter$SerialForm;, "Lccsancom/google/common/hash/BloomFilter$SerialForm<TT;>;"
    .local p1, "bf":Lccsancom/google/common/hash/BloomFilter;, "Lccsancom/google/common/hash/BloomFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    invoke-static {p1}, Lccsancom/google/common/hash/BloomFilter;->access$000(Lccsancom/google/common/hash/BloomFilter;)Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    move-result-object v0

    iget-object v0, v0, Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->data:[J

    .line 472
    invoke-static {p1}, Lccsancom/google/common/hash/BloomFilter;->access$100(Lccsancom/google/common/hash/BloomFilter;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    .line 473
    invoke-static {p1}, Lccsancom/google/common/hash/BloomFilter;->access$200(Lccsancom/google/common/hash/BloomFilter;)Lccsancom/google/common/hash/Funnel;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->funnel:Lccsancom/google/common/hash/Funnel;

    .line 474
    invoke-static {p1}, Lccsancom/google/common/hash/BloomFilter;->access$300(Lccsancom/google/common/hash/BloomFilter;)Lccsancom/google/common/hash/BloomFilter$Strategy;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->strategy:Lccsancom/google/common/hash/BloomFilter$Strategy;

    .line 475
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 7

    .line 478
    .local p0, "this":Lccsancom/google/common/hash/BloomFilter$SerialForm;, "Lccsancom/google/common/hash/BloomFilter$SerialForm<TT;>;"
    new-instance v6, Lccsancom/google/common/hash/BloomFilter;

    new-instance v1, Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    iget-object v0, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->data:[J

    invoke-direct {v1, v0}, Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    iget v2, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    iget-object v3, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->funnel:Lccsancom/google/common/hash/Funnel;

    iget-object v4, p0, Lccsancom/google/common/hash/BloomFilter$SerialForm;->strategy:Lccsancom/google/common/hash/BloomFilter$Strategy;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/google/common/hash/BloomFilter;-><init>(Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;ILccsancom/google/common/hash/Funnel;Lccsancom/google/common/hash/BloomFilter$Strategy;Lccsancom/google/common/hash/BloomFilter$1;)V

    return-object v6
.end method
