.class final Lccsancom/google/android/gms/dynamite/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    new-instance v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    invoke-direct {v0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;-><init>()V

    .line 3
    invoke-interface {p3, p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->getLocalVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    .line 4
    const/4 v1, 0x1

    invoke-interface {p3, p1, p2, v1}, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->zza(Lccsanandroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    .line 5
    iget p1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    if-nez p1, :cond_0

    iget p1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    iput p1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    goto :goto_0

    .line 7
    :cond_0
    iget p1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zziq:I

    iget p2, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    if-lt p1, p2, :cond_1

    .line 8
    const/4 p1, -0x1

    iput p1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    goto :goto_0

    .line 9
    :cond_1
    iput v1, v0, Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    .line 10
    :goto_0
    return-object v0
.end method
