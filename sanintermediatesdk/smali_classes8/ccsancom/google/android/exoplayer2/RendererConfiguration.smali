.class public final Lccsancom/google/android/exoplayer2/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# static fields
.field public static final DEFAULT:Lccsancom/google/android/exoplayer2/RendererConfiguration;


# instance fields
.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lccsancom/google/android/exoplayer2/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    sput-object v0, Lccsancom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lccsancom/google/android/exoplayer2/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "tunneling"    # Z

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/google/android/exoplayer2/RendererConfiguration;

    .line 44
    .local v2, "other":Lccsancom/google/android/exoplayer2/RendererConfiguration;
    iget-boolean v3, p0, Lccsancom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    iget-boolean v4, v2, Lccsancom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 41
    .end local v2    # "other":Lccsancom/google/android/exoplayer2/RendererConfiguration;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 49
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
