.class final enum Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;
.super Ljava/lang/Enum;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum CANCELLED:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum NOT_RUN:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum STARTED:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 53
    new-instance v1, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->CANCELLED:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 54
    new-instance v3, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->STARTED:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 51
    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->$VALUES:[Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 1

    .line 51
    sget-object v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->$VALUES:[Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-virtual {v0}, [Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    return-object v0
.end method
