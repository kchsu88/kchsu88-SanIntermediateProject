.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Lccsancom/google/android/material/animation/TransformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/android/material/animation/TransformationCallback<",
        "Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    .line 208
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onScaleChanged(Lccsanandroid/view/View;)V
    .locals 0

    .line 208
    check-cast p1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->onScaleChanged(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public onScaleChanged(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1, "fab"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 211
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 213
    return-void
.end method

.method public bridge synthetic onTranslationChanged(Lccsanandroid/view/View;)V
    .locals 0

    .line 208
    check-cast p1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->onTranslationChanged(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public onTranslationChanged(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 5
    .param p1, "fab"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 217
    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationX()F

    move-result v0

    .line 218
    .local v0, "horizontalOffset":F
    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$500(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$500(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 220
    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 224
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationY()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 225
    .local v1, "verticalOffset":F
    iget-object v3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$500(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$500(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 227
    iget-object v3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 229
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$2;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v3}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v3

    .line 230
    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result v2

    .line 229
    :cond_2
    invoke-virtual {v3, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 231
    return-void
.end method
