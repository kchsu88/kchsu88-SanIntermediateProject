.class public Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;
.super Lccsanandroidx/appcompat/widget/AppCompatImageView;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
    }
.end annotation


# instance fields
.field private mCrossfade:F

.field private mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

.field mLayers:[Lccsanandroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPath:Lccsanandroid/graphics/Path;

.field mRect:Lccsanandroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 297
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 284
    new-instance v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    .line 287
    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 302
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 284
    new-instance v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    .line 287
    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 303
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 307
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 284
    new-instance v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    .line 287
    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 288
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 308
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 309
    return-void
.end method

.method static synthetic access$000(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 85
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 1
    .param p0, "x0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 85
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    return v0
.end method

.method private init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 312
    if-eqz p2, :cond_8

    .line 313
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 314
    invoke-virtual {v0, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 316
    .local v1, "N":I
    sget v2, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 318
    .local v2, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_7

    .line 319
    invoke-virtual {v0, v3}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 320
    .local v4, "attr":I
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 321
    invoke-virtual {v0, v4, v6}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    goto :goto_1

    .line 322
    :cond_0
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

    if-ne v4, v5, :cond_1

    .line 323
    invoke-virtual {v0, v4, v6}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setWarmth(F)V

    goto :goto_1

    .line 324
    :cond_1
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    if-ne v4, v5, :cond_2

    .line 325
    invoke-virtual {v0, v4, v6}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setSaturation(F)V

    goto :goto_1

    .line 326
    :cond_2
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

    if-ne v4, v5, :cond_3

    .line 327
    invoke-virtual {v0, v4, v6}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setContrast(F)V

    goto :goto_1

    .line 328
    :cond_3
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    if-ne v4, v5, :cond_4

    .line 329
    invoke-virtual {v0, v4, v6}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    goto :goto_1

    .line 330
    :cond_4
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v4, v5, :cond_5

    .line 331
    invoke-virtual {v0, v4, v6}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    goto :goto_1

    .line 332
    :cond_5
    sget v5, Lccsanandroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    if-ne v4, v5, :cond_6

    .line 333
    iget-boolean v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-direct {p0, v5}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setOverlay(Z)V

    .line 318
    .end local v4    # "attr":I
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 338
    if-eqz v2, :cond_8

    .line 339
    const/4 v3, 0x2

    new-array v3, v3, [Lccsanandroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    .line 340
    const/4 v4, 0x0

    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 341
    iget-object v3, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 343
    new-instance v3, Lccsanandroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    invoke-direct {v3, v5}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 344
    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 345
    iget-object v3, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v3}, Lccsanandroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 348
    .end local v0    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_8
    return-void
.end method

.method private setOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .line 357
    iput-boolean p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    .line 358
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "clip":Z
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 595
    iget v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 596
    const/4 v0, 0x1

    .line 597
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 598
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;)Z

    .line 601
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatImageView;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 602
    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 605
    :cond_1
    return-void
.end method

.method public getBrightness()F
    .locals 1

    .line 462
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    return v0
.end method

.method public getContrast()F
    .locals 1

    .line 397
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    return v0
.end method

.method public getCrossfade()F
    .locals 1

    .line 441
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    return v0
.end method

.method public getRound()F
    .locals 1

    .line 588
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .locals 1

    .line 579
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .line 378
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    return v0
.end method

.method public getWarmth()F
    .locals 1

    .line 416
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget v0, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return v0
.end method

.method public setBrightness(F)V
    .locals 1
    .param p1, "brightness"    # F

    .line 452
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 453
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 454
    return-void
.end method

.method public setContrast(F)V
    .locals 1
    .param p1, "contrast"    # F

    .line 387
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 388
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 389
    return-void
.end method

.method public setCrossfade(F)V
    .locals 4
    .param p1, "crossfade"    # F

    .line 425
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    .line 426
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 427
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 430
    :cond_0
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 431
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 433
    :cond_1
    return-void
.end method

.method public setRound(F)V
    .locals 8
    .param p1, "round"    # F

    .line 524
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 526
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 527
    .local v0, "tmp":F
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 528
    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    .line 529
    return-void

    .line 531
    .end local v0    # "tmp":F
    :cond_0
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 532
    .local v0, "change":Z
    :goto_0
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 534
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_6

    .line 535
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    if-nez v2, :cond_2

    .line 536
    new-instance v2, Lccsanandroid/graphics/Path;

    invoke-direct {v2}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    .line 538
    :cond_2
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    if-nez v2, :cond_3

    .line 539
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    .line 541
    :cond_3
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    .line 542
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    if-nez v2, :cond_4

    .line 543
    new-instance v2, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;

    invoke-direct {v2, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;-><init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    .line 551
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Lccsanandroid/view/ViewOutlineProvider;)V

    .line 553
    :cond_4
    invoke-virtual {p0, v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 555
    :cond_5
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v1

    .line 556
    .local v1, "w":I
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v2

    .line 557
    .local v2, "h":I
    iget-object v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v4, v4, v6, v7}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 558
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->reset()V

    .line 559
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    iget-object v5, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    iget v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    sget-object v7, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v6, v7}, Lccsanandroid/graphics/Path;->addRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Path$Direction;)V

    .line 560
    .end local v1    # "w":I
    .end local v2    # "h":I
    goto :goto_1

    .line 561
    :cond_6
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    .line 562
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 565
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 566
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_8

    .line 567
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    .line 571
    :cond_8
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 9
    .param p1, "round"    # F

    .line 473
    iget v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 474
    .local v0, "change":Z
    :goto_0
    iput p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 475
    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_5

    .line 476
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    if-nez v2, :cond_1

    .line 477
    new-instance v2, Lccsanandroid/graphics/Path;

    invoke-direct {v2}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    .line 479
    :cond_1
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    if-nez v2, :cond_2

    .line 480
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    .line 482
    :cond_2
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 483
    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    if-nez v2, :cond_3

    .line 484
    new-instance v2, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;

    invoke-direct {v2, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;-><init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)V

    iput-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Lccsanandroid/view/ViewOutlineProvider;

    .line 493
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Lccsanandroid/view/ViewOutlineProvider;)V

    .line 495
    :cond_3
    invoke-virtual {p0, v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 498
    :cond_4
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v1

    .line 499
    .local v1, "w":I
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v2

    .line 500
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 501
    .local v5, "r":F
    iget-object v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v6, v4, v4, v7, v8}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 502
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->reset()V

    .line 503
    iget-object v4, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Lccsanandroid/graphics/Path;

    iget-object v6, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Lccsanandroid/graphics/RectF;

    sget-object v7, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v5, v5, v7}, Lccsanandroid/graphics/Path;->addRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Path$Direction;)V

    .line 504
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v5    # "r":F
    goto :goto_1

    .line 505
    :cond_5
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    .line 506
    invoke-virtual {p0, v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 509
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 510
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    .line 511
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    .line 515
    :cond_7
    return-void
.end method

.method public setSaturation(F)V
    .locals 1
    .param p1, "saturation"    # F

    .line 368
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 369
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 370
    return-void
.end method

.method public setWarmth(F)V
    .locals 1
    .param p1, "warmth"    # F

    .line 406
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 407
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Lccsanandroid/widget/ImageView;)V

    .line 408
    return-void
.end method
