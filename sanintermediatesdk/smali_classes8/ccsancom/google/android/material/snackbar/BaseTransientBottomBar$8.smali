.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 787
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Lccsanandroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 790
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 791
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$8;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->access$1200(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 792
    return-void
.end method
