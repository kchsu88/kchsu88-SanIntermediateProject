.class final Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinearCongruentialGenerator"
.end annotation


# instance fields
.field private state:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "seed"    # J

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-wide p1, p0, Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    .line 669
    return-void
.end method


# virtual methods
.method public nextDouble()D
    .locals 4

    .line 672
    iget-wide v0, p0, Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    const-wide v2, 0x27bb2ee687b0b0fdL    # 2.694898184339827E-117

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/google/common/hash/Hashing$LinearCongruentialGenerator;->state:J

    .line 673
    const/16 v2, 0x21

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method
