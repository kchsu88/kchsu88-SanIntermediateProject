.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;
.super Lccsancom/google/android/material/internal/TextWatcherAdapter;
.source "DropdownMenuEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 74
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Lccsancom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Lccsanandroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Lccsanandroid/text/Editable;

    .line 78
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 79
    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$000(Lccsanandroid/widget/EditText;)Lccsanandroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 81
    .local v0, "editText":Lccsanandroid/widget/AutoCompleteTextView;
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$100(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$200(Lccsanandroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 83
    invoke-virtual {v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lccsanandroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 86
    :cond_0
    new-instance v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;Lccsanandroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method
