.class Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lccsanandroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 248
    iput-object p1, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$1;->this$0:Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 252
    iget-object v0, p0, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout$1;->this$0:Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/appbar/CollapsingToolbarLayout;->onWindowInsetChanged(Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
