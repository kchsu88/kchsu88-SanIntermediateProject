.class Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    .line 1330
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->this$1:Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "arguments"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 1334
    move-object v0, p1

    check-cast v0, Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 1335
    .local v0, "viewPager":Lccsanandroidx/viewpager2/widget/ViewPager2;
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->this$1:Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->setCurrentItemFromAccessibilityCommand(I)V

    .line 1336
    return v3
.end method
