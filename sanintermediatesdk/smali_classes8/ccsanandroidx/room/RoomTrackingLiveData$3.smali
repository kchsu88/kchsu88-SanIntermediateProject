.class Lccsanandroidx/room/RoomTrackingLiveData$3;
.super Lccsanandroidx/room/InvalidationTracker$Observer;
.source "RoomTrackingLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/room/RoomTrackingLiveData;-><init>(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/RoomTrackingLiveData;


# direct methods
.method constructor <init>(Lccsanandroidx/room/RoomTrackingLiveData;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/RoomTrackingLiveData;
    .param p2, "tables"    # [Ljava/lang/String;

    .line 139
    .local p0, "this":Lccsanandroidx/room/RoomTrackingLiveData$3;, "Lccsanandroidx/room/RoomTrackingLiveData$3;"
    iput-object p1, p0, Lccsanandroidx/room/RoomTrackingLiveData$3;->this$0:Lccsanandroidx/room/RoomTrackingLiveData;

    invoke-direct {p0, p2}, Lccsanandroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsanandroidx/room/RoomTrackingLiveData$3;, "Lccsanandroidx/room/RoomTrackingLiveData$3;"
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lccsanandroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Lccsanandroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/room/RoomTrackingLiveData$3;->this$0:Lccsanandroidx/room/RoomTrackingLiveData;

    iget-object v1, v1, Lccsanandroidx/room/RoomTrackingLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method
