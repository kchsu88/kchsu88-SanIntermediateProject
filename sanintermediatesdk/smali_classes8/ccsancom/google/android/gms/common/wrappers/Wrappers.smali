.class public Lccsancom/google/android/gms/common/wrappers/Wrappers;
.super Ljava/lang/Object;


# static fields
.field private static zzhx:Lccsancom/google/android/gms/common/wrappers/Wrappers;


# instance fields
.field private zzhw:Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lccsancom/google/android/gms/common/wrappers/Wrappers;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzhx:Lccsancom/google/android/gms/common/wrappers/Wrappers;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzhw:Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    return-void
.end method

.method public static packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .locals 1

    .line 7
    sget-object v0, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzhx:Lccsancom/google/android/gms/common/wrappers/Wrappers;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzi(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzi(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzhw:Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 5
    :goto_0
    new-instance v0, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzhw:Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 6
    :cond_1
    iget-object p1, p0, Lccsancom/google/android/gms/common/wrappers/Wrappers;->zzhw:Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
