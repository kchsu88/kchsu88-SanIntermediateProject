.class Lccsancom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lccsancom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStrengthParser"
.end annotation


# instance fields
.field private final strength:Lccsancom/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lccsancom/google/common/cache/LocalCache$Strength;)V
    .locals 0
    .param p1, "strength"    # Lccsancom/google/common/cache/LocalCache$Strength;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lccsancom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;->strength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 371
    return-void
.end method


# virtual methods
.method public parse(Lccsancom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "spec"    # Lccsancom/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 375
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key %s does not take values"

    invoke-static {v2, v3, p2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 376
    iget-object v2, p1, Lccsancom/google/common/cache/CacheBuilderSpec;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lccsancom/google/common/cache/CacheBuilderSpec;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    const-string v2, "%s was already set to %s"

    invoke-static {v0, v2, p2, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;->strength:Lccsancom/google/common/cache/LocalCache$Strength;

    iput-object v0, p1, Lccsancom/google/common/cache/CacheBuilderSpec;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 378
    return-void
.end method
