.class Lccsanandroidx/appcompat/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/Toolbar;

    .line 1502
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/Toolbar$3;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 1505
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$3;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 1506
    return-void
.end method
