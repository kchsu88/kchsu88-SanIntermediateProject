.class Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;
.super Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawable21.java"


# direct methods
.method protected constructor <init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V
    .locals 0
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

    .line 32
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getOutline(Lccsanandroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Lccsanandroid/graphics/Outline;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outline"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->updateDstRect()V

    .line 38
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mDstRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->getCornerRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Outline;->setRoundRect(Lccsanandroid/graphics/Rect;F)V

    .line 39
    return-void
.end method

.method gravityCompatApply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 6
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

    .line 57
    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V

    .line 59
    return-void
.end method

.method public hasMipMap()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 43
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 45
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable21;->invalidateSelf()V

    .line 47
    :cond_0
    return-void
.end method
