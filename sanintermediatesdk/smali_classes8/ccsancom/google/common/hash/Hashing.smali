.class public final Lccsancom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lccsancom/google/common/hash/Hashing$ChecksumType;,
        Lccsancom/google/common/hash/Hashing$Sha512Holder;,
        Lccsancom/google/common/hash/Hashing$Sha384Holder;,
        Lccsancom/google/common/hash/Hashing$Sha256Holder;,
        Lccsancom/google/common/hash/Hashing$Sha1Holder;,
        Lccsancom/google/common/hash/Hashing$Md5Holder;
    }
.end annotation


# static fields
.field static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lccsancom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 386
    sget-object v0, Lccsancom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lccsancom/google/common/hash/Hashing$ChecksumType;

    iget-object v0, v0, Lccsancom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2
    .param p0, "bits"    # I

    .line 567
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 568
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lccsancom/google/common/hash/HashCode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/hash/HashCode;",
            ">;)",
            "Lccsancom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 526
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 527
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/hash/HashCode;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 528
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/hash/HashCode;

    invoke-virtual {v1}, Lccsancom/google/common/hash/HashCode;->bits()I

    move-result v1

    .line 529
    .local v1, "bits":I
    div-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    .line 530
    .local v2, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/hash/HashCode;

    .line 531
    .local v4, "hashCode":Lccsancom/google/common/hash/HashCode;
    invoke-virtual {v4}, Lccsancom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v5

    .line 532
    .local v5, "nextBytes":[B
    array-length v6, v5

    array-length v7, v2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "All hashcodes must have the same bit length."

    invoke-static {v6, v7}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 534
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 535
    aget-byte v7, v2, v6

    mul-int/lit8 v7, v7, 0x25

    aget-byte v8, v5, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 534
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 537
    .end local v4    # "hashCode":Lccsancom/google/common/hash/HashCode;
    .end local v5    # "nextBytes":[B
    .end local v6    # "i":I
    :cond_1
    goto :goto_0

    .line 538
    :cond_2
    invoke-static {v2}, Lccsancom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lccsancom/google/common/hash/HashCode;

    move-result-object v3

    return-object v3
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lccsancom/google/common/hash/HashCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/hash/HashCode;",
            ">;)",
            "Lccsancom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 551
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/hash/HashCode;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 553
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/hash/HashCode;

    invoke-virtual {v1}, Lccsancom/google/common/hash/HashCode;->bits()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 554
    .local v1, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/hash/HashCode;

    .line 555
    .local v3, "hashCode":Lccsancom/google/common/hash/HashCode;
    invoke-virtual {v3}, Lccsancom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 556
    .local v4, "nextBytes":[B
    array-length v5, v4

    array-length v6, v1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v6, "All hashcodes must have the same bit length."

    invoke-static {v5, v6}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 558
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 559
    aget-byte v6, v1, v5

    aget-byte v7, v4, v5

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 558
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 561
    .end local v3    # "hashCode":Lccsancom/google/common/hash/HashCode;
    .end local v4    # "nextBytes":[B
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 562
    :cond_2
    invoke-static {v1}, Lccsancom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lccsancom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method

.method public static varargs concatenating(Lccsancom/google/common/hash/HashFunction;Lccsancom/google/common/hash/HashFunction;[Lccsancom/google/common/hash/HashFunction;)Lccsancom/google/common/hash/HashFunction;
    .locals 4
    .param p0, "first"    # Lccsancom/google/common/hash/HashFunction;
    .param p1, "second"    # Lccsancom/google/common/hash/HashFunction;
    .param p2, "rest"    # [Lccsancom/google/common/hash/HashFunction;

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/common/hash/HashFunction;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    new-instance v1, Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v2, 0x0

    new-array v2, v2, [Lccsancom/google/common/hash/HashFunction;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lccsancom/google/common/hash/HashFunction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lccsancom/google/common/hash/HashFunction;Lccsancom/google/common/hash/Hashing$1;)V

    return-object v1
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lccsancom/google/common/hash/HashFunction;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/hash/HashFunction;",
            ">;)",
            "Lccsancom/google/common/hash/HashFunction;"
        }
    .end annotation

    .line 602
    .local p0, "hashFunctions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/google/common/hash/HashFunction;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/common/hash/HashFunction;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/hash/HashFunction;

    .line 606
    .local v2, "hashFunction":Lccsancom/google/common/hash/HashFunction;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v2    # "hashFunction":Lccsancom/google/common/hash/HashFunction;
    goto :goto_0

    .line 608
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "number of hash functions (%s) must be > 0"

    invoke-static {v1, v4, v3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 609
    new-instance v1, Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;

    new-array v2, v2, [Lccsancom/google/common/hash/HashFunction;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lccsancom/google/common/hash/HashFunction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lccsancom/google/common/hash/HashFunction;Lccsancom/google/common/hash/Hashing$1;)V

    return-object v1
.end method

.method public static consistentHash(JI)I
    .locals 6
    .param p0, "input"    # J
    .param p2, "buckets"    # I

    .line 500
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "buckets must be positive: %s"

    invoke-static {v0, v1, p2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 501
    new-instance v0, Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 502
    .local v0, "generator":Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;
    const/4 v1, 0x0

    .line 507
    .local v1, "candidate":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-double v2, v2

    invoke-virtual {v0}, Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 508
    .local v2, "next":I
    if-ltz v2, :cond_1

    if-ge v2, p2, :cond_1

    .line 509
    move v1, v2

    goto :goto_1

    .line 511
    :cond_1
    return v1
.end method

.method public static consistentHash(Lccsancom/google/common/hash/HashCode;I)I
    .locals 2
    .param p0, "hashCode"    # Lccsancom/google/common/hash/HashCode;
    .param p1, "buckets"    # I

    .line 465
    invoke-virtual {p0}, Lccsancom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lccsancom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 370
    sget-object v0, Lccsancom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lccsancom/google/common/hash/Hashing$ChecksumType;

    iget-object v0, v0, Lccsancom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 354
    sget-object v0, Lccsancom/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static farmHashFingerprint64()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 430
    sget-object v0, Lccsancom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lccsancom/google/common/hash/HashFunction;
    .locals 6
    .param p0, "minimumBits"    # I

    .line 65
    invoke-static {p0}, Lccsancom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 67
    .local v0, "bits":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 68
    sget-object v1, Lccsancom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lccsancom/google/common/hash/HashFunction;

    return-object v1

    .line 70
    :cond_0
    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    .line 71
    sget-object v1, Lccsancom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lccsancom/google/common/hash/HashFunction;

    return-object v1

    .line 75
    :cond_1
    add-int/lit8 v2, v0, 0x7f

    div-int/2addr v2, v1

    .line 76
    .local v2, "hashFunctionsNeeded":I
    new-array v1, v2, [Lccsancom/google/common/hash/HashFunction;

    .line 77
    .local v1, "hashFunctions":[Lccsancom/google/common/hash/HashFunction;
    const/4 v3, 0x0

    sget-object v4, Lccsancom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lccsancom/google/common/hash/HashFunction;

    aput-object v4, v1, v3

    .line 78
    sget v3, Lccsancom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 79
    .local v3, "seed":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 80
    const v5, 0x596f0ddf

    add-int/2addr v3, v5

    .line 81
    invoke-static {v3}, Lccsancom/google/common/hash/Hashing;->murmur3_128(I)Lccsancom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v4

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lccsancom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lccsancom/google/common/hash/HashFunction;Lccsancom/google/common/hash/Hashing$1;)V

    return-object v4
.end method

.method public static hmacMd5(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 243
    new-instance v0, Lccsancom/google/common/hash/MacHashFunction;

    const-string v1, "hmacMd5"

    invoke-static {v1, p0}, Lccsancom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacMD5"

    invoke-direct {v0, v2, p0, v1}, Lccsancom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacMd5([B)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 256
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacMD5"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lccsancom/google/common/hash/Hashing;->hmacMd5(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 269
    new-instance v0, Lccsancom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha1"

    invoke-static {v1, p0}, Lccsancom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v2, p0, v1}, Lccsancom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha1([B)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 282
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lccsancom/google/common/hash/Hashing;->hmacSha1(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 295
    new-instance v0, Lccsancom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha256"

    invoke-static {v1, p0}, Lccsancom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v2, p0, v1}, Lccsancom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256([B)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 308
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lccsancom/google/common/hash/Hashing;->hmacSha256(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 321
    new-instance v0, Lccsancom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha512"

    invoke-static {v1, p0}, Lccsancom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v2, p0, v1}, Lccsancom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512([B)Lccsancom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .line 334
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lccsancom/google/common/hash/Hashing;->hmacSha512(Ljava/security/Key;)Lccsancom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method private static hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;

    .line 338
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 340
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 338
    const-string v1, "Hashing.%s(Key[algorithm=%s, format=%s])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5()Lccsancom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    sget-object v0, Lccsancom/google/common/hash/Hashing$Md5Holder;->MD5:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 134
    sget-object v0, Lccsancom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lccsancom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .line 123
    new-instance v0, Lccsancom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lccsancom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 112
    sget-object v0, Lccsancom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lccsancom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .line 101
    new-instance v0, Lccsancom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lccsancom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lccsancom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    sget-object v0, Lccsancom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 201
    sget-object v0, Lccsancom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha384()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 215
    sget-object v0, Lccsancom/google/common/hash/Hashing$Sha384Holder;->SHA_384:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 225
    sget-object v0, Lccsancom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lccsancom/google/common/hash/HashFunction;
    .locals 1

    .line 144
    sget-object v0, Lccsancom/google/common/hash/SipHashFunction;->SIP_HASH_24:Lccsancom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lccsancom/google/common/hash/HashFunction;
    .locals 8
    .param p0, "k0"    # J
    .param p2, "k1"    # J

    .line 154
    new-instance v7, Lccsancom/google/common/hash/SipHashFunction;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v7
.end method
