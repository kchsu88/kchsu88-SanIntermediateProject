.class final Lccsanandroidx/work/impl/utils/LiveDataUtils$1;
.super Ljava/lang/Object;
.source "LiveDataUtils.java"

# interfaces
.implements Lccsanandroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/utils/LiveDataUtils;->dedupedMappedLiveDataFor(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/lifecycle/Observer<",
        "TIn;>;"
    }
.end annotation


# instance fields
.field mCurrentOutput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOut;"
        }
    .end annotation
.end field

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$mappingMethod:Lccsanandroidx/arch/core/util/Function;

.field final synthetic val$outputLiveData:Lccsanandroidx/lifecycle/MediatorLiveData;

.field final synthetic val$workTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Object;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;->val$workTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object p2, p0, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;->val$lock:Ljava/lang/Object;

    iput-object p3, p0, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;->val$mappingMethod:Lccsanandroidx/arch/core/util/Function;

    iput-object p4, p0, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;->val$outputLiveData:Lccsanandroidx/lifecycle/MediatorLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 p1, 0x0

    iput-object p1, p0, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;->mCurrentOutput:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;)V"
        }
    .end annotation

    .line 65
    .local p1, "input":Ljava/lang/Object;, "TIn;"
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/LiveDataUtils$1;->val$workTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    new-instance v1, Lccsanandroidx/work/impl/utils/LiveDataUtils$1$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/work/impl/utils/LiveDataUtils$1$1;-><init>(Lccsanandroidx/work/impl/utils/LiveDataUtils$1;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
