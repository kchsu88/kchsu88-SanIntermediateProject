.class public final enum Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;
.super Ljava/lang/Enum;
.source "DownloadPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field public static final enum HIGH:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field public static final enum IMMEDIATE:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field public static final enum LOW:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field public static final enum MEDIUM:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->LOW:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 7
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->MEDIUM:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 9
    new-instance v3, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->HIGH:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 11
    new-instance v5, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->IMMEDIATE:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 4
    const/4 v7, 0x4

    new-array v7, v7, [Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->$VALUES:[Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;
    .locals 1

    .line 4
    const-class v0, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;
    .locals 1

    .line 4
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->$VALUES:[Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    return-object v0
.end method
