.class Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;
.super Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 347
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncompleteSelectionChanged()V
    .locals 2

    .line 356
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$400(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsanandroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setEnabled(Z)V

    .line 357
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 350
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;"
    .local p1, "selection":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$200(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V

    .line 351
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$400(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsanandroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsancom/google/android/material/datepicker/DateSelector;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setEnabled(Z)V

    .line 352
    return-void
.end method
