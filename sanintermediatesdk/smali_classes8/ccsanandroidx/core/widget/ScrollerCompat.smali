.class public final Lccsanandroidx/core/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mScroller:Lccsanandroid/widget/OverScroller;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "interpolator"    # Lccsanandroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "interpolator"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p2, :cond_0

    .line 58
    new-instance v0, Lccsanandroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Lccsanandroid/widget/OverScroller;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroid/widget/OverScroller;

    invoke-direct {v0, p1}, Lccsanandroid/widget/OverScroller;-><init>(Lccsanandroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    .line 59
    return-void
.end method

.method public static create(Lccsanandroid/content/Context;)Lccsanandroidx/core/widget/ScrollerCompat;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/core/widget/ScrollerCompat;->create(Lccsanandroid/content/Context;Lccsanandroid/view/animation/Interpolator;)Lccsanandroidx/core/widget/ScrollerCompat;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lccsanandroid/content/Context;Lccsanandroid/view/animation/Interpolator;)Lccsanandroidx/core/widget/ScrollerCompat;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "interpolator"    # Lccsanandroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "interpolator"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Lccsanandroidx/core/widget/ScrollerCompat;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/widget/ScrollerCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->abortAnimation()V

    .line 274
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY",
            "minX",
            "maxX",
            "minY",
            "maxY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    move-object v0, p0

    iget-object v1, v0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lccsanandroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 211
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY",
            "minX",
            "maxX",
            "minY",
            "maxY",
            "overX",
            "overY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    move-object v0, p0

    iget-object v1, v0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lccsanandroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 244
    return-void
.end method

.method public getCurrVelocity()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isOverScrolled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->isOverScrolled()Z

    move-result v0

    return v0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "finalX",
            "overX"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 295
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startY",
            "finalY",
            "overY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 315
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "minX",
            "maxX",
            "minY",
            "maxY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsanandroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    return v0
.end method

.method public startScroll(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "dx",
            "dy"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/widget/OverScroller;->startScroll(IIII)V

    .line 164
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "dx",
            "dy",
            "duration"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lccsanandroidx/core/widget/ScrollerCompat;->mScroller:Lccsanandroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/widget/OverScroller;->startScroll(IIIII)V

    .line 184
    return-void
.end method
