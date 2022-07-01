.class public final Lccsanandroidx/core/view/WindowCompat;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowCompat$Impl30;,
        Lccsanandroidx/core/view/WindowCompat$Impl16;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsetsController(Lccsanandroid/view/Window;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;
    .locals 2
    .param p0, "window"    # Lccsanandroid/view/Window;
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "view"
        }
    .end annotation

    .line 135
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 136
    invoke-static {p0}, Lccsanandroidx/core/view/WindowCompat$Impl30;->getInsetsController(Lccsanandroid/view/Window;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsControllerCompat;-><init>(Lccsanandroid/view/Window;Lccsanandroid/view/View;)V

    return-object v0
.end method

.method public static requireViewById(Lccsanandroid/view/Window;I)Lccsanandroid/view/View;
    .locals 3
    .param p0, "window"    # Lccsanandroid/view/Window;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroid/view/View;",
            ">(",
            "Lccsanandroid/view/Window;",
            "I)TT;"
        }
    .end annotation

    .line 88
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lccsanandroid/view/Window;->requireViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Lccsanandroid/view/View;, "TT;"
    if-eqz v0, :cond_1

    .line 96
    return-object v0

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Window"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setDecorFitsSystemWindows(Lccsanandroid/view/Window;Z)V
    .locals 2
    .param p0, "window"    # Lccsanandroid/view/Window;
    .param p1, "decorFitsSystemWindows"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "window",
            "decorFitsSystemWindows"
        }
    .end annotation

    .line 117
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 118
    invoke-static {p0, p1}, Lccsanandroidx/core/view/WindowCompat$Impl30;->setDecorFitsSystemWindows(Lccsanandroid/view/Window;Z)V

    goto :goto_0

    .line 119
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 120
    invoke-static {p0, p1}, Lccsanandroidx/core/view/WindowCompat$Impl16;->setDecorFitsSystemWindows(Lccsanandroid/view/Window;Z)V

    .line 122
    :cond_1
    :goto_0
    return-void
.end method
