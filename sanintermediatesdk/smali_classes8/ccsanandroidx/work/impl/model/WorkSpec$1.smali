.class final Lccsanandroidx/work/impl/model/WorkSpec$1;
.super Ljava/lang/Object;
.source "WorkSpec.java"

# interfaces
.implements Lccsanandroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/arch/core/util/Function<",
        "Ljava/util/List<",
        "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;",
        "Ljava/util/List<",
        "Lccsanandroidx/work/WorkInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 436
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/model/WorkSpec$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 439
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    if-nez p1, :cond_0

    .line 440
    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    .local v0, "output":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/WorkInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 444
    .local v2, "in":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-virtual {v2}, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Lccsanandroidx/work/WorkInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v2    # "in":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    goto :goto_0

    .line 446
    :cond_1
    return-object v0
.end method
