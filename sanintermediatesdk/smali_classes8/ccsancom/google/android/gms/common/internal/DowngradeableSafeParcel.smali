.class public abstract Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field private static final zzdb:Ljava/lang/Object;

.field private static zzdc:Ljava/lang/ClassLoader;

.field private static zzdd:Ljava/lang/Integer;


# instance fields
.field private zzde:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdb:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdc:Ljava/lang/ClassLoader;

    .line 16
    sput-object v0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdd:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzde:Z

    return-void
.end method

.method protected static canUnparcelSafely(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-static {}, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzp()Ljava/lang/ClassLoader;

    .line 13
    const/4 p0, 0x1

    return p0
.end method

.method protected static getUnparcelClientVersion()Ljava/lang/Integer;
    .locals 2

    .line 6
    sget-object v0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdb:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static zzp()Ljava/lang/ClassLoader;
    .locals 2

    .line 3
    sget-object v0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdb:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    .line 5
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract prepareForClientVersion(I)Z
.end method

.method public setShouldDowngrade(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzde:Z

    .line 11
    return-void
.end method

.method protected shouldDowngrade()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lccsancom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzde:Z

    return v0
.end method
