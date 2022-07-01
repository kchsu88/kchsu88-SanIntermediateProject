.class public final Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
    }
.end annotation


# static fields
.field static final LISTENER_TAG_ID:I = 0x7e000000


# instance fields
.field mEndAction:Ljava/lang/Runnable;

.field mOldLayerType:I

.field mStartAction:Ljava/lang/Runnable;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 31
    iput-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method private setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "listener"    # Lccsanandroidx/core/view/ViewPropertyAnimatorListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 741
    if-eqz p2, :cond_0

    .line 742
    invoke-virtual {p1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;

    invoke-direct {v1, p0, p2, p1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$1;-><init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;Lccsanandroid/view/View;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 761
    :goto_0
    return-void
.end method


# virtual methods
.method public alpha(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 141
    :cond_0
    return-object p0
.end method

.method public alphaBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->alphaBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 156
    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 464
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->cancel()V

    .line 467
    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 4

    .line 237
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    return-wide v2

    .line 240
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getInterpolator()Lccsanandroid/view/animation/Interpolator;
    .locals 3

    .line 267
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 268
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 269
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->getInterpolator()Lccsanandroid/animation/TimeInterpolator;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/animation/Interpolator;

    return-object v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 4

    .line 302
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v2

    return-wide v2

    .line 305
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public rotation(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->rotation(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 321
    :cond_0
    return-object p0
.end method

.method public rotationBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->rotationBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 336
    :cond_0
    return-object p0
.end method

.method public rotationX(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->rotationX(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 351
    :cond_0
    return-object p0
.end method

.method public rotationXBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->rotationXBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 366
    :cond_0
    return-object p0
.end method

.method public rotationY(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->rotationY(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 381
    :cond_0
    return-object p0
.end method

.method public rotationYBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->rotationYBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 396
    :cond_0
    return-object p0
.end method

.method public scaleX(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->scaleX(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 411
    :cond_0
    return-object p0
.end method

.method public scaleXBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->scaleXBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 426
    :cond_0
    return-object p0
.end method

.method public scaleY(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->scaleY(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 441
    :cond_0
    return-object p0
.end method

.method public scaleYBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->scaleYBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 456
    :cond_0
    return-object p0
.end method

.method public setDuration(J)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    .line 126
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Lccsanandroid/view/animation/Interpolator;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # Lccsanandroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 257
    :cond_0
    return-object p0
.end method

.method public setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "listener"    # Lccsanandroidx/core/view/ViewPropertyAnimatorListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 730
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 731
    invoke-direct {p0, v1, p1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V

    goto :goto_0

    .line 733
    :cond_0
    const/high16 v0, 0x7e000000

    invoke-virtual {v1, v0, p1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 734
    new-instance v0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {p0, v1, v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 737
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setStartDelay(J)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/view/ViewPropertyAnimator;->setStartDelay(J)Lccsanandroid/view/ViewPropertyAnimator;

    .line 289
    :cond_0
    return-object p0
.end method

.method public setUpdateListener(Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "listener"    # Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 777
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "wrapped":Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz p1, :cond_0

    .line 780
    new-instance v2, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;

    invoke-direct {v2, p0, p1, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$2;-><init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;Lccsanandroid/view/View;)V

    move-object v0, v2

    .line 787
    :cond_0
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsanandroid/view/ViewPropertyAnimator;->setUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 790
    .end local v0    # "wrapped":Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_1
    return-object p0
.end method

.method public start()V
    .locals 2

    .line 644
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    .line 647
    :cond_0
    return-void
.end method

.method public translationX(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->translationX(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 171
    :cond_0
    return-object p0
.end method

.method public translationXBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->translationXBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 541
    :cond_0
    return-object p0
.end method

.method public translationY(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->translationY(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 186
    :cond_0
    return-object p0
.end method

.method public translationYBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->translationYBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 556
    :cond_0
    return-object p0
.end method

.method public translationZ(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 590
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 591
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->translationZ(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 594
    :cond_0
    return-object p0
.end method

.method public translationZBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 571
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 572
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->translationZBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 575
    :cond_0
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 217
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 218
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Lccsanandroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {p0, v1, v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 221
    iput-object p1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 224
    :cond_1
    :goto_0
    return-object p0
.end method

.method public withLayer()Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3

    .line 680
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 681
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 682
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->withLayer()Lccsanandroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 685
    new-instance v0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {p0, v1, v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 688
    :cond_1
    :goto_0
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 709
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 710
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Lccsanandroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 712
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;-><init>(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-direct {p0, v1, v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)V

    .line 713
    iput-object p1, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 716
    :cond_1
    :goto_0
    return-object p0
.end method

.method public x(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->x(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 481
    :cond_0
    return-object p0
.end method

.method public xBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->xBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 496
    :cond_0
    return-object p0
.end method

.method public y(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->y(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 511
    :cond_0
    return-object p0
.end method

.method public yBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->yBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 526
    :cond_0
    return-object p0
.end method

.method public z(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 609
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 610
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->z(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 613
    :cond_0
    return-object p0
.end method

.method public zBy(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    move-object v1, v0

    .local v1, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 628
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 629
    invoke-virtual {v1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->zBy(F)Lccsanandroid/view/ViewPropertyAnimator;

    .line 632
    :cond_0
    return-object p0
.end method
