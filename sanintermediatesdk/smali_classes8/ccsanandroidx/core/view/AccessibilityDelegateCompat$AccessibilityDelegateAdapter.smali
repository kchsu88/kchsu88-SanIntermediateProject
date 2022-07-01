.class final Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
.super Lccsanandroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityDelegateAdapter"
.end annotation


# instance fields
.field final mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 0
    .param p1, "compat"    # Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compat"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lccsanandroid/view/View$AccessibilityDelegate;-><init>()V

    .line 65
    iput-object p1, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 66
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "event"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 120
    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    .line 121
    .local v0, "provider":Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "event"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "info"
        }
    .end annotation

    .line 82
    invoke-static {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 83
    .local v0, "nodeInfoCompat":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->isScreenReaderFocusable(Lccsanandroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    .line 84
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->isAccessibilityHeading(Lccsanandroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    .line 85
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getStateDescription(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v1, p1, v0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 88
    invoke-virtual {p2}, Lccsanandroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addSpansToExtras(Ljava/lang/CharSequence;Lccsanandroid/view/View;)V

    .line 89
    invoke-static {p1}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->getActionList(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0, v3}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "event"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 98
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/ViewGroup;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "child",
            "event"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "action",
            "args"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "eventType"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Lccsanandroid/view/View;I)V

    .line 109
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "event"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 114
    return-void
.end method
