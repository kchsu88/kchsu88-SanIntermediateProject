.class final Lccsanandroidx/transition/Slide$2;
.super Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Lccsanandroidx/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F
    .locals 3
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 103
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 106
    .local v0, "isRtl":Z
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .local v1, "x":F
    goto :goto_1

    .line 109
    .end local v1    # "x":F
    :cond_1
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 111
    .restart local v1    # "x":F
    :goto_1
    return v1
.end method
