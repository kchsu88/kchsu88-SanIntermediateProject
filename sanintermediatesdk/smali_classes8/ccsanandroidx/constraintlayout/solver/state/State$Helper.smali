.class public final enum Lccsanandroidx/constraintlayout/solver/state/State$Helper;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/constraintlayout/solver/state/State$Helper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum ALIGN_HORIZONTALLY:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum ALIGN_VERTICALLY:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum BARRIER:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum FLOW:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum HORIZONTAL_CHAIN:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum LAYER:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum VERTICAL_CHAIN:Lccsanandroidx/constraintlayout/solver/state/State$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 80
    new-instance v0, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v1, "HORIZONTAL_CHAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 81
    new-instance v1, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v3, "VERTICAL_CHAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 82
    new-instance v3, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v5, "ALIGN_HORIZONTALLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 83
    new-instance v5, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v7, "ALIGN_VERTICALLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 84
    new-instance v7, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v9, "BARRIER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 85
    new-instance v9, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v11, "LAYER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->LAYER:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 86
    new-instance v11, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    const-string v13, "FLOW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsanandroidx/constraintlayout/solver/state/State$Helper;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->FLOW:Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const/4 v13, 0x7

    new-array v13, v13, [Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->$VALUES:[Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/constraintlayout/solver/state/State$Helper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    const-class v0, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/constraintlayout/solver/state/State$Helper;
    .locals 1

    .line 79
    sget-object v0, Lccsanandroidx/constraintlayout/solver/state/State$Helper;->$VALUES:[Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v0}, [Lccsanandroidx/constraintlayout/solver/state/State$Helper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/constraintlayout/solver/state/State$Helper;

    return-object v0
.end method
