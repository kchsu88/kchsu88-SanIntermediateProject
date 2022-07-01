.class public final Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;
.super Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "IndeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;"
    }
.end annotation


# instance fields
.field private animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Lccsanandroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lccsancom/google/android/material/progressindicator/DrawingDelegate;Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "baseSpec"    # Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
            "Lccsancom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;",
            "Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Lccsanandroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    .local p3, "drawingDelegate":Lccsancom/google/android/material/progressindicator/DrawingDelegate;, "Lccsancom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    .local p4, "animatorDelegate":Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;, "Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<Lccsanandroid/animation/ObjectAnimator;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 42
    invoke-virtual {p0, p3}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->setDrawingDelegate(Lccsancom/google/android/material/progressindicator/DrawingDelegate;)V

    .line 43
    invoke-virtual {p0, p4}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    .line 44
    return-void
.end method

.method public static createCircularDrawable(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "spec"    # Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;

    new-instance v1, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-direct {v1, p1}, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;-><init>(Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    new-instance v2, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-direct {v2, p1}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;-><init>(Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lccsancom/google/android/material/progressindicator/DrawingDelegate;Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    return-object v0
.end method

.method public static createLinearDrawable(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "spec"    # Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<",
            "Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;

    new-instance v1, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;

    invoke-direct {v1, p1}, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;-><init>(Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    iget v2, p1, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    if-nez v2, :cond_0

    new-instance v2, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-direct {v2, p1}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;-><init>(Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-direct {v2, p0, p1}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lccsancom/google/android/material/progressindicator/DrawingDelegate;Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 132
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 134
    .local v0, "clipBounds":Lccsanandroid/graphics/Rect;
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->getClipBounds(Lccsanandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 140
    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->getGrowFraction()F

    move-result v2

    invoke-virtual {v1, p1, v2}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Lccsanandroid/graphics/Canvas;F)V

    .line 143
    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "segmentIndex":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 148
    iget-object v3, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v5, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->paint:Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    mul-int/lit8 v4, v1, 0x2

    aget v6, v2, v4

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v7, v2, v4

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    aget v8, v2, v1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->fillIndicator(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFI)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "segmentIndex":I
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 156
    return-void

    .line 136
    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v0

    return v0
.end method

.method getAnimatorDelegate()Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Lccsanandroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    return-object v0
.end method

.method getDrawingDelegate()Lccsancom/google/android/material/progressindicator/DrawingDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 124
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 119
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hideNow()Z
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiding()Z
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic registerAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->registerAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    return-void
.end method

.method setAnimatorDelegate(Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
            "Lccsanandroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    .local p1, "animatorDelegate":Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;, "Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<Lccsanandroid/animation/ObjectAnimator;>;"
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    .line 168
    invoke-virtual {p1, p0}, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerDrawable(Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;)V

    .line 169
    return-void
.end method

.method public bridge synthetic setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    return-void
.end method

.method setDrawingDelegate(Lccsancom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    .local p1, "drawingDelegate":Lccsancom/google/android/material/progressindicator/DrawingDelegate;, "Lccsancom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->drawingDelegate:Lccsancom/google/android/material/progressindicator/DrawingDelegate;

    .line 178
    invoke-virtual {p1, p0}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;->registerDrawable(Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    .line 179
    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVisible(ZZZ)Z
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method setVisibleInternal(ZZZ)Z
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z
    .param p3, "animate"    # Z

    .line 99
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result v0

    .line 102
    .local v0, "changed":Z
    invoke-virtual {p0}, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {v1}, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 106
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lccsancom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->context:Lccsanandroid/content/Context;

    .line 107
    invoke-virtual {v2}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Lccsanandroid/content/ContentResolver;)F

    move-result v1

    .line 108
    .local v1, "systemAnimatorDurationScale":F
    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 111
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDelegate:Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->startAnimator()V

    .line 114
    :cond_2
    return v0
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0

    .line 27
    .local p0, "this":Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;, "Lccsancom/google/android/material/progressindicator/IndeterminateDrawable<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->unregisterAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method
