.class Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;
.super Lccsanandroid/view/ViewOutlineProvider;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 484
    iput-object p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-direct {p0}, Lccsanandroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Lccsanandroid/view/View;Lccsanandroid/graphics/Outline;)V
    .locals 9
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "outline"    # Lccsanandroid/graphics/Outline;

    .line 487
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v0

    .line 488
    .local v0, "w":I
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v7

    .line 489
    .local v7, "h":I
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-static {v2}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->access$000(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    .line 490
    .local v8, "r":F
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 491
    return-void
.end method
