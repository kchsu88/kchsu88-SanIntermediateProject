.class Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

.field final synthetic val$listenersList:Ljava/util/List;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 110
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;"
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;->this$0:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    iput-object p2, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;->val$listenersList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;->val$listenersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/constraints/ConstraintListener;

    .line 114
    .local v1, "listener":Lccsanandroidx/work/impl/constraints/ConstraintListener;, "Lccsanandroidx/work/impl/constraints/ConstraintListener<TT;>;"
    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;->this$0:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    iget-object v2, v2, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/constraints/ConstraintListener;->onConstraintChanged(Ljava/lang/Object;)V

    .line 115
    .end local v1    # "listener":Lccsanandroidx/work/impl/constraints/ConstraintListener;, "Lccsanandroidx/work/impl/constraints/ConstraintListener<TT;>;"
    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
