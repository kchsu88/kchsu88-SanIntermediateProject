.class public Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;
.super Ljava/lang/Object;
.source "MaterialContainerTransformSharedElementCallback.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeableViewShapeProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideShape(Lccsanandroid/view/View;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p1, "sharedElement"    # Lccsanandroid/view/View;

    .line 76
    instance-of v0, p1, Lccsancom/google/android/material/shape/Shapeable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/shape/Shapeable;

    .line 77
    invoke-interface {v0}, Lccsancom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0
.end method
