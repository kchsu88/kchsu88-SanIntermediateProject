.class Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"

# interfaces
.implements Lccsancom/google/android/material/button/MaterialButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
    .param p2, "x1"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;

    .line 797
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lccsancom/google/android/material/button/MaterialButton;Z)V
    .locals 4
    .param p1, "button"    # Lccsancom/google/android/material/button/MaterialButton;
    .param p2, "isChecked"    # Z

    .line 801
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->access$300(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->access$400(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-static {v0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->access$502(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;I)I

    .line 809
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    invoke-static {v0, v1, p2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->access$600(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z

    move-result v0

    .line 810
    .local v0, "buttonCheckedStateChanged":Z
    if-eqz v0, :cond_3

    .line 813
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-virtual {p1}, Lccsancom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->access$700(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    .line 815
    :cond_3
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->invalidate()V

    .line 816
    return-void
.end method
