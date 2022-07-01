.class Lccsanandroidx/media/MediaSessionManagerImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Lccsanandroidx/media/MediaSessionManager$MediaSessionManagerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final PERMISSION_MEDIA_CONTENT_CONTROL:Ljava/lang/String; = "android.permission.MEDIA_CONTENT_CONTROL"

.field private static final PERMISSION_STATUS_BAR_SERVICE:Ljava/lang/String; = "android.permission.STATUS_BAR_SERVICE"

.field private static final TAG:Ljava/lang/String; = "MediaSessionManager"


# instance fields
.field mContentResolver:Lccsanandroid/content/ContentResolver;

.field mContext:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Lccsanandroidx/media/MediaSessionManager;->DEBUG:Z

    sput-boolean v0, Lccsanandroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContext:Lccsanandroid/content/Context;

    .line 47
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContentResolver:Lccsanandroid/content/ContentResolver;

    .line 48
    return-void
.end method

.method private isPermissionGranted(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z
    .locals 5
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;
    .param p2, "permission"    # Ljava/lang/String;

    .line 84
    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 86
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v0, p2, v3}, Lccsanandroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 89
    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContext:Lccsanandroid/content/Context;

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v3

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Lccsanandroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 52
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method isEnabledNotificationListener(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 6
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 103
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContentResolver:Lccsanandroid/content/ContentResolver;

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Lccsanandroid/provider/Settings$Secure;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 106
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "components":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 108
    aget-object v3, v1, v2

    .line 109
    invoke-static {v3}, Lccsanandroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Lccsanandroid/content/ComponentName;

    move-result-object v3

    .line 110
    .local v3, "component":Lccsanandroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v3}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const/4 v4, 0x1

    return v4

    .line 107
    .end local v3    # "component":Lccsanandroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "components":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isTrustedForMediaControl(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 5
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 60
    const-string v0, "MediaSessionManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsanandroidx/media/MediaSessionManagerImplBase;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    .line 61
    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v2, v3, v1}, Lccsanandroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v2, "applicationInfo":Lccsanandroid/content/pm/ApplicationInfo;
    nop

    .line 69
    iget v3, v2, Lccsanandroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 70
    sget-boolean v3, Lccsanandroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t match with the uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return v1

    .line 76
    :cond_1
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-direct {p0, p1, v0}, Lccsanandroidx/media/MediaSessionManagerImplBase;->isPermissionGranted(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-direct {p0, p1, v0}, Lccsanandroidx/media/MediaSessionManagerImplBase;->isPermissionGranted(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaSessionManagerImplBase;->isEnabledNotificationListener(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 62
    .end local v2    # "applicationInfo":Lccsanandroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lccsanandroidx/media/MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_4
    return v1
.end method
