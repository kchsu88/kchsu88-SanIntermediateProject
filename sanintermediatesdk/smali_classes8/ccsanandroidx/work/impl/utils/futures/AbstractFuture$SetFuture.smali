.class final Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Lccsanandroidx/work/impl/utils/futures/AbstractFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/utils/futures/AbstractFuture;Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<",
            "TV;>;",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 269
    .local p0, "this":Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;, "Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture<TV;>;"
    .local p1, "owner":Lccsanandroidx/work/impl/utils/futures/AbstractFuture;, "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<TV;>;"
    .local p2, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Lccsanandroidx/work/impl/utils/futures/AbstractFuture;

    .line 271
    iput-object p2, p0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 272
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 276
    .local p0, "this":Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;, "Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture<TV;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Lccsanandroidx/work/impl/utils/futures/AbstractFuture;

    iget-object v0, v0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lccsancom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Lccsanandroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    iget-object v2, p0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Lccsanandroidx/work/impl/utils/futures/AbstractFuture;

    invoke-virtual {v1, v2, p0, v0}, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Lccsanandroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Lccsanandroidx/work/impl/utils/futures/AbstractFuture;

    invoke-static {v1}, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->complete(Lccsanandroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 284
    :cond_1
    return-void
.end method
