.class public final Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
.super Ljava/lang/Object;
.source "MaterialTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/timepicker/MaterialTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private inputMode:I

.field private time:Lccsancom/google/android/material/timepicker/TimeModel;

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lccsancom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lccsancom/google/android/material/timepicker/TimeModel;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 430
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 430
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->inputMode:I

    return v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 430
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I

    return v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 430
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleText:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public build()Lccsancom/google/android/material/timepicker/MaterialTimePicker;
    .locals 1

    .line 501
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$1000(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    move-result-object v0

    return-object v0
.end method

.method public setHour(I)Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 1
    .param p1, "hour"    # I

    .line 453
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/timepicker/TimeModel;->setHourOfDay(I)V

    .line 454
    return-object p0
.end method

.method public setInputMode(I)Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1, "inputMode"    # I

    .line 441
    iput p1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->inputMode:I

    .line 442
    return-object p0
.end method

.method public setMinute(I)Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 1
    .param p1, "minute"    # I

    .line 460
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 461
    return-object p0
.end method

.method public setTimeFormat(I)Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 3
    .param p1, "format"    # I

    .line 472
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lccsancom/google/android/material/timepicker/TimeModel;->hour:I

    .line 473
    .local v0, "hour":I
    iget-object v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lccsancom/google/android/material/timepicker/TimeModel;->minute:I

    .line 474
    .local v1, "minute":I
    new-instance v2, Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {v2, p1}, Lccsancom/google/android/material/timepicker/TimeModel;-><init>(I)V

    iput-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    .line 475
    invoke-virtual {v2, v1}, Lccsancom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 476
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v2, v0}, Lccsancom/google/android/material/timepicker/TimeModel;->setHourOfDay(I)V

    .line 477
    return-object p0
.end method

.method public setTitleText(I)Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1, "titleTextResId"    # I

    .line 485
    iput p1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleTextResId:I

    .line 486
    return-object p0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 494
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->titleText:Ljava/lang/CharSequence;

    .line 495
    return-object p0
.end method
