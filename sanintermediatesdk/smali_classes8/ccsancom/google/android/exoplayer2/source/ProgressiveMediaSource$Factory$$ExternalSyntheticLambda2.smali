.class public final synthetic Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor()Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->lambda$setExtractorsFactory$1(Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lccsancom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    move-result-object v0

    return-object v0
.end method
