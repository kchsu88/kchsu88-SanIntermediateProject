.class public abstract Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "RoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x3


# instance fields
.field private mApplyGravity:Z

.field final mBitmap:Lccsanandroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapShader:Lccsanandroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mCornerRadius:F

.field final mDstRect:Lccsanandroid/graphics/Rect;

.field private final mDstRectF:Lccsanandroid/graphics/RectF;

.field private mGravity:I

.field private mIsCircular:Z

.field private final mPaint:Lccsanandroid/graphics/Paint;

.field private final mShaderMatrix:Lccsanandroid/graphics/Matrix;

.field private mTargetDensity:I


# direct methods
.method constructor <init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "res",
            "bitmap"
        }
    .end annotation

    .line 382
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/16 v0, 0xa0

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 51
    const/16 v0, 0x77

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 52
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    .line 54
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Lccsanandroid/graphics/Matrix;

    .line 57
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    .line 58
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 387
    :cond_0
    iput-object p2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 388
    if-eqz p2, :cond_1

    .line 389
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 390
    new-instance v0, Lccsanandroid/graphics/BitmapShader;

    sget-object v1, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    sget-object v2, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Lccsanandroid/graphics/BitmapShader;-><init>(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Shader$TileMode;Lccsanandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    .line 395
    :goto_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .line 84
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    iget v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 85
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    iget v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    .line 86
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 1
    .param p0, "toCompare"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toCompare"
        }
    .end annotation

    .line 398
    const v0, 0x3d4ccccd    # 0.05f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateCircularCornerRadius()V
    .locals 2

    .line 315
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    iget v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 316
    .local v0, "minCircularSize":I
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iput v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 317
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 261
    .local v0, "bitmap":Lccsanandroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateDstRect()V

    .line 266
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1}, Lccsanandroid/graphics/Paint;->getShader()Lccsanandroid/graphics/Shader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 267
    const/4 v1, 0x0

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    iget v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 271
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 284
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Lccsanandroid/graphics/Bitmap;
    .locals 1

    .line 80
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Lccsanandroid/graphics/ColorFilter;
    .locals 1

    .line 295
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getColorFilter()Lccsanandroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 356
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 140
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 366
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 361
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .line 371
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    const/4 v1, -0x3

    const/16 v2, 0x77

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 374
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 375
    .local v0, "bm":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    .line 377
    invoke-virtual {v2}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_2

    iget v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 378
    invoke-static {v2}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 375
    :goto_1
    return v1

    .line 372
    .end local v0    # "bm":Lccsanandroid/graphics/Bitmap;
    :cond_3
    :goto_2
    return v1
.end method

.method public final getPaint()Lccsanandroid/graphics/Paint;
    .locals 1

    .line 72
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    return-object v0
.end method

.method gravityCompatApply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "bounds"    # Lccsanandroid/graphics/Rect;
    .param p5, "outRect"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "bitmapWidth",
            "bitmapHeight",
            "bounds",
            "outRect"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasAntiAlias()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCircular()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    return v0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 345
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 346
    iget-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    .line 349
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 350
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 276
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 277
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 278
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 280
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aa"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 196
    return-void
.end method

.method public setCircular(Z)V
    .locals 2
    .param p1, "circular"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circular"
        }
    .end annotation

    .line 303
    iput-boolean p1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->updateCircularCornerRadius()V

    .line 307
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 308
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 310
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 312
    :goto_0
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Lccsanandroid/graphics/ColorFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 290
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 291
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cornerRadius"
        }
    .end annotation

    .line 330
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    .line 333
    invoke-static {p1}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 339
    :goto_0
    iput p1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 340
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 341
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dither"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setDither(Z)V

    .line 218
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 219
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 212
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 213
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 151
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 152
    iput p1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 154
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 156
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mipMap"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "density"
        }
    .end annotation

    .line 123
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_2

    .line 124
    if-nez p1, :cond_0

    const/16 v0, 0xa0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 125
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 130
    :cond_2
    return-void
.end method

.method public setTargetDensity(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 100
    return-void
.end method

.method public setTargetDensity(Lccsanandroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Lccsanandroid/util/DisplayMetrics;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metrics"
        }
    .end annotation

    .line 111
    iget v0, p1, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 112
    return-void
.end method

.method updateDstRect()V
    .locals 13

    .line 227
    iget-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_2

    .line 228
    iget-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mIsCircular:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    iget v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 230
    .local v0, "minDimen":I
    iget v4, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    move-object v3, p0

    move v5, v0

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 234
    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2}, Lccsanandroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3}, Lccsanandroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 235
    .local v2, "minDrawDimen":I
    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3}, Lccsanandroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 236
    .local v3, "insetX":I
    iget-object v4, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v4}, Lccsanandroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 237
    .local v4, "insetY":I
    iget-object v5, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Lccsanandroid/graphics/Rect;->inset(II)V

    .line 238
    const/high16 v5, 0x3f000000    # 0.5f

    int-to-float v6, v2

    mul-float v6, v6, v5

    iput v6, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 239
    .end local v0    # "minDimen":I
    .end local v2    # "minDrawDimen":I
    .end local v3    # "insetX":I
    .end local v4    # "insetY":I
    goto :goto_0

    .line 240
    :cond_0
    iget v8, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    iget v9, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    iget v10, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v11

    iget-object v12, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 242
    :goto_0
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 244
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Lccsanandroid/graphics/Matrix;

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    iget v2, v2, Lccsanandroid/graphics/RectF;->left:F

    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Lccsanandroid/graphics/Matrix;->setTranslate(FF)V

    .line 247
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Lccsanandroid/graphics/Matrix;

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    .line 248
    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Lccsanandroid/graphics/RectF;

    .line 249
    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 247
    invoke-virtual {v0, v2, v3}, Lccsanandroid/graphics/Matrix;->preScale(FF)Z

    .line 250
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mShaderMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/BitmapShader;->setLocalMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 251
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Lccsanandroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 254
    :cond_1
    iput-boolean v1, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 256
    :cond_2
    return-void
.end method
