.class public final synthetic Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;

.field public final synthetic f$2:Lccsancom/google/android/exoplayer2/source/LoadEventInfo;

.field public final synthetic f$3:Lccsancom/google/android/exoplayer2/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Lccsancom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p4, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$3:Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Lccsancom/google/android/exoplayer2/source/LoadEventInfo;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$3:Lccsancom/google/android/exoplayer2/source/MediaLoadData;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->lambda$loadStarted$0$com-google-android-exoplayer2-source-MediaSourceEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method
