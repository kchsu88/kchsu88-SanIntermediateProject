.class Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    .line 415
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;"
    iput-object p1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 5
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "arguments"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 418
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;"
    iget-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Lccsanandroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 419
    nop

    .line 420
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    .local v0, "isRtl":Z
    :goto_0
    iget-object v3, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v3, v2, :cond_3

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 424
    .local v1, "dismissToLeft":Z
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    if-eqz v1, :cond_4

    neg-int v3, v3

    .line 425
    .local v3, "offset":I
    :cond_4
    invoke-static {p1, v3}, Lccsanandroidx/core/view/ViewCompat;->offsetLeftAndRight(Lccsanandroid/view/View;I)V

    .line 426
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 427
    iget-object v4, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v4, v4, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v4, :cond_5

    .line 428
    iget-object v4, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lccsancom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v4, v4, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v4, p1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Lccsanandroid/view/View;)V

    .line 430
    :cond_5
    return v2

    .line 432
    .end local v0    # "isRtl":Z
    .end local v1    # "dismissToLeft":Z
    .end local v3    # "offset":I
    :cond_6
    return v1
.end method
