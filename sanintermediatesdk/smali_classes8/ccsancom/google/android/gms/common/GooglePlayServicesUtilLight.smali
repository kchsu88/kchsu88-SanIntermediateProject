.class public Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;
.super Ljava/lang/Object;


# static fields
.field static final GMS_AVAILABILITY_NOTIFICATION_ID:I = 0x28c4

.field static final GMS_GENERAL_ERROR_NOTIFICATION_ID:I = 0x9b6d

.field public static final GOOGLE_PLAY_GAMES_PACKAGE:Ljava/lang/String; = "com.google.android.play.games"

.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field static final sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzag:Z

.field private static zzah:Z

.field private static zzai:Z

.field private static zzaj:Z

.field private static final zzak:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    const v0, 0xbdfcb8

    sput v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzag:Z

    .line 170
    sput-boolean v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzah:Z

    .line 171
    sput-boolean v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzai:Z

    .line 172
    sput-boolean v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzaj:Z

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 174
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzak:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static cancelAvailabilityErrorNotifications(Lccsanandroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    sget-object v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 105
    :cond_0
    :try_start_0
    const-string v0, "notification"

    .line 106
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 107
    if-eqz p0, :cond_1

    .line 108
    const/16 v0, 0x28c4

    invoke-virtual {p0, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    return-void

    .line 110
    :catch_0
    move-exception p0

    .line 111
    return-void
.end method

.method public static enableUsingApkIndependentContext()V
    .locals 2

    .line 1
    sget-object v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzak:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    return-void
.end method

.method public static ensurePlayServicesAvailable(Lccsanandroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0, p1}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I

    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    .line 67
    const-string v1, "e"

    invoke-virtual {v0, p0, p1, v1}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Lccsanandroid/content/Context;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p0

    .line 68
    const/16 v0, 0x39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GooglePlayServices not available due to error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayServicesUtil"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-nez p0, :cond_0

    .line 70
    new-instance p0, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, p1}, Lccsancom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    .line 71
    :cond_0
    new-instance v0, Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException;

    const-string v1, "Google Play Services not available"

    invoke-direct {v0, p1, v1, p0}, Lccsancom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Lccsanandroid/content/Intent;)V

    throw v0

    .line 72
    :cond_1
    return-void
.end method

.method public static getApkVersion(Lccsanandroid/content/Context;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    nop

    .line 127
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 132
    iget p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    return p0

    .line 129
    :catch_0
    move-exception p0

    .line 130
    const-string p0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services is missing."

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0
.end method

.method public static getClientVersion(Lccsanandroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    const/4 v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 125
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/google/android/gms/common/util/ClientLibraryUtils;->getClientVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getErrorPendingIntent(ILccsanandroid/content/Context;I)Lccsanandroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1, p0, p2}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Lccsanandroid/content/Context;II)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    .line 102
    return-object p0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {p0}, Lccsancom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGooglePlayServicesAvailabilityRecoveryIntent(I)Lccsanandroid/content/Intent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1}, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Lccsanandroid/content/Context;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoteContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;
    .locals 2

    .line 121
    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Context;->createPackageContext(Ljava/lang/String;I)Lccsanandroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRemoteResource(Lccsanandroid/content/Context;)Lccsanandroid/content/res/Resources;
    .locals 1

    .line 115
    nop

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.gms"

    .line 117
    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Lccsanandroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object p0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    const/4 p0, 0x0

    return-object p0
.end method

