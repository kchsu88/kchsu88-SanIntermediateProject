.class public final Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppManagedProvider"
.end annotation


# instance fields
.field private final exoMediaDrm:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;)V
    .locals 0
    .param p1, "exoMediaDrm"    # Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 81
    return-void
.end method


# virtual methods
.method public acquireExoMediaDrm(Ljava/util/UUID;)Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 85
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;->acquire()V

    .line 86
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;

    return-object v0
.end method
