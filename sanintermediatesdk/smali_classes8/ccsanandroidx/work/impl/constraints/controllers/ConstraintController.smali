.class public abstract Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;
.super Ljava/lang/Object;
.source "ConstraintController.java"

# interfaces
.implements Lccsanandroidx/work/impl/constraints/ConstraintListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsanandroidx/work/impl/constraints/ConstraintListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

.field private mCurrentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mMatchingWorkSpecIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTracker:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    .local p1, "tracker":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 63
    return-void
.end method

.method private updateCallback()V
    .locals 2

    .line 127
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 131
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;->onConstraintMet(Ljava/util/List;)V

    goto :goto_1

    .line 132
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;->onConstraintNotMet(Ljava/util/List;)V

    .line 136
    :goto_1
    return-void

    .line 128
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method abstract hasConstraint(Lccsanandroidx/work/impl/model/WorkSpec;)Z
.end method

.method abstract isConstrained(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isWorkSpecConstrained(Ljava/lang/String;)Z
    .locals 1
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 122
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->isConstrained(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    .line 123
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0
.end method

.method public onConstraintChanged(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCurrentValue:Ljava/lang/Object;

    .line 141
    invoke-direct {p0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->updateCallback()V

    .line 142
    return-void
.end method

.method public replace(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    .local p1, "workSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/model/WorkSpec;

    .line 91
    .local v1, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    invoke-virtual {p0, v1}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->hasConstraint(Lccsanandroidx/work/impl/model/WorkSpec;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v1    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :cond_0
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->removeListener(Lccsanandroidx/work/impl/constraints/ConstraintListener;)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->addListener(Lccsanandroidx/work/impl/constraints/ConstraintListener;)V

    .line 101
    :goto_1
    invoke-direct {p0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->updateCallback()V

    .line 102
    return-void
.end method

.method public reset()V
    .locals 1

    .line 108
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mMatchingWorkSpecIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mTracker:Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->removeListener(Lccsanandroidx/work/impl/constraints/ConstraintListener;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setCallback(Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    .line 72
    .local p0, "this":Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;, "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    if-eq v0, p1, :cond_0

    .line 73
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->mCallback:Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    .line 74
    invoke-direct {p0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;->updateCallback()V

    .line 76
    :cond_0
    return-void
.end method
