.class public final Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "zza"
.end annotation


# instance fields
.field private final mComponentName:Lccsanandroid/content/ComponentName;

.field private final zzdr:Ljava/lang/String;

.field private final zzds:Ljava/lang/String;

.field private final zzdt:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/ComponentName;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/ComponentName;

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    .line 17
    const/16 p1, 0x81

    iput p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 3
    const-string p1, "com.google.android.gms"

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 4
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    .line 5
    const/16 p1, 0x81

    iput p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 10
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    .line 11
    iput p3, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 29
    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 31
    return v2

    .line 32
    :cond_1
    check-cast p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 33
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    invoke-static {v1, v3}, Lccsancom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 34
    invoke-static {v1, v3}, Lccsancom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    iget-object v3, p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    .line 35
    invoke-static {v1, v3}, Lccsancom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    iget p1, p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    nop

    .line 36
    return v2
.end method

.method public final getComponentName()Lccsanandroid/content/ComponentName;
    .locals 1

    .line 21
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v0}, Lccsanandroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzb(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;
    .locals 1

    .line 23
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 24
    new-instance p1, Lccsanandroid/content/Intent;

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    invoke-direct {p1, v0}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-direct {p1}, Lccsanandroid/content/Intent;-><init>()V

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 26
    :goto_0
    return-object p1
.end method

.method public final zzq()I
    .locals 1

    .line 22
    iget v0, p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    return v0
.end method
