.class final Lccsancom/google/android/material/datepicker/CompositeDateValidator$2;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Lccsancom/google/android/material/datepicker/CompositeDateValidator$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 84
    const/4 v0, 0x2

    return v0
.end method

.method public isValid(Ljava/util/List;J)Z
    .locals 3
    .param p2, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;",
            ">;J)Z"
        }
    .end annotation

    .line 70
    .local p1, "validators":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 71
    .local v1, "validator":Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    if-nez v1, :cond_0

    .line 72
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v1, p2, p3}, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    .end local v1    # "validator":Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
