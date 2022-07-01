.class final Lccsancom/google/common/base/Absent;
.super Lccsancom/google/common/base/Optional;
.source "Absent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/base/Optional<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/base/Absent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Absent<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lccsancom/google/common/base/Absent;

    invoke-direct {v0}, Lccsancom/google/common/base/Absent;-><init>()V

    sput-object v0, Lccsancom/google/common/base/Absent;->INSTANCE:Lccsancom/google/common/base/Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/base/Optional;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 96
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    sget-object v0, Lccsancom/google/common/base/Absent;->INSTANCE:Lccsancom/google/common/base/Absent;

    return-object v0
.end method

.method static withType()Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lccsancom/google/common/base/Absent;->INSTANCE:Lccsancom/google/common/base/Absent;

    return-object v0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 82
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 87
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    const v0, 0x79a31aac

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 38
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public or(Lccsancom/google/common/base/Optional;)Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Optional<",
            "+TT;>;)",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    .local p1, "secondChoice":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<+TT;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Optional;

    return-object v0
.end method

.method public or(Lccsancom/google/common/base/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    .local p1, "supplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<+TT;>;"
    nop

    .line 60
    invoke-interface {p1}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 59
    const-string v1, "use Optional.orNull() instead of a Supplier that returns null"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public transform(Lccsancom/google/common/base/Function;)Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TT;TV;>;)",
            "Lccsancom/google/common/base/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lccsancom/google/common/base/Absent;, "Lccsancom/google/common/base/Absent<TT;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TT;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
