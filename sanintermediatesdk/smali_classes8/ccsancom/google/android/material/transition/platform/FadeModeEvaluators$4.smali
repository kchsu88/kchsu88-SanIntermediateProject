.class final Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$4;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFF)Lccsancom/google/android/material/transition/platform/FadeModeResult;
    .locals 5
    .param p1, "progress"    # F
    .param p2, "fadeStartFraction"    # F
    .param p3, "fadeEndFraction"    # F

    .line 72
    sub-float v0, p3, p2

    .line 73
    .local v0, "fadeFractionDiff":F
    const v1, 0x3eb33333    # 0.35f

    mul-float v1, v1, v0

    add-float/2addr v1, p2

    .line 75
    .local v1, "fadeFractionThreshold":F
    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v1, p1}, Lccsancom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    move-result v4

    .line 76
    .local v4, "startAlpha":I
    invoke-static {v3, v2, v1, p3, p1}, Lccsancom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    move-result v2

    .line 77
    .local v2, "endAlpha":I
    invoke-static {v4, v2}, Lccsancom/google/android/material/transition/platform/FadeModeResult;->startOnTop(II)Lccsancom/google/android/material/transition/platform/FadeModeResult;

    move-result-object v3

    return-object v3
.end method
