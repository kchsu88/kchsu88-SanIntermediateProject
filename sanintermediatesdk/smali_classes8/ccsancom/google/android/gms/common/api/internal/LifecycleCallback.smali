.class public Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;


# instance fields
.field protected final mLifecycleFragment:Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;


# direct methods
.method protected constructor <init>(Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 11
    return-void
.end method

.method private static getChimeraLifecycleFragmentImpl(Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;)Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method not available in SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFragment(Lccsanandroid/app/Activity;)Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 1

    .line 7
    new-instance v0, Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Lccsanandroid/app/Activity;)V

    invoke-static {v0}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;)Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getFragment(Lccsanandroid/content/ContextWrapper;)Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected static getFragment(Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;)Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;->asFragmentActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lccsancom/google/android/gms/common/api/internal/zzc;->zza(Lccsanandroidx/fragment/app/FragmentActivity;)Lccsancom/google/android/gms/common/api/internal/zzc;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/internal/LifecycleActivity;->asActivity()Lccsanandroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lccsancom/google/android/gms/common/api/internal/zza;->zza(Lccsanandroid/app/Activity;)Lccsancom/google/android/gms/common/api/internal/zza;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 20
    return-void
.end method

.method public getActivity()Lccsanandroid/app/Activity;
    .locals 1

    .line 12
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-interface {v0}, Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILccsanandroid/content/Intent;)V
    .locals 0

    .line 17
    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 13
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 19
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 15
    return-void
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 16
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 14
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 18
    return-void
.end method
