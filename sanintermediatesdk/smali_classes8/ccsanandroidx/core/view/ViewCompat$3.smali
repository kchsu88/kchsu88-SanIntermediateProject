.class Lccsanandroidx/core/view/ViewCompat$3;
.super Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/ViewCompat;->paneTitleProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .param p1, "tagKey"    # I
    .param p3, "contentChangeType"    # I
    .param p4, "frameworkMinimumSdk"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagKey",
            "type",
            "contentChangeType",
            "frameworkMinimumSdk"
        }
    .end annotation

    .line 4250
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method frameworkGet(Lccsanandroid/view/View;)Ljava/lang/CharSequence;
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

    .line 4255
    invoke-virtual {p1}, Lccsanandroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic frameworkGet(Lccsanandroid/view/View;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 4250
    invoke-virtual {p0, p1}, Lccsanandroidx/core/view/ViewCompat$3;->frameworkGet(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method frameworkSet(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .line 4261
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 4262
    return-void
.end method

.method bridge synthetic frameworkSet(Lccsanandroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .line 4250
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/core/view/ViewCompat$3;->frameworkSet(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method shouldUpdate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/CharSequence;
    .param p2, "newValue"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 4266
    invoke-static {p1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method bridge synthetic shouldUpdate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "oldValue",
            "newValue"
        }
    .end annotation

    .line 4250
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/core/view/ViewCompat$3;->shouldUpdate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
