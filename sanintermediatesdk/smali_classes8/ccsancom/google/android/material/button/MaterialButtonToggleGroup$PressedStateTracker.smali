.class Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"

# interfaces
.implements Lccsancom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PressedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
    .param p2, "x1"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;

    .line 819
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V

    return-void
.end method


# virtual methods
.method public onPressedChanged(Lccsancom/google/android/material/button/MaterialButton;Z)V
    .locals 1
    .param p1, "button"    # Lccsancom/google/android/material/button/MaterialButton;
    .param p2, "isPressed"    # Z

    .line 823
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;->this$0:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->invalidate()V

    .line 824
    return-void
.end method
