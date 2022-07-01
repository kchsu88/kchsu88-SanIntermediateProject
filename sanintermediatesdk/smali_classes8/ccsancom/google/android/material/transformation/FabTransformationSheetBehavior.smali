.class public Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lccsancom/google/android/material/transformation/FabTransformationBehavior;
.source "FabTransformationSheetBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private updateImportantForAccessibility(Lccsanandroid/view/View;Z)V
    .locals 9
    .param p1, "sheet"    # Lccsanandroid/view/View;
    .param p2, "expanded"    # Z

    .line 84
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 85
    .local v0, "viewParent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    move-object v1, v0

    check-cast v1, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 90
    .local v1, "parent":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    invoke-virtual {v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 91
    .local v2, "childCount":I
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-eqz p2, :cond_1

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 95
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 96
    invoke-virtual {v1, v3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "child":Lccsanandroid/view/View;
    nop

    .line 100
    invoke-virtual {v5}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v6, :cond_2

    .line 101
    invoke-virtual {v5}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    instance-of v6, v6, Lccsancom/google/android/material/transformation/FabTransformationScrimBehavior;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 103
    .local v6, "hasScrimBehavior":Z
    :goto_1
    if-eq v5, p1, :cond_6

    if-eqz v6, :cond_3

    .line 104
    goto :goto_2

    .line 107
    :cond_3
    if-nez p2, :cond_4

    .line 108
    iget-object v7, p0, Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v7, :cond_6

    .line 109
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 111
    iget-object v7, p0, Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v7}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    goto :goto_2

    .line 115
    :cond_4
    sget v7, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v4, :cond_5

    .line 116
    iget-object v7, p0, Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v5}, Lccsanandroid/view/View;->getImportantForAccessibility()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_5
    const/4 v7, 0x4

    invoke-static {v5, v7}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 95
    .end local v5    # "child":Lccsanandroid/view/View;
    .end local v6    # "hasScrimBehavior":Z
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "i":I
    :cond_7
    if-nez p2, :cond_8

    .line 125
    const/4 v3, 0x0

    iput-object v3, p0, Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 127
    :cond_8
    return-void
.end method


# virtual methods
.method protected onCreateMotionSpec(Lccsanandroid/content/Context;Z)Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "expanded"    # Z

    .line 63
    if-eqz p2, :cond_0

    .line 64
    sget v0, Lccsancom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    .local v0, "specRes":I
    goto :goto_0

    .line 66
    .end local v0    # "specRes":I
    :cond_0
    sget v0, Lccsancom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    .line 69
    .restart local v0    # "specRes":I
    :goto_0
    new-instance v1, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    invoke-direct {v1}, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    .line 70
    .local v1, "spec":Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    invoke-static {p1, v0}, Lccsancom/google/android/material/animation/MotionSpec;->createFromResource(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/animation/MotionSpec;

    move-result-object v2

    iput-object v2, v1, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lccsancom/google/android/material/animation/MotionSpec;

    .line 71
    new-instance v2, Lccsancom/google/android/material/animation/Positioning;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lccsancom/google/android/material/animation/Positioning;-><init>(IFF)V

    iput-object v2, v1, Lccsancom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lccsancom/google/android/material/animation/Positioning;

    .line 72
    return-object v1
.end method

.method protected onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z
    .locals 1
    .param p1, "dependency"    # Lccsanandroid/view/View;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "animated"    # Z

    .line 79
    invoke-direct {p0, p2, p3}, Lccsancom/google/android/material/transformation/FabTransformationSheetBehavior;->updateImportantForAccessibility(Lccsanandroid/view/View;Z)V

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transformation/FabTransformationBehavior;->onExpandedStateChange(Lccsanandroid/view/View;Lccsanandroid/view/View;ZZ)Z

    move-result v0

    return v0
.end method
