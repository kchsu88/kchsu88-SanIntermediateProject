.class synthetic Lccsansan/ab/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ab/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic addDownloadListener:[I

.field static final synthetic getDownloadingList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/ab/removeDownloadListener$addDownloadListener;->values()[Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lccsansan/ab/removeDownloadListener$unifiedDownload;->addDownloadListener:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lccsansan/ab/removeDownloadListener$unifiedDownload;->addDownloadListener:[I

    sget-object v3, Lccsansan/ab/removeDownloadListener$addDownloadListener;->WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lccsansan/ab/removeDownloadListener$unifiedDownload;->addDownloadListener:[I

    sget-object v4, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 7
    :goto_2
    invoke-static {}, Lccsansan/ab/removeDownloadListener$getDownloadingList;->values()[Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lccsansan/ab/removeDownloadListener$unifiedDownload;->getDownloadingList:[I

    :try_start_3
    sget-object v4, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_2G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lccsansan/ab/removeDownloadListener$unifiedDownload;->getDownloadingList:[I

    sget-object v3, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_3G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lccsansan/ab/removeDownloadListener$unifiedDownload;->getDownloadingList:[I

    sget-object v1, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_4G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
