.class public final enum Lccsansan/p/deleteDownList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/p/deleteDownList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/p/deleteDownList;

.field public static final enum AZ_FINISHED:Lccsansan/p/deleteDownList;

.field public static final enum START_AZ:Lccsansan/p/deleteDownList;

.field public static final enum START_XZ:Lccsansan/p/deleteDownList;

.field public static final enum XZ_FINISH:Lccsansan/p/deleteDownList;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lccsansan/p/deleteDownList;

    const-string v1, "START_XZ"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsansan/p/deleteDownList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/p/deleteDownList;->START_XZ:Lccsansan/p/deleteDownList;

    new-instance v1, Lccsansan/p/deleteDownList;

    const-string v4, "AZ_FINISHED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lccsansan/p/deleteDownList;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/p/deleteDownList;->AZ_FINISHED:Lccsansan/p/deleteDownList;

    new-instance v4, Lccsansan/p/deleteDownList;

    const-string v6, "XZ_FINISH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lccsansan/p/deleteDownList;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsansan/p/deleteDownList;->XZ_FINISH:Lccsansan/p/deleteDownList;

    new-instance v6, Lccsansan/p/deleteDownList;

    const-string v8, "START_AZ"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lccsansan/p/deleteDownList;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lccsansan/p/deleteDownList;->START_AZ:Lccsansan/p/deleteDownList;

    .line 2
    new-array v8, v9, [Lccsansan/p/deleteDownList;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lccsansan/p/deleteDownList;->$VALUES:[Lccsansan/p/deleteDownList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsansan/p/deleteDownList;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/p/deleteDownList;
    .locals 1

    .line 1
    const-class v0, Lccsansan/p/deleteDownList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/p/deleteDownList;

    return-object p0
.end method

.method public static values()[Lccsansan/p/deleteDownList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/p/deleteDownList;->$VALUES:[Lccsansan/p/deleteDownList;

    invoke-virtual {v0}, [Lccsansan/p/deleteDownList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/p/deleteDownList;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/p/deleteDownList;->mValue:I

    return v0
.end method
