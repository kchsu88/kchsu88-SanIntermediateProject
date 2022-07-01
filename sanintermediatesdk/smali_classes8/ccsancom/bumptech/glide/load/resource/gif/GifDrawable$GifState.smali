.class Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifState"
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77


# instance fields
.field bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field context:Lccsanandroid/content/Context;

.field data:[B

.field firstFrame:Lccsanandroid/graphics/Bitmap;

.field frameTransformation:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field gifHeader:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

.field targetHeight:I

.field targetWidth:I


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/gifdecoder/GifHeader;[BLccsanandroid/content/Context;Lccsancom/bumptech/glide/load/Transformation;IILccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "header"    # Lccsancom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "data"    # [B
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p5, "targetWidth"    # I
    .param p6, "targetHeight"    # I
    .param p7, "provider"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    .param p8, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p9, "firstFrame"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Lccsanandroid/content/Context;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;II",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lccsanandroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 335
    .local p4, "frameTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 336
    if-eqz p9, :cond_0

    .line 339
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 340
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    .line 341
    iput-object p8, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 342
    iput-object p9, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    .line 343
    invoke-virtual {p3}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Lccsanandroid/content/Context;

    .line 344
    iput-object p4, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 345
    iput p5, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    .line 346
    iput p6, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    .line 347
    iput-object p7, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 348
    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 1
    .param p1, "original"    # Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 350
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lccsancom/bumptech/glide/gifdecoder/GifHeader;

    .line 353
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    .line 354
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Lccsanandroid/content/Context;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Lccsanandroid/content/Context;

    .line 355
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lccsancom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 356
    iget v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    .line 357
    iget v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    .line 358
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 359
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 360
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Lccsanandroid/graphics/Bitmap;

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 371
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 366
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