.method public static honorsDebugCertificates(Lccsanandroid/content/Context;)Z
    .locals 5

    .line 76
    nop

    .line 77
    nop

    .line 78
    sget-boolean v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzaj:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 79
    nop

    .line 80
    :try_start_0
    invoke-static {p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 81
    const-string v3, "com.google.android.gms"

    const/16 v4, 0x40

    .line 82
    invoke-virtual {v0, v3, v4}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    .line 83
    invoke-static {p0}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 86
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 87
    sput-boolean v2, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzai:Z

    goto :goto_0

    .line 88
    :cond_0
    sput-boolean v1, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzai:Z
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    sput-boolean v2, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzaj:Z

    .line 90
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 91
    :catch_0
    move-exception p0

    .line 92
    :try_start_1
    const-string v0, "GooglePlayServicesUtil"

    const-string v3, "Cannot find Google Play services package name."

    invoke-static {v0, v3, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    sput-boolean v2, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzaj:Z

    .line 94
    goto :goto_2

    .line 95
    :goto_1
    sput-boolean v2, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzaj:Z

    throw p0

    .line 96
    :cond_1
    :goto_2
    sget-boolean p0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzai:Z

    .line 97
    if-nez p0, :cond_3

    .line 98
    invoke-static {}, Lccsancom/google/android/gms/common/util/DeviceProperties;->isUserBuild()Z

    move-result p0

    .line 99
    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    return v1

    :cond_3
    :goto_3
    return v2
.end method

.method public static isGooglePlayServicesAvailable(Lccsanandroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    sget v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {p0, v0}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static isGooglePlayServicesAvailable(Lccsanandroid/content/Context;I)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 8
    sget v1, Lccsancom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    nop

    .line 14
    sget-object v0, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zzak:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/zzp;->zzd(Lccsanandroid/content/Context;)I

    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    sget v1, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const/16 p1, 0x140

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    :goto_1
    nop

    .line 21
    invoke-static {p0}, Lccsancom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzf(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 22
    :goto_2
    invoke-static {p0, v0, p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->zza(Lccsanandroid/content/Context;ZI)I

    move-result p0

    return p0
.end method

.method public static isGooglePlayServicesUid(Lccsanandroid/content/Context;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Lccsanandroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isPlayServicesPossiblyUpdating(Lccsanandroid/content/Context;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    .line 135
    return v0

    .line 136
    :cond_0
    if-ne p1, v0, :cond_1

    .line 137
    const-string p1, "com.google.android.gms"

    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isUninstalledAppPossiblyUpdating(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 138
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isPlayStorePossiblyUpdating(Lccsanandroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 140
    const-string p1, "com.android.vending"

    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isUninstalledAppPossiblyUpdating(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 141
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRestrictedUserProfile(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 160
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    nop

    .line 162
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/UserManager;

    .line 163
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsanandroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object p0

    .line 164
    if-eqz p0, :cond_0

    .line 165
    const-string v0, "restricted_profile"

    invoke-virtual {p0, v0}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 166
    const/4 p0, 0x1

    return p0

    .line 167
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSidewinderDevice(Lccsanandroid/content/Context;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-static {p0}, Lccsancom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Lccsanandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static isUninstalledAppPossiblyUpdating(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 142
    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 143
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInstaller()Lccsanandroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;

    .line 149
    invoke-virtual {v4}, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    return v2

    .line 151
    :cond_0
    goto :goto_0

    .line 146
    :catch_0
    move-exception p0

    .line 147
    return v3

    .line 152
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    const/16 v4, 0x2000

    .line 154
    :try_start_1
    invoke-virtual {v1, p1, v4}, Lccsanandroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 155
    if-eqz v0, :cond_2

    .line 156
    iget-boolean p0, p1, Lccsanandroid/content/pm/ApplicationInfo;->enabled:Z

    return p0

    .line 157
    :cond_2
    iget-boolean p1, p1, Lccsanandroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_3

    invoke-static {p0}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->isRestrictedUserProfile(Lccsanandroid/content/Context;)Z

    move-result p0
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v3

    .line 158
    :catch_1
    move-exception p0

    .line 159
    return v3
.end method

.method public static isUserRecoverableError(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sparse-switch p0, :sswitch_data_0

    .line 114
    const/4 p0, 0x0

    return p0

    .line 113
    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static uidHasPackageName(Lccsanandroid/content/Context;ILjava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/common/util/UidVerifier;->uidHasPackageName(Lccsanandroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zza(Lccsanandroid/content/Context;ZI)I
    .locals 8

    .line 23
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 24
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    const/16 v5, 0x9

    const-string v6, "GooglePlayServicesUtil"

    if-eqz p1, :cond_1

    .line 27
    :try_start_0
    const-string v4, "com.android.vending"

    const/16 v7, 0x2040

    .line 28
    invoke-virtual {v3, v4, v7}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p0, "Google Play Store is missing."

    invoke-static {v6, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v5

    .line 33
    :cond_1
    :goto_1
    const/16 v7, 0x40

    .line 34
    :try_start_1
    invoke-virtual {v3, v0, v7}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 35
    nop

    .line 39
    invoke-static {p0}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/GoogleSignatureVerifier;

    .line 40
    invoke-static {v7, v1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_2

    .line 41
    const-string p0, "Google Play services signature invalid."

    invoke-static {v6, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v5

    .line 43
    :cond_2
    if-eqz p1, :cond_4

    .line 44
    invoke-static {v4, v1}, Lccsancom/google/android/gms/common/GoogleSignatureVerifier;->zza(Lccsanandroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v4, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    aget-object p0, p0, v2

    iget-object p1, v7, Lccsanandroid/content/pm/PackageInfo;->signatures:[Lccsanandroid/content/pm/Signature;

    aget-object p1, p1, v2

    .line 45
    invoke-virtual {p0, p1}, Lccsanandroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 46
    :cond_3
    const-string p0, "Google Play Store signature invalid."

    invoke-static {v6, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v5

    .line 48
    :cond_4
    iget p0, v7, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lccsancom/google/android/gms/common/util/zzb;->zzc(I)I

    move-result p0

    .line 49
    invoke-static {p2}, Lccsancom/google/android/gms/common/util/zzb;->zzc(I)I

    move-result p1

    .line 50
    if-ge p0, p1, :cond_5

    .line 51
    iget p0, v7, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    const/16 p1, 0x4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Google Play services out of date.  Requires "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 p0, 0x2

    return p0

    .line 53
    :cond_5
    iget-object p0, v7, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    .line 54
    if-nez p0, :cond_6

    .line 55
    :try_start_2
    invoke-virtual {v3, v0, v2}, Lccsanandroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_2
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    goto :goto_2

    .line 57
    :catch_1
    move-exception p0

    .line 58
    const-string p1, "Google Play services missing when getting application info."

    invoke-static {v6, p1, p0}, Lccsanandroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return v1

    .line 60
    :cond_6
    :goto_2
    iget-boolean p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_7

    .line 61
    const/4 p0, 0x3

    return p0

    .line 62
    :cond_7
    return v2

    .line 36
    :catch_2
    move-exception p0

    .line 37
    const-string p0, "Google Play services is missing."

    invoke-static {v6, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v1
.end method
