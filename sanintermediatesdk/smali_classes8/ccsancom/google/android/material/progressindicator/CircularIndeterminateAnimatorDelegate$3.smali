.class final Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;
.super Lccsanandroid/util/Property;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 237
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Ljava/lang/Float;
    .locals 1
    .param p1, "delegate"    # Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 240
    invoke-static {p1}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->access$200(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 237
    check-cast p1, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->get(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V
    .locals 1
    .param p1, "delegate"    # Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
    .param p2, "value"    # Ljava/lang/Float;

    .line 245
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setAnimationFraction(F)V

    .line 246
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->set(Lccsancom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V

    return-void
.end method
