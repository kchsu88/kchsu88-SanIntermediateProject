.class abstract enum Lccsancom/google/common/collect/TreeMultiset$Aggregate;
.super Ljava/lang/Enum;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Aggregate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/collect/TreeMultiset$Aggregate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/collect/TreeMultiset$Aggregate;

.field public static final enum DISTINCT:Lccsancom/google/common/collect/TreeMultiset$Aggregate;

.field public static final enum SIZE:Lccsancom/google/common/collect/TreeMultiset$Aggregate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    new-instance v0, Lccsancom/google/common/collect/TreeMultiset$Aggregate$1;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/TreeMultiset$Aggregate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/collect/TreeMultiset$Aggregate;->SIZE:Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    .line 141
    new-instance v1, Lccsancom/google/common/collect/TreeMultiset$Aggregate$2;

    const-string v3, "DISTINCT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/collect/TreeMultiset$Aggregate$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/collect/TreeMultiset$Aggregate;->DISTINCT:Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    .line 129
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/google/common/collect/TreeMultiset$Aggregate;->$VALUES:[Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILccsancom/google/common/collect/TreeMultiset$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lccsancom/google/common/collect/TreeMultiset$1;

    .line 129
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/collect/TreeMultiset$Aggregate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 129
    const-class v0, Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/collect/TreeMultiset$Aggregate;
    .locals 1

    .line 129
    sget-object v0, Lccsancom/google/common/collect/TreeMultiset$Aggregate;->$VALUES:[Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    invoke-virtual {v0}, [Lccsancom/google/common/collect/TreeMultiset$Aggregate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/collect/TreeMultiset$Aggregate;

    return-object v0
.end method


# virtual methods
.method abstract nodeAggregate(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation
.end method

.method abstract treeAggregate(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)J
    .param p1    # Lccsancom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)J"
        }
    .end annotation
.end method
