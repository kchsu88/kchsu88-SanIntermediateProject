.class Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"


# static fields
.field private static final CROSS:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final IN:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final OUT:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final THROUGH:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$1;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 45
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$2;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$2;-><init>()V

    sput-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 56
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$3;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$3;-><init>()V

    sput-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->CROSS:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 67
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$4;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators$4;-><init>()V

    sput-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->THROUGH:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZ)Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;
    .locals 3
    .param p0, "fadeMode"    # I
    .param p1, "entering"    # Z

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fade mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    sget-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->THROUGH:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    return-object v0

    .line 88
    :pswitch_1
    sget-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->CROSS:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    return-object v0

    .line 86
    :pswitch_2
    if-eqz p1, :cond_0

    sget-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    :goto_0
    return-object v0

    .line 84
    :pswitch_3
    if-eqz p1, :cond_1

    sget-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    goto :goto_1

    :cond_1
    sget-object v0, Lccsancom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lccsancom/google/android/material/transition/platform/FadeModeEvaluator;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
