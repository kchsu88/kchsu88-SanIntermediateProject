.class public final synthetic Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;->INSTANCE:Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lccsansan/cj/getDownloadingList;

    check-cast p2, Lccsansan/cj/getDownloadingList;

    invoke-static {p1, p2}, Lccsansan/cc/unifiedDownload;->$r8$lambda$es1uEt5Jpd24MZ6s0sBmsG5qwQo(Lccsansan/cj/getDownloadingList;Lccsansan/cj/getDownloadingList;)I

    move-result p1

    return p1
.end method
