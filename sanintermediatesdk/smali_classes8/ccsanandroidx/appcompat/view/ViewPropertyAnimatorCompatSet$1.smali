.class Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;
.super Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 121
    iput-object p1, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 123
    iput v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 144
    iget v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iget-object v1, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v1, v1, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Lccsanandroid/view/View;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->onEnd()V

    .line 150
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 127
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Lccsanandroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Lccsanandroid/view/View;)V

    .line 134
    :cond_1
    return-void
.end method

.method onEnd()V
    .locals 1

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 138
    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 139
    iget-object v0, p0, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet$1;->this$0:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    .line 140
    return-void
.end method
