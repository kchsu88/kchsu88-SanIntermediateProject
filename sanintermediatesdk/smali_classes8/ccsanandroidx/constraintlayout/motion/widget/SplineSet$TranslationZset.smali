.class Lccsanandroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;
.super Lccsanandroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationZset"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Lccsanandroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Lccsanandroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "t"    # F

    .line 248
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 249
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;->get(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setTranslationZ(F)V

    .line 251
    :cond_0
    return-void
.end method
