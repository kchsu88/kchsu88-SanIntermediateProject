.class Lccsanandroidx/constraintlayout/motion/widget/SplineSet$RotationXset;
.super Lccsanandroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationXset"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lccsanandroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Lccsanandroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F

    .line 185
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/SplineSet$RotationXset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setRotationX(F)V

    .line 186
    return-void
.end method
