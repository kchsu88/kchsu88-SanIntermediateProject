.class Lccsancom/google/android/material/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;,
        Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;
    }
.end annotation


# static fields
.field private static final transformAlphaRectF:Lccsanandroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    sput-object v0, Lccsancom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Lccsanandroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateArea(Lccsanandroid/graphics/RectF;)F
    .locals 2
    .param p0, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 244
    invoke-virtual {p0}, Lccsanandroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method static convertToRelativeCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p0, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 47
    new-instance v0, Lccsancom/google/android/material/transition/TransitionUtils$1;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/transition/TransitionUtils$1;-><init>(Lccsanandroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method static createColorShader(I)Lccsanandroid/graphics/Shader;
    .locals 9
    .param p0, "color"    # I

    .line 193
    new-instance v8, Lccsanandroid/graphics/LinearGradient;

    sget-object v7, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move v5, p0

    move v6, p0

    invoke-direct/range {v0 .. v7}, Lccsanandroid/graphics/LinearGradient;-><init>(FFFFIILccsanandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method

.method static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 240
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method static findAncestorById(Lccsanandroid/view/View;I)Lccsanandroid/view/View;
    .locals 4
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "ancestorId"    # I

    .line 205
    invoke-virtual {p0}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "resourceName":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_1

    .line 207
    invoke-virtual {p0}, Lccsanandroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 208
    return-object p0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 211
    .local v1, "parent":Lccsanandroid/view/ViewParent;
    instance-of v2, v1, Lccsanandroid/view/View;

    if-eqz v2, :cond_1

    .line 212
    move-object p0, v1

    check-cast p0, Lccsanandroid/view/View;

    .line 216
    .end local v1    # "parent":Lccsanandroid/view/ViewParent;
    goto :goto_0

    .line 217
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid ancestor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method static findDescendantOrAncestorById(Lccsanandroid/view/View;I)Lccsanandroid/view/View;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "viewId"    # I

    .line 197
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "descendant":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 199
    return-object v0

    .line 201
    :cond_0
    invoke-static {p0, p1}, Lccsancom/google/android/material/transition/TransitionUtils;->findAncestorById(Lccsanandroid/view/View;I)Lccsanandroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static getLocationOnScreen(Lccsanandroid/view/View;)Lccsanandroid/graphics/RectF;
    .locals 10
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 230
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 231
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 232
    .local v1, "left":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 233
    .local v2, "top":I
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 234
    .local v3, "right":I
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 235
    .local v4, "bottom":I
    new-instance v5, Lccsanandroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    int-to-float v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method static getRelativeBounds(Lccsanandroid/view/View;)Lccsanandroid/graphics/RectF;
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 221
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method static getRelativeBoundsRect(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 225
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static isShapeAppearanceSignificant(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)Z
    .locals 2
    .param p0, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 96
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 96
    :goto_1
    return v0
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .line 108
    sub-float v0, p1, p0

    mul-float v0, v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static lerp(FFFFF)F
    .locals 6
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "startFraction"    # F
    .param p3, "endFraction"    # F
    .param p4, "fraction"    # F

    .line 118
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFFFFZ)F

    move-result v0

    return v0
.end method

.method static lerp(FFFFFZ)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "startFraction"    # F
    .param p3, "endFraction"    # F
    .param p4, "fraction"    # F
    .param p5, "allowOvershoot"    # Z

    .line 129
    if-eqz p5, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 130
    :cond_0
    invoke-static {p0, p1, p4}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 132
    :cond_1
    cmpg-float v0, p4, p2

    if-gez v0, :cond_2

    .line 133
    return p0

    .line 135
    :cond_2
    cmpl-float v0, p4, p3

    if-lez v0, :cond_3

    .line 136
    return p1

    .line 139
    :cond_3
    sub-float v0, p4, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static lerp(IIFFF)I
    .locals 4
    .param p0, "startValue"    # I
    .param p1, "endValue"    # I
    .param p2, "startFraction"    # F
    .param p3, "endFraction"    # F
    .param p4, "fraction"    # F

    .line 148
    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    .line 149
    return p0

    .line 151
    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    .line 152
    return p1

    .line 154
    :cond_1
    int-to-float v0, p0

    int-to-float v1, p1

    sub-float v2, p4, p2

    sub-float v3, p3, p2

    div-float/2addr v2, v3

    .line 155
    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 154
    return v0
.end method

.method static lerp(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;FFF)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 7
    .param p0, "startValue"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "endValue"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "startBounds"    # Lccsanandroid/graphics/RectF;
    .param p3, "endBounds"    # Lccsanandroid/graphics/RectF;
    .param p4, "startFraction"    # F
    .param p5, "endFraction"    # F
    .param p6, "fraction"    # F

    .line 166
    cmpg-float v0, p6, p4

    if-gez v0, :cond_0

    .line 167
    return-object p0

    .line 169
    :cond_0
    cmpl-float v0, p6, p5

    if-lez v0, :cond_1

    .line 170
    return-object p1

    .line 173
    :cond_1
    new-instance v0, Lccsancom/google/android/material/transition/TransitionUtils$2;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/material/transition/TransitionUtils$2;-><init>(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/RectF;FFF)V

    invoke-static {p0, p1, p2, v0}, Lccsancom/google/android/material/transition/TransitionUtils;->transformCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method static maybeAddTransition(Lccsanandroidx/transition/TransitionSet;Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Lccsanandroidx/transition/TransitionSet;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 293
    :cond_0
    return-void
.end method

.method static maybeRemoveTransition(Lccsanandroidx/transition/TransitionSet;Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Lccsanandroidx/transition/TransitionSet;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/TransitionSet;->removeTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 299
    :cond_0
    return-void
.end method

.method private static saveLayerAlphaCompat(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Rect;I)I
    .locals 8
    .param p0, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;
    .param p2, "alpha"    # I

    .line 250
    sget-object v0, Lccsancom/google/android/material/transition/TransitionUtils;->transformAlphaRectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 251
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 252
    invoke-virtual {p0, v0, p2}, Lccsanandroid/graphics/Canvas;->saveLayerAlpha(Lccsanandroid/graphics/RectF;I)I

    move-result v0

    return v0

    .line 254
    :cond_0
    iget v2, v0, Lccsanandroid/graphics/RectF;->left:F

    iget v3, v0, Lccsanandroid/graphics/RectF;->top:F

    iget v4, v0, Lccsanandroid/graphics/RectF;->right:F

    iget v5, v0, Lccsanandroid/graphics/RectF;->bottom:F

    const/16 v7, 0x1f

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lccsanandroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method static transform(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Rect;FFFILccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;)V
    .locals 2
    .param p0, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "scale"    # F
    .param p5, "alpha"    # I
    .param p6, "op"    # Lccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;

    .line 271
    if-gtz p5, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v0

    .line 276
    .local v0, "checkpoint":I
    invoke-virtual {p0, p2, p3}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 277
    invoke-virtual {p0, p4, p4}, Lccsanandroid/graphics/Canvas;->scale(FF)V

    .line 278
    const/16 v1, 0xff

    if-ge p5, v1, :cond_1

    .line 279
    invoke-static {p0, p1, p5}, Lccsancom/google/android/material/transition/TransitionUtils;->saveLayerAlphaCompat(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Rect;I)I

    .line 281
    :cond_1
    invoke-interface {p6, p0}, Lccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;->run(Lccsanandroid/graphics/Canvas;)V

    .line 282
    invoke-virtual {p0, v0}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 283
    return-void
.end method

.method static transformCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 4
    .param p0, "shapeAppearanceModel1"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "shapeAppearanceModel2"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "shapeAppearanceModel1Bounds"    # Lccsanandroid/graphics/RectF;
    .param p3, "op"    # Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;

    .line 69
    nop

    .line 70
    invoke-static {p0, p2}, Lccsancom/google/android/material/transition/TransitionUtils;->isShapeAppearanceSignificant(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 74
    .local v0, "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    :goto_0
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 78
    invoke-virtual {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 76
    invoke-interface {p3, v2, v3}, Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 80
    invoke-interface {p3, v2, v3}, Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 84
    invoke-interface {p3, v2, v3}, Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 88
    invoke-interface {p3, v2, v3}, Lccsancom/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 74
    return-object v1
.end method
