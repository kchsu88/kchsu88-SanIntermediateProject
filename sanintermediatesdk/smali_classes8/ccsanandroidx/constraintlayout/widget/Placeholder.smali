.class public Lccsanandroidx/constraintlayout/widget/Placeholder;
.super Lccsanandroid/view/View;
.source "Placeholder.java"


# instance fields
.field private mContent:Lccsanandroid/view/View;

.field private mContentId:I

.field private mEmptyVisibility:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 47
    const/4 v1, 0x4

    iput v1, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 51
    invoke-direct {p0, v0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->init(Lccsanandroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 56
    invoke-direct {p0, p2}, Lccsanandroidx/constraintlayout/widget/Placeholder;->init(Lccsanandroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 61
    invoke-direct {p0, p2}, Lccsanandroidx/constraintlayout/widget/Placeholder;->init(Lccsanandroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 66
    invoke-direct {p0, p2}, Lccsanandroidx/constraintlayout/widget/Placeholder;->init(Lccsanandroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private init(Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 70
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    invoke-super {p0, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 72
    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder:[I

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 75
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 76
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 77
    .local v3, "attr":I
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_content:I

    if-ne v3, v4, :cond_0

    .line 78
    iget v4, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    goto :goto_1

    .line 80
    :cond_0
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_placeholder_emptyVisibility:I

    if-ne v3, v4, :cond_1

    .line 81
    iget v4, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 75
    .end local v3    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getContent()Lccsanandroid/view/View;
    .locals 1

    .line 112
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getEmptyVisibility()I
    .locals 1

    .line 104
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    return v0
.end method

.method public onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 120
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/16 v0, 0xdf

    invoke-virtual {p1, v0, v0, v0}, Lccsanandroid/graphics/Canvas;->drawRGB(III)V

    .line 122
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 123
    .local v0, "paint":Lccsanandroid/graphics/Paint;
    const/16 v1, 0xff

    const/16 v2, 0xd2

    invoke-virtual {v0, v1, v2, v2, v2}, Lccsanandroid/graphics/Paint;->setARGB(IIII)V

    .line 124
    sget-object v1, Lccsanandroid/graphics/Paint$Align;->CENTER:Lccsanandroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setTextAlign(Lccsanandroid/graphics/Paint$Align;)V

    .line 125
    sget-object v1, Lccsanandroid/graphics/Typeface;->DEFAULT:Lccsanandroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setTypeface(Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;

    .line 127
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 128
    .local v1, "r":Lccsanandroid/graphics/Rect;
    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Canvas;->getClipBounds(Lccsanandroid/graphics/Rect;)Z

    .line 129
    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setTextSize(F)V

    .line 130
    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v3

    .line 131
    .local v3, "cHeight":I
    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v4

    .line 132
    .local v4, "cWidth":I
    sget-object v5, Lccsanandroid/graphics/Paint$Align;->LEFT:Lccsanandroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Lccsanandroid/graphics/Paint;->setTextAlign(Lccsanandroid/graphics/Paint$Align;)V

    .line 133
    const-string v5, "?"

    .line 134
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v2, v6, v1}, Lccsanandroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILccsanandroid/graphics/Rect;)V

    .line 135
    int-to-float v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v2, v7

    iget v7, v1, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    .line 136
    .local v2, "x":F
    int-to-float v7, v3

    div-float/2addr v7, v6

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v6, v1, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    .line 137
    .local v7, "y":F
    invoke-virtual {p1, v5, v2, v7, v0}, Lccsanandroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLccsanandroid/graphics/Paint;)V

    .line 139
    .end local v0    # "paint":Lccsanandroid/graphics/Paint;
    .end local v1    # "r":Lccsanandroid/graphics/Rect;
    .end local v2    # "x":F
    .end local v3    # "cHeight":I
    .end local v4    # "cWidth":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "y":F
    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 168
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    if-ne v0, p1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 174
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 175
    .local v0, "layoutParamsContent":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput-boolean v1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 179
    .end local v0    # "layoutParamsContent":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    iput p1, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 180
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 181
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "v":Lccsanandroid/view/View;
    if-eqz v0, :cond_2

    .line 183
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 186
    .end local v0    # "v":Lccsanandroid/view/View;
    :cond_2
    return-void
.end method

.method public setEmptyVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 95
    iput p1, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 96
    return-void
.end method

.method public updatePostMeasure(Lccsanandroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4
    .param p1, "container"    # Lccsanandroidx/constraintlayout/widget/ConstraintLayout;

    .line 193
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 197
    .local v0, "layoutParams":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 198
    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 199
    .local v1, "layoutParamsContent":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v2, v1, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 200
    iget-object v2, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_1

    .line 201
    iget-object v2, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v1, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 203
    :cond_1
    iget-object v2, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_2

    .line 204
    iget-object v2, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v1, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 206
    :cond_2
    iget-object v2, v1, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public updatePreLayout(Lccsanandroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3
    .param p1, "container"    # Lccsanandroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    .line 152
    :cond_0
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContentId:I

    invoke-virtual {p1, v0}, Lccsanandroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    .line 153
    if-eqz v0, :cond_1

    .line 154
    nop

    .line 155
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 156
    .local v0, "layoutParamsContent":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 157
    iget-object v1, p0, Lccsanandroidx/constraintlayout/widget/Placeholder;->mContent:Lccsanandroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    .line 160
    .end local v0    # "layoutParamsContent":Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    return-void
.end method
