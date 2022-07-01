.class public Lccsancom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCornerTreatment(I)Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1
    .param p0, "cornerFamily"    # I

    .line 31
    packed-switch p0, :pswitch_data_0

    .line 37
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_0
    new-instance v0, Lccsancom/google/android/material/shape/CutCornerTreatment;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/CutCornerTreatment;-><init>()V

    return-object v0

    .line 33
    :pswitch_1
    new-instance v0, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 43
    new-instance v0, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 48
    new-instance v0, Lccsancom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/EdgeTreatment;-><init>()V

    return-object v0
.end method

.method public static setElevation(Lccsanandroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "elevation"    # F

    .line 57
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public static setParentAbsoluteElevation(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 70
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    .line 72
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v1}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Lccsanandroid/view/View;Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static setParentAbsoluteElevation(Lccsanandroid/view/View;Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "materialShapeDrawable"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 83
    invoke-virtual {p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->isElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Lccsanandroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setParentAbsoluteElevation(F)V

    .line 86
    :cond_0
    return-void
.end method
