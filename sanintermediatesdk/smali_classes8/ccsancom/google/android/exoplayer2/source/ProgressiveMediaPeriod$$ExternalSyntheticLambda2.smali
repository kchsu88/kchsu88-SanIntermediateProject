.class public final synthetic Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/extractor/SeekMap;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$1:Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$1:Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lambda$seekMap$1$com-google-android-exoplayer2-source-ProgressiveMediaPeriod(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method
