.class final Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "MaterialShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/MaterialShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaterialShapeDrawableState"
.end annotation


# instance fields
.field public alpha:I

.field public colorFilter:Lccsanandroid/graphics/ColorFilter;

.field public elevation:F

.field public elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

.field public fillColor:Lccsanandroid/content/res/ColorStateList;

.field public interpolation:F

.field public padding:Lccsanandroid/graphics/Rect;

.field public paintStyle:Lccsanandroid/graphics/Paint$Style;

.field public parentAbsoluteElevation:F

.field public scale:F

.field public shadowCompatMode:I

.field public shadowCompatOffset:I

.field public shadowCompatRadius:I

.field public shadowCompatRotation:I

.field public shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field public strokeColor:Lccsanandroid/content/res/ColorStateList;

.field public strokeTintList:Lccsanandroid/content/res/ColorStateList;

.field public strokeWidth:F

.field public tintList:Lccsanandroid/content/res/ColorStateList;

.field public tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field public translationZ:F

.field public useTintColorForShadow:Z


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V
    .locals 2
    .param p1, "orig"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 1413
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    .line 1383
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 1384
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    .line 1385
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    .line 1386
    sget-object v1, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1387
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    .line 1389
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 1390
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 1393
    const/16 v0, 0xff

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 1395
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 1396
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 1398
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 1399
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 1400
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 1402
    iput-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 1404
    sget-object v0, Lccsanandroid/graphics/Paint$Style;->FILL_AND_STROKE:Lccsanandroid/graphics/Paint$Style;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    .line 1414
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1415
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 1416
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 1417
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->colorFilter:Lccsanandroid/graphics/ColorFilter;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->colorFilter:Lccsanandroid/graphics/ColorFilter;

    .line 1418
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    .line 1419
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 1420
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1421
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    .line 1422
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 1423
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 1424
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 1425
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 1426
    iget-boolean v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    iput-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 1427
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 1428
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 1429
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 1430
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 1431
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 1432
    iget v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 1433
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    .line 1434
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    .line 1435
    iget-object v0, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1436
    new-instance v0, Lccsanandroid/graphics/Rect;

    iget-object v1, p1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Rect;-><init>(Lccsanandroid/graphics/Rect;)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    .line 1438
    :cond_0
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/elevation/ElevationOverlayProvider;)V
    .locals 2
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "elevationOverlayProvider"    # Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 1408
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    .line 1383
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 1384
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    .line 1385
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    .line 1386
    sget-object v1, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 1387
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    .line 1389
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 1390
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 1393
    const/16 v0, 0xff

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 1395
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 1396
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 1398
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 1399
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 1400
    iput v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 1402
    iput-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 1404
    sget-object v0, Lccsanandroid/graphics/Paint$Style;->FILL_AND_STROKE:Lccsanandroid/graphics/Paint$Style;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    .line 1409
    iput-object p1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1410
    iput-object p2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 1411
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1451
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 1443
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;)V

    .line 1445
    .local v0, "msd":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->access$402(Lccsancom/google/android/material/shape/MaterialShapeDrawable;Z)Z

    .line 1446
    return-object v0
.end method
