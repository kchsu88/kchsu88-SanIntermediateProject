.class public final synthetic Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;->f$0:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;->f$0:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {v0, p1, p2}, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$sortByScore$3(Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
