.class final Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPeriodCallback"
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;Lccsancom/google/android/exoplayer2/MetadataRetriever$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/MetadataRetriever$1;

    .line 206
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;-><init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;)V

    return-void
.end method


# virtual methods
.method public onContinueLoadingRequested(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 216
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lccsancom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 206
    check-cast p1, Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->onContinueLoadingRequested(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 210
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$200(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;->this$2:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->this$0:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->access$100(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 212
    return-void
.end method
