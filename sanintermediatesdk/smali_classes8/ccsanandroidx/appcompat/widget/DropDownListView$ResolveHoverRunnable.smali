.class Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/DropDownListView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/DropDownListView;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Lccsanandroidx/appcompat/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 709
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Lccsanandroidx/appcompat/widget/DropDownListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 710
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Lccsanandroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 711
    return-void
.end method

.method public post()V
    .locals 1

    .line 714
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Lccsanandroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->post(Ljava/lang/Runnable;)Z

    .line 715
    return-void
.end method

.method public run()V
    .locals 2

    .line 704
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Lccsanandroidx/appcompat/widget/DropDownListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 705
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Lccsanandroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 706
    return-void
.end method
