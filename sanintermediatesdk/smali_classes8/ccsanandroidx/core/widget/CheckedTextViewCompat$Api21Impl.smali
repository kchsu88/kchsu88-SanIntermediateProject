.class Lccsanandroidx/core/widget/CheckedTextViewCompat$Api21Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static getCheckMarkTintList(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/content/res/ColorStateList;
    .locals 1
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lccsanandroid/widget/CheckedTextView;->getCheckMarkTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static getCheckMarkTintMode(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lccsanandroid/widget/CheckedTextView;->getCheckMarkTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method static setCheckMarkTintList(Lccsanandroid/widget/CheckedTextView;Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "tint"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lccsanandroid/widget/CheckedTextView;->setCheckMarkTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 137
    return-void
.end method

.method static setCheckMarkTintMode(Lccsanandroid/widget/CheckedTextView;Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "tintMode"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lccsanandroid/widget/CheckedTextView;->setCheckMarkTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 147
    return-void
.end method
