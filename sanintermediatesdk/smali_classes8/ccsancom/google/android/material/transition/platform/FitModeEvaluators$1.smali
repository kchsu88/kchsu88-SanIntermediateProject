.class final Lccsancom/google/android/material/transition/platform/FitModeEvaluators$1;
.super Ljava/lang/Object;
.source "FitModeEvaluators.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/FitModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/platform/FitModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMask(Lccsanandroid/graphics/RectF;FLccsancom/google/android/material/transition/platform/FitModeResult;)V
    .locals 3
    .param p1, "maskBounds"    # Lccsanandroid/graphics/RectF;
    .param p2, "maskMultiplier"    # F
    .param p3, "fitModeResult"    # Lccsancom/google/android/material/transition/platform/FitModeResult;

    .line 74
    iget v0, p3, Lccsancom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    iget v1, p3, Lccsancom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    sub-float/2addr v0, v1

    .line 75
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 76
    .local v0, "currentHeightDiff":F
    iget v1, p1, Lccsanandroid/graphics/RectF;->bottom:F

    mul-float v2, v0, p2

    sub-float/2addr v1, v2

    iput v1, p1, Lccsanandroid/graphics/RectF;->bottom:F

    .line 77
    return-void
.end method

.method public evaluate(FFFFFFF)Lccsancom/google/android/material/transition/platform/FitModeResult;
    .locals 13
    .param p1, "progress"    # F
    .param p2, "scaleStartFraction"    # F
    .param p3, "scaleEndFraction"    # F
    .param p4, "startWidth"    # F
    .param p5, "startHeight"    # F
    .param p6, "endWidth"    # F
    .param p7, "endHeight"    # F

    .line 46
    nop

    .line 47
    const/4 v5, 0x1

    move/from16 v0, p4

    move/from16 v1, p6

    move v2, p2

    move/from16 v3, p3

    move v4, p1

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v0

    .line 54
    .local v0, "currentWidth":F
    div-float v1, v0, p4

    .line 55
    .local v1, "startScale":F
    div-float v2, v0, p6

    .line 56
    .local v2, "endScale":F
    mul-float v3, p5, v1

    .line 57
    .local v3, "currentStartHeight":F
    mul-float v4, p7, v2

    .line 58
    .local v4, "currentEndHeight":F
    new-instance v5, Lccsancom/google/android/material/transition/platform/FitModeResult;

    move-object v6, v5

    move v7, v1

    move v8, v2

    move v9, v0

    move v10, v3

    move v11, v0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lccsancom/google/android/material/transition/platform/FitModeResult;-><init>(FFFFFF)V

    return-object v5
.end method

.method public shouldMaskStartBounds(Lccsancom/google/android/material/transition/platform/FitModeResult;)Z
    .locals 2
    .param p1, "fitModeResult"    # Lccsancom/google/android/material/transition/platform/FitModeResult;

    .line 69
    iget v0, p1, Lccsancom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    iget v1, p1, Lccsancom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
