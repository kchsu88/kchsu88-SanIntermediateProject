.class Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Lccsanandroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Lccsanandroid/view/Window;Lccsanandroid/view/FrameMetrics;I)V
    .locals 10
    .param p1, "window"    # Lccsanandroid/view/Window;
    .param p2, "frameMetrics"    # Lccsanandroid/view/FrameMetrics;
    .param p3, "dropCountSinceLastInvocation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "window",
            "frameMetrics",
            "dropCountSinceLastInvocation"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v4, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v4, v4, v2

    .line 355
    invoke-virtual {p2, v3}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 354
    invoke-virtual {v0, v4, v5, v6}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 357
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v5, v5, v1

    .line 359
    invoke-virtual {p2, v1}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 358
    invoke-virtual {v0, v5, v6, v7}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 362
    :cond_1
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v5, 0x3

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v6, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v6, v6, v4

    .line 364
    invoke-virtual {p2, v5}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v7

    .line 363
    invoke-virtual {v0, v6, v7, v8}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 367
    :cond_2
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v6, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v5, v6, v5

    .line 369
    invoke-virtual {p2, v1}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 368
    invoke-virtual {v0, v5, v6, v7}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 371
    :cond_3
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v5, 0x5

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v6, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v1, v6, v1

    .line 373
    invoke-virtual {p2, v5}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 372
    invoke-virtual {v0, v1, v6, v7}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 375
    :cond_4
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x7

    const/4 v6, 0x6

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v7, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v7, v7, v6

    .line 377
    invoke-virtual {p2, v1}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v8

    .line 376
    invoke-virtual {v0, v7, v8, v9}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 380
    :cond_5
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 381
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v7, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v5, v7, v5

    .line 382
    invoke-virtual {p2, v6}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    .line 381
    invoke-virtual {v0, v5, v6, v7}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 385
    :cond_6
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 386
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v5, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v1, v5, v1

    .line 387
    invoke-virtual {p2, v2}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v5

    .line 386
    invoke-virtual {v0, v1, v5, v6}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 390
    :cond_7
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget v0, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 391
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Lccsanandroid/util/SparseIntArray;

    aget-object v1, v1, v3

    .line 392
    invoke-virtual {p2, v4}, Lccsanandroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 391
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Lccsanandroid/util/SparseIntArray;J)V

    .line 395
    :cond_8
    return-void
.end method
