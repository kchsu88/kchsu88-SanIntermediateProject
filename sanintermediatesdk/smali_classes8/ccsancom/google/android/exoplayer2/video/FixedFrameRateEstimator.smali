.class final Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    }
.end annotation


# static fields
.field public static final CONSECUTIVE_MATCHING_FRAME_DURATIONS_FOR_SYNC:I = 0xf

.field static final MAX_MATCHING_FRAME_DIFFERENCE_NS:J = 0xf4240L


# instance fields
.field private candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field private candidateMatcherActive:Z

.field private currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field private framesWithoutSyncCount:I

.field private lastFramePresentationTimeNs:J

.field private switchToCandidateMatcherWhenSynced:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 50
    new-instance v0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 51
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 52
    return-void
.end method


# virtual methods
.method public getFrameDurationNs()J
    .locals 2

    .line 119
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public getFrameRate()F
    .locals 4

    .line 128
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 130
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 128
    :goto_0
    return v0
.end method

.method public getFramesWithoutSyncCount()I
    .locals 1

    .line 102
    iget v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return v0
.end method

.method public getMatchingFrameDurationSumNs()J
    .locals 2

    .line 110
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getMatchingFrameDurationSumNs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public isSynced()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    return v0
.end method

.method public onNextFrame(J)V
    .locals 7
    .param p1, "framePresentationTimeNs"    # J

    .line 69
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 70
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    if-nez v0, :cond_0

    .line 71
    iput-boolean v2, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    goto :goto_0

    .line 72
    :cond_0
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 73
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isLastFrameOutlier()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 77
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v0, v3, v4}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 79
    :cond_2
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 80
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 82
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 86
    .local v0, "previousMatcher":Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iput-object v3, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 87
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 88
    iput-boolean v2, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 89
    iput-boolean v2, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    .line 91
    .end local v0    # "previousMatcher":Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    :cond_4
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 92
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    add-int/lit8 v2, v0, 0x1

    :goto_1
    iput v2, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    .line 93
    return-void
.end method

.method public reset()V
    .locals 3

    .line 56
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 57
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 59
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 60
    iput v0, p0, Lccsancom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    .line 61
    return-void
.end method
